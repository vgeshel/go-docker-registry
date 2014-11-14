FROM golang
MAINTAINER vadim@yummly.com

COPY . /usr/src/app
WORKDIR /usr/src/app
RUN make


CMD ["/usr/src/app/bin/registry", "-config", "/config.json"]