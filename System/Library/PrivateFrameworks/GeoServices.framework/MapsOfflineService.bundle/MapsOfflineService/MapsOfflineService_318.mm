char *sub_13359D4(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

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

uint64_t sub_1335ABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_12;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
  v9 = *(a1 + 8);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v2 += v12;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_1335BA8(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_276B8E0 && *(a1 + 32))
  {
    sub_14FF2C8();
    operator delete();
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1335C74(uint64_t a1)
{
  sub_1335BA8(a1);

  operator delete();
}

uint64_t sub_1335CAC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      result = sub_14FD484(*(result + 32));
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_1335D40(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v22 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v22, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v22 + 1);
    v7 = **v22;
    if (**v22 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v22, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v22 + 2);
      }
    }

    *v22 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 32);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_1529410(v17);
          *(a1 + 32) = v15;
          v6 = *v22;
        }

        v14 = sub_21FC340(a3, v15, v6);
        goto LABEL_28;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v20 = sub_194DB04((a1 + 24), v19);
      v14 = sub_1958890(v20, *v22, a3);
      goto LABEL_28;
    }

    if (v7)
    {
      v11 = (v7 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v22;
      }

LABEL_34:
      *v22 = 0;
      return *v22;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v22;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_28:
    *v22 = v14;
    if (!v14)
    {
      goto LABEL_34;
    }
  }

  return *v22;
}

char *sub_1335EDC(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v7 = *(a1 + 32);
    *v4 = 18;
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

    v4 = sub_14FF5C8(v7, v9, a3);
  }

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

uint64_t sub_1336008(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_14FF7DC(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
  }

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v3 += v11;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_13360E4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
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
    }

    if ((v4 & 2) != 0)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
      v8 = v3[1].__r_.__value_.__l.__size_;
      if (!v8)
      {
        v9 = v3->__r_.__value_.__l.__size_;
        v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
        if (v9)
        {
          v10 = *v10;
        }

        v8 = sub_1529410(v10);
        v3[1].__r_.__value_.__l.__size_ = v8;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = &off_2775388;
      }

      result = sub_14FD510(v8, v11);
    }
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_13361E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
  }

  if ((v1 & 0x3F00) != 0)
  {
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
  }

  v3 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1336234(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

std::string *sub_1336258(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    if (v2)
    {
      result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_25;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_26;
    }

LABEL_25:
    result[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_27;
    }

LABEL_26:
    result[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_28;
    }

LABEL_27:
    result[2].__r_.__value_.__l.__size_ = *(a2 + 56);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_29;
    }

LABEL_28:
    result[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
LABEL_11:
        LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
        goto LABEL_12;
      }

LABEL_10:
      result[3].__r_.__value_.__l.__size_ = *(a2 + 80);
      goto LABEL_11;
    }

LABEL_29:
    result[3].__r_.__value_.__r.__words[0] = *(a2 + 72);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v2 & 0x3F00) == 0)
  {
    goto LABEL_21;
  }

  if ((v2 & 0x100) != 0)
  {
    result[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
    if ((v2 & 0x200) == 0)
    {
LABEL_15:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  result[4].__r_.__value_.__r.__words[0] = *(a2 + 96);
  if ((v2 & 0x400) == 0)
  {
LABEL_16:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  result[4].__r_.__value_.__l.__size_ = *(a2 + 104);
  if ((v2 & 0x800) == 0)
  {
LABEL_17:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

LABEL_35:
    result[5].__r_.__value_.__r.__words[0] = *(a2 + 120);
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_34:
  result[4].__r_.__value_.__r.__words[2] = *(a2 + 112);
  if ((v2 & 0x1000) != 0)
  {
    goto LABEL_35;
  }

LABEL_18:
  if ((v2 & 0x2000) != 0)
  {
LABEL_19:
    result[5].__r_.__value_.__l.__size_ = *(a2 + 128);
  }

LABEL_20:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_21:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_1336380(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
    }

    if ((v2 & 2) != 0)
    {
      result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    }

    LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_13363CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v3 = v1--;
      v4 = *(*(a1 + 16) + 8 * v1 + 8);
      v5 = *(v4 + 24);
      while (v5 >= 1)
      {
        v6 = v5 - 1;
        v7 = sub_14D9038(*(*(v4 + 32) + 8 * v5));
        v5 = v6;
        if ((v7 & 1) == 0)
        {
          return 0;
        }
      }
    }

    while (v3 >= 2);
  }

  return 1;
}

uint64_t sub_1336458(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v3 = v1--;
      v4 = *(*(a1 + 16) + 8 * v1 + 8);
      v5 = *(v4 + 24);
      while (v5 >= 1)
      {
        v6 = v5 - 1;
        v7 = sub_14F252C(*(*(v4 + 32) + 8 * v5));
        v5 = v6;
        if ((v7 & 1) == 0)
        {
          return 0;
        }
      }
    }

    while (v3 >= 2);
  }

  return 1;
}

void *sub_13364E4(void *a1)
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

void sub_1336558(void *a1)
{
  sub_13364E4(a1);

  operator delete();
}

char *sub_1336590(uint64_t a1, char *a2, int32x2_t *a3)
{
  v18 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v18, a3[11].i32[1]))
  {
    goto LABEL_28;
  }

  while (1)
  {
    v6 = v18 + 1;
    v7 = *v18;
    if (*v18 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v18, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v18 + 2;
      }
    }

    v18 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 17)
      {
        v15 = *v6;
        v14 = v6 + 8;
        v5 |= 2u;
        *(a1 + 32) = v15;
LABEL_22:
        v18 = v14;
        goto LABEL_23;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 9)
    {
      v16 = *v6;
      v14 = v6 + 8;
      v5 |= 1u;
      *(a1 + 24) = v16;
      goto LABEL_22;
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = v18;
    }

    v18 = sub_1952690(v7, v13, v6, a3);
    if (!v18)
    {
      goto LABEL_29;
    }

LABEL_23:
    if (sub_195ADC0(a3, &v18, a3[11].i32[1]))
    {
      goto LABEL_28;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_28;
  }

LABEL_29:
  v18 = 0;
LABEL_28:
  *(a1 + 16) |= v5;
  return v18;
}

char *sub_13366F4(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *v4 = 9;
    *(v4 + 1) = v7;
    v4 += 9;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 32);
    *v4 = 17;
    *(v4 + 1) = v8;
    v4 += 9;
  }

  v9 = *(a1 + 8);
  if ((v9 & 1) == 0)
  {
    return v4;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  v12 = *(v11 + 31);
  if (v12 < 0)
  {
    v13 = *(v11 + 8);
    v12 = *(v11 + 16);
  }

  else
  {
    v13 = (v11 + 8);
  }

  if (*a3 - v4 >= v12)
  {
    v14 = v12;
    memcpy(v4, v13, v12);
    v4 += v14;
    return v4;
  }

  return sub_1957130(a3, v13, v12, v4);
}

uint64_t sub_133680C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = 9;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 3) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v7 < 0)
    {
      v7 = *(v6 + 16);
    }

    v3 += v7;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_1336878(void *a1)
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

void sub_13368EC(void *a1)
{
  sub_1336878(a1);

  operator delete();
}

uint64_t sub_1336924(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_133694C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v20, a3[11].i32[1]))
  {
    goto LABEL_32;
  }

  while (1)
  {
    v6 = v20 + 1;
    v7 = *v20;
    if (*v20 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v20, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v20 + 2;
      }
    }

    v20 = v6;
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 8)
    {
      goto LABEL_11;
    }

    v5 |= 2u;
    v14 = v6 + 1;
    v15 = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    v16 = *v14;
    v15 = v15 + (v16 << 7) - 128;
    if ((v16 & 0x80000000) == 0)
    {
      v14 = v6 + 2;
LABEL_24:
      v20 = v14;
      *(a1 + 32) = v15;
      goto LABEL_25;
    }

    v17 = sub_1958770(v6, v15);
    v20 = v17;
    *(a1 + 32) = v18;
    if (!v17)
    {
      goto LABEL_33;
    }

LABEL_25:
    if (sub_195ADC0(a3, &v20, a3[11].i32[1]))
    {
      goto LABEL_32;
    }
  }

  if (v7 == 17)
  {
    v5 |= 1u;
    *(a1 + 24) = *v6;
    v20 = v6 + 8;
    goto LABEL_25;
  }

LABEL_11:
  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = v20;
    }

    v20 = sub_1952690(v7, v13, v6, a3);
    if (!v20)
    {
      goto LABEL_33;
    }

    goto LABEL_25;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_32;
  }

LABEL_33:
  v20 = 0;
LABEL_32:
  *(a1 + 16) |= v5;
  return v20;
}

char *sub_1336AF0(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 32);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 24);
    *v6 = 17;
    *(v6 + 1) = v11;
    v6 += 9;
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v15)
  {
    v17 = v15;
    memcpy(v6, v16, v15);
    v6 += v17;
    return v6;
  }

  return sub_1957130(a3, v16, v15, v6);
}

uint64_t sub_1336C50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    v2 = 9;
    if ((v1 & 1) == 0)
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    v2 += v6;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_1336CE0(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1336D80(uint64_t a1)
{
  sub_1336CE0(a1);

  operator delete();
}

uint64_t sub_1336DB8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v1 + 23) < 0)
    {
      **v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *v1 = 0;
      *(v1 + 23) = 0;
    }
  }

  v3 = *(a1 + 8);
  result = a1 + 8;
  *(result + 24) = 0;
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1336E00(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v19 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v19, a3[11].i32[1]))
  {
    goto LABEL_29;
  }

  while (1)
  {
    v6 = (*v19 + 1);
    v7 = **v19;
    if (**v19 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v19, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v19 + 2);
      }
    }

    *v19 = v6;
    if (v7 >> 3 == 3)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_11;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = sub_194DB04((a1 + 24), v16);
    v14 = sub_1958890(v17, *v19, a3);
LABEL_23:
    *v19 = v14;
    if (!v14)
    {
      goto LABEL_30;
    }

LABEL_24:
    if (sub_195ADC0(a3, v19, a3[11].i32[1]))
    {
      goto LABEL_29;
    }
  }

  if (v7 == 25)
  {
    v5 |= 2u;
    *(a1 + 32) = *v6;
    *v19 = v6 + 2;
    goto LABEL_24;
  }

LABEL_11:
  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v19;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
    goto LABEL_23;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_29;
  }

LABEL_30:
  *v19 = 0;
LABEL_29:
  *(a1 + 16) |= v5;
  return *v19;
}

char *sub_1336F8C(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v7 = *(a1 + 32);
    *v4 = 25;
    *(v4 + 1) = v7;
    v4 += 9;
  }

  v8 = *(a1 + 8);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = *(v10 + 31);
  if (v11 < 0)
  {
    v12 = *(v10 + 8);
    v11 = *(v10 + 16);
  }

  else
  {
    v12 = (v10 + 8);
  }

  if (*a3 - v4 >= v11)
  {
    v13 = v11;
    memcpy(v4, v12, v11);
    v4 += v13;
    return v4;
  }

  return sub_1957130(a3, v12, v11, v4);
}

uint64_t sub_133708C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
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
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v3 = v2 + 9;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v3 += v10;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_133713C(void *a1)
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

void sub_13371B0(void *a1)
{
  sub_133713C(a1);

  operator delete();
}

char *sub_13371E8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v29 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = v29 + 1;
    v8 = *v29;
    if (*v29 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v29, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v29 + 2;
      }
    }

    v29 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 9)
        {
          goto LABEL_39;
        }

        v12 = *v7;
        v11 = v7 + 8;
        v5 |= 1u;
        *(a1 + 24) = v12;
        goto LABEL_36;
      case 2u:
        if (v8 != 17)
        {
          goto LABEL_39;
        }

        v20 = *v7;
        v11 = v7 + 8;
        v5 |= 2u;
        *(a1 + 32) = v20;
        goto LABEL_36;
      case 3u:
        if (v8 != 25)
        {
          goto LABEL_39;
        }

        v17 = *v7;
        v11 = v7 + 8;
        v5 |= 4u;
        *(a1 + 40) = v17;
        goto LABEL_36;
      case 4u:
        if (v8 != 33)
        {
          goto LABEL_39;
        }

        v18 = *v7;
        v11 = v7 + 8;
        v5 |= 8u;
        *(a1 + 48) = v18;
        goto LABEL_36;
      case 5u:
        if (v8 != 41)
        {
          goto LABEL_39;
        }

        v14 = *v7;
        v11 = v7 + 8;
        v5 |= 0x10u;
        *(a1 + 56) = v14;
        goto LABEL_36;
      case 6u:
        if (v8 != 49)
        {
          goto LABEL_39;
        }

        v21 = *v7;
        v11 = v7 + 8;
        v5 |= 0x20u;
        *(a1 + 64) = v21;
        goto LABEL_36;
      case 7u:
        if (v8 != 57)
        {
          goto LABEL_39;
        }

        v23 = *v7;
        v11 = v7 + 8;
        v5 |= 0x40u;
        *(a1 + 72) = v23;
        goto LABEL_36;
      case 8u:
        if (v8 != 65)
        {
          goto LABEL_39;
        }

        v19 = *v7;
        v11 = v7 + 8;
        v5 |= 0x80u;
        *(a1 + 80) = v19;
        goto LABEL_36;
      case 9u:
        if (v8 != 73)
        {
          goto LABEL_39;
        }

        v25 = *v7;
        v11 = v7 + 8;
        v5 |= 0x100u;
        *(a1 + 88) = v25;
        goto LABEL_36;
      case 0xAu:
        if (v8 != 81)
        {
          goto LABEL_39;
        }

        v16 = *v7;
        v11 = v7 + 8;
        v5 |= 0x200u;
        *(a1 + 96) = v16;
        goto LABEL_36;
      case 0xBu:
        if (v8 != 89)
        {
          goto LABEL_39;
        }

        v24 = *v7;
        v11 = v7 + 8;
        v5 |= 0x400u;
        *(a1 + 104) = v24;
        goto LABEL_36;
      case 0xCu:
        if (v8 != 97)
        {
          goto LABEL_39;
        }

        v13 = *v7;
        v11 = v7 + 8;
        v5 |= 0x800u;
        *(a1 + 112) = v13;
        goto LABEL_36;
      case 0xDu:
        if (v8 != 105)
        {
          goto LABEL_39;
        }

        v15 = *v7;
        v11 = v7 + 8;
        v5 |= 0x1000u;
        *(a1 + 120) = v15;
        goto LABEL_36;
      case 0xEu:
        if (v8 != 113)
        {
          goto LABEL_39;
        }

        v22 = *v7;
        v11 = v7 + 8;
        v5 |= 0x2000u;
        *(a1 + 128) = v22;
LABEL_36:
        v29 = v11;
        goto LABEL_37;
      default:
LABEL_39:
        if (v8)
        {
          v26 = (v8 & 7) == 4;
        }

        else
        {
          v26 = 1;
        }

        if (!v26)
        {
          v27 = *(a1 + 8);
          if (v27)
          {
            v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v28 = sub_11F1920((a1 + 8));
            v7 = v29;
          }

          v29 = sub_1952690(v8, v28, v7, a3);
          if (!v29)
          {
            goto LABEL_50;
          }

LABEL_37:
          if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
        }

        else
        {
LABEL_50:
          v29 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return v29;
    }
  }
}

char *sub_13374F8(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *v4 = 9;
    *(v4 + 1) = v7;
    v4 += 9;
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 32);
  *v4 = 17;
  *(v4 + 1) = v8;
  v4 += 9;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_22:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 40);
  *v4 = 25;
  *(v4 + 1) = v9;
  v4 += 9;
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_25:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 48);
  *v4 = 33;
  *(v4 + 1) = v10;
  v4 += 9;
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_28:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 56);
  *v4 = 41;
  *(v4 + 1) = v11;
  v4 += 9;
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_31:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v12 = *(a1 + 64);
  *v4 = 49;
  *(v4 + 1) = v12;
  v4 += 9;
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_34:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 72);
  *v4 = 57;
  *(v4 + 1) = v13;
  v4 += 9;
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_37:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 80);
  *v4 = 65;
  *(v4 + 1) = v14;
  v4 += 9;
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_40:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v15 = *(a1 + 88);
  *v4 = 73;
  *(v4 + 1) = v15;
  v4 += 9;
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_43:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v16 = *(a1 + 96);
  *v4 = 81;
  *(v4 + 1) = v16;
  v4 += 9;
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_46:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v17 = *(a1 + 104);
  *v4 = 89;
  *(v4 + 1) = v17;
  v4 += 9;
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_49:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v18 = *(a1 + 112);
  *v4 = 97;
  *(v4 + 1) = v18;
  v4 += 9;
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

LABEL_52:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v19 = *(a1 + 120);
  *v4 = 105;
  *(v4 + 1) = v19;
  v4 += 9;
  if ((v6 & 0x2000) != 0)
  {
LABEL_55:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v20 = *(a1 + 128);
    *v4 = 113;
    *(v4 + 1) = v20;
    v4 += 9;
  }

LABEL_58:
  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v4;
  }

  v23 = v21 & 0xFFFFFFFFFFFFFFFCLL;
  v24 = *(v23 + 31);
  if (v24 < 0)
  {
    v25 = *(v23 + 8);
    v24 = *(v23 + 16);
  }

  else
  {
    v25 = (v23 + 8);
  }

  if (*a3 - v4 >= v24)
  {
    v26 = v24;
    memcpy(v4, v25, v24);
    v4 += v26;
    return v4;
  }

  return sub_1957130(a3, v25, v24, v4);
}

uint64_t sub_13378E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 9;
    if ((v1 & 1) == 0)
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 8) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x10) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x20) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x40) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x80) != 0)
    {
      v2 += 9;
    }
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 0x3F00) != 0)
  {
    if ((v1 & 0x100) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x200) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x400) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x800) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x1000) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x2000) != 0)
    {
      v2 += 9;
    }
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    v2 += v6;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_13379F4(void *a1)
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

void sub_1337A68(void *a1)
{
  sub_13379F4(a1);

  operator delete();
}

uint64_t sub_1337AA0(uint64_t a1)
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

char *sub_1337AB8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v14 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v14, a3[11].i32[1]))
  {
    goto LABEL_21;
  }

  while (1)
  {
    v6 = v14 + 1;
    v7 = *v14;
    if (*v14 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v14, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v14 + 2;
      }
    }

    v14 = v6;
    if (v7 == 9)
    {
      *(a1 + 24) = *v6;
      v14 = v6 + 8;
      v5 = 1;
      goto LABEL_16;
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v12 = sub_11F1920((a1 + 8));
      v6 = v14;
    }

    v14 = sub_1952690(v7, v12, v6, a3);
    if (!v14)
    {
      goto LABEL_22;
    }

