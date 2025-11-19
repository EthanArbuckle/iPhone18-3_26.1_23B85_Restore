char *sub_1689308(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v7 = *(a1 + 72);
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

    v4 = sub_17359F4(v7, v9, a3);
  }

  v10 = *(a1 + 32);
  if (v10 >= 1)
  {
    v11 = 8;
    do
    {
      v12 = *(*(a1 + 40) + v11);
      v13 = *(v12 + 23);
      if (v13 < 0 && (v13 = v12[1], v13 > 127) || (*a3 - v4 + 14) < v13)
      {
        v4 = sub_1957480(a3, 4, v12, v4);
      }

      else
      {
        *v4 = 34;
        v4[1] = v13;
        if (*(v12 + 23) < 0)
        {
          v12 = *v12;
        }

        v14 = v4 + 2;
        memcpy(v4 + 2, v12, v13);
        v4 = &v14[v13];
      }

      v11 += 8;
      --v10;
    }

    while (v10);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 5, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v16 = *(a1 + 80);
    *v4 = 48;
    v4[1] = v16;
    if (v16 > 0x7F)
    {
      v4[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v4[2] = v16 >> 7;
      v15 = v4 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v18) = v4[2];
        do
        {
          *(v15 - 1) = v18 | 0x80;
          v18 = v17 >> 7;
          *v15++ = v17 >> 7;
          v19 = v17 >> 14;
          v17 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v15 = v4 + 2;
    }
  }

  else
  {
    v15 = v4;
  }

  if ((v6 & 4) != 0)
  {
    v15 = sub_128AEEC(a3, 7, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v15);
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v15;
  }

  v22 = v20 & 0xFFFFFFFFFFFFFFFCLL;
  v23 = *(v22 + 31);
  if (v23 < 0)
  {
    v24 = *(v22 + 8);
    v23 = *(v22 + 16);
  }

  else
  {
    v24 = (v22 + 8);
  }

  if ((*a3 - v15) >= v23)
  {
    v25 = v23;
    memcpy(v15, v24, v23);
    v15 += v25;
    return v15;
  }

  return sub_1957130(a3, v24, v23, v15);
}

uint64_t sub_16895A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 < 1)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v3 = (*(a1 + 40) + 8);
    v4 = *(a1 + 32);
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

  v8 = *(a1 + 16);
  if ((v8 & 0x1F) != 0)
  {
    if (v8)
    {
      v9 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_11:
        if ((v8 & 4) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

    v12 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
LABEL_12:
      if ((v8 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_24;
    }

LABEL_21:
    v15 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v4 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 8) == 0)
    {
LABEL_13:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }

LABEL_24:
    v18 = sub_1735CC8(*(a1 + 72));
    v4 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_29;
    }

LABEL_25:
    v19 = *(a1 + 80);
    if (v19 < 0)
    {
      v20 = 11;
    }

    else
    {
      v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v20;
  }

LABEL_29:
  v21 = *(a1 + 8);
  if (v21)
  {
    v23 = v21 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v21 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    v4 += v24;
  }

  *(a1 + 20) = v4;
  return v4;
}

uint64_t sub_16897B4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26FD0A0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 64) = &qword_278E990;
  *(result + 72) = 0;
  *(result + 80) = 0;
  return result;
}

uint64_t sub_1689860(uint64_t a1)
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

void sub_1689918(uint64_t a1)
{
  sub_1689860(a1);

  operator delete();
}

uint64_t sub_1689950(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    goto LABEL_11;
  }

  if ((v1 & 1) == 0)
  {
LABEL_5:
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_5;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 2) != 0)
  {
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
  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_16899CC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v21 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v21, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v21 + 1);
    v7 = **v21;
    if (**v21 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v21, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v21 + 2);
      }
    }

    *v21 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = (a1 + 32);
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v16 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v16 = *v16;
      }

      v17 = (a1 + 24);
LABEL_26:
      v19 = sub_194DB04(v17, v16);
      v14 = sub_1958890(v19, *v21, a3);
      goto LABEL_27;
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
        return *v21;
      }

LABEL_33:
      *v21 = 0;
      return *v21;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v21;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_27:
    *v21 = v14;
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  return *v21;
}

