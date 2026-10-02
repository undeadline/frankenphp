FROM dunglas/frankenphp:1.12.7-builder-php8

ARG USER=appuser
ENV SERVER_NAME=":8080"

RUN \
    useradd ${USER}; \
    setcap -r /usr/local/bin/frankenphp; \
    chown -R ${USER}:${USER} /config/caddy /data/caddy

USER ${USER}