LABEL_16:
    if (sub_195ADC0(a3, &v14, a3[11].i32[1]))
    {
      goto LABEL_21;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_21;
  }

LABEL_22:
  v14 = 0;
LABEL_21:
  *(a1 + 16) |= v5;
  return v14;
}

char *sub_1337BEC(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *v4 = 9;
    *(v4 + 1) = v6;
    v4 += 9;
  }

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

uint64_t sub_1337CCC(uint64_t a1)
{
  v1 = 9;
  if ((*(a1 + 16) & 1) == 0)
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

std::string *sub_1337D0C(std::string *result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *(a2 + 24);
    LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
    result[1].__r_.__value_.__r.__words[0] = v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1337D5C(uint64_t a1)
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

void sub_1337E14(uint64_t a1)
{
  sub_1337D5C(a1);

  operator delete();
}

uint64_t sub_1337E4C(uint64_t a1)
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
  if ((v1 & 0x3C) != 0)
  {
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
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

uint64_t sub_1337ED8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v35 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v35, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v35 + 1);
    v8 = **v35;
    if (**v35 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v35, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v35 + 2);
      }
    }

    *v35 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 9)
      {
        goto LABEL_41;
      }

      v20 = *v7;
      v19 = v7 + 2;
      v5 |= 4u;
      *(a1 + 40) = v20;
      goto LABEL_35;
    }

    if (v11 == 2)
    {
      if (v8 != 17)
      {
        goto LABEL_41;
      }

      v24 = *v7;
      v19 = v7 + 2;
      v5 |= 8u;
      *(a1 + 48) = v24;
LABEL_35:
      *v35 = v19;
      goto LABEL_49;
    }

    if (v11 != 3 || v8 != 24)
    {
      goto LABEL_41;
    }

    v5 |= 0x10u;
    v14 = v7 + 1;
    LODWORD(v13) = *v7;
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v14;
    v13 = v13 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_18:
      *v35 = v14;
      *(a1 + 56) = v13;
      goto LABEL_49;
    }

    v33 = sub_19587DC(v7, v13);
    *v35 = v33;
    *(a1 + 56) = v34;
    if (!v33)
    {
      goto LABEL_58;
    }

LABEL_49:
    if (sub_195ADC0(a3, v35, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 34)
    {
      goto LABEL_41;
    }

    *(a1 + 16) |= 1u;
    v21 = *(a1 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    v23 = (a1 + 24);
LABEL_40:
    v26 = sub_194DB04(v23, v22);
    v27 = sub_1958890(v26, *v35, a3);
LABEL_48:
    *v35 = v27;
    if (!v27)
    {
      goto LABEL_58;
    }

    goto LABEL_49;
  }

  if (v11 != 5)
  {
    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_41;
    }

    v5 |= 0x20u;
    v17 = v7 + 1;
    LODWORD(v16) = *v7;
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    v18 = *v17;
    v16 = v16 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_26:
      *v35 = v17;
      *(a1 + 60) = v16;
      goto LABEL_49;
    }

    v31 = sub_19587DC(v7, v16);
    *v35 = v31;
    *(a1 + 60) = v32;
    if (!v31)
    {
      goto LABEL_58;
    }

    goto LABEL_49;
  }

  if (v8 == 42)
  {
    *(a1 + 16) |= 2u;
    v25 = *(a1 + 8);
    v22 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v22 = *v22;
    }

    v23 = (a1 + 32);
    goto LABEL_40;
  }

LABEL_41:
  if (v8)
  {
    v28 = (v8 & 7) == 4;
  }

  else
  {
    v28 = 1;
  }

  if (!v28)
  {
    v29 = *(a1 + 8);
    if (v29)
    {
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v30 = sub_11F1920((a1 + 8));
      v7 = *v35;
    }

    v27 = sub_1952690(v8, v30, v7, a3);
    goto LABEL_48;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_58:
  *v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v35;
}

char *sub_1338190(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 48);
    *__dst = 17;
    *(__dst + 1) = v8;
    __dst += 9;
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v7 = *(a1 + 40);
  *__dst = 9;
  *(__dst + 1) = v7;
  __dst += 9;
  if ((v5 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    v6 = __dst;
    goto LABEL_18;
  }

LABEL_11:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v9 = *(a1 + 56);
  *__dst = 24;
  __dst[1] = v9;
  if (v9 > 0x7F)
  {
    __dst[1] = v9 | 0x80;
    v10 = v9 >> 7;
    __dst[2] = v9 >> 7;
    v6 = __dst + 3;
    if (v9 >= 0x4000)
    {
      LOBYTE(v11) = __dst[2];
      do
      {
        *(v6 - 1) = v11 | 0x80;
        v11 = v10 >> 7;
        *v6++ = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }
  }

  else
  {
    v6 = __dst + 2;
  }

LABEL_18:
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v6 = sub_128AEEC(a3, 5, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v6);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v6 = sub_128AEEC(a3, 4, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 2) != 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if ((v5 & 0x20) == 0)
  {
LABEL_21:
    v13 = v6;
    goto LABEL_31;
  }

LABEL_24:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v14 = *(a1 + 60);
  *v6 = 48;
  v6[1] = v14;
  if (v14 > 0x7F)
  {
    v6[1] = v14 | 0x80;
    v15 = v14 >> 7;
    v6[2] = v14 >> 7;
    v13 = v6 + 3;
    if (v14 >= 0x4000)
    {
      LOBYTE(v16) = v6[2];
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
    v13 = v6 + 2;
  }

LABEL_31:
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

uint64_t sub_13383F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) == 0)
  {
    v2 = 0;
    goto LABEL_26;
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
    v2 += 9;
  }

  if ((v1 & 8) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 0x10) != 0)
  {
    v9 = *(a1 + 56);
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v9 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 11;
    }

    v2 += v11;
  }

  if ((v1 & 0x20) != 0)
  {
    v12 = *(a1 + 60);
    v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v12 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 11;
    }

    v2 += v14;
  }

LABEL_26:
  v15 = *(a1 + 8);
  if (v15)
  {
    v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v2 += v18;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_1338544(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) != 0)
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

        goto LABEL_20;
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

      goto LABEL_21;
    }

LABEL_20:
    v3[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }

LABEL_21:
    v3[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
LABEL_9:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_10;
      }

LABEL_8:
      HIDWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
      goto LABEL_9;
    }

LABEL_22:
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_1338684(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 9));
  sub_1956ABC((a1 + 7));
  sub_1956ABC((a1 + 5));
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1338718(void *a1)
{
  sub_1338684(a1);

  operator delete();
}

uint64_t sub_1338750(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  if (*(a1 + 16))
  {
    *(a1 + 136) = 0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 136) = 0;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_1338794(uint64_t a1, char *a2, int32x2_t *a3)
{
  v85 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, &v85, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = v85 + 1;
      v8 = *v85;
      if (*v85 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          v7 = sub_1958824(v85, v9 - 128);
          v8 = v10;
        }

        else
        {
          v7 = v85 + 2;
        }
      }

      v85 = v7;
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 8)
          {
            goto LABEL_136;
          }

          v5 |= 1u;
          v12 = v7 + 1;
          v11 = *v7;
          if ((v11 & 0x8000000000000000) == 0)
          {
            goto LABEL_12;
          }

          v13 = *v12;
          v11 = (v13 << 7) + v11 - 128;
          if ((v13 & 0x80000000) == 0)
          {
            v12 = v7 + 2;
LABEL_12:
            v85 = v12;
            *(a1 + 88) = v11;
            goto LABEL_144;
          }

          v70 = sub_19587DC(v7, v11);
          v85 = v70;
          *(a1 + 88) = v71;
          if (!v70)
          {
            goto LABEL_149;
          }

          goto LABEL_144;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_136;
          }

          v5 |= 2u;
          v45 = v7 + 1;
          v44 = *v7;
          if ((v44 & 0x8000000000000000) == 0)
          {
            goto LABEL_79;
          }

          v46 = *v45;
          v44 = (v46 << 7) + v44 - 128;
          if (v46 < 0)
          {
            v72 = sub_19587DC(v7, v44);
            v85 = v72;
            *(a1 + 96) = v73;
            if (!v72)
            {
              goto LABEL_149;
            }
          }

          else
          {
            v45 = v7 + 2;
LABEL_79:
            v85 = v45;
            *(a1 + 96) = v44;
          }

          goto LABEL_144;
        case 3u:
          if (v8 != 24)
          {
            goto LABEL_136;
          }

          v5 |= 4u;
          v33 = v7 + 1;
          v32 = *v7;
          if ((v32 & 0x8000000000000000) == 0)
          {
            goto LABEL_55;
          }

          v34 = *v33;
          v32 = (v34 << 7) + v32 - 128;
          if (v34 < 0)
          {
            v66 = sub_19587DC(v7, v32);
            v85 = v66;
            *(a1 + 104) = v67;
            if (!v66)
            {
              goto LABEL_149;
            }
          }

          else
          {
            v33 = v7 + 2;
LABEL_55:
            v85 = v33;
            *(a1 + 104) = v32;
          }

          goto LABEL_144;
        case 4u:
          if (v8 == 32)
          {
            v35 = v7 - 1;
            while (1)
            {
              v85 = v35 + 1;
              v36 = v35[1];
              if (v36 < 0)
              {
                v37 = (v35[2] << 7) + v36;
                v36 = (v37 - 128);
                if (v35[2] < 0)
                {
                  v35 = sub_19587DC((v35 + 1), (v37 - 128));
                  v36 = v38;
                }

                else
                {
                  v35 += 3;
                }
              }

              else
              {
                v35 += 2;
              }

              v85 = v35;
              v39 = *(a1 + 24);
              if (v39 == *(a1 + 28))
              {
                v40 = v39 + 1;
                sub_1959094((a1 + 24), v39 + 1);
                *(*(a1 + 32) + 8 * v39) = v36;
                v35 = v85;
              }

              else
              {
                *(*(a1 + 32) + 8 * v39) = v36;
                v40 = v39 + 1;
              }

              *(a1 + 24) = v40;
              if (!v35)
              {
                goto LABEL_149;
              }

              if (*a3 <= v35 || *v35 != 32)
              {
                goto LABEL_144;
              }
            }
          }

          if (v8 == 34)
          {
            v80 = (a1 + 24);
LABEL_135:
            v81 = sub_1958938(v80, v7, a3);
          }

          else
          {
LABEL_136:
            if (v8)
            {
              v82 = (v8 & 7) == 4;
            }

            else
            {
              v82 = 1;
            }

            if (v82)
            {
              if (v7)
              {
                a3[10].i32[0] = v8 - 1;
                goto LABEL_2;
              }

LABEL_149:
              v85 = 0;
              goto LABEL_2;
            }

            v83 = *(a1 + 8);
            if (v83)
            {
              v84 = (v83 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v84 = sub_11F1920((a1 + 8));
              v7 = v85;
            }

            v81 = sub_1952690(v8, v84, v7, a3);
          }

          v85 = v81;
          if (!v81)
          {
            goto LABEL_149;
          }

LABEL_144:
          if (sub_195ADC0(a3, &v85, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          break;
        case 5u:
          if (v8 != 40)
          {
            goto LABEL_136;
          }

          v5 |= 8u;
          v21 = v7 + 1;
          v20 = *v7;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_31;
          }

          v22 = *v21;
          v20 = (v22 << 7) + v20 - 128;
          if (v22 < 0)
          {
            v62 = sub_19587DC(v7, v20);
            v85 = v62;
            *(a1 + 112) = v63;
            if (!v62)
            {
              goto LABEL_149;
            }
          }

          else
          {
            v21 = v7 + 2;
LABEL_31:
            v85 = v21;
            *(a1 + 112) = v20;
          }

          goto LABEL_144;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_136;
          }

          v5 |= 0x20u;
          v48 = v7 + 1;
          LODWORD(v47) = *v7;
          if ((v47 & 0x80) == 0)
          {
            goto LABEL_84;
          }

          v49 = *v48;
          v47 = v47 + (v49 << 7) - 128;
          if (v49 < 0)
          {
            v74 = sub_19587DC(v7, v47);
            v85 = v74;
            *(a1 + 128) = v75;
            if (!v74)
            {
              goto LABEL_149;
            }
          }

          else
          {
            v48 = v7 + 2;
LABEL_84:
            v85 = v48;
            *(a1 + 128) = v47;
          }

          goto LABEL_144;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_136;
          }

          v5 |= 0x10u;
          v51 = v7 + 1;
          v50 = *v7;
          if ((v50 & 0x8000000000000000) == 0)
          {
            goto LABEL_89;
          }

          v52 = *v51;
          v50 = (v52 << 7) + v50 - 128;
          if (v52 < 0)
          {
            v76 = sub_19587DC(v7, v50);
            v85 = v76;
            *(a1 + 120) = v77;
            if (!v76)
            {
              goto LABEL_149;
            }
          }

          else
          {
            v51 = v7 + 2;
LABEL_89:
            v85 = v51;
            *(a1 + 120) = v50;
          }

          goto LABEL_144;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_136;
          }

          v5 |= 0x80u;
          v42 = v7 + 1;
          v41 = *v7;
          if ((v41 & 0x8000000000000000) == 0)
          {
            goto LABEL_74;
          }

          v43 = *v42;
          v41 = (v43 << 7) + v41 - 128;
          if (v43 < 0)
          {
            v68 = sub_19587DC(v7, v41);
            v85 = v68;
            *(a1 + 136) = v69;
            if (!v68)
            {
              goto LABEL_149;
            }
          }

          else
          {
            v42 = v7 + 2;
LABEL_74:
            v85 = v42;
            *(a1 + 136) = v41;
          }

          goto LABEL_144;
        case 9u:
          if (v8 != 72)
          {
            goto LABEL_136;
          }

          v5 |= 0x40u;
          v60 = v7 + 1;
          v59 = *v7;
          if ((v59 & 0x8000000000000000) == 0)
          {
            goto LABEL_108;
          }

          v61 = *v60;
          v59 = (v61 << 7) + v59 - 128;
          if (v61 < 0)
          {
            v78 = sub_19587DC(v7, v59);
            v85 = v78;
            *(a1 + 132) = v79 != 0;
            if (!v78)
            {
              goto LABEL_149;
            }
          }

          else
          {
            v60 = v7 + 2;
LABEL_108:
            v85 = v60;
            *(a1 + 132) = v59 != 0;
          }

          goto LABEL_144;
        case 0xAu:
          if (v8 != 80)
          {
            goto LABEL_136;
          }

          v5 |= 0x100u;
          v30 = v7 + 1;
          v29 = *v7;
          if ((v29 & 0x8000000000000000) == 0)
          {
            goto LABEL_50;
          }

          v31 = *v30;
          v29 = (v31 << 7) + v29 - 128;
          if (v31 < 0)
          {
            v64 = sub_19587DC(v7, v29);
            v85 = v64;
            *(a1 + 144) = v65;
            if (!v64)
            {
              goto LABEL_149;
            }
          }

          else
          {
            v30 = v7 + 2;
LABEL_50:
            v85 = v30;
            *(a1 + 144) = v29;
          }

          goto LABEL_144;
        case 0xBu:
          if (v8 == 88)
          {
            v53 = v7 - 1;
            while (1)
            {
              v85 = v53 + 1;
              v54 = v53[1];
              if (v54 < 0)
              {
                v55 = (v53[2] << 7) + v54;
                v54 = (v55 - 128);
                if (v53[2] < 0)
                {
                  v53 = sub_19587DC((v53 + 1), (v55 - 128));
                  v54 = v56;
                }

                else
                {
                  v53 += 3;
                }
              }

              else
              {
                v53 += 2;
              }

              v85 = v53;
              v57 = *(a1 + 40);
              if (v57 == *(a1 + 44))
              {
                v58 = v57 + 1;
                sub_1959094((a1 + 40), v57 + 1);
                *(*(a1 + 48) + 8 * v57) = v54;
                v53 = v85;
              }

              else
              {
                *(*(a1 + 48) + 8 * v57) = v54;
                v58 = v57 + 1;
              }

              *(a1 + 40) = v58;
              if (!v53)
              {
                goto LABEL_149;
              }

              if (*a3 <= v53 || *v53 != 88)
              {
                goto LABEL_144;
              }
            }
          }

          if (v8 != 90)
          {
            goto LABEL_136;
          }

          v80 = (a1 + 40);
          goto LABEL_135;
        case 0xCu:
          if (v8 == 96)
          {
            v14 = v7 - 1;
            while (1)
            {
              v85 = v14 + 1;
              v15 = v14[1];
              if (v15 < 0)
              {
                v16 = (v14[2] << 7) + v15;
                v15 = (v16 - 128);
                if (v14[2] < 0)
                {
                  v14 = sub_19587DC((v14 + 1), (v16 - 128));
                  v15 = v17;
                }

                else
                {
                  v14 += 3;
                }
              }

              else
              {
                v14 += 2;
              }

              v85 = v14;
              v18 = *(a1 + 56);
              if (v18 == *(a1 + 60))
              {
                v19 = v18 + 1;
                sub_1959094((a1 + 56), v18 + 1);
                *(*(a1 + 64) + 8 * v18) = v15;
                v14 = v85;
              }

              else
              {
                *(*(a1 + 64) + 8 * v18) = v15;
                v19 = v18 + 1;
              }

              *(a1 + 56) = v19;
              if (!v14)
              {
                goto LABEL_149;
              }

              if (*a3 <= v14 || *v14 != 96)
              {
                goto LABEL_144;
              }
            }
          }

          if (v8 != 98)
          {
            goto LABEL_136;
          }

          v80 = (a1 + 56);
          goto LABEL_135;
        case 0xDu:
          if (v8 == 104)
          {
            v23 = v7 - 1;
            while (1)
            {
              v85 = v23 + 1;
              v24 = v23[1];
              if (v24 < 0)
              {
                v25 = (v23[2] << 7) + v24;
                v24 = (v25 - 128);
                if (v23[2] < 0)
                {
                  v23 = sub_19587DC((v23 + 1), (v25 - 128));
                  v24 = v26;
                }

                else
                {
                  v23 += 3;
                }
              }

              else
              {
                v23 += 2;
              }

              v85 = v23;
              v27 = *(a1 + 72);
              if (v27 == *(a1 + 76))
              {
                v28 = v27 + 1;
                sub_1959094((a1 + 72), v27 + 1);
                *(*(a1 + 80) + 8 * v27) = v24;
                v23 = v85;
              }

              else
              {
                *(*(a1 + 80) + 8 * v27) = v24;
                v28 = v27 + 1;
              }

              *(a1 + 72) = v28;
              if (!v23)
              {
                goto LABEL_149;
              }

              if (*a3 <= v23 || *v23 != 104)
              {
                goto LABEL_144;
              }
            }
          }

          if (v8 != 106)
          {
            goto LABEL_136;
          }

          v80 = (a1 + 72);
          goto LABEL_135;
        default:
          goto LABEL_136;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v85;
}