char *sub_1689B4C(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1689C34(uint64_t a1)
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

void *sub_1689D20(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_168BC28(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1689DA0(void *a1)
{
  sub_1689D20(a1);

  operator delete();
}

uint64_t sub_1689DD8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1689950(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_1689E54(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  if ((sub_195ADC0(a3, &v19, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v19 + 1;
      v6 = *v19;
      if (*v19 < 0)
      {
        v7 = v6 + (*v5 << 7);
        v6 = v7 - 128;
        if (*v5 < 0)
        {
          v5 = sub_1958824(v19, v7 - 128);
          v6 = v8;
        }

        else
        {
          v5 = v19 + 2;
        }
      }

      v19 = v5;
      if (v6 == 10)
      {
        v12 = v5 - 1;
        while (1)
        {
          v13 = (v12 + 1);
          v19 = v12 + 1;
          v14 = *(a1 + 32);
          if (v14 && (v15 = *(a1 + 24), v15 < *v14))
          {
            *(a1 + 24) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_168A2A0(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_2231558(a3, v16, v13);
          v19 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_23;
          }
        }
      }

      if (!v6 || (v6 & 7) == 4)
      {
        break;
      }

      v10 = *(a1 + 8);
      if (v10)
      {
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v11 = sub_11F1920((a1 + 8));
        v5 = v19;
      }

      v19 = sub_1952690(v6, v11, v5, a3);
      if (!v19)
      {
        return 0;
      }

LABEL_23:
      if (sub_195ADC0(a3, &v19, a3[11].i32[1]))
      {
        return v19;
      }
    }

    if (v5)
    {
      a3[10].i32[0] = v6 - 1;
      return v19;
    }

    return 0;
  }

  return v19;
}

char *sub_1689FE4(uint64_t a1, char *__dst, void *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 32) + 8 * i + 8);
      *__dst = 10;
      v9 = *(v8 + 20);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_1689B4C(v8, v10, a3);
    }
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return __dst;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
  v14 = *(v13 + 31);
  if (v14 < 0)
  {
    v15 = *(v13 + 8);
    v14 = *(v13 + 16);
  }

  else
  {
    v15 = (v13 + 8);
  }

  if (*a3 - __dst >= v14)
  {
    v16 = v14;
    memcpy(__dst, v15, v14);
    __dst += v16;
    return __dst;
  }

  return sub_1957130(a3, v15, v14, __dst);
}

uint64_t sub_168A124(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_1689C34(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(a1 + 40) = v2;
  return v2;
}

std::string *sub_168A1CC(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_168BCAC(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
    v7 = LODWORD(v3[1].__r_.__value_.__l.__data_) + v4;
    LODWORD(v3[1].__r_.__value_.__l.__data_) = v7;
    size = v3[1].__r_.__value_.__l.__size_;
    if (*size < v7)
    {
      *size = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_168A2A0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26FD120;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_168A324(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26FD1A0;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_168A3C4(uint64_t a1)
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

  if (a1 != &off_277C938)
  {
    if (*(a1 + 24))
    {
      sub_17C4A2C();
      operator delete();
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      sub_14F5208(v5);
      operator delete();
    }
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

void sub_168A494(uint64_t a1)
{
  sub_168A3C4(a1);

  operator delete();
}

uint64_t sub_168A4CC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_179A7D4(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_14F5244(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_168A53C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v22 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v22, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v22 + 1;
    v7 = *v22;
    if (*v22 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v22, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v22 + 2;
      }
    }

    v22 = v6;
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

          v15 = sub_1528AA8(v17);
          *(a1 + 32) = v15;
          v6 = v22;
        }

        v14 = sub_2217968(a3, v15, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 24);
      if (!v18)
      {
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v18 = sub_185F924(v20);
        *(a1 + 24) = v18;
        v6 = v22;
      }

      v14 = sub_22315E8(a3, v18, v6);
      goto LABEL_30;
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
        return v22;
      }

      return 0;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = v22;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_30:
    v22 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v22;
}

char *sub_168A6E4(uint64_t a1, unint64_t __dst, unint64_t *a3)
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
    *v4 = 10;
    v8 = *(v7 + 44);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_17C4C84(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 32);
    *v4 = 18;
    v11 = *(v10 + 20);
    v4[1] = v11;
    if (v11 > 0x7F)
    {
      v12 = sub_19575D0(v11, v4 + 1);
    }

    else
    {
      v12 = v4 + 2;
    }

    v4 = sub_14F5930(v10, v12, a3);
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
  v16 = *(v15 + 31);
  if (v16 < 0)
  {
    v17 = *(v15 + 8);
    v16 = *(v15 + 16);
  }

  else
  {
    v17 = (v15 + 8);
  }

  if ((*a3 - v4) >= v16)
  {
    v18 = v16;
    memcpy(v4, v17, v16);
    v4 += v18;
    return v4;
  }

  return sub_1957130(a3, v17, v16, v4);
}

uint64_t sub_168A860(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_17C4E0C(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = sub_14F5DE8(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    v3 += v9;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_168A930(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      *(a1 + 16) |= 1u;
      v5 = *(a1 + 24);
      if (!v5)
      {
        v6 = *(a1 + 8);
        v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (v6)
        {
          v7 = *v7;
        }

        v5 = sub_185F924(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_27838B0;
      }

      sub_179AFF4(v5, v8);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v9 = *(a1 + 32);
      if (!v9)
      {
        v10 = *(a1 + 8);
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        v9 = sub_1528AA8(v11);
        *(a1 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_2775000;
      }

      sub_14F609C(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_168AA34(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_179B13C(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_168AA74(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 8) & 1;
  if (a1 != &off_277C960)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15003B0(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_168BD28((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_168AB38(uint64_t a1)
{
  sub_168AA74(a1);

  operator delete();
}

uint64_t sub_168AB70(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_168A4CC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_15003EC(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_168AC00(uint64_t a1, char *a2, int32x2_t *a3)
{
  v25 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v25, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v25 + 1;
    v7 = *v25;
    if (*v25 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v25, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v25 + 2;
      }
    }

    v25 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 1u;
        v15 = *(a1 + 48);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_1529564(v17);
          *(a1 + 48) = v15;
          v6 = v25;
        }

        v14 = sub_2218268(a3, v15, v6);
        goto LABEL_25;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      v18 = v6 - 1;
      while (1)
      {
        v19 = (v18 + 1);
        v25 = v18 + 1;
        v20 = *(a1 + 40);
        if (v20 && (v21 = *(a1 + 32), v21 < *v20))
        {
          *(a1 + 32) = v21 + 1;
          v22 = *&v20[2 * v21 + 2];
        }

        else
        {
          v23 = sub_168B7FC(*(a1 + 24));
          v22 = sub_19593CC(a1 + 24, v23);
          v19 = v25;
        }

        v18 = sub_2231678(a3, v22, v19);
        v25 = v18;
        if (!v18)
        {
          return 0;
        }

        if (*a3 <= v18 || *v18 != 10)
        {
          goto LABEL_35;
        }
      }
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
        return v25;
      }

      return 0;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = v25;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_25:
    v25 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_35:
    ;
  }

  return v25;
}

char *sub_168ADE4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
      *__dst = 10;
      v9 = *(v8 + 20);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_168A6E4(v8, v10, a3);
    }
  }

  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v11 = *(a1 + 48);
    *__dst = 18;
    v12 = *(v11 + 20);
    __dst[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, __dst + 1);
    }

    else
    {
      v13 = __dst + 2;
    }

    __dst = sub_15009E4(v11, v13, a3);
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return __dst;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if ((*a3 - __dst) >= v17)
  {
    v19 = v17;
    memcpy(__dst, v18, v17);
    __dst += v19;
    return __dst;
  }

  return sub_1957130(a3, v18, v17, __dst);
}

uint64_t sub_168AF8C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_168A860(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 16))
  {
    v8 = sub_1500DD8(*(a1 + 48));
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

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

void sub_168B068(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_168BDAC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    *(a1 + 16) |= 1u;
    v10 = *(a1 + 48);
    if (!v10)
    {
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_1529564(v12);
      *(a1 + 48) = v10;
      v9 = *(a2 + 48);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_2775420;
    }

    sub_1501040(v10, v13);
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_168B180(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if (*(v3 + 16))
    {
      result = sub_179B13C(*(v3 + 24));
      if (!result)
      {
        break;
      }
    }

    if (v1-- <= 1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_168B1EC(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_168B294(uint64_t a1)
{
  sub_168B1EC(a1);

  operator delete();
}

uint64_t sub_168B2CC(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  if (*(a1 + 16))
  {
    v3 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_168B350(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v26 = a2;
  if (sub_195ADC0(a3, v26, a3[11].i32[1]))
  {
    return *v26;
  }

  while (1)
  {
    v6 = (*v26 + 1);
    v7 = **v26;
    if (**v26 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v26, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v26 + 2);
      }
    }

    *v26 = v6;
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v23 = *(a1 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    v25 = sub_194DB04((a1 + 48), v24);
    v14 = sub_1958890(v25, *v26, a3);
LABEL_34:
    *v26 = v14;
    if (!v14)
    {
      goto LABEL_40;
    }

LABEL_35:
    if (sub_195ADC0(a3, v26, a3[11].i32[1]))
    {
      return *v26;
    }
  }

  if (v7 == 18)
  {
    v15 = v6 - 1;
    while (1)
    {
      v16 = (v15 + 1);
      *v26 = v15 + 1;
      v17 = *(a1 + 40);
      if (v17 && (v18 = *(a1 + 32), v18 < *v17))
      {
        *(a1 + 32) = v18 + 1;
        v19 = *&v17[2 * v18 + 2];
      }

      else
      {
        v20 = *(a1 + 24);
        if (!v20)
        {
          operator new();
        }

        *v22 = v21;
        v22[1] = sub_195A650;
        *v21 = 0;
        v21[1] = 0;
        v21[2] = 0;
        v19 = sub_19593CC(a1 + 24, v21);
        v16 = *v26;
      }

      v15 = sub_1958890(v19, v16, a3);
      *v26 = v15;
      if (!v15)
      {
        goto LABEL_40;
      }

      if (*a3 <= v15 || *v15 != 18)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_12:
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
      v6 = *v26;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
    goto LABEL_34;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v26;
  }

LABEL_40:
  *v26 = 0;
  return *v26;
}

char *sub_168B594(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 40) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || *a3 - v4 + 14 < v9)
      {
        v4 = sub_1957480(a3, 2, v8, v4);
      }

      else
      {
        *v4 = 18;
        v4[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v10 = v4 + 2;
        memcpy(v10, v8, v9);
        v4 = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v4;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
  v14 = *(v13 + 31);
  if (v14 < 0)
  {
    v15 = *(v13 + 8);
    v14 = *(v13 + 16);
  }

  else
  {
    v15 = (v13 + 8);
  }

  if (*a3 - v4 >= v14)
  {
    v16 = v14;
    memcpy(v4, v15, v14);
    v4 += v16;
    return v4;
  }

  return sub_1957130(a3, v15, v14, v4);
}

uint64_t sub_168B70C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 < 1)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v2 = (*(a1 + 40) + 8);
    v3 = *(a1 + 32);
    do
    {
      v4 = *v2++;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
      --v1;
    }

    while (v1);
  }

  if (*(a1 + 16))
  {
    v7 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v3 += v13;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_168B7FC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FD220;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_168B878(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FD2A0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

void *sub_168B914(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FD320;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

void sub_168BC28(void *a1)
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
          sub_1689860(*v3);
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

std::string *sub_168BCAC(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_168A2A0(v9);
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
      result = sub_131193C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_168BD28(void *a1)
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
          sub_168A3C4(*v3);
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

void sub_168BDAC(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_168B7FC(v9);
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
      sub_168BE28(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_168BE38()
{
  dword_278E558 = 1501;
  qword_278E560 = 0;
  sub_194EE44(&off_27868A0, 1501, 4, 0, 0);
  dword_278E568 = 1502;
  qword_278E570 = 0;

  sub_194EE44(&off_27868A0, 1502, 4, 0, 0);
}

uint64_t sub_168BEC0()
{
  qword_27DA630 = "ACCEPTEDREJECTEDREPORT_OUTCOME_UNKNOWN";
  *algn_27DA638 = 8;
  dword_27DA640 = 1;
  qword_27DA648 = "REJECTEDREPORT_OUTCOME_UNKNOWN";
  unk_27DA650 = 8;
  dword_27DA658 = 2;
  qword_27DA660 = "REPORT_OUTCOME_UNKNOWN";
  unk_27DA668 = 22;
  dword_27DA670 = 0;
  qword_27DA678 = "ANNOTATIONS_UNKNOWNMATCHES_USER_INCIDENTMATCHES_VENDOR_INCIDENT";
  unk_27DA680 = 19;
  dword_27DA688 = 0;
  qword_27DA690 = "MATCHES_USER_INCIDENTMATCHES_VENDOR_INCIDENT";
  unk_27DA698 = 21;
  dword_27DA6A0 = 1;
  qword_27DA6A8 = "MATCHES_VENDOR_INCIDENT";
  unk_27DA6B0 = 23;
  dword_27DA6B8 = 2;
  qword_27DA6C0 = "AUTO_UP_VOTEMISSING_USER_LOCATIONNOT_INFORMATIVENOT_NEAR_ROADREJECTION_REASON_UNKNOWNUNSUPPORTED_INCIDENT_TYPEUSER_LOCATION_TOO_FAR";
  *algn_27DA6C8 = 12;
  dword_27DA6D0 = 6;
  qword_27DA6D8 = "MISSING_USER_LOCATIONNOT_INFORMATIVENOT_NEAR_ROADREJECTION_REASON_UNKNOWNUNSUPPORTED_INCIDENT_TYPEUSER_LOCATION_TOO_FAR";
  unk_27DA6E0 = 21;
  dword_27DA6E8 = 3;
  qword_27DA6F0 = "NOT_INFORMATIVENOT_NEAR_ROADREJECTION_REASON_UNKNOWNUNSUPPORTED_INCIDENT_TYPEUSER_LOCATION_TOO_FAR";
  unk_27DA6F8 = 15;
  dword_27DA700 = 2;
  qword_27DA708 = "NOT_NEAR_ROADREJECTION_REASON_UNKNOWNUNSUPPORTED_INCIDENT_TYPEUSER_LOCATION_TOO_FAR";
  unk_27DA710 = 13;
  dword_27DA718 = 1;
  qword_27DA720 = "REJECTION_REASON_UNKNOWNUNSUPPORTED_INCIDENT_TYPEUSER_LOCATION_TOO_FAR";
  unk_27DA728 = 24;
  dword_27DA730 = 0;
  qword_27DA738 = "UNSUPPORTED_INCIDENT_TYPEUSER_LOCATION_TOO_FAR";
  unk_27DA740 = 25;
  dword_27DA748 = 7;
  qword_27DA750 = "USER_LOCATION_TOO_FAR";
  unk_27DA758 = 21;
  dword_27DA760 = 4;
  qword_27DA768 = "ANNOTATION_UNKNOWNCONFLATION_OF_UGC_REPORTSCONFLATION_TO_VENDOR_INCIDENTDOWN_VOTESMANUAL_CURATION";
  unk_27DA770 = 18;
  dword_27DA778 = 0;
  qword_27DA780 = "CONFLATION_OF_UGC_REPORTSCONFLATION_TO_VENDOR_INCIDENTDOWN_VOTESMANUAL_CURATION";
  unk_27DA788 = 25;
  dword_27DA790 = 4;
  qword_27DA798 = "CONFLATION_TO_VENDOR_INCIDENTDOWN_VOTESMANUAL_CURATION";
  unk_27DA7A0 = 29;
  dword_27DA7A8 = 3;
  qword_27DA7B0 = "DOWN_VOTESMANUAL_CURATION";
  unk_27DA7B8 = 10;
  dword_27DA7C0 = 2;
  qword_27DA7C8 = "MANUAL_CURATION";
  unk_27DA7D0 = 15;
  dword_27DA7D8 = 1;
  qword_27DA7E0 = "INCIDENT_ADDEDINCIDENT_EXTENDEDINCIDENT_REMOVEDINCIDENT_TYPE_CHANGEDNO_CHANGEOUTCOME_UNKNOWN";
  *algn_27DA7E8 = 14;
  dword_27DA7F0 = 1;
  qword_27DA7F8 = "INCIDENT_EXTENDEDINCIDENT_REMOVEDINCIDENT_TYPE_CHANGEDNO_CHANGEOUTCOME_UNKNOWN";
  unk_27DA800 = 17;
  result = 5;
  dword_27DA808 = 5;
  qword_27DA810 = "INCIDENT_REMOVEDINCIDENT_TYPE_CHANGEDNO_CHANGEOUTCOME_UNKNOWN";
  unk_27DA818 = 16;
  dword_27DA820 = 2;
  qword_27DA828 = "INCIDENT_TYPE_CHANGEDNO_CHANGEOUTCOME_UNKNOWN";
  unk_27DA830 = 21;
  dword_27DA838 = 3;
  qword_27DA840 = "NO_CHANGEOUTCOME_UNKNOWN";
  unk_27DA848 = 9;
  dword_27DA850 = 4;
  qword_27DA858 = "OUTCOME_UNKNOWN";
  unk_27DA860 = 15;
  dword_27DA868 = 0;
  qword_27DA870 = "CONFIDENCE_UNKNOWNHIGHLOWMEDIUM";
  *algn_27DA878 = 18;
  dword_27DA880 = 0;
  qword_27DA888 = "HIGHLOWMEDIUM";
  unk_27DA890 = 4;
  dword_27DA898 = 3;
  qword_27DA8A0 = "LOWMEDIUM";
  unk_27DA8A8 = 3;
  dword_27DA8B0 = 1;
  qword_27DA8B8 = "MEDIUM";
  unk_27DA8C0 = 6;
  dword_27DA8C8 = 2;
  qword_27DA8D0 = "MAPSSIRIUNKNOWN";
  *algn_27DA8D8 = 4;
  dword_27DA8E0 = 1;
  qword_27DA8E8 = "SIRIUNKNOWN";
  unk_27DA8F0 = 4;
  dword_27DA8F8 = 2;
  qword_27DA900 = "UNKNOWN";
  unk_27DA908 = 7;
  dword_27DA910 = 0;
  qword_27DA918 = "UNKNOWNUSER_LOCATIONVENDOR_INCIDENT";
  unk_27DA920 = 7;
  dword_27DA928 = 0;
  qword_27DA930 = "USER_LOCATIONVENDOR_INCIDENT";
  unk_27DA938 = 13;
  dword_27DA940 = 1;
  qword_27DA948 = "VENDOR_INCIDENT";
  unk_27DA950 = 15;
  dword_27DA958 = 2;
  qword_27DA960 = "AirportPressureAppleSensorPressureHarvestedPressureModelledPressureThirdPartyPressure";
  *algn_27DA968 = 15;
  dword_27DA970 = 1;
  qword_27DA978 = "AppleSensorPressureHarvestedPressureModelledPressureThirdPartyPressure";
  unk_27DA980 = 19;
  dword_27DA988 = 2;
  qword_27DA990 = "HarvestedPressureModelledPressureThirdPartyPressure";
  unk_27DA998 = 17;
  dword_27DA9A0 = 0;
  qword_27DA9A8 = "ModelledPressureThirdPartyPressure";
  unk_27DA9B0 = 16;
  dword_27DA9B8 = 10;
  qword_27DA9C0 = "ThirdPartyPressure";
  unk_27DA9C8 = 18;
  dword_27DA9D0 = 3;
  qword_27DA9D8 = "ReliabilityHighReliabilityProtobufDefaultReliablityLowReliablityMedium";
  unk_27DA9E0 = 15;
  dword_27DA9E8 = 3;
  qword_27DA9F0 = "ReliabilityProtobufDefaultReliablityLowReliablityMedium";
  unk_27DA9F8 = 26;
  dword_27DAA00 = 0;
  qword_27DAA08 = "ReliablityLowReliablityMedium";
  unk_27DAA10 = 13;
  dword_27DAA18 = 1;
  qword_27DAA20 = "ReliablityMedium";
  unk_27DAA28 = 16;
  dword_27DAA30 = 2;
  qword_27DAA38 = "PRESSURE_SOURCE_AIRPORT_ALTIMETERPRESSURE_SOURCE_APPLE_SENSORPRESSURE_SOURCE_PROTOBUF_DEFAULTPRESSURE_SOURCE_VENDOR_MODELPRESSURE_SOURCE_VENDOR_SENSOR";
  unk_27DAA40 = 33;
  dword_27DAA48 = 5;
  qword_27DAA50 = "PRESSURE_SOURCE_APPLE_SENSORPRESSURE_SOURCE_PROTOBUF_DEFAULTPRESSURE_SOURCE_VENDOR_MODELPRESSURE_SOURCE_VENDOR_SENSOR";
  unk_27DAA58 = 28;
  dword_27DAA60 = 4;
  qword_27DAA68 = "PRESSURE_SOURCE_PROTOBUF_DEFAULTPRESSURE_SOURCE_VENDOR_MODELPRESSURE_SOURCE_VENDOR_SENSOR";
  unk_27DAA70 = 32;
  dword_27DAA78 = 0;
  qword_27DAA80 = "PRESSURE_SOURCE_VENDOR_MODELPRESSURE_SOURCE_VENDOR_SENSOR";
  unk_27DAA88 = 28;
  dword_27DAA90 = 1;
  qword_27DAA98 = "PRESSURE_SOURCE_VENDOR_SENSOR";
  unk_27DAAA0 = 29;
  dword_27DAAA8 = 3;
  qword_27DAAB0 = "CDMACDMA_UBER_1CDMA_UBER_2CDMA_UBER_3CELLCELL_UBER_1LTELTE_UBER_1NR5GNR5G_UBER_1SCDMASCDMA_UBER_1WIFI";
  *algn_27DAAB8 = 4;
  dword_27DAAC0 = 4;
  qword_27DAAC8 = "CDMA_UBER_1CDMA_UBER_2CDMA_UBER_3CELLCELL_UBER_1LTELTE_UBER_1NR5GNR5G_UBER_1SCDMASCDMA_UBER_1WIFI";
  unk_27DAAD0 = 11;
  dword_27DAAD8 = 6;
  qword_27DAAE0 = "CDMA_UBER_2CDMA_UBER_3CELLCELL_UBER_1LTELTE_UBER_1NR5GNR5G_UBER_1SCDMASCDMA_UBER_1WIFI";
  unk_27DAAE8 = 11;
  dword_27DAAF0 = 7;
  qword_27DAAF8 = "CDMA_UBER_3CELLCELL_UBER_1LTELTE_UBER_1NR5GNR5G_UBER_1SCDMASCDMA_UBER_1WIFI";
  unk_27DAB00 = 11;
  dword_27DAB08 = 8;
  qword_27DAB10 = "CELLCELL_UBER_1LTELTE_UBER_1NR5GNR5G_UBER_1SCDMASCDMA_UBER_1WIFI";
  unk_27DAB18 = 4;
  dword_27DAB20 = 2;
  qword_27DAB28 = "CELL_UBER_1LTELTE_UBER_1NR5GNR5G_UBER_1SCDMASCDMA_UBER_1WIFI";
  unk_27DAB30 = 11;
  dword_27DAB38 = 11;
  qword_27DAB40 = "LTELTE_UBER_1NR5GNR5G_UBER_1SCDMASCDMA_UBER_1WIFI";
  unk_27DAB48 = 3;
  dword_27DAB50 = 3;
  qword_27DAB58 = "LTE_UBER_1NR5GNR5G_UBER_1SCDMASCDMA_UBER_1WIFI";
  unk_27DAB60 = 10;
  dword_27DAB68 = 10;
  qword_27DAB70 = "NR5GNR5G_UBER_1SCDMASCDMA_UBER_1WIFI";
  unk_27DAB78 = 4;
  dword_27DAB80 = 12;
  qword_27DAB88 = "NR5G_UBER_1SCDMASCDMA_UBER_1WIFI";
  unk_27DAB90 = 11;
  dword_27DAB98 = 13;
  qword_27DABA0 = "SCDMASCDMA_UBER_1WIFI";
  unk_27DABA8 = 5;
  dword_27DABB0 = 5;
  qword_27DABB8 = "SCDMA_UBER_1WIFI";
  unk_27DABC0 = 12;
  dword_27DABC8 = 9;
  qword_27DABD0 = "WIFI";
  unk_27DABD8 = 4;
  dword_27DABE0 = 1;
  qword_27DABE8 = "jsonprototextxml";
  unk_27DABF0 = 4;
  dword_27DABF8 = 1;
  qword_27DAC00 = "prototextxml";
  unk_27DAC08 = 5;
  dword_27DAC10 = 0;
  qword_27DAC18 = "textxml";
  unk_27DAC20 = 4;
  dword_27DAC28 = 3;
  qword_27DAC30 = "xml";
  unk_27DAC38 = 3;
  dword_27DAC40 = 2;
  qword_27DAC48 = "MAPS_ENRICHMENT_SEARCH_SCOPE_TYPE_DEVICE_LOCATIONMAPS_ENRICHMENT_SEARCH_SCOPE_TYPE_GLOBALMAPS_ENRICHMENT_SEARCH_SCOPE_TYPE_MIXED_INTENTMAPS_ENRICHMENT_SEARCH_SCOPE_TYPE_UNKNOWNMAPS_ENRICHMENT_SEARCH_SCOPE_TYPE_VIEWPORT";
  unk_27DAC50 = 49;
  dword_27DAC58 = 1;
  qword_27DAC60 = "MAPS_ENRICHMENT_SEARCH_SCOPE_TYPE_GLOBALMAPS_ENRICHMENT_SEARCH_SCOPE_TYPE_MIXED_INTENTMAPS_ENRICHMENT_SEARCH_SCOPE_TYPE_UNKNOWNMAPS_ENRICHMENT_SEARCH_SCOPE_TYPE_VIEWPORT";
  unk_27DAC68 = 40;
  dword_27DAC70 = 4;
  qword_27DAC78 = "MAPS_ENRICHMENT_SEARCH_SCOPE_TYPE_MIXED_INTENTMAPS_ENRICHMENT_SEARCH_SCOPE_TYPE_UNKNOWNMAPS_ENRICHMENT_SEARCH_SCOPE_TYPE_VIEWPORT";
  unk_27DAC80 = 46;
  dword_27DAC88 = 3;
  qword_27DAC90 = "MAPS_ENRICHMENT_SEARCH_SCOPE_TYPE_UNKNOWNMAPS_ENRICHMENT_SEARCH_SCOPE_TYPE_VIEWPORT";
  unk_27DAC98 = 41;
  dword_27DACA0 = 0;
  qword_27DACA8 = "MAPS_ENRICHMENT_SEARCH_SCOPE_TYPE_VIEWPORT";
  unk_27DACB0 = 42;
  dword_27DACB8 = 2;
  qword_27DACC0 = "RESULT_FILTER_MATCH_TYPE_NONERESULT_FILTER_MATCH_TYPE_OPTIONALRESULT_FILTER_MATCH_TYPE_STRICT";
  *algn_27DACC8 = 29;
  dword_27DACD0 = 0;
  qword_27DACD8 = "RESULT_FILTER_MATCH_TYPE_OPTIONALRESULT_FILTER_MATCH_TYPE_STRICT";
  unk_27DACE0 = 33;
  dword_27DACE8 = 1;
  qword_27DACF0 = "RESULT_FILTER_MATCH_TYPE_STRICT";
  unk_27DACF8 = 31;
  dword_27DAD00 = 2;
  qword_27DAD08 = "MAPS_ENRICHMENT_REQUEST_TYPE_PLACECARDMAPS_ENRICHMENT_REQUEST_TYPE_SEARCHMAPS_ENRICHMENT_REQUEST_TYPE_SEARCH_HOMEMAPS_ENRICHMENT_REQUEST_TYPE_UNKNOWN";
  unk_27DAD10 = 38;
  dword_27DAD18 = 2;
  qword_27DAD20 = "MAPS_ENRICHMENT_REQUEST_TYPE_SEARCHMAPS_ENRICHMENT_REQUEST_TYPE_SEARCH_HOMEMAPS_ENRICHMENT_REQUEST_TYPE_UNKNOWN";
  unk_27DAD28 = 35;
  dword_27DAD30 = 1;
  qword_27DAD38 = "MAPS_ENRICHMENT_REQUEST_TYPE_SEARCH_HOMEMAPS_ENRICHMENT_REQUEST_TYPE_UNKNOWN";
  unk_27DAD40 = 40;
  dword_27DAD48 = 3;
  qword_27DAD50 = "MAPS_ENRICHMENT_REQUEST_TYPE_UNKNOWN";
  unk_27DAD58 = 36;
  dword_27DAD60 = 0;
  qword_27DAD68 = "MAPS_WEB_REQUEST_TYPE_SHOWCASEMAPS_WEB_REQUEST_TYPE_UNKNOWN";
  unk_27DAD70 = 30;
  dword_27DAD78 = 1;
  qword_27DAD80 = "MAPS_WEB_REQUEST_TYPE_UNKNOWN";
  unk_27DAD88 = 29;
  dword_27DAD90 = 0;
  return result;
}

uint64_t sub_168C3F0(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_16B9938(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 16);
  if ((v6 & 3) != 0)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v7 + 23) & 0x80000000) == 0)
    {
      *v7 = 0;
      *(v7 + 23) = 0;
LABEL_9:
      if ((v6 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v6 & 2) != 0)
    {
LABEL_10:
      result = sub_16AE850(*(a1 + 80));
    }
  }

LABEL_11:
  v9 = *(a1 + 8);
  v8 = a1 + 8;
  *(v8 + 80) = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

std::string *sub_168C4C4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_1201B48(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(&v3[2], *(a2 + 56));
    result = sub_16C0180(v3 + 2, v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
    v12 = LODWORD(v3[2].__r_.__value_.__r.__words[1]) + v9;
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = v12;
    v13 = v3[2].__r_.__value_.__r.__words[2];
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if ((v14 & 7) != 0)
  {
    if (v14)
    {
      v16 = *(a2 + 72);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      size = v3->__r_.__value_.__l.__size_;
      v18 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v18 = *v18;
      }

      result = sub_194EA1C(&v3[3], (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
LABEL_12:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v14;
          goto LABEL_13;
        }

LABEL_11:
        v3[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
        goto LABEL_12;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v19 = v3[3].__r_.__value_.__l.__size_;
    if (!v19)
    {
      v20 = v3->__r_.__value_.__l.__size_;
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      sub_16BB08C(v21);
      v3[3].__r_.__value_.__l.__size_ = v19;
    }

    if (*(a2 + 80))
    {
      v22 = *(a2 + 80);
    }

    else
    {
      v22 = &off_277D5F0;
    }

    result = sub_16AF8C0(v19, v22);
    if ((v14 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  v15 = *(a2 + 8);
  if (v15)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_168C68C(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 0;
  }

  for (i = *(a1 + 56); i >= 1; --i)
  {
    v2 = *(*(a1 + 64) + 8 * i);
    if ((~*(v2 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  return sub_16AFC0C(*(a1 + 80));
}

BOOL sub_168C6F0(unsigned int a1)
{
  result = 1;
  if (a1 - 11 > 0x37 || ((1 << (a1 - 11)) & 0xFFFFFFD1CFFEE3) == 0)
  {
    return a1 < 8;
  }

  return result;
}

void *sub_168C73C(void *a1)
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

void sub_168C7B0(void *a1)
{
  sub_168C73C(a1);

  operator delete();
}

uint64_t sub_168C7E8(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
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

char *sub_168C810(uint64_t a1, char *a2, int32x2_t *a3)
{
  v24 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v24, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v24 + 1;
    v8 = *v24;
    if (*v24 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v24, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v24 + 2;
      }
    }

    v24 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v20 = v7 + 1;
      v19 = *v7;
      if (v19 < 0)
      {
        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          v24 = sub_19587DC(v7, v19);
          if (!v24)
          {
            goto LABEL_51;
          }

          goto LABEL_33;
        }

        v20 = v7 + 2;
      }

      v24 = v20;
LABEL_33:
      if (v19 > 2)
      {
        sub_12E8578();
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 32) = v19;
      }

      goto LABEL_42;
    }

    if (v11 == 2)
    {
      break;
    }

    if (v11 != 1 || v8 != 8)
    {
      goto LABEL_13;
    }

    v22 = v7 + 1;
    v23 = *v7;
    if (v23 < 0)
    {
      v23 = (*v22 << 7) + v23 - 128;
      if (*v22 < 0)
      {
        v22 = sub_19587DC(v7, v23);
      }

      else
      {
        v22 = v7 + 2;
      }
    }

    v24 = v22;
    *(a1 + 24) = -(v23 & 1) ^ (v23 >> 1);
    v5 = 1;
    if (!v22)
    {
      goto LABEL_51;
    }

LABEL_42:
    if (sub_195ADC0(a3, &v24, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 16)
  {
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if (v18 < 0)
    {
      v24 = sub_19587DC(v7, v16);
      if (!v24)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v17 = v7 + 2;
LABEL_25:
      v24 = v17;
    }

    if (v16 > 2)
    {
      sub_1348E38();
    }

    else
    {
      *(a1 + 16) |= 2u;
      *(a1 + 28) = v16;
    }

    goto LABEL_42;
  }

LABEL_13:
  if (v8)
  {
    v13 = (v8 & 7) == 4;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v7 = v24;
    }

    v24 = sub_1952690(v8, v15, v7, a3);
    if (!v24)
    {
      goto LABEL_51;
    }

    goto LABEL_42;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_51:
  v24 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v24;
}

char *sub_168CA8C(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *__dst = 8;
    v8 = (2 * v7) ^ (v7 >> 31);
    __dst[1] = (2 * v7) ^ (v7 >> 31);
    if (v8 > 0x7F)
    {
      __dst[1] = v8 | 0x80;
      v9 = v8 >> 7;
      __dst[2] = v8 >> 7;
      v6 = __dst + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v10) = __dst[2];
        do
        {
          *(v6 - 1) = v10 | 0x80;
          v10 = v9 >> 7;
          *v6++ = v9 >> 7;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v13 = *(a1 + 28);
    *v6 = 16;
    v6[1] = v13;
    if (v13 > 0x7F)
    {
      v6[1] = v13 | 0x80;
      v14 = v13 >> 7;
      v6[2] = v13 >> 7;
      v12 = v6 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v12 - 1) = v6 | 0x80;
          v6 = (v14 >> 7);
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v12 = v6 + 2;
    }
  }

  else
  {
    v12 = v6;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v17 = *(a1 + 32);
    *v12 = 24;
    v12[1] = v17;
    if (v17 > 0x7F)
    {
      v12[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v12[2] = v17 >> 7;
      v16 = v12 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v19) = v12[2];
        do
        {
          *(v16 - 1) = v19 | 0x80;
          v19 = v18 >> 7;
          *v16++ = v18 >> 7;
          v20 = v18 >> 14;
          v18 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v16 = v12 + 2;
    }
  }

  else
  {
    v16 = v12;
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v16;
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

  if (*a3 - v16 >= v24)
  {
    v26 = v24;
    memcpy(v16, v25, v24);
    v16 += v26;
    return v16;
  }

  return sub_1957130(a3, v25, v24, v16);
}

uint64_t sub_168CCC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_16;
  }

  if (v1)
  {
    v2 = ((9 * (__clz((2 * *(a1 + 24)) ^ (*(a1 + 24) >> 31) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v3 = *(a1 + 28);
  if (v3 < 0)
  {
    v4 = 11;
  }

  else
  {
    v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v4;
LABEL_11:
  if ((v1 & 4) != 0)
  {
    v5 = *(a1 + 32);
    if (v5 < 0)
    {
      v6 = 11;
    }

    else
    {
      v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v6;
  }

LABEL_16:
  v7 = *(a1 + 8);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v2 += v10;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_168CDC4(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = &off_26FD4B0;
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
  *(a1 + 120) = &qword_278E990;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = -1;
  *(a1 + 176) = -1;
  return a1;
}

void sub_168CE5C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_168CE8C(uint64_t a1)
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

  v5 = (a1 + 120);
  if (*(a1 + 120) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_277C9D0)
  {
    v6 = *(a1 + 128);
    if (v6)
    {
      sub_168F41C(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_16BD710((a1 + 96));
  sub_16BD68C((a1 + 72));
  sub_16BD608((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_168CF84(uint64_t a1)
{
  sub_168CE8C(a1);

  operator delete();
}

uint64_t sub_168CFBC(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_168EF54(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 80);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 88) + 8);
    do
    {
      v8 = *v7++;
      result = sub_168C7E8(v8);
      --v6;
    }

    while (v6);
    *(a1 + 80) = 0;
  }

  v9 = *(a1 + 104);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 112) + 8);
    do
    {
      v11 = *v10++;
      result = sub_168D110(v11);
      --v9;
    }

    while (v9);
    *(a1 + 104) = 0;
  }

  v12 = *(a1 + 40);
  if ((v12 & 3) != 0)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_17;
    }

    v13 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
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
      result = sub_168D110(*(a1 + 128));
    }
  }

LABEL_19:
  if ((v12 & 0xFC) != 0)
  {
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
  }

  if ((v12 & 0xFF00) != 0)
  {
    *(a1 + 160) = 0;
    *(a1 + 168) = -1;
    *(a1 + 176) = -1;
  }

  v15 = *(a1 + 8);
  v14 = a1 + 8;
  *(v14 + 172) = -1;
  *(v14 + 32) = 0;
  if (v15)
  {

    return sub_1957EA8(v14);
  }

  return result;
}

uint64_t sub_168D110(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) != 0)
  {
    if ((v1 & 1) == 0)
    {
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
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
        if ((v1 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_14;
    }

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
  }

LABEL_17:
  if ((v1 & 0x38) != 0)
  {
    *(a1 + 56) = 0;
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v6)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_168D1D8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v108 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v108, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v108 + 1);
    v8 = **v108;
    if (**v108 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v108, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v108 + 2);
      }
    }

    *v108 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_131;
        }

        v5 |= 4u;
        v11 = (v7 + 1);
        v12 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v11;
        v12 = v12 + (v13 << 7) - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v11 = (v7 + 2);
LABEL_12:
          *v108 = v11;
          *(a1 + 136) = v12;
          goto LABEL_141;
        }

        v93 = sub_1958770(v7, v12);
        *v108 = v93;
        *(a1 + 136) = v94;
        if (v93)
        {
          goto LABEL_141;
        }

        goto LABEL_180;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_131;
        }

        v5 |= 0x2000u;
        v43 = (v7 + 1);
        LODWORD(v42) = *v7;
        if ((v42 & 0x80) == 0)
        {
          goto LABEL_65;
        }

        v44 = *v43;
        v42 = v42 + (v44 << 7) - 128;
        if (v44 < 0)
        {
          v95 = sub_19587DC(v7, v42);
          *v108 = v95;
          *(a1 + 168) = v96;
          if (!v95)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v43 = (v7 + 2);
LABEL_65:
          *v108 = v43;
          *(a1 + 168) = v42;
        }

        goto LABEL_141;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_131;
        }

        v5 |= 0x4000u;
        v34 = (v7 + 1);
        LODWORD(v33) = *v7;
        if ((v33 & 0x80) == 0)
        {
          goto LABEL_50;
        }

        v35 = *v34;
        v33 = v33 + (v35 << 7) - 128;
        if (v35 < 0)
        {
          v87 = sub_19587DC(v7, v33);
          *v108 = v87;
          *(a1 + 172) = v88;
          if (!v87)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v34 = (v7 + 2);
LABEL_50:
          *v108 = v34;
          *(a1 + 172) = v33;
        }

        goto LABEL_141;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_131;
        }

        v5 |= 0x8000u;
        v62 = (v7 + 1);
        LODWORD(v61) = *v7;
        if ((v61 & 0x80) == 0)
        {
          goto LABEL_98;
        }

        v63 = *v62;
        v61 = v61 + (v63 << 7) - 128;
        if (v63 < 0)
        {
          v100 = sub_19587DC(v7, v61);
          *v108 = v100;
          *(a1 + 176) = v101;
          if (!v100)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v62 = (v7 + 2);
LABEL_98:
          *v108 = v62;
          *(a1 + 176) = v61;
        }

        goto LABEL_141;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_131;
        }

        v5 |= 8u;
        v64 = (v7 + 1);
        v65 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_103;
        }

        v66 = *v64;
        v65 = v65 + (v66 << 7) - 128;
        if (v66 < 0)
        {
          v102 = sub_1958770(v7, v65);
          *v108 = v102;
          *(a1 + 140) = v103;
          if (!v102)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v64 = (v7 + 2);
LABEL_103:
          *v108 = v64;
          *(a1 + 140) = v65;
        }

        goto LABEL_141;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_131;
        }

        v5 |= 0x10u;
        v36 = (v7 + 1);
        v37 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_55;
        }

        v38 = *v36;
        v37 = v37 + (v38 << 7) - 128;
        if (v38 < 0)
        {
          v89 = sub_1958770(v7, v37);
          *v108 = v89;
          *(a1 + 144) = v90;
          if (!v89)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v36 = (v7 + 2);
LABEL_55:
          *v108 = v36;
          *(a1 + 144) = v37;
        }

        goto LABEL_141;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_131;
        }

        v45 = (v7 + 1);
        v46 = *v7;
        if ((v46 & 0x8000000000000000) == 0)
        {
          goto LABEL_70;
        }

        v47 = *v45;
        v48 = (v47 << 7) + v46;
        LODWORD(v46) = v48 - 128;
        if (v47 < 0)
        {
          *v108 = sub_19587DC(v7, (v48 - 128));
          if (!*v108)
          {
            goto LABEL_180;
          }

          LODWORD(v46) = v97;
        }

        else
        {
          v45 = (v7 + 2);
LABEL_70:
          *v108 = v45;
        }

        if (sub_168C6F0(v46))
        {
          *(a1 + 40) |= 0x20u;
          *(a1 + 148) = v46;
        }

        else
        {
          sub_13ED178();
        }

        goto LABEL_141;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_131;
        }

        v49 = (v7 - 1);
        while (1)
        {
          v50 = (v49 + 1);
          *v108 = v49 + 1;
          v51 = *(a1 + 64);
          if (v51 && (v52 = *(a1 + 56), v52 < *v51))
          {
            *(a1 + 56) = v52 + 1;
            v53 = *&v51[2 * v52 + 2];
          }

          else
          {
            v54 = sub_169B45C(*(a1 + 48));
            v53 = sub_19593CC(a1 + 48, v54);
            v50 = *v108;
          }

          v49 = sub_2231948(a3, v53, v50);
          *v108 = v49;
          if (!v49)
          {
            goto LABEL_180;
          }

          if (*a3 <= v49 || *v49 != 66)
          {
            goto LABEL_141;
          }
        }

      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_131;
        }

        v74 = (v7 + 1);
        v73 = *v7;
        if ((v73 & 0x8000000000000000) == 0)
        {
          goto LABEL_118;
        }

        v75 = *v74;
        v73 = (v75 << 7) + v73 - 128;
        if (v75 < 0)
        {
          *v108 = sub_19587DC(v7, v73);
          if (!*v108)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v74 = (v7 + 2);
LABEL_118:
          *v108 = v74;
        }

        if (v73 > 1)
        {
          sub_12E8488();
        }

        else
        {
          *(a1 + 40) |= 0x40u;
          *(a1 + 152) = v73;
        }

        goto LABEL_141;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_131;
        }

        v67 = (v7 - 1);
        while (1)
        {
          v68 = (v67 + 1);
          *v108 = v67 + 1;
          v69 = *(a1 + 88);
          if (v69 && (v70 = *(a1 + 80), v70 < *v69))
          {
            *(a1 + 80) = v70 + 1;
            v71 = *&v69[2 * v70 + 2];
          }

          else
          {
            v72 = sub_169B384(*(a1 + 72));
            v71 = sub_19593CC(a1 + 72, v72);
            v68 = *v108;
          }

          v67 = sub_22319D8(a3, v71, v68);
          *v108 = v67;
          if (!v67)
          {
            goto LABEL_180;
          }

          if (*a3 <= v67 || *v67 != 90)
          {
            goto LABEL_141;
          }
        }

      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_131;
        }

        v20 = v7 - 1;
        while (1)
        {
          v21 = v20 + 1;
          *v108 = v20 + 1;
          v22 = *(a1 + 112);
          if (v22 && (v23 = *(a1 + 104), v23 < *v22))
          {
            *(a1 + 104) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            v25 = sub_169B4FC(*(a1 + 96));
            v24 = sub_19593CC(a1 + 96, v25);
            v21 = *v108;
          }

          v20 = sub_2231A68(a3, v24, v21);
          *v108 = v20;
          if (!v20)
          {
            goto LABEL_180;
          }

          if (*a3 <= v20 || *v20 != 98)
          {
            goto LABEL_141;
          }
        }

      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_131;
        }

        v5 |= 0x10000u;
        v40 = (v7 + 1);
        LODWORD(v39) = *v7;
        if ((v39 & 0x80) == 0)
        {
          goto LABEL_60;
        }

        v41 = *v40;
        v39 = v39 + (v41 << 7) - 128;
        if (v41 < 0)
        {
          v91 = sub_19587DC(v7, v39);
          *v108 = v91;
          *(a1 + 180) = v92;
          if (!v91)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v40 = (v7 + 2);
LABEL_60:
          *v108 = v40;
          *(a1 + 180) = v39;
        }

        goto LABEL_141;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_131;
        }

        v27 = (v7 + 1);
        v26 = *v7;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_39;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if (v28 < 0)
        {
          *v108 = sub_19587DC(v7, v26);
          if (!*v108)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v27 = (v7 + 2);
LABEL_39:
          *v108 = v27;
        }

        if (v26 > 5)
        {
          sub_156E760();
        }

        else
        {
          *(a1 + 40) |= 0x80u;
          *(a1 + 156) = v26;
        }

        goto LABEL_141;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_131;
        }

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
          *v108 = sub_19587DC(v7, v17);
          if (!*v108)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v18 = (v7 + 2);
LABEL_22:
          *v108 = v18;
        }

        if (v17 > 1)
        {
          sub_13ED138();
        }

        else
        {
          *(a1 + 40) |= 0x100u;
          *(a1 + 160) = v17;
        }

        goto LABEL_141;
      case 0x13u:
        if (v8 != 154)
        {
          goto LABEL_131;
        }

        *(a1 + 40) |= 2u;
        v55 = *(a1 + 128);
        if (!v55)
        {
          v56 = *(a1 + 8);
          v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
          if (v56)
          {
            v57 = *v57;
          }

          v55 = sub_169B4FC(v57);
          *(a1 + 128) = v55;
          v7 = *v108;
        }

        v32 = sub_2231A68(a3, v55, v7);
        goto LABEL_140;
      case 0x14u:
        if (v8 != 160)
        {
          goto LABEL_131;
        }

        v5 |= 0x200u;
        v59 = (v7 + 1);
        v58 = *v7;
        if ((v58 & 0x8000000000000000) == 0)
        {
          goto LABEL_93;
        }

        v60 = *v59;
        v58 = (v60 << 7) + v58 - 128;
        if (v60 < 0)
        {
          v98 = sub_19587DC(v7, v58);
          *v108 = v98;
          *(a1 + 164) = v99 != 0;
          if (!v98)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v59 = (v7 + 2);
LABEL_93:
          *v108 = v59;
          *(a1 + 164) = v58 != 0;
        }

        goto LABEL_141;
      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_131;
        }

        v5 |= 0x400u;
        v80 = (v7 + 1);
        v79 = *v7;
        if ((v79 & 0x8000000000000000) == 0)
        {
          goto LABEL_130;
        }

        v81 = *v80;
        v79 = (v81 << 7) + v79 - 128;
        if (v81 < 0)
        {
          v106 = sub_19587DC(v7, v79);
          *v108 = v106;
          *(a1 + 165) = v107 != 0;
          if (!v106)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v80 = (v7 + 2);
LABEL_130:
          *v108 = v80;
          *(a1 + 165) = v79 != 0;
        }

        goto LABEL_141;
      case 0x16u:
        if (v8 != 176)
        {
          goto LABEL_131;
        }

        v5 |= 0x800u;
        v77 = (v7 + 1);
        v76 = *v7;
        if ((v76 & 0x8000000000000000) == 0)
        {
          goto LABEL_125;
        }

        v78 = *v77;
        v76 = (v78 << 7) + v76 - 128;
        if (v78 < 0)
        {
          v104 = sub_19587DC(v7, v76);
          *v108 = v104;
          *(a1 + 166) = v105 != 0;
          if (!v104)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v77 = (v7 + 2);
LABEL_125:
          *v108 = v77;
          *(a1 + 166) = v76 != 0;
        }

        goto LABEL_141;
      case 0x18u:
        if (v8 != 192)
        {
          goto LABEL_131;
        }

        v5 |= 0x1000u;
        v15 = (v7 + 1);
        v14 = *v7;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if (v16 < 0)
        {
          v85 = sub_19587DC(v7, v14);
          *v108 = v85;
          *(a1 + 167) = v86 != 0;
          if (!v85)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v15 = (v7 + 2);
LABEL_17:
          *v108 = v15;
          *(a1 + 167) = v14 != 0;
        }

        goto LABEL_141;
      case 0x1Eu:
        if (v8 != 242)
        {
          goto LABEL_131;
        }

        *(a1 + 40) |= 1u;
        v29 = *(a1 + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        v31 = sub_194DB04((a1 + 120), v30);
        v32 = sub_1958890(v31, *v108, a3);
        goto LABEL_140;
      default:
LABEL_131:
        if (v8)
        {
          v82 = (v8 & 7) == 4;
        }

        else
        {
          v82 = 1;
        }

        if (!v82)
        {
          if (v8 - 7600 > 0x18F)
          {
            v83 = *(a1 + 8);
            if (v83)
            {
              v84 = (v83 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v84 = sub_11F1920((a1 + 8));
              v7 = *v108;
            }

            v32 = sub_1952690(v8, v84, v7, a3);
          }

          else
          {
            v32 = sub_19525AC((a1 + 16), v8, v7, &off_277C9D0, (a1 + 8), a3);
          }

LABEL_140:
          *v108 = v32;
          if (!v32)
          {
            goto LABEL_180;
          }

LABEL_141:
          if (sub_195ADC0(a3, v108, a3[11].i32[1]))
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
LABEL_180:
          *v108 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return *v108;
    }
  }
}

char *sub_168DC14(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 136);
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

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 168);
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

  if ((v5 & 0x4000) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 172);
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
        LOBYTE(v18) = v11[2];
        do
        {
          *(v15 - 1) = v18 | 0x80;
          v18 = v17 >> 7;
          *v15++ = v17 >> 7;
          v19 = v17 >> 14;
          v17 >>= 7;
        }

        while (v19);
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

  if ((v5 & 0x8000) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v21 = *(a1 + 176);
    *v15 = 32;
    v15[1] = v21;
    if (v21 > 0x7F)
    {
      v15[1] = v21 | 0x80;
      v22 = v21 >> 7;
      v15[2] = v21 >> 7;
      v20 = v15 + 3;
      if (v21 >= 0x4000)
      {
        LOBYTE(v15) = v15[2];
        do
        {
          *(v20 - 1) = v15 | 0x80;
          v15 = (v22 >> 7);
          *v20++ = v22 >> 7;
          v23 = v22 >> 14;
          v22 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v20 = v15 + 2;
    }
  }

  else
  {
    v20 = v15;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v25 = *(a1 + 140);
    *v20 = 40;
    v20[1] = v25;
    if (v25 > 0x7F)
    {
      v20[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v20[2] = v25 >> 7;
      v24 = v20 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v27) = v20[2];
        do
        {
          *(v24 - 1) = v27 | 0x80;
          v27 = v26 >> 7;
          *v24++ = v26 >> 7;
          v28 = v26 >> 14;
          v26 >>= 7;
        }

        while (v28);
      }
    }

    else
    {
      v24 = v20 + 2;
    }
  }

  else
  {
    v24 = v20;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v30 = *(a1 + 144);
    *v24 = 48;
    v24[1] = v30;
    if (v30 > 0x7F)
    {
      v24[1] = v30 | 0x80;
      v31 = v30 >> 7;
      v24[2] = v30 >> 7;
      v29 = v24 + 3;
      if (v30 >= 0x4000)
      {
        LOBYTE(v24) = v24[2];
        do
        {
          *(v29 - 1) = v24 | 0x80;
          LODWORD(v24) = v31 >> 7;
          *v29++ = v31 >> 7;
          v32 = v31 >> 14;
          v31 >>= 7;
        }

        while (v32);
      }
    }

    else
    {
      v29 = v24 + 2;
    }
  }

  else
  {
    v29 = v24;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v29)
    {
      v29 = sub_225EB68(a3, v29);
    }

    v34 = *(a1 + 148);
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
        LOBYTE(v36) = v29[2];
        do
        {
          *(v33 - 1) = v36 | 0x80;
          v36 = v35 >> 7;
          *v33++ = v35 >> 7;
          v37 = v35 >> 14;
          v35 >>= 7;
        }

        while (v37);
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

  v38 = *(a1 + 56);
  if (v38)
  {
    for (i = 0; i != v38; ++i)
    {
      if (*a3 <= v33)
      {
        v33 = sub_225EB68(a3, v33);
      }

      v40 = *(*(a1 + 64) + 8 * i + 8);
      *v33 = 66;
      v41 = *(v40 + 40);
      v33[1] = v41;
      if (v41 > 0x7F)
      {
        v42 = sub_19575D0(v41, v33 + 1);
      }

      else
      {
        v42 = v33 + 2;
      }

      v33 = sub_168F160(v40, v42, a3);
    }
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v44 = *(a1 + 152);
    *v33 = 80;
    v33[1] = v44;
    if (v44 > 0x7F)
    {
      v33[1] = v44 | 0x80;
      v45 = v44 >> 7;
      v33[2] = v44 >> 7;
      v43 = v33 + 3;
      if (v44 >= 0x4000)
      {
        LOBYTE(v33) = v33[2];
        do
        {
          *(v43 - 1) = v33 | 0x80;
          v33 = (v45 >> 7);
          *v43++ = v45 >> 7;
          v46 = v45 >> 14;
          v45 >>= 7;
        }

        while (v46);
      }
    }

    else
    {
      v43 = v33 + 2;
    }
  }

  else
  {
    v43 = v33;
  }

  v47 = *(a1 + 80);
  if (v47)
  {
    for (j = 0; j != v47; ++j)
    {
      if (*a3 <= v43)
      {
        v43 = sub_225EB68(a3, v43);
      }

      v49 = *(*(a1 + 88) + 8 * j + 8);
      *v43 = 90;
      v50 = *(v49 + 20);
      v43[1] = v50;
      if (v50 > 0x7F)
      {
        v51 = sub_19575D0(v50, v43 + 1);
      }

      else
      {
        v51 = v43 + 2;
      }

      v43 = sub_168CA8C(v49, v51, a3);
    }
  }

  v52 = *(a1 + 104);
  if (v52)
  {
    for (k = 0; k != v52; ++k)
    {
      if (*a3 <= v43)
      {
        v43 = sub_225EB68(a3, v43);
      }

      v54 = *(*(a1 + 112) + 8 * k + 8);
      *v43 = 98;
      v55 = *(v54 + 20);
      v43[1] = v55;
      if (v55 > 0x7F)
      {
        v56 = sub_19575D0(v55, v43 + 1);
      }

      else
      {
        v56 = v43 + 2;
      }

      v43 = sub_168F868(v54, v56, a3);
    }
  }

  if ((v5 & 0x10000) != 0)
  {
    if (*a3 <= v43)
    {
      v43 = sub_225EB68(a3, v43);
    }

    v58 = *(a1 + 180);
    *v43 = 384;
    v43[2] = v58;
    if (v58 > 0x7F)
    {
      v43[2] = v58 | 0x80;
      v59 = v58 >> 7;
      v43[3] = v58 >> 7;
      v57 = v43 + 4;
      if (v58 >= 0x4000)
      {
        LOBYTE(v43) = v43[3];
        do
        {
          *(v57 - 1) = v43 | 0x80;
          v43 = (v59 >> 7);
          *v57++ = v59 >> 7;
          v60 = v59 >> 14;
          v59 >>= 7;
        }

        while (v60);
      }
    }

    else
    {
      v57 = v43 + 3;
    }
  }

  else
  {
    v57 = v43;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v57)
    {
      v57 = sub_225EB68(a3, v57);
    }

    v62 = *(a1 + 156);
    *v57 = 392;
    v57[2] = v62;
    if (v62 > 0x7F)
    {
      v57[2] = v62 | 0x80;
      v63 = v62 >> 7;
      v57[3] = v62 >> 7;
      v61 = v57 + 4;
      if (v62 >= 0x4000)
      {
        LOBYTE(v57) = v57[3];
        do
        {
          *(v61 - 1) = v57 | 0x80;
          v57 = (v63 >> 7);
          *v61++ = v63 >> 7;
          v64 = v63 >> 14;
          v63 >>= 7;
        }

        while (v64);
      }
    }

    else
    {
      v61 = v57 + 3;
    }
  }

  else
  {
    v61 = v57;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v61)
    {
      v61 = sub_225EB68(a3, v61);
    }

    v66 = *(a1 + 160);
    *v61 = 400;
    v61[2] = v66;
    if (v66 > 0x7F)
    {
      v61[2] = v66 | 0x80;
      v67 = v66 >> 7;
      v61[3] = v66 >> 7;
      v65 = v61 + 4;
      if (v66 >= 0x4000)
      {
        LOBYTE(v68) = v61[3];
        do
        {
          *(v65 - 1) = v68 | 0x80;
          v68 = v67 >> 7;
          *v65++ = v67 >> 7;
          v69 = v67 >> 14;
          v67 >>= 7;
        }

        while (v69);
      }
    }

    else
    {
      v65 = v61 + 3;
    }
  }

  else
  {
    v65 = v61;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v65)
    {
      v65 = sub_225EB68(a3, v65);
    }

    v72 = *(a1 + 128);
    *v65 = 410;
    v73 = *(v72 + 20);
    v65[2] = v73;
    if (v73 > 0x7F)
    {
      v74 = sub_19575D0(v73, v65 + 2);
    }

    else
    {
      v74 = v65 + 3;
    }

    v65 = sub_168F868(v72, v74, a3);
    if ((v5 & 0x200) == 0)
    {
LABEL_126:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_144;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_126;
  }

  if (*a3 <= v65)
  {
    v65 = sub_225EB68(a3, v65);
  }

  v75 = *(a1 + 164);
  *v65 = 416;
  v65[2] = v75;
  v65 += 3;
  if ((v5 & 0x400) == 0)
  {
LABEL_127:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_147;
  }

LABEL_144:
  if (*a3 <= v65)
  {
    v65 = sub_225EB68(a3, v65);
  }

  v76 = *(a1 + 165);
  *v65 = 424;
  v65[2] = v76;
  v65 += 3;
  if ((v5 & 0x800) == 0)
  {
LABEL_128:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_150;
  }

LABEL_147:
  if (*a3 <= v65)
  {
    v65 = sub_225EB68(a3, v65);
  }

  v77 = *(a1 + 166);
  *v65 = 432;
  v65[2] = v77;
  v65 += 3;
  if ((v5 & 0x1000) == 0)
  {
LABEL_129:
    if ((v5 & 1) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_130;
  }

LABEL_150:
  if (*a3 <= v65)
  {
    v65 = sub_225EB68(a3, v65);
  }

  v78 = *(a1 + 167);
  *v65 = 448;
  v65[2] = v78;
  v65 += 3;
  if (v5)
  {
LABEL_130:
    v65 = sub_128AEEC(a3, 30, *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL, v65);
  }

LABEL_131:
  if (*(a1 + 26))
  {
    v65 = sub_1953428(a1 + 16, 950, 1000, v65, a3);
  }

  v70 = *(a1 + 8);
  if ((v70 & 1) == 0)
  {
    return v65;
  }

  v79 = v70 & 0xFFFFFFFFFFFFFFFCLL;
  v80 = *(v79 + 31);
  if (v80 < 0)
  {
    v81 = *(v79 + 8);
    v80 = *(v79 + 16);
  }

  else
  {
    v81 = (v79 + 8);
  }

  if (*a3 - v65 >= v80)
  {
    v82 = v80;
    memcpy(v65, v81, v80);
    v65 += v82;
    return v65;
  }

  return sub_1957130(a3, v81, v80, v65);
}

uint64_t sub_168E5C0(uint64_t a1)
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
      v9 = sub_168F2A0(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 80);
  v11 = v4 + v10;
  v12 = *(a1 + 88);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v14 = 8 * v10;
    do
    {
      v15 = *v13++;
      v16 = sub_168CCC8(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 104);
  v18 = v11 + v17;
  v19 = *(a1 + 112);
  if (v19)
  {
    v20 = (v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  if (v17)
  {
    v21 = 8 * v17;
    do
    {
      v22 = *v20++;
      v23 = sub_168FB0C(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(a1 + 40);
  if (!v24)
  {
    goto LABEL_32;
  }

  if (v24)
  {
    v40 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
    v41 = *(v40 + 23);
    v42 = *(v40 + 8);
    if ((v41 & 0x80u) == 0)
    {
      v42 = v41;
    }

    v18 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v24 & 2) == 0)
    {
LABEL_22:
      if ((v24 & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_65;
    }
  }

  else if ((v24 & 2) == 0)
  {
    goto LABEL_22;
  }

  v43 = sub_168FB0C(*(a1 + 128));
  v18 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v24 & 4) == 0)
  {
LABEL_23:
    if ((v24 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_66;
  }

LABEL_65:
  v18 += ((9 * (__clz(*(a1 + 136) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v24 & 8) == 0)
  {
LABEL_24:
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_67;
  }

LABEL_66:
  v18 += ((9 * (__clz(*(a1 + 140) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v24 & 0x10) == 0)
  {
LABEL_25:
    if ((v24 & 0x20) == 0)
    {
      goto LABEL_26;
    }

LABEL_68:
    v44 = *(a1 + 148);
    v45 = ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v44 >= 0)
    {
      v46 = v45;
    }

    else
    {
      v46 = 11;
    }

    v18 += v46;
    if ((v24 & 0x40) == 0)
    {
LABEL_27:
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }

    goto LABEL_72;
  }

LABEL_67:
  v18 += ((9 * (__clz(*(a1 + 144) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v24 & 0x20) != 0)
  {
    goto LABEL_68;
  }

LABEL_26:
  if ((v24 & 0x40) == 0)
  {
    goto LABEL_27;
  }

LABEL_72:
  v47 = *(a1 + 152);
  v48 = ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v47 >= 0)
  {
    v49 = v48;
  }

  else
  {
    v49 = 11;
  }

  v18 += v49;
  if ((v24 & 0x80) != 0)
  {
LABEL_28:
    v25 = *(a1 + 156);
    v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v25 >= 0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 12;
    }

    v18 += v27;
  }

LABEL_32:
  if ((v24 & 0xFF00) == 0)
  {
    goto LABEL_54;
  }

  if ((v24 & 0x100) != 0)
  {
    v28 = *(a1 + 160);
    v29 = ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v28 >= 0)
    {
      v30 = v29;
    }

    else
    {
      v30 = 12;
    }

    v18 += v30;
  }

  v31 = v18 + 3;
  if ((v24 & 0x200) == 0)
  {
    v31 = v18;
  }

  if ((v24 & 0x400) != 0)
  {
    v31 += 3;
  }

  if ((v24 & 0x800) != 0)
  {
    v31 += 3;
  }

  if ((v24 & 0x1000) != 0)
  {
    v18 = v31 + 3;
  }

  else
  {
    v18 = v31;
  }

  if ((v24 & 0x2000) != 0)
  {
    v50 = *(a1 + 168);
    v51 = ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v50 >= 0)
    {
      v52 = v51;
    }

    else
    {
      v52 = 11;
    }

    v18 += v52;
    if ((v24 & 0x4000) == 0)
    {
LABEL_49:
      if ((v24 & 0x8000) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_50;
    }
  }

  else if ((v24 & 0x4000) == 0)
  {
    goto LABEL_49;
  }

  v53 = *(a1 + 172);
  v54 = ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v53 >= 0)
  {
    v55 = v54;
  }

  else
  {
    v55 = 11;
  }

  v18 += v55;
  if ((v24 & 0x8000) != 0)
  {
LABEL_50:
    v32 = *(a1 + 176);
    v33 = ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v32 >= 0)
    {
      v34 = v33;
    }

    else
    {
      v34 = 11;
    }

    v18 += v34;
  }

LABEL_54:
  if ((v24 & 0x10000) != 0)
  {
    v35 = *(a1 + 180);
    v36 = ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v35 >= 0)
    {
      v37 = v36;
    }

    else
    {
      v37 = 12;
    }

    v18 += v37;
  }

  v38 = *(a1 + 8);
  if (v38)
  {
    v56 = v38 & 0xFFFFFFFFFFFFFFFCLL;
    v57 = *((v38 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v57 < 0)
    {
      v57 = *(v56 + 16);
    }

    v18 += v57;
  }

  *(a1 + 44) = v18;
  return v18;
}

void sub_168EA08(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_16BDCBC((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_16BDD48((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
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
    sub_16BDDC4((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 40);
  if (v19)
  {
    if (v19)
    {
      v22 = *(a2 + 120);
      *(a1 + 40) |= 1u;
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      sub_194EA1C((a1 + 120), (v22 & 0xFFFFFFFFFFFFFFFELL), v24);
      if ((v19 & 2) == 0)
      {
LABEL_13:
        if ((v19 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_49;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 40) |= 2u;
    v25 = *(a1 + 128);
    if (!v25)
    {
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_169B4FC(v27);
      *(a1 + 128) = v25;
    }

    if (*(a2 + 128))
    {
      v28 = *(a2 + 128);
    }

    else
    {
      v28 = &off_277CA88;
    }

    sub_168ED34(v25, v28);
    if ((v19 & 4) == 0)
    {
LABEL_14:
      if ((v19 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_50;
    }

LABEL_49:
    *(a1 + 136) = *(a2 + 136);
    if ((v19 & 8) == 0)
    {
LABEL_15:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_51;
    }

LABEL_50:
    *(a1 + 140) = *(a2 + 140);
    if ((v19 & 0x10) == 0)
    {
LABEL_16:
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_52;
    }

LABEL_51:
    *(a1 + 144) = *(a2 + 144);
    if ((v19 & 0x20) == 0)
    {
LABEL_17:
      if ((v19 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_53;
    }

LABEL_52:
    *(a1 + 148) = *(a2 + 148);
    if ((v19 & 0x40) == 0)
    {
LABEL_18:
      if ((v19 & 0x80) == 0)
      {
LABEL_20:
        *(a1 + 40) |= v19;
        goto LABEL_21;
      }

LABEL_19:
      *(a1 + 156) = *(a2 + 156);
      goto LABEL_20;
    }

LABEL_53:
    *(a1 + 152) = *(a2 + 152);
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_21:
  if ((v19 & 0xFF00) == 0)
  {
    goto LABEL_32;
  }

  if ((v19 & 0x100) != 0)
  {
    *(a1 + 160) = *(a2 + 160);
    if ((v19 & 0x200) == 0)
    {
LABEL_24:
      if ((v19 & 0x400) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_57;
    }
  }

  else if ((v19 & 0x200) == 0)
  {
    goto LABEL_24;
  }

  *(a1 + 164) = *(a2 + 164);
  if ((v19 & 0x400) == 0)
  {
LABEL_25:
    if ((v19 & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(a1 + 165) = *(a2 + 165);
  if ((v19 & 0x800) == 0)
  {
LABEL_26:
    if ((v19 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(a1 + 166) = *(a2 + 166);
  if ((v19 & 0x1000) == 0)
  {
LABEL_27:
    if ((v19 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(a1 + 167) = *(a2 + 167);
  if ((v19 & 0x2000) == 0)
  {
LABEL_28:
    if ((v19 & 0x4000) == 0)
    {
      goto LABEL_29;
    }

LABEL_61:
    *(a1 + 172) = *(a2 + 172);
    if ((v19 & 0x8000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_60:
  *(a1 + 168) = *(a2 + 168);
  if ((v19 & 0x4000) != 0)
  {
    goto LABEL_61;
  }

LABEL_29:
  if ((v19 & 0x8000) != 0)
  {
LABEL_30:
    *(a1 + 176) = *(a2 + 176);
  }

LABEL_31:
  *(a1 + 40) |= v19;
LABEL_32:
  if ((v19 & 0x10000) != 0)
  {
    v20 = *(a2 + 180);
    *(a1 + 40) |= 0x10000u;
    *(a1 + 180) = v20;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v21 = *(a2 + 8);
  if (v21)
  {

    sub_1957EF4((a1 + 8), (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_168ED34(std::string *result, uint64_t a2)
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

      goto LABEL_23;
    }

LABEL_20:
    v12 = *(a2 + 40);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v13 = v3->__r_.__value_.__l.__size_;
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    result = sub_194EA1C(&v3[1].__r_.__value_.__r.__words[2], (v12 & 0xFFFFFFFFFFFFFFFELL), v14);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }

LABEL_23:
    LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
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
      LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
      goto LABEL_9;
    }

LABEL_24:
    HIDWORD(v3[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
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

void *sub_168EE9C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_16BD710(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_168EF1C(void *a1)
{
  sub_168EE9C(a1);

  operator delete();
}

uint64_t sub_168EF54(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_168D110(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_168EFD0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  if ((sub_195ADC0(a3, &v19, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v19 + 1;
      v6 = *v19;
      if (*v19 < 0)
      {
        v7 = v6 + (*v5 << 7);
        v6 = v7 - 128;
        if (*v5 < 0)
        {
          v5 = sub_1958824(v19, v7 - 128);
          v6 = v8;
        }

        else
        {
          v5 = v19 + 2;
        }
      }

      v19 = v5;
      if (v6 == 10)
      {
        v12 = v5 - 1;
        while (1)
        {
          v13 = (v12 + 1);
          v19 = v12 + 1;
          v14 = *(a1 + 32);
          if (v14 && (v15 = *(a1 + 24), v15 < *v14))
          {
            *(a1 + 24) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_169B4FC(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_2231A68(a3, v16, v13);
          v19 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_23;
          }
        }
      }

      if (!v6 || (v6 & 7) == 4)
      {
        break;
      }

      v10 = *(a1 + 8);
      if (v10)
      {
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v11 = sub_11F1920((a1 + 8));
        v5 = v19;
      }

      v19 = sub_1952690(v6, v11, v5, a3);
      if (!v19)
      {
        return 0;
      }

LABEL_23:
      if (sub_195ADC0(a3, &v19, a3[11].i32[1]))
      {
        return v19;
      }
    }

    if (v5)
    {
      a3[10].i32[0] = v6 - 1;
      return v19;
    }

    return 0;
  }

  return v19;
}

char *sub_168F160(uint64_t a1, char *__dst, void *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 32) + 8 * i + 8);
      *__dst = 10;
      v9 = *(v8 + 20);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_168F868(v8, v10, a3);
    }
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return __dst;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
  v14 = *(v13 + 31);
  if (v14 < 0)
  {
    v15 = *(v13 + 8);
    v14 = *(v13 + 16);
  }

  else
  {
    v15 = (v13 + 8);
  }

  if (*a3 - __dst >= v14)
  {
    v16 = v14;
    memcpy(__dst, v15, v14);
    __dst += v16;
    return __dst;
  }

  return sub_1957130(a3, v15, v14, __dst);
}

uint64_t sub_168F2A0(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_168FB0C(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(a1 + 40) = v2;
  return v2;
}

std::string *sub_168F348(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_16BDDC4(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
    v7 = LODWORD(v3[1].__r_.__value_.__l.__data_) + v4;
    LODWORD(v3[1].__r_.__value_.__l.__data_) = v7;
    size = v3[1].__r_.__value_.__l.__size_;
    if (*size < v7)
    {
      *size = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_168F41C(uint64_t a1)
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

void sub_168F4E8(uint64_t a1)
{
  sub_168F41C(a1);

  operator delete();
}

uint64_t sub_168F520(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v31 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v31, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v31 + 1);
    v8 = **v31;
    if (**v31 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v31, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v31 + 2);
      }
    }

    *v31 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_48;
        }

        *(a1 + 16) |= 1u;
        v19 = *(a1 + 8);
        v14 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v14 = *v14;
        }

        v15 = (a1 + 24);
      }

      else if (v11 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_48;
        }

        *(a1 + 16) |= 2u;
        v22 = *(a1 + 8);
        v14 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v14 = *v14;
        }

        v15 = (a1 + 32);
      }

      else
      {
        if (v11 != 3 || v8 != 26)
        {
          goto LABEL_48;
        }

        *(a1 + 16) |= 4u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 40);
      }

      v23 = sub_194DB04(v15, v14);
      v24 = sub_1958890(v23, *v31, a3);
LABEL_55:
      *v31 = v24;
      if (!v24)
      {
        goto LABEL_70;
      }

      goto LABEL_59;
    }

    if (v11 != 4)
    {
      break;
    }

    if (v8 != 32)
    {
      goto LABEL_48;
    }

    v20 = v7 + 1;
    v21 = *v7;
    if (v21 < 0)
    {
      v21 = (*v20 << 7) + v21 - 128;
      if (*v20 < 0)
      {
        v20 = sub_19587DC(v7, v21);
      }

      else
      {
        v20 = v7 + 2;
      }
    }

    v5 |= 8u;
    *v31 = v20;
    *(a1 + 48) = -(v21 & 1) ^ (v21 >> 1);
    if (!v20)
    {
      goto LABEL_70;
    }

LABEL_59:
    if (sub_195ADC0(a3, v31, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 5)
  {
    if (v8 != 40)
    {
      goto LABEL_48;
    }

    v26 = v7 + 1;
    v25 = *v7;
    if (v25 < 0)
    {
      v27 = *v26;
      v25 = (v27 << 7) + v25 - 128;
      if (v27 < 0)
      {
        *v31 = sub_19587DC(v7, v25);
        if (!*v31)
        {
          goto LABEL_70;
        }

        goto LABEL_46;
      }

      v26 = v7 + 2;
    }

    *v31 = v26;
LABEL_46:
    if (v25 > 1)
    {
      sub_1313700();
    }

    else
    {
      *(a1 + 16) |= 0x10u;
      *(a1 + 52) = v25;
    }

    goto LABEL_59;
  }

  if (v11 == 6 && v8 == 48)
  {
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if (v18 < 0)
    {
      *v31 = sub_19587DC(v7, v16);
      if (!*v31)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v17 = v7 + 2;
LABEL_25:
      *v31 = v17;
    }

    if (v16 > 3)
    {
      sub_13137B8();
    }

    else
    {
      *(a1 + 16) |= 0x20u;
      *(a1 + 56) = v16;
    }

    goto LABEL_59;
  }

LABEL_48:
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
      v7 = *v31;
    }

    v24 = sub_1952690(v8, v30, v7, a3);
    goto LABEL_55;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_70:
  *v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v31;
}

char *sub_168F868(uint64_t a1, char *__dst, void *a3)
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

LABEL_8:
      v4 = sub_128AEEC(a3, 3, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
      if ((v6 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
LABEL_5:
    v7 = v4;
    goto LABEL_16;
  }

LABEL_9:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 48);
  *v4 = 32;
  v9 = (2 * v8) ^ (v8 >> 31);
  v4[1] = (2 * v8) ^ (v8 >> 31);
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

LABEL_16:
  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v14 = *(a1 + 52);
    *v7 = 40;
    v7[1] = v14;
    if (v14 > 0x7F)
    {
      v7[1] = v14 | 0x80;
      v15 = v14 >> 7;
      v7[2] = v14 >> 7;
      v13 = v7 + 3;
      if (v14 >= 0x4000)
      {
        LOBYTE(v7) = v7[2];
        do
        {
          *(v13 - 1) = v7 | 0x80;
          v7 = (v15 >> 7);
          *v13++ = v15 >> 7;
          v16 = v15 >> 14;
          v15 >>= 7;
        }

        while (v16);
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

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v13)
    {
      v13 = sub_225EB68(a3, v13);
    }

    v18 = *(a1 + 56);
    *v13 = 48;
    v13[1] = v18;
    if (v18 > 0x7F)
    {
      v13[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v13[2] = v18 >> 7;
      v17 = v13 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v20) = v13[2];
        do
        {
          *(v17 - 1) = v20 | 0x80;
          v20 = v19 >> 7;
          *v17++ = v19 >> 7;
          v21 = v19 >> 14;
          v19 >>= 7;
        }

        while (v21);
      }
    }

    else
    {
      v17 = v13 + 2;
    }
  }

  else
  {
    v17 = v13;
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v17;
  }

  v24 = v22 & 0xFFFFFFFFFFFFFFFCLL;
  v25 = *(v24 + 31);
  if (v25 < 0)
  {
    v26 = *(v24 + 8);
    v25 = *(v24 + 16);
  }

  else
  {
    v26 = (v24 + 8);
  }

  if (*a3 - v17 >= v25)
  {
    v27 = v25;
    memcpy(v17, v26, v25);
    v17 += v27;
    return v17;
  }

  return sub_1957130(a3, v26, v25, v17);
}

uint64_t sub_168FB0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) == 0)
  {
    v2 = 0;
    goto LABEL_29;
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
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  v2 += ((9 * (__clz((2 * *(a1 + 48)) ^ (*(a1 + 48) >> 31) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) == 0)
  {
LABEL_15:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

LABEL_21:
  v12 = *(a1 + 52);
  if (v12 < 0)
  {
    v13 = 11;
  }

  else
  {
    v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v13;
  if ((v1 & 0x20) != 0)
  {
LABEL_25:
    v14 = *(a1 + 56);
    if (v14 < 0)
    {
      v15 = 11;
    }

    else
    {
      v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v15;
  }

LABEL_29:
  v16 = *(a1 + 8);
  if (v16)
  {
    v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v2 += v19;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_168FCE4(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 8) & 1;
  if (a1 != &off_277CAC8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_168F41C(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_168FD9C(uint64_t a1)
{
  sub_168FCE4(a1);

  operator delete();
}

uint64_t sub_168FDD4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_168D110(*(result + 24));
    }

    *(v1 + 32) = -1;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_168FE40(uint64_t a1, char *a2, int32x2_t *a3)
{
  v24 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v24, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v24 + 1;
    v8 = *v24;
    if (*v24 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v24, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v24 + 2;
      }
    }

    v24 = v7;
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
    v17 = v7 + 1;
    LODWORD(v16) = *v7;
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    v18 = *v17;
    v16 = v16 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_23:
      v24 = v17;
      *(a1 + 32) = v16;
      goto LABEL_30;
    }

    v22 = sub_19587DC(v7, v16);
    v24 = v22;
    *(a1 + 32) = v23;
    if (!v22)
    {
      goto LABEL_37;
    }

LABEL_30:
    if (sub_195ADC0(a3, &v24, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v19 = *(a1 + 24);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_169B4FC(v21);
      *(a1 + 24) = v19;
      v7 = v24;
    }

    v15 = sub_2231A68(a3, v19, v7);
LABEL_29:
    v24 = v15;
    if (!v15)
    {
      goto LABEL_37;
    }

    goto LABEL_30;
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
      v7 = v24;
    }

    v15 = sub_1952690(v8, v14, v7, a3);
    goto LABEL_29;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_37:
  v24 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v24;
}

char *sub_1690014(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *__dst = 10;
    v7 = *(v6 + 20);
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, __dst + 1);
    }

    else
    {
      v8 = __dst + 2;
    }

    __dst = sub_168F868(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 32);
    *__dst = 16;
    __dst[1] = v10;
    if (v10 > 0x7F)
    {
      __dst[1] = v10 | 0x80;
      v11 = v10 >> 7;
      __dst[2] = v10 >> 7;
      v9 = __dst + 3;
      if (v10 >= 0x4000)
      {
        LOBYTE(v12) = __dst[2];
        do
        {
          *(v9 - 1) = v12 | 0x80;
          v12 = v11 >> 7;
          *v9++ = v11 >> 7;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
      }
    }

    else
    {
      v9 = __dst + 2;
    }
  }

  else
  {
    v9 = __dst;
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v9;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if (*a3 - v9 >= v17)
  {
    v19 = v17;
    memcpy(v9, v18, v17);
    v9 += v19;
    return v9;
  }

  return sub_1957130(a3, v18, v17, v9);
}

uint64_t sub_16901A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_168FB0C(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 32);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_11:
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    result += v9;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_1690268(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      data = result[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v7 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v7 = *v7;
        }

        data = sub_169B4FC(v7);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_277CA88;
      }

      result = sub_168ED34(data, v8);
    }

    if ((v4 & 2) != 0)
    {
      LODWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1690350(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = &off_26FD6B0;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = a2;
  *(a1 + 136) = 0;
  *(a1 + 144) = a2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a2;
  *(a1 + 184) = 0;
  *(a1 + 192) = a2;
  *(a1 + 200) = 0;
  *(a1 + 208) = &qword_278E990;
  *(a1 + 216) = &qword_278E990;
  *(a1 + 224) = &qword_278E990;
  *(a1 + 232) = &qword_278E990;
  *(a1 + 240) = &qword_278E990;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  return a1;
}

void sub_1690418(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1690448(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_15;
    }
  }

  else if (v4)
  {
    goto LABEL_15;
  }

  v5 = (a1 + 208);
  if (*(a1 + 208) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 216) != &qword_278E990)
  {
    sub_194E89C((a1 + 216));
  }

  if (*(a1 + 224) != &qword_278E990)
  {
    sub_194E89C((a1 + 224));
  }

  if (*(a1 + 232) != &qword_278E990)
  {
    sub_194E89C((a1 + 232));
  }

  if (*(a1 + 240) != &qword_278E990)
  {
    sub_194E89C((a1 + 240));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_15:
  sub_1956ABC(a1 + 184);
  sub_1956ABC(a1 + 168);
  sub_16BD818((a1 + 144));
  sub_1956ABC(a1 + 120);
  sub_1956ABC(a1 + 96);
  sub_1956AFC((a1 + 72));
  sub_16BD794((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1690584(uint64_t a1)
{
  sub_1690448(a1);

  operator delete();
}

uint64_t sub_16905BC(uint64_t a1)
{
  sub_1951124((a1 + 16));
  v2 = *(a1 + 56);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 64) + 8);
    do
    {
      v4 = *v3++;
      sub_168CFBC(v4);
      --v2;
    }

    while (v2);
    *(a1 + 56) = 0;
  }

  result = sub_12A41D0(a1 + 72);
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  v6 = *(a1 + 152);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 160) + 8);
    do
    {
      v8 = *v7++;
      result = sub_168FDD4(v8);
      --v6;
    }

    while (v6);
    *(a1 + 152) = 0;
  }

  *(a1 + 168) = 0;
  *(a1 + 184) = 0;
  v9 = *(a1 + 40);
  if ((v9 & 0x1F) != 0)
  {
    if ((v9 & 1) == 0)
    {
      if ((v9 & 2) == 0)
      {
        goto LABEL_12;
      }

LABEL_20:
      v11 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v11 + 23) < 0)
      {
        **v11 = 0;
        *(v11 + 8) = 0;
        if ((v9 & 4) != 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        *v11 = 0;
        *(v11 + 23) = 0;
        if ((v9 & 4) != 0)
        {
          goto LABEL_24;
        }
      }

LABEL_13:
      if ((v9 & 8) == 0)
      {
        goto LABEL_14;
      }

LABEL_28:
      v13 = *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v13 + 23) < 0)
      {
        **v13 = 0;
        *(v13 + 8) = 0;
        if ((v9 & 0x10) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *v13 = 0;
        *(v13 + 23) = 0;
        if ((v9 & 0x10) == 0)
        {
          goto LABEL_35;
        }
      }

      goto LABEL_32;
    }

    v10 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v9 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v9 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_12:
    if ((v9 & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_24:
    v12 = *(a1 + 224) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
      if ((v9 & 8) != 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
      if ((v9 & 8) != 0)
      {
        goto LABEL_28;
      }
    }

LABEL_14:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_35;
    }

LABEL_32:
    v14 = *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v14 + 23) < 0)
    {
      **v14 = 0;
      *(v14 + 8) = 0;
    }

    else
    {
      *v14 = 0;
      *(v14 + 23) = 0;
    }
  }

LABEL_35:
  if ((v9 & 0xE0) != 0)
  {
    *(a1 + 256) = 0;
    *(a1 + 248) = 0;
  }

  if ((v9 & 0x700) != 0)
  {
    *(a1 + 268) = 0;
    *(a1 + 260) = 0;
  }

  v16 = *(a1 + 8);
  v15 = a1 + 8;
  *(v15 + 32) = 0;
  if (v16)
  {

    return sub_1957EA8(v15);
  }

  return result;
}

uint64_t sub_16907B4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v79 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v79, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (2)
  {
    v8 = (*v79 + 1);
    v9 = **v79;
    if (**v79 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(*v79, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = (*v79 + 2);
      }
    }

    *v79 = v8;
    v13 = v9 >> 3;
    switch(v9 >> 3)
    {
      case 1u:
        if (v9 != 8)
        {
          goto LABEL_152;
        }

        v15 = v8 + 1;
        v14 = *v8;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if (v16 < 0)
        {
          *v79 = sub_19587DC(v8, v14);
          if (!*v79)
          {
            goto LABEL_164;
          }
        }

        else
        {
          v15 = v8 + 2;
LABEL_13:
          *v79 = v15;
        }

        if (v14 > 5)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 40) |= 0x20u;
          *(a1 + 248) = v14;
        }

        goto LABEL_125;
      case 2u:
        if (v9 != 18)
        {
          goto LABEL_152;
        }

        v53 = v8 - 1;
        while (1)
        {
          v54 = (v53 + 1);
          *v79 = v53 + 1;
          v55 = *(a1 + 64);
          if (v55 && (v56 = *(a1 + 56), v56 < *v55))
          {
            *(a1 + 56) = v56 + 1;
            v57 = *&v55[2 * v56 + 2];
          }

          else
          {
            v58 = sub_169B400(*(a1 + 48));
            v57 = sub_19593CC(a1 + 48, v58);
            v54 = *v79;
          }

          v53 = sub_2231AF8(a3, v57, v54);
          *v79 = v53;
          if (!v53)
          {
            goto LABEL_164;
          }

          if (*a3 <= v53 || *v53 != 18)
          {
            goto LABEL_125;
          }
        }

      case 3u:
        if (v9 != 26)
        {
          goto LABEL_152;
        }

        *(a1 + 40) |= 1u;
        v43 = *(a1 + 8);
        v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
        if (v43)
        {
          v44 = *v44;
        }

        v45 = (a1 + 208);
        goto LABEL_123;
      case 4u:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x18u:
        goto LABEL_152;
      case 5u:
        if (v9 != 40)
        {
          goto LABEL_152;
        }

        v5 |= 0x40u;
        v32 = v8 + 1;
        v33 = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_53;
        }

        v34 = *v32;
        v33 = v33 + (v34 << 7) - 128;
        if (v34 < 0)
        {
          v70 = sub_1958770(v8, v33);
          *v79 = v70;
          *(a1 + 252) = v71;
          if (!v70)
          {
            goto LABEL_164;
          }
        }

        else
        {
          v32 = v8 + 2;
LABEL_53:
          *v79 = v32;
          *(a1 + 252) = v33;
        }

        goto LABEL_125;
      case 6u:
        if (v9 != 48)
        {
          goto LABEL_152;
        }

        v5 |= 0x80u;
        v47 = v8 + 1;
        v48 = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_78;
        }

        v49 = *v47;
        v48 = v48 + (v49 << 7) - 128;
        if (v49 < 0)
        {
          v72 = sub_1958770(v8, v48);
          *v79 = v72;
          *(a1 + 256) = v73;
          if (!v72)
          {
            goto LABEL_164;
          }
        }

        else
        {
          v47 = v8 + 2;
LABEL_78:
          *v79 = v47;
          *(a1 + 256) = v48;
        }

        goto LABEL_125;
      case 7u:
        if (v9 != 58)
        {
          goto LABEL_152;
        }

        *(a1 + 40) |= 2u;
        v46 = *(a1 + 8);
        v44 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
        if (v46)
        {
          v44 = *v44;
        }

        v45 = (a1 + 216);
        goto LABEL_123;
      case 8u:
        if (v9 != 64)
        {
          goto LABEL_152;
        }

        v51 = v8 + 1;
        v50 = *v8;
        if ((v50 & 0x8000000000000000) == 0)
        {
          goto LABEL_83;
        }

        v52 = *v51;
        v50 = (v52 << 7) + v50 - 128;
        if (v52 < 0)
        {
          *v79 = sub_19587DC(v8, v50);
          if (!*v79)
          {
            goto LABEL_164;
          }
        }

        else
        {
          v51 = v8 + 2;
LABEL_83:
          *v79 = v51;
        }

        if (v50 > 1)
        {
          sub_12E85F0();
        }

        else
        {
          *(a1 + 40) |= 0x100u;
          *(a1 + 260) = v50;
        }

        goto LABEL_125;
      case 9u:
        if (v9 != 74)
        {
          goto LABEL_152;
        }

        *(a1 + 40) |= 4u;
        v63 = *(a1 + 8);
        v44 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
        if (v63)
        {
          v44 = *v44;
        }

        v45 = (a1 + 224);
        goto LABEL_123;
      case 0xAu:
        if (v9 != 80)
        {
          goto LABEL_152;
        }

        v60 = v8 + 1;
        v59 = *v8;
        if ((v59 & 0x8000000000000000) == 0)
        {
          goto LABEL_100;
        }

        v61 = *v60;
        v59 = (v61 << 7) + v59 - 128;
        if (v61 < 0)
        {
          *v79 = sub_19587DC(v8, v59);
          if (!*v79)
          {
            goto LABEL_164;
          }
        }

        else
        {
          v60 = v8 + 2;
LABEL_100:
          *v79 = v60;
        }

        if (v59 > 1)
        {
          sub_12E8488();
        }

        else
        {
          *(a1 + 40) |= 0x200u;
          *(a1 + 264) = v59;
        }

        goto LABEL_125;
      case 0x14u:
        if (v9 != 162)
        {
          goto LABEL_152;
        }

        *(a1 + 40) |= 8u;
        v62 = *(a1 + 8);
        v44 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
        if (v62)
        {
          v44 = *v44;
        }

        v45 = (a1 + 232);
        goto LABEL_123;
      case 0x15u:
        if (v9 != 170)
        {
          goto LABEL_152;
        }

        v35 = v8 - 2;
        while (1)
        {
          v36 = (v35 + 2);
          *v79 = v35 + 2;
          v37 = *(a1 + 88);
          if (v37 && (v38 = *(a1 + 80), v38 < *v37))
          {
            *(a1 + 80) = v38 + 1;
            v39 = *&v37[2 * v38 + 2];
          }

          else
          {
            v40 = *(a1 + 72);
            if (!v40)
            {
              operator new();
            }

            *v42 = v41;
            v42[1] = sub_195A650;
            *v41 = 0;
            v41[1] = 0;
            v41[2] = 0;
            v39 = sub_19593CC(a1 + 72, v41);
            v36 = *v79;
          }

          v35 = sub_1958890(v39, v36, a3);
          *v79 = v35;
          if (!v35)
          {
            goto LABEL_164;
          }

          if (*a3 <= v35 || *v35 != 426)
          {
            goto LABEL_125;
          }
        }

      case 0x16u:
        if (v9 == 178)
        {
          v17 = (a1 + 96);
          goto LABEL_113;
        }

        if (v9 != 176)
        {
          goto LABEL_152;
        }

        LODWORD(v80) = sub_1211E88(v79);
        v76 = (a1 + 96);
        goto LABEL_150;
      case 0x17u:
        if (v9 == 186)
        {
          v17 = (a1 + 120);
LABEL_113:
          v64 = sub_1958918(v17, v8, a3);
LABEL_124:
          *v79 = v64;
          if (!v64)
          {
            goto LABEL_164;
          }

          goto LABEL_125;
        }

        if (v9 != 184)
        {
          goto LABEL_152;
        }

        LODWORD(v80) = sub_1211E88(v79);
        v76 = (a1 + 120);
        goto LABEL_150;
      case 0x19u:
        if (v9 != 202)
        {
          goto LABEL_152;
        }

        v18 = v8 - 2;
        while (1)
        {
          v19 = (v18 + 2);
          *v79 = v18 + 2;
          v20 = *(a1 + 160);
          if (v20 && (v21 = *(a1 + 152), v21 < *v20))
          {
            *(a1 + 152) = v21 + 1;
            v22 = *&v20[2 * v21 + 2];
          }

          else
          {
            v23 = sub_169B588(*(a1 + 144));
            v22 = sub_19593CC(a1 + 144, v23);
            v19 = *v79;
          }

          v18 = sub_2231B88(a3, v22, v19);
          *v79 = v18;
          if (!v18)
          {
            goto LABEL_164;
          }

          if (*a3 <= v18 || *v18 != 458)
          {
            goto LABEL_125;
          }
        }

      case 0x1Au:
        if (v9 != 208)
        {
          goto LABEL_152;
        }

        v5 |= 0x400u;
        v65 = v8 + 1;
        v66 = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_118;
        }

        v67 = *v65;
        v66 = v66 + (v67 << 7) - 128;
        if (v67 < 0)
        {
          v74 = sub_1958770(v8, v66);
          *v79 = v74;
          *(a1 + 268) = v75;
          if (!v74)
          {
            goto LABEL_164;
          }
        }

        else
        {
          v65 = v8 + 2;
LABEL_118:
          *v79 = v65;
          *(a1 + 268) = v66;
        }

        goto LABEL_125;
      case 0x1Bu:
        if (v9 != 216)
        {
          if (v9 == 218)
          {
            *&v80 = a1 + 168;
            *(&v80 + 1) = sub_168C6CC;
            v81 = a1 + 8;
            v82 = 27;
            v64 = sub_1216588(a3, v8, &v80);
            goto LABEL_124;
          }

          goto LABEL_152;
        }

        v24 = (v8 - 2);
        while (1)
        {
          *v79 = v24 + 2;
          v25 = *(v24 + 2);
          v26 = (v24 + 3);
          if (v25 < 0)
          {
            v27 = *v26;
            v28 = (v27 << 7) + v25;
            LODWORD(v25) = v28 - 128;
            if (v27 < 0)
            {
              *v79 = sub_19587DC(v24 + 2, (v28 - 128));
              if (!*v79)
              {
                goto LABEL_164;
              }

              LODWORD(v25) = v31;
              goto LABEL_38;
            }

            v26 = (v24 + 4);
          }

          *v79 = v26;
LABEL_38:
          if (v25 > 8)
          {
            sub_16C0288();
          }

          else
          {
            v29 = *(a1 + 168);
            if (v29 == *(a1 + 172))
            {
              v30 = v29 + 1;
              sub_1958E5C((a1 + 168), v29 + 1);
              *(*(a1 + 176) + 4 * v29) = v25;
            }

            else
            {
              *(*(a1 + 176) + 4 * v29) = v25;
              v30 = v29 + 1;
            }

            *(a1 + 168) = v30;
          }

          v24 = *v79;
          if (*a3 <= *v79 || **v79 != 472)
          {
            goto LABEL_125;
          }
        }

      default:
        if (v13 != 50)
        {
          if (v13 != 51)
          {
            goto LABEL_152;
          }

          if (v9 == 154)
          {
            v17 = (a1 + 184);
            goto LABEL_113;
          }

          if (v9 != 152)
          {
            goto LABEL_152;
          }

          LODWORD(v80) = sub_1211E88(v79);
          v76 = (a1 + 184);
LABEL_150:
          sub_194FE98(v76, &v80);
          if (!*v79)
          {
            goto LABEL_164;
          }

LABEL_125:
          if (sub_195ADC0(a3, v79, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

        if (v9 == 146)
        {
          *(a1 + 40) |= 0x10u;
          v68 = *(a1 + 8);
          v44 = (v68 & 0xFFFFFFFFFFFFFFFCLL);
          if (v68)
          {
            v44 = *v44;
          }

          v45 = (a1 + 240);
LABEL_123:
          v69 = sub_194DB04(v45, v44);
          v64 = sub_1958890(v69, *v79, a3);
          goto LABEL_124;
        }

LABEL_152:
        if (v9)
        {
          v77 = (v9 & 7) == 4;
        }

        else
        {
          v77 = 1;
        }

        if (!v77)
        {
          if (v9 - 7600 > 0x18F)
          {
            if (*v7)
            {
              v78 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v78 = sub_11F1920((a1 + 8));
              v8 = *v79;
            }

            v64 = sub_1952690(v9, v78, v8, a3);
          }

          else
          {
            v64 = sub_19525AC((a1 + 16), v9, v8, &off_277CAF0, (a1 + 8), a3);
          }

          goto LABEL_124;
        }

        if (v8)
        {
          a3[10].i32[0] = v9 - 1;
        }

        else
        {
LABEL_164:
          *v79 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return *v79;
    }
  }
}

char *sub_16910FC(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 248);
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

  v11 = *(a1 + 56);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v13 = *(*(a1 + 64) + 8 * i + 8);
      *v6 = 18;
      v14 = *(v13 + 44);
      v6[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, v6 + 1);
      }

      else
      {
        v15 = v6 + 2;
      }

      v6 = sub_168DC14(v13, v15, a3);
    }
  }

  if (v5)
  {
    v6 = sub_128AEEC(a3, 3, *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v17 = *(a1 + 252);
    *v6 = 40;
    v6[1] = v17;
    if (v17 > 0x7F)
    {
      v6[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v6[2] = v17 >> 7;
      v16 = v6 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v19) = v6[2];
        do
        {
          *(v16 - 1) = v19 | 0x80;
          v19 = v18 >> 7;
          *v16++ = v18 >> 7;
          v20 = v18 >> 14;
          v18 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v16 = v6 + 2;
    }
  }

  else
  {
    v16 = v6;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v22 = *(a1 + 256);
    *v16 = 48;
    v16[1] = v22;
    if (v22 > 0x7F)
    {
      v16[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v16[2] = v22 >> 7;
      v21 = v16 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v24) = v16[2];
        do
        {
          *(v21 - 1) = v24 | 0x80;
          v24 = v23 >> 7;
          *v21++ = v23 >> 7;
          v25 = v23 >> 14;
          v23 >>= 7;
        }

        while (v25);
      }
    }

    else
    {
      v21 = v16 + 2;
    }
  }

  else
  {
    v21 = v16;
  }

  if ((v5 & 2) != 0)
  {
    v21 = sub_128AEEC(a3, 7, *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL, v21);
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v27 = *(a1 + 260);
    *v21 = 64;
    v21[1] = v27;
    if (v27 > 0x7F)
    {
      v21[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v21[2] = v27 >> 7;
      v26 = v21 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v29) = v21[2];
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
      v26 = v21 + 2;
    }
  }

  else
  {
    v26 = v21;
  }

  if ((v5 & 4) != 0)
  {
    v26 = sub_128AEEC(a3, 9, *(a1 + 224) & 0xFFFFFFFFFFFFFFFELL, v26);
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v32 = *(a1 + 264);
    *v26 = 80;
    v26[1] = v32;
    if (v32 > 0x7F)
    {
      v26[1] = v32 | 0x80;
      v33 = v32 >> 7;
      v26[2] = v32 >> 7;
      v31 = v26 + 3;
      if (v32 >= 0x4000)
      {
        LOBYTE(v26) = v26[2];
        do
        {
          *(v31 - 1) = v26 | 0x80;
          v26 = (v33 >> 7);
          *v31++ = v33 >> 7;
          v34 = v33 >> 14;
          v33 >>= 7;
        }

        while (v34);
      }
    }

    else
    {
      v31 = v26 + 2;
    }
  }

  else
  {
    v31 = v26;
  }

  if ((v5 & 8) != 0)
  {
    v31 = sub_128AEEC(a3, 20, *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL, v31);
  }

  v35 = *(a1 + 80);
  if (v35 >= 1)
  {
    v36 = 8;
    do
    {
      v37 = *(*(a1 + 88) + v36);
      v38 = *(v37 + 23);
      if (v38 < 0 && (v38 = v37[1], v38 > 127) || *a3 - v31 + 13 < v38)
      {
        v31 = sub_1957480(a3, 21, v37, v31);
      }

      else
      {
        *v31 = 426;
        v31[2] = v38;
        if (*(v37 + 23) < 0)
        {
          v37 = *v37;
        }

        v39 = v31 + 3;
        memcpy(v31 + 3, v37, v38);
        v31 = &v39[v38];
      }

      v36 += 8;
      --v35;
    }

    while (v35);
  }

  v40 = *(a1 + 112);
  if (v40 > 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    *v31 = 434;
    v41 = v31 + 2;
    if (v40 >= 0x80)
    {
      do
      {
        *v41++ = v40 | 0x80;
        v42 = v40 >> 7;
        v95 = v40 >> 14;
        v40 >>= 7;
      }

      while (v95);
    }

    else
    {
      LOBYTE(v42) = v40;
    }

    *v41 = v42;
    v43 = *(a1 + 104);
    v44 = &v43[*(a1 + 96)];
    v45 = v41 + 1;
    do
    {
      if (*a3 <= v45)
      {
        v45 = sub_225EB68(a3, v45);
      }

      v47 = *v43++;
      v46 = v47;
      *v45 = v47;
      if (v47 > 0x7F)
      {
        *v45 = v46 | 0x80;
        v48 = v46 >> 7;
        v45[1] = v46 >> 7;
        v31 = v45 + 2;
        if (v46 >= 0x4000)
        {
          LOBYTE(v49) = v45[1];
          do
          {
            *(v31 - 1) = v49 | 0x80;
            v49 = v48 >> 7;
            *v31++ = v48 >> 7;
            v50 = v48 >> 14;
            v48 >>= 7;
          }

          while (v50);
        }
      }

      else
      {
        v31 = v45 + 1;
      }

      v45 = v31;
    }

    while (v43 < v44);
  }

  v51 = *(a1 + 136);
  if (v51 >= 1)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    *v31 = 442;
    v52 = v31 + 2;
    if (v51 >= 0x80)
    {
      do
      {
        *v52++ = v51 | 0x80;
        v53 = v51 >> 7;
        v96 = v51 >> 14;
        v51 >>= 7;
      }

      while (v96);
    }

    else
    {
      LOBYTE(v53) = v51;
    }

    *v52 = v53;
    v54 = *(a1 + 128);
    v55 = &v54[*(a1 + 120)];
    v56 = v52 + 1;
    do
    {
      if (*a3 <= v56)
      {
        v56 = sub_225EB68(a3, v56);
      }

      v58 = *v54++;
      v57 = v58;
      *v56 = v58;
      if (v58 > 0x7F)
      {
        *v56 = v57 | 0x80;
        v59 = v57 >> 7;
        v56[1] = v57 >> 7;
        v31 = v56 + 2;
        if (v57 >= 0x4000)
        {
          LOBYTE(v60) = v56[1];
          do
          {
            *(v31 - 1) = v60 | 0x80;
            v60 = v59 >> 7;
            *v31++ = v59 >> 7;
            v61 = v59 >> 14;
            v59 >>= 7;
          }

          while (v61);
        }
      }

      else
      {
        v31 = v56 + 1;
      }

      v56 = v31;
    }

    while (v54 < v55);
  }

  v62 = *(a1 + 152);
  if (v62)
  {
    for (j = 0; j != v62; ++j)
    {
      if (*a3 <= v31)
      {
        v31 = sub_225EB68(a3, v31);
      }

      v64 = *(*(a1 + 160) + 8 * j + 8);
      *v31 = 458;
      v65 = *(v64 + 20);
      v31[2] = v65;
      if (v65 > 0x7F)
      {
        v66 = sub_19575D0(v65, v31 + 2);
      }

      else
      {
        v66 = v31 + 3;
      }

      v31 = sub_1690014(v64, v66, a3);
    }
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v68 = *(a1 + 268);
    *v31 = 464;
    v31[2] = v68;
    if (v68 > 0x7F)
    {
      v31[2] = v68 | 0x80;
      v69 = v68 >> 7;
      v31[3] = v68 >> 7;
      v67 = v31 + 4;
      if (v68 >= 0x4000)
      {
        LOBYTE(v70) = v31[3];
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
      v67 = v31 + 3;
    }
  }

  else
  {
    v67 = v31;
  }

  v72 = *(a1 + 168);
  if (v72 < 1)
  {
    v75 = v67;
  }

  else
  {
    for (k = 0; k != v72; ++k)
    {
      if (*a3 <= v67)
      {
        v67 = sub_225EB68(a3, v67);
      }

      v74 = *(*(a1 + 176) + 4 * k);
      *v67 = 472;
      v67[2] = v74;
      if (v74 > 0x7F)
      {
        v67[2] = v74 | 0x80;
        v76 = v74 >> 7;
        v67[3] = v74 >> 7;
        v75 = v67 + 4;
        if (v74 >= 0x4000)
        {
          LOBYTE(v77) = v67[3];
          do
          {
            *(v75 - 1) = v77 | 0x80;
            v77 = v76 >> 7;
            *v75++ = v76 >> 7;
            v78 = v76 >> 14;
            v76 >>= 7;
          }

          while (v78);
        }
      }

      else
      {
        v75 = v67 + 3;
      }

      v67 = v75;
    }
  }

  if ((v5 & 0x10) != 0)
  {
    v75 = sub_128AEEC(a3, 50, *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL, v75);
  }

  v79 = *(a1 + 200);
  if (v79 >= 1)
  {
    if (*a3 <= v75)
    {
      v75 = sub_225EB68(a3, v75);
    }

    *v75 = 922;
    v80 = v75 + 2;
    if (v79 >= 0x80)
    {
      do
      {
        *v80++ = v79 | 0x80;
        v81 = v79 >> 7;
        v97 = v79 >> 14;
        v79 >>= 7;
      }

      while (v97);
    }

    else
    {
      LOBYTE(v81) = v79;
    }

    *v80 = v81;
    v82 = *(a1 + 192);
    v83 = &v82[*(a1 + 184)];
    v84 = v80 + 1;
    do
    {
      if (*a3 <= v84)
      {
        v84 = sub_225EB68(a3, v84);
      }

      v86 = *v82++;
      v85 = v86;
      *v84 = v86;
      if (v86 > 0x7F)
      {
        *v84 = v85 | 0x80;
        v87 = v85 >> 7;
        v84[1] = v85 >> 7;
        v75 = v84 + 2;
        if (v85 >= 0x4000)
        {
          LOBYTE(v88) = v84[1];
          do
          {
            *(v75 - 1) = v88 | 0x80;
            v88 = v87 >> 7;
            *v75++ = v87 >> 7;
            v89 = v87 >> 14;
            v87 >>= 7;
          }

          while (v89);
        }
      }

      else
      {
        v75 = v84 + 1;
      }

      v84 = v75;
    }

    while (v82 < v83);
  }

  if (*(a1 + 26))
  {
    v75 = sub_1953428(a1 + 16, 950, 1000, v75, a3);
  }

  v90 = *(a1 + 8);
  if ((v90 & 1) == 0)
  {
    return v75;
  }

  v92 = v90 & 0xFFFFFFFFFFFFFFFCLL;
  v93 = *(v92 + 31);
  if (v93 < 0)
  {
    v94 = *(v92 + 8);
    v93 = *(v92 + 16);
  }

  else
  {
    v94 = (v92 + 8);
  }

  if (*a3 - v75 >= v93)
  {
    v98 = v93;
    memcpy(v75, v94, v93);
    v75 += v98;
    return v75;
  }

  return sub_1957130(a3, v94, v93, v75);
}

uint64_t sub_1691AA8(uint64_t a1)
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
      v9 = sub_168E5C0(v8);
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

  v16 = sub_1959E5C((a1 + 96));
  v17 = 12;
  v18 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v16 >= 0)
  {
    v17 = v18;
  }

  v19 = v17 + v11;
  if (v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = 0;
  }

  if (!v16)
  {
    v19 = v11;
  }

  *(a1 + 112) = v20;
  v21 = v19 + v16;
  v22 = sub_1959E5C((a1 + 120));
  v23 = 12;
  v24 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v22 >= 0)
  {
    v23 = v24;
  }

  v25 = v23 + v21;
  if (v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = 0;
  }

  if (!v22)
  {
    v25 = v21;
  }

  *(a1 + 136) = v26;
  v27 = v25 + v22;
  v28 = *(a1 + 152);
  v29 = v27 + 2 * v28;
  v30 = *(a1 + 160);
  if (v30)
  {
    v31 = (v30 + 8);
  }

  else
  {
    v31 = 0;
  }

  if (v28)
  {
    v32 = 8 * v28;
    do
    {
      v33 = *v31++;
      v34 = sub_16901A0(v33);
      v29 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6);
      v32 -= 8;
    }

    while (v32);
  }

  v35 = *(a1 + 168);
  if (v35)
  {
    v36 = 0;
    v37 = 0;
    do
    {
      v38 = *(*(a1 + 176) + 4 * v36);
      if (v38 < 0)
      {
        v39 = 10;
      }

      else
      {
        v39 = (9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6;
      }

      v37 += v39;
      ++v36;
    }

    while (v35 != v36);
  }

  else
  {
    v37 = 0;
  }

  v40 = v29 + 2 * v35 + v37;
  v41 = sub_1959E5C((a1 + 184));
  if (v41)
  {
    v42 = v41;
    if ((v41 & 0x80000000) != 0)
    {
      v43 = 12;
    }

    else
    {
      v43 = ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v40 += v43;
  }

  else
  {
    v42 = 0;
  }

  *(a1 + 200) = v42;
  result = v40 + v41;
  v45 = *(a1 + 40);
  if (!v45)
  {
    goto LABEL_56;
  }

  if (v45)
  {
    v47 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
    v48 = *(v47 + 23);
    v49 = *(v47 + 8);
    if ((v48 & 0x80u) == 0)
    {
      v49 = v48;
    }

    result += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v45 & 2) == 0)
    {
LABEL_49:
      if ((v45 & 4) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_69;
    }
  }

  else if ((v45 & 2) == 0)
  {
    goto LABEL_49;
  }

  v50 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
  v51 = *(v50 + 23);
  v52 = *(v50 + 8);
  if ((v51 & 0x80u) == 0)
  {
    v52 = v51;
  }

  result += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v45 & 4) == 0)
  {
LABEL_50:
    if ((v45 & 8) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_72;
  }

LABEL_69:
  v53 = *(a1 + 224) & 0xFFFFFFFFFFFFFFFELL;
  v54 = *(v53 + 23);
  v55 = *(v53 + 8);
  if ((v54 & 0x80u) == 0)
  {
    v55 = v54;
  }

  result += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v45 & 8) == 0)
  {
LABEL_51:
    if ((v45 & 0x10) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_75;
  }

LABEL_72:
  v56 = *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL;
  v57 = *(v56 + 23);
  v58 = *(v56 + 8);
  if ((v57 & 0x80u) == 0)
  {
    v58 = v57;
  }

  result += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v45 & 0x10) == 0)
  {
LABEL_52:
    if ((v45 & 0x20) == 0)
    {
      goto LABEL_53;
    }

LABEL_78:
    v62 = *(a1 + 248);
    if (v62 < 0)
    {
      v63 = 11;
    }

    else
    {
      v63 = ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v63;
    if ((v45 & 0x40) == 0)
    {
LABEL_54:
      if ((v45 & 0x80) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }

    goto LABEL_84;
  }

LABEL_75:
  v59 = *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL;
  v60 = *(v59 + 23);
  v61 = *(v59 + 8);
  if ((v60 & 0x80u) == 0)
  {
    v61 = v60;
  }

  result += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v45 & 0x20) != 0)
  {
    goto LABEL_78;
  }

LABEL_53:
  if ((v45 & 0x40) == 0)
  {
    goto LABEL_54;
  }

LABEL_84:
  result += ((9 * (__clz(*(a1 + 252) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v45 & 0x80) != 0)
  {
LABEL_55:
    result += ((9 * (__clz(*(a1 + 256) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_56:
  if ((v45 & 0x700) == 0)
  {
    goto LABEL_61;
  }

  if ((v45 & 0x100) != 0)
  {
    v64 = *(a1 + 260);
    if (v64 < 0)
    {
      v65 = 11;
    }

    else
    {
      v65 = ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v65;
    if ((v45 & 0x200) == 0)
    {
LABEL_59:
      if ((v45 & 0x400) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }
  }

  else if ((v45 & 0x200) == 0)
  {
    goto LABEL_59;
  }

  v66 = *(a1 + 264);
  if (v66 < 0)
  {
    v67 = 11;
  }

  else
  {
    v67 = ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v67;
  if ((v45 & 0x400) != 0)
  {
LABEL_60:
    result += ((9 * (__clz(*(a1 + 268) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_61:
  v46 = *(a1 + 8);
  if (v46)
  {
    v68 = v46 & 0xFFFFFFFFFFFFFFFCLL;
    v69 = *((v46 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v69 < 0)
    {
      v69 = *(v68 + 16);
    }

    result += v69;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_1691FD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_16BDE50((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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

  v14 = *(a2 + 96);
  if (v14)
  {
    v15 = *(a1 + 96);
    sub_1958E5C((a1 + 96), v15 + v14);
    v16 = *(a1 + 104);
    *(a1 + 96) += *(a2 + 96);
    memcpy((v16 + 4 * v15), *(a2 + 104), 4 * *(a2 + 96));
  }

  v17 = *(a2 + 120);
  if (v17)
  {
    v18 = *(a1 + 120);
    sub_1958E5C((a1 + 120), v18 + v17);
    v19 = *(a1 + 128);
    *(a1 + 120) += *(a2 + 120);
    memcpy((v19 + 4 * v18), *(a2 + 128), 4 * *(a2 + 120));
  }

  v20 = *(a2 + 152);
  if (v20)
  {
    v21 = *(a2 + 160);
    v22 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_16BDEDC((a1 + 144), v22, (v21 + 8), v20, **(a1 + 160) - *(a1 + 152));
    v23 = *(a1 + 152) + v20;
    *(a1 + 152) = v23;
    v24 = *(a1 + 160);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 168);
  if (v25)
  {
    v26 = *(a1 + 168);
    sub_1958E5C((a1 + 168), v26 + v25);
    v27 = *(a1 + 176);
    *(a1 + 168) += *(a2 + 168);
    memcpy((v27 + 4 * v26), *(a2 + 176), 4 * *(a2 + 168));
  }

  v28 = *(a2 + 184);
  if (v28)
  {
    v29 = *(a1 + 184);
    sub_1958E5C((a1 + 184), v29 + v28);
    v30 = *(a1 + 192);
    *(a1 + 184) += *(a2 + 184);
    memcpy((v30 + 4 * v29), *(a2 + 192), 4 * *(a2 + 184));
  }

  v31 = *(a2 + 40);
  if (v31)
  {
    if (v31)
    {
      v33 = *(a2 + 208);
      *(a1 + 40) |= 1u;
      v34 = *(a1 + 8);
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      if (v34)
      {
        v35 = *v35;
      }

      sub_194EA1C((a1 + 208), (v33 & 0xFFFFFFFFFFFFFFFELL), v35);
      if ((v31 & 2) == 0)
      {
LABEL_21:
        if ((v31 & 4) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_45;
      }
    }

    else if ((v31 & 2) == 0)
    {
      goto LABEL_21;
    }

    v36 = *(a2 + 216);
    *(a1 + 40) |= 2u;
    v37 = *(a1 + 8);
    v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
    if (v37)
    {
      v38 = *v38;
    }

    sub_194EA1C((a1 + 216), (v36 & 0xFFFFFFFFFFFFFFFELL), v38);
    if ((v31 & 4) == 0)
    {
LABEL_22:
      if ((v31 & 8) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_48;
    }

LABEL_45:
    v39 = *(a2 + 224);
    *(a1 + 40) |= 4u;
    v40 = *(a1 + 8);
    v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
    if (v40)
    {
      v41 = *v41;
    }

    sub_194EA1C((a1 + 224), (v39 & 0xFFFFFFFFFFFFFFFELL), v41);
    if ((v31 & 8) == 0)
    {
LABEL_23:
      if ((v31 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_51;
    }

LABEL_48:
    v42 = *(a2 + 232);
    *(a1 + 40) |= 8u;
    v43 = *(a1 + 8);
    v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
    if (v43)
    {
      v44 = *v44;
    }

    sub_194EA1C((a1 + 232), (v42 & 0xFFFFFFFFFFFFFFFELL), v44);
    if ((v31 & 0x10) == 0)
    {
LABEL_24:
      if ((v31 & 0x20) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_54;
    }

LABEL_51:
    v45 = *(a2 + 240);
    *(a1 + 40) |= 0x10u;
    v46 = *(a1 + 8);
    v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
    if (v46)
    {
      v47 = *v47;
    }

    sub_194EA1C((a1 + 240), (v45 & 0xFFFFFFFFFFFFFFFELL), v47);
    if ((v31 & 0x20) == 0)
    {
LABEL_25:
      if ((v31 & 0x40) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_55;
    }

LABEL_54:
    *(a1 + 248) = *(a2 + 248);
    if ((v31 & 0x40) == 0)
    {
LABEL_26:
      if ((v31 & 0x80) == 0)
      {
LABEL_28:
        *(a1 + 40) |= v31;
        goto LABEL_29;
      }

LABEL_27:
      *(a1 + 256) = *(a2 + 256);
      goto LABEL_28;
    }

LABEL_55:
    *(a1 + 252) = *(a2 + 252);
    if ((v31 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_29:
  if ((v31 & 0x700) == 0)
  {
    goto LABEL_35;
  }

  if ((v31 & 0x100) == 0)
  {
    if ((v31 & 0x200) == 0)
    {
      goto LABEL_32;
    }

LABEL_58:
    *(a1 + 264) = *(a2 + 264);
    if ((v31 & 0x400) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  *(a1 + 260) = *(a2 + 260);
  if ((v31 & 0x200) != 0)
  {
    goto LABEL_58;
  }

LABEL_32:
  if ((v31 & 0x400) != 0)
  {
LABEL_33:
    *(a1 + 268) = *(a2 + 268);
  }

LABEL_34:
  *(a1 + 40) |= v31;
LABEL_35:
  sub_225EA0C(a1 + 16, a2 + 16);
  v32 = *(a2 + 8);
  if (v32)
  {

    sub_1957EF4((a1 + 8), (v32 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_169240C(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 56);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_195228C(*(*(a1 + 64) + 8 * v2) + 16);
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3;
}

void *sub_1692488(void *a1)
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

void sub_16924FC(void *a1)
{
  sub_1692488(a1);

  operator delete();
}

uint64_t sub_1692534(uint64_t a1)
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

char *sub_169255C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v18 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v18, a3[11].i32[1]))
  {
    goto LABEL_35;
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
      if (v7 != 16)
      {
        goto LABEL_11;
      }

      v15 = v6 + 1;
      v14 = *v6;
      if (v14 < 0)
      {
        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if (v16 < 0)
        {
          v18 = sub_19587DC(v6, v14);
          if (!v18)
          {
            goto LABEL_36;
          }

          goto LABEL_24;
        }

        v15 = v6 + 2;
      }

      v18 = v15;
LABEL_24:
      if (v14 > 1)
      {
        sub_1348E38();
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 32) = v14;
      }

      goto LABEL_27;
    }

    if (v7 >> 3 == 1 && v7 == 9)
    {
      *(a1 + 24) = *v6;
      v18 = v6 + 8;
      v5 = 1;
      goto LABEL_27;
    }

LABEL_11:
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
      goto LABEL_36;
    }

LABEL_27:
    if (sub_195ADC0(a3, &v18, a3[11].i32[1]))
    {
      goto LABEL_35;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_35;
  }

LABEL_36:
  v18 = 0;
LABEL_35:
  *(a1 + 16) |= v5;
  return v18;
}