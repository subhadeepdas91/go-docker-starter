FROM golang:buster

# Install basic network tools and editor
RUN apt-get update && apt-get install -y telnet dnsutils nano

# Tools used by VSCode go extension
RUN go get -v \
    github.com/uudashr/gopkgs/v2/cmd/gopkgs \
    github.com/ramya-rao-a/go-outline \
    github.com/cweill/gotests/... \
    github.com/fatih/gomodifytags \
    github.com/josharian/impl \
    github.com/haya14busa/goplay/cmd/goplay \
    github.com/go-delve/delve/cmd/dlv \
    golang.org/x/lint/golint \
    golang.org/x/tools/gopls

RUN mkdir /app