char *sub_1338FA0(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 88);
    *a2 = 8;
    a2[1] = v7;
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v8 = v7 >> 7;
      a2[2] = v7 >> 7;
      v6 = a2 + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = a2[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = a2 + 2;
    }
  }

  else
  {
    v6 = a2;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 96);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          v6 = (v13 >> 7);
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 104);
    *v11 = 24;
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v11[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v11[2] = v16 >> 7;
      v15 = v11 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
        do
        {
          *(v15 - 1) = v11 | 0x80;
          v11 = (v17 >> 7);
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v11 + 2;
    }
  }

  else
  {
    v15 = v11;
  }

  v19 = *(a1 + 24);
  if (v19 < 1)
  {
    v22 = v15;
  }

  else
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v21 = *(*(a1 + 32) + 8 * i);
      *v15 = 32;
      v15[1] = v21;
      if (v21 > 0x7F)
      {
        v15[1] = v21 | 0x80;
        v23 = v21 >> 7;
        v15[2] = v21 >> 7;
        v22 = v15 + 3;
        if (v21 >= 0x4000)
        {
          LOBYTE(v24) = v15[2];
          do
          {
            *(v22 - 1) = v24 | 0x80;
            v24 = v23 >> 7;
            *v22++ = v23 >> 7;
            v25 = v23 >> 14;
            v23 >>= 7;
          }

          while (v25);
        }
      }

      else
      {
        v22 = v15 + 2;
      }

      v15 = v22;
    }
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v27 = *(a1 + 112);
    *v22 = 40;
    v22[1] = v27;
    if (v27 > 0x7F)
    {
      v22[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v22[2] = v27 >> 7;
      v26 = v22 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v22) = v22[2];
        do
        {
          *(v26 - 1) = v22 | 0x80;
          v22 = (v28 >> 7);
          *v26++ = v28 >> 7;
          v29 = v28 >> 14;
          v28 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v26 = v22 + 2;
    }
  }

  else
  {
    v26 = v22;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v31 = *(a1 + 128);
    *v26 = 48;
    v26[1] = v31;
    if (v31 > 0x7F)
    {
      v26[1] = v31 | 0x80;
      v32 = v31 >> 7;
      v26[2] = v31 >> 7;
      v30 = v26 + 3;
      if (v31 >= 0x4000)
      {
        LOBYTE(v33) = v26[2];
        do
        {
          *(v30 - 1) = v33 | 0x80;
          v33 = v32 >> 7;
          *v30++ = v32 >> 7;
          v34 = v32 >> 14;
          v32 >>= 7;
        }

        while (v34);
      }
    }

    else
    {
      v30 = v26 + 2;
    }
  }

  else
  {
    v30 = v26;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v30)
    {
      v30 = sub_225EB68(a3, v30);
    }

    v36 = *(a1 + 120);
    *v30 = 56;
    v30[1] = v36;
    if (v36 > 0x7F)
    {
      v30[1] = v36 | 0x80;
      v37 = v36 >> 7;
      v30[2] = v36 >> 7;
      v35 = v30 + 3;
      if (v36 >= 0x4000)
      {
        LOBYTE(v30) = v30[2];
        do
        {
          *(v35 - 1) = v30 | 0x80;
          v30 = (v37 >> 7);
          *v35++ = v37 >> 7;
          v38 = v37 >> 14;
          v37 >>= 7;
        }

        while (v38);
      }
    }

    else
    {
      v35 = v30 + 2;
    }
  }

  else
  {
    v35 = v30;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v35)
    {
      v35 = sub_225EB68(a3, v35);
    }

    v40 = *(a1 + 136);
    *v35 = 64;
    v35[1] = v40;
    if (v40 > 0x7F)
    {
      v35[1] = v40 | 0x80;
      v41 = v40 >> 7;
      v35[2] = v40 >> 7;
      v39 = v35 + 3;
      if (v40 >= 0x4000)
      {
        LOBYTE(v35) = v35[2];
        do
        {
          *(v39 - 1) = v35 | 0x80;
          v35 = (v41 >> 7);
          *v39++ = v41 >> 7;
          v42 = v41 >> 14;
          v41 >>= 7;
        }

        while (v42);
      }
    }

    else
    {
      v39 = v35 + 2;
    }
  }

  else
  {
    v39 = v35;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v43 = *(a1 + 132);
    *v39 = 72;
    v39[1] = v43;
    v39 += 2;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v45 = *(a1 + 144);
    *v39 = 80;
    v39[1] = v45;
    if (v45 > 0x7F)
    {
      v39[1] = v45 | 0x80;
      v46 = v45 >> 7;
      v39[2] = v45 >> 7;
      v44 = v39 + 3;
      if (v45 >= 0x4000)
      {
        LOBYTE(v47) = v39[2];
        do
        {
          *(v44 - 1) = v47 | 0x80;
          v47 = v46 >> 7;
          *v44++ = v46 >> 7;
          v48 = v46 >> 14;
          v46 >>= 7;
        }

        while (v48);
      }
    }

    else
    {
      v44 = v39 + 2;
    }
  }

  else
  {
    v44 = v39;
  }

  v49 = *(a1 + 40);
  if (v49 < 1)
  {
    v52 = v44;
  }

  else
  {
    for (j = 0; j != v49; ++j)
    {
      if (*a3 <= v44)
      {
        v44 = sub_225EB68(a3, v44);
      }

      v51 = *(*(a1 + 48) + 8 * j);
      *v44 = 88;
      v44[1] = v51;
      if (v51 > 0x7F)
      {
        v44[1] = v51 | 0x80;
        v53 = v51 >> 7;
        v44[2] = v51 >> 7;
        v52 = v44 + 3;
        if (v51 >= 0x4000)
        {
          LOBYTE(v44) = v44[2];
          do
          {
            *(v52 - 1) = v44 | 0x80;
            v44 = (v53 >> 7);
            *v52++ = v53 >> 7;
            v54 = v53 >> 14;
            v53 >>= 7;
          }

          while (v54);
        }
      }

      else
      {
        v52 = v44 + 2;
      }

      v44 = v52;
    }
  }

  v55 = *(a1 + 56);
  if (v55 < 1)
  {
    v58 = v52;
  }

  else
  {
    for (k = 0; k != v55; ++k)
    {
      if (*a3 <= v52)
      {
        v52 = sub_225EB68(a3, v52);
      }

      v57 = *(*(a1 + 64) + 8 * k);
      *v52 = 96;
      v52[1] = v57;
      if (v57 > 0x7F)
      {
        v52[1] = v57 | 0x80;
        v59 = v57 >> 7;
        v52[2] = v57 >> 7;
        v58 = v52 + 3;
        if (v57 >= 0x4000)
        {
          LOBYTE(v60) = v52[2];
          do
          {
            *(v58 - 1) = v60 | 0x80;
            v60 = v59 >> 7;
            *v58++ = v59 >> 7;
            v61 = v59 >> 14;
            v59 >>= 7;
          }

          while (v61);
        }
      }

      else
      {
        v58 = v52 + 2;
      }

      v52 = v58;
    }
  }

  v62 = *(a1 + 72);
  if (v62 < 1)
  {
    v65 = v58;
  }

  else
  {
    for (m = 0; m != v62; ++m)
    {
      if (*a3 <= v58)
      {
        v58 = sub_225EB68(a3, v58);
      }

      v64 = *(*(a1 + 80) + 8 * m);
      *v58 = 104;
      v58[1] = v64;
      if (v64 > 0x7F)
      {
        v58[1] = v64 | 0x80;
        v66 = v64 >> 7;
        v58[2] = v64 >> 7;
        v65 = v58 + 3;
        if (v64 >= 0x4000)
        {
          LOBYTE(v58) = v58[2];
          do
          {
            *(v65 - 1) = v58 | 0x80;
            v58 = (v66 >> 7);
            *v65++ = v66 >> 7;
            v67 = v66 >> 14;
            v66 >>= 7;
          }

          while (v67);
        }
      }

      else
      {
        v65 = v58 + 2;
      }

      v58 = v65;
    }
  }

  v68 = *(a1 + 8);
  if ((v68 & 1) == 0)
  {
    return v65;
  }

  v70 = v68 & 0xFFFFFFFFFFFFFFFCLL;
  v71 = *(v70 + 31);
  if (v71 < 0)
  {
    v72 = *(v70 + 8);
    v71 = *(v70 + 16);
  }

  else
  {
    v72 = (v70 + 8);
  }

  if (*a3 - v65 >= v71)
  {
    v73 = v71;
    memcpy(v65, v72, v71);
    v65 += v73;
    return v65;
  }

  return sub_1957130(a3, v72, v71, v65);
}

