uint64_t *sub_12E5E34(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_16F6038(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E5B90(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12E5EB0(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_12B3AC4(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E5F2C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

uint64_t sub_12E5F3C(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = (*(result + 16) + 8);
    do
    {
      result = *v3 + 8;
      v4 = *result;
      *(result + 8) = 0;
      *(result + 32) = 0;
      *(result + 56) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }

      ++v3;
      --v1;
    }

    while (v1);
    *(v2 + 8) = 0;
  }

  return result;
}

uint64_t sub_12E5FA4(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = (*(result + 16) + 8);
    do
    {
      result = *v3 + 8;
      v4 = *result;
      *(result + 8) = 0;
      *(result + 32) = 0;
      *(result + 56) = 0;
      *(result + 80) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }

      ++v3;
      --v1;
    }

    while (v1);
    *(v2 + 8) = 0;
  }

  return result;
}

uint64_t sub_12E6010(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = (*(result + 16) + 8);
    do
    {
      result = *v3 + 8;
      v4 = *result;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 40) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }

      ++v3;
      --v1;
    }

    while (v1);
    *(v2 + 8) = 0;
  }

  return result;
}

void sub_12E6078(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12B46B0(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E60FC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12CBD48(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E6180(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12B6DC0(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E6204(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_16E4E08();
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E6288(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12B89E4(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E630C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12BBDA0(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E6390(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12BE9B8(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E6414(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12C0ADC(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E6498(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12BFDDC(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E651C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12C16A4(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E65A0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12BC770(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E6624(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12C21B8(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E66A8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12C36C4(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E672C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12DFC74(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E67B0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12C29F4(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E6834(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12C5A24(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E68B8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12C6C10(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E693C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12C8310(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E69C0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12C8B38(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E6A44(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12C96B0(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E6AC8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12CA1F4(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E6B4C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12CD40C(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_12E6BD0(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_12CFE5C(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E6C4C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12E6C5C(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_12D14B4(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_12E6CD8(v12, v14);
      --v5;
    }

    while (v5);
  }
}

uint64_t *sub_12E6CE8(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_12D00D4(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E6D64(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12E6D74(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_12D0274(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E6DF0(v11, v13);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_12E6E00(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_12D06F8(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E6E7C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_12E6E8C(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_12D0864(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E6F08(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_12E6F18(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_12D0A74(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E6F94(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_12E6FA4(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_12D09D4(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E7020(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_12E7030(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_12D0BDC(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E70AC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12E70BC(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_12D0798(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E7138(v11, v13);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_12E7148(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_12D0C8C(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E71C4(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12E71D4(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_12D0E28(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_12E7250(v12, v14);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_12E7260(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_12E260C(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E72DC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_12E72EC(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_12D0D28(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E7368(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12E7378(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_12D0F50(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E73F4(v11, v13);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_12E7404(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_12D101C(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E7480(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_12E7490(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_12D1154(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E750C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_12E751C(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_12D11DC(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E7598(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12E75A8(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_12D127C(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_12E7624(v12, v14);
      --v5;
    }

    while (v5);
  }
}

uint64_t *sub_12E7634(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_12D12FC(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E76B0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12E76C0(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_12D15D8(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E773C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_12E774C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12D6928(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E77D0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12D6D84(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E7854(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12D76F4(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E78D8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12DB7E4(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E795C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12D9590(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E79E0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12D9D18(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E7A64(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12DA89C(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E7AE8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12DC13C(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E7B6C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12DF3D0(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E7BF0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12DD57C(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_12E7C74(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_12DE998(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_12E7CF8(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_12E1CB4(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E5B90(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12E7D74(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_12E1D3C(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E7DF0(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_12E7E00(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_12E1DC4(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E7E7C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_12E7E8C(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_12E2214(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E7F08(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_12E7F18(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_12E1F80(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_12E7F94(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_12E7FA4(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_12E2024(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_12E8020(v12, v14);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_12E8030(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_12E20A4(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E80AC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_12E80BC(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_12E229C(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E8138(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_12E8148(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_12E2548(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E81C4(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12E81D4(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_12E23B8(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_12E8250(v12, v14);
      --v5;
    }

    while (v5);
  }
}

uint64_t *sub_12E8260(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_12E2470(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E82DC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_12E833C(uint64_t a1, ...)
{
  va_start(va, a1);
  v3 = *(v1 + 92);

  return sub_195ADC0(v1, va, v3);
}

uint64_t sub_12E8388(uint64_t a1, std::string::size_type a2, int *a3)
{

  return sub_1952690(v4, a2, a3, v3);
}

void sub_12E83A0(uint64_t a1, uint64_t a2, std::string *a3)
{

  sub_19586BC(1, v3, a3);
}

void sub_12E83B8(uint64_t a1, uint64_t a2, std::string *a3)
{

  sub_19586BC(2, v3, a3);
}

void sub_12E83D0(uint64_t a1, uint64_t a2, std::string *a3)
{

  sub_19586BC(5, v3, a3);
}

void sub_12E83E8(uint64_t a1, uint64_t a2, std::string *a3)
{

  sub_19586BC(4, v3, a3);
}

void sub_12E8400(uint64_t a1, uint64_t a2, std::string *a3)
{

  sub_19586BC(6, v3, a3);
}

void sub_12E8418()
{
  sub_12E8330();
  if (v1)
  {
    sub_1201FD0();
  }

  else
  {
    v2 = sub_11F1920(v0);
    v4 = v2;
  }

  sub_12E83B8(v2, v3, v4);
}

void sub_12E8450()
{
  sub_12E8330();
  if (v1)
  {
    sub_1201FD0();
  }

  else
  {
    v2 = sub_11F1920(v0);
    v4 = v2;
  }

  sub_12E83A0(v2, v3, v4);
}

void sub_12E8488()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(10, v0, v3);
}

void sub_12E84C8()
{
  sub_12E8330();
  if (v1)
  {
    sub_1201FD0();
  }

  else
  {
    v2 = sub_11F1920(v0);
    v4 = v2;
  }

  sub_12E8400(v2, v3, v4);
}

void sub_12E8500()
{
  sub_12E8330();
  if (v1)
  {
    sub_1201FD0();
  }

  else
  {
    v2 = sub_11F1920(v0);
    v4 = v2;
  }

  sub_12E83E8(v2, v3, v4);
}

void sub_12E8538()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(15, v0, v3);
}

void sub_12E8578()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(3, v0, v3);
}

void sub_12E85B8()
{
  sub_12E8330();
  if (v1)
  {
    sub_1201FD0();
  }

  else
  {
    v2 = sub_11F1920(v0);
    v4 = v2;
  }

  sub_12E83D0(v2, v3, v4);
}

void sub_12E85F0()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(8, v0, v3);
}

void sub_12E8630()
{
  dword_278CFC0 = 100;
  byte_278CFC4 = 0;
  sub_194EE44(&off_2789258, 100, 8, 0, 0);
  qword_278CFC8 = 101;
  sub_194F628(&off_2789258, 101, 14, 0, 0, sub_16E4BB4);
  dword_278CFD0 = 100;
  byte_278CFD4 = 0;
  sub_194EE44(&off_27892C0, 100, 8, 0, 0);
  dword_278CFD8 = 100;
  qword_278CFE0 = 0;
  sub_194EE44(&off_2789CD0, 100, 4, 0, 0);
  dword_278CFE8 = 100;
  byte_278CFEC = 0;
  sub_194EE44(&off_2789D28, 100, 8, 0, 0);
  dword_278CFF0 = 1049;
  qword_278CFF8 = &off_2769490;
  sub_194F72C(&off_27811E0, 1049, 11, 0, 0, &off_2769490);
  dword_278D000 = 1050;
  qword_278D008 = &off_2769510;
  sub_194F72C(&off_27811E0, 1050, 11, 0, 0, &off_2769510);
  dword_278D010 = 1051;
  qword_278D018 = &off_276A030;
  sub_194F72C(&off_27811E0, 1051, 11, 1, 0, &off_276A030);
  dword_278D020 = 1049;
  qword_278D028 = &off_2769490;
  sub_194F72C(&off_27745A0, 1049, 11, 0, 0, &off_2769490);
  dword_278D030 = 1049;
  qword_278D038 = &off_2769490;
  sub_194F72C(&off_27741B0, 1049, 11, 0, 0, &off_2769490);
  dword_278D040 = 1050;
  qword_278D048 = &off_276A030;
  sub_194F72C(&off_27741B0, 1050, 11, 0, 0, &off_276A030);
  dword_278D050 = 1049;
  qword_278D058 = &off_2769490;
  sub_194F72C(&off_2771078, 1049, 11, 0, 0, &off_2769490);
  dword_278D060 = 501;
  qword_278D068 = &off_2769BD8;
  sub_194F72C(&off_27811B0, 501, 11, 0, 0, &off_2769BD8);
  dword_278D070 = 1100;
  qword_278D078 = &off_2769C00;
  sub_194F72C(&off_2772A50, 1100, 11, 1, 0, &off_2769C00);
  dword_278D080 = 1101;
  qword_278D088 = &off_2769C30;
  sub_194F72C(&off_2772A50, 1101, 11, 1, 0, &off_2769C30);
  dword_278D090 = 1102;
  qword_278D098 = &off_2769C30;
  sub_194F72C(&off_2772A50, 1102, 11, 1, 0, &off_2769C30);
  dword_278D0A0 = 1103;
  qword_278D0A8 = &off_2769C78;
  sub_194F72C(&off_2772A50, 1103, 11, 0, 0, &off_2769C78);
  qword_278D0B0 = 1100;
  sub_194F628(&off_2772638, 1100, 14, 0, 0, sub_144E2DC);
  qword_278D0B8 = 1101;
  sub_194F628(&off_2772638, 1101, 14, 0, 0, sub_144E2DC);
  qword_278D0C0 = 1102;
  sub_194F628(&off_2772638, 1102, 14, 0, 0, sub_144E2DC);
  qword_278D0C8 = 1103;
  sub_194F628(&off_2772638, 1103, 14, 0, 0, sub_144E2DC);
  qword_278D0D0 = 1100;
  sub_194F628(&off_27731C8, 1100, 14, 0, 0, sub_15528C0);
  qword_278D0D8 = 1000;
  sub_194EE44(&off_2772008, 1000, 13, 0, 0);
  qword_278D0E0 = 1001;
  sub_194EE44(&off_2772008, 1001, 13, 0, 0);
  dword_278D0E8 = 1002;
  qword_278D0F0 = &off_2769CA8;
  sub_194F72C(&off_2772008, 1002, 11, 0, 0, &off_2769CA8);
  dword_278D0F8 = 1053;
  qword_278D100 = &off_2769D10;
  sub_194F72C(&off_2773FE0, 1053, 11, 0, 0, &off_2769D10);
  dword_278D108 = 1053;
  qword_278D110 = &off_2769D10;
  sub_194F72C(&off_27742B0, 1053, 11, 0, 0, &off_2769D10);
  dword_278D118 = 1053;
  qword_278D120 = &off_2769D10;
  sub_194F72C(&off_2780F90, 1053, 11, 0, 0, &off_2769D10);
  dword_278D128 = 1053;
  qword_278D130 = &off_2769D10;
  sub_194F72C(&off_2770FB8, 1053, 11, 0, 0, &off_2769D10);
  dword_278D138 = 100;
  qword_278D140 = &off_278B0B0;
  sub_194F72C(&off_2776E58, 100, 11, 0, 0, &off_278B0B0);
  dword_278D148 = 200;
  qword_278D150 = &off_2776D50;
  sub_194F72C(&off_2776E00, 200, 11, 0, 0, &off_2776D50);
  dword_278D158 = 100;
  qword_278D160 = 0;
  sub_194EE44(&off_2776F10, 100, 3, 0, 0);
  dword_278D168 = 956;
  qword_278D170 = &off_2769410;
  sub_194F72C(&off_2780F90, 956, 11, 0, 0, &off_2769410);
  dword_278D178 = 990;
  qword_278D180 = &off_2769460;
  sub_194F72C(&off_27811E0, 990, 11, 0, 0, &off_2769460);
  dword_278D188 = 1000;
  qword_278D190 = 0;
  sub_194EE44(&off_278B870, 1000, 4, 0, 0);
  dword_278D198 = 1001;
  qword_278D1A0 = 0;

  sub_194EE44(&off_278B870, 1001, 4, 0, 0);
}

uint64_t sub_12E8D9C()
{
  qword_27C4770 = "CLIENTIZE_RESULT_STATUS_BAD_EXTENTCLIENTIZE_RESULT_STATUS_NO_CACHE_MATCHCLIENTIZE_RESULT_STATUS_NO_FEATURE_MATCHCLIENTIZE_RESULT_STATUS_NO_PRIMARY_FEATURECLIENTIZE_RESULT_STATUS_NO_RESULTSCLIENTIZE_RESULT_STATUS_SUCCESSCLIENTIZE_RESULT_STATUS_UNDEFINED";
  *algn_27C4778 = 34;
  dword_27C4780 = 3;
  qword_27C4788 = "CLIENTIZE_RESULT_STATUS_NO_CACHE_MATCHCLIENTIZE_RESULT_STATUS_NO_FEATURE_MATCHCLIENTIZE_RESULT_STATUS_NO_PRIMARY_FEATURECLIENTIZE_RESULT_STATUS_NO_RESULTSCLIENTIZE_RESULT_STATUS_SUCCESSCLIENTIZE_RESULT_STATUS_UNDEFINED";
  unk_27C4790 = 38;
  dword_27C4798 = 4;
  qword_27C47A0 = "CLIENTIZE_RESULT_STATUS_NO_FEATURE_MATCHCLIENTIZE_RESULT_STATUS_NO_PRIMARY_FEATURECLIENTIZE_RESULT_STATUS_NO_RESULTSCLIENTIZE_RESULT_STATUS_SUCCESSCLIENTIZE_RESULT_STATUS_UNDEFINED";
  unk_27C47A8 = 40;
  dword_27C47B0 = 5;
  qword_27C47B8 = "CLIENTIZE_RESULT_STATUS_NO_PRIMARY_FEATURECLIENTIZE_RESULT_STATUS_NO_RESULTSCLIENTIZE_RESULT_STATUS_SUCCESSCLIENTIZE_RESULT_STATUS_UNDEFINED";
  unk_27C47C0 = 42;
  dword_27C47C8 = 2;
  qword_27C47D0 = "CLIENTIZE_RESULT_STATUS_NO_RESULTSCLIENTIZE_RESULT_STATUS_SUCCESSCLIENTIZE_RESULT_STATUS_UNDEFINED";
  unk_27C47D8 = 34;
  dword_27C47E0 = 6;
  qword_27C47E8 = "CLIENTIZE_RESULT_STATUS_SUCCESSCLIENTIZE_RESULT_STATUS_UNDEFINED";
  unk_27C47F0 = 31;
  dword_27C47F8 = 1;
  qword_27C4800 = "CLIENTIZE_RESULT_STATUS_UNDEFINED";
  unk_27C4808 = 33;
  dword_27C4810 = 0;
  qword_27C4818 = "CLIENTIZE_RESPONSE_STATUS_NO_PARAMETERSCLIENTIZE_RESPONSE_STATUS_NO_REQUESTCLIENTIZE_RESPONSE_STATUS_NO_REQUEST_TYPECLIENTIZE_RESPONSE_STATUS_SUCCESSCLIENTIZE_RESPONSE_STATUS_UNDEFINED";
  unk_27C4820 = 39;
  dword_27C4828 = 4;
  qword_27C4830 = "CLIENTIZE_RESPONSE_STATUS_NO_REQUESTCLIENTIZE_RESPONSE_STATUS_NO_REQUEST_TYPECLIENTIZE_RESPONSE_STATUS_SUCCESSCLIENTIZE_RESPONSE_STATUS_UNDEFINED";
  unk_27C4838 = 36;
  dword_27C4840 = 3;
  qword_27C4848 = "CLIENTIZE_RESPONSE_STATUS_NO_REQUEST_TYPECLIENTIZE_RESPONSE_STATUS_SUCCESSCLIENTIZE_RESPONSE_STATUS_UNDEFINED";
  unk_27C4850 = 41;
  dword_27C4858 = 2;
  qword_27C4860 = "CLIENTIZE_RESPONSE_STATUS_SUCCESSCLIENTIZE_RESPONSE_STATUS_UNDEFINED";
  unk_27C4868 = 33;
  dword_27C4870 = 1;
  qword_27C4878 = "CLIENTIZE_RESPONSE_STATUS_UNDEFINED";
  unk_27C4880 = 35;
  dword_27C4888 = 0;
  qword_27C4890 = "GEMINI_REQUESTPLACE_REQUESTPLACE_SEARCH_REQUESTUNDEFINED_REQUEST";
  *algn_27C4898 = 14;
  dword_27C48A0 = 3;
  qword_27C48A8 = "PLACE_REQUESTPLACE_SEARCH_REQUESTUNDEFINED_REQUEST";
  unk_27C48B0 = 13;
  dword_27C48B8 = 1;
  result = 20;
  qword_27C48C0 = "PLACE_SEARCH_REQUESTUNDEFINED_REQUEST";
  unk_27C48C8 = 20;
  dword_27C48D0 = 2;
  qword_27C48D8 = "UNDEFINED_REQUEST";
  unk_27C48E0 = 17;
  dword_27C48E8 = 0;
  qword_27C48F0 = "DISPUTED_AREA_POIS_ALLOWEDDISPUTED_AREA_POIS_NOT_ALLOWEDNON_DISPUTED_AREA_POIS_ALLOWED";
  *algn_27C48F8 = 26;
  dword_27C4900 = 1;
  qword_27C4908 = "DISPUTED_AREA_POIS_NOT_ALLOWEDNON_DISPUTED_AREA_POIS_ALLOWED";
  unk_27C4910 = 30;
  dword_27C4918 = 2;
  qword_27C4920 = "NON_DISPUTED_AREA_POIS_ALLOWED";
  unk_27C4928 = 30;
  dword_27C4930 = 0;
  qword_27C4938 = "FREEWAYLOCALMAJOR_ARTERIALMINOR_ARTERIALUNKNOWN";
  unk_27C4940 = 7;
  dword_27C4948 = 1;
  qword_27C4950 = "LOCALMAJOR_ARTERIALMINOR_ARTERIALUNKNOWN";
  unk_27C4958 = 5;
  dword_27C4960 = 4;
  qword_27C4968 = "MAJOR_ARTERIALMINOR_ARTERIALUNKNOWN";
  unk_27C4970 = 14;
  dword_27C4978 = 2;
  qword_27C4980 = "MINOR_ARTERIALUNKNOWN";
  unk_27C4988 = 14;
  dword_27C4990 = 3;
  qword_27C4998 = "UNKNOWN";
  unk_27C49A0 = 7;
  dword_27C49A8 = 0;
  qword_27C49B0 = "BIASED_TO_USER_ROUTEDISABLEDUNKNOWN";
  *algn_27C49B8 = 20;
  dword_27C49C0 = 2;
  qword_27C49C8 = "DISABLEDUNKNOWN";
  unk_27C49D0 = 8;
  dword_27C49D8 = 1;
  qword_27C49E0 = "UNKNOWN";
  unk_27C49E8 = 7;
  dword_27C49F0 = 0;
  qword_27C49F8 = "ACE";
  unk_27C4A00 = 1;
  dword_27C4A08 = 1;
  qword_27C4A10 = "CE";
  unk_27C4A18 = 1;
  dword_27C4A20 = 3;
  qword_27C4A28 = "E";
  unk_27C4A30 = 1;
  dword_27C4A38 = 5;
  qword_27C4A40 = "GEOJSONWKBWKTZILCH";
  *algn_27C4A48 = 7;
  dword_27C4A50 = 3;
  qword_27C4A58 = "WKBWKTZILCH";
  unk_27C4A60 = 3;
  dword_27C4A68 = 1;
  qword_27C4A70 = "WKTZILCH";
  unk_27C4A78 = 3;
  dword_27C4A80 = 2;
  qword_27C4A88 = "ZILCH";
  unk_27C4A90 = 5;
  dword_27C4A98 = 4;
  qword_27C4AA0 = "ADJACENT_FLOWLINES_BEARING_DIFFERENCEBAD_ELEVATIONSEXCESSIVE_SEGMENT_GEOMETRY_DISTRIBUTION_DIFF_RATIOEXCESSIVE_TORTUOSITYHIGH_ACCELERATIONNONEOUTSIDE_OF_TRANSPORT_NETWORK_POLYGONSOUT_OF_SEGMENT_BOUNDS_IN_OPPOSITE_TRAVEL_DIRECTIONOUT_OF_SEGMENT_BOUNDS_IN_TRAVEL_DIRECTIONROUTE_LINE_DIFFERS_FROM_CENTER_LINE_BEARINGSROUTE_LINE_JAGGEDROUTE_LINE_SELF_INTERSECTS";
  *algn_27C4AA8 = 37;
  dword_27C4AB0 = 7;
  qword_27C4AB8 = "BAD_ELEVATIONSEXCESSIVE_SEGMENT_GEOMETRY_DISTRIBUTION_DIFF_RATIOEXCESSIVE_TORTUOSITYHIGH_ACCELERATIONNONEOUTSIDE_OF_TRANSPORT_NETWORK_POLYGONSOUT_OF_SEGMENT_BOUNDS_IN_OPPOSITE_TRAVEL_DIRECTIONOUT_OF_SEGMENT_BOUNDS_IN_TRAVEL_DIRECTIONROUTE_LINE_DIFFERS_FROM_CENTER_LINE_BEARINGSROUTE_LINE_JAGGEDROUTE_LINE_SELF_INTERSECTS";
  unk_27C4AC0 = 14;
  dword_27C4AC8 = 10;
  qword_27C4AD0 = "EXCESSIVE_SEGMENT_GEOMETRY_DISTRIBUTION_DIFF_RATIOEXCESSIVE_TORTUOSITYHIGH_ACCELERATIONNONEOUTSIDE_OF_TRANSPORT_NETWORK_POLYGONSOUT_OF_SEGMENT_BOUNDS_IN_OPPOSITE_TRAVEL_DIRECTIONOUT_OF_SEGMENT_BOUNDS_IN_TRAVEL_DIRECTIONROUTE_LINE_DIFFERS_FROM_CENTER_LINE_BEARINGSROUTE_LINE_JAGGEDROUTE_LINE_SELF_INTERSECTS";
  unk_27C4AD8 = 50;
  dword_27C4AE0 = 11;
  qword_27C4AE8 = "EXCESSIVE_TORTUOSITYHIGH_ACCELERATIONNONEOUTSIDE_OF_TRANSPORT_NETWORK_POLYGONSOUT_OF_SEGMENT_BOUNDS_IN_OPPOSITE_TRAVEL_DIRECTIONOUT_OF_SEGMENT_BOUNDS_IN_TRAVEL_DIRECTIONROUTE_LINE_DIFFERS_FROM_CENTER_LINE_BEARINGSROUTE_LINE_JAGGEDROUTE_LINE_SELF_INTERSECTS";
  unk_27C4AF0 = 20;
  dword_27C4AF8 = 9;
  qword_27C4B00 = "HIGH_ACCELERATIONNONEOUTSIDE_OF_TRANSPORT_NETWORK_POLYGONSOUT_OF_SEGMENT_BOUNDS_IN_OPPOSITE_TRAVEL_DIRECTIONOUT_OF_SEGMENT_BOUNDS_IN_TRAVEL_DIRECTIONROUTE_LINE_DIFFERS_FROM_CENTER_LINE_BEARINGSROUTE_LINE_JAGGEDROUTE_LINE_SELF_INTERSECTS";
  unk_27C4B08 = 17;
  dword_27C4B10 = 12;
  qword_27C4B18 = "NONEOUTSIDE_OF_TRANSPORT_NETWORK_POLYGONSOUT_OF_SEGMENT_BOUNDS_IN_OPPOSITE_TRAVEL_DIRECTIONOUT_OF_SEGMENT_BOUNDS_IN_TRAVEL_DIRECTIONROUTE_LINE_DIFFERS_FROM_CENTER_LINE_BEARINGSROUTE_LINE_JAGGEDROUTE_LINE_SELF_INTERSECTS";
  unk_27C4B20 = 4;
  dword_27C4B28 = 1;
  qword_27C4B30 = "OUTSIDE_OF_TRANSPORT_NETWORK_POLYGONSOUT_OF_SEGMENT_BOUNDS_IN_OPPOSITE_TRAVEL_DIRECTIONOUT_OF_SEGMENT_BOUNDS_IN_TRAVEL_DIRECTIONROUTE_LINE_DIFFERS_FROM_CENTER_LINE_BEARINGSROUTE_LINE_JAGGEDROUTE_LINE_SELF_INTERSECTS";
  unk_27C4B38 = 37;
  dword_27C4B40 = 8;
  qword_27C4B48 = "OUT_OF_SEGMENT_BOUNDS_IN_OPPOSITE_TRAVEL_DIRECTIONOUT_OF_SEGMENT_BOUNDS_IN_TRAVEL_DIRECTIONROUTE_LINE_DIFFERS_FROM_CENTER_LINE_BEARINGSROUTE_LINE_JAGGEDROUTE_LINE_SELF_INTERSECTS";
  unk_27C4B50 = 50;
  dword_27C4B58 = 3;
  qword_27C4B60 = "OUT_OF_SEGMENT_BOUNDS_IN_TRAVEL_DIRECTIONROUTE_LINE_DIFFERS_FROM_CENTER_LINE_BEARINGSROUTE_LINE_JAGGEDROUTE_LINE_SELF_INTERSECTS";
  unk_27C4B68 = 41;
  dword_27C4B70 = 2;
  qword_27C4B78 = "ROUTE_LINE_DIFFERS_FROM_CENTER_LINE_BEARINGSROUTE_LINE_JAGGEDROUTE_LINE_SELF_INTERSECTS";
  unk_27C4B80 = 44;
  dword_27C4B88 = 6;
  qword_27C4B90 = "ROUTE_LINE_JAGGEDROUTE_LINE_SELF_INTERSECTS";
  unk_27C4B98 = 17;
  dword_27C4BA0 = 5;
  qword_27C4BA8 = "ROUTE_LINE_SELF_INTERSECTS";
  unk_27C4BB0 = 26;
  dword_27C4BB8 = 4;
  qword_27C4BC0 = "EXTREMEHIGHLOWMEDIUMNO_ISSUE";
  *algn_27C4BC8 = 7;
  dword_27C4BD0 = 4;
  qword_27C4BD8 = "HIGHLOWMEDIUMNO_ISSUE";
  unk_27C4BE0 = 4;
  dword_27C4BE8 = 3;
  qword_27C4BF0 = "LOWMEDIUMNO_ISSUE";
  unk_27C4BF8 = 3;
  dword_27C4C00 = 1;
  qword_27C4C08 = "MEDIUMNO_ISSUE";
  unk_27C4C10 = 6;
  dword_27C4C18 = 2;
  qword_27C4C20 = "NO_ISSUE";
  unk_27C4C28 = 8;
  dword_27C4C30 = 0;
  qword_27C4C38 = "DEFAULT_LIVE_TRAFFICECONOMIC_PATH_COMPUTATIONUNKNOWN_SPECIAL_REQUEST_TREATMENT";
  unk_27C4C40 = 20;
  dword_27C4C48 = 2;
  qword_27C4C50 = "ECONOMIC_PATH_COMPUTATIONUNKNOWN_SPECIAL_REQUEST_TREATMENT";
  unk_27C4C58 = 25;
  dword_27C4C60 = 1;
  qword_27C4C68 = "UNKNOWN_SPECIAL_REQUEST_TREATMENT";
  unk_27C4C70 = 33;
  dword_27C4C78 = 0;
  qword_27C4C80 = "DANGER_TYPE_UNKNOWN";
  *algn_27C4C88 = 19;
  dword_27C4C90 = 0;
  qword_27C4C98 = "CLASSIFIER_DANGEROUS_MANEUVERSCLASSIFIER_UNKNOWN";
  unk_27C4CA0 = 30;
  dword_27C4CA8 = 1;
  qword_27C4CB0 = "CLASSIFIER_UNKNOWN";
  unk_27C4CB8 = 18;
  dword_27C4CC0 = 0;
  qword_27C4CC8 = "NAVIGATION_FEEDBACK_EVENT_TYPE_DIRECTIONSNAVIGATION_FEEDBACK_EVENT_TYPE_ETA_UPDATENAVIGATION_FEEDBACK_EVENT_TYPE_UNKNOWN";
  unk_27C4CD0 = 41;
  dword_27C4CD8 = 1;
  qword_27C4CE0 = "NAVIGATION_FEEDBACK_EVENT_TYPE_ETA_UPDATENAVIGATION_FEEDBACK_EVENT_TYPE_UNKNOWN";
  unk_27C4CE8 = 41;
  dword_27C4CF0 = 2;
  qword_27C4CF8 = "NAVIGATION_FEEDBACK_EVENT_TYPE_UNKNOWN";
  unk_27C4D00 = 38;
  dword_27C4D08 = 0;
  return result;
}

uint64_t sub_12E91B4(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_12;
    }
  }

  else if (v4)
  {
    goto LABEL_12;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (a1 != &off_276A318 && *(a1 + 40))
  {
    sub_138383C();
    operator delete();
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12E929C(uint64_t a1)
{
  sub_12E91B4(a1);

  operator delete();
}

uint64_t sub_12E92D4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_14;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  **v5 = 0;
  *(v5 + 8) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    result = sub_1383878(*(result + 40));
    goto LABEL_6;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_12E93A4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v25 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v25, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v25 + 1);
    v7 = **v25;
    if (**v25 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v25, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v25 + 2);
      }
    }

    *v25 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 4u;
        v19 = *(a1 + 40);
        if (!v19)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v19 = sub_13840C4(v21);
          *(a1 + 40) = v19;
          v6 = *v25;
        }

        v15 = sub_21F8898(a3, v19, v6);
        goto LABEL_34;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = (a1 + 32);
        goto LABEL_33;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v22 = *(a1 + 8);
      v17 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v17 = *v17;
      }

      v18 = (a1 + 24);
LABEL_33:
      v23 = sub_194DB04(v18, v17);
      v15 = sub_1958890(v23, *v25, a3);
      goto LABEL_34;
    }

    if (v7)
    {
      v12 = (v7 & 7) == 4;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v25;
      }

LABEL_40:
      *v25 = 0;
      return *v25;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v6 = *v25;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_34:
    *v25 = v15;
    if (!v15)
    {
      goto LABEL_40;
    }
  }

  return *v25;
}

char *sub_12E957C(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 40);
  *v4 = 26;
  v8 = *(v7 + 20);
  v4[1] = v8;
  if (v8 > 0x7F)
  {
    v9 = sub_19575D0(v8, v4 + 1);
  }

  else
  {
    v9 = v4 + 2;
  }

  v4 = sub_1383BD4(v7, v9, a3);
LABEL_13:
  v10 = *(a1 + 8);
  if ((v10 & 1) == 0)
  {
    return v4;
  }

  v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  v13 = *(v12 + 31);
  if (v13 < 0)
  {
    v14 = *(v12 + 8);
    v13 = *(v12 + 16);
  }

  else
  {
    v14 = (v12 + 8);
  }

  if (*a3 - v4 >= v13)
  {
    v15 = v13;
    memcpy(v4, v14, v13);
    v4 += v15;
    return v4;
  }

  return sub_1957130(a3, v14, v13, v4);
}

uint64_t sub_12E96D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_14;
  }

  if (v2)
  {
    v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v10 = sub_1383D30(*(a1 + 40));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  v11 = *(a1 + 8);
  if (v11)
  {
    v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    v3 += v14;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_12E97F4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 7) == 0)
  {
    goto LABEL_20;
  }

  if (v4)
  {
    v5 = *(a2 + 24);
    LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
    size = result->__r_.__value_.__l.__size_;
    v7 = (size & 0xFFFFFFFFFFFFFFFCLL);
    if (size)
    {
      v7 = *v7;
    }

    result = sub_194EA1C(&result[1], (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 32);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
  v9 = v3->__r_.__value_.__l.__size_;
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  result = sub_194EA1C(&v3[1].__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
  if ((v4 & 4) != 0)
  {
LABEL_12:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v11 = v3[1].__r_.__value_.__r.__words[2];
    if (!v11)
    {
      v12 = v3->__r_.__value_.__l.__size_;
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_13840C4(v13);
      v3[1].__r_.__value_.__r.__words[2] = v11;
    }

    if (*(a2 + 40))
    {
      v14 = *(a2 + 40);
    }

    else
    {
      v14 = &off_276D250;
    }

    result = sub_1383EDC(v11, v14);
  }

LABEL_20:
  v15 = *(a2 + 8);
  if (v15)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_12E9938(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_14;
    }
  }

  else if (v4)
  {
    goto LABEL_14;
  }

  v5 = (a1 + 88);
  if (*(a1 + 88) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_276A348)
  {
    v6 = *(a1 + 96);
    if (v6)
    {
      sub_12E91B4(v6);
      operator delete();
    }

    if (*(a1 + 104))
    {
      sub_1547884();
      operator delete();
    }

    if (*(a1 + 112))
    {
      sub_17A2F70();
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_13116B0((a1 + 64));
  sub_1956AFC((a1 + 40));
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12E9A60(uint64_t a1)
{
  sub_12E9938(a1);

  operator delete();
}

uint64_t sub_12E9A98(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_12A41D0(a1 + 40);
  v3 = *(a1 + 72);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 80) + 8);
    do
    {
      v5 = *v4++;
      result = sub_182446C(v5);
      --v3;
    }

    while (v3);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 16);
  if ((v6 & 0xF) == 0)
  {
    goto LABEL_11;
  }

  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_21:
    result = sub_12E92D4(*(a1 + 96));
    if ((v6 & 4) == 0)
    {
LABEL_9:
      if ((v6 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_22;
  }

  v9 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v6 & 2) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v6 & 2) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_8:
  if ((v6 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_22:
  result = sub_14D28E4(*(a1 + 104));
  if ((v6 & 8) != 0)
  {
LABEL_10:
    result = sub_17A2FAC(*(a1 + 112));
  }

LABEL_11:
  if ((v6 & 0x30) != 0)
  {
    *(a1 + 128) = 0;
    *(a1 + 120) = 0;
  }

  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_12E9BA4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v60 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v60, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v60 + 1);
    v8 = **v60;
    if (**v60 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v60, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v60 + 2);
      }
    }

    *v60 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      if (v8 >> 3 <= 2)
      {
        if (v11 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_98;
          }

          *(a1 + 16) |= 2u;
          v31 = *(a1 + 96);
          if (!v31)
          {
            v32 = *(a1 + 8);
            v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
            if (v32)
            {
              v33 = *v33;
            }

            v31 = sub_12F1808(v33);
            *(a1 + 96) = v31;
            v7 = *v60;
          }

          v23 = sub_21F4FA0(a3, v31, v7);
        }

        else
        {
          if (v11 != 2 || v8 != 18)
          {
            goto LABEL_98;
          }

          *(a1 + 16) |= 4u;
          v19 = *(a1 + 104);
          if (!v19)
          {
            v20 = *(a1 + 8);
            v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
            if (v20)
            {
              v21 = *v21;
            }

            sub_155218C(v21);
            v19 = v22;
            *(a1 + 104) = v22;
            v7 = *v60;
          }

          v23 = sub_21F36E0(a3, v19, v7);
        }

LABEL_105:
        *v60 = v23;
        if (!v23)
        {
          goto LABEL_112;
        }

        goto LABEL_106;
      }

      if (v11 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_98;
        }

        *(a1 + 16) |= 8u;
        v34 = *(a1 + 112);
        if (!v34)
        {
          v35 = *(a1 + 8);
          v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
          if (v35)
          {
            v36 = *v36;
          }

          v34 = sub_185DD6C(v36);
          *(a1 + 112) = v34;
          v7 = *v60;
        }

        v23 = sub_21F5810(a3, v34, v7);
        goto LABEL_105;
      }

      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_98;
      }

      v24 = (v7 + 1);
      v25 = *v7;
      if (v25 < 0)
      {
        v26 = *v24;
        v27 = (v26 << 7) + v25;
        LODWORD(v25) = v27 - 128;
        if (v26 < 0)
        {
          *v60 = sub_19587DC(v7, (v27 - 128));
          if (!*v60)
          {
            goto LABEL_112;
          }

          LODWORD(v25) = v54;
          goto LABEL_41;
        }

        v24 = (v7 + 2);
      }

      *v60 = v24;
LABEL_41:
      if (sub_12AE1F4(v25))
      {
        *(a1 + 16) |= 0x20u;
        *(a1 + 128) = v25;
      }

      else
      {
        sub_12E8500();
      }

      goto LABEL_106;
    }

    if (v8 >> 3 <= 6)
    {
      break;
    }

    if (v11 != 7)
    {
      if (v11 == 8)
      {
        if (v8 == 66)
        {
          v46 = (v7 - 1);
          while (1)
          {
            v47 = (v46 + 1);
            *v60 = v46 + 1;
            v48 = *(a1 + 56);
            if (v48 && (v49 = *(a1 + 48), v49 < *v48))
            {
              *(a1 + 48) = v49 + 1;
              v50 = *&v48[2 * v49 + 2];
            }

            else
            {
              v51 = *(a1 + 40);
              if (!v51)
              {
                operator new();
              }

              *v53 = v52;
              v53[1] = sub_195A650;
              *v52 = 0;
              v52[1] = 0;
              v52[2] = 0;
              v50 = sub_19593CC(a1 + 40, v52);
              v47 = *v60;
            }

            v46 = sub_1958890(v50, v47, a3);
            *v60 = v46;
            if (!v46)
            {
              goto LABEL_112;
            }

            if (*a3 <= v46 || *v46 != 66)
            {
              goto LABEL_106;
            }
          }
        }
      }

      else if (v11 == 9 && v8 == 74)
      {
        v12 = v7 - 1;
        while (1)
        {
          v13 = v12 + 1;
          *v60 = v12 + 1;
          v14 = *(a1 + 80);
          if (v14 && (v15 = *(a1 + 72), v15 < *v14))
          {
            *(a1 + 72) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_186357C(*(a1 + 64));
            v16 = sub_19593CC(a1 + 64, v17);
            v13 = *v60;
          }

          v12 = sub_21F8928(a3, v16, v13);
          *v60 = v12;
          if (!v12)
          {
            goto LABEL_112;
          }

          if (*a3 <= v12 || *v12 != 74)
          {
            goto LABEL_106;
          }
        }
      }

      goto LABEL_98;
    }

    if (v8 != 56)
    {
      goto LABEL_98;
    }

    v5 |= 0x10u;
    v38 = (v7 + 1);
    v37 = *v7;
    if ((v37 & 0x8000000000000000) == 0)
    {
      goto LABEL_65;
    }

    v39 = *v38;
    v37 = (v39 << 7) + v37 - 128;
    if ((v39 & 0x80000000) == 0)
    {
      v38 = (v7 + 2);
LABEL_65:
      *v60 = v38;
      *(a1 + 120) = v37;
      goto LABEL_106;
    }

    v55 = sub_19587DC(v7, v37);
    *v60 = v55;
    *(a1 + 120) = v56;
    if (!v55)
    {
      goto LABEL_112;
    }

LABEL_106:
    if (sub_195ADC0(a3, v60, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 5)
  {
    if (v11 != 6 || v8 != 50)
    {
      goto LABEL_98;
    }

    *(a1 + 16) |= 1u;
    v28 = *(a1 + 8);
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    v30 = sub_194DB04((a1 + 88), v29);
    v23 = sub_1958890(v30, *v60, a3);
    goto LABEL_105;
  }

  if (v8 == 40)
  {
    v40 = v7 - 1;
    while (1)
    {
      *v60 = v40 + 1;
      v41 = v40[1];
      if (v41 < 0)
      {
        v42 = (v40[2] << 7) + v41;
        v41 = (v42 - 128);
        if (v40[2] < 0)
        {
          v40 = sub_19587DC((v40 + 1), (v42 - 128));
          v41 = v43;
        }

        else
        {
          v40 += 3;
        }
      }

      else
      {
        v40 += 2;
      }

      *v60 = v40;
      v44 = *(a1 + 24);
      if (v44 == *(a1 + 28))
      {
        v45 = v44 + 1;
        sub_1959094((a1 + 24), v44 + 1);
        *(*(a1 + 32) + 8 * v44) = v41;
        v40 = *v60;
      }

      else
      {
        *(*(a1 + 32) + 8 * v44) = v41;
        v45 = v44 + 1;
      }

      *(a1 + 24) = v45;
      if (!v40)
      {
        goto LABEL_112;
      }

      if (*a3 <= v40 || *v40 != 40)
      {
        goto LABEL_106;
      }
    }
  }

  if (v8 == 42)
  {
    v23 = sub_1958938((a1 + 24), v7, a3);
    goto LABEL_105;
  }

LABEL_98:
  if (v8)
  {
    v57 = (v8 & 7) == 4;
  }

  else
  {
    v57 = 1;
  }

  if (!v57)
  {
    v58 = *(a1 + 8);
    if (v58)
    {
      v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v59 = sub_11F1920((a1 + 8));
      v7 = *v60;
    }

    v23 = sub_1952690(v8, v59, v7, a3);
    goto LABEL_105;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_112:
  *v60 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v60;
}

char *sub_12EA184(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v8 = *(a1 + 96);
    *v4 = 10;
    v9 = *(v8 + 20);
    v4[1] = v9;
    if (v9 > 0x7F)
    {
      v10 = sub_19575D0(v9, v4 + 1);
    }

    else
    {
      v10 = v4 + 2;
    }

    v4 = sub_12E957C(v8, v10, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_18:
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v14 = *(a1 + 112);
      *v4 = 26;
      v15 = *(v14 + 44);
      v4[1] = v15;
      if (v15 > 0x7F)
      {
        v16 = sub_19575D0(v15, v4 + 1);
      }

      else
      {
        v16 = v4 + 2;
      }

      v4 = sub_17A31A8(v14, v16, a3);
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_24;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 104);
  *v4 = 18;
  v12 = *(v11 + 20);
  v4[1] = v12;
  if (v12 > 0x7F)
  {
    v13 = sub_19575D0(v12, v4 + 1);
  }

  else
  {
    v13 = v4 + 2;
  }

  v4 = sub_15480D4(v11, v13, a3);
  if ((v6 & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_4:
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    v7 = v4;
    goto LABEL_31;
  }

LABEL_24:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v17 = *(a1 + 128);
  *v4 = 32;
  v4[1] = v17;
  if (v17 > 0x7F)
  {
    v4[1] = v17 | 0x80;
    v18 = v17 >> 7;
    v4[2] = v17 >> 7;
    v7 = v4 + 3;
    if (v17 >= 0x4000)
    {
      LOBYTE(v4) = v4[2];
      do
      {
        *(v7 - 1) = v4 | 0x80;
        v4 = (v18 >> 7);
        *v7++ = v18 >> 7;
        v19 = v18 >> 14;
        v18 >>= 7;
      }

      while (v19);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_31:
  v20 = *(a1 + 24);
  if (v20 < 1)
  {
    v23 = v7;
  }

  else
  {
    for (i = 0; i != v20; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v22 = *(*(a1 + 32) + 8 * i);
      *v7 = 40;
      v7[1] = v22;
      if (v22 > 0x7F)
      {
        v7[1] = v22 | 0x80;
        v24 = v22 >> 7;
        v7[2] = v22 >> 7;
        v23 = v7 + 3;
        if (v22 >= 0x4000)
        {
          LOBYTE(v7) = v7[2];
          do
          {
            *(v23 - 1) = v7 | 0x80;
            v7 = (v24 >> 7);
            *v23++ = v24 >> 7;
            v25 = v24 >> 14;
            v24 >>= 7;
          }

          while (v25);
        }
      }

      else
      {
        v23 = v7 + 2;
      }

      v7 = v23;
    }
  }

  if (v6)
  {
    v23 = sub_128AEEC(a3, 6, *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL, v23);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v27 = *(a1 + 120);
    *v23 = 56;
    v23[1] = v27;
    if (v27 > 0x7F)
    {
      v23[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v23[2] = v27 >> 7;
      v26 = v23 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v29) = v23[2];
        do
        {
          *(v26 - 1) = v29 | 0x80;
          v29 = v28 >> 7;
          *v26++ = v28 >> 7;
          v30 = v28 >> 14;
          v28 >>= 7;
        }

        while (v30);
      }
    }

    else
    {
      v26 = v23 + 2;
    }
  }

  else
  {
    v26 = v23;
  }

  v31 = *(a1 + 48);
  if (v31 >= 1)
  {
    v32 = 8;
    do
    {
      v33 = *(*(a1 + 56) + v32);
      v34 = *(v33 + 23);
      if (v34 < 0 && (v34 = v33[1], v34 > 127) || (*a3 - v26 + 14) < v34)
      {
        v26 = sub_1957480(a3, 8, v33, v26);
      }

      else
      {
        *v26 = 66;
        v26[1] = v34;
        if (*(v33 + 23) < 0)
        {
          v33 = *v33;
        }

        v35 = v26 + 2;
        memcpy(v35, v33, v34);
        v26 = &v35[v34];
      }

      v32 += 8;
      --v31;
    }

    while (v31);
  }

  v36 = *(a1 + 72);
  if (v36)
  {
    for (j = 0; j != v36; ++j)
    {
      if (*a3 <= v26)
      {
        v26 = sub_225EB68(a3, v26);
      }

      v38 = *(*(a1 + 80) + 8 * j + 8);
      *v26 = 74;
      v39 = *(v38 + 20);
      v26[1] = v39;
      if (v39 > 0x7F)
      {
        v40 = sub_19575D0(v39, v26 + 1);
      }

      else
      {
        v40 = v26 + 2;
      }

      v26 = sub_1824668(v38, v40, a3);
    }
  }

  v41 = *(a1 + 8);
  if ((v41 & 1) == 0)
  {
    return v26;
  }

  v43 = v41 & 0xFFFFFFFFFFFFFFFCLL;
  v44 = *(v43 + 31);
  if (v44 < 0)
  {
    v45 = *(v43 + 8);
    v44 = *(v43 + 16);
  }

  else
  {
    v45 = (v43 + 8);
  }

  if ((*a3 - v26) >= v44)
  {
    v46 = v44;
    memcpy(v26, v45, v44);
    v26 += v46;
    return v26;
  }

  return sub_1957130(a3, v45, v44, v26);
}

uint64_t sub_12EA66C(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24));
  v3 = *(a1 + 48);
  v4 = v2 + *(a1 + 24) + v3;
  if (v3 >= 1)
  {
    v5 = (*(a1 + 56) + 8);
    do
    {
      v6 = *v5++;
      v7 = *(v6 + 23);
      v8 = *(v6 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v8 = v7;
      }

      v4 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      --v3;
    }

    while (v3);
  }

  v9 = *(a1 + 72);
  v10 = v4 + v9;
  v11 = *(a1 + 80);
  if (v11)
  {
    v12 = (v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = 8 * v9;
    do
    {
      v14 = *v12++;
      v15 = sub_1824750(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = *(a1 + 16);
  if ((v16 & 0x3F) != 0)
  {
    if (v16)
    {
      v22 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
      v23 = *(v22 + 23);
      v24 = *(v22 + 8);
      if ((v23 & 0x80u) == 0)
      {
        v24 = v23;
      }

      v10 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v16 & 2) == 0)
      {
LABEL_15:
        if ((v16 & 4) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_29;
      }
    }

    else if ((v16 & 2) == 0)
    {
      goto LABEL_15;
    }

    v25 = sub_12E96D4(*(a1 + 96));
    v10 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v16 & 4) == 0)
    {
LABEL_16:
      if ((v16 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_30;
    }

LABEL_29:
    v26 = sub_1548710(*(a1 + 104));
    v10 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v16 & 8) == 0)
    {
LABEL_17:
      if ((v16 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_31;
    }

LABEL_30:
    v27 = sub_17A3294(*(a1 + 112));
    v10 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v16 & 0x10) == 0)
    {
LABEL_18:
      if ((v16 & 0x20) == 0)
      {
        goto LABEL_23;
      }

LABEL_19:
      v17 = *(a1 + 128);
      v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v17 >= 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 11;
      }

      v10 += v19;
      goto LABEL_23;
    }

LABEL_31:
    v10 += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

LABEL_23:
  v20 = *(a1 + 8);
  if (v20)
  {
    v28 = v20 & 0xFFFFFFFFFFFFFFFCLL;
    v29 = *((v20 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v29 < 0)
    {
      v29 = *(v28 + 16);
    }

    v10 += v29;
  }

  *(a1 + 20) = v10;
  return v10;
}

void sub_12EA8C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (a1 + 24);
    v6 = *(a1 + 24);
    sub_1959094((a1 + 24), v6 + v4);
    v7 = *(a1 + 32);
    *v5 += *(a2 + 24);
    memcpy((v7 + 8 * v6), *(a2 + 32), 8 * *(a2 + 24));
  }

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 56);
    v10 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_1201B48(a1 + 40, v10, (v9 + 8), v8, **(a1 + 56) - *(a1 + 48));
    v11 = *(a1 + 48) + v8;
    *(a1 + 48) = v11;
    v12 = *(a1 + 56);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 72);
  if (v13)
  {
    v14 = *(a2 + 80);
    v15 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_13118C0((a1 + 64), v15, (v14 + 8), v13, **(a1 + 80) - *(a1 + 72));
    v16 = *(a1 + 72) + v13;
    *(a1 + 72) = v16;
    v17 = *(a1 + 80);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  v18 = *(a2 + 16);
  if ((v18 & 0x3F) != 0)
  {
    if (v18)
    {
      v20 = *(a2 + 88);
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      sub_194EA1C((a1 + 88), (v20 & 0xFFFFFFFFFFFFFFFELL), v22);
      if ((v18 & 2) == 0)
      {
LABEL_12:
        if ((v18 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_33;
      }
    }

    else if ((v18 & 2) == 0)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 2u;
    v23 = *(a1 + 96);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_12F1808(v25);
      *(a1 + 96) = v23;
    }

    if (*(a2 + 96))
    {
      v26 = *(a2 + 96);
    }

    else
    {
      v26 = &off_276A318;
    }

    sub_12E97F4(v23, v26);
    if ((v18 & 4) == 0)
    {
LABEL_13:
      if ((v18 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_41;
    }

LABEL_33:
    *(a1 + 16) |= 4u;
    v27 = *(a1 + 104);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      sub_155218C(v29);
      *(a1 + 104) = v27;
    }

    if (*(a2 + 104))
    {
      v30 = *(a2 + 104);
    }

    else
    {
      v30 = &off_2776D50;
    }

    sub_14D3AD8(v27, v30);
    if ((v18 & 8) == 0)
    {
LABEL_14:
      if ((v18 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_49;
    }

LABEL_41:
    *(a1 + 16) |= 8u;
    v31 = *(a1 + 112);
    if (!v31)
    {
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      v31 = sub_185DD6C(v33);
      *(a1 + 112) = v31;
    }

    if (*(a2 + 112))
    {
      v34 = *(a2 + 112);
    }

    else
    {
      v34 = &off_27829E0;
    }

    sub_14B7610(v31, v34);
    if ((v18 & 0x10) == 0)
    {
LABEL_15:
      if ((v18 & 0x20) == 0)
      {
LABEL_17:
        *(a1 + 16) |= v18;
        goto LABEL_18;
      }

LABEL_16:
      *(a1 + 128) = *(a2 + 128);
      goto LABEL_17;
    }

LABEL_49:
    *(a1 + 120) = *(a2 + 120);
    if ((v18 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  v19 = *(a2 + 8);
  if (v19)
  {

    sub_1957EF4((a1 + 8), (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12EAB84(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    result = sub_14D3EC8(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = sub_17A332C(*(a1 + 112));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_12EABE0(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_11;
    }
  }

  else if (v4)
  {
    goto LABEL_11;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C((a1 + 40));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_11:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12EACAC(uint64_t a1)
{
  sub_12EABE0(a1);

  operator delete();
}

uint64_t sub_12EACE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    goto LABEL_17;
  }

  if (v1)
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
    }

    goto LABEL_17;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_10:
  v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v3 + 23) < 0)
  {
    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v1 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  *v3 = 0;
  *(v3 + 23) = 0;
  if ((v1 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v6 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v6)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_12EAD9C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v23 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v23, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v23 + 1);
    v7 = **v23;
    if (**v23 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v23, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v23 + 2);
      }
    }

    *v23 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 4u;
        v19 = *(a1 + 8);
        v17 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v17 = *v17;
        }

        v18 = (a1 + 40);
        goto LABEL_31;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = (a1 + 32);
        goto LABEL_31;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v20 = *(a1 + 8);
      v17 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v17 = *v17;
      }

      v18 = (a1 + 24);
LABEL_31:
      v21 = sub_194DB04(v18, v17);
      v15 = sub_1958890(v21, *v23, a3);
      goto LABEL_32;
    }

    if (v7)
    {
      v12 = (v7 & 7) == 4;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v23;
      }

LABEL_38:
      *v23 = 0;
      return *v23;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v6 = *v23;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_32:
    *v23 = v15;
    if (!v15)
    {
      goto LABEL_38;
    }
  }

  return *v23;
}

char *sub_12EAF58(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) != 0)
  {
LABEL_4:
    v4 = sub_128AEEC(a3, 3, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_5:
  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *(v9 + 31);
  if (v10 < 0)
  {
    v11 = *(v9 + 8);
    v10 = *(v9 + 16);
  }

  else
  {
    v11 = (v9 + 8);
  }

  if (*a3 - v4 >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return sub_1957130(a3, v11, v10, v4);
}

uint64_t sub_12EB06C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_16;
  }

  if (v1)
  {
    v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    v9 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  v12 = *(a1 + 8);
  if (v12)
  {
    v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v2 += v15;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_12EB184(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 7) == 0)
  {
    goto LABEL_15;
  }

  if (v4)
  {
    v5 = *(a2 + 24);
    LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
    size = result->__r_.__value_.__l.__size_;
    v7 = (size & 0xFFFFFFFFFFFFFFFCLL);
    if (size)
    {
      v7 = *v7;
    }

    result = sub_194EA1C(&result[1], (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 32);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
  v9 = v3->__r_.__value_.__l.__size_;
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  result = sub_194EA1C(&v3[1].__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
  if ((v4 & 4) != 0)
  {
LABEL_12:
    v11 = *(a2 + 40);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v12 = v3->__r_.__value_.__l.__size_;
    v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    if (v12)
    {
      v13 = *v13;
    }

    result = sub_194EA1C(&v3[1].__r_.__value_.__r.__words[2], (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
  }

LABEL_15:
  v14 = *(a2 + 8);
  if (v14)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_12EB2B0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26D1EC0;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = a2;
  *(a1 + 136) = 0;
  *(a1 + 144) = a2;
  *(a1 + 152) = &qword_278E990;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 175) = 0x101010100000000;
  *(a1 + 183) = 1;
  return a1;
}

void sub_12EB364(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_12EB394(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_12;
    }
  }

  else if (v4)
  {
    goto LABEL_12;
  }

  v5 = (a1 + 152);
  if (*(a1 + 152) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_276A3D0)
  {
    if (*(a1 + 160))
    {
      sub_16E4E08();
      operator delete();
    }

    v6 = *(a1 + 168);
    if (v6)
    {
      sub_16E5B34(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_1956ABC(a1 + 136);
  sub_1956ABC(a1 + 120);
  sub_12E4E7C((a1 + 96));
  sub_1956AFC((a1 + 72));
  sub_1311734((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12EB4B8(uint64_t a1)
{
  sub_12EB394(a1);

  operator delete();
}

uint64_t sub_12EB4F0(uint64_t a1)
{
  sub_1951124((a1 + 16));
  v2 = *(a1 + 56);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 64) + 8);
    do
    {
      v4 = *v3++;
      sub_12ECF20(v4);
      --v2;
    }

    while (v2);
    *(a1 + 56) = 0;
  }

  result = sub_12A41D0(a1 + 72);
  v6 = *(a1 + 104);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 112) + 8);
    do
    {
      v8 = *v7++;
      result = sub_12E92D4(v8);
      --v6;
    }

    while (v6);
    *(a1 + 104) = 0;
  }

  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  v9 = *(a1 + 40);
  if ((v9 & 7) == 0)
  {
    goto LABEL_14;
  }

  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

  v12 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v12 + 23) < 0)
  {
    **v12 = 0;
    *(v12 + 8) = 0;
    if ((v9 & 2) != 0)
    {
      goto LABEL_26;
    }

LABEL_12:
    if ((v9 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *v12 = 0;
  *(v12 + 23) = 0;
  if ((v9 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_26:
  result = sub_16E4E44(*(a1 + 160));
  if ((v9 & 4) != 0)
  {
LABEL_13:
    result = sub_16E5B70(*(a1 + 168));
  }

LABEL_14:
  *(a1 + 178) = 0;
  *(a1 + 176) = 0;
  if ((v9 & 0xC0) != 0)
  {
    *(a1 + 179) = 257;
  }

  if ((v9 & 0x700) != 0)
  {
    *(a1 + 181) = 257;
    *(a1 + 183) = 1;
  }

  v11 = *(a1 + 8);
  v10 = a1 + 8;
  *(v10 + 32) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_12EB640(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v101 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v101, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (2)
  {
    v8 = (*v101 + 1);
    v9 = **v101;
    if (**v101 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(*v101, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = (*v101 + 2);
      }
    }

    *v101 = v8;
    switch(v9 >> 3)
    {
      case 1u:
        if (v9 != 10)
        {
          goto LABEL_152;
        }

        v13 = v8 - 1;
        while (1)
        {
          v14 = v13 + 1;
          *v101 = v13 + 1;
          v15 = *(a1 + 64);
          if (v15 && (v16 = *(a1 + 56), v16 < *v15))
          {
            *(a1 + 56) = v16 + 1;
            v17 = *&v15[2 * v16 + 2];
          }

          else
          {
            v18 = sub_12F1A38(*(a1 + 48));
            v17 = sub_19593CC(a1 + 48, v18);
            v14 = *v101;
          }

          v13 = sub_21F89B8(a3, v17, v14);
          *v101 = v13;
          if (!v13)
          {
            goto LABEL_167;
          }

          if (*a3 <= v13 || *v13 != 10)
          {
            goto LABEL_162;
          }
        }

      case 2u:
        if (v9 != 18)
        {
          goto LABEL_152;
        }

        *(a1 + 40) |= 1u;
        v45 = *(a1 + 8);
        v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
        if (v45)
        {
          v46 = *v46;
        }

        v47 = sub_194DB04((a1 + 152), v46);
        v38 = sub_1958890(v47, *v101, a3);
        goto LABEL_161;
      case 3u:
        if (v9 != 26)
        {
          goto LABEL_152;
        }

        *(a1 + 40) |= 2u;
        v36 = *(a1 + 160);
        if (!v36)
        {
          v37 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v37 = *v37;
          }

          v36 = sub_16F5828(v37);
          *(a1 + 160) = v36;
          v8 = *v101;
        }

        v38 = sub_21F4D60(a3, v36, v8);
        goto LABEL_161;
      case 4u:
        if (v9 != 34)
        {
          goto LABEL_152;
        }

        *(a1 + 40) |= 4u;
        v70 = *(a1 + 168);
        if (!v70)
        {
          v71 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v71 = *v71;
          }

          sub_16F58FC(v71);
          v70 = v72;
          *(a1 + 168) = v72;
          v8 = *v101;
        }

        v38 = sub_21F86E8(a3, v70, v8);
        goto LABEL_161;
      case 0xAu:
        if (v9 != 80)
        {
          goto LABEL_152;
        }

        v5 |= 0x40u;
        v74 = (v8 + 1);
        v73 = *v8;
        if ((v73 & 0x8000000000000000) == 0)
        {
          goto LABEL_120;
        }

        v75 = *v74;
        v73 = (v75 << 7) + v73 - 128;
        if (v75 < 0)
        {
          v92 = sub_19587DC(v8, v73);
          *v101 = v92;
          *(a1 + 179) = v93 != 0;
          if (!v92)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v74 = (v8 + 2);
LABEL_120:
          *v101 = v74;
          *(a1 + 179) = v73 != 0;
        }

        goto LABEL_162;
      case 0xBu:
        if (v9 != 88)
        {
          goto LABEL_152;
        }

        v5 |= 0x80u;
        v40 = (v8 + 1);
        v39 = *v8;
        if ((v39 & 0x8000000000000000) == 0)
        {
          goto LABEL_56;
        }

        v41 = *v40;
        v39 = (v41 << 7) + v39 - 128;
        if (v41 < 0)
        {
          v84 = sub_19587DC(v8, v39);
          *v101 = v84;
          *(a1 + 180) = v85 != 0;
          if (!v84)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v40 = (v8 + 2);
LABEL_56:
          *v101 = v40;
          *(a1 + 180) = v39 != 0;
        }

        goto LABEL_162;
      case 0xCu:
        if (v9 != 96)
        {
          goto LABEL_152;
        }

        v5 |= 0x100u;
        v49 = (v8 + 1);
        v48 = *v8;
        if ((v48 & 0x8000000000000000) == 0)
        {
          goto LABEL_70;
        }

        v50 = *v49;
        v48 = (v50 << 7) + v48 - 128;
        if (v50 < 0)
        {
          v88 = sub_19587DC(v8, v48);
          *v101 = v88;
          *(a1 + 181) = v89 != 0;
          if (!v88)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v49 = (v8 + 2);
LABEL_70:
          *v101 = v49;
          *(a1 + 181) = v48 != 0;
        }

        goto LABEL_162;
      case 0xDu:
        if (v9 != 104)
        {
          goto LABEL_152;
        }

        v5 |= 0x200u;
        v52 = (v8 + 1);
        v51 = *v8;
        if ((v51 & 0x8000000000000000) == 0)
        {
          goto LABEL_75;
        }

        v53 = *v52;
        v51 = (v53 << 7) + v51 - 128;
        if (v53 < 0)
        {
          v90 = sub_19587DC(v8, v51);
          *v101 = v90;
          *(a1 + 182) = v91 != 0;
          if (!v90)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v52 = (v8 + 2);
LABEL_75:
          *v101 = v52;
          *(a1 + 182) = v51 != 0;
        }

        goto LABEL_162;
      case 0xEu:
        if (v9 != 112)
        {
          goto LABEL_152;
        }

        v5 |= 0x400u;
        v80 = (v8 + 1);
        v79 = *v8;
        if ((v79 & 0x8000000000000000) == 0)
        {
          goto LABEL_130;
        }

        v81 = *v80;
        v79 = (v81 << 7) + v79 - 128;
        if (v81 < 0)
        {
          v96 = sub_19587DC(v8, v79);
          *v101 = v96;
          *(a1 + 183) = v97 != 0;
          if (!v96)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v80 = (v8 + 2);
LABEL_130:
          *v101 = v80;
          *(a1 + 183) = v79 != 0;
        }

        goto LABEL_162;
      case 0xFu:
        if (v9 != 120)
        {
          goto LABEL_152;
        }

        v5 |= 8u;
        v77 = (v8 + 1);
        v76 = *v8;
        if ((v76 & 0x8000000000000000) == 0)
        {
          goto LABEL_125;
        }

        v78 = *v77;
        v76 = (v78 << 7) + v76 - 128;
        if (v78 < 0)
        {
          v94 = sub_19587DC(v8, v76);
          *v101 = v94;
          *(a1 + 176) = v95 != 0;
          if (!v94)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v77 = (v8 + 2);
LABEL_125:
          *v101 = v77;
          *(a1 + 176) = v76 != 0;
        }

        goto LABEL_162;
      case 0x10u:
        if (v9 != 130)
        {
          goto LABEL_152;
        }

        v25 = (v8 - 2);
        while (1)
        {
          v26 = (v25 + 2);
          *v101 = v25 + 2;
          v27 = *(a1 + 88);
          if (v27 && (v28 = *(a1 + 80), v28 < *v27))
          {
            *(a1 + 80) = v28 + 1;
            v29 = *&v27[2 * v28 + 2];
          }

          else
          {
            v30 = *(a1 + 72);
            if (!v30)
            {
              operator new();
            }

            *v32 = v31;
            v32[1] = sub_195A650;
            *v31 = 0;
            v31[1] = 0;
            v31[2] = 0;
            v29 = sub_19593CC(a1 + 72, v31);
            v26 = *v101;
          }

          v25 = sub_1958890(v29, v26, a3);
          *v101 = v25;
          if (!v25)
          {
            goto LABEL_167;
          }

          if (*a3 <= v25 || *v25 != 386)
          {
            goto LABEL_162;
          }
        }

      case 0x11u:
        if (v9 != 136)
        {
          goto LABEL_152;
        }

        v5 |= 0x10u;
        v43 = (v8 + 1);
        v42 = *v8;
        if ((v42 & 0x8000000000000000) == 0)
        {
          goto LABEL_61;
        }

        v44 = *v43;
        v42 = (v44 << 7) + v42 - 128;
        if (v44 < 0)
        {
          v86 = sub_19587DC(v8, v42);
          *v101 = v86;
          *(a1 + 177) = v87 != 0;
          if (!v86)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v43 = (v8 + 2);
LABEL_61:
          *v101 = v43;
          *(a1 + 177) = v42 != 0;
        }

        goto LABEL_162;
      case 0x12u:
        if (v9 != 144)
        {
          goto LABEL_152;
        }

        v5 |= 0x20u;
        v34 = (v8 + 1);
        v33 = *v8;
        if ((v33 & 0x8000000000000000) == 0)
        {
          goto LABEL_45;
        }

        v35 = *v34;
        v33 = (v35 << 7) + v33 - 128;
        if (v35 < 0)
        {
          v82 = sub_19587DC(v8, v33);
          *v101 = v82;
          *(a1 + 178) = v83 != 0;
          if (!v82)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v34 = (v8 + 2);
LABEL_45:
          *v101 = v34;
          *(a1 + 178) = v33 != 0;
        }

        goto LABEL_162;
      case 0x14u:
        if (v9 != 162)
        {
          goto LABEL_152;
        }

        v19 = v8 - 2;
        while (1)
        {
          v20 = v19 + 2;
          *v101 = v19 + 2;
          v21 = *(a1 + 112);
          if (v21 && (v22 = *(a1 + 104), v22 < *v21))
          {
            *(a1 + 104) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_12F1808(*(a1 + 96));
            v23 = sub_19593CC(a1 + 96, v24);
            v20 = *v101;
          }

          v19 = sub_21F4FA0(a3, v23, v20);
          *v101 = v19;
          if (!v19)
          {
            goto LABEL_167;
          }

          if (*a3 <= v19 || *v19 != 418)
          {
            goto LABEL_162;
          }
        }

      case 0x15u:
        if (v9 == 168)
        {
          v54 = (v8 - 2);
          while (1)
          {
            *v101 = v54 + 2;
            v55 = *(v54 + 2);
            v56 = (v54 + 3);
            if (v55 < 0)
            {
              v57 = *v56;
              v58 = (v57 << 7) + v55;
              LODWORD(v55) = v58 - 128;
              if (v57 < 0)
              {
                *v101 = sub_19587DC(v54 + 2, (v58 - 128));
                if (!*v101)
                {
                  goto LABEL_167;
                }

                LODWORD(v55) = v61;
                goto LABEL_82;
              }

              v56 = (v54 + 4);
            }

            *v101 = v56;
LABEL_82:
            if (sub_14E9E48(v55))
            {
              v59 = *(a1 + 120);
              if (v59 == *(a1 + 124))
              {
                v60 = v59 + 1;
                sub_1958E5C((a1 + 120), v59 + 1);
                *(*(a1 + 128) + 4 * v59) = v55;
              }

              else
              {
                *(*(a1 + 128) + 4 * v59) = v55;
                v60 = v59 + 1;
              }

              *(a1 + 120) = v60;
            }

            else
            {
              sub_1313640();
            }

            v54 = *v101;
            if (*a3 <= *v101 || **v101 != 424)
            {
              goto LABEL_162;
            }
          }
        }

        if (v9 != 170)
        {
          goto LABEL_152;
        }

        *&v102 = a1 + 120;
        *(&v102 + 1) = sub_14E9E48;
        v103 = a1 + 8;
        v98 = 21;
        goto LABEL_151;
      case 0x16u:
        if (v9 == 176)
        {
          v62 = (v8 - 2);
          while (1)
          {
            *v101 = v62 + 2;
            v63 = *(v62 + 2);
            v64 = (v62 + 3);
            if (v63 < 0)
            {
              v65 = *v64;
              v66 = (v65 << 7) + v63;
              LODWORD(v63) = v66 - 128;
              if (v65 < 0)
              {
                *v101 = sub_19587DC(v62 + 2, (v66 - 128));
                if (!*v101)
                {
                  goto LABEL_167;
                }

                LODWORD(v63) = v69;
                goto LABEL_99;
              }

              v64 = (v62 + 4);
            }

            *v101 = v64;
LABEL_99:
            if (v63 > 5)
            {
              sub_1313600();
            }

            else
            {
              v67 = *(a1 + 136);
              if (v67 == *(a1 + 140))
              {
                v68 = v67 + 1;
                sub_1958E5C((a1 + 136), v67 + 1);
                *(*(a1 + 144) + 4 * v67) = v63;
              }

              else
              {
                *(*(a1 + 144) + 4 * v67) = v63;
                v68 = v67 + 1;
              }

              *(a1 + 136) = v68;
            }

            v62 = *v101;
            if (*a3 <= *v101 || **v101 != 432)
            {
              goto LABEL_162;
            }
          }
        }

        if (v9 == 178)
        {
          *&v102 = a1 + 136;
          *(&v102 + 1) = sub_12E91A8;
          v103 = a1 + 8;
          v98 = 22;
LABEL_151:
          v104 = v98;
          v38 = sub_1216588(a3, v8, &v102);
LABEL_161:
          *v101 = v38;
          if (!v38)
          {
            goto LABEL_167;
          }

LABEL_162:
          if (sub_195ADC0(a3, v101, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_152:
        if (v9)
        {
          v99 = (v9 & 7) == 4;
        }

        else
        {
          v99 = 1;
        }

        if (!v99)
        {
          if ((v9 - 80000) >> 3 > 0x3E8)
          {
            if (*v7)
            {
              v100 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v100 = sub_11F1920((a1 + 8));
              v8 = *v101;
            }

            v38 = sub_1952690(v9, v100, v8, a3);
          }

          else
          {
            v38 = sub_19525AC((a1 + 16), v9, v8, &off_276A3D0, (a1 + 8), a3);
          }

          goto LABEL_161;
        }

        if (v8)
        {
          a3[10].i32[0] = v9 - 1;
        }

        else
        {
LABEL_167:
          *v101 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return *v101;
      default:
        goto LABEL_152;
    }
  }
}

char *sub_12EC07C(uint64_t a1, char *a2, void *a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 64) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 20);
      a2[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, a2 + 1);
      }

      else
      {
        v10 = a2 + 2;
      }

      a2 = sub_12ED31C(v8, v10, a3);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    a2 = sub_128AEEC(a3, 2, *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL, a2);
    if ((v11 & 2) == 0)
    {
LABEL_11:
      if ((v11 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_11;
  }

  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v12 = *(a1 + 160);
  *a2 = 26;
  v13 = *(v12 + 44);
  a2[1] = v13;
  if (v13 > 0x7F)
  {
    v14 = sub_19575D0(v13, a2 + 1);
  }

  else
  {
    v14 = a2 + 2;
  }

  a2 = sub_16E5070(v12, v14, a3);
  if ((v11 & 4) == 0)
  {
LABEL_12:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_26:
  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v15 = *(a1 + 168);
  *a2 = 34;
  v16 = *(v15 + 20);
  a2[1] = v16;
  if (v16 > 0x7F)
  {
    v17 = sub_19575D0(v16, a2 + 1);
  }

  else
  {
    v17 = a2 + 2;
  }

  a2 = sub_16E5FE0(v15, v17, a3);
  if ((v11 & 0x40) == 0)
  {
LABEL_13:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_32:
  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v18 = *(a1 + 179);
  *a2 = 80;
  a2[1] = v18;
  a2 += 2;
  if ((v11 & 0x80) == 0)
  {
LABEL_14:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_35:
  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v19 = *(a1 + 180);
  *a2 = 88;
  a2[1] = v19;
  a2 += 2;
  if ((v11 & 0x100) == 0)
  {
LABEL_15:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v20 = *(a1 + 181);
  *a2 = 96;
  a2[1] = v20;
  a2 += 2;
  if ((v11 & 0x200) == 0)
  {
LABEL_16:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_41:
  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v21 = *(a1 + 182);
  *a2 = 104;
  a2[1] = v21;
  a2 += 2;
  if ((v11 & 0x400) == 0)
  {
LABEL_17:
    if ((v11 & 8) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v22 = *(a1 + 183);
  *a2 = 112;
  a2[1] = v22;
  a2 += 2;
  if ((v11 & 8) != 0)
  {
LABEL_47:
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v23 = *(a1 + 176);
    *a2 = 120;
    a2[1] = v23;
    a2 += 2;
  }

LABEL_50:
  v24 = *(a1 + 80);
  if (v24 >= 1)
  {
    v25 = 8;
    do
    {
      v26 = *(*(a1 + 88) + v25);
      v27 = *(v26 + 23);
      if (v27 < 0 && (v27 = v26[1], v27 > 127) || *a3 - a2 + 13 < v27)
      {
        a2 = sub_1957480(a3, 16, v26, a2);
      }

      else
      {
        *a2 = 386;
        a2[2] = v27;
        if (*(v26 + 23) < 0)
        {
          v26 = *v26;
        }

        v28 = a2 + 3;
        memcpy(a2 + 3, v26, v27);
        a2 = &v28[v27];
      }

      v25 += 8;
      --v24;
    }

    while (v24);
  }

  if ((v11 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v29 = *(a1 + 177);
    *a2 = 392;
    a2[2] = v29;
    a2 += 3;
  }

  if ((v11 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v30 = *(a1 + 178);
    *a2 = 400;
    a2[2] = v30;
    a2 += 3;
  }

  v31 = *(a1 + 104);
  if (v31)
  {
    for (j = 0; j != v31; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v33 = *(*(a1 + 112) + 8 * j + 8);
      *a2 = 418;
      v34 = *(v33 + 20);
      a2[2] = v34;
      if (v34 > 0x7F)
      {
        v35 = sub_19575D0(v34, a2 + 2);
      }

      else
      {
        v35 = a2 + 3;
      }

      a2 = sub_12E957C(v33, v35, a3);
    }
  }

  v36 = *(a1 + 120);
  if (v36 < 1)
  {
    v39 = a2;
  }

  else
  {
    for (k = 0; k != v36; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v38 = *(*(a1 + 128) + 4 * k);
      *a2 = 424;
      a2[2] = v38;
      if (v38 > 0x7F)
      {
        a2[2] = v38 | 0x80;
        v40 = v38 >> 7;
        a2[3] = v38 >> 7;
        v39 = a2 + 4;
        if (v38 >= 0x4000)
        {
          LOBYTE(v41) = a2[3];
          do
          {
            *(v39 - 1) = v41 | 0x80;
            v41 = v40 >> 7;
            *v39++ = v40 >> 7;
            v42 = v40 >> 14;
            v40 >>= 7;
          }

          while (v42);
        }
      }

      else
      {
        v39 = a2 + 3;
      }

      a2 = v39;
    }
  }

  v43 = *(a1 + 136);
  if (v43 < 1)
  {
    v46 = v39;
  }

  else
  {
    for (m = 0; m != v43; ++m)
    {
      if (*a3 <= v39)
      {
        v39 = sub_225EB68(a3, v39);
      }

      v45 = *(*(a1 + 144) + 4 * m);
      *v39 = 432;
      v39[2] = v45;
      if (v45 > 0x7F)
      {
        v39[2] = v45 | 0x80;
        v47 = v45 >> 7;
        v39[3] = v45 >> 7;
        v46 = v39 + 4;
        if (v45 >= 0x4000)
        {
          LOBYTE(v48) = v39[3];
          do
          {
            *(v46 - 1) = v48 | 0x80;
            v48 = v47 >> 7;
            *v46++ = v47 >> 7;
            v49 = v47 >> 14;
            v47 >>= 7;
          }

          while (v49);
        }
      }

      else
      {
        v46 = v39 + 3;
      }

      v39 = v46;
    }
  }

  if (*(a1 + 26))
  {
    v46 = sub_1953428(a1 + 16, 10000, 11001, v46, a3);
  }

  v50 = *(a1 + 8);
  if ((v50 & 1) == 0)
  {
    return v46;
  }

  v52 = v50 & 0xFFFFFFFFFFFFFFFCLL;
  v53 = *(v52 + 31);
  if (v53 < 0)
  {
    v54 = *(v52 + 8);
    v53 = *(v52 + 16);
  }

  else
  {
    v54 = (v52 + 8);
  }

  if (*a3 - v46 >= v53)
  {
    v55 = v53;
    memcpy(v46, v54, v53);
    v46 += v55;
    return v46;
  }

  return sub_1957130(a3, v54, v53, v46);
}

uint64_t sub_12EC710(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 56);
  v4 = v2 + v3;
  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sub_12ED54C(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 80);
  v11 = v4 + 2 * v10;
  if (v10 >= 1)
  {
    v12 = (*(a1 + 88) + 8);
    do
    {
      v13 = *v12++;
      v14 = *(v13 + 23);
      v15 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v14;
      }

      v11 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      --v10;
    }

    while (v10);
  }

  v16 = *(a1 + 104);
  v17 = v11 + 2 * v16;
  v18 = *(a1 + 112);
  if (v18)
  {
    v19 = (v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  if (v16)
  {
    v20 = 8 * v16;
    do
    {
      v21 = *v19++;
      v22 = sub_12E96D4(v21);
      v17 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      v20 -= 8;
    }

    while (v20);
  }

  v23 = *(a1 + 120);
  if (v23)
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = *(*(a1 + 128) + 4 * v24);
      if (v26 < 0)
      {
        v27 = 10;
      }

      else
      {
        v27 = (9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6;
      }

      v25 += v27;
      ++v24;
    }

    while (v23 != v24);
  }

  else
  {
    v25 = 0;
  }

  v28 = *(a1 + 136);
  if (v28)
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v31 = *(*(a1 + 144) + 4 * v29);
      if (v31 < 0)
      {
        v32 = 10;
      }

      else
      {
        v32 = (9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6;
      }

      v30 += v32;
      ++v29;
    }

    while (v28 != v29);
  }

  else
  {
    v30 = 0;
  }

  v33 = v25 + v17 + 2 * (v28 + v23) + v30;
  v34 = *(a1 + 40);
  if (*(a1 + 40))
  {
    if (v34)
    {
      v39 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
      v40 = *(v39 + 23);
      v41 = *(v39 + 8);
      if ((v40 & 0x80u) == 0)
      {
        v41 = v40;
      }

      v33 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v34 & 2) == 0)
      {
LABEL_37:
        if ((v34 & 4) == 0)
        {
LABEL_39:
          v36 = v33 + ((v34 >> 2) & 2);
          if ((v34 & 0x10) != 0)
          {
            v36 += 3;
          }

          if ((v34 & 0x20) != 0)
          {
            v36 += 3;
          }

          v33 = v36 + ((v34 >> 6) & 2) + ((v34 >> 5) & 2);
          goto LABEL_44;
        }

LABEL_38:
        v35 = sub_16E62F4(*(a1 + 168));
        v33 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
        goto LABEL_39;
      }
    }

    else if ((v34 & 2) == 0)
    {
      goto LABEL_37;
    }

    v42 = sub_16E51F0(*(a1 + 160));
    v33 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v34 & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_44:
  if ((v34 & 0x700) != 0)
  {
    result = v33 + ((v34 >> 8) & 2) + ((v34 >> 7) & 2) + ((v34 >> 9) & 2);
  }

  else
  {
    result = v33;
  }

  v38 = *(a1 + 8);
  if (v38)
  {
    v43 = v38 & 0xFFFFFFFFFFFFFFFCLL;
    v44 = *((v38 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v44 < 0)
    {
      v44 = *(v43 + 16);
    }

    result += v44;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_12ECA3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_131194C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1201B48(a1 + 72, v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 104);
  if (v14)
  {
    v15 = *(a2 + 112);
    v16 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_12E5218((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 120);
  if (v19)
  {
    v20 = *(a1 + 120);
    sub_1958E5C((a1 + 120), v20 + v19);
    v21 = *(a1 + 128);
    *(a1 + 120) += *(a2 + 120);
    memcpy((v21 + 4 * v20), *(a2 + 128), 4 * *(a2 + 120));
  }

  v22 = *(a2 + 136);
  if (v22)
  {
    v23 = *(a1 + 136);
    sub_1958E5C((a1 + 136), v23 + v22);
    v24 = *(a1 + 144);
    *(a1 + 136) += *(a2 + 136);
    memcpy((v24 + 4 * v23), *(a2 + 144), 4 * *(a2 + 136));
  }

  v25 = *(a2 + 40);
  if (v25)
  {
    if (v25)
    {
      v27 = *(a2 + 152);
      *(a1 + 40) |= 1u;
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      sub_194EA1C((a1 + 152), (v27 & 0xFFFFFFFFFFFFFFFELL), v29);
      if ((v25 & 2) == 0)
      {
LABEL_17:
        if ((v25 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_46;
      }
    }

    else if ((v25 & 2) == 0)
    {
      goto LABEL_17;
    }

    *(a1 + 40) |= 2u;
    v30 = *(a1 + 160);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_16F5828(v32);
      *(a1 + 160) = v30;
    }

    if (*(a2 + 160))
    {
      v33 = *(a2 + 160);
    }

    else
    {
      v33 = &off_277E5E8;
    }

    sub_16E527C(v30, v33);
    if ((v25 & 4) == 0)
    {
LABEL_18:
      if ((v25 & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_54;
    }

LABEL_46:
    *(a1 + 40) |= 4u;
    v34 = *(a1 + 168);
    if (!v34)
    {
      v35 = *(a1 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      sub_16F58FC(v36);
      *(a1 + 168) = v34;
    }

    if (*(a2 + 168))
    {
      v37 = *(a2 + 168);
    }

    else
    {
      v37 = &off_277E650;
    }

    sub_16E645C(v34, v37);
    if ((v25 & 8) == 0)
    {
LABEL_19:
      if ((v25 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_55;
    }

LABEL_54:
    *(a1 + 176) = *(a2 + 176);
    if ((v25 & 0x10) == 0)
    {
LABEL_20:
      if ((v25 & 0x20) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_56;
    }

LABEL_55:
    *(a1 + 177) = *(a2 + 177);
    if ((v25 & 0x20) == 0)
    {
LABEL_21:
      if ((v25 & 0x40) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_57;
    }

LABEL_56:
    *(a1 + 178) = *(a2 + 178);
    if ((v25 & 0x40) == 0)
    {
LABEL_22:
      if ((v25 & 0x80) == 0)
      {
LABEL_24:
        *(a1 + 40) |= v25;
        goto LABEL_25;
      }

LABEL_23:
      *(a1 + 180) = *(a2 + 180);
      goto LABEL_24;
    }

LABEL_57:
    *(a1 + 179) = *(a2 + 179);
    if ((v25 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_25:
  if ((v25 & 0x700) == 0)
  {
    goto LABEL_31;
  }

  if ((v25 & 0x100) == 0)
  {
    if ((v25 & 0x200) == 0)
    {
      goto LABEL_28;
    }

LABEL_60:
    *(a1 + 182) = *(a2 + 182);
    if ((v25 & 0x400) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  *(a1 + 181) = *(a2 + 181);
  if ((v25 & 0x200) != 0)
  {
    goto LABEL_60;
  }

LABEL_28:
  if ((v25 & 0x400) != 0)
  {
LABEL_29:
    *(a1 + 183) = *(a2 + 183);
  }

LABEL_30:
  *(a1 + 40) |= v25;
LABEL_31:
  sub_225EA0C(a1 + 16, a2 + 16);
  v26 = *(a2 + 8);
  if (v26)
  {

    sub_1957EF4((a1 + 8), (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12ECDC8(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if ((v3 & 2) != 0)
    {
      result = sub_16E5370(*(a1 + 160));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 4) == 0)
    {
      return 1;
    }

    result = sub_16E6614(*(a1 + 168));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_12ECE30(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_9;
    }
  }

  else if (v4)
  {
    goto LABEL_9;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12ECEE8(uint64_t a1)
{
  sub_12ECE30(a1);

  operator delete();
}

uint64_t sub_12ECF20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
        if ((v1 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v2 = 0;
      *(v2 + 23) = 0;
    }

    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

LABEL_11:
  if ((v1 & 0x1C) != 0)
  {
    *(a1 + 48) = 0;
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_12ECFAC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v38 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v38, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v38 + 1);
    v8 = **v38;
    if (**v38 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v38, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v38 + 2);
      }
    }

    *v38 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_47;
        }

        *(a1 + 16) |= 1u;
        v27 = *(a1 + 8);
        v17 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v17 = *v17;
        }

        v18 = (a1 + 24);
      }

      else
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_47;
        }

        *(a1 + 16) |= 2u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = (a1 + 32);
      }

      v28 = sub_194DB04(v18, v17);
      v29 = sub_1958890(v28, *v38, a3);
LABEL_54:
      *v38 = v29;
      if (!v29)
      {
        goto LABEL_71;
      }

      goto LABEL_55;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_47;
    }

    v5 |= 8u;
    v20 = v7 + 1;
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_31:
      *v38 = v20;
      *(a1 + 44) = v19 != 0;
      goto LABEL_55;
    }

    v33 = sub_19587DC(v7, v19);
    *v38 = v33;
    *(a1 + 44) = v34 != 0;
    if (!v33)
    {
      goto LABEL_71;
    }

LABEL_55:
    if (sub_195ADC0(a3, v38, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 10)
  {
    if (v8 != 80)
    {
      goto LABEL_47;
    }

    v22 = v7 + 1;
    v23 = *v7;
    if ((v23 & 0x8000000000000000) != 0)
    {
      v24 = *v22;
      v25 = (v24 << 7) + v23;
      v23 = (v25 - 128);
      if (v24 < 0)
      {
        *v38 = sub_19587DC(v7, (v25 - 128));
        if (!*v38)
        {
          goto LABEL_71;
        }

        v23 = v35;
        goto LABEL_37;
      }

      v22 = v7 + 2;
    }

    *v38 = v22;
LABEL_37:
    if (v23 > 0x3C || ((1 << v23) & 0x1000070041F1FC03) == 0)
    {
      v36 = *(a1 + 8);
      if (v36)
      {
        v37 = ((v36 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      else
      {
        v37 = sub_11F1920((a1 + 8));
      }

      sub_19586BC(10, v23, v37);
    }

    else
    {
      *(a1 + 16) |= 0x10u;
      *(a1 + 48) = v23;
    }

    goto LABEL_55;
  }

  if (v11 == 11 && v8 == 88)
  {
    v13 = v7 + 1;
    v12 = *v7;
    if (v12 < 0)
    {
      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if (v14 < 0)
      {
        *v38 = sub_19587DC(v7, v12);
        if (!*v38)
        {
          goto LABEL_71;
        }

        goto LABEL_16;
      }

      v13 = v7 + 2;
    }

    *v38 = v13;
LABEL_16:
    if (v12 > 2)
    {
      sub_1313680();
    }

    else
    {
      *(a1 + 16) |= 4u;
      *(a1 + 40) = v12;
    }

    goto LABEL_55;
  }

LABEL_47:
  if (v8)
  {
    v30 = (v8 & 7) == 4;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    v31 = *(a1 + 8);
    if (v31)
    {
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v32 = sub_11F1920((a1 + 8));
      v7 = *v38;
    }

    v29 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_54;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_71:
  *v38 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v38;
}

char *sub_12ED31C(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v8 = *(a1 + 44);
      *v4 = 24;
      v4[1] = v8;
      v4 += 2;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    v7 = v4;
    goto LABEL_18;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 48);
  *v4 = 80;
  v4[1] = v9;
  if (v9 > 0x7F)
  {
    v4[1] = v9 | 0x80;
    v10 = v9 >> 7;
    v4[2] = v9 >> 7;
    v7 = v4 + 3;
    if (v9 >= 0x4000)
    {
      LOBYTE(v11) = v4[2];
      do
      {
        *(v7 - 1) = v11 | 0x80;
        v11 = v10 >> 7;
        *v7++ = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_18:
  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v14 = *(a1 + 40);
    *v7 = 88;
    v7[1] = v14;
    if (v14 > 0x7F)
    {
      v7[1] = v14 | 0x80;
      v15 = v14 >> 7;
      v7[2] = v14 >> 7;
      v13 = v7 + 3;
      if (v14 >= 0x4000)
      {
        LOBYTE(v16) = v7[2];
        do
        {
          *(v13 - 1) = v16 | 0x80;
          v16 = v15 >> 7;
          *v13++ = v15 >> 7;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
      }
    }

    else
    {
      v13 = v7 + 2;
    }
  }

  else
  {
    v13 = v7;
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v13;
  }

  v20 = v18 & 0xFFFFFFFFFFFFFFFCLL;
  v21 = *(v20 + 31);
  if (v21 < 0)
  {
    v22 = *(v20 + 8);
    v21 = *(v20 + 16);
  }

  else
  {
    v22 = (v20 + 8);
  }

  if (*a3 - v13 >= v21)
  {
    v23 = v21;
    memcpy(v13, v22, v21);
    v13 += v23;
    return v13;
  }

  return sub_1957130(a3, v22, v21, v13);
}

uint64_t sub_12ED54C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_22;
  }

  if (v1)
  {
    v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    v10 = *(a1 + 40);
    if (v10 < 0)
    {
      v11 = 11;
    }

    else
    {
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v11;
  }

  v3 = v2 + ((v1 >> 2) & 2);
  if ((v1 & 0x10) != 0)
  {
    v12 = *(a1 + 48);
    v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v12 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 11;
    }

    v3 += v14;
  }

LABEL_22:
  v15 = *(a1 + 8);
  if (v15)
  {
    v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v3 += v18;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_12ED694(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0x1F) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      size = result->__r_.__value_.__l.__size_;
      v8 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v8 = *v8;
      }

      result = sub_194EA1C(&result[1], (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_19;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = *(a2 + 32);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v10 = v3->__r_.__value_.__l.__size_;
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    result = sub_194EA1C(&v3[1].__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_19:
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
LABEL_8:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_9;
      }

LABEL_7:
      LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
      goto LABEL_8;
    }

LABEL_20:
    v3[1].__r_.__value_.__s.__data_[20] = *(a2 + 44);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_12ED7C4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12ED838(void *a1)
{
  sub_12ED7C4(a1);

  operator delete();
}

uint64_t sub_12ED870(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 16) = 0;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_12ED888(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v19, a3[11].i32[1]))
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = v19 + 1;
    v7 = *v19;
    if (*v19 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v19, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v19 + 2;
      }
    }

    v19 = v6;
    if (v7 != 8)
    {
      break;
    }

    v14 = v6 + 1;
    v13 = *v6;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v6 + 2;
LABEL_18:
      v19 = v14;
      *(a1 + 24) = v13;
      v5 = 1;
      goto LABEL_19;
    }

    v16 = sub_19587DC(v6, v13);
    v19 = v16;
    *(a1 + 24) = v17;
    v5 = 1;
    if (!v16)
    {
      goto LABEL_27;
    }

LABEL_19:
    if (sub_195ADC0(a3, &v19, a3[11].i32[1]))
    {
      goto LABEL_26;
    }
  }

  if (v7)
  {
    v10 = (v7 & 7) == 4;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v12 = sub_11F1920((a1 + 8));
      v6 = v19;
    }

    v19 = sub_1952690(v7, v12, v6, a3);
    if (!v19)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_26;
  }

LABEL_27:
  v19 = 0;
LABEL_26:
  *(a1 + 16) |= v5;
  return v19;
}

char *sub_12ED9FC(uint64_t a1, char *__dst, _DWORD *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *__dst = 8;
    __dst[1] = v6;
    if (v6 > 0x7F)
    {
      __dst[1] = v6 | 0x80;
      v7 = v6 >> 7;
      __dst[2] = v6 >> 7;
      v5 = __dst + 3;
      if (v6 >= 0x4000)
      {
        LOBYTE(v8) = __dst[2];
        do
        {
          *(v5 - 1) = v8 | 0x80;
          v8 = v7 >> 7;
          *v5++ = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }
    }

    else
    {
      v5 = __dst + 2;
    }
  }

  else
  {
    v5 = __dst;
  }

  v10 = *(a1 + 8);
  if ((v10 & 1) == 0)
  {
    return v5;
  }

  v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  v13 = *(v12 + 31);
  if (v13 < 0)
  {
    v14 = *(v12 + 8);
    v13 = *(v12 + 16);
  }

  else
  {
    v14 = (v12 + 8);
  }

  if (*a3 - v5 >= v13)
  {
    v15 = v13;
    memcpy(v5, v14, v13);
    v5 += v15;
    return v5;
  }

  return sub_1957130(a3, v14, v13, v5);
}

unint64_t sub_12EDB24(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  else
  {
    v1 = 0;
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = v2 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = *((v2 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v5 < 0)
    {
      v5 = *(v4 + 16);
    }

    v1 += v5;
  }

  *(a1 + 20) = v1;
  return v1;
}

void *sub_12EDB9C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12EDC18(void *a1)
{
  sub_12EDB9C(a1);

  operator delete();
}

uint64_t sub_12EDC50(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 16) = 0;
  *(result + 32) = 0;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_12EDC6C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v27 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v27, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v27 + 1;
    v8 = *v27;
    if (*v27 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v27, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v27 + 2;
      }
    }

    v27 = v7;
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 8)
    {
      goto LABEL_12;
    }

    v22 = v7 + 1;
    v23 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    v24 = *v22;
    v23 = v23 + (v24 << 7) - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_38:
      v27 = v22;
      *(a1 + 40) = v23;
      v5 = 1;
      goto LABEL_39;
    }

    v25 = sub_1958770(v7, v23);
    v27 = v25;
    *(a1 + 40) = v26;
    v5 = 1;
    if (!v25)
    {
      goto LABEL_48;
    }

LABEL_39:
    if (sub_195ADC0(a3, &v27, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 16)
  {
    v16 = v7 - 1;
    while (1)
    {
      v27 = v16 + 1;
      v17 = v16[1];
      if (v16[1] < 0)
      {
        v18 = v17 + (v16[2] << 7);
        v17 = v18 - 128;
        if (v16[2] < 0)
        {
          v16 = sub_1958770((v16 + 1), v18 - 128);
          v17 = v19;
        }

        else
        {
          v16 += 3;
        }
      }

      else
      {
        v16 += 2;
      }

      v27 = v16;
      v20 = *(a1 + 24);
      if (v20 == *(a1 + 28))
      {
        v21 = v20 + 1;
        sub_1958E5C((a1 + 24), v20 + 1);
        *(*(a1 + 32) + 4 * v20) = v17;
        v16 = v27;
      }

      else
      {
        *(*(a1 + 32) + 4 * v20) = v17;
        v21 = v20 + 1;
      }

      *(a1 + 24) = v21;
      if (!v16)
      {
        goto LABEL_48;
      }

      if (*a3 <= v16 || *v16 != 16)
      {
        goto LABEL_39;
      }
    }
  }

  if (v8 == 18)
  {
    v15 = sub_1958918((a1 + 24), v7, a3);
    goto LABEL_19;
  }

LABEL_12:
  if (v8)
  {
    v12 = (v8 & 7) == 4;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v7 = v27;
    }

    v15 = sub_1952690(v8, v14, v7, a3);
LABEL_19:
    v27 = v15;
    if (!v15)
    {
      goto LABEL_48;
    }

    goto LABEL_39;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_48:
  v27 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v27;
}

char *sub_12EDED8(uint64_t a1, char *a2, _DWORD *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 40);
    *a2 = 8;
    a2[1] = v6;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      a2[2] = v6 >> 7;
      v5 = a2 + 3;
      if (v6 >= 0x4000)
      {
        LOBYTE(v8) = a2[2];
        do
        {
          *(v5 - 1) = v8 | 0x80;
          v8 = v7 >> 7;
          *v5++ = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }
    }

    else
    {
      v5 = a2 + 2;
    }
  }

  else
  {
    v5 = a2;
  }

  v10 = *(a1 + 24);
  if (v10 < 1)
  {
    v13 = v5;
  }

  else
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v5)
      {
        v5 = sub_225EB68(a3, v5);
      }

      v12 = *(*(a1 + 32) + 4 * i);
      *v5 = 16;
      v5[1] = v12;
      if (v12 > 0x7F)
      {
        v5[1] = v12 | 0x80;
        v14 = v12 >> 7;
        v5[2] = v12 >> 7;
        v13 = v5 + 3;
        if (v12 >= 0x4000)
        {
          LOBYTE(v5) = v5[2];
          do
          {
            *(v13 - 1) = v5 | 0x80;
            LODWORD(v5) = v14 >> 7;
            *v13++ = v14 >> 7;
            v15 = v14 >> 14;
            v14 >>= 7;
          }

          while (v15);
        }
      }

      else
      {
        v13 = v5 + 2;
      }

      v5 = v13;
    }
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v13;
  }

  v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
  v19 = *(v18 + 31);
  if (v19 < 0)
  {
    v20 = *(v18 + 8);
    v19 = *(v18 + 16);
  }

  else
  {
    v20 = (v18 + 8);
  }

  if (*a3 - v13 >= v19)
  {
    v21 = v19;
    memcpy(v13, v20, v19);
    v13 += v21;
    return v13;
  }

  return sub_1957130(a3, v20, v19, v13);
}

uint64_t sub_12EE0B4(uint64_t a1)
{
  result = sub_1959E5C((a1 + 24)) + *(a1 + 24);
  if (*(a1 + 16))
  {
    result += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v5 < 0)
    {
      v5 = *(v4 + 16);
    }

    result += v5;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_12EE138(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = result + 1;
    data_low = SLODWORD(result[1].__r_.__value_.__l.__data_);
    sub_1958E5C(&result[1], data_low + v4);
    size = v3[1].__r_.__value_.__l.__size_;
    LODWORD(v5->__r_.__value_.__l.__data_) += *(a2 + 24);
    result = memcpy((size + 4 * data_low), *(a2 + 32), 4 * *(a2 + 24));
  }

  if (*(a2 + 16))
  {
    v8 = *(a2 + 40);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) = v8;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_12EE210(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12EE28C(void *a1)
{
  sub_12EE210(a1);

  operator delete();
}

uint64_t sub_12EE2C4(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_12EE2D8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  if (sub_195ADC0(a3, &v20, a3[11].i32[1]))
  {
    return v20;
  }

  while (1)
  {
    v5 = v20 + 1;
    v6 = *v20;
    if (*v20 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        v5 = sub_1958824(v20, v7 - 128);
        v6 = v8;
      }

      else
      {
        v5 = v20 + 2;
      }
    }

    v20 = v5;
    if ((v6 & 0xFFFFFFF8) == 8)
    {
      if (v6 == 8)
      {
        v9 = v5 - 1;
        while (1)
        {
          v20 = v9 + 1;
          v10 = v9[1];
          if (v9[1] < 0)
          {
            v11 = v10 + (v9[2] << 7);
            v10 = v11 - 128;
            if (v9[2] < 0)
            {
              v9 = sub_1958770((v9 + 1), v11 - 128);
              v10 = v12;
            }

            else
            {
              v9 += 3;
            }
          }

          else
          {
            v9 += 2;
          }

          v20 = v9;
          v13 = *(a1 + 16);
          if (v13 == *(a1 + 20))
          {
            v14 = v13 + 1;
            sub_1958E5C((a1 + 16), v13 + 1);
            *(*(a1 + 24) + 4 * v13) = v10;
            v9 = v20;
          }

          else
          {
            *(*(a1 + 24) + 4 * v13) = v10;
            v14 = v13 + 1;
          }

          *(a1 + 16) = v14;
          if (!v9)
          {
            return 0;
          }

          if (*a3 <= v9 || *v9 != 8)
          {
            goto LABEL_31;
          }
        }
      }

      if (v6 == 10)
      {
        v15 = sub_1958918((a1 + 16), v5, a3);
        goto LABEL_30;
      }
    }

    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    v17 = *(a1 + 8);
    if (v17)
    {
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v18 = sub_11F1920((a1 + 8));
      v5 = v20;
    }

    v15 = sub_1952690(v6, v18, v5, a3);
LABEL_30:
    v20 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_31:
    if (sub_195ADC0(a3, &v20, a3[11].i32[1]))
    {
      return v20;
    }
  }

  if (v5)
  {
    a3[10].i32[0] = v6 - 1;
    return v20;
  }

  return 0;
}

char *sub_12EE4C8(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5 < 1)
  {
    v8 = a2;
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v7 = *(*(a1 + 24) + 4 * i);
      *a2 = 8;
      a2[1] = v7;
      if (v7 > 0x7F)
      {
        a2[1] = v7 | 0x80;
        v9 = v7 >> 7;
        a2[2] = v7 >> 7;
        v8 = a2 + 3;
        if (v7 >= 0x4000)
        {
          LOBYTE(v10) = a2[2];
          do
          {
            *(v8 - 1) = v10 | 0x80;
            v10 = v9 >> 7;
            *v8++ = v9 >> 7;
            v11 = v9 >> 14;
            v9 >>= 7;
          }

          while (v11);
        }
      }

      else
      {
        v8 = a2 + 2;
      }

      a2 = v8;
    }
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v8;
  }

  v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
  v15 = *(v14 + 31);
  if (v15 < 0)
  {
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);
  }

  else
  {
    v16 = (v14 + 8);
  }

  if (*a3 - v8 >= v15)
  {
    v17 = v15;
    memcpy(v8, v16, v15);
    v8 += v17;
    return v8;
  }

  return sub_1957130(a3, v16, v15, v8);
}

uint64_t sub_12EE618(uint64_t a1)
{
  result = sub_1959E5C((a1 + 16)) + *(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v5 < 0)
    {
      v5 = *(v4 + 16);
    }

    result += v5;
  }

  *(a1 + 32) = result;
  return result;
}

std::string *sub_12EE670(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = &result->__r_.__value_.__r.__words[2];
    v6 = SLODWORD(result->__r_.__value_.__r.__words[2]);
    sub_1958E5C(&result->__r_.__value_.__r.__words[2], v6 + v4);
    data = v3[1].__r_.__value_.__l.__data_;
    *v5 += *(a2 + 16);
    result = memcpy(&data[4 * v6], *(a2 + 24), 4 * *(a2 + 16));
  }

  v8 = *(a2 + 8);
  if (v8)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_12EE72C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26D2140;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = a2;
  *(a1 + 136) = a2;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a2;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = a2;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = a2;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = &qword_278E990;
  *(a1 + 272) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  return a1;
}

void sub_12EE7D8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_12EE808(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  v5 = (a1 + 232);
  if (*(a1 + 232) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_276A488 && *(a1 + 240))
  {
    sub_17998B0();
    operator delete();
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_12E5194((a1 + 208));
  sub_12E5110((a1 + 184));
  sub_1956AFC((a1 + 160));
  sub_12E508C((a1 + 136));
  sub_1956ABC(a1 + 120);
  sub_12E5008((a1 + 96));
  sub_12E4F00((a1 + 72));
  sub_13117B8((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12EE934(uint64_t a1)
{
  sub_12EE808(a1);

  operator delete();
}

uint64_t sub_12EE96C(uint64_t a1)
{
  sub_1951124((a1 + 16));
  v2 = *(a1 + 56);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 64) + 8);
    do
    {
      v4 = *v3++;
      sub_12F0E20(v4);
      --v2;
    }

    while (v2);
    *(a1 + 56) = 0;
  }

  v5 = *(a1 + 80);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 88) + 8);
    do
    {
      v7 = *v6++;
      sub_12E9A98(v7);
      --v5;
    }

    while (v5);
    *(a1 + 80) = 0;
  }

  sub_12E4E18(a1 + 96);
  *(a1 + 120) = 0;
  sub_13115E8(a1 + 136);
  sub_12A41D0(a1 + 160);
  result = sub_1311650(a1 + 184);
  v9 = *(a1 + 216);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 224) + 8);
    do
    {
      v11 = *v10++;
      result = sub_12EACE4(v11);
      --v9;
    }

    while (v9);
    *(a1 + 216) = 0;
  }

  v12 = *(a1 + 40);
  if ((v12 & 3) != 0)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_17;
    }

    v13 = *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v13 + 23) & 0x80000000) == 0)
    {
      *v13 = 0;
      *(v13 + 23) = 0;
LABEL_17:
      if ((v12 & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    **v13 = 0;
    *(v13 + 8) = 0;
    if ((v12 & 2) != 0)
    {
LABEL_18:
      result = sub_17998EC(*(a1 + 240));
    }
  }

LABEL_19:
  if ((v12 & 0xFC) != 0)
  {
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
    *(a1 + 263) = 0;
  }

  if ((v12 & 0x300) != 0)
  {
    *(a1 + 275) = 0;
    *(a1 + 271) = 0;
  }

  v15 = *(a1 + 8);
  v14 = a1 + 8;
  *(v14 + 32) = 0;
  if (v15)
  {

    return sub_1957EA8(v14);
  }

  return result;
}

uint64_t sub_12EEAD8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v109 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, v109, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (*v109 + 1);
      v8 = **v109;
      if (**v109 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          v7 = sub_1958824(*v109, v9 - 128);
          v8 = v10;
        }

        else
        {
          v7 = (*v109 + 2);
        }
      }

      *v109 = v7;
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_164;
          }

          v11 = v7 - 1;
          while (1)
          {
            v12 = v11 + 1;
            *v109 = v11 + 1;
            v13 = *(a1 + 64);
            if (v13 && (v14 = *(a1 + 56), v14 < *v13))
            {
              *(a1 + 56) = v14 + 1;
              v15 = *&v13[2 * v14 + 2];
            }

            else
            {
              v16 = sub_12F1D4C(*(a1 + 48));
              v15 = sub_19593CC(a1 + 48, v16);
              v12 = *v109;
            }

            v11 = sub_21F8A48(a3, v15, v12);
            *v109 = v11;
            if (!v11)
            {
              goto LABEL_180;
            }

            if (*a3 <= v11 || *v11 != 10)
            {
              goto LABEL_174;
            }
          }

        case 2u:
          if (v8 != 18)
          {
            goto LABEL_164;
          }

          v33 = v7 - 1;
          while (1)
          {
            v34 = v33 + 1;
            *v109 = v33 + 1;
            v35 = *(a1 + 88);
            if (v35 && (v36 = *(a1 + 80), v36 < *v35))
            {
              *(a1 + 80) = v36 + 1;
              v37 = *&v35[2 * v36 + 2];
            }

            else
            {
              sub_12F1890(*(a1 + 72));
              v37 = sub_19593CC(a1 + 72, v38);
              v34 = *v109;
            }

            v33 = sub_21F5030(a3, v37, v34);
            *v109 = v33;
            if (!v33)
            {
              goto LABEL_180;
            }

            if (*a3 <= v33 || *v33 != 18)
            {
              goto LABEL_174;
            }
          }

        case 3u:
          if (v8 != 26)
          {
            goto LABEL_164;
          }

          v51 = (v7 - 1);
          while (1)
          {
            v52 = (v51 + 1);
            *v109 = v51 + 1;
            v53 = *(a1 + 112);
            if (v53 && (v54 = *(a1 + 104), v54 < *v53))
            {
              *(a1 + 104) = v54 + 1;
              v55 = *&v53[2 * v54 + 2];
            }

            else
            {
              v56 = sub_12F1AC0(*(a1 + 96));
              v55 = sub_19593CC(a1 + 96, v56);
              v52 = *v109;
            }

            v51 = sub_21F5150(a3, v55, v52);
            *v109 = v51;
            if (!v51)
            {
              goto LABEL_180;
            }

            if (*a3 <= v51 || *v51 != 26)
            {
              goto LABEL_174;
            }
          }

        case 4u:
          if (v8 != 34)
          {
            goto LABEL_164;
          }

          *(a1 + 40) |= 2u;
          v48 = *(a1 + 240);
          if (!v48)
          {
            v49 = *(a1 + 8);
            v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
            if (v49)
            {
              v50 = *v50;
            }

            v48 = sub_185D614(v50);
            *(a1 + 240) = v48;
            v7 = *v109;
          }

          v32 = sub_21F51E0(a3, v48, v7);
          goto LABEL_173;
        case 5u:
          if (v8 != 40)
          {
            goto LABEL_164;
          }

          v5 |= 4u;
          v27 = (v7 + 1);
          v26 = *v7;
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_37;
          }

          v28 = *v27;
          v26 = (v28 << 7) + v26 - 128;
          if (v28 < 0)
          {
            v94 = sub_19587DC(v7, v26);
            *v109 = v94;
            *(a1 + 248) = v95;
            if (!v94)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v27 = (v7 + 2);
LABEL_37:
            *v109 = v27;
            *(a1 + 248) = v26;
          }

          goto LABEL_174;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_164;
          }

          v5 |= 8u;
          v40 = (v7 + 1);
          v39 = *v7;
          if ((v39 & 0x8000000000000000) == 0)
          {
            goto LABEL_56;
          }

          v41 = *v40;
          v39 = (v41 << 7) + v39 - 128;
          if (v41 < 0)
          {
            v96 = sub_19587DC(v7, v39);
            *v109 = v96;
            *(a1 + 256) = v97;
            if (!v96)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v40 = (v7 + 2);
LABEL_56:
            *v109 = v40;
            *(a1 + 256) = v39;
          }

          goto LABEL_174;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_164;
          }

          v5 |= 0x10u;
          v57 = (v7 + 1);
          v58 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_87;
          }

          v59 = *v57;
          v58 = v58 + (v59 << 7) - 128;
          if (v59 < 0)
          {
            v98 = sub_1958770(v7, v58);
            *v109 = v98;
            *(a1 + 264) = v99;
            if (!v98)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v57 = (v7 + 2);
LABEL_87:
            *v109 = v57;
            *(a1 + 264) = v58;
          }

          goto LABEL_174;
        case 8u:
          if (v8 == 64)
          {
            v60 = v7 - 1;
            while (1)
            {
              *v109 = v60 + 1;
              v61 = v60[1];
              if (v60[1] < 0)
              {
                v62 = v61 + (v60[2] << 7);
                v61 = v62 - 128;
                if (v60[2] < 0)
                {
                  v60 = sub_1958770((v60 + 1), v62 - 128);
                  v61 = v63;
                }

                else
                {
                  v60 += 3;
                }
              }

              else
              {
                v60 += 2;
              }

              *v109 = v60;
              v64 = *(a1 + 120);
              if (v64 == *(a1 + 124))
              {
                v65 = v64 + 1;
                sub_1958E5C((a1 + 120), v64 + 1);
                *(*(a1 + 128) + 4 * v64) = v61;
                v60 = *v109;
              }

              else
              {
                *(*(a1 + 128) + 4 * v64) = v61;
                v65 = v64 + 1;
              }

              *(a1 + 120) = v65;
              if (!v60)
              {
                goto LABEL_180;
              }

              if (*a3 <= v60 || *v60 != 64)
              {
                goto LABEL_174;
              }
            }
          }

          if (v8 == 66)
          {
            v32 = sub_1958918((a1 + 120), v7, a3);
          }

          else
          {
LABEL_164:
            if (v8)
            {
              v106 = (v8 & 7) == 4;
            }

            else
            {
              v106 = 1;
            }

            if (v106)
            {
              if (v7)
              {
                a3[10].i32[0] = v8 - 1;
                goto LABEL_2;
              }

LABEL_180:
              *v109 = 0;
              goto LABEL_2;
            }

            if ((v8 - 80000) >> 3 > 0x3E8)
            {
              v107 = *(a1 + 8);
              if (v107)
              {
                v108 = (v107 & 0xFFFFFFFFFFFFFFFCLL) + 8;
              }

              else
              {
                v108 = sub_11F1920((a1 + 8));
                v7 = *v109;
              }

              v32 = sub_1952690(v8, v108, v7, a3);
            }

            else
            {
              v32 = sub_19525AC((a1 + 16), v8, v7, &off_276A488, (a1 + 8), a3);
            }
          }

LABEL_173:
          *v109 = v32;
          if (!v32)
          {
            goto LABEL_180;
          }

LABEL_174:
          if (sub_195ADC0(a3, v109, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          break;
        case 9u:
          if (v8 != 74)
          {
            goto LABEL_164;
          }

          v80 = (v7 - 1);
          while (1)
          {
            v81 = (v80 + 1);
            *v109 = v80 + 1;
            v82 = *(a1 + 152);
            if (v82 && (v83 = *(a1 + 144), v83 < *v82))
            {
              *(a1 + 144) = v83 + 1;
              v84 = *&v82[2 * v83 + 2];
            }

            else
            {
              v85 = sub_12F1B38(*(a1 + 136));
              v84 = sub_19593CC(a1 + 136, v85);
              v81 = *v109;
            }

            v80 = sub_21F5270(a3, v84, v81);
            *v109 = v80;
            if (!v80)
            {
              goto LABEL_180;
            }

            if (*a3 <= v80 || *v80 != 74)
            {
              goto LABEL_174;
            }
          }

        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_164;
          }

          v72 = (v7 - 1);
          while (1)
          {
            v73 = (v72 + 1);
            *v109 = v72 + 1;
            v74 = *(a1 + 176);
            if (v74 && (v75 = *(a1 + 168), v75 < *v74))
            {
              *(a1 + 168) = v75 + 1;
              v76 = *&v74[2 * v75 + 2];
            }

            else
            {
              v77 = *(a1 + 160);
              if (!v77)
              {
                operator new();
              }

              *v79 = v78;
              v79[1] = sub_195A650;
              *v78 = 0;
              v78[1] = 0;
              v78[2] = 0;
              v76 = sub_19593CC(a1 + 160, v78);
              v73 = *v109;
            }

            v72 = sub_1958890(v76, v73, a3);
            *v109 = v72;
            if (!v72)
            {
              goto LABEL_180;
            }

            if (*a3 <= v72 || *v72 != 82)
            {
              goto LABEL_174;
            }
          }

        case 0xBu:
          if (v8 != 90)
          {
            goto LABEL_164;
          }

          v20 = (v7 - 1);
          while (1)
          {
            v21 = (v20 + 1);
            *v109 = v20 + 1;
            v22 = *(a1 + 200);
            if (v22 && (v23 = *(a1 + 192), v23 < *v22))
            {
              *(a1 + 192) = v23 + 1;
              v24 = *&v22[2 * v23 + 2];
            }

            else
            {
              v25 = sub_12F1BD4(*(a1 + 184));
              v24 = sub_19593CC(a1 + 184, v25);
              v21 = *v109;
            }

            v20 = sub_21F5300(a3, v24, v21);
            *v109 = v20;
            if (!v20)
            {
              goto LABEL_180;
            }

            if (*a3 <= v20 || *v20 != 90)
            {
              goto LABEL_174;
            }
          }

        case 0xCu:
          if (v8 != 98)
          {
            goto LABEL_164;
          }

          v42 = v7 - 1;
          while (1)
          {
            v43 = v42 + 1;
            *v109 = v42 + 1;
            v44 = *(a1 + 224);
            if (v44 && (v45 = *(a1 + 216), v45 < *v44))
            {
              *(a1 + 216) = v45 + 1;
              v46 = *&v44[2 * v45 + 2];
            }

            else
            {
              v47 = sub_12F1954(*(a1 + 208));
              v46 = sub_19593CC(a1 + 208, v47);
              v43 = *v109;
            }

            v42 = sub_21F5390(a3, v46, v43);
            *v109 = v42;
            if (!v42)
            {
              goto LABEL_180;
            }

            if (*a3 <= v42 || *v42 != 98)
            {
              goto LABEL_174;
            }
          }

        case 0xDu:
          if (v8 != 106)
          {
            goto LABEL_164;
          }

          *(a1 + 40) |= 1u;
          v29 = *(a1 + 8);
          v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v30 = *v30;
          }

          v31 = sub_194DB04((a1 + 232), v30);
          v32 = sub_1958890(v31, *v109, a3);
          goto LABEL_173;
        case 0x14u:
          if (v8 != 160)
          {
            goto LABEL_164;
          }

          v5 |= 0x20u;
          v18 = (v7 + 1);
          v17 = *v7;
          if ((v17 & 0x8000000000000000) == 0)
          {
            goto LABEL_22;
          }

          v19 = *v18;
          v17 = (v19 << 7) + v17 - 128;
          if (v19 < 0)
          {
            v92 = sub_19587DC(v7, v17);
            *v109 = v92;
            *(a1 + 268) = v93 != 0;
            if (!v92)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v18 = (v7 + 2);
LABEL_22:
            *v109 = v18;
            *(a1 + 268) = v17 != 0;
          }

          goto LABEL_174;
        case 0x15u:
          if (v8 != 168)
          {
            goto LABEL_164;
          }

          v5 |= 0x40u;
          v67 = (v7 + 1);
          v66 = *v7;
          if ((v66 & 0x8000000000000000) == 0)
          {
            goto LABEL_106;
          }

          v68 = *v67;
          v66 = (v68 << 7) + v66 - 128;
          if (v68 < 0)
          {
            v100 = sub_19587DC(v7, v66);
            *v109 = v100;
            *(a1 + 269) = v101 != 0;
            if (!v100)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v67 = (v7 + 2);
LABEL_106:
            *v109 = v67;
            *(a1 + 269) = v66 != 0;
          }

          goto LABEL_174;
        case 0x16u:
          if (v8 != 176)
          {
            goto LABEL_164;
          }

          v5 |= 0x80u;
          v70 = (v7 + 1);
          v69 = *v7;
          if ((v69 & 0x8000000000000000) == 0)
          {
            goto LABEL_111;
          }

          v71 = *v70;
          v69 = (v71 << 7) + v69 - 128;
          if (v71 < 0)
          {
            v102 = sub_19587DC(v7, v69);
            *v109 = v102;
            *(a1 + 270) = v103 != 0;
            if (!v102)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v70 = (v7 + 2);
LABEL_111:
            *v109 = v70;
            *(a1 + 270) = v69 != 0;
          }

          goto LABEL_174;
        case 0x17u:
          if (v8 != 184)
          {
            goto LABEL_164;
          }

          v5 |= 0x100u;
          v90 = (v7 + 1);
          v89 = *v7;
          if ((v89 & 0x8000000000000000) == 0)
          {
            goto LABEL_145;
          }

          v91 = *v90;
          v89 = (v91 << 7) + v89 - 128;
          if (v91 < 0)
          {
            v104 = sub_19587DC(v7, v89);
            *v109 = v104;
            *(a1 + 271) = v105 != 0;
            if (!v104)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v90 = (v7 + 2);
LABEL_145:
            *v109 = v90;
            *(a1 + 271) = v89 != 0;
          }

          goto LABEL_174;
        case 0x18u:
          if (v8 != 192)
          {
            goto LABEL_164;
          }

          v87 = (v7 + 1);
          v86 = *v7;
          if ((v86 & 0x8000000000000000) == 0)
          {
            goto LABEL_138;
          }

          v88 = *v87;
          v86 = (v88 << 7) + v86 - 128;
          if (v88 < 0)
          {
            *v109 = sub_19587DC(v7, v86);
            if (!*v109)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v87 = (v7 + 2);
LABEL_138:
            *v109 = v87;
          }

          if (v86 > 5)
          {
            sub_13136C0();
          }

          else
          {
            *(a1 + 40) |= 0x200u;
            *(a1 + 272) = v86;
          }

          goto LABEL_174;
        default:
          goto LABEL_164;
      }
    }
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return *v109;
}

char *sub_12EF5A0(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 64) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 20);
      a2[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, a2 + 1);
      }

      else
      {
        v10 = a2 + 2;
      }

      a2 = sub_12F1254(v8, v10, a3);
    }
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v13 = *(*(a1 + 88) + 8 * j + 8);
      *a2 = 18;
      v14 = *(v13 + 20);
      a2[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, a2 + 1);
      }

      else
      {
        v15 = a2 + 2;
      }

      a2 = sub_12EA184(v13, v15, a3);
    }
  }

  v16 = *(a1 + 104);
  if (v16)
  {
    for (k = 0; k != v16; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v18 = *(*(a1 + 112) + 8 * k + 8);
      *a2 = 26;
      v19 = *(v18 + 20);
      a2[1] = v19;
      if (v19 > 0x7F)
      {
        v20 = sub_19575D0(v19, a2 + 1);
      }

      else
      {
        v20 = a2 + 2;
      }

      a2 = sub_12ED9FC(v18, v20, a3);
    }
  }

  v21 = *(a1 + 40);
  if ((v21 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v22 = *(a1 + 240);
    *a2 = 34;
    v23 = *(v22 + 20);
    a2[1] = v23;
    if (v23 > 0x7F)
    {
      v24 = sub_19575D0(v23, a2 + 1);
    }

    else
    {
      v24 = a2 + 2;
    }

    a2 = sub_1799A68(v22, v24, a3);
  }

  if ((v21 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v26 = *(a1 + 248);
    *a2 = 40;
    a2[1] = v26;
    if (v26 > 0x7F)
    {
      a2[1] = v26 | 0x80;
      v27 = v26 >> 7;
      a2[2] = v26 >> 7;
      v25 = a2 + 3;
      if (v26 >= 0x4000)
      {
        LOBYTE(a2) = a2[2];
        do
        {
          *(v25 - 1) = a2 | 0x80;
          a2 = (v27 >> 7);
          *v25++ = v27 >> 7;
          v28 = v27 >> 14;
          v27 >>= 7;
        }

        while (v28);
      }
    }

    else
    {
      v25 = a2 + 2;
    }
  }

  else
  {
    v25 = a2;
  }

  if ((v21 & 8) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v30 = *(a1 + 256);
    *v25 = 48;
    v25[1] = v30;
    if (v30 > 0x7F)
    {
      v25[1] = v30 | 0x80;
      v31 = v30 >> 7;
      v25[2] = v30 >> 7;
      v29 = v25 + 3;
      if (v30 >= 0x4000)
      {
        LOBYTE(v25) = v25[2];
        do
        {
          *(v29 - 1) = v25 | 0x80;
          v25 = (v31 >> 7);
          *v29++ = v31 >> 7;
          v32 = v31 >> 14;
          v31 >>= 7;
        }

        while (v32);
      }
    }

    else
    {
      v29 = v25 + 2;
    }
  }

  else
  {
    v29 = v25;
  }

  if ((v21 & 0x10) != 0)
  {
    if (*a3 <= v29)
    {
      v29 = sub_225EB68(a3, v29);
    }

    v34 = *(a1 + 264);
    *v29 = 56;
    v29[1] = v34;
    if (v34 > 0x7F)
    {
      v29[1] = v34 | 0x80;
      v35 = v34 >> 7;
      v29[2] = v34 >> 7;
      v33 = v29 + 3;
      if (v34 >= 0x4000)
      {
        LOBYTE(v29) = v29[2];
        do
        {
          *(v33 - 1) = v29 | 0x80;
          LODWORD(v29) = v35 >> 7;
          *v33++ = v35 >> 7;
          v36 = v35 >> 14;
          v35 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v33 = v29 + 2;
    }
  }

  else
  {
    v33 = v29;
  }

  v37 = *(a1 + 120);
  if (v37 < 1)
  {
    v40 = v33;
  }

  else
  {
    for (m = 0; m != v37; ++m)
    {
      if (*a3 <= v33)
      {
        v33 = sub_225EB68(a3, v33);
      }

      v39 = *(*(a1 + 128) + 4 * m);
      *v33 = 64;
      v33[1] = v39;
      if (v39 > 0x7F)
      {
        v33[1] = v39 | 0x80;
        v41 = v39 >> 7;
        v33[2] = v39 >> 7;
        v40 = v33 + 3;
        if (v39 >= 0x4000)
        {
          LOBYTE(v42) = v33[2];
          do
          {
            *(v40 - 1) = v42 | 0x80;
            v42 = v41 >> 7;
            *v40++ = v41 >> 7;
            v43 = v41 >> 14;
            v41 >>= 7;
          }

          while (v43);
        }
      }

      else
      {
        v40 = v33 + 2;
      }

      v33 = v40;
    }
  }

  v44 = *(a1 + 144);
  if (v44)
  {
    for (n = 0; n != v44; ++n)
    {
      if (*a3 <= v40)
      {
        v40 = sub_225EB68(a3, v40);
      }

      v46 = *(*(a1 + 152) + 8 * n + 8);
      *v40 = 74;
      v47 = *(v46 + 20);
      v40[1] = v47;
      if (v47 > 0x7F)
      {
        v48 = sub_19575D0(v47, v40 + 1);
      }

      else
      {
        v48 = v40 + 2;
      }

      v40 = sub_12EDED8(v46, v48, a3);
    }
  }

  v49 = *(a1 + 168);
  if (v49 >= 1)
  {
    v50 = 8;
    do
    {
      v51 = *(*(a1 + 176) + v50);
      v52 = *(v51 + 23);
      if (v52 < 0 && (v52 = v51[1], v52 > 127) || (*a3 - v40 + 14) < v52)
      {
        v40 = sub_1957480(a3, 10, v51, v40);
      }

      else
      {
        *v40 = 82;
        v40[1] = v52;
        if (*(v51 + 23) < 0)
        {
          v51 = *v51;
        }

        v53 = v40 + 2;
        memcpy(v40 + 2, v51, v52);
        v40 = &v53[v52];
      }

      v50 += 8;
      --v49;
    }

    while (v49);
  }

  v54 = *(a1 + 192);
  if (v54)
  {
    for (ii = 0; ii != v54; ++ii)
    {
      if (*a3 <= v40)
      {
        v40 = sub_225EB68(a3, v40);
      }

      v56 = *(*(a1 + 200) + 8 * ii + 8);
      *v40 = 90;
      v57 = *(v56 + 32);
      v40[1] = v57;
      if (v57 > 0x7F)
      {
        v58 = sub_19575D0(v57, v40 + 1);
      }

      else
      {
        v58 = v40 + 2;
      }

      v40 = sub_12EE4C8(v56, v58, a3);
    }
  }

  v59 = *(a1 + 216);
  if (v59)
  {
    for (jj = 0; jj != v59; ++jj)
    {
      if (*a3 <= v40)
      {
        v40 = sub_225EB68(a3, v40);
      }

      v61 = *(*(a1 + 224) + 8 * jj + 8);
      *v40 = 98;
      v62 = *(v61 + 20);
      v40[1] = v62;
      if (v62 > 0x7F)
      {
        v63 = sub_19575D0(v62, v40 + 1);
      }

      else
      {
        v63 = v40 + 2;
      }

      v40 = sub_12EAF58(v61, v63, a3);
    }
  }

  if (v21)
  {
    v40 = sub_128AEEC(a3, 13, *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL, v40);
    if ((v21 & 0x20) == 0)
    {
LABEL_108:
      if ((v21 & 0x40) == 0)
      {
        goto LABEL_109;
      }

      goto LABEL_117;
    }
  }

  else if ((v21 & 0x20) == 0)
  {
    goto LABEL_108;
  }

  if (*a3 <= v40)
  {
    v40 = sub_225EB68(a3, v40);
  }

  v65 = *(a1 + 268);
  *v40 = 416;
  v40[2] = v65;
  v40 += 3;
  if ((v21 & 0x40) == 0)
  {
LABEL_109:
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_120;
  }

LABEL_117:
  if (*a3 <= v40)
  {
    v40 = sub_225EB68(a3, v40);
  }

  v66 = *(a1 + 269);
  *v40 = 424;
  v40[2] = v66;
  v40 += 3;
  if ((v21 & 0x80) == 0)
  {
LABEL_110:
    if ((v21 & 0x100) == 0)
    {
      goto LABEL_111;
    }

LABEL_123:
    if (*a3 <= v40)
    {
      v40 = sub_225EB68(a3, v40);
    }

    v68 = *(a1 + 271);
    *v40 = 440;
    v40[2] = v68;
    v40 += 3;
    if ((v21 & 0x200) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_126;
  }

LABEL_120:
  if (*a3 <= v40)
  {
    v40 = sub_225EB68(a3, v40);
  }

  v67 = *(a1 + 270);
  *v40 = 432;
  v40[2] = v67;
  v40 += 3;
  if ((v21 & 0x100) != 0)
  {
    goto LABEL_123;
  }

LABEL_111:
  if ((v21 & 0x200) == 0)
  {
LABEL_112:
    v64 = v40;
    goto LABEL_133;
  }

LABEL_126:
  if (*a3 <= v40)
  {
    v40 = sub_225EB68(a3, v40);
  }

  v69 = *(a1 + 272);
  *v40 = 448;
  v40[2] = v69;
  if (v69 > 0x7F)
  {
    v40[2] = v69 | 0x80;
    v70 = v69 >> 7;
    v40[3] = v69 >> 7;
    v64 = v40 + 4;
    if (v69 >= 0x4000)
    {
      LOBYTE(v71) = v40[3];
      do
      {
        *(v64 - 1) = v71 | 0x80;
        v71 = v70 >> 7;
        *v64++ = v70 >> 7;
        v72 = v70 >> 14;
        v70 >>= 7;
      }

      while (v72);
    }
  }

  else
  {
    v64 = v40 + 3;
  }

LABEL_133:
  if (*(a1 + 26))
  {
    v64 = sub_1953428(a1 + 16, 10000, 11001, v64, a3);
  }

  v73 = *(a1 + 8);
  if ((v73 & 1) == 0)
  {
    return v64;
  }

  v75 = v73 & 0xFFFFFFFFFFFFFFFCLL;
  v76 = *(v75 + 31);
  if (v76 < 0)
  {
    v77 = *(v75 + 8);
    v76 = *(v75 + 16);
  }

  else
  {
    v77 = (v75 + 8);
  }

  if ((*a3 - v64) >= v76)
  {
    v78 = v76;
    memcpy(v64, v77, v76);
    v64 += v78;
    return v64;
  }

  return sub_1957130(a3, v77, v76, v64);
}