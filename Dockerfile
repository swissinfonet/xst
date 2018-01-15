FROM alpine:latest
COPY xmr-stak
COPY config.txt
RUN apk --no-cache upgrade \
    && apk --no-cache add \
    openssl \
    && chmod +x xmr-stak
ENTRYPOINT ["./xmr-stak"]