uint64_t sub_1339750(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24));
  v3 = *(a1 + 24);
  v4 = sub_1959F14((a1 + 40));
  v5 = *(a1 + 40);
  v6 = sub_1959F14((a1 + 56));
  v7 = *(a1 + 56);
  result = v2 + v4 + v3 + v5 + v6 + v7 + sub_1959F14((a1 + 72)) + *(a1 + 72);
  v9 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  if (v9)
  {
    result += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v9 & 2) == 0)
    {
LABEL_4:
      if ((v9 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_4;
  }

  result += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v9 & 4) == 0)
  {
LABEL_5:
    if ((v9 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  result += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v9 & 8) == 0)
  {
LABEL_6:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_22:
    result += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

LABEL_21:
  result += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v9 & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_7:
  if ((v9 & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v10 = *(a1 + 128);
  v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v10 >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 11;
  }

  result += v12;
LABEL_12:
  result += (v9 >> 5) & 2;
  if ((v9 & 0x80) != 0)
  {
    result += ((9 * (__clz(*(a1 + 136) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_14:
  if ((v9 & 0x100) != 0)
  {
    result += ((9 * (__clz(*(a1 + 144) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    result += v15;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_1339968(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = result + 1;
    data_low = SLODWORD(result[1].__r_.__value_.__l.__data_);
    sub_1959094(&result[1], data_low + v4);
    size = v3[1].__r_.__value_.__l.__size_;
    LODWORD(v5->__r_.__value_.__l.__data_) += *(a2 + 24);
    result = memcpy((size + 8 * data_low), *(a2 + 32), 8 * *(a2 + 24));
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = SLODWORD(v3[1].__r_.__value_.__r.__words[2]);
    sub_1959094(&v3[1].__r_.__value_.__r.__words[2], v9 + v8);
    data = v3[2].__r_.__value_.__l.__data_;
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) += *(a2 + 40);
    result = memcpy(&data[8 * v9], *(a2 + 48), 8 * *(a2 + 40));
  }

  v11 = *(a2 + 56);
  if (v11)
  {
    v12 = SLODWORD(v3[2].__r_.__value_.__r.__words[1]);
    sub_1959094(&v3[2].__r_.__value_.__r.__words[1], v12 + v11);
    v13 = v3[2].__r_.__value_.__r.__words[2];
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) += *(a2 + 56);
    result = memcpy((v13 + 8 * v12), *(a2 + 64), 8 * *(a2 + 56));
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = SLODWORD(v3[3].__r_.__value_.__l.__data_);
    sub_1959094(&v3[3], v15 + v14);
    v16 = v3[3].__r_.__value_.__l.__size_;
    LODWORD(v3[3].__r_.__value_.__l.__data_) += *(a2 + 72);
    result = memcpy((v16 + 8 * v15), *(a2 + 80), 8 * *(a2 + 72));
  }

  v17 = *(a2 + 16);
  if (v17)
  {
    if (v17)
    {
      v3[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
      if ((v17 & 2) == 0)
      {
LABEL_12:
        if ((v17 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_28;
      }
    }

    else if ((v17 & 2) == 0)
    {
      goto LABEL_12;
    }

    v3[4].__r_.__value_.__r.__words[0] = *(a2 + 96);
    if ((v17 & 4) == 0)
    {
LABEL_13:
      if ((v17 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_29;
    }

LABEL_28:
    v3[4].__r_.__value_.__l.__size_ = *(a2 + 104);
    if ((v17 & 8) == 0)
    {
LABEL_14:
      if ((v17 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }

LABEL_29:
    v3[4].__r_.__value_.__r.__words[2] = *(a2 + 112);
    if ((v17 & 0x10) == 0)
    {
LABEL_15:
      if ((v17 & 0x20) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_31;
    }

LABEL_30:
    v3[5].__r_.__value_.__r.__words[0] = *(a2 + 120);
    if ((v17 & 0x20) == 0)
    {
LABEL_16:
      if ((v17 & 0x40) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_32;
    }

LABEL_31:
    LODWORD(v3[5].__r_.__value_.__r.__words[1]) = *(a2 + 128);
    if ((v17 & 0x40) == 0)
    {
LABEL_17:
      if ((v17 & 0x80) == 0)
      {
LABEL_19:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v17;
        goto LABEL_20;
      }

LABEL_18:
      v3[5].__r_.__value_.__r.__words[2] = *(a2 + 136);
      goto LABEL_19;
    }

LABEL_32:
    v3[5].__r_.__value_.__s.__data_[12] = *(a2 + 132);
    if ((v17 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_20:
  if ((v17 & 0x100) != 0)
  {
    v18 = *(a2 + 144);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x100u;
    v3[6].__r_.__value_.__r.__words[0] = v18;
  }

  v19 = *(a2 + 8);
  if (v19)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1339BA0(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_17;
    }
  }

  else if (v4)
  {
    goto LABEL_17;
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

  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C((a1 + 48));
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C((a1 + 64));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_17:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1339CA8(uint64_t a1)
{
  sub_1339BA0(a1);

  operator delete();
}

uint64_t sub_1339CE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) != 0)
  {
    if ((v1 & 1) == 0)
    {
      if ((v1 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_13:
      v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v3 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
        if ((v1 & 4) != 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
        if ((v1 & 4) != 0)
        {
          goto LABEL_17;
        }
      }

LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_21:
      v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v5 + 23) < 0)
      {
        **v5 = 0;
        *(v5 + 8) = 0;
        if ((v1 & 0x10) != 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        *v5 = 0;
        *(v5 + 23) = 0;
        if ((v1 & 0x10) != 0)
        {
          goto LABEL_25;
        }
      }

LABEL_7:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_32;
      }

LABEL_29:
      v7 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
      }

      goto LABEL_32;
    }

    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_13;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_17:
    v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_6:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_25:
    v6 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_29;
  }

LABEL_32:
  if ((v1 & 0xC0) != 0)
  {
    *(a1 + 72) = 0;
  }

  v9 = *(a1 + 8);
  result = a1 + 8;
  *(result + 72) = 0;
  *(result + 8) = 0;
  if (v9)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1339E44(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v36 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v36, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v36 + 1);
    v8 = **v36;
    if (**v36 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v36, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v36 + 2);
      }
    }

    *v36 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      if (v8 >> 3 > 2)
      {
        if (v11 == 3)
        {
          if (v8 != 26)
          {
            goto LABEL_64;
          }

          *(a1 + 16) |= 4u;
          v23 = *(a1 + 8);
          v18 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v18 = *v18;
          }

          v19 = (a1 + 40);
        }

        else
        {
          if (v11 != 4 || v8 != 34)
          {
            goto LABEL_64;
          }

          *(a1 + 16) |= 8u;
          v20 = *(a1 + 8);
          v18 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v18 = *v18;
          }

          v19 = (a1 + 48);
        }
      }

      else if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_64;
        }

        *(a1 + 16) |= 1u;
        v22 = *(a1 + 8);
        v18 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v18 = *v18;
        }

        v19 = (a1 + 24);
      }

      else
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_64;
        }

        *(a1 + 16) |= 2u;
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v19 = (a1 + 32);
      }

      goto LABEL_58;
    }

    if (v8 >> 3 <= 6)
    {
      if (v11 == 5)
      {
        if (v8 != 42)
        {
          goto LABEL_64;
        }

        *(a1 + 16) |= 0x10u;
        v27 = *(a1 + 8);
        v18 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v18 = *v18;
        }

        v19 = (a1 + 56);
      }

      else
      {
        if (v11 != 6 || v8 != 50)
        {
          goto LABEL_64;
        }

        *(a1 + 16) |= 0x20u;
        v21 = *(a1 + 8);
        v18 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v18 = *v18;
        }

        v19 = (a1 + 64);
      }

LABEL_58:
      v28 = sub_194DB04(v19, v18);
      v29 = sub_1958890(v28, *v36, a3);
      goto LABEL_59;
    }

    if (v11 != 7)
    {
      break;
    }

    if (v8 != 56)
    {
      goto LABEL_64;
    }

    v5 |= 0x40u;
    v24 = v7 + 1;
    v25 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    v26 = *v24;
    v25 = v25 + (v26 << 7) - 128;
    if ((v26 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_53:
      *v36 = v24;
      *(a1 + 72) = v25;
      goto LABEL_60;
    }

    v33 = sub_1958770(v7, v25);
    *v36 = v33;
    *(a1 + 72) = v34;
    if (!v33)
    {
      goto LABEL_79;
    }

LABEL_60:
    if (sub_195ADC0(a3, v36, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 8)
  {
    if (v8 == 69)
    {
      v5 |= 0x80u;
      *(a1 + 76) = *v7;
      *v36 = v7 + 1;
      goto LABEL_60;
    }
  }

  else if (v11 == 9 && v8 == 72)
  {
    v12 = v7 + 1;
    v13 = *v7;
    if (v13 < 0)
    {
      v14 = *v12;
      v15 = (v14 << 7) + v13;
      LODWORD(v13) = v15 - 128;
      if (v14 < 0)
      {
        *v36 = sub_19587DC(v7, (v15 - 128));
        if (!*v36)
        {
          goto LABEL_79;
        }

        LODWORD(v13) = v35;
        goto LABEL_17;
      }

      v12 = v7 + 2;
    }

    *v36 = v12;
LABEL_17:
    if (sub_13560D8(v13))
    {
      *(a1 + 16) |= 0x100u;
      *(a1 + 80) = v13;
    }

    else
    {
      sub_1348EF8();
    }

    goto LABEL_60;
  }

LABEL_64:
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
      v7 = *v36;
    }

    v29 = sub_1952690(v8, v32, v7, a3);
LABEL_59:
    *v36 = v29;
    if (!v29)
    {
      goto LABEL_79;
    }

    goto LABEL_60;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_79:
  *v36 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v36;
}

char *sub_133A208(uint64_t a1, char *__dst, void *a3)
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
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = sub_128AEEC(a3, 3, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = sub_128AEEC(a3, 4, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v4 = sub_128AEEC(a3, 6, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  v4 = sub_128AEEC(a3, 5, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    v7 = v4;
    goto LABEL_22;
  }

LABEL_15:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 72);
  *v4 = 56;
  v4[1] = v8;
  if (v8 > 0x7F)
  {
    v4[1] = v8 | 0x80;
    v9 = v8 >> 7;
    v4[2] = v8 >> 7;
    v7 = v4 + 3;
    if (v8 >= 0x4000)
    {
      LOBYTE(v10) = v4[2];
      do
      {
        *(v7 - 1) = v10 | 0x80;
        v10 = v9 >> 7;
        *v7++ = v9 >> 7;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_22:
  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 76);
    *v7 = 69;
    *(v7 + 1) = v12;
    v7 += 5;
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v14 = *(a1 + 80);
    *v7 = 72;
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

uint64_t sub_133A4B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v2 = 0;
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_22;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_10:
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  if ((v1 & 4) != 0)
  {
    v11 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_15:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_30;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_15;
  }

  v14 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  v16 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v16 = v15;
  }

  v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) == 0)
  {
LABEL_16:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_30:
  v17 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v17 + 23);
  v19 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v19 = v18;
  }

  v2 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x20) == 0)
  {
LABEL_17:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_33:
  v20 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v20 + 23);
  v22 = *(v20 + 8);
  if ((v21 & 0x80u) == 0)
  {
    v22 = v21;
  }

  v2 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x40) != 0)
  {
LABEL_18:
    v2 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v1 & 0x80) != 0)
  {
    v2 += 5;
  }

  if ((v1 & 0x100) != 0)
  {
LABEL_22:
    v9 = *(a1 + 80);
    if (v9 < 0)
    {
      v10 = 11;
    }

    else
    {
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v10;
  }

LABEL_39:
  v23 = *(a1 + 8);
  if (v23)
  {
    v25 = v23 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v26 < 0)
    {
      v26 = *(v25 + 16);
    }

    v2 += v26;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_133A714(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    if (v4)
    {
      v7 = *(a2 + 24);
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      size = result->__r_.__value_.__l.__size_;
      v9 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v9 = *v9;
      }

      result = sub_194EA1C(&result[1], (v7 & 0xFFFFFFFFFFFFFFFELL), v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_24;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v10 = *(a2 + 32);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v11 = v3->__r_.__value_.__l.__size_;
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    result = sub_194EA1C(&v3[1].__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_27;
    }

LABEL_24:
    v13 = *(a2 + 40);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v14 = v3->__r_.__value_.__l.__size_;
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    result = sub_194EA1C(&v3[1].__r_.__value_.__r.__words[2], (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_30;
    }

LABEL_27:
    v16 = *(a2 + 48);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    v17 = v3->__r_.__value_.__l.__size_;
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    result = sub_194EA1C(&v3[2], (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_33;
    }

LABEL_30:
    v19 = *(a2 + 56);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
    v20 = v3->__r_.__value_.__l.__size_;
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    result = sub_194EA1C(&v3[2].__r_.__value_.__l.__size_, (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_36;
    }

LABEL_33:
    v22 = *(a2 + 64);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x20u;
    v23 = v3->__r_.__value_.__l.__size_;
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    result = sub_194EA1C(&v3[2].__r_.__value_.__r.__words[2], (v22 & 0xFFFFFFFFFFFFFFFELL), v24);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      HIDWORD(v3[3].__r_.__value_.__r.__words[0]) = *(a2 + 76);
      goto LABEL_11;
    }

LABEL_36:
    LODWORD(v3[3].__r_.__value_.__l.__data_) = *(a2 + 72);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x100) != 0)
  {
    v5 = *(a2 + 80);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x100u;
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = v5;
  }

  v6 = *(a2 + 8);
  if (v6)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_133A92C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1347D44(a1 + 20);
  sub_1956AFC(a1 + 17);
  sub_1956AFC(a1 + 14);
  sub_1956AFC(a1 + 11);
  sub_1956AFC(a1 + 8);
  sub_1956AFC(a1 + 5);
  sub_1956AFC(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_133A9DC(void *a1)
{
  sub_133A92C(a1);

  operator delete();
}

uint64_t sub_133AA14(uint64_t a1)
{
  sub_12A41D0(a1 + 16);
  sub_12A41D0(a1 + 40);
  sub_12A41D0(a1 + 64);
  sub_12A41D0(a1 + 88);
  sub_12A41D0(a1 + 112);
  result = sub_12A41D0(a1 + 136);
  v3 = *(a1 + 168);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 176) + 8);
    do
    {
      v5 = *v4++;
      result = sub_1339CE0(v5);
      --v3;
    }

    while (v3);
    *(a1 + 168) = 0;
  }

  v7 = *(a1 + 8);
  v6 = (a1 + 8);
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_133AAC0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v69 = a2;
  if ((sub_195ADC0(a3, v69, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = (*v69 + 1);
      v7 = **v69;
      if (**v69 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          v6 = sub_1958824(*v69, v8 - 128);
          v7 = v9;
        }

        else
        {
          v6 = (*v69 + 2);
        }
      }

      *v69 = v6;
      v10 = v7 >> 3;
      if (v7 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v7 == 10)
          {
            v34 = v6 - 1;
            while (1)
            {
              v35 = (v34 + 1);
              *v69 = v34 + 1;
              v36 = *(a1 + 32);
              if (v36 && (v37 = *(a1 + 24), v37 < *v36))
              {
                *(a1 + 24) = v37 + 1;
                v38 = *&v36[2 * v37 + 2];
              }

              else
              {
                v39 = *(a1 + 16);
                if (!v39)
                {
                  operator new();
                }

                *v41 = v40;
                v41[1] = sub_195A650;
                *v40 = 0;
                v40[1] = 0;
                v40[2] = 0;
                v38 = sub_19593CC(a1 + 16, v40);
                v35 = *v69;
              }

              v34 = sub_1958890(v38, v35, a3);
              *v69 = v34;
              if (!v34)
              {
                goto LABEL_113;
              }

              if (*a3 <= v34 || *v34 != 10)
              {
                goto LABEL_108;
              }
            }
          }
        }

        else if (v10 == 2)
        {
          if (v7 == 18)
          {
            v58 = v6 - 1;
            while (1)
            {
              v59 = (v58 + 1);
              *v69 = v58 + 1;
              v60 = *(a1 + 56);
              if (v60 && (v61 = *(a1 + 48), v61 < *v60))
              {
                *(a1 + 48) = v61 + 1;
                v62 = *&v60[2 * v61 + 2];
              }

              else
              {
                v63 = *(a1 + 40);
                if (!v63)
                {
                  operator new();
                }

                *v65 = v64;
                v65[1] = sub_195A650;
                *v64 = 0;
                v64[1] = 0;
                v64[2] = 0;
                v62 = sub_19593CC(a1 + 40, v64);
                v59 = *v69;
              }

              v58 = sub_1958890(v62, v59, a3);
              *v69 = v58;
              if (!v58)
              {
                goto LABEL_113;
              }

              if (*a3 <= v58 || *v58 != 18)
              {
                goto LABEL_108;
              }
            }
          }
        }

        else if (v10 == 3 && v7 == 26)
        {
          v20 = v6 - 1;
          while (1)
          {
            v21 = (v20 + 1);
            *v69 = v20 + 1;
            v22 = *(a1 + 80);
            if (v22 && (v23 = *(a1 + 72), v23 < *v22))
            {
              *(a1 + 72) = v23 + 1;
              v24 = *&v22[2 * v23 + 2];
            }

            else
            {
              v25 = *(a1 + 64);
              if (!v25)
              {
                operator new();
              }

              *v27 = v26;
              v27[1] = sub_195A650;
              *v26 = 0;
              v26[1] = 0;
              v26[2] = 0;
              v24 = sub_19593CC(a1 + 64, v26);
              v21 = *v69;
            }

            v20 = sub_1958890(v24, v21, a3);
            *v69 = v20;
            if (!v20)
            {
              goto LABEL_113;
            }

            if (*a3 <= v20 || *v20 != 26)
            {
              goto LABEL_108;
            }
          }
        }
      }

      else if (v7 >> 3 > 5)
      {
        if (v10 == 6)
        {
          if (v7 == 50)
          {
            v50 = v6 - 1;
            while (1)
            {
              v51 = (v50 + 1);
              *v69 = v50 + 1;
              v52 = *(a1 + 152);
              if (v52 && (v53 = *(a1 + 144), v53 < *v52))
              {
                *(a1 + 144) = v53 + 1;
                v54 = *&v52[2 * v53 + 2];
              }

              else
              {
                v55 = *(a1 + 136);
                if (!v55)
                {
                  operator new();
                }

                *v57 = v56;
                v57[1] = sub_195A650;
                *v56 = 0;
                v56[1] = 0;
                v56[2] = 0;
                v54 = sub_19593CC(a1 + 136, v56);
                v51 = *v69;
              }

              v50 = sub_1958890(v54, v51, a3);
              *v69 = v50;
              if (!v50)
              {
                goto LABEL_113;
              }

              if (*a3 <= v50 || *v50 != 50)
              {
                goto LABEL_108;
              }
            }
          }
        }

        else if (v10 == 7 && v7 == 58)
        {
          v28 = v6 - 1;
          while (1)
          {
            v29 = v28 + 1;
            *v69 = v28 + 1;
            v30 = *(a1 + 176);
            if (v30 && (v31 = *(a1 + 168), v31 < *v30))
            {
              *(a1 + 168) = v31 + 1;
              v32 = *&v30[2 * v31 + 2];
            }

            else
            {
              v33 = sub_1342EFC(*(a1 + 160));
              v32 = sub_19593CC(a1 + 160, v33);
              v29 = *v69;
            }

            v28 = sub_21FD4B0(a3, v32, v29);
            *v69 = v28;
            if (!v28)
            {
              goto LABEL_113;
            }

            if (*a3 <= v28 || *v28 != 58)
            {
              goto LABEL_108;
            }
          }
        }
      }

      else if (v10 == 4)
      {
        if (v7 == 34)
        {
          v42 = v6 - 1;
          while (1)
          {
            v43 = (v42 + 1);
            *v69 = v42 + 1;
            v44 = *(a1 + 104);
            if (v44 && (v45 = *(a1 + 96), v45 < *v44))
            {
              *(a1 + 96) = v45 + 1;
              v46 = *&v44[2 * v45 + 2];
            }

            else
            {
              v47 = *(a1 + 88);
              if (!v47)
              {
                operator new();
              }

              *v49 = v48;
              v49[1] = sub_195A650;
              *v48 = 0;
              v48[1] = 0;
              v48[2] = 0;
              v46 = sub_19593CC(a1 + 88, v48);
              v43 = *v69;
            }

            v42 = sub_1958890(v46, v43, a3);
            *v69 = v42;
            if (!v42)
            {
              goto LABEL_113;
            }

            if (*a3 <= v42 || *v42 != 34)
            {
              goto LABEL_108;
            }
          }
        }
      }

      else if (v10 == 5 && v7 == 42)
      {
        v11 = v6 - 1;
        while (1)
        {
          v12 = (v11 + 1);
          *v69 = v11 + 1;
          v13 = *(a1 + 128);
          if (v13 && (v14 = *(a1 + 120), v14 < *v13))
          {
            *(a1 + 120) = v14 + 1;
            v15 = *&v13[2 * v14 + 2];
          }

          else
          {
            v16 = *(a1 + 112);
            if (!v16)
            {
              operator new();
            }

            *v18 = v17;
            v18[1] = sub_195A650;
            *v17 = 0;
            v17[1] = 0;
            v17[2] = 0;
            v15 = sub_19593CC(a1 + 112, v17);
            v12 = *v69;
          }

          v11 = sub_1958890(v15, v12, a3);
          *v69 = v11;
          if (!v11)
          {
            goto LABEL_113;
          }

          if (*a3 <= v11 || *v11 != 42)
          {
            goto LABEL_108;
          }
        }
      }

      if (!v7 || (v7 & 7) == 4)
      {
        break;
      }

      v67 = *(a1 + 8);
      if (v67)
      {
        v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v68 = sub_11F1920((a1 + 8));
        v6 = *v69;
      }

      *v69 = sub_1952690(v7, v68, v6, a3);
      if (!*v69)
      {
        goto LABEL_113;
      }

LABEL_108:
      if (sub_195ADC0(a3, v69, a3[11].i32[1]))
      {
        return *v69;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return *v69;
    }

LABEL_113:
    *v69 = 0;
  }

  return *v69;
}

char *sub_133B158(uint64_t a1, char *__dst, _DWORD *a3)
{
  v6 = *(a1 + 24);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 32) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || *a3 - __dst + 14 < v9)
      {
        __dst = sub_1957480(a3, 1, v8, __dst);
      }

      else
      {
        *__dst = 10;
        __dst[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v10 = __dst + 2;
        memcpy(v10, v8, v9);
        __dst = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 48);
  if (v11 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = *(*(a1 + 56) + v12);
      v14 = *(v13 + 23);
      if (v14 < 0 && (v14 = v13[1], v14 > 127) || *a3 - __dst + 14 < v14)
      {
        __dst = sub_1957480(a3, 2, v13, __dst);
      }

      else
      {
        *__dst = 18;
        __dst[1] = v14;
        if (*(v13 + 23) < 0)
        {
          v13 = *v13;
        }

        v15 = __dst + 2;
        memcpy(v15, v13, v14);
        __dst = &v15[v14];
      }

      v12 += 8;
      --v11;
    }

    while (v11);
  }

  v16 = *(a1 + 72);
  if (v16 >= 1)
  {
    v17 = 8;
    do
    {
      v18 = *(*(a1 + 80) + v17);
      v19 = *(v18 + 23);
      if (v19 < 0 && (v19 = v18[1], v19 > 127) || *a3 - __dst + 14 < v19)
      {
        __dst = sub_1957480(a3, 3, v18, __dst);
      }

      else
      {
        *__dst = 26;
        __dst[1] = v19;
        if (*(v18 + 23) < 0)
        {
          v18 = *v18;
        }

        v20 = __dst + 2;
        memcpy(v20, v18, v19);
        __dst = &v20[v19];
      }

      v17 += 8;
      --v16;
    }

    while (v16);
  }

  v21 = *(a1 + 96);
  if (v21 >= 1)
  {
    v22 = 8;
    do
    {
      v23 = *(*(a1 + 104) + v22);
      v24 = *(v23 + 23);
      if (v24 < 0 && (v24 = v23[1], v24 > 127) || *a3 - __dst + 14 < v24)
      {
        __dst = sub_1957480(a3, 4, v23, __dst);
      }

      else
      {
        *__dst = 34;
        __dst[1] = v24;
        if (*(v23 + 23) < 0)
        {
          v23 = *v23;
        }

        v25 = __dst + 2;
        memcpy(v25, v23, v24);
        __dst = &v25[v24];
      }

      v22 += 8;
      --v21;
    }

    while (v21);
  }

  v26 = *(a1 + 120);
  if (v26 >= 1)
  {
    v27 = 8;
    do
    {
      v28 = *(*(a1 + 128) + v27);
      v29 = *(v28 + 23);
      if (v29 < 0 && (v29 = v28[1], v29 > 127) || *a3 - __dst + 14 < v29)
      {
        __dst = sub_1957480(a3, 5, v28, __dst);
      }

      else
      {
        *__dst = 42;
        __dst[1] = v29;
        if (*(v28 + 23) < 0)
        {
          v28 = *v28;
        }

        v30 = __dst + 2;
        memcpy(v30, v28, v29);
        __dst = &v30[v29];
      }

      v27 += 8;
      --v26;
    }

    while (v26);
  }

  v31 = *(a1 + 144);
  if (v31 >= 1)
  {
    v32 = 8;
    do
    {
      v33 = *(*(a1 + 152) + v32);
      v34 = *(v33 + 23);
      if (v34 < 0 && (v34 = v33[1], v34 > 127) || *a3 - __dst + 14 < v34)
      {
        __dst = sub_1957480(a3, 6, v33, __dst);
      }

      else
      {
        *__dst = 50;
        __dst[1] = v34;
        if (*(v33 + 23) < 0)
        {
          v33 = *v33;
        }

        v35 = __dst + 2;
        memcpy(v35, v33, v34);
        __dst = &v35[v34];
      }

      v32 += 8;
      --v31;
    }

    while (v31);
  }

  v36 = *(a1 + 168);
  if (v36)
  {
    for (i = 0; i != v36; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v38 = *(*(a1 + 176) + 8 * i + 8);
      *__dst = 58;
      v39 = *(v38 + 20);
      __dst[1] = v39;
      if (v39 > 0x7F)
      {
        v40 = sub_19575D0(v39, __dst + 1);
      }

      else
      {
        v40 = __dst + 2;
      }

      __dst = sub_133A208(v38, v40, a3);
    }
  }

  v41 = *(a1 + 8);
  if ((v41 & 1) == 0)
  {
    return __dst;
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

  if (*a3 - __dst >= v44)
  {
    v46 = v44;
    memcpy(__dst, v45, v44);
    __dst += v46;
    return __dst;
  }

  return sub_1957130(a3, v45, v44, __dst);
}

uint64_t sub_133B628(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 < 1)
  {
    v4 = *(a1 + 24);
  }

  else
  {
    v3 = (*(a1 + 32) + 8);
    v4 = *(a1 + 24);
    do
    {
      v5 = *v3++;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      --v2;
    }

    while (v2);
  }

  v8 = *(a1 + 48);
  v9 = v4 + v8;
  if (v8 >= 1)
  {
    v10 = (*(a1 + 56) + 8);
    do
    {
      v11 = *v10++;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v9 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      --v8;
    }

    while (v8);
  }

  v14 = *(a1 + 72);
  v15 = v9 + v14;
  if (v14 >= 1)
  {
    v16 = (*(a1 + 80) + 8);
    do
    {
      v17 = *v16++;
      v18 = *(v17 + 23);
      v19 = *(v17 + 8);
      if ((v18 & 0x80u) == 0)
      {
        v19 = v18;
      }

      v15 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      --v14;
    }

    while (v14);
  }

  v20 = *(a1 + 96);
  v21 = v15 + v20;
  if (v20 >= 1)
  {
    v22 = (*(a1 + 104) + 8);
    do
    {
      v23 = *v22++;
      v24 = *(v23 + 23);
      v25 = *(v23 + 8);
      if ((v24 & 0x80u) == 0)
      {
        v25 = v24;
      }

      v21 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6);
      --v20;
    }

    while (v20);
  }

  v26 = *(a1 + 120);
  v27 = v21 + v26;
  if (v26 >= 1)
  {
    v28 = (*(a1 + 128) + 8);
    do
    {
      v29 = *v28++;
      v30 = *(v29 + 23);
      v31 = *(v29 + 8);
      if ((v30 & 0x80u) == 0)
      {
        v31 = v30;
      }

      v27 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6);
      --v26;
    }

    while (v26);
  }

  v32 = *(a1 + 144);
  v33 = v27 + v32;
  if (v32 >= 1)
  {
    v34 = (*(a1 + 152) + 8);
    do
    {
      v35 = *v34++;
      v36 = *(v35 + 23);
      v37 = *(v35 + 8);
      if ((v36 & 0x80u) == 0)
      {
        v37 = v36;
      }

      v33 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6);
      --v32;
    }

    while (v32);
  }

  v38 = *(a1 + 168);
  v39 = v33 + v38;
  v40 = *(a1 + 176);
  if (v40)
  {
    v41 = (v40 + 8);
  }

  else
  {
    v41 = 0;
  }

  if (v38)
  {
    v42 = 8 * v38;
    do
    {
      v43 = *v41++;
      v44 = sub_133A4B0(v43);
      v39 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6);
      v42 -= 8;
    }

    while (v42);
  }

  v45 = *(a1 + 8);
  if (v45)
  {
    v47 = v45 & 0xFFFFFFFFFFFFFFFCLL;
    v48 = *((v45 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v48 < 0)
    {
      v48 = *(v47 + 16);
    }

    v39 += v48;
  }

  *(a1 + 184) = v39;
  return v39;
}

