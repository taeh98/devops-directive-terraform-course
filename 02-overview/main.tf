terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0015a39e4b7c0966f" # Ubuntu 20.04 LTS
  instance_type = "t2.micro"
}