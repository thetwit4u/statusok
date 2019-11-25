FROM golang:1.12

ENV STATUSOK_VERSION 0.1.1

WORKDIR /go/src/statusok
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["statusok","--config", "./config/config.json"]