std::string *sub_133B8E4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_1201B48(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
    v7 = LODWORD(v3[1].__r_.__value_.__l.__data_) + v4;
    LODWORD(v3[1].__r_.__value_.__l.__data_) = v7;
    size = v3[1].__r_.__value_.__l.__size_;
    if (*size < v7)
    {
      *size = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a2 + 56);
    v11 = sub_19592E8(&v3[1].__r_.__value_.__r.__words[2], *(a2 + 48));
    result = sub_1201B48(&v3[1].__r_.__value_.__r.__words[2], v11, (v10 + 8), v9, *v3[2].__r_.__value_.__l.__size_ - LODWORD(v3[2].__r_.__value_.__l.__data_));
    v12 = LODWORD(v3[2].__r_.__value_.__l.__data_) + v9;
    LODWORD(v3[2].__r_.__value_.__l.__data_) = v12;
    v13 = v3[2].__r_.__value_.__l.__size_;
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = *(a2 + 80);
    v16 = sub_19592E8(&v3[2].__r_.__value_.__r.__words[2], *(a2 + 72));
    result = sub_1201B48(&v3[2].__r_.__value_.__r.__words[2], v16, (v15 + 8), v14, *v3[3].__r_.__value_.__l.__size_ - LODWORD(v3[3].__r_.__value_.__l.__data_));
    v17 = LODWORD(v3[3].__r_.__value_.__l.__data_) + v14;
    LODWORD(v3[3].__r_.__value_.__l.__data_) = v17;
    v18 = v3[3].__r_.__value_.__l.__size_;
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 96);
  if (v19)
  {
    v20 = *(a2 + 104);
    v21 = sub_19592E8(&v3[3].__r_.__value_.__r.__words[2], *(a2 + 96));
    result = sub_1201B48(&v3[3].__r_.__value_.__r.__words[2], v21, (v20 + 8), v19, *v3[4].__r_.__value_.__l.__size_ - LODWORD(v3[4].__r_.__value_.__l.__data_));
    v22 = LODWORD(v3[4].__r_.__value_.__l.__data_) + v19;
    LODWORD(v3[4].__r_.__value_.__l.__data_) = v22;
    v23 = v3[4].__r_.__value_.__l.__size_;
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 120);
  if (v24)
  {
    v25 = *(a2 + 128);
    v26 = sub_19592E8(&v3[4].__r_.__value_.__r.__words[2], *(a2 + 120));
    result = sub_1201B48(&v3[4].__r_.__value_.__r.__words[2], v26, (v25 + 8), v24, *v3[5].__r_.__value_.__l.__size_ - LODWORD(v3[5].__r_.__value_.__l.__data_));
    v27 = LODWORD(v3[5].__r_.__value_.__l.__data_) + v24;
    LODWORD(v3[5].__r_.__value_.__l.__data_) = v27;
    v28 = v3[5].__r_.__value_.__l.__size_;
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 144);
  if (v29)
  {
    v30 = *(a2 + 152);
    v31 = sub_19592E8(&v3[5].__r_.__value_.__r.__words[2], *(a2 + 144));
    result = sub_1201B48(&v3[5].__r_.__value_.__r.__words[2], v31, (v30 + 8), v29, *v3[6].__r_.__value_.__l.__size_ - LODWORD(v3[6].__r_.__value_.__l.__data_));
    v32 = LODWORD(v3[6].__r_.__value_.__l.__data_) + v29;
    LODWORD(v3[6].__r_.__value_.__l.__data_) = v32;
    v33 = v3[6].__r_.__value_.__l.__size_;
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 168);
  if (v34)
  {
    v35 = *(a2 + 176);
    v36 = sub_19592E8(&v3[6].__r_.__value_.__r.__words[2], *(a2 + 168));
    result = sub_1348970(&v3[6].__r_.__value_.__r.__words[2], v36, (v35 + 8), v34, *v3[7].__r_.__value_.__l.__size_ - LODWORD(v3[7].__r_.__value_.__l.__data_));
    v37 = LODWORD(v3[7].__r_.__value_.__l.__data_) + v34;
    LODWORD(v3[7].__r_.__value_.__l.__data_) = v37;
    v38 = v3[7].__r_.__value_.__l.__size_;
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  v39 = *(a2 + 8);
  if (v39)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v39 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

double sub_133BBE0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26D61E8;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0u;
  *(a1 + 128) = a2;
  *(a1 + 136) = 0u;
  *(a1 + 152) = a2;
  *(a1 + 160) = 0u;
  *(a1 + 176) = a2;
  *(a1 + 184) = 0u;
  *(a1 + 200) = a2;
  *(a1 + 208) = 0u;
  *(a1 + 224) = a2;
  *(a1 + 232) = 0u;
  *(a1 + 248) = a2;
  *(a1 + 256) = 0u;
  *(a1 + 272) = a2;
  *(a1 + 280) = 0u;
  *(a1 + 296) = a2;
  *(a1 + 304) = 0u;
  *(a1 + 320) = a2;
  *(a1 + 328) = 0u;
  *(a1 + 344) = a2;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 376) = a2;
  *(a1 + 384) = a2;
  *(a1 + 392) = 0u;
  *(a1 + 408) = a2;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 440) = a2;
  *(a1 + 448) = a2;
  *(a1 + 456) = 0u;
  *(a1 + 472) = a2;
  *(a1 + 480) = 0u;
  *(a1 + 496) = a2;
  *(a1 + 504) = 0u;
  *(a1 + 520) = a2;
  *(a1 + 528) = 0u;
  *(a1 + 544) = a2;
  *(a1 + 552) = 0u;
  *(a1 + 568) = a2;
  *(a1 + 576) = 0u;
  *(a1 + 592) = a2;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0;
  *(a1 + 624) = a2;
  *(a1 + 632) = a2;
  *(a1 + 640) = 0u;
  *(a1 + 656) = a2;
  *(a1 + 664) = 0u;
  *(a1 + 680) = a2;
  *(a1 + 704) = 0;
  *(a1 + 688) = 0u;
  *(a1 + 712) = a2;
  *(a1 + 720) = a2;
  *(a1 + 728) = 0u;
  *(a1 + 744) = a2;
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  *(a1 + 776) = a2;
  *(a1 + 784) = &qword_278E990;
  *(a1 + 792) = &qword_278E990;
  *(a1 + 800) = &qword_278E990;
  *(a1 + 808) = &qword_278E990;
  *(a1 + 816) = &qword_278E990;
  *(a1 + 824) = &qword_278E990;
  *(a1 + 832) = &qword_278E990;
  *(a1 + 840) = &qword_278E990;
  *(a1 + 848) = &qword_278E990;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  return result;
}

void *sub_133BD90(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
    goto LABEL_5;
  }

  sub_133BF74(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956ABC((a1 + 96));
  sub_1347C3C(a1 + 93);
  sub_1347B34(a1 + 90);
  sub_1956ABC((a1 + 88));
  sub_1347AB0(a1 + 85);
  sub_1347A2C(a1 + 82);
  sub_13479A8(a1 + 79);
  sub_1956ABC((a1 + 77));
  sub_1347798(a1 + 74);
  sub_1347924(a1 + 71);
  sub_13478A0(a1 + 68);
  sub_13478A0(a1 + 65);
  sub_13478A0(a1 + 62);
  sub_13478A0(a1 + 59);
  sub_1347E4C(a1 + 56);
  sub_1956ABC((a1 + 54));
  sub_134781C(a1 + 51);
  sub_1347714(a1 + 48);
  sub_1956ABC((a1 + 46));
  sub_1956AFC(a1 + 43);
  sub_1956AFC(a1 + 40);
  sub_1347690(a1 + 37);
  sub_1956AFC(a1 + 34);
  sub_134760C(a1 + 31);
  sub_13473FC(a1 + 28);
  sub_1956AFC(a1 + 25);
  sub_1347E4C(a1 + 22);
  sub_1311EE8(a1 + 19);
  sub_1956AFC(a1 + 16);
  sub_1956AFC(a1 + 13);
  sub_1956ABC((a1 + 11));
  sub_1347DC8(a1 + 8);
  sub_1956ABC((a1 + 6));
  sub_1956ABC((a1 + 4));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_133BF74(uint64_t result)
{
  v1 = result;
  if (*(result + 784) != &qword_278E990)
  {
    sub_194E89C((result + 784));
  }

  if (*(result + 792) != &qword_278E990)
  {
    sub_194E89C((result + 792));
  }

  if (*(result + 800) != &qword_278E990)
  {
    sub_194E89C((result + 800));
  }

  if (*(result + 808) != &qword_278E990)
  {
    sub_194E89C((result + 808));
  }

  if (*(result + 816) != &qword_278E990)
  {
    sub_194E89C((result + 816));
  }

  if (*(result + 824) != &qword_278E990)
  {
    sub_194E89C((result + 824));
  }

  if (*(result + 832) != &qword_278E990)
  {
    sub_194E89C((result + 832));
  }

  if (*(result + 840) != &qword_278E990)
  {
    sub_194E89C((result + 840));
  }

  if (*(result + 848) != &qword_278E990)
  {
    sub_194E89C((result + 848));
  }

  if (result != &off_276BB30)
  {
    if (*(result + 856))
    {
      sub_16E4E08();
      operator delete();
    }

    v2 = *(result + 864);
    if (v2)
    {
      sub_13379F4(v2);
      operator delete();
    }

    if (v1[109])
    {
      sub_15B7DC8();
      operator delete();
    }

    if (v1[110])
    {
      sub_16F0320();
      operator delete();
    }

    if (v1[111])
    {
      sub_14F69F8();
      operator delete();
    }

    v3 = v1[112];
    if (v3)
    {
      sub_1338684(v3);
      operator delete();
    }

    if (v1[113])
    {
      sub_14D9114();
      operator delete();
    }

    v4 = v1[114];
    if (v4)
    {
      sub_133A92C(v4);
      operator delete();
    }

    if (v1[115])
    {
      sub_16EB0C0();
      operator delete();
    }

    v5 = v1[116];
    if (v5)
    {
      sub_13379F4(v5);
      operator delete();
    }

    if (v1[117])
    {
      sub_14D9114();
      operator delete();
    }

    v6 = v1[118];
    if (v6)
    {
      sub_133713C(v6);
      operator delete();
    }

    if (v1[119])
    {
      sub_14EB6E4();
      operator delete();
    }

    result = v1[120];
    if (result)
    {
      sub_13364E4(result);

      operator delete();
    }
  }

  return result;
}

void sub_133C238(void *a1)
{
  sub_133BD90(a1);

  operator delete();
}

uint64_t sub_133C270(uint64_t a1)
{
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  v2 = *(a1 + 72);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 80) + 8);
    do
    {
      v4 = *v3++;
      sub_15BBC74(v4);
      --v2;
    }

    while (v2);
    *(a1 + 72) = 0;
  }

  *(a1 + 88) = 0;
  sub_12A41D0(a1 + 104);
  sub_12A41D0(a1 + 128);
  v5 = *(a1 + 160);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 168) + 8);
    do
    {
      v7 = *v6++;
      sub_1579070(v7);
      --v5;
    }

    while (v5);
    *(a1 + 160) = 0;
  }

  v8 = *(a1 + 184);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 192) + 8);
    do
    {
      v10 = *v9++;
      sub_1337E4C(v10);
      --v8;
    }

    while (v8);
    *(a1 + 184) = 0;
  }

  sub_12A41D0(a1 + 200);
  v11 = *(a1 + 232);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 240) + 8);
    do
    {
      v13 = *v12++;
      sub_1531498(v13);
      --v11;
    }

    while (v11);
    *(a1 + 232) = 0;
  }

  v14 = *(a1 + 256);
  if (v14 >= 1)
  {
    v15 = (*(a1 + 264) + 8);
    do
    {
      v16 = *v15++;
      sub_1341F2C(v16);
      --v14;
    }

    while (v14);
    *(a1 + 256) = 0;
  }

  sub_12A41D0(a1 + 272);
  v17 = *(a1 + 304);
  if (v17 >= 1)
  {
    v18 = (*(a1 + 312) + 8);
    do
    {
      v19 = *v18++;
      sub_13424FC(v19);
      --v17;
    }

    while (v17);
    *(a1 + 304) = 0;
  }

  sub_12A41D0(a1 + 320);
  result = sub_12A41D0(a1 + 344);
  *(a1 + 368) = 0;
  v21 = *(a1 + 392);
  if (v21 >= 1)
  {
    v22 = (*(a1 + 400) + 8);
    do
    {
      v23 = *v22++;
      result = sub_14F00F0(v23);
      --v21;
    }

    while (v21);
    *(a1 + 392) = 0;
  }

  v24 = *(a1 + 416);
  if (v24 >= 1)
  {
    v25 = (*(a1 + 424) + 8);
    do
    {
      v26 = *v25++;
      result = sub_14D6DD0(v26);
      --v24;
    }

    while (v24);
    *(a1 + 416) = 0;
  }

  *(a1 + 432) = 0;
  v27 = *(a1 + 456);
  if (v27 >= 1)
  {
    v28 = (*(a1 + 464) + 8);
    do
    {
      v29 = *v28++;
      result = sub_1337E4C(v29);
      --v27;
    }

    while (v27);
    *(a1 + 456) = 0;
  }

  v30 = *(a1 + 480);
  if (v30 >= 1)
  {
    v31 = (*(a1 + 488) + 8);
    do
    {
      v32 = *v31++;
      result = sub_13357D8(v32);
      --v30;
    }

    while (v30);
    *(a1 + 480) = 0;
  }

  v33 = *(a1 + 504);
  if (v33 >= 1)
  {
    v34 = (*(a1 + 512) + 8);
    do
    {
      v35 = *v34++;
      result = sub_13357D8(v35);
      --v33;
    }

    while (v33);
    *(a1 + 504) = 0;
  }

  v36 = *(a1 + 528);
  if (v36 >= 1)
  {
    v37 = (*(a1 + 536) + 8);
    do
    {
      v38 = *v37++;
      result = sub_13357D8(v38);
      --v36;
    }

    while (v36);
    *(a1 + 528) = 0;
  }

  v39 = *(a1 + 552);
  if (v39 >= 1)
  {
    v40 = (*(a1 + 560) + 8);
    do
    {
      v41 = *v40++;
      result = sub_13357D8(v41);
      --v39;
    }

    while (v39);
    *(a1 + 552) = 0;
  }

  v42 = *(a1 + 576);
  if (v42 >= 1)
  {
    v43 = (*(a1 + 584) + 8);
    do
    {
      v44 = *v43++;
      result = sub_1335CAC(v44);
      --v42;
    }

    while (v42);
    *(a1 + 576) = 0;
  }

  v45 = *(a1 + 600);
  if (v45 >= 1)
  {
    v46 = (*(a1 + 608) + 8);
    do
    {
      v47 = *v46++;
      result = sub_167C0E8(v47);
      --v45;
    }

    while (v45);
    *(a1 + 600) = 0;
  }

  *(a1 + 616) = 0;
  v48 = *(a1 + 640);
  if (v48 >= 1)
  {
    v49 = (*(a1 + 648) + 8);
    do
    {
      v50 = *v49++;
      result = sub_1336924(v50);
      --v48;
    }

    while (v48);
    *(a1 + 640) = 0;
  }

  v51 = *(a1 + 664);
  if (v51 >= 1)
  {
    v52 = (*(a1 + 672) + 8);
    do
    {
      v53 = *v52++;
      result = sub_1336DB8(v53);
      --v51;
    }

    while (v51);
    *(a1 + 664) = 0;
  }

  v54 = *(a1 + 688);
  if (v54 >= 1)
  {
    v55 = (*(a1 + 696) + 8);
    do
    {
      v56 = *v55++;
      result = sub_14D9150(v56);
      --v54;
    }

    while (v54);
    *(a1 + 688) = 0;
  }

  *(a1 + 704) = 0;
  v57 = *(a1 + 728);
  if (v57 >= 1)
  {
    v58 = (*(a1 + 736) + 8);
    do
    {
      v59 = *v58++;
      result = sub_14D6D2C(v59);
      --v57;
    }

    while (v57);
    *(a1 + 728) = 0;
  }

  v60 = *(a1 + 752);
  if (v60 >= 1)
  {
    v61 = (*(a1 + 760) + 8);
    do
    {
      v62 = *v61++;
      result = sub_14F2774(v62);
      --v60;
    }

    while (v60);
    *(a1 + 752) = 0;
  }

  *(a1 + 768) = 0;
  v63 = *(a1 + 16);
  if (v63)
  {
    if ((v63 & 1) == 0)
    {
      if ((v63 & 2) == 0)
      {
        goto LABEL_84;
      }

LABEL_95:
      v65 = *(a1 + 792) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v65 + 23) < 0)
      {
        **v65 = 0;
        *(v65 + 8) = 0;
        if ((v63 & 4) != 0)
        {
          goto LABEL_99;
        }
      }

      else
      {
        *v65 = 0;
        *(v65 + 23) = 0;
        if ((v63 & 4) != 0)
        {
          goto LABEL_99;
        }
      }

LABEL_85:
      if ((v63 & 8) == 0)
      {
        goto LABEL_86;
      }

LABEL_103:
      v67 = *(a1 + 808) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v67 + 23) < 0)
      {
        **v67 = 0;
        *(v67 + 8) = 0;
        if ((v63 & 0x10) != 0)
        {
          goto LABEL_107;
        }
      }

      else
      {
        *v67 = 0;
        *(v67 + 23) = 0;
        if ((v63 & 0x10) != 0)
        {
          goto LABEL_107;
        }
      }

