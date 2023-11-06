variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "private_subnet" {
  type    = list(string)
}

variable "public_subnet" {
  type    = list(string)
}

variable "availability_zone" {
  type    = list(string)
}

resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true

  tags = {
    "Name" = "custom"
  }
}