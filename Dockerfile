FROM python:3.10.2-slim-bullseye

# Set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY . /pollsome_src

WORKDIR /pollsome_src

RUN pip install -r requirements.txt

EXPOSE 8443

# CMD ["uvicorn", "run_bot:app", "--port=8443", "--host=0.0.0.0", "--reload"]