LABEL_87:
      if ((v63 & 0x20) == 0)
      {
        goto LABEL_88;
      }

LABEL_111:
      v69 = *(a1 + 824) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v69 + 23) < 0)
      {
        **v69 = 0;
        *(v69 + 8) = 0;
        if ((v63 & 0x40) != 0)
        {
          goto LABEL_115;
        }
      }

      else
      {
        *v69 = 0;
        *(v69 + 23) = 0;
        if ((v63 & 0x40) != 0)
        {
          goto LABEL_115;
        }
      }

LABEL_89:
      if ((v63 & 0x80) == 0)
      {
        goto LABEL_122;
      }

LABEL_119:
      v71 = *(a1 + 840) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v71 + 23) < 0)
      {
        **v71 = 0;
        *(v71 + 8) = 0;
      }

      else
      {
        *v71 = 0;
        *(v71 + 23) = 0;
      }

      goto LABEL_122;
    }

    v64 = *(a1 + 784) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v64 + 23) < 0)
    {
      **v64 = 0;
      *(v64 + 8) = 0;
      if ((v63 & 2) != 0)
      {
        goto LABEL_95;
      }
    }

    else
    {
      *v64 = 0;
      *(v64 + 23) = 0;
      if ((v63 & 2) != 0)
      {
        goto LABEL_95;
      }
    }

LABEL_84:
    if ((v63 & 4) == 0)
    {
      goto LABEL_85;
    }

LABEL_99:
    v66 = *(a1 + 800) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v66 + 23) < 0)
    {
      **v66 = 0;
      *(v66 + 8) = 0;
      if ((v63 & 8) != 0)
      {
        goto LABEL_103;
      }
    }

    else
    {
      *v66 = 0;
      *(v66 + 23) = 0;
      if ((v63 & 8) != 0)
      {
        goto LABEL_103;
      }
    }

LABEL_86:
    if ((v63 & 0x10) == 0)
    {
      goto LABEL_87;
    }

LABEL_107:
    v68 = *(a1 + 816) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v68 + 23) < 0)
    {
      **v68 = 0;
      *(v68 + 8) = 0;
      if ((v63 & 0x20) != 0)
      {
        goto LABEL_111;
      }
    }

    else
    {
      *v68 = 0;
      *(v68 + 23) = 0;
      if ((v63 & 0x20) != 0)
      {
        goto LABEL_111;
      }
    }

LABEL_88:
    if ((v63 & 0x40) == 0)
    {
      goto LABEL_89;
    }

LABEL_115:
    v70 = *(a1 + 832) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v70 + 23) < 0)
    {
      **v70 = 0;
      *(v70 + 8) = 0;
      if ((v63 & 0x80) == 0)
      {
        goto LABEL_122;
      }
    }

    else
    {
      *v70 = 0;
      *(v70 + 23) = 0;
      if ((v63 & 0x80) == 0)
      {
        goto LABEL_122;
      }
    }

    goto LABEL_119;
  }

LABEL_122:
  if ((v63 & 0xFF00) == 0)
  {
    goto LABEL_140;
  }

  if ((v63 & 0x100) != 0)
  {
    v72 = *(a1 + 848) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v72 + 23) < 0)
    {
      **v72 = 0;
      *(v72 + 8) = 0;
      if ((v63 & 0x200) != 0)
      {
        goto LABEL_131;
      }
    }

    else
    {
      *v72 = 0;
      *(v72 + 23) = 0;
      if ((v63 & 0x200) != 0)
      {
        goto LABEL_131;
      }
    }

LABEL_125:
    if ((v63 & 0x400) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_132;
  }

  if ((v63 & 0x200) == 0)
  {
    goto LABEL_125;
  }

LABEL_131:
  result = sub_16E4E44(*(a1 + 856));
  if ((v63 & 0x400) == 0)
  {
    goto LABEL_134;
  }

LABEL_132:
  v73 = *(a1 + 864);
  v74 = *(v73 + 8);
  result = v73 + 8;
  *(result + 16) = 0;
  *(result + 8) = 0;
  if (v74)
  {
    result = sub_1957EA8(result);
  }

