FROM adoptopenjdk/openjdk11:alpine-jre
RUN apk add tzdata

ARG JAR_FILE=target/*.jar

ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]




