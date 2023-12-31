FROM python:3.10-slim
WORKDIR /code
COPY ./requirements.txt ./
RUN pip install --no-cache-dir --upgrade -r requirements.txt
COPY ./flaskr ./flaskr
# CMD ["sleep", "infinity"]
CMD ["flask", "--app", "flaskr", "run", "--debug", "--host", "0.0.0.0"]