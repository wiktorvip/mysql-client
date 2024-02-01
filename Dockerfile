FROM alpine:latest

# Set labels for better maintainability
LABEL maintainer="Wiktor <wiktor.vip@gmail.com>"


# Set environment variables for configuration
ENV MYSQL_HOST=localhost \
    MYSQL_PORT=3306 \
    MYSQL_USER=root \
    MYSQL_PASSWORD=password \
    MYSQL_DATABASE=mysql

# Install mysql-client
RUN apk add --no-cache mysql-client

 CMD ["sh", "-c", "sleep 1800m" ]

# # Set the entrypoint to run mysql-client
# ENTRYPOINT ["mysql"]
# # Set the default command to connect to the MySQL server
# CMD ["--host=$MYSQL_HOST", "--port=$MYSQL_PORT", "--user=$MYSQL_USER", "--password=$MYSQL_PASSWORD", "$MYSQL_DATABASE"]