LABEL_134:
  if ((v63 & 0x800) != 0)
  {
    result = sub_15B7E04(*(a1 + 872));
    if ((v63 & 0x1000) == 0)
    {
LABEL_136:
      if ((v63 & 0x2000) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_147;
    }
  }

  else if ((v63 & 0x1000) == 0)
  {
    goto LABEL_136;
  }

  result = sub_16F035C(*(a1 + 880));
  if ((v63 & 0x2000) == 0)
  {
LABEL_137:
    if ((v63 & 0x4000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_148;
  }

LABEL_147:
  result = sub_14F380C(*(a1 + 888));
  if ((v63 & 0x4000) == 0)
  {
LABEL_138:
    if ((v63 & 0x8000) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_139;
  }

LABEL_148:
  result = sub_1338750(*(a1 + 896));
  if ((v63 & 0x8000) != 0)
  {
LABEL_139:
    result = sub_14D9150(*(a1 + 904));
  }

LABEL_140:
  if ((v63 & 0x7F0000) == 0)
  {
    goto LABEL_159;
  }

  if ((v63 & 0x10000) != 0)
  {
    result = sub_133AA14(*(a1 + 912));
    if ((v63 & 0x20000) == 0)
    {
LABEL_143:
      if ((v63 & 0x40000) == 0)
      {
        goto LABEL_154;
      }

      goto LABEL_152;
    }
  }

  else if ((v63 & 0x20000) == 0)
  {
    goto LABEL_143;
  }

  result = sub_16EB0FC(*(a1 + 920));
  if ((v63 & 0x40000) == 0)
  {
    goto LABEL_154;
  }

LABEL_152:
  v75 = *(a1 + 928);
  v76 = *(v75 + 8);
  result = v75 + 8;
  *(result + 16) = 0;
  *(result + 8) = 0;
  if (v76)
  {
    result = sub_1957EA8(result);
  }

LABEL_154:
  if ((v63 & 0x80000) != 0)
  {
    result = sub_14D9150(*(a1 + 936));
    if ((v63 & 0x100000) == 0)
    {
LABEL_156:
      if ((v63 & 0x200000) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_175;
    }
  }

  else if ((v63 & 0x100000) == 0)
  {
    goto LABEL_156;
  }

  result = sub_13361E8(*(a1 + 944));
  if ((v63 & 0x200000) == 0)
  {
LABEL_157:
    if ((v63 & 0x400000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_158;
  }

LABEL_175:
  result = sub_14EB720(*(a1 + 952));
  if ((v63 & 0x400000) != 0)
  {
LABEL_158:
    result = sub_1336234(*(a1 + 960));
  }

LABEL_159:
  *(a1 + 968) = 0;
  if (HIBYTE(v63))
  {
    *(a1 + 976) = 0u;
    *(a1 + 992) = 0u;
  }

  v77 = *(a1 + 20);
  if (v77)
  {
    *(a1 + 1008) = 0u;
    *(a1 + 1024) = 0u;
    *(a1 + 1038) = 0u;
  }

  if ((v77 & 0xFF00) != 0)
  {
    *(a1 + 1068) = 0;
    *(a1 + 1054) = 0u;
  }

  if ((v77 & 0xFF0000) != 0)
  {
    *(a1 + 1108) = 0;
    *(a1 + 1076) = 0u;
    *(a1 + 1092) = 0u;
  }

  if ((v77 & 0x1F000000) != 0)
  {
    *(a1 + 1112) = 0u;
    *(a1 + 1128) = 0u;
  }

  v79 = *(a1 + 8);
  v78 = (a1 + 8);
  v78[1] = 0;
  if (v79)
  {

    return sub_1957EA8(v78);
  }

  return result;
}

char *sub_133CB18(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x800000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 968);
    *a2 = 8;
    a2[1] = v7;
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v8 = v7 >> 7;
      a2[2] = v7 >> 7;
      v6 = a2 + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = a2[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = a2 + 2;
    }
  }

  else
  {
    v6 = a2;
  }

  if ((v5 & 0x200) == 0)
  {
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v15 = *(a1 + 864);
    *v6 = 34;
    v16 = *(v15 + 20);
    v6[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v6 + 1);
    }

    else
    {
      v17 = v6 + 2;
    }

    v6 = sub_1337BEC(v15, v17, a3);
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v12 = *(a1 + 856);
  *v6 = 18;
  v13 = *(v12 + 44);
  v6[1] = v13;
  if (v13 > 0x7F)
  {
    v14 = sub_19575D0(v13, v6 + 1);
  }

  else
  {
    v14 = v6 + 2;
  }

  v6 = sub_16E5070(v12, v14, a3);
  if ((v5 & 0x400) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((v5 & 0x1000000) == 0)
  {
LABEL_13:
    v11 = v6;
    goto LABEL_33;
  }

LABEL_26:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v18 = *(a1 + 976);
  *v6 = 40;
  v6[1] = v18;
  if (v18 > 0x7F)
  {
    v6[1] = v18 | 0x80;
    v19 = v18 >> 7;
    v6[2] = v18 >> 7;
    v11 = v6 + 3;
    if (v18 >= 0x4000)
    {
      LOBYTE(v6) = v6[2];
      do
      {
        *(v11 - 1) = v6 | 0x80;
        v6 = (v19 >> 7);
        *v11++ = v19 >> 7;
        v20 = v19 >> 14;
        v19 >>= 7;
      }

      while (v20);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

LABEL_33:
  if ((v5 & 0x4000000) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v22 = *(a1 + 992);
    *v11 = 48;
    v11[1] = v22;
    if (v22 > 0x7F)
    {
      v11[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v11[2] = v22 >> 7;
      v21 = v11 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
        do
        {
          *(v21 - 1) = v11 | 0x80;
          v11 = (v23 >> 7);
          *v21++ = v23 >> 7;
          v24 = v23 >> 14;
          v23 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v21 = v11 + 2;
    }
  }

  else
  {
    v21 = v11;
  }

  if ((v5 & 0x8000000) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v25 = *(a1 + 996);
    *v21 = 56;
    v21[1] = v25;
    v21 += 2;
  }

  v26 = *(a1 + 32);
  if (v26 >= 1)
  {
    v27 = 0;
    v28 = 8 * v26;
    do
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v29 = *(*(a1 + 40) + v27);
      *v21 = 65;
      *(v21 + 1) = v29;
      v21 += 9;
      v27 += 8;
    }

    while (v28 != v27);
  }

  if ((v5 & 0x10000000) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v30 = *(a1 + 997);
    *v21 = 72;
    v21[1] = v30;
    v21 += 2;
  }

  v31 = *(a1 + 48);
  if (v31 >= 1)
  {
    v32 = 0;
    v33 = 8 * v31;
    do
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v34 = *(*(a1 + 56) + v32);
      *v21 = 81;
      *(v21 + 1) = v34;
      v21 += 9;
      v32 += 8;
    }

    while (v33 != v32);
  }

  if ((v5 & 0x2000000) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v35 = *(a1 + 984);
    *v21 = 89;
    *(v21 + 1) = v35;
    v21 += 9;
  }

  v36 = *(a1 + 72);
  if (v36)
  {
    for (i = 0; i != v36; ++i)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v38 = *(*(a1 + 80) + 8 * i + 8);
      *v21 = 98;
      v39 = *(v38 + 32);
      v21[1] = v39;
      if (v39 > 0x7F)
      {
        v40 = sub_19575D0(v39, v21 + 1);
      }

      else
      {
        v40 = v21 + 2;
      }

      v21 = sub_15BBE78(v38, v40, a3);
    }
  }

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v41 = *(a1 + 872);
    *v21 = 106;
    v42 = *(v41 + 20);
    v21[1] = v42;
    if (v42 > 0x7F)
    {
      v43 = sub_19575D0(v42, v21 + 1);
    }

    else
    {
      v43 = v21 + 2;
    }

    v21 = sub_15B8488(v41, v43, a3);
  }

  if (v5 < 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v44 = *(a1 + 1000);
    *v21 = 113;
    *(v21 + 1) = v44;
    v21 += 9;
  }

  v45 = *(a1 + 20);
  if (v45)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v47 = *(a1 + 1008);
    *v21 = 120;
    v21[1] = v47;
    if (v47 > 0x7F)
    {
      v21[1] = v47 | 0x80;
      v48 = v47 >> 7;
      v21[2] = v47 >> 7;
      v46 = v21 + 3;
      if (v47 >= 0x4000)
      {
        LOBYTE(v21) = v21[2];
        do
        {
          *(v46 - 1) = v21 | 0x80;
          v21 = (v48 >> 7);
          *v46++ = v48 >> 7;
          v49 = v48 >> 14;
          v48 >>= 7;
        }

        while (v49);
      }
    }

    else
    {
      v46 = v21 + 2;
    }
  }

  else
  {
    v46 = v21;
  }

  if ((v45 & 2) != 0)
  {
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v51 = *(a1 + 1016);
    *v46 = 384;
    v46[2] = v51;
    if (v51 > 0x7F)
    {
      v46[2] = v51 | 0x80;
      v52 = v51 >> 7;
      v46[3] = v51 >> 7;
      v50 = v46 + 4;
      if (v51 >= 0x4000)
      {
        LOBYTE(v46) = v46[3];
        do
        {
          *(v50 - 1) = v46 | 0x80;
          v46 = (v52 >> 7);
          *v50++ = v52 >> 7;
          v53 = v52 >> 14;
          v52 >>= 7;
        }

        while (v53);
      }
    }

    else
    {
      v50 = v46 + 3;
    }
  }

  else
  {
    v50 = v46;
  }

  v54 = *(a1 + 88);
  if (v54 < 1)
  {
    v57 = v50;
  }

  else
  {
    for (j = 0; j != v54; ++j)
    {
      if (*a3 <= v50)
      {
        v50 = sub_225EB68(a3, v50);
      }

      v56 = *(*(a1 + 96) + 8 * j);
      *v50 = 392;
      v50[2] = v56;
      if (v56 > 0x7F)
      {
        v50[2] = v56 | 0x80;
        v58 = v56 >> 7;
        v50[3] = v56 >> 7;
        v57 = v50 + 4;
        if (v56 >= 0x4000)
        {
          LOBYTE(v50) = v50[3];
          do
          {
            *(v57 - 1) = v50 | 0x80;
            v50 = (v58 >> 7);
            *v57++ = v58 >> 7;
            v59 = v58 >> 14;
            v58 >>= 7;
          }

          while (v59);
        }
      }

      else
      {
        v57 = v50 + 3;
      }

      v50 = v57;
    }
  }

  if ((*(a1 + 19) & 0x20) != 0)
  {
    if (*a3 <= v57)
    {
      v57 = sub_225EB68(a3, v57);
    }

    v60 = *(a1 + 998);
    *v57 = 400;
    v57[2] = v60;
    v57 += 3;
  }

  v61 = *(a1 + 20);
  if ((v61 & 4) != 0)
  {
    if (*a3 <= v57)
    {
      v57 = sub_225EB68(a3, v57);
    }

    v62 = *(a1 + 1024);
    *v57 = 409;
    *(v57 + 2) = v62;
    v57 += 10;
  }

  if ((v61 & 8) != 0)
  {
    if (*a3 <= v57)
    {
      v57 = sub_225EB68(a3, v57);
    }

    v63 = *(a1 + 1032);
    *v57 = 417;
    *(v57 + 2) = v63;
    v57 += 10;
  }

  if ((*(a1 + 19) & 0x40) != 0)
  {
    if (*a3 <= v57)
    {
      v57 = sub_225EB68(a3, v57);
    }

    v64 = *(a1 + 999);
    *v57 = 424;
    v57[2] = v64;
    v57 += 3;
  }

  v65 = *(a1 + 20);
  if ((v65 & 0x10) != 0)
  {
    if (*a3 <= v57)
    {
      v57 = sub_225EB68(a3, v57);
    }

    v66 = *(a1 + 1040);
    *v57 = 433;
    *(v57 + 2) = v66;
    v57 += 10;
  }

  if ((v65 & 0x20) != 0)
  {
    if (*a3 <= v57)
    {
      v57 = sub_225EB68(a3, v57);
    }

    v68 = *(a1 + 1048);
    *v57 = 440;
    v57[2] = v68;
    if (v68 > 0x7F)
    {
      v57[2] = v68 | 0x80;
      v69 = v68 >> 7;
      v57[3] = v68 >> 7;
      v67 = v57 + 4;
      if (v68 >= 0x4000)
      {
        LOBYTE(v70) = v57[3];
        do
        {
          *(v67 - 1) = v70 | 0x80;
          v70 = v69 >> 7;
          *v67++ = v69 >> 7;
          v71 = v69 >> 14;
          v69 >>= 7;
        }

        while (v71);
      }
    }

    else
    {
      v67 = v57 + 3;
    }
  }

  else
  {
    v67 = v57;
  }

  v72 = *(a1 + 16);
  if (v72)
  {
    v67 = sub_128AEEC(a3, 24, *(a1 + 784) & 0xFFFFFFFFFFFFFFFELL, v67);
  }

  v73 = *(a1 + 112);
  if (v73 >= 1)
  {
    v74 = 8;
    do
    {
      v75 = *(*(a1 + 120) + v74);
      v76 = *(v75 + 23);
      if (v76 < 0 && (v76 = v75[1], v76 > 127) || (*a3 - v67 + 13) < v76)
      {
        v67 = sub_1957480(a3, 25, v75, v67);
      }

      else
      {
        *v67 = 458;
        v67[2] = v76;
        if (*(v75 + 23) < 0)
        {
          v75 = *v75;
        }

        v77 = v67 + 3;
        memcpy(v67 + 3, v75, v76);
        v67 = &v77[v76];
      }

      v74 += 8;
      --v73;
    }

    while (v73);
  }

  v78 = *(a1 + 136);
  if (v78 >= 1)
  {
    v79 = 8;
    do
    {
      v80 = *(*(a1 + 144) + v79);
      v81 = *(v80 + 23);
      if (v81 < 0 && (v81 = v80[1], v81 > 127) || (*a3 - v67 + 13) < v81)
      {
        v67 = sub_1957480(a3, 26, v80, v67);
      }

      else
      {
        *v67 = 466;
        v67[2] = v81;
        if (*(v80 + 23) < 0)
        {
          v80 = *v80;
        }

        v82 = v67 + 3;
        memcpy(v67 + 3, v80, v81);
        v67 = &v82[v81];
      }

      v79 += 8;
      --v78;
    }

    while (v78);
  }

  v83 = *(a1 + 160);
  if (v83)
  {
    for (k = 0; k != v83; ++k)
    {
      if (*a3 <= v67)
      {
        v67 = sub_225EB68(a3, v67);
      }

      v85 = *(*(a1 + 168) + 8 * k + 8);
      *v67 = 474;
      v86 = *(v85 + 20);
      v67[2] = v86;
      if (v86 > 0x7F)
      {
        v87 = sub_19575D0(v86, v67 + 2);
      }

      else
      {
        v87 = v67 + 3;
      }

      v67 = sub_157926C(v85, v87, a3);
    }
  }

  v88 = *(a1 + 184);
  if (v88)
  {
    for (m = 0; m != v88; ++m)
    {
      if (*a3 <= v67)
      {
        v67 = sub_225EB68(a3, v67);
      }

      v90 = *(*(a1 + 192) + 8 * m + 8);
      *v67 = 482;
      v91 = *(v90 + 20);
      v67[2] = v91;
      if (v91 > 0x7F)
      {
        v92 = sub_19575D0(v91, v67 + 2);
      }

      else
      {
        v92 = v67 + 3;
      }

      v67 = sub_1338190(v90, v92, a3);
    }
  }

  v93 = *(a1 + 208);
  if (v93 >= 1)
  {
    v94 = 8;
    do
    {
      v95 = *(*(a1 + 216) + v94);
      v96 = *(v95 + 23);
      if (v96 < 0 && (v96 = v95[1], v96 > 127) || (*a3 - v67 + 13) < v96)
      {
        v67 = sub_1957480(a3, 29, v95, v67);
      }

      else
      {
        *v67 = 490;
        v67[2] = v96;
        if (*(v95 + 23) < 0)
        {
          v95 = *v95;
        }

        v97 = v67 + 3;
        memcpy(v67 + 3, v95, v96);
        v67 = &v97[v96];
      }

      v94 += 8;
      --v93;
    }

    while (v93);
  }

  if ((v72 & 0x1000) != 0)
  {
    if (*a3 <= v67)
    {
      v67 = sub_225EB68(a3, v67);
    }

    v98 = *(a1 + 880);
    *v67 = 498;
    v99 = *(v98 + 20);
    v67[2] = v99;
    if (v99 > 0x7F)
    {
      v100 = sub_19575D0(v99, v67 + 2);
    }

    else
    {
      v100 = v67 + 3;
    }

    v67 = sub_16F04D8(v98, v100, a3);
  }

  v101 = *(a1 + 232);
  if (v101)
  {
    for (n = 0; n != v101; ++n)
    {
      if (*a3 <= v67)
      {
        v67 = sub_225EB68(a3, v67);
      }

      v103 = *(*(a1 + 240) + 8 * n + 8);
      *v67 = 506;
      v104 = *(v103 + 56);
      v67[2] = v104;
      if (v104 > 0x7F)
      {
        v105 = sub_19575D0(v104, v67 + 2);
      }

      else
      {
        v105 = v67 + 3;
      }

      v67 = sub_15317E4(v103, v105, a3);
    }
  }

  if ((v72 & 0x2000) != 0)
  {
    if (*a3 <= v67)
    {
      v67 = sub_225EB68(a3, v67);
    }

    v106 = *(a1 + 888);
    *v67 = 642;
    v107 = *(v106 + 20);
    v67[2] = v107;
    if (v107 > 0x7F)
    {
      v108 = sub_19575D0(v107, v67 + 2);
    }

    else
    {
      v108 = v67 + 3;
    }

    v67 = sub_14F6BD8(v106, v108, a3);
  }

  if ((v72 & 2) != 0)
  {
    v67 = sub_128AEEC(a3, 33, *(a1 + 792) & 0xFFFFFFFFFFFFFFFELL, v67);
  }

  v109 = *(a1 + 20);
  if ((v109 & 0x40) != 0)
  {
    if (*a3 <= v67)
    {
      v67 = sub_225EB68(a3, v67);
    }

    v111 = *(a1 + 1052);
    *v67 = 656;
    v67[2] = v111;
    v67 += 3;
    if ((v109 & 0x80) == 0)
    {
LABEL_219:
      if ((v109 & 0x100) == 0)
      {
        goto LABEL_220;
      }

LABEL_228:
      if (*a3 <= v67)
      {
        v67 = sub_225EB68(a3, v67);
      }

      v113 = *(a1 + 1054);
      *v67 = 672;
      v67[2] = v113;
      v67 += 3;
      if ((v109 & 0x400) == 0)
      {
        goto LABEL_221;
      }

      goto LABEL_231;
    }
  }

  else if ((v109 & 0x80) == 0)
  {
    goto LABEL_219;
  }

  if (*a3 <= v67)
  {
    v67 = sub_225EB68(a3, v67);
  }

  v112 = *(a1 + 1053);
  *v67 = 664;
  v67[2] = v112;
  v67 += 3;
  if ((v109 & 0x100) != 0)
  {
    goto LABEL_228;
  }

LABEL_220:
  if ((v109 & 0x400) == 0)
  {
LABEL_221:
    v110 = v67;
    goto LABEL_238;
  }

LABEL_231:
  if (*a3 <= v67)
  {
    v67 = sub_225EB68(a3, v67);
  }

  v114 = *(a1 + 1056);
  *v67 = 680;
  v67[2] = v114;
  if (v114 > 0x7F)
  {
    v67[2] = v114 | 0x80;
    v115 = v114 >> 7;
    v67[3] = v114 >> 7;
    v110 = v67 + 4;
    if (v114 >= 0x4000)
    {
      LOBYTE(v116) = v67[3];
      do
      {
        *(v110 - 1) = v116 | 0x80;
        v116 = v115 >> 7;
        *v110++ = v115 >> 7;
        v117 = v115 >> 14;
        v115 >>= 7;
      }

      while (v117);
    }
  }

  else
  {
    v110 = v67 + 3;
  }

LABEL_238:
  v118 = *(a1 + 256);
  if (v118)
  {
    for (ii = 0; ii != v118; ++ii)
    {
      if (*a3 <= v110)
      {
        v110 = sub_225EB68(a3, v110);
      }

      v120 = *(*(a1 + 264) + 8 * ii + 8);
      *v110 = 690;
      v121 = *(v120 + 40);
      v110[2] = v121;
      if (v121 > 0x7F)
      {
        v122 = sub_19575D0(v121, v110 + 2);
      }

      else
      {
        v122 = v110 + 3;
      }

      v110 = sub_1342138(v120, v122, a3);
    }
  }

  if ((*(a1 + 17) & 0x40) != 0)
  {
    if (*a3 <= v110)
    {
      v110 = sub_225EB68(a3, v110);
    }

    v123 = *(a1 + 896);
    *v110 = 698;
    v124 = *(v123 + 20);
    v110[2] = v124;
    if (v124 > 0x7F)
    {
      v125 = sub_19575D0(v124, v110 + 2);
    }

    else
    {
      v125 = v110 + 3;
    }

    v110 = sub_1338FA0(v123, v125, a3);
  }

  v126 = *(a1 + 20);
  if ((v126 & 0x800) != 0)
  {
    if (*a3 <= v110)
    {
      v110 = sub_225EB68(a3, v110);
    }

    v128 = *(a1 + 1064);
    *v110 = 704;
    v110[2] = v128;
    if (v128 > 0x7F)
    {
      v110[2] = v128 | 0x80;
      v129 = v128 >> 7;
      v110[3] = v128 >> 7;
      v127 = v110 + 4;
      if (v128 >= 0x4000)
      {
        LOBYTE(v110) = v110[3];
        do
        {
          *(v127 - 1) = v110 | 0x80;
          v110 = (v129 >> 7);
          *v127++ = v129 >> 7;
          v130 = v129 >> 14;
          v129 >>= 7;
        }

        while (v130);
      }
    }

    else
    {
      v127 = v110 + 3;
    }
  }

  else
  {
    v127 = v110;
  }

  if ((v126 & 0x200) != 0)
  {
    if (*a3 <= v127)
    {
      v127 = sub_225EB68(a3, v127);
    }

    v131 = *(a1 + 1055);
    *v127 = 712;
    v127[2] = v131;
    v127 += 3;
  }

  if ((v126 & 0x1000) != 0)
  {
    if (*a3 <= v127)
    {
      v127 = sub_225EB68(a3, v127);
    }

    v132 = *(a1 + 1072);
    *v127 = 720;
    v127[2] = v132;
    v127 += 3;
  }

  v133 = *(a1 + 16);
  if ((v133 & 4) != 0)
  {
    v127 = sub_128AEEC(a3, 43, *(a1 + 800) & 0xFFFFFFFFFFFFFFFELL, v127);
  }

  v134 = *(a1 + 280);
  if (v134 >= 1)
  {
    v135 = 8;
    do
    {
      v136 = *(*(a1 + 288) + v135);
      v137 = *(v136 + 23);
      if (v137 < 0 && (v137 = v136[1], v137 > 127) || (*a3 - v127 + 13) < v137)
      {
        v127 = sub_1957480(a3, 44, v136, v127);
      }

      else
      {
        *v127 = 738;
        v127[2] = v137;
        if (*(v136 + 23) < 0)
        {
          v136 = *v136;
        }

        v138 = v127 + 3;
        memcpy(v127 + 3, v136, v137);
        v127 = &v138[v137];
      }

      v135 += 8;
      --v134;
    }

    while (v134);
  }

  if ((v133 & 0x8000) != 0)
  {
    if (*a3 <= v127)
    {
      v127 = sub_225EB68(a3, v127);
    }

    v139 = *(a1 + 904);
    *v127 = 746;
    v140 = *(v139 + 20);
    v127[2] = v140;
    if (v140 > 0x7F)
    {
      v141 = sub_19575D0(v140, v127 + 2);
    }

    else
    {
      v141 = v127 + 3;
    }

    v127 = sub_14D9394(v139, v141, a3);
  }

  v142 = *(a1 + 304);
  if (v142)
  {
    for (jj = 0; jj != v142; ++jj)
    {
      if (*a3 <= v127)
      {
        v127 = sub_225EB68(a3, v127);
      }

      v144 = *(*(a1 + 312) + 8 * jj + 8);
      *v127 = 754;
      v145 = *(v144 + 40);
      v127[2] = v145;
      if (v145 > 0x7F)
      {
        v146 = sub_19575D0(v145, v127 + 2);
      }

      else
      {
        v146 = v127 + 3;
      }

      v127 = sub_1342708(v144, v146, a3);
    }
  }

  if ((v133 & 8) != 0)
  {
    v127 = sub_128AEEC(a3, 47, *(a1 + 808) & 0xFFFFFFFFFFFFFFFELL, v127);
  }

  v147 = *(a1 + 328);
  if (v147 >= 1)
  {
    v148 = 8;
    do
    {
      v149 = *(*(a1 + 336) + v148);
      v150 = *(v149 + 23);
      if (v150 < 0 && (v150 = v149[1], v150 > 127) || (*a3 - v127 + 13) < v150)
      {
        v127 = sub_1957480(a3, 48, v149, v127);
      }

      else
      {
        *v127 = 898;
        v127[2] = v150;
        if (*(v149 + 23) < 0)
        {
          v149 = *v149;
        }

        v151 = v127 + 3;
        memcpy(v127 + 3, v149, v150);
        v127 = &v151[v150];
      }

      v148 += 8;
      --v147;
    }

    while (v147);
  }

  v152 = *(a1 + 352);
  if (v152 >= 1)
  {
    v153 = 8;
    do
    {
      v154 = *(*(a1 + 360) + v153);
      v155 = *(v154 + 23);
      if (v155 < 0 && (v155 = v154[1], v155 > 127) || (*a3 - v127 + 13) < v155)
      {
        v127 = sub_1957480(a3, 49, v154, v127);
      }

      else
      {
        *v127 = 906;
        v127[2] = v155;
        if (*(v154 + 23) < 0)
        {
          v154 = *v154;
        }

        v156 = v127 + 3;
        memcpy(v127 + 3, v154, v155);
        v127 = &v156[v155];
      }

      v153 += 8;
      --v152;
    }

    while (v152);
  }

  if ((v133 & 0x10) != 0)
  {
    v127 = sub_128AEEC(a3, 50, *(a1 + 816) & 0xFFFFFFFFFFFFFFFELL, v127);
  }

  if ((v133 & 0x20) != 0)
  {
    v127 = sub_128AEEC(a3, 51, *(a1 + 824) & 0xFFFFFFFFFFFFFFFELL, v127);
  }

  v157 = *(a1 + 20);
  if ((v157 & 0x2000) != 0)
  {
    if (*a3 <= v127)
    {
      v127 = sub_225EB68(a3, v127);
    }

    v158 = *(a1 + 1073);
    *v127 = 928;
    v127[2] = v158;
    v127 += 3;
  }

  if ((v157 & 0x4000) != 0)
  {
    if (*a3 <= v127)
    {
      v127 = sub_225EB68(a3, v127);
    }

    v159 = *(a1 + 1074);
    *v127 = 936;
    v127[2] = v159;
    v127 += 3;
  }

  v160 = *(a1 + 368);
  if (v160 < 1)
  {
    v163 = v127;
  }

  else
  {
    for (kk = 0; kk != v160; ++kk)
    {
      if (*a3 <= v127)
      {
        v127 = sub_225EB68(a3, v127);
      }

      v162 = *(*(a1 + 376) + 8 * kk);
      *v127 = 944;
      v127[2] = v162;
      if (v162 > 0x7F)
      {
        v127[2] = v162 | 0x80;
        v164 = v162 >> 7;
        v127[3] = v162 >> 7;
        v163 = v127 + 4;
        if (v162 >= 0x4000)
        {
          LOBYTE(v165) = v127[3];
          do
          {
            *(v163 - 1) = v165 | 0x80;
            v165 = v164 >> 7;
            *v163++ = v164 >> 7;
            v166 = v164 >> 14;
            v164 >>= 7;
          }

          while (v166);
        }
      }

      else
      {
        v163 = v127 + 3;
      }

      v127 = v163;
    }
  }

  if ((*(a1 + 16) & 0x40) != 0)
  {
    v163 = sub_128AEEC(a3, 55, *(a1 + 832) & 0xFFFFFFFFFFFFFFFELL, v163);
  }

  if ((*(a1 + 21) & 0x80) != 0)
  {
    if (*a3 <= v163)
    {
      v163 = sub_225EB68(a3, v163);
    }

    v167 = *(a1 + 1075);
    *v163 = 960;
    v163[2] = v167;
    v163 += 3;
  }

  v168 = *(a1 + 16);
  if ((v168 & 0x10000) != 0)
  {
    if (*a3 <= v163)
    {
      v163 = sub_225EB68(a3, v163);
    }

    v169 = *(a1 + 912);
    *v163 = 970;
    v170 = *(v169 + 184);
    v163[2] = v170;
    if (v170 > 0x7F)
    {
      v171 = sub_19575D0(v170, v163 + 2);
    }

    else
    {
      v171 = v163 + 3;
    }

    v163 = sub_133B158(v169, v171, a3);
  }

  if ((v168 & 0x20000) != 0)
  {
    if (*a3 <= v163)
    {
      v163 = sub_225EB68(a3, v163);
    }

    v172 = *(a1 + 920);
    *v163 = 978;
    v173 = *(v172 + 20);
    v163[2] = v173;
    if (v173 > 0x7F)
    {
      v174 = sub_19575D0(v173, v163 + 2);
    }

    else
    {
      v174 = v163 + 3;
    }

    v163 = sub_16EBD38(v172, v174, a3);
  }

  v175 = *(a1 + 20);
  if ((v175 & 0x10000) != 0)
  {
    if (*a3 <= v163)
    {
      v163 = sub_225EB68(a3, v163);
    }

    v176 = *(a1 + 1076);
    *v163 = 984;
    v163[2] = v176;
    v163 += 3;
    if ((v175 & 0x20000) == 0)
    {
LABEL_368:
      if ((v175 & 0x40000) == 0)
      {
        goto LABEL_379;
      }

      goto LABEL_376;
    }
  }

  else if ((v175 & 0x20000) == 0)
  {
    goto LABEL_368;
  }

  if (*a3 <= v163)
  {
    v163 = sub_225EB68(a3, v163);
  }

  v177 = *(a1 + 1077);
  *v163 = 992;
  v163[2] = v177;
  v163 += 3;
  if ((v175 & 0x40000) != 0)
  {
LABEL_376:
    if (*a3 <= v163)
    {
      v163 = sub_225EB68(a3, v163);
    }

    v178 = *(a1 + 1078);
    *v163 = 1000;
    v163[2] = v178;
    v163 += 3;
  }

LABEL_379:
  if ((*(a1 + 16) & 0x80) != 0)
  {
    v163 = sub_128AEEC(a3, 62, *(a1 + 840) & 0xFFFFFFFFFFFFFFFELL, v163);
  }

  v179 = *(a1 + 392);
  if (v179)
  {
    for (mm = 0; mm != v179; ++mm)
    {
      if (*a3 <= v163)
      {
        v163 = sub_225EB68(a3, v163);
      }

      v181 = *(*(a1 + 400) + 8 * mm + 8);
      *v163 = 1018;
      v182 = *(v181 + 20);
      v163[2] = v182;
      if (v182 > 0x7F)
      {
        v183 = sub_19575D0(v182, v163 + 2);
      }

      else
      {
        v183 = v163 + 3;
      }

      v163 = sub_14F04AC(v181, v183, a3);
    }
  }

  if ((*(a1 + 22) & 0x10) != 0)
  {
    if (*a3 <= v163)
    {
      v163 = sub_225EB68(a3, v163);
    }

    v184 = *(a1 + 1080);
    *v163 = 1153;
    *(v163 + 2) = v184;
    v163 += 10;
  }

  v185 = *(a1 + 416);
  if (v185)
  {
    for (nn = 0; nn != v185; ++nn)
    {
      if (*a3 <= v163)
      {
        v163 = sub_225EB68(a3, v163);
      }

      v187 = *(*(a1 + 424) + 8 * nn + 8);
      *v163 = 1162;
      v188 = *(v187 + 44);
      v163[2] = v188;
      if (v188 > 0x7F)
      {
        v189 = sub_19575D0(v188, v163 + 2);
      }

      else
      {
        v189 = v163 + 3;
      }

      v163 = sub_1521D28(v187, v189, a3);
    }
  }

  v190 = *(a1 + 432);
  if (v190 < 1)
  {
    v193 = v163;
  }

  else
  {
    for (i1 = 0; i1 != v190; ++i1)
    {
      if (*a3 <= v163)
      {
        v163 = sub_225EB68(a3, v163);
      }

      v192 = *(*(a1 + 440) + 8 * i1);
      *v163 = 1168;
      v163[2] = v192;
      if (v192 > 0x7F)
      {
        v163[2] = v192 | 0x80;
        v194 = v192 >> 7;
        v163[3] = v192 >> 7;
        v193 = v163 + 4;
        if (v192 >= 0x4000)
        {
          LOBYTE(v163) = v163[3];
          do
          {
            *(v193 - 1) = v163 | 0x80;
            v163 = (v194 >> 7);
            *v193++ = v194 >> 7;
            v195 = v194 >> 14;
            v194 >>= 7;
          }

          while (v195);
        }
      }

      else
      {
        v193 = v163 + 3;
      }

      v163 = v193;
    }
  }

  if ((*(a1 + 18) & 4) != 0)
  {
    if (*a3 <= v193)
    {
      v193 = sub_225EB68(a3, v193);
    }

    v196 = *(a1 + 928);
    *v193 = 1178;
    v197 = *(v196 + 20);
    v193[2] = v197;
    if (v197 > 0x7F)
    {
      v198 = sub_19575D0(v197, v193 + 2);
    }

    else
    {
      v198 = v193 + 3;
    }

    v193 = sub_1337BEC(v196, v198, a3);
  }

  v199 = *(a1 + 456);
  if (v199)
  {
    for (i2 = 0; i2 != v199; ++i2)
    {
      if (*a3 <= v193)
      {
        v193 = sub_225EB68(a3, v193);
      }

      v201 = *(*(a1 + 464) + 8 * i2 + 8);
      *v193 = 1186;
      v202 = *(v201 + 20);
      v193[2] = v202;
      if (v202 > 0x7F)
      {
        v203 = sub_19575D0(v202, v193 + 2);
      }

      else
      {
        v203 = v193 + 3;
      }

      v193 = sub_1338190(v201, v203, a3);
    }
  }

  v204 = *(a1 + 480);
  if (v204)
  {
    for (i3 = 0; i3 != v204; ++i3)
    {
      if (*a3 <= v193)
      {
        v193 = sub_225EB68(a3, v193);
      }

      v206 = *(*(a1 + 488) + 8 * i3 + 8);
      *v193 = 1194;
      v207 = *(v206 + 20);
      v193[2] = v207;
      if (v207 > 0x7F)
      {
        v208 = sub_19575D0(v207, v193 + 2);
      }

      else
      {
        v208 = v193 + 3;
      }

      v193 = sub_13359D4(v206, v208, a3);
    }
  }

  v209 = *(a1 + 504);
  if (v209)
  {
    for (i4 = 0; i4 != v209; ++i4)
    {
      if (*a3 <= v193)
      {
        v193 = sub_225EB68(a3, v193);
      }

      v211 = *(*(a1 + 512) + 8 * i4 + 8);
      *v193 = 1202;
      v212 = *(v211 + 20);
      v193[2] = v212;
      if (v212 > 0x7F)
      {
        v213 = sub_19575D0(v212, v193 + 2);
      }

      else
      {
        v213 = v193 + 3;
      }

      v193 = sub_13359D4(v211, v213, a3);
    }
  }

  v214 = *(a1 + 528);
  if (v214)
  {
    for (i5 = 0; i5 != v214; ++i5)
    {
      if (*a3 <= v193)
      {
        v193 = sub_225EB68(a3, v193);
      }

      v216 = *(*(a1 + 536) + 8 * i5 + 8);
      *v193 = 1210;
      v217 = *(v216 + 20);
      v193[2] = v217;
      if (v217 > 0x7F)
      {
        v218 = sub_19575D0(v217, v193 + 2);
      }

      else
      {
        v218 = v193 + 3;
      }

      v193 = sub_13359D4(v216, v218, a3);
    }
  }

  v219 = *(a1 + 552);
  if (v219)
  {
    for (i6 = 0; i6 != v219; ++i6)
    {
      if (*a3 <= v193)
      {
        v193 = sub_225EB68(a3, v193);
      }

      v221 = *(*(a1 + 560) + 8 * i6 + 8);
      *v193 = 1218;
      v222 = *(v221 + 20);
      v193[2] = v222;
      if (v222 > 0x7F)
      {
        v223 = sub_19575D0(v222, v193 + 2);
      }

      else
      {
        v223 = v193 + 3;
      }

      v193 = sub_13359D4(v221, v223, a3);
    }
  }

  v224 = *(a1 + 576);
  if (v224)
  {
    for (i7 = 0; i7 != v224; ++i7)
    {
      if (*a3 <= v193)
      {
        v193 = sub_225EB68(a3, v193);
      }

      v226 = *(*(a1 + 584) + 8 * i7 + 8);
      *v193 = 1226;
      v227 = *(v226 + 20);
      v193[2] = v227;
      if (v227 > 0x7F)
      {
        v228 = sub_19575D0(v227, v193 + 2);
      }

      else
      {
        v228 = v193 + 3;
      }

      v193 = sub_1335EDC(v226, v228, a3);
    }
  }

  v229 = *(a1 + 20);
  if ((v229 & 0x200000) != 0)
  {
    if (*a3 <= v193)
    {
      v193 = sub_225EB68(a3, v193);
    }

    v230 = *(a1 + 1088);
    *v193 = 1233;
    *(v193 + 2) = v230;
    v193 += 10;
  }

  if ((v229 & 0x400000) != 0)
  {
    if (*a3 <= v193)
    {
      v193 = sub_225EB68(a3, v193);
    }

    v231 = *(a1 + 1096);
    *v193 = 1241;
    *(v193 + 2) = v231;
    v193 += 10;
  }

  v232 = *(a1 + 600);
  if (v232)
  {
    for (i8 = 0; i8 != v232; ++i8)
    {
      if (*a3 <= v193)
      {
        v193 = sub_225EB68(a3, v193);
      }

      v234 = *(*(a1 + 608) + 8 * i8 + 8);
      *v193 = 1250;
      v235 = *(v234 + 20);
      v193[2] = v235;
      if (v235 > 0x7F)
      {
        v236 = sub_19575D0(v235, v193 + 2);
      }

      else
      {
        v236 = v193 + 3;
      }

      v193 = sub_167C684(v234, v236, a3);
    }
  }

  if ((v229 & 0x4000000) != 0)
  {
    if (*a3 <= v193)
    {
      v193 = sub_225EB68(a3, v193);
    }

    v238 = *(a1 + 1128);
    *v193 = 1256;
    v193[2] = v238;
    if (v238 > 0x7F)
    {
      v193[2] = v238 | 0x80;
      v239 = v238 >> 7;
      v193[3] = v238 >> 7;
      v237 = v193 + 4;
      if (v238 >= 0x4000)
      {
        LOBYTE(v193) = v193[3];
        do
        {
          *(v237 - 1) = v193 | 0x80;
          v193 = (v239 >> 7);
          *v237++ = v239 >> 7;
          v240 = v239 >> 14;
          v239 >>= 7;
        }

        while (v240);
      }
    }

    else
    {
      v237 = v193 + 3;
    }
  }

  else
  {
    v237 = v193;
  }

  v241 = *(a1 + 616);
  if (v241 < 1)
  {
    v244 = v237;
  }

  else
  {
    for (i9 = 0; i9 != v241; ++i9)
    {
      if (*a3 <= v237)
      {
        v237 = sub_225EB68(a3, v237);
      }

      v243 = *(*(a1 + 624) + 8 * i9);
      *v237 = 1264;
      v237[2] = v243;
      if (v243 > 0x7F)
      {
        v237[2] = v243 | 0x80;
        v245 = v243 >> 7;
        v237[3] = v243 >> 7;
        v244 = v237 + 4;
        if (v243 >= 0x4000)
        {
          LOBYTE(v237) = v237[3];
          do
          {
            *(v244 - 1) = v237 | 0x80;
            v237 = (v245 >> 7);
            *v244++ = v245 >> 7;
            v246 = v245 >> 14;
            v245 >>= 7;
          }

          while (v246);
        }
      }

      else
      {
        v244 = v237 + 3;
      }

      v237 = v244;
    }
  }

  if ((v229 & 0x800000) != 0)
  {
    if (*a3 <= v244)
    {
      v244 = sub_225EB68(a3, v244);
    }

    v247 = *(a1 + 1104);
    *v244 = 1273;
    *(v244 + 2) = v247;
    v244 += 10;
  }

  if ((v229 & 0x1000000) != 0)
  {
    if (*a3 <= v244)
    {
      v244 = sub_225EB68(a3, v244);
    }

    v248 = *(a1 + 1112);
    *v244 = 1409;
    *(v244 + 2) = v248;
    v244 += 10;
  }

  v249 = *(a1 + 640);
  if (v249)
  {
    for (i10 = 0; i10 != v249; ++i10)
    {
      if (*a3 <= v244)
      {
        v244 = sub_225EB68(a3, v244);
      }

      v251 = *(*(a1 + 648) + 8 * i10 + 8);
      *v244 = 1418;
      v252 = *(v251 + 20);
      v244[2] = v252;
      if (v252 > 0x7F)
      {
        v253 = sub_19575D0(v252, v244 + 2);
      }

      else
      {
        v253 = v244 + 3;
      }

      v244 = sub_1336AF0(v251, v253, a3);
    }
  }

  v254 = *(a1 + 664);
  if (v254)
  {
    for (i11 = 0; i11 != v254; ++i11)
    {
      if (*a3 <= v244)
      {
        v244 = sub_225EB68(a3, v244);
      }

      v256 = *(*(a1 + 672) + 8 * i11 + 8);
      *v244 = 1426;
      v257 = *(v256 + 20);
      v244[2] = v257;
      if (v257 > 0x7F)
      {
        v258 = sub_19575D0(v257, v244 + 2);
      }

      else
      {
        v258 = v244 + 3;
      }

      v244 = sub_1336F8C(v256, v258, a3);
    }
  }

  v259 = *(a1 + 16);
  if ((v259 & 0x80000) != 0)
  {
    if (*a3 <= v244)
    {
      v244 = sub_225EB68(a3, v244);
    }

    v260 = *(a1 + 936);
    *v244 = 1434;
    v261 = *(v260 + 20);
    v244[2] = v261;
    if (v261 > 0x7F)
    {
      v262 = sub_19575D0(v261, v244 + 2);
    }

    else
    {
      v262 = v244 + 3;
    }

    v244 = sub_14D9394(v260, v262, a3);
  }

  v263 = *(a1 + 688);
  if (v263)
  {
    for (i12 = 0; i12 != v263; ++i12)
    {
      if (*a3 <= v244)
      {
        v244 = sub_225EB68(a3, v244);
      }

      v265 = *(*(a1 + 696) + 8 * i12 + 8);
      *v244 = 1442;
      v266 = *(v265 + 20);
      v244[2] = v266;
      if (v266 > 0x7F)
      {
        v267 = sub_19575D0(v266, v244 + 2);
      }

      else
      {
        v267 = v244 + 3;
      }

      v244 = sub_14D9394(v265, v267, a3);
    }
  }

  if ((v259 & 0x100000) != 0)
  {
    if (*a3 <= v244)
    {
      v244 = sub_225EB68(a3, v244);
    }

    v268 = *(a1 + 944);
    *v244 = 1450;
    v269 = *(v268 + 20);
    v244[2] = v269;
    if (v269 > 0x7F)
    {
      v270 = sub_19575D0(v269, v244 + 2);
    }

    else
    {
      v270 = v244 + 3;
    }

    v244 = sub_13374F8(v268, v270, a3);
  }

  v271 = *(a1 + 20);
  if ((v271 & 0x2000000) != 0)
  {
    if (*a3 <= v244)
    {
      v244 = sub_225EB68(a3, v244);
    }

    v273 = *(a1 + 1120);
    *v244 = 1456;
    v244[2] = v273;
    if (v273 > 0x7F)
    {
      v244[2] = v273 | 0x80;
      v274 = v273 >> 7;
      v244[3] = v273 >> 7;
      v272 = v244 + 4;
      if (v273 >= 0x4000)
      {
        LOBYTE(v244) = v244[3];
        do
        {
          *(v272 - 1) = v244 | 0x80;
          v244 = (v274 >> 7);
          *v272++ = v274 >> 7;
          v275 = v274 >> 14;
          v274 >>= 7;
        }

        while (v275);
      }
    }

    else
    {
      v272 = v244 + 3;
    }
  }

  else
  {
    v272 = v244;
  }

  v276 = *(a1 + 704);
  if (v276 < 1)
  {
    v279 = v272;
  }

  else
  {
    for (i13 = 0; i13 != v276; ++i13)
    {
      if (*a3 <= v272)
      {
        v272 = sub_225EB68(a3, v272);
      }

      v278 = *(*(a1 + 712) + 4 * i13);
      *v272 = 1464;
      v272[2] = v278;
      if (v278 > 0x7F)
      {
        v272[2] = v278 | 0x80;
        v280 = v278 >> 7;
        v272[3] = v278 >> 7;
        v279 = v272 + 4;
        if (v278 >= 0x4000)
        {
          LOBYTE(v272) = v272[3];
          do
          {
            *(v279 - 1) = v272 | 0x80;
            v272 = (v280 >> 7);
            *v279++ = v280 >> 7;
            v281 = v280 >> 14;
            v280 >>= 7;
          }

          while (v281);
        }
      }

      else
      {
        v279 = v272 + 3;
      }

      v272 = v279;
    }
  }

  if ((v271 & 0x10000000) != 0)
  {
    if (*a3 <= v279)
    {
      v279 = sub_225EB68(a3, v279);
    }

    v283 = *(a1 + 1136);
    *v279 = 1472;
    v279[2] = v283;
    if (v283 > 0x7F)
    {
      v279[2] = v283 | 0x80;
      v284 = v283 >> 7;
      v279[3] = v283 >> 7;
      v282 = v279 + 4;
      if (v283 >= 0x4000)
      {
        LOBYTE(v285) = v279[3];
        do
        {
          *(v282 - 1) = v285 | 0x80;
          v285 = v284 >> 7;
          *v282++ = v284 >> 7;
          v286 = v284 >> 14;
          v284 >>= 7;
        }

        while (v286);
      }
    }

    else
    {
      v282 = v279 + 3;
    }
  }

  else
  {
    v282 = v279;
  }

  if ((*(a1 + 18) & 0x20) != 0)
  {
    if (*a3 <= v282)
    {
      v282 = sub_225EB68(a3, v282);
    }

    v287 = *(a1 + 952);
    *v282 = 1482;
    v288 = *(v287 + 20);
    v282[2] = v288;
    if (v288 > 0x7F)
    {
      v289 = sub_19575D0(v288, v282 + 2);
    }

    else
    {
      v289 = v282 + 3;
    }

    v282 = sub_14EBB00(v287, v289, a3);
  }

  v290 = *(a1 + 728);
  if (v290)
  {
    for (i14 = 0; i14 != v290; ++i14)
    {
      if (*a3 <= v282)
      {
        v282 = sub_225EB68(a3, v282);
      }

      v292 = *(*(a1 + 736) + 8 * i14 + 8);
      *v282 = 1490;
      v293 = *(v292 + 20);
      v282[2] = v293;
      if (v293 > 0x7F)
      {
        v294 = sub_19575D0(v293, v282 + 2);
      }

      else
      {
        v294 = v282 + 3;
      }

      v282 = sub_150E430(v292, v294, a3);
    }
  }

  if ((*(a1 + 22) & 8) != 0)
  {
    if (*a3 <= v282)
    {
      v282 = sub_225EB68(a3, v282);
    }

    v295 = *(a1 + 1079);
    *v282 = 1496;
    v282[2] = v295;
    v282 += 3;
  }

  v296 = *(a1 + 752);
  if (v296)
  {
    for (i15 = 0; i15 != v296; ++i15)
    {
      if (*a3 <= v282)
      {
        v282 = sub_225EB68(a3, v282);
      }

      v298 = *(*(a1 + 760) + 8 * i15 + 8);
      *v282 = 1506;
      v299 = *(v298 + 20);
      v282[2] = v299;
      if (v299 > 0x7F)
      {
        v300 = sub_19575D0(v299, v282 + 2);
      }

      else
      {
        v300 = v282 + 3;
      }

      v282 = sub_14F2A8C(v298, v300, a3);
    }
  }

  v301 = *(a1 + 16);
  if ((v301 & 0x100) != 0)
  {
    v282 = sub_128AEEC(a3, 93, *(a1 + 848) & 0xFFFFFFFFFFFFFFFELL, v282);
  }

  if ((v301 & 0x400000) != 0)
  {
    if (*a3 <= v282)
    {
      v282 = sub_225EB68(a3, v282);
    }

    v302 = *(a1 + 960);
    *v282 = 1522;
    v303 = *(v302 + 20);
    v282[2] = v303;
    if (v303 > 0x7F)
    {
      v304 = sub_19575D0(v303, v282 + 2);
    }

    else
    {
      v304 = v282 + 3;
    }

    v282 = sub_13366F4(v302, v304, a3);
  }

  v305 = *(a1 + 768);
  if (v305 < 1)
  {
    v308 = v282;
  }

  else
  {
    for (i16 = 0; i16 != v305; ++i16)
    {
      if (*a3 <= v282)
      {
        v282 = sub_225EB68(a3, v282);
      }

      v307 = *(*(a1 + 776) + 8 * i16);
      *v282 = 1528;
      v282[2] = v307;
      if (v307 > 0x7F)
      {
        v282[2] = v307 | 0x80;
        v309 = v307 >> 7;
        v282[3] = v307 >> 7;
        v308 = v282 + 4;
        if (v307 >= 0x4000)
        {
          LOBYTE(v310) = v282[3];
          do
          {
            *(v308 - 1) = v310 | 0x80;
            v310 = v309 >> 7;
            *v308++ = v309 >> 7;
            v311 = v309 >> 14;
            v309 >>= 7;
          }

          while (v311);
        }
      }

      else
      {
        v308 = v282 + 3;
      }

      v282 = v308;
    }
  }

  if ((*(a1 + 23) & 8) != 0)
  {
    if (*a3 <= v308)
    {
      v308 = sub_225EB68(a3, v308);
    }

    v312 = *(a1 + 1132);
    *v308 = 1664;
    v308[2] = v312;
    v308 += 3;
  }

  v313 = *(a1 + 8);
  if ((v313 & 1) == 0)
  {
    return v308;
  }

  v315 = v313 & 0xFFFFFFFFFFFFFFFCLL;
  v316 = *(v315 + 31);
  if (v316 < 0)
  {
    v317 = *(v315 + 8);
    v316 = *(v315 + 16);
  }

  else
  {
    v317 = (v315 + 8);
  }

  if ((*a3 - v308) >= v316)
  {
    v318 = v316;
    memcpy(v308, v317, v316);
    v308 += v318;
    return v308;
  }

  return sub_1957130(a3, v317, v316, v308);
}