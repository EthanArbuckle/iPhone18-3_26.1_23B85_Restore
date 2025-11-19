char *sub_1506074(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = sub_128AEEC(a3, 2, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_14;
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 64);
  *v4 = 24;
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

LABEL_14:
  v12 = *(a1 + 32);
  if (v12 >= 1)
  {
    v13 = 8;
    do
    {
      v14 = *(*(a1 + 40) + v13);
      v15 = *(v14 + 23);
      if (v15 < 0 && (v15 = v14[1], v15 > 127) || *a3 - v7 + 14 < v15)
      {
        v7 = sub_1957480(a3, 4, v14, v7);
      }

      else
      {
        *v7 = 34;
        v7[1] = v15;
        if (*(v14 + 23) < 0)
        {
          v14 = *v14;
        }

        v16 = v7 + 2;
        memcpy(v16, v14, v15);
        v7 = &v16[v15];
      }

      v13 += 8;
      --v12;
    }

    while (v12);
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v7;
  }

  v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
  v20 = *(v19 + 31);
  if (v20 < 0)
  {
    v21 = *(v19 + 8);
    v20 = *(v19 + 16);
  }

  else
  {
    v21 = (v19 + 8);
  }

  if (*a3 - v7 >= v20)
  {
    v22 = v20;
    memcpy(v7, v21, v20);
    v7 += v22;
    return v7;
  }

  return sub_1957130(a3, v21, v20, v7);
}

uint64_t sub_1506294(uint64_t a1)
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

  v7 = *(a1 + 16);
  if ((v7 & 7) != 0)
  {
    if (v7)
    {
      v10 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v11 = *(v10 + 23);
      v12 = *(v10 + 8);
      if ((v11 & 0x80u) == 0)
      {
        v12 = v11;
      }

      v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v7 & 2) == 0)
      {
LABEL_11:
        if ((v7 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    else if ((v7 & 2) == 0)
    {
      goto LABEL_11;
    }

    v13 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 4) != 0)
    {
LABEL_12:
      v3 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }
  }

LABEL_13:
  v8 = *(a1 + 8);
  if (v8)
  {
    v16 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v3 += v17;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_15063E8(std::string *result, uint64_t a2)
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

  v9 = *(a2 + 16);
  if ((v9 & 7) != 0)
  {
    if (v9)
    {
      v11 = *(a2 + 48);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      size = v3->__r_.__value_.__l.__size_;
      v13 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v13 = *v13;
      }

      result = sub_194EA1C(&v3[2], (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
LABEL_9:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        v3[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    v14 = *(a2 + 56);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v15 = v3->__r_.__value_.__l.__size_;
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    result = sub_194EA1C(&v3[2].__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v9 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1506554(uint64_t a1)
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
  if (a1 != &off_2775600)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_1505BC0(v6);
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

void sub_150660C(uint64_t a1)
{
  sub_1506554(a1);

  operator delete();
}

uint64_t sub_1506644(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_1505CB8(*(result + 24));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_15066A4(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 >> 3 != 2)
    {
      if (v7 >> 3 == 1 && v7 == 8)
      {
        v19 = v6 + 1;
        v18 = *v6;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if (v20 < 0)
        {
          v22 = sub_19587DC(v6, v18);
          if (!v22)
          {
            return 0;
          }
        }

        else
        {
          v19 = v6 + 2;
LABEL_30:
          v22 = v19;
        }

        if (v18 > 2)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v18;
        }

        continue;
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
      goto LABEL_25;
    }

    if (v7 != 18)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 24);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_1529A58(v17);
      *(a1 + 24) = v15;
      v6 = v22;
    }

    v14 = sub_2218778(a3, v15, v6);
LABEL_25:
    v22 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v22;
}

char *sub_1506870(uint64_t a1, char *__dst, void *a3)
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
    *v6 = 18;
    v12 = *(v11 + 20);
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v6 + 1);
    }

    else
    {
      v13 = v6 + 2;
    }

    v6 = sub_1506074(v11, v13, a3);
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v17)
  {
    v19 = v17;
    memcpy(v6, v18, v17);
    v6 += v19;
    return v6;
  }

  return sub_1957130(a3, v18, v17, v6);
}

uint64_t sub_15069FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_1506294(*(a1 + 24));
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

std::string *sub_1506AC4(std::string *result, uint64_t a2)
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

        data = sub_1529A58(v7);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_27755B8;
      }

      result = sub_15063E8(data, v8);
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

uint64_t sub_1506BAC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = &off_26EAAC0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_1957EF4((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void sub_1506C28(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1506C58(void *a1)
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

void sub_1506CCC(void *a1)
{
  sub_1506C58(a1);

  operator delete();
}

uint64_t sub_1506D04(uint64_t a1)
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

char *sub_1506D1C(uint64_t a1, char *a2, int32x2_t *a3)
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
      *(a1 + 24) = v13 != 0;
      v5 = 1;
      goto LABEL_19;
    }

    v16 = sub_19587DC(v6, v13);
    v19 = v16;
    *(a1 + 24) = v17 != 0;
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

char *sub_1506EA0(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *v4 = 8;
    v4[1] = v6;
    v4 += 2;
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

uint64_t sub_1506F80(uint64_t a1)
{
  v1 = 2 * (*(a1 + 16) & 1);
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

uint64_t sub_1506FD0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = &off_26EAB40;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1201B48(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
    v9 = *(a1 + 24) + v6;
    *(a1 + 24) = v9;
    v10 = *(a1 + 32);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 40) = 0;
  v11 = *(a2 + 8);
  if (v11)
  {
    sub_1957EF4(v4, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_15070B0(_Unwind_Exception *a1)
{
  sub_1956AFC(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_15070F0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956AFC(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_150716C(void *a1)
{
  sub_15070F0(a1);

  operator delete();
}

uint64_t sub_15071A4(uint64_t a1)
{
  result = sub_12A41D0(a1 + 16);
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_15071F4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v21 = a2;
  if ((sub_195ADC0(a3, v21, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = (*v21 + 1);
      v6 = **v21;
      if (**v21 < 0)
      {
        v7 = v6 + (*v5 << 7);
        v6 = v7 - 128;
        if (*v5 < 0)
        {
          v5 = sub_1958824(*v21, v7 - 128);
          v6 = v8;
        }

        else
        {
          v5 = (*v21 + 2);
        }
      }

      *v21 = v5;
      if (v6 == 10)
      {
        v12 = v5 - 1;
        while (1)
        {
          v13 = (v12 + 1);
          *v21 = v12 + 1;
          v14 = *(a1 + 32);
          if (v14 && (v15 = *(a1 + 24), v15 < *v14))
          {
            *(a1 + 24) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = *(a1 + 16);
            if (!v17)
            {
              operator new();
            }

            *v19 = v18;
            v19[1] = sub_195A650;
            *v18 = 0;
            v18[1] = 0;
            v18[2] = 0;
            v16 = sub_19593CC(a1 + 16, v18);
            v13 = *v21;
          }

          v12 = sub_1958890(v16, v13, a3);
          *v21 = v12;
          if (!v12)
          {
            goto LABEL_30;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_25;
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
        v5 = *v21;
      }

      *v21 = sub_1952690(v6, v11, v5, a3);
      if (!*v21)
      {
        goto LABEL_30;
      }

LABEL_25:
      if (sub_195ADC0(a3, v21, a3[11].i32[1]))
      {
        return *v21;
      }
    }

    if (v5)
    {
      a3[10].i32[0] = v6 - 1;
      return *v21;
    }

LABEL_30:
    *v21 = 0;
  }

  return *v21;
}

char *sub_15073DC(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_1507530(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 < 1)
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v2 = (*(a1 + 32) + 8);
    v3 = *(a1 + 24);
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

  *(a1 + 40) = v3;
  return v3;
}

__n128 sub_15075D8(uint64_t a1, uint64_t a2, int a3)
{
  result.n128_u64[0] = 0;
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *a1 = off_26EABC0;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  result.n128_u64[1] = 0;
  *(a1 + 88) = 0uLL;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
  *(a1 + 128) = a2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a2;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a2;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = a2;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a2;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = a2;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = a2;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = a2;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = &qword_278E990;
  *(a1 + 328) = &qword_278E990;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 397) = 0u;
  return result;
}

uint64_t sub_1507684(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v69 = (a1 + 8);
  *a1 = off_26EABC0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_156B998((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_156BA14((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(a1 + 72, v14);
    sub_156B880((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v19 = *(a2 + 96);
  if (v19)
  {
    sub_1958E5C((a1 + 96), v19);
    v20 = *(a1 + 104);
    *(a1 + 96) += *(a2 + 96);
    memcpy(v20, *(a2 + 104), 4 * *(a2 + 96));
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v21 = *(a2 + 112);
  if (v21)
  {
    sub_1958E5C((a1 + 112), v21);
    v22 = *(a1 + 120);
    *(a1 + 112) += *(a2 + 112);
    memcpy(v22, *(a2 + 120), 4 * *(a2 + 112));
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v23 = *(a2 + 136);
  if (v23)
  {
    v24 = *(a2 + 144);
    v25 = sub_19592E8(a1 + 128, *(a2 + 136));
    sub_156BAA0((a1 + 128), v25, (v24 + 8), v23, **(a1 + 144) - *(a1 + 136));
    v26 = *(a1 + 136) + v23;
    *(a1 + 136) = v26;
    v27 = *(a1 + 144);
    if (*v27 < v26)
    {
      *v27 = v26;
    }
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v28 = *(a2 + 160);
  if (v28)
  {
    v29 = *(a2 + 168);
    v30 = sub_19592E8(a1 + 152, *(a2 + 160));
    sub_1201B48(a1 + 152, v30, (v29 + 8), v28, **(a1 + 168) - *(a1 + 160));
    v31 = *(a1 + 160) + v28;
    *(a1 + 160) = v31;
    v32 = *(a1 + 168);
    if (*v32 < v31)
    {
      *v32 = v31;
    }
  }

  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v33 = *(a2 + 184);
  if (v33)
  {
    v34 = *(a2 + 192);
    v35 = sub_19592E8(a1 + 176, *(a2 + 184));
    sub_1201B48(a1 + 176, v35, (v34 + 8), v33, **(a1 + 192) - *(a1 + 184));
    v36 = *(a1 + 184) + v33;
    *(a1 + 184) = v36;
    v37 = *(a1 + 192);
    if (*v37 < v36)
    {
      *v37 = v36;
    }
  }

  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  v38 = *(a2 + 208);
  if (v38)
  {
    v39 = *(a2 + 216);
    v40 = sub_19592E8(a1 + 200, *(a2 + 208));
    sub_1201B48(a1 + 200, v40, (v39 + 8), v38, **(a1 + 216) - *(a1 + 208));
    v41 = *(a1 + 208) + v38;
    *(a1 + 208) = v41;
    v42 = *(a1 + 216);
    if (*v42 < v41)
    {
      *v42 = v41;
    }
  }

  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v43 = *(a2 + 232);
  if (v43)
  {
    v44 = *(a2 + 240);
    v45 = sub_19592E8(a1 + 224, *(a2 + 232));
    sub_1201B48(a1 + 224, v45, (v44 + 8), v43, **(a1 + 240) - *(a1 + 232));
    v46 = *(a1 + 232) + v43;
    *(a1 + 232) = v46;
    v47 = *(a1 + 240);
    if (*v47 < v46)
    {
      *v47 = v46;
    }
  }

  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  v48 = *(a2 + 256);
  if (v48)
  {
    v49 = *(a2 + 264);
    v50 = sub_19592E8(a1 + 248, *(a2 + 256));
    sub_1201B48(a1 + 248, v50, (v49 + 8), v48, **(a1 + 264) - *(a1 + 256));
    v51 = *(a1 + 256) + v48;
    *(a1 + 256) = v51;
    v52 = *(a1 + 264);
    if (*v52 < v51)
    {
      *v52 = v51;
    }
  }

  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  v53 = *(a2 + 280);
  if (v53)
  {
    v54 = *(a2 + 288);
    v55 = sub_19592E8(a1 + 272, *(a2 + 280));
    sub_156BB2C((a1 + 272), v55, (v54 + 8), v53, **(a1 + 288) - *(a1 + 280));
    v56 = *(a1 + 280) + v53;
    *(a1 + 280) = v56;
    v57 = *(a1 + 288);
    if (*v57 < v56)
    {
      *v57 = v56;
    }
  }

  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  v58 = *(a2 + 304);
  if (v58)
  {
    v59 = *(a2 + 312);
    v60 = sub_19592E8(a1 + 296, *(a2 + 304));
    sub_156BBB8((a1 + 296), v60, (v59 + 8), v58, **(a1 + 312) - *(a1 + 304));
    v61 = *(a1 + 304) + v58;
    *(a1 + 304) = v61;
    v62 = *(a1 + 312);
    if (*v62 < v61)
    {
      *v62 = v61;
    }
  }

  v63 = *(a2 + 8);
  if (v63)
  {
    sub_1957EF4(v69, (v63 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 320) = &qword_278E990;
  v64 = *(a2 + 16);
  if (v64)
  {
    v65 = (*v69 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v69)
    {
      v65 = *v65;
    }

    sub_194EA1C((a1 + 320), (*(a2 + 320) & 0xFFFFFFFFFFFFFFFELL), v65);
    v64 = *(a2 + 16);
  }

  *(a1 + 328) = &qword_278E990;
  if ((v64 & 2) != 0)
  {
    v66 = (*v69 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v69)
    {
      v66 = *v66;
    }

    sub_194EA1C((a1 + 328), (*(a2 + 328) & 0xFFFFFFFFFFFFFFFELL), v66);
    v64 = *(a2 + 16);
  }

  if ((v64 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 336) = 0;
  if ((v64 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 344) = 0;
  if ((v64 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 352) = 0;
  if ((v64 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 360) = 0;
  if ((v64 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 368) = 0;
  if ((v64 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 376) = 0;
  if ((v64 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 384) = 0;
  if ((v64 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 392) = 0;
  v67 = *(a2 + 400);
  *(a1 + 405) = *(a2 + 405);
  *(a1 + 400) = v67;
  return a1;
}

void *sub_1507FDC(void *a1)
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

  sub_15080E0(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1569CB8(a1 + 37);
  sub_1569C34(a1 + 34);
  sub_1956AFC(a1 + 31);
  sub_1956AFC(a1 + 28);
  sub_1956AFC(a1 + 25);
  sub_1956AFC(a1 + 22);
  sub_1956AFC(a1 + 19);
  sub_1569BB0(a1 + 16);
  sub_1956ABC((a1 + 14));
  sub_1956ABC((a1 + 12));
  sub_15699A0(a1 + 9);
  sub_1569B2C(a1 + 6);
  sub_1569AA8(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_15080E0(uint64_t result)
{
  v1 = result;
  if (*(result + 320) != &qword_278E990)
  {
    sub_194E89C((result + 320));
  }

  if (*(result + 328) != &qword_278E990)
  {
    sub_194E89C((result + 328));
  }

  if (result != &off_2775678)
  {
    v2 = *(result + 336);
    if (v2)
    {
      sub_15070F0(v2);
      operator delete();
    }

    v3 = v1[43];
    if (v3)
    {
      sub_1501434(v3);
      operator delete();
    }

    v4 = v1[44];
    if (v4)
    {
      sub_150BA10(v4);
      operator delete();
    }

    v5 = v1[45];
    if (v5)
    {
      sub_1525D00(v5);
      operator delete();
    }

    v6 = v1[46];
    if (v6)
    {
      sub_150C0FC(v6);
      operator delete();
    }

    v7 = v1[47];
    if (v7)
    {
      sub_150C7E8(v7);
      operator delete();
    }

    v8 = v1[48];
    if (v8)
    {
      sub_150CED4(v8);
      operator delete();
    }

    result = v1[49];
    if (result)
    {
      sub_1506C58(result);

      operator delete();
    }
  }

  return result;
}

void sub_1508230(void *a1)
{
  sub_1507FDC(a1);

  operator delete();
}

uint64_t sub_1508268(uint64_t a1)
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

uint64_t sub_15082EC(uint64_t a1)
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

uint64_t sub_1508370(uint64_t a1)
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

uint64_t sub_15083F4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v160 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v160, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (2)
  {
    v8 = (*v160 + 1);
    v9 = **v160;
    if (**v160 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(*v160, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = (*v160 + 2);
      }
    }

    *v160 = v8;
    switch(v9 >> 3)
    {
      case 1u:
        if (v9 != 10)
        {
          goto LABEL_267;
        }

        *(a1 + 16) |= 1u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 320);
        goto LABEL_136;
      case 2u:
        if (v9 != 18)
        {
          goto LABEL_267;
        }

        *(a1 + 16) |= 2u;
        v86 = *(a1 + 8);
        v14 = (v86 & 0xFFFFFFFFFFFFFFFCLL);
        if (v86)
        {
          v14 = *v14;
        }

        v15 = (a1 + 328);
LABEL_136:
        v87 = sub_194DB04(v15, v14);
        v21 = sub_1958890(v87, *v160, a3);
        goto LABEL_274;
      case 3u:
        if (v9 != 26)
        {
          goto LABEL_267;
        }

        v66 = v8 - 1;
        while (1)
        {
          v67 = (v66 + 1);
          *v160 = v66 + 1;
          v68 = *(a1 + 40);
          if (v68 && (v69 = *(a1 + 32), v69 < *v68))
          {
            *(a1 + 32) = v69 + 1;
            v70 = *&v68[2 * v69 + 2];
          }

          else
          {
            v71 = sub_1529780(*(a1 + 24));
            v70 = sub_19593CC(a1 + 24, v71);
            v67 = *v160;
          }

          v66 = sub_2218808(a3, v70, v67);
          *v160 = v66;
          if (!v66)
          {
            goto LABEL_280;
          }

          if (*a3 <= v66 || *v66 != 26)
          {
            goto LABEL_275;
          }
        }

      case 4u:
        if (v9 != 32)
        {
          goto LABEL_267;
        }

        v5 |= 0x800u;
        v110 = v8 + 1;
        v109 = *v8;
        if ((v109 & 0x8000000000000000) == 0)
        {
          goto LABEL_186;
        }

        v111 = *v110;
        v109 = (v111 << 7) + v109 - 128;
        if (v111 < 0)
        {
          v153 = sub_19587DC(v8, v109);
          *v160 = v153;
          *(a1 + 408) = v154 != 0;
          if (!v153)
          {
            goto LABEL_280;
          }
        }

        else
        {
          v110 = v8 + 2;
LABEL_186:
          *v160 = v110;
          *(a1 + 408) = v109 != 0;
        }

        goto LABEL_275;
      case 5u:
        if (v9 != 42)
        {
          goto LABEL_267;
        }

        v112 = v8 - 1;
        while (1)
        {
          v113 = (v112 + 1);
          *v160 = v112 + 1;
          v114 = *(a1 + 64);
          if (v114 && (v115 = *(a1 + 56), v115 < *v114))
          {
            *(a1 + 56) = v115 + 1;
            v116 = *&v114[2 * v115 + 2];
          }

          else
          {
            v117 = sub_152980C(*(a1 + 48));
            v116 = sub_19593CC(a1 + 48, v117);
            v113 = *v160;
          }

          v112 = sub_2218898(a3, v116, v113);
          *v160 = v112;
          if (!v112)
          {
            goto LABEL_280;
          }

          if (*a3 <= v112 || *v112 != 42)
          {
            goto LABEL_275;
          }
        }

      case 6u:
        if (v9 != 50)
        {
          goto LABEL_267;
        }

        v72 = v8 - 1;
        while (1)
        {
          v73 = (v72 + 1);
          *v160 = v72 + 1;
          v74 = *(a1 + 88);
          if (v74 && (v75 = *(a1 + 80), v75 < *v74))
          {
            *(a1 + 80) = v75 + 1;
            v76 = *&v74[2 * v75 + 2];
          }

          else
          {
            v77 = sub_1529948(*(a1 + 72));
            v76 = sub_19593CC(a1 + 72, v77);
            v73 = *v160;
          }

          v72 = sub_22185C8(a3, v76, v73);
          *v160 = v72;
          if (!v72)
          {
            goto LABEL_280;
          }

          if (*a3 <= v72 || *v72 != 50)
          {
            goto LABEL_275;
          }
        }

      case 7u:
        if (v9 == 56)
        {
          v88 = (v8 - 1);
          while (1)
          {
            *v160 = v88 + 1;
            v89 = *(v88 + 1);
            v90 = (v88 + 2);
            if (v89 < 0)
            {
              v91 = *v90;
              v92 = (v91 << 7) + v89;
              LODWORD(v89) = v92 - 128;
              if (v91 < 0)
              {
                *v160 = sub_19587DC(v88 + 1, (v92 - 128));
                if (!*v160)
                {
                  goto LABEL_280;
                }

                LODWORD(v89) = v95;
                goto LABEL_143;
              }

              v90 = (v88 + 3);
            }

            *v160 = v90;
LABEL_143:
            if (sub_17968C4(v89))
            {
              v93 = *(a1 + 96);
              if (v93 == *(a1 + 100))
              {
                v94 = v93 + 1;
                sub_1958E5C((a1 + 96), v93 + 1);
                *(*(a1 + 104) + 4 * v93) = v89;
              }

              else
              {
                *(*(a1 + 104) + 4 * v93) = v89;
                v94 = v93 + 1;
              }

              *(a1 + 96) = v94;
            }

            else
            {
              sub_13ED178();
            }

            v88 = *v160;
            if (*a3 <= *v160 || **v160 != 56)
            {
              goto LABEL_275;
            }
          }
        }

        if (v9 != 58)
        {
          goto LABEL_267;
        }

        *&v161 = a1 + 96;
        *(&v161 + 1) = sub_17968C4;
        v162 = a1 + 8;
        v157 = 7;
        goto LABEL_266;
      case 8u:
        if (v9 == 64)
        {
          v96 = (v8 - 1);
          while (1)
          {
            *v160 = v96 + 1;
            v97 = *(v96 + 1);
            v98 = (v96 + 2);
            if (v97 < 0)
            {
              v99 = *v98;
              v100 = (v99 << 7) + v97;
              LODWORD(v97) = v100 - 128;
              if (v99 < 0)
              {
                *v160 = sub_19587DC(v96 + 1, (v100 - 128));
                if (!*v160)
                {
                  goto LABEL_280;
                }

                LODWORD(v97) = v103;
                goto LABEL_160;
              }

              v98 = (v96 + 3);
            }

            *v160 = v98;
LABEL_160:
            if (sub_17A7C30(v97))
            {
              v101 = *(a1 + 112);
              if (v101 == *(a1 + 116))
              {
                v102 = v101 + 1;
                sub_1958E5C((a1 + 112), v101 + 1);
                *(*(a1 + 120) + 4 * v101) = v97;
              }

              else
              {
                *(*(a1 + 120) + 4 * v101) = v97;
                v102 = v101 + 1;
              }

              *(a1 + 112) = v102;
            }

            else
            {
              sub_13B67EC();
            }

            v96 = *v160;
            if (*a3 <= *v160 || **v160 != 64)
            {
              goto LABEL_275;
            }
          }
        }

        if (v9 == 66)
        {
          *&v161 = a1 + 112;
          *(&v161 + 1) = sub_17A7C30;
          v162 = a1 + 8;
          v157 = 8;
LABEL_266:
          v163 = v157;
          v21 = sub_1216588(a3, v8, &v161);
LABEL_274:
          *v160 = v21;
          if (!v21)
          {
            goto LABEL_280;
          }

LABEL_275:
          if (sub_195ADC0(a3, v160, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_267:
        if (v9)
        {
          v158 = (v9 & 7) == 4;
        }

        else
        {
          v158 = 1;
        }

        if (!v158)
        {
          if (*v7)
          {
            v159 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v159 = sub_11F1920((a1 + 8));
            v8 = *v160;
          }

          v21 = sub_1952690(v9, v159, v8, a3);
          goto LABEL_274;
        }

        if (v8)
        {
          a3[10].i32[0] = v9 - 1;
        }

        else
        {
LABEL_280:
          *v160 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v160;
      case 0xAu:
        if (v9 != 82)
        {
          goto LABEL_267;
        }

        *(a1 + 16) |= 4u;
        v120 = *(a1 + 336);
        if (!v120)
        {
          v121 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v121 = *v121;
          }

          v120 = sub_1529BF8(v121);
          *(a1 + 336) = v120;
          v8 = *v160;
        }

        v21 = sub_2218928(a3, v120, v8);
        goto LABEL_274;
      case 0xBu:
        if (v9 != 90)
        {
          goto LABEL_267;
        }

        *(a1 + 16) |= 8u;
        v118 = *(a1 + 344);
        if (!v118)
        {
          v119 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v119 = *v119;
          }

          v118 = sub_1529624(v119);
          *(a1 + 344) = v118;
          v8 = *v160;
        }

        v21 = sub_2217BA8(a3, v118, v8);
        goto LABEL_274;
      case 0xCu:
        if (v9 != 96)
        {
          goto LABEL_267;
        }

        v5 |= 0x400u;
        v36 = v8 + 1;
        v35 = *v8;
        if ((v35 & 0x8000000000000000) == 0)
        {
          goto LABEL_51;
        }

        v37 = *v36;
        v35 = (v37 << 7) + v35 - 128;
        if (v37 < 0)
        {
          v149 = sub_19587DC(v8, v35);
          *v160 = v149;
          *(a1 + 400) = v150;
          if (!v149)
          {
            goto LABEL_280;
          }
        }

        else
        {
          v36 = v8 + 2;
LABEL_51:
          *v160 = v36;
          *(a1 + 400) = v35;
        }

        goto LABEL_275;
      case 0xFu:
        if (v9 != 122)
        {
          goto LABEL_267;
        }

        *(a1 + 16) |= 0x10u;
        v78 = *(a1 + 352);
        if (!v78)
        {
          v79 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v79 = *v79;
          }

          v78 = sub_1529E24(v79);
          *(a1 + 352) = v78;
          v8 = *v160;
        }

        v21 = sub_2217CC8(a3, v78, v8);
        goto LABEL_274;
      case 0x10u:
        if (v9 != 130)
        {
          goto LABEL_267;
        }

        v52 = v8 - 2;
        while (1)
        {
          v53 = (v52 + 2);
          *v160 = v52 + 2;
          v54 = *(a1 + 144);
          if (v54 && (v55 = *(a1 + 136), v55 < *v54))
          {
            *(a1 + 136) = v55 + 1;
            v56 = *&v54[2 * v55 + 2];
          }

          else
          {
            v57 = sub_1529CF8(*(a1 + 128));
            v56 = sub_19593CC(a1 + 128, v57);
            v53 = *v160;
          }

          v52 = sub_22189B8(a3, v56, v53);
          *v160 = v52;
          if (!v52)
          {
            goto LABEL_280;
          }

          if (*a3 <= v52 || *v52 != 386)
          {
            goto LABEL_275;
          }
        }

      case 0x11u:
        if (v9 != 138)
        {
          goto LABEL_267;
        }

        *(a1 + 16) |= 0x20u;
        v22 = *(a1 + 360);
        if (!v22)
        {
          v23 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v23 = *v23;
          }

          v22 = sub_152B480(v23);
          *(a1 + 360) = v22;
          v8 = *v160;
        }

        v21 = sub_2218A48(a3, v22, v8);
        goto LABEL_274;
      case 0x12u:
        if (v9 != 146)
        {
          goto LABEL_267;
        }

        *(a1 + 16) |= 0x40u;
        v104 = *(a1 + 368);
        if (!v104)
        {
          v105 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v105 = *v105;
          }

          v104 = sub_1529EC8(v105);
          *(a1 + 368) = v104;
          v8 = *v160;
        }

        v21 = sub_2218AD8(a3, v104, v8);
        goto LABEL_274;
      case 0x13u:
        if (v9 != 152)
        {
          goto LABEL_267;
        }

        v5 |= 0x1000u;
        v107 = v8 + 1;
        v106 = *v8;
        if ((v106 & 0x8000000000000000) == 0)
        {
          goto LABEL_181;
        }

        v108 = *v107;
        v106 = (v108 << 7) + v106 - 128;
        if (v108 < 0)
        {
          v151 = sub_19587DC(v8, v106);
          *v160 = v151;
          *(a1 + 409) = v152 != 0;
          if (!v151)
          {
            goto LABEL_280;
          }
        }

        else
        {
          v107 = v8 + 2;
LABEL_181:
          *v160 = v107;
          *(a1 + 409) = v106 != 0;
        }

        goto LABEL_275;
      case 0x14u:
        if (v9 != 162)
        {
          goto LABEL_267;
        }

        *(a1 + 16) |= 0x80u;
        v130 = *(a1 + 376);
        if (!v130)
        {
          v131 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v131 = *v131;
          }

          v130 = sub_1529F6C(v131);
          *(a1 + 376) = v130;
          v8 = *v160;
        }

        v21 = sub_2217D58(a3, v130, v8);
        goto LABEL_274;
      case 0x15u:
        if (v9 != 170)
        {
          goto LABEL_267;
        }

        v122 = v8 - 2;
        while (1)
        {
          v123 = (v122 + 2);
          *v160 = v122 + 2;
          v124 = *(a1 + 168);
          if (v124 && (v125 = *(a1 + 160), v125 < *v124))
          {
            *(a1 + 160) = v125 + 1;
            v126 = *&v124[2 * v125 + 2];
          }

          else
          {
            v127 = *(a1 + 152);
            if (!v127)
            {
              operator new();
            }

            *v129 = v128;
            v129[1] = sub_195A650;
            *v128 = 0;
            v128[1] = 0;
            v128[2] = 0;
            v126 = sub_19593CC(a1 + 152, v128);
            v123 = *v160;
          }

          v122 = sub_1958890(v126, v123, a3);
          *v160 = v122;
          if (!v122)
          {
            goto LABEL_280;
          }

          if (*a3 <= v122 || *v122 != 426)
          {
            goto LABEL_275;
          }
        }

      case 0x16u:
        if (v9 != 176)
        {
          goto LABEL_267;
        }

        v5 |= 0x2000u;
        v17 = v8 + 1;
        v16 = *v8;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if (v18 < 0)
        {
          v145 = sub_19587DC(v8, v16);
          *v160 = v145;
          *(a1 + 410) = v146 != 0;
          if (!v145)
          {
            goto LABEL_280;
          }
        }

        else
        {
          v17 = v8 + 2;
LABEL_17:
          *v160 = v17;
          *(a1 + 410) = v16 != 0;
        }

        goto LABEL_275;
      case 0x17u:
        if (v9 != 186)
        {
          goto LABEL_267;
        }

        v58 = v8 - 2;
        while (1)
        {
          v59 = (v58 + 2);
          *v160 = v58 + 2;
          v60 = *(a1 + 192);
          if (v60 && (v61 = *(a1 + 184), v61 < *v60))
          {
            *(a1 + 184) = v61 + 1;
            v62 = *&v60[2 * v61 + 2];
          }

          else
          {
            v63 = *(a1 + 176);
            if (!v63)
            {
              operator new();
            }

            *v65 = v64;
            v65[1] = sub_195A650;
            *v64 = 0;
            v64[1] = 0;
            v64[2] = 0;
            v62 = sub_19593CC(a1 + 176, v64);
            v59 = *v160;
          }

          v58 = sub_1958890(v62, v59, a3);
          *v160 = v58;
          if (!v58)
          {
            goto LABEL_280;
          }

          if (*a3 <= v58 || *v58 != 442)
          {
            goto LABEL_275;
          }
        }

      case 0x18u:
        if (v9 != 194)
        {
          goto LABEL_267;
        }

        v132 = v8 - 2;
        while (1)
        {
          v133 = (v132 + 2);
          *v160 = v132 + 2;
          v134 = *(a1 + 216);
          if (v134 && (v135 = *(a1 + 208), v135 < *v134))
          {
            *(a1 + 208) = v135 + 1;
            v136 = *&v134[2 * v135 + 2];
          }

          else
          {
            v137 = *(a1 + 200);
            if (!v137)
            {
              operator new();
            }

            *v139 = v138;
            v139[1] = sub_195A650;
            *v138 = 0;
            v138[1] = 0;
            v138[2] = 0;
            v136 = sub_19593CC(a1 + 200, v138);
            v133 = *v160;
          }

          v132 = sub_1958890(v136, v133, a3);
          *v160 = v132;
          if (!v132)
          {
            goto LABEL_280;
          }

          if (*a3 <= v132 || *v132 != 450)
          {
            goto LABEL_275;
          }
        }

      case 0x19u:
        if (v9 != 202)
        {
          goto LABEL_267;
        }

        *(a1 + 16) |= 0x100u;
        v19 = *(a1 + 384);
        if (!v19)
        {
          v20 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v20 = *v20;
          }

          v19 = sub_152A010(v20);
          *(a1 + 384) = v19;
          v8 = *v160;
        }

        v21 = sub_2218B68(a3, v19, v8);
        goto LABEL_274;
      case 0x1Au:
        if (v9 != 210)
        {
          goto LABEL_267;
        }

        v44 = v8 - 2;
        while (1)
        {
          v45 = (v44 + 2);
          *v160 = v44 + 2;
          v46 = *(a1 + 240);
          if (v46 && (v47 = *(a1 + 232), v47 < *v46))
          {
            *(a1 + 232) = v47 + 1;
            v48 = *&v46[2 * v47 + 2];
          }

          else
          {
            v49 = *(a1 + 224);
            if (!v49)
            {
              operator new();
            }

            *v51 = v50;
            v51[1] = sub_195A650;
            *v50 = 0;
            v50[1] = 0;
            v50[2] = 0;
            v48 = sub_19593CC(a1 + 224, v50);
            v45 = *v160;
          }

          v44 = sub_1958890(v48, v45, a3);
          *v160 = v44;
          if (!v44)
          {
            goto LABEL_280;
          }

          if (*a3 <= v44 || *v44 != 466)
          {
            goto LABEL_275;
          }
        }

      case 0x1Bu:
        if (v9 != 218)
        {
          goto LABEL_267;
        }

        v27 = v8 - 2;
        while (1)
        {
          v28 = (v27 + 2);
          *v160 = v27 + 2;
          v29 = *(a1 + 264);
          if (v29 && (v30 = *(a1 + 256), v30 < *v29))
          {
            *(a1 + 256) = v30 + 1;
            v31 = *&v29[2 * v30 + 2];
          }

          else
          {
            v32 = *(a1 + 248);
            if (!v32)
            {
              operator new();
            }

            *v34 = v33;
            v34[1] = sub_195A650;
            *v33 = 0;
            v33[1] = 0;
            v33[2] = 0;
            v31 = sub_19593CC(a1 + 248, v33);
            v28 = *v160;
          }

          v27 = sub_1958890(v31, v28, a3);
          *v160 = v27;
          if (!v27)
          {
            goto LABEL_280;
          }

          if (*a3 <= v27 || *v27 != 474)
          {
            goto LABEL_275;
          }
        }

      case 0x1Cu:
        if (v9 != 226)
        {
          goto LABEL_267;
        }

        v80 = v8 - 2;
        while (1)
        {
          v81 = (v80 + 2);
          *v160 = v80 + 2;
          v82 = *(a1 + 288);
          if (v82 && (v83 = *(a1 + 280), v83 < *v82))
          {
            *(a1 + 280) = v83 + 1;
            v84 = *&v82[2 * v83 + 2];
          }

          else
          {
            v85 = sub_1529B00(*(a1 + 272));
            v84 = sub_19593CC(a1 + 272, v85);
            v81 = *v160;
          }

          v80 = sub_2218BF8(a3, v84, v81);
          *v160 = v80;
          if (!v80)
          {
            goto LABEL_280;
          }

          if (*a3 <= v80 || *v80 != 482)
          {
            goto LABEL_275;
          }
        }

      case 0x1Du:
        if (v9 != 232)
        {
          goto LABEL_267;
        }

        v5 |= 0x4000u;
        v25 = v8 + 1;
        v24 = *v8;
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_34;
        }

        v26 = *v25;
        v24 = (v26 << 7) + v24 - 128;
        if (v26 < 0)
        {
          v147 = sub_19587DC(v8, v24);
          *v160 = v147;
          *(a1 + 411) = v148 != 0;
          if (!v147)
          {
            goto LABEL_280;
          }
        }

        else
        {
          v25 = v8 + 2;
LABEL_34:
          *v160 = v25;
          *(a1 + 411) = v24 != 0;
        }

        goto LABEL_275;
      case 0x1Eu:
        if (v9 != 240)
        {
          goto LABEL_267;
        }

        v5 |= 0x8000u;
        v143 = v8 + 1;
        v142 = *v8;
        if ((v142 & 0x8000000000000000) == 0)
        {
          goto LABEL_249;
        }

        v144 = *v143;
        v142 = (v144 << 7) + v142 - 128;
        if (v144 < 0)
        {
          v155 = sub_19587DC(v8, v142);
          *v160 = v155;
          *(a1 + 412) = v156 != 0;
          if (!v155)
          {
            goto LABEL_280;
          }
        }

        else
        {
          v143 = v8 + 2;
LABEL_249:
          *v160 = v143;
          *(a1 + 412) = v142 != 0;
        }

        goto LABEL_275;
      case 0x1Fu:
        if (v9 != 250)
        {
          goto LABEL_267;
        }

        *(a1 + 16) |= 0x200u;
        v140 = *(a1 + 392);
        if (!v140)
        {
          v141 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v141 = *v141;
          }

          v140 = sub_1529B7C(v141);
          *(a1 + 392) = v140;
          v8 = *v160;
        }

        v21 = sub_2218C88(a3, v140, v8);
        goto LABEL_274;
      case 0x23u:
        if (v9 != 26)
        {
          goto LABEL_267;
        }

        v38 = v8 - 2;
        while (1)
        {
          v39 = (v38 + 2);
          *v160 = v38 + 2;
          v40 = *(a1 + 312);
          if (v40 && (v41 = *(a1 + 304), v41 < *v40))
          {
            *(a1 + 304) = v41 + 1;
            v42 = *&v40[2 * v41 + 2];
          }

          else
          {
            v43 = sub_15299D0(*(a1 + 296));
            v42 = sub_19593CC(a1 + 296, v43);
            v39 = *v160;
          }

          v38 = sub_2218D18(a3, v42, v39);
          *v160 = v38;
          if (!v38)
          {
            goto LABEL_280;
          }

          if (*a3 <= v38 || *v38 != 666)
          {
            goto LABEL_275;
          }
        }

      default:
        goto LABEL_267;
    }
  }
}

char *sub_15094C0(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 320) & 0xFFFFFFFFFFFFFFFELL, a2);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 2, *(a1 + 328) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v9 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 26;
      v10 = *(v9 + 20);
      v4[1] = v10;
      if (v10 > 0x7F)
      {
        v11 = sub_19575D0(v10, v4 + 1);
      }

      else
      {
        v11 = v4 + 2;
      }

      v4 = sub_1502D94(v9, v11, a3);
    }
  }

  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v12 = *(a1 + 408);
    *v4 = 32;
    v4[1] = v12;
    v4 += 2;
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    for (j = 0; j != v13; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v15 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 42;
      v16 = *(v15 + 20);
      v4[1] = v16;
      if (v16 > 0x7F)
      {
        v17 = sub_19575D0(v16, v4 + 1);
      }

      else
      {
        v17 = v4 + 2;
      }

      v4 = sub_1503CAC(v15, v17, a3);
    }
  }

  v18 = *(a1 + 80);
  if (v18)
  {
    for (k = 0; k != v18; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v20 = *(*(a1 + 88) + 8 * k + 8);
      *v4 = 50;
      v21 = *(v20 + 20);
      v4[1] = v21;
      if (v21 > 0x7F)
      {
        v22 = sub_19575D0(v21, v4 + 1);
      }

      else
      {
        v22 = v4 + 2;
      }

      v4 = sub_15051BC(v20, v22, a3);
    }
  }

  v23 = *(a1 + 96);
  if (v23 < 1)
  {
    v26 = v4;
  }

  else
  {
    for (m = 0; m != v23; ++m)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v25 = *(*(a1 + 104) + 4 * m);
      *v4 = 56;
      v4[1] = v25;
      if (v25 > 0x7F)
      {
        v4[1] = v25 | 0x80;
        v27 = v25 >> 7;
        v4[2] = v25 >> 7;
        v26 = v4 + 3;
        if (v25 >= 0x4000)
        {
          LOBYTE(v28) = v4[2];
          do
          {
            *(v26 - 1) = v28 | 0x80;
            v28 = v27 >> 7;
            *v26++ = v27 >> 7;
            v29 = v27 >> 14;
            v27 >>= 7;
          }

          while (v29);
        }
      }

      else
      {
        v26 = v4 + 2;
      }

      v4 = v26;
    }
  }

  v30 = *(a1 + 112);
  if (v30 < 1)
  {
    v33 = v26;
  }

  else
  {
    for (n = 0; n != v30; ++n)
    {
      if (*a3 <= v26)
      {
        v26 = sub_225EB68(a3, v26);
      }

      v32 = *(*(a1 + 120) + 4 * n);
      *v26 = 64;
      v26[1] = v32;
      if (v32 > 0x7F)
      {
        v26[1] = v32 | 0x80;
        v34 = v32 >> 7;
        v26[2] = v32 >> 7;
        v33 = v26 + 3;
        if (v32 >= 0x4000)
        {
          LOBYTE(v26) = v26[2];
          do
          {
            *(v33 - 1) = v26 | 0x80;
            v26 = (v34 >> 7);
            *v33++ = v34 >> 7;
            v35 = v34 >> 14;
            v34 >>= 7;
          }

          while (v35);
        }
      }

      else
      {
        v33 = v26 + 2;
      }

      v26 = v33;
    }
  }

  if ((v6 & 4) == 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_59;
    }

LABEL_67:
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v40 = *(a1 + 344);
    *v33 = 90;
    v41 = *(v40 + 20);
    v33[1] = v41;
    if (v41 > 0x7F)
    {
      v42 = sub_19575D0(v41, v33 + 1);
    }

    else
    {
      v42 = v33 + 2;
    }

    v33 = sub_15018CC(v40, v42, a3);
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_73;
  }

  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v37 = *(a1 + 336);
  *v33 = 82;
  v38 = *(v37 + 40);
  v33[1] = v38;
  if (v38 > 0x7F)
  {
    v39 = sub_19575D0(v38, v33 + 1);
  }

  else
  {
    v39 = v33 + 2;
  }

  v33 = sub_15073DC(v37, v39, a3);
  if ((v6 & 8) != 0)
  {
    goto LABEL_67;
  }

LABEL_59:
  if ((v6 & 0x400) == 0)
  {
LABEL_60:
    v36 = v33;
    goto LABEL_80;
  }

LABEL_73:
  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v43 = *(a1 + 400);
  *v33 = 96;
  v33[1] = v43;
  if (v43 > 0x7F)
  {
    v33[1] = v43 | 0x80;
    v44 = v43 >> 7;
    v33[2] = v43 >> 7;
    v36 = v33 + 3;
    if (v43 >= 0x4000)
    {
      LOBYTE(v33) = v33[2];
      do
      {
        *(v36 - 1) = v33 | 0x80;
        v33 = (v44 >> 7);
        *v36++ = v44 >> 7;
        v45 = v44 >> 14;
        v44 >>= 7;
      }

      while (v45);
    }
  }

  else
  {
    v36 = v33 + 2;
  }

LABEL_80:
  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v46 = *(a1 + 352);
    *v36 = 122;
    v47 = *(v46 + 20);
    v36[1] = v47;
    if (v47 > 0x7F)
    {
      v48 = sub_19575D0(v47, v36 + 1);
    }

    else
    {
      v48 = v36 + 2;
    }

    v36 = sub_150BD34(v46, v48, a3);
  }

  v49 = *(a1 + 136);
  if (v49)
  {
    for (ii = 0; ii != v49; ++ii)
    {
      if (*a3 <= v36)
      {
        v36 = sub_225EB68(a3, v36);
      }

      v51 = *(*(a1 + 144) + 8 * ii + 8);
      *v36 = 386;
      v52 = *(v51 + 20);
      v36[2] = v52;
      if (v52 > 0x7F)
      {
        v53 = sub_19575D0(v52, v36 + 2);
      }

      else
      {
        v53 = v36 + 3;
      }

      v36 = sub_150AFD4(v51, v53, a3);
    }
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v54 = *(a1 + 360);
    *v36 = 394;
    v55 = *(v54 + 20);
    v36[2] = v55;
    if (v55 > 0x7F)
    {
      v56 = sub_19575D0(v55, v36 + 2);
    }

    else
    {
      v56 = v36 + 3;
    }

    v36 = sub_1526024(v54, v56, a3);
    if ((v6 & 0x40) == 0)
    {
LABEL_97:
      if ((v6 & 0x1000) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_112;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_97;
  }

  if (*a3 <= v36)
  {
    v36 = sub_225EB68(a3, v36);
  }

  v57 = *(a1 + 368);
  *v36 = 402;
  v58 = *(v57 + 20);
  v36[2] = v58;
  if (v58 > 0x7F)
  {
    v59 = sub_19575D0(v58, v36 + 2);
  }

  else
  {
    v59 = v36 + 3;
  }

  v36 = sub_150C420(v57, v59, a3);
  if ((v6 & 0x1000) == 0)
  {
LABEL_98:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_115;
  }

LABEL_112:
  if (*a3 <= v36)
  {
    v36 = sub_225EB68(a3, v36);
  }

  v60 = *(a1 + 409);
  *v36 = 408;
  v36[2] = v60;
  v36 += 3;
  if ((v6 & 0x80) != 0)
  {
LABEL_115:
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v61 = *(a1 + 376);
    *v36 = 418;
    v62 = *(v61 + 20);
    v36[2] = v62;
    if (v62 > 0x7F)
    {
      v63 = sub_19575D0(v62, v36 + 2);
    }

    else
    {
      v63 = v36 + 3;
    }

    v36 = sub_150CB0C(v61, v63, a3);
  }

LABEL_121:
  v64 = *(a1 + 160);
  if (v64 >= 1)
  {
    v65 = 8;
    do
    {
      v66 = *(*(a1 + 168) + v65);
      v67 = *(v66 + 23);
      if (v67 < 0 && (v67 = v66[1], v67 > 127) || *a3 - v36 + 13 < v67)
      {
        v36 = sub_1957480(a3, 21, v66, v36);
      }

      else
      {
        *v36 = 426;
        v36[2] = v67;
        if (*(v66 + 23) < 0)
        {
          v66 = *v66;
        }

        v68 = v36 + 3;
        memcpy(v68, v66, v67);
        v36 = &v68[v67];
      }

      v65 += 8;
      --v64;
    }

    while (v64);
  }

  if ((v6 & 0x2000) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v69 = *(a1 + 410);
    *v36 = 432;
    v36[2] = v69;
    v36 += 3;
  }

  v70 = *(a1 + 184);
  if (v70 >= 1)
  {
    v71 = 8;
    do
    {
      v72 = *(*(a1 + 192) + v71);
      v73 = *(v72 + 23);
      if (v73 < 0 && (v73 = v72[1], v73 > 127) || *a3 - v36 + 13 < v73)
      {
        v36 = sub_1957480(a3, 23, v72, v36);
      }

      else
      {
        *v36 = 442;
        v36[2] = v73;
        if (*(v72 + 23) < 0)
        {
          v72 = *v72;
        }

        v74 = v36 + 3;
        memcpy(v74, v72, v73);
        v36 = &v74[v73];
      }

      v71 += 8;
      --v70;
    }

    while (v70);
  }

  v75 = *(a1 + 208);
  if (v75 >= 1)
  {
    v76 = 8;
    do
    {
      v77 = *(*(a1 + 216) + v76);
      v78 = *(v77 + 23);
      if (v78 < 0 && (v78 = v77[1], v78 > 127) || *a3 - v36 + 13 < v78)
      {
        v36 = sub_1957480(a3, 24, v77, v36);
      }

      else
      {
        *v36 = 450;
        v36[2] = v78;
        if (*(v77 + 23) < 0)
        {
          v77 = *v77;
        }

        v79 = v36 + 3;
        memcpy(v79, v77, v78);
        v36 = &v79[v78];
      }

      v76 += 8;
      --v75;
    }

    while (v75);
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v80 = *(a1 + 384);
    *v36 = 458;
    v81 = *(v80 + 20);
    v36[2] = v81;
    if (v81 > 0x7F)
    {
      v82 = sub_19575D0(v81, v36 + 2);
    }

    else
    {
      v82 = v36 + 3;
    }

    v36 = sub_150D1F8(v80, v82, a3);
  }

  v83 = *(a1 + 232);
  if (v83 >= 1)
  {
    v84 = 8;
    do
    {
      v85 = *(*(a1 + 240) + v84);
      v86 = *(v85 + 23);
      if (v86 < 0 && (v86 = v85[1], v86 > 127) || *a3 - v36 + 13 < v86)
      {
        v36 = sub_1957480(a3, 26, v85, v36);
      }

      else
      {
        *v36 = 466;
        v36[2] = v86;
        if (*(v85 + 23) < 0)
        {
          v85 = *v85;
        }

        v87 = v36 + 3;
        memcpy(v87, v85, v86);
        v36 = &v87[v86];
      }

      v84 += 8;
      --v83;
    }

    while (v83);
  }

  v88 = *(a1 + 256);
  if (v88 >= 1)
  {
    v89 = 8;
    do
    {
      v90 = *(*(a1 + 264) + v89);
      v91 = *(v90 + 23);
      if (v91 < 0 && (v91 = v90[1], v91 > 127) || *a3 - v36 + 13 < v91)
      {
        v36 = sub_1957480(a3, 27, v90, v36);
      }

      else
      {
        *v36 = 474;
        v36[2] = v91;
        if (*(v90 + 23) < 0)
        {
          v90 = *v90;
        }

        v92 = v36 + 3;
        memcpy(v92, v90, v91);
        v36 = &v92[v91];
      }

      v89 += 8;
      --v88;
    }

    while (v88);
  }

  v93 = *(a1 + 280);
  if (v93)
  {
    for (jj = 0; jj != v93; ++jj)
    {
      if (*a3 <= v36)
      {
        v36 = sub_225EB68(a3, v36);
      }

      v95 = *(*(a1 + 288) + 8 * jj + 8);
      *v36 = 482;
      v96 = *(v95 + 20);
      v36[2] = v96;
      if (v96 > 0x7F)
      {
        v97 = sub_19575D0(v96, v36 + 2);
      }

      else
      {
        v97 = v36 + 3;
      }

      v36 = sub_1506870(v95, v97, a3);
    }
  }

  if ((v6 & 0x4000) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v98 = *(a1 + 411);
    *v36 = 488;
    v36[2] = v98;
    v36 += 3;
    if ((v6 & 0x8000) == 0)
    {
LABEL_197:
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_211;
      }

      goto LABEL_205;
    }
  }

  else if ((v6 & 0x8000) == 0)
  {
    goto LABEL_197;
  }

  if (*a3 <= v36)
  {
    v36 = sub_225EB68(a3, v36);
  }

  v99 = *(a1 + 412);
  *v36 = 496;
  v36[2] = v99;
  v36 += 3;
  if ((v6 & 0x200) != 0)
  {
LABEL_205:
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v100 = *(a1 + 392);
    *v36 = 506;
    v101 = *(v100 + 20);
    v36[2] = v101;
    if (v101 > 0x7F)
    {
      v102 = sub_19575D0(v101, v36 + 2);
    }

    else
    {
      v102 = v36 + 3;
    }

    v36 = sub_1506EA0(v100, v102, a3);
  }

LABEL_211:
  v103 = *(a1 + 304);
  if (v103)
  {
    for (kk = 0; kk != v103; ++kk)
    {
      if (*a3 <= v36)
      {
        v36 = sub_225EB68(a3, v36);
      }

      v105 = *(*(a1 + 312) + 8 * kk + 8);
      *v36 = 666;
      v106 = *(v105 + 20);
      v36[2] = v106;
      if (v106 > 0x7F)
      {
        v107 = sub_19575D0(v106, v36 + 2);
      }

      else
      {
        v107 = v36 + 3;
      }

      v36 = sub_15059B0(v105, v107, a3);
    }
  }

  v108 = *(a1 + 8);
  if ((v108 & 1) == 0)
  {
    return v36;
  }

  v110 = v108 & 0xFFFFFFFFFFFFFFFCLL;
  v111 = *(v110 + 31);
  if (v111 < 0)
  {
    v112 = *(v110 + 8);
    v111 = *(v110 + 16);
  }

  else
  {
    v112 = (v110 + 8);
  }

  if (*a3 - v36 >= v111)
  {
    v113 = v111;
    memcpy(v36, v112, v111);
    v36 += v113;
    return v36;
  }

  return sub_1957130(a3, v112, v111, v36);
}

uint64_t sub_150A1FC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 320) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v6 = *(a1 + 32);
  v7 = v2 + v6;
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 8 * v6;
    do
    {
      v11 = *v9++;
      v12 = sub_1502EF0(v11);
      v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      v10 -= 8;
    }

    while (v10);
  }

  v13 = *(a1 + 56);
  v14 = v7 + v13;
  v15 = *(a1 + 64);
  if (v15)
  {
    v16 = (v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  if (v13)
  {
    v17 = 8 * v13;
    do
    {
      v18 = *v16++;
      v19 = sub_15040C8(v18);
      v14 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      v17 -= 8;
    }

    while (v17);
  }

  v20 = *(a1 + 80);
  v21 = v14 + v20;
  v22 = *(a1 + 88);
  if (v22)
  {
    v23 = (v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  if (v20)
  {
    v24 = 8 * v20;
    do
    {
      v25 = *v23++;
      v26 = sub_1505338(v25);
      v21 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6);
      v24 -= 8;
    }

    while (v24);
  }

  v27 = *(a1 + 96);
  if (v27)
  {
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = *(*(a1 + 104) + 4 * v29);
      if (v30 < 0)
      {
        v31 = 10;
      }

      else
      {
        v31 = (9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6;
      }

      v28 += v31;
      ++v29;
    }

    while (v27 != v29);
  }

  else
  {
    v28 = 0;
  }

  v32 = *(a1 + 112);
  if (v32)
  {
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = *(*(a1 + 120) + 4 * v34);
      if (v35 < 0)
      {
        v36 = 10;
      }

      else
      {
        v36 = (9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6;
      }

      v33 += v36;
      ++v34;
    }

    while (v32 != v34);
  }

  else
  {
    v33 = 0;
  }

  v37 = *(a1 + 136);
  v38 = v21 + v27 + v28 + v32 + v33 + 2 * v37;
  v39 = *(a1 + 144);
  if (v39)
  {
    v40 = (v39 + 8);
  }

  else
  {
    v40 = 0;
  }

  if (v37)
  {
    v41 = 8 * v37;
    do
    {
      v42 = *v40++;
      v43 = sub_150B138(v42);
      v38 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6);
      v41 -= 8;
    }

    while (v41);
  }

  v44 = *(a1 + 160);
  v45 = v38 + 2 * v44;
  if (v44 >= 1)
  {
    v46 = (*(a1 + 168) + 8);
    do
    {
      v47 = *v46++;
      v48 = *(v47 + 23);
      v49 = *(v47 + 8);
      if ((v48 & 0x80u) == 0)
      {
        v49 = v48;
      }

      v45 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6);
      --v44;
    }

    while (v44);
  }

  v50 = *(a1 + 184);
  v51 = v45 + 2 * v50;
  if (v50 >= 1)
  {
    v52 = (*(a1 + 192) + 8);
    do
    {
      v53 = *v52++;
      v54 = *(v53 + 23);
      v55 = *(v53 + 8);
      if ((v54 & 0x80u) == 0)
      {
        v55 = v54;
      }

      v51 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6);
      --v50;
    }

    while (v50);
  }

  v56 = *(a1 + 208);
  v57 = v51 + 2 * v56;
  if (v56 >= 1)
  {
    v58 = (*(a1 + 216) + 8);
    do
    {
      v59 = *v58++;
      v60 = *(v59 + 23);
      v61 = *(v59 + 8);
      if ((v60 & 0x80u) == 0)
      {
        v61 = v60;
      }

      v57 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6);
      --v56;
    }

    while (v56);
  }

  v62 = *(a1 + 232);
  v63 = v57 + 2 * v62;
  if (v62 >= 1)
  {
    v64 = (*(a1 + 240) + 8);
    do
    {
      v65 = *v64++;
      v66 = *(v65 + 23);
      v67 = *(v65 + 8);
      if ((v66 & 0x80u) == 0)
      {
        v67 = v66;
      }

      v63 += v67 + ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6);
      --v62;
    }

    while (v62);
  }

  v68 = *(a1 + 256);
  v69 = v63 + 2 * v68;
  if (v68 >= 1)
  {
    v70 = (*(a1 + 264) + 8);
    do
    {
      v71 = *v70++;
      v72 = *(v71 + 23);
      v73 = *(v71 + 8);
      if ((v72 & 0x80u) == 0)
      {
        v73 = v72;
      }

      v69 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6);
      --v68;
    }

    while (v68);
  }

  v74 = *(a1 + 280);
  v75 = v69 + 2 * v74;
  v76 = *(a1 + 288);
  if (v76)
  {
    v77 = (v76 + 8);
  }

  else
  {
    v77 = 0;
  }

  if (v74)
  {
    v78 = 8 * v74;
    do
    {
      v79 = *v77++;
      v80 = sub_15069FC(v79);
      v75 += v80 + ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6);
      v78 -= 8;
    }

    while (v78);
  }

  v81 = *(a1 + 304);
  v82 = v75 + 2 * v81;
  v83 = *(a1 + 312);
  if (v83)
  {
    v84 = (v83 + 8);
  }

  else
  {
    v84 = 0;
  }

  if (v81)
  {
    v85 = 8 * v81;
    do
    {
      v86 = *v84++;
      v87 = sub_1505AFC(v86);
      v82 += v87 + ((9 * (__clz(v87 | 1) ^ 0x1F) + 73) >> 6);
      v85 -= 8;
    }

    while (v85);
  }

  v88 = *(a1 + 16);
  if ((v88 & 0xFE) == 0)
  {
    goto LABEL_92;
  }

  if ((v88 & 2) != 0)
  {
    v93 = *(a1 + 328) & 0xFFFFFFFFFFFFFFFELL;
    v94 = *(v93 + 23);
    v95 = *(v93 + 8);
    if ((v94 & 0x80u) == 0)
    {
      v95 = v94;
    }

    v82 += v95 + ((9 * (__clz(v95 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v88 & 4) == 0)
    {
LABEL_86:
      if ((v88 & 8) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_112;
    }
  }

  else if ((v88 & 4) == 0)
  {
    goto LABEL_86;
  }

  v96 = sub_1507530(*(a1 + 336));
  v82 += v96 + ((9 * (__clz(v96 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v88 & 8) == 0)
  {
LABEL_87:
    if ((v88 & 0x10) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_113;
  }

LABEL_112:
  v97 = sub_1501AF8(*(a1 + 344));
  v82 += v97 + ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v88 & 0x10) == 0)
  {
LABEL_88:
    if ((v88 & 0x20) == 0)
    {
      goto LABEL_89;
    }

LABEL_114:
    v99 = sub_152619C(*(a1 + 360));
    v82 += v99 + ((9 * (__clz(v99 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v88 & 0x40) == 0)
    {
LABEL_90:
      if ((v88 & 0x80) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_91;
    }

    goto LABEL_115;
  }

LABEL_113:
  v98 = sub_150BEAC(*(a1 + 352));
  v82 += v98 + ((9 * (__clz(v98 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v88 & 0x20) != 0)
  {
    goto LABEL_114;
  }

LABEL_89:
  if ((v88 & 0x40) == 0)
  {
    goto LABEL_90;
  }

LABEL_115:
  v100 = sub_150C598(*(a1 + 368));
  v82 += v100 + ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v88 & 0x80) != 0)
  {
LABEL_91:
    v89 = sub_150CC84(*(a1 + 376));
    v82 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_92:
  if ((v88 & 0xFF00) == 0)
  {
    goto LABEL_106;
  }

  if ((v88 & 0x100) == 0)
  {
    if ((v88 & 0x200) == 0)
    {
      goto LABEL_95;
    }

LABEL_118:
    v102 = *(a1 + 392);
    v103 = 2 * (*(v102 + 16) & 1);
    v104 = *(v102 + 8);
    if (v104)
    {
      v107 = v104 & 0xFFFFFFFFFFFFFFFCLL;
      v108 = *((v104 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v108 < 0)
      {
        v108 = *(v107 + 16);
      }

      v103 += v108;
    }

    *(v102 + 20) = v103;
    v82 += v103 + ((9 * (__clz(v103 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v88 & 0x400) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_96;
  }

  v101 = sub_150D370(*(a1 + 384));
  v82 += v101 + ((9 * (__clz(v101 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v88 & 0x200) != 0)
  {
    goto LABEL_118;
  }

LABEL_95:
  if ((v88 & 0x400) != 0)
  {
LABEL_96:
    v82 += ((9 * (__clz(*(a1 + 400) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_97:
  v90 = v82 + ((v88 >> 10) & 2);
  if ((v88 & 0x1000) != 0)
  {
    v90 += 3;
  }

  if ((v88 & 0x2000) != 0)
  {
    v90 += 3;
  }

  if ((v88 & 0x4000) != 0)
  {
    v90 += 3;
  }

  if ((v88 & 0x8000) != 0)
  {
    v82 = v90 + 3;
  }

  else
  {
    v82 = v90;
  }

LABEL_106:
  v91 = *(a1 + 8);
  if (v91)
  {
    v105 = v91 & 0xFFFFFFFFFFFFFFFCLL;
    v106 = *((v91 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v106 < 0)
    {
      v106 = *(v105 + 16);
    }

    v82 += v106;
  }

  *(a1 + 20) = v82;
  return v82;
}

std::string *sub_150A974(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_14D7154(result);

    return sub_14D7E4C(v4, a2);
  }

  return result;
}

uint64_t sub_150A9C0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v2 = v1--;
      v3 = *(*(a1 + 16) + 8 + 8 * v1);
      v4 = *(v3 + 32);
      v5 = *(v3 + 40);
      while (v4 >= 1)
      {
        v6 = *(v5 + 8 * v4--);
        if ((*(v6 + 16) & 1) == 0)
        {
          return 0;
        }
      }
    }

    while (v2 >= 2);
  }

  return 1;
}

__n128 sub_150AA1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  v8 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v8;
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v9;
  *(a2 + 80) = v10;
  v11 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v11;
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v12;
  *(a2 + 104) = v13;
  v14 = *(a1 + 112);
  v15 = *(a1 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v14;
  *(a2 + 120) = v15;
  v16 = *(a1 + 128);
  v17 = *(a1 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = v16;
  *(a2 + 136) = v17;
  v18 = *(a1 + 144);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = v18;
  v19 = *(a1 + 152);
  v20 = *(a1 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = v19;
  *(a2 + 160) = v20;
  v21 = *(a1 + 168);
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 168) = v21;
  v22 = *(a1 + 176);
  v23 = *(a1 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 176) = v22;
  *(a2 + 184) = v23;
  v24 = *(a1 + 192);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = v24;
  v25 = *(a1 + 200);
  v26 = *(a1 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 200) = v25;
  *(a2 + 208) = v26;
  v27 = *(a1 + 216);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = v27;
  v28 = *(a1 + 224);
  v29 = *(a1 + 232);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 224) = v28;
  *(a2 + 232) = v29;
  v30 = *(a1 + 240);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 240) = v30;
  v31 = *(a1 + 248);
  v32 = *(a1 + 256);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 248) = v31;
  *(a2 + 256) = v32;
  v33 = *(a1 + 264);
  *(a1 + 264) = *(a2 + 264);
  *(a2 + 264) = v33;
  v34 = *(a1 + 272);
  v35 = *(a1 + 280);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 272) = v34;
  *(a2 + 280) = v35;
  v36 = *(a1 + 288);
  *(a1 + 288) = *(a2 + 288);
  *(a2 + 288) = v36;
  v37 = *(a1 + 296);
  v38 = *(a1 + 304);
  *(a1 + 296) = *(a2 + 296);
  *(a2 + 296) = v37;
  *(a2 + 304) = v38;
  v39 = *(a1 + 312);
  *(a1 + 312) = *(a2 + 312);
  *(a2 + 312) = v39;
  v40 = *(a2 + 320);
  *(a2 + 320) = *(a1 + 320);
  *(a1 + 320) = v40;
  v41 = *(a2 + 328);
  *(a2 + 328) = *(a1 + 328);
  *(a1 + 328) = v41;
  v42 = *(a1 + 336);
  v43 = *(a1 + 344);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 336) = v42;
  *(a2 + 344) = v43;
  v44 = *(a1 + 352);
  v45 = *(a1 + 360);
  *(a1 + 352) = *(a2 + 352);
  *(a2 + 352) = v44;
  *(a2 + 360) = v45;
  v46 = *(a1 + 368);
  v47 = *(a1 + 376);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 368) = v46;
  *(a2 + 376) = v47;
  v48 = *(a1 + 384);
  v49 = *(a1 + 392);
  result = *(a2 + 384);
  *(a1 + 384) = result;
  *(a2 + 384) = v48;
  *(a2 + 392) = v49;
  v51 = *(a1 + 400);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 400) = v51;
  LODWORD(v51) = *(a1 + 408);
  *(a1 + 408) = *(a2 + 408);
  *(a2 + 408) = v51;
  LOBYTE(v51) = *(a1 + 412);
  *(a1 + 412) = *(a2 + 412);
  *(a2 + 412) = v51;
  return result;
}

uint64_t sub_150AC68(uint64_t a1)
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
  sub_1569D3C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_150AD14(uint64_t a1)
{
  sub_150AC68(a1);

  operator delete();
}

uint64_t sub_150AD4C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_150B434(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    v5 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_150ADFC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        v15 = v6 - 1;
        while (1)
        {
          v16 = v15 + 1;
          *v25 = v15 + 1;
          v17 = *(a1 + 40);
          if (v17 && (v18 = *(a1 + 32), v18 < *v17))
          {
            *(a1 + 32) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = sub_1529D9C(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = *v25;
          }

          v15 = sub_2218DA8(a3, v19, v16);
          *v25 = v15;
          if (!v15)
          {
            break;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_33;
          }
        }

LABEL_38:
        *v25 = 0;
        return *v25;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v23 = sub_194DB04((a1 + 48), v22);
      v14 = sub_1958890(v23, *v25, a3);
      goto LABEL_32;
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
        return *v25;
      }

      goto LABEL_38;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v25;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_32:
    *v25 = v14;
    if (!v14)
    {
      goto LABEL_38;
    }

LABEL_33:
    ;
  }

  return *v25;
}

char *sub_150AFD4(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 18;
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

      v4 = sub_150B658(v8, v10, a3);
    }
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

uint64_t sub_150B138(uint64_t a1)
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
      v7 = sub_150B758(v6);
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
    v8 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    v2 += v14;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_150B228(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_156BC34(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    size = v3->__r_.__value_.__l.__size_;
    v11 = (size & 0xFFFFFFFFFFFFFFFCLL);
    if (size)
    {
      v11 = *v11;
    }

    result = sub_194EA1C(&v3[2], (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_150B31C(uint64_t a1)
{
  v1 = *(a1 + 32);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(a1 + 40) + 8 * v1--);
  }

  while ((*(v3 + 16) & 1) != 0);
  return v2 < 1;
}

uint64_t sub_150B35C(uint64_t a1)
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

void sub_150B3FC(uint64_t a1)
{
  sub_150B35C(a1);

  operator delete();
}

uint64_t sub_150B434(uint64_t a1)
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

uint64_t sub_150B47C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v24 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v24, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v24 + 1);
    v8 = **v24;
    if (**v24 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v24, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v24 + 2);
      }
    }

    *v24 = v7;
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
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_23;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_23:
      *v24 = v17;
      *(a1 + 32) = v16 != 0;
      goto LABEL_28;
    }

    v22 = sub_19587DC(v7, v16);
    *v24 = v22;
    *(a1 + 32) = v23 != 0;
    if (!v22)
    {
      goto LABEL_35;
    }

LABEL_28:
    if (sub_195ADC0(a3, v24, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    v21 = sub_194DB04((a1 + 24), v20);
    v15 = sub_1958890(v21, *v24, a3);
LABEL_27:
    *v24 = v15;
    if (!v15)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
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
      v7 = *v24;
    }

    v15 = sub_1952690(v8, v14, v7, a3);
    goto LABEL_27;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_35:
  *v24 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v24;
}

char *sub_150B658(uint64_t a1, char *__dst, void *a3)
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
    *v4 = 16;
    v4[1] = v7;
    v4 += 2;
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

uint64_t sub_150B758(uint64_t a1)
{
  v1 = *(a1 + 16);
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
  }

  else
  {
    v2 = 0;
  }

  v6 = v2 + (v1 & 2);
  v7 = *(a1 + 8);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v6 += v10;
  }

  *(a1 + 20) = v6;
  return v6;
}

std::string *sub_150B7DC(std::string *result, uint64_t a2)
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
      v3[1].__r_.__value_.__s.__data_[8] = *(a2 + 32);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
  }

  v8 = *(a2 + 8);
  if (v8)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_150B8B0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26EAD40;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1201B48(a1 + 24, v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    sub_1957EF4(v4, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 48) = &qword_278E990;
  if (*(a2 + 16))
  {
    v11 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  return a1;
}

void sub_150B9D0(_Unwind_Exception *a1)
{
  sub_1956AFC(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_150BA10(uint64_t a1)
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

void sub_150BAB8(uint64_t a1)
{
  sub_150BA10(a1);

  operator delete();
}

uint64_t sub_150BAF0(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_150BD34(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_150BEAC(uint64_t a1)
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

uint64_t sub_150BF9C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26EADC0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1201B48(a1 + 24, v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    sub_1957EF4(v4, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 48) = &qword_278E990;
  if (*(a2 + 16))
  {
    v11 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  return a1;
}

void sub_150C0BC(_Unwind_Exception *a1)
{
  sub_1956AFC(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_150C0FC(uint64_t a1)
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

void sub_150C1A4(uint64_t a1)
{
  sub_150C0FC(a1);

  operator delete();
}

uint64_t sub_150C1DC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_150C420(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_150C598(uint64_t a1)
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

uint64_t sub_150C688(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26EAE40;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1201B48(a1 + 24, v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    sub_1957EF4(v4, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 48) = &qword_278E990;
  if (*(a2 + 16))
  {
    v11 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  return a1;
}

void sub_150C7A8(_Unwind_Exception *a1)
{
  sub_1956AFC(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_150C7E8(uint64_t a1)
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

void sub_150C890(uint64_t a1)
{
  sub_150C7E8(a1);

  operator delete();
}

uint64_t sub_150C8C8(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_150CB0C(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_150CC84(uint64_t a1)
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

uint64_t sub_150CD74(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26EAEC0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1201B48(a1 + 24, v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    sub_1957EF4(v4, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 48) = &qword_278E990;
  if (*(a2 + 16))
  {
    v11 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  return a1;
}

void sub_150CE94(_Unwind_Exception *a1)
{
  sub_1956AFC(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_150CED4(uint64_t a1)
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

void sub_150CF7C(uint64_t a1)
{
  sub_150CED4(a1);

  operator delete();
}

uint64_t sub_150CFB4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_150D1F8(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_150D370(uint64_t a1)
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

void *sub_150D460(void *a1)
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

void sub_150D4D4(void *a1)
{
  sub_150D460(a1);

  operator delete();
}

uint64_t sub_150D50C(uint64_t a1)
{
  if ((*(a1 + 16) & 0x3F) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0xFFFFFFF700000000;
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

char *sub_150D53C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v30 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v30, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v30 + 1;
    v8 = *v30;
    if (*v30 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v30, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v30 + 2;
      }
    }

    v30 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 0xA)
    {
      if (v11 == 11)
      {
        if (v8 == 93)
        {
          v21 = *v7;
          v12 = v7 + 4;
          v5 |= 0x10u;
          *(a1 + 40) = v21;
          goto LABEL_38;
        }
      }

      else if (v11 == 12)
      {
        if (v8 == 101)
        {
          v23 = *v7;
          v12 = v7 + 4;
          v5 |= 4u;
          *(a1 + 32) = v23;
          goto LABEL_38;
        }
      }

      else if (v11 == 99 && v8 == 24)
      {
        v15 = v7 + 1;
        v16 = *v7;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v17 = *v15;
        v18 = (v17 << 7) + v16;
        v16 = (v18 - 128);
        if (v17 < 0)
        {
          v30 = sub_19587DC(v7, (v18 - 128));
          if (!v30)
          {
            goto LABEL_58;
          }

          v16 = v27;
        }

        else
        {
          v15 = v7 + 2;
LABEL_23:
          v30 = v15;
        }

        if ((v16 + 3) < 7 || v16 == -9)
        {
          *(a1 + 16) |= 0x20u;
          *(a1 + 44) = v16;
        }

        else
        {
          v28 = *(a1 + 8);
          if (v28)
          {
            v29 = ((v28 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }

          else
          {
            v29 = sub_11F1920((a1 + 8));
          }

          sub_19586BC(99, v16, v29);
        }

        goto LABEL_39;
      }
    }

    else if (v11 == 1)
    {
      if (v8 == 13)
      {
        v20 = *v7;
        v12 = v7 + 4;
        v5 |= 1u;
        *(a1 + 24) = v20;
        goto LABEL_38;
      }
    }

    else if (v11 == 2)
    {
      if (v8 == 21)
      {
        v22 = *v7;
        v12 = v7 + 4;
        v5 |= 2u;
        *(a1 + 28) = v22;
        goto LABEL_38;
      }
    }

    else if (v11 == 10 && v8 == 85)
    {
      v13 = *v7;
      v12 = v7 + 4;
      v5 |= 8u;
      *(a1 + 36) = v13;
LABEL_38:
      v30 = v12;
      goto LABEL_39;
    }

    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v25 = *(a1 + 8);
    if (v25)
    {
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v26 = sub_11F1920((a1 + 8));
      v7 = v30;
    }

    v30 = sub_1952690(v8, v26, v7, a3);
    if (!v30)
    {
      goto LABEL_58;
    }

LABEL_39:
    if (sub_195ADC0(a3, &v30, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_58:
  v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

char *sub_150D7C8(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *__dst = 13;
    *(__dst + 1) = v7;
    __dst += 5;
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v8 = *(a1 + 28);
  *__dst = 21;
  *(__dst + 1) = v8;
  __dst += 5;
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_14:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v9 = *(a1 + 36);
  *__dst = 85;
  *(__dst + 1) = v9;
  __dst += 5;
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_20:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v11 = *(a1 + 32);
    *__dst = 101;
    *(__dst + 1) = v11;
    __dst += 5;
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_17:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v10 = *(a1 + 40);
  *__dst = 93;
  *(__dst + 1) = v10;
  __dst += 5;
  if ((v5 & 4) != 0)
  {
    goto LABEL_20;
  }

LABEL_6:
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    v6 = __dst;
    goto LABEL_30;
  }

LABEL_23:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v12 = *(a1 + 44);
  *__dst = 1688;
  __dst[2] = v12;
  if (v12 > 0x7F)
  {
    __dst[2] = v12 | 0x80;
    v13 = v12 >> 7;
    __dst[3] = v12 >> 7;
    v6 = __dst + 4;
    if (v12 >= 0x4000)
    {
      LOBYTE(v14) = __dst[3];
      do
      {
        *(v6 - 1) = v14 | 0x80;
        v14 = v13 >> 7;
        *v6++ = v13 >> 7;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
    }
  }

  else
  {
    v6 = __dst + 3;
  }

LABEL_30:
  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v19)
  {
    v21 = v19;
    memcpy(v6, v20, v19);
    v6 += v21;
    return v6;
  }

  return sub_1957130(a3, v20, v19, v6);
}

uint64_t sub_150DA08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) != 0)
  {
    v2 = 5;
    if ((v1 & 1) == 0)
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 8) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 0x10) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 0x20) != 0)
    {
      v3 = *(a1 + 44);
      v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v3 >= 0)
      {
        v5 = v4;
      }

      else
      {
        v5 = 12;
      }

      v2 += v5;
    }
  }

  else
  {
    v2 = 0;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    v2 += v9;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_150DABC(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_10;
  }

  if (v2)
  {
    LODWORD(result[1].__r_.__value_.__l.__data_) = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_15:
  HIDWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v2 & 0x20) != 0)
  {
LABEL_8:
    HIDWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
  }

LABEL_9:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_10:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_150DB68(void *a1)
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

void sub_150DBDC(void *a1)
{
  sub_150DB68(a1);

  operator delete();
}

char *sub_150DC14(uint64_t a1, char *a2, int32x2_t *a3)
{
  v17 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v17, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v17 + 1;
    v7 = *v17;
    if (*v17 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v17, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v17 + 2;
      }
    }

    v17 = v6;
    if (v7 == 8)
    {
      v14 = v6 + 1;
      v13 = *v6;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if (v15 < 0)
      {
        v17 = sub_19587DC(v6, v13);
        if (!v17)
        {
          return 0;
        }
      }

      else
      {
        v14 = v6 + 2;
LABEL_19:
        v17 = v14;
      }

      if (v13 > 5)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 24) = v13;
      }

      continue;
    }

    if (v7)
    {
      v10 = (v7 & 7) == 4;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v17;
      }

      return 0;
    }

    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v12 = sub_11F1920((a1 + 8));
      v6 = v17;
    }

    v17 = sub_1952690(v7, v12, v6, a3);
    if (!v17)
    {
      return 0;
    }
  }

  return v17;
}

char *sub_150DD7C(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_150DEA4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    if (v2 < 0)
    {
      v1 = 11;
    }

    else
    {
      v1 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v1 = 0;
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

    v1 += v6;
  }

  *(a1 + 20) = v1;
  return v1;
}

uint64_t sub_150DF28(uint64_t a1)
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

  if (a1 != &off_2775918)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_150EB60(v6);
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

void sub_150DFF4(uint64_t a1)
{
  sub_150DF28(a1);

  operator delete();
}

uint64_t sub_150E02C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E72AC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      result = sub_14F6E84(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 88) + 8);
    do
    {
      v10 = *v9++;
      result = sub_14F00F0(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  *(v1 + 96) = 0;
  v11 = *(v1 + 120);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 128) + 8);
    do
    {
      v13 = *v12++;
      result = sub_14D9150(v13);
      --v11;
    }

    while (v11);
    *(v1 + 120) = 0;
  }

  *(v1 + 136) = 0;
  v14 = *(v1 + 160);
  if (v14 >= 1)
  {
    v15 = (*(v1 + 168) + 8);
    do
    {
      v16 = *v15++;
      result = sub_14EA414(v16);
      --v14;
    }

    while (v14);
    *(v1 + 160) = 0;
  }

  v17 = *(v1 + 184);
  if (v17 >= 1)
  {
    v18 = (*(v1 + 192) + 8);
    do
    {
      v19 = *v18++;
      result = sub_150FE2C(v19);
      --v17;
    }

    while (v17);
    *(v1 + 184) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_16F035C(*(v1 + 200));
  }

  v21 = *(v1 + 8);
  v20 = v1 + 8;
  *(v20 + 200) = 0;
  *(v20 + 8) = 0;
  if (v21)
  {

    return sub_1957EA8(v20);
  }

  return result;
}

uint64_t sub_150E190(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v33 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v33, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v33 + 1);
    v8 = **v33;
    if (**v33 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v33, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v33 + 2);
      }
    }

    *v33 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 == 3 && v8 == 26)
      {
        *(a1 + 16) |= 2u;
        v13 = *(a1 + 32);
        if (!v13)
        {
          v14 = *(a1 + 8);
          v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          if (v14)
          {
            v15 = *v15;
          }

          v13 = sub_152A23C(v15);
          *(a1 + 32) = v13;
          v7 = *v33;
        }

        v16 = sub_2218E38(a3, v13, v7);
        goto LABEL_42;
      }

      goto LABEL_35;
    }

    if (v8 != 8)
    {
      goto LABEL_35;
    }

    v5 |= 4u;
    v21 = (v7 + 1);
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }

    v22 = *v21;
    v20 = (v22 << 7) + v20 - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v21 = (v7 + 2);
LABEL_29:
      *v33 = v21;
      *(a1 + 40) = v20;
      goto LABEL_43;
    }

    v29 = sub_19587DC(v7, v20);
    *v33 = v29;
    *(a1 + 40) = v30;
    if (!v29)
    {
      goto LABEL_52;
    }

LABEL_43:
    if (sub_195ADC0(a3, v33, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_35;
    }

    v5 |= 8u;
    v24 = (v7 + 1);
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v24 = (v7 + 2);
LABEL_34:
      *v33 = v24;
      *(a1 + 48) = v23 != 0;
      goto LABEL_43;
    }

    v31 = sub_19587DC(v7, v23);
    *v33 = v31;
    *(a1 + 48) = v32 != 0;
    if (!v31)
    {
      goto LABEL_52;
    }

    goto LABEL_43;
  }

  if (v11 == 5 && v8 == 42)
  {
    *(a1 + 16) |= 1u;
    v17 = *(a1 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    v19 = sub_194DB04((a1 + 24), v18);
    v16 = sub_1958890(v19, *v33, a3);
LABEL_42:
    *v33 = v16;
    if (!v16)
    {
      goto LABEL_52;
    }

    goto LABEL_43;
  }

LABEL_35:
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
      v7 = *v33;
    }

    v16 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_42;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_52:
  *v33 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v33;
}

char *sub_150E430(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 40);
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v13 = *(a1 + 32);
    *v6 = 26;
    v14 = *(v13 + 20);
    v6[1] = v14;
    if (v14 > 0x7F)
    {
      v15 = sub_19575D0(v14, v6 + 1);
    }

    else
    {
      v15 = v6 + 2;
    }

    v6 = sub_150F42C(v13, v15, a3);
    if ((v5 & 8) == 0)
    {
LABEL_12:
      if ((v5 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_12;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v16 = *(a1 + 48);
  *v6 = 32;
  v6[1] = v16;
  v6 += 2;
  if (v5)
  {
LABEL_13:
    v6 = sub_128AEEC(a3, 5, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

LABEL_14:
  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v6;
  }

  v17 = v11 & 0xFFFFFFFFFFFFFFFCLL;
  v18 = *(v17 + 31);
  if (v18 < 0)
  {
    v19 = *(v17 + 8);
    v18 = *(v17 + 16);
  }

  else
  {
    v19 = (v17 + 8);
  }

  if (*a3 - v6 >= v18)
  {
    v20 = v18;
    memcpy(v6, v19, v18);
    v6 += v20;
    return v6;
  }

  return sub_1957130(a3, v19, v18, v6);
}

uint64_t sub_150E62C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    result = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  v8 = sub_150FA40(*(a1 + 32));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_10:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  result = v3 + ((v2 >> 2) & 2);
LABEL_13:
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    result += v11;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_150E73C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_13B326C(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
    result = sub_156BCC0(&v3[2], v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
    v12 = LODWORD(v3[2].__r_.__value_.__r.__words[1]) + v9;
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = v12;
    v13 = v3[2].__r_.__value_.__r.__words[2];
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(&v3[3], *(a2 + 80));
    result = sub_1348320(&v3[3], v16, (v15 + 8), v14, *v3[3].__r_.__value_.__r.__words[2] - LODWORD(v3[3].__r_.__value_.__r.__words[1]));
    v17 = LODWORD(v3[3].__r_.__value_.__r.__words[1]) + v14;
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = v17;
    v18 = v3[3].__r_.__value_.__r.__words[2];
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 96);
  if (v19)
  {
    data_low = SLODWORD(v3[4].__r_.__value_.__l.__data_);
    sub_1959094(&v3[4], data_low + v19);
    size = v3[4].__r_.__value_.__l.__size_;
    LODWORD(v3[4].__r_.__value_.__l.__data_) += *(a2 + 96);
    result = memcpy((size + 8 * data_low), *(a2 + 104), 8 * *(a2 + 96));
  }

  v22 = *(a2 + 120);
  if (v22)
  {
    v23 = *(a2 + 128);
    v24 = sub_19592E8(&v3[4].__r_.__value_.__r.__words[2], *(a2 + 120));
    result = sub_13486C4((v3 + 112), v24, (v23 + 8), v22, *v3[5].__r_.__value_.__l.__size_ - LODWORD(v3[5].__r_.__value_.__l.__data_));
    v25 = LODWORD(v3[5].__r_.__value_.__l.__data_) + v22;
    LODWORD(v3[5].__r_.__value_.__l.__data_) = v25;
    v26 = v3[5].__r_.__value_.__l.__size_;
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }

  v27 = *(a2 + 136);
  if (v27)
  {
    v28 = SLODWORD(v3[5].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[5].__r_.__value_.__r.__words[2], v28 + v27);
    data = v3[6].__r_.__value_.__l.__data_;
    LODWORD(v3[5].__r_.__value_.__r.__words[2]) += *(a2 + 136);
    result = memcpy(&data[4 * v28], *(a2 + 144), 4 * *(a2 + 136));
  }

  v30 = *(a2 + 160);
  if (v30)
  {
    v31 = *(a2 + 168);
    v32 = sub_19592E8(&v3[6].__r_.__value_.__l.__size_, *(a2 + 160));
    result = sub_156BD4C((v3 + 152), v32, (v31 + 8), v30, *v3[7].__r_.__value_.__l.__data_ - LODWORD(v3[6].__r_.__value_.__r.__words[2]));
    v33 = LODWORD(v3[6].__r_.__value_.__r.__words[2]) + v30;
    LODWORD(v3[6].__r_.__value_.__r.__words[2]) = v33;
    v34 = v3[7].__r_.__value_.__l.__data_;
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  v35 = *(a2 + 184);
  if (v35)
  {
    v36 = *(a2 + 192);
    v37 = sub_19592E8(&v3[7].__r_.__value_.__l.__size_, *(a2 + 184));
    result = sub_156BDD8(&v3[7].__r_.__value_.__l.__size_, v37, (v36 + 8), v35, *v3[8].__r_.__value_.__l.__data_ - LODWORD(v3[7].__r_.__value_.__r.__words[2]));
    v38 = LODWORD(v3[7].__r_.__value_.__r.__words[2]) + v35;
    LODWORD(v3[7].__r_.__value_.__r.__words[2]) = v38;
    v39 = v3[8].__r_.__value_.__l.__data_;
    if (*v39 < v38)
    {
      *v39 = v38;
    }
  }

  v40 = *(a2 + 16);
  if ((v40 & 3) != 0)
  {
    if (v40)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v41 = v3[8].__r_.__value_.__l.__size_;
      if (!v41)
      {
        v42 = v3->__r_.__value_.__l.__size_;
        v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
        if (v42)
        {
          v43 = *v43;
        }

        v41 = sub_16F6144(v43);
        v3[8].__r_.__value_.__l.__size_ = v41;
      }

      if (*(a2 + 200))
      {
        v44 = *(a2 + 200);
      }

      else
      {
        v44 = &off_277EA18;
      }

      result = sub_132DE2C(v41, v44);
    }

    if ((v40 & 2) != 0)
    {
      LODWORD(v3[8].__r_.__value_.__r.__words[2]) = *(a2 + 208);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v40;
  }

  v45 = *(a2 + 8);
  if (v45)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v45 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_150EABC(uint64_t a1)
{
  v2 = *(a1 + 56);
  while (v2 >= 1)
  {
    v3 = *(*(a1 + 64) + 8 * v2--);
    if ((~*(v3 + 16) & 9) != 0)
    {
      return 0;
    }
  }

  v4 = *(a1 + 184);
  while (v4 >= 1)
  {
    v5 = v4 - 1;
    v6 = sub_15104E0(*(*(a1 + 192) + 8 * v4) + 40);
    v4 = v5;
    if (!v6)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16F061C(*(a1 + 200));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_150EB60(uint64_t a1)
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

  if (a1 != &off_2775950 && *(a1 + 200))
  {
    sub_16F0320();
    operator delete();
  }

  if (*(a1 + 8))
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1569EC8((a1 + 176));
  sub_1569E44((a1 + 152));
  sub_1956ABC(a1 + 136);
  sub_1347AB0((a1 + 112));
  sub_1956ABC(a1 + 96);
  sub_1347714((a1 + 72));
  sub_1569DC0((a1 + 48));
  sub_13B31E8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_150EC70(uint64_t a1)
{
  sub_150EB60(a1);

  operator delete();
}

char *sub_150ECA8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v74 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v74, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = v74 + 1;
    v9 = *v74;
    if (*v74 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(v74, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = v74 + 2;
      }
    }

    v74 = v8;
    v13 = v9 >> 3;
    if (v9 >> 3 <= 5)
    {
      if (v9 >> 3 <= 2)
      {
        if (v13 == 1)
        {
          if (v9 == 10)
          {
            v41 = v8 - 1;
            while (1)
            {
              v42 = (v41 + 1);
              v74 = v41 + 1;
              v43 = *(a1 + 40);
              if (v43 && (v44 = *(a1 + 32), v44 < *v43))
              {
                *(a1 + 32) = v44 + 1;
                v45 = *&v43[2 * v44 + 2];
              }

              else
              {
                v46 = sub_16F5A54(*(a1 + 24));
                v45 = sub_19593CC(a1 + 24, v46);
                v42 = v74;
              }

              v41 = sub_22002C0(a3, v45, v42);
              v74 = v41;
              if (!v41)
              {
                break;
              }

              if (*a3 <= v41 || *v41 != 10)
              {
                goto LABEL_141;
              }
            }

LABEL_146:
            v74 = 0;
            goto LABEL_2;
          }
        }

        else if (v13 == 2 && v9 == 18)
        {
          v27 = v8 - 1;
          while (1)
          {
            v28 = (v27 + 1);
            v74 = v27 + 1;
            v29 = *(a1 + 64);
            if (v29 && (v30 = *(a1 + 56), v30 < *v29))
            {
              *(a1 + 56) = v30 + 1;
              v31 = *&v29[2 * v30 + 2];
            }

            else
            {
              v32 = sub_1528C84(*(a1 + 48));
              v31 = sub_19593CC(a1 + 48, v32);
              v28 = v74;
            }

            v27 = sub_2218EC8(a3, v31, v28);
            v74 = v27;
            if (!v27)
            {
              goto LABEL_146;
            }

            if (*a3 <= v27 || *v27 != 18)
            {
              goto LABEL_141;
            }
          }
        }

        goto LABEL_133;
      }

      switch(v13)
      {
        case 3u:
          if (v9 != 26)
          {
            goto LABEL_133;
          }

          *(a1 + 16) |= 1u;
          v53 = *(a1 + 200);
          if (!v53)
          {
            v54 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
            if (*v7)
            {
              v54 = *v54;
            }

            v53 = sub_16F6144(v54);
            *(a1 + 200) = v53;
            v8 = v74;
          }

          v55 = sub_21FC730(a3, v53, v8);
          break;
        case 4u:
          if (v9 == 34)
          {
            v62 = v8 - 1;
            while (1)
            {
              v63 = (v62 + 1);
              v74 = v62 + 1;
              v64 = *(a1 + 88);
              if (v64 && (v65 = *(a1 + 80), v65 < *v64))
              {
                *(a1 + 80) = v65 + 1;
                v66 = *&v64[2 * v65 + 2];
              }

              else
              {
                v67 = sub_1528744(*(a1 + 72));
                v66 = sub_19593CC(a1 + 72, v67);
                v63 = v74;
              }

              v62 = sub_21FCC40(a3, v66, v63);
              v74 = v62;
              if (!v62)
              {
                goto LABEL_146;
              }

              if (*a3 <= v62 || *v62 != 34)
              {
                goto LABEL_141;
              }
            }
          }

          goto LABEL_133;
        case 5u:
          if (v9 == 40)
          {
            v14 = v8 - 1;
            while (1)
            {
              v74 = v14 + 1;
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

              v74 = v14;
              v18 = *(a1 + 96);
              if (v18 == *(a1 + 100))
              {
                v19 = v18 + 1;
                sub_1959094((a1 + 96), v18 + 1);
                *(*(a1 + 104) + 8 * v18) = v15;
                v14 = v74;
              }

              else
              {
                *(*(a1 + 104) + 8 * v18) = v15;
                v19 = v18 + 1;
              }

              *(a1 + 96) = v19;
              if (!v14)
              {
                goto LABEL_146;
              }

              if (*a3 <= v14 || *v14 != 40)
              {
                goto LABEL_141;
              }
            }
          }

          if (v9 != 42)
          {
            goto LABEL_133;
          }

          v55 = sub_1958938((a1 + 96), v8, a3);
          break;
        default:
          goto LABEL_133;
      }

LABEL_140:
      v74 = v55;
      if (!v55)
      {
        goto LABEL_146;
      }

      goto LABEL_141;
    }

    if (v9 >> 3 <= 9)
    {
      if (v13 == 6)
      {
        if (v9 == 50)
        {
          v47 = v8 - 1;
          while (1)
          {
            v48 = (v47 + 1);
            v74 = v47 + 1;
            v49 = *(a1 + 128);
            if (v49 && (v50 = *(a1 + 120), v50 < *v49))
            {
              *(a1 + 120) = v50 + 1;
              v51 = *&v49[2 * v50 + 2];
            }

            else
            {
              v52 = sub_152710C(*(a1 + 112));
              v51 = sub_19593CC(a1 + 112, v52);
              v48 = v74;
            }

            v47 = sub_21FCB20(a3, v51, v48);
            v74 = v47;
            if (!v47)
            {
              goto LABEL_146;
            }

            if (*a3 <= v47 || *v47 != 50)
            {
              goto LABEL_141;
            }
          }
        }

        goto LABEL_133;
      }

      if (v13 != 7)
      {
        goto LABEL_133;
      }

      if (v9 != 56)
      {
        if (v9 != 58)
        {
          goto LABEL_133;
        }

        *&v75 = a1 + 136;
        *(&v75 + 1) = sub_17A7C30;
        v76 = a1 + 8;
        v77 = 7;
        v55 = sub_1216588(a3, v8, &v75);
        goto LABEL_140;
      }

      v33 = v8 - 1;
      while (1)
      {
        v74 = v33 + 1;
        v34 = v33[1];
        v35 = v33 + 2;
        if (v34 < 0)
        {
          v36 = *v35;
          v37 = (v36 << 7) + v34;
          LODWORD(v34) = v37 - 128;
          if (v36 < 0)
          {
            v74 = sub_19587DC((v33 + 1), (v37 - 128));
            if (!v74)
            {
              goto LABEL_146;
            }

            LODWORD(v34) = v40;
            goto LABEL_64;
          }

          v35 = v33 + 3;
        }

        v74 = v35;
LABEL_64:
        if (sub_17A7C30(v34))
        {
          v38 = *(a1 + 136);
          if (v38 == *(a1 + 140))
          {
            v39 = v38 + 1;
            sub_1958E5C((a1 + 136), v38 + 1);
            *(*(a1 + 144) + 4 * v38) = v34;
          }

          else
          {
            *(*(a1 + 144) + 4 * v38) = v34;
            v39 = v38 + 1;
          }

          *(a1 + 136) = v39;
        }

        else
        {
          sub_13ED178();
        }

        v33 = v74;
        if (*a3 <= v74 || *v74 != 56)
        {
          goto LABEL_141;
        }
      }
    }

    if (v13 == 10)
    {
      if (v9 == 82)
      {
        v56 = v8 - 1;
        while (1)
        {
          v57 = (v56 + 1);
          v74 = v56 + 1;
          v58 = *(a1 + 168);
          if (v58 && (v59 = *(a1 + 160), v59 < *v58))
          {
            *(a1 + 160) = v59 + 1;
            v60 = *&v58[2 * v59 + 2];
          }

          else
          {
            v61 = sub_1528174(*(a1 + 152));
            v60 = sub_19593CC(a1 + 152, v61);
            v57 = v74;
          }

          v56 = sub_2218F58(a3, v60, v57);
          v74 = v56;
          if (!v56)
          {
            goto LABEL_146;
          }

          if (*a3 <= v56 || *v56 != 82)
          {
            goto LABEL_141;
          }
        }
      }

      goto LABEL_133;
    }

    if (v13 != 11)
    {
      break;
    }

    if (v9 != 88)
    {
      goto LABEL_133;
    }

    v5 |= 2u;
    LODWORD(v68) = *v8;
    if ((v68 & 0x80000000) != 0)
    {
      v68 = (v8[1] << 7) + v68 - 128;
      if (v8[1] < 0)
      {
        v70 = sub_19587DC(v8, v68);
        v74 = v70;
        *(a1 + 208) = v71;
        if (!v70)
        {
          goto LABEL_146;
        }

        goto LABEL_141;
      }

      v69 = v8 + 2;
    }

    else
    {
      v69 = v8 + 1;
    }

    v74 = v69;
    *(a1 + 208) = v68;
LABEL_141:
    if (sub_195ADC0(a3, &v74, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v13 == 12 && v9 == 98)
  {
    v20 = v8 - 1;
    while (1)
    {
      v21 = (v20 + 1);
      v74 = v20 + 1;
      v22 = *(a1 + 192);
      if (v22 && (v23 = *(a1 + 184), v23 < *v22))
      {
        *(a1 + 184) = v23 + 1;
        v24 = *&v22[2 * v23 + 2];
      }

      else
      {
        v25 = sub_152A314(*(a1 + 176));
        v24 = sub_19593CC(a1 + 176, v25);
        v21 = v74;
      }

      v20 = sub_2218FE8(a3, v24, v21);
      v74 = v20;
      if (!v20)
      {
        goto LABEL_146;
      }

      if (*a3 <= v20 || *v20 != 98)
      {
        goto LABEL_141;
      }
    }
  }

LABEL_133:
  if (v9)
  {
    v72 = (v9 & 7) == 4;
  }

  else
  {
    v72 = 1;
  }

  if (!v72)
  {
    if (*v7)
    {
      v73 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v73 = sub_11F1920((a1 + 8));
      v8 = v74;
    }

    v55 = sub_1952690(v9, v73, v8, a3);
    goto LABEL_140;
  }

  if (!v8)
  {
    goto LABEL_146;
  }

  a3[10].i32[0] = v9 - 1;
LABEL_2:
  *(a1 + 16) |= v5;
  return v74;
}

char *sub_150F42C(uint64_t a1, char *a2, void *a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
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

      a2 = sub_16E74A8(v8, v10, a3);
    }
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v13 = *(*(a1 + 64) + 8 * j + 8);
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

      a2 = sub_14F71E8(v13, v15, a3);
    }
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v17 = *(a1 + 200);
    *a2 = 26;
    v18 = *(v17 + 20);
    a2[1] = v18;
    if (v18 > 0x7F)
    {
      v19 = sub_19575D0(v18, a2 + 1);
    }

    else
    {
      v19 = a2 + 2;
    }

    a2 = sub_16F04D8(v17, v19, a3);
  }

  v20 = *(a1 + 80);
  if (v20)
  {
    for (k = 0; k != v20; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v22 = *(*(a1 + 88) + 8 * k + 8);
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

      a2 = sub_14F04AC(v22, v24, a3);
    }
  }

  v25 = *(a1 + 96);
  if (v25 < 1)
  {
    v28 = a2;
  }

  else
  {
    for (m = 0; m != v25; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v27 = *(*(a1 + 104) + 8 * m);
      *a2 = 40;
      a2[1] = v27;
      if (v27 > 0x7F)
      {
        a2[1] = v27 | 0x80;
        v29 = v27 >> 7;
        a2[2] = v27 >> 7;
        v28 = a2 + 3;
        if (v27 >= 0x4000)
        {
          LOBYTE(a2) = a2[2];
          do
          {
            *(v28 - 1) = a2 | 0x80;
            a2 = (v29 >> 7);
            *v28++ = v29 >> 7;
            v30 = v29 >> 14;
            v29 >>= 7;
          }

          while (v30);
        }
      }

      else
      {
        v28 = a2 + 2;
      }

      a2 = v28;
    }
  }

  v31 = *(a1 + 120);
  if (v31)
  {
    for (n = 0; n != v31; ++n)
    {
      if (*a3 <= v28)
      {
        v28 = sub_225EB68(a3, v28);
      }

      v33 = *(*(a1 + 128) + 8 * n + 8);
      *v28 = 50;
      v34 = *(v33 + 20);
      v28[1] = v34;
      if (v34 > 0x7F)
      {
        v35 = sub_19575D0(v34, v28 + 1);
      }

      else
      {
        v35 = v28 + 2;
      }

      v28 = sub_14D9394(v33, v35, a3);
    }
  }

  v36 = *(a1 + 136);
  if (v36 < 1)
  {
    v39 = v28;
  }

  else
  {
    for (ii = 0; ii != v36; ++ii)
    {
      if (*a3 <= v28)
      {
        v28 = sub_225EB68(a3, v28);
      }

      v38 = *(*(a1 + 144) + 4 * ii);
      *v28 = 56;
      v28[1] = v38;
      if (v38 > 0x7F)
      {
        v28[1] = v38 | 0x80;
        v40 = v38 >> 7;
        v28[2] = v38 >> 7;
        v39 = v28 + 3;
        if (v38 >= 0x4000)
        {
          LOBYTE(v28) = v28[2];
          do
          {
            *(v39 - 1) = v28 | 0x80;
            v28 = (v40 >> 7);
            *v39++ = v40 >> 7;
            v41 = v40 >> 14;
            v40 >>= 7;
          }

          while (v41);
        }
      }

      else
      {
        v39 = v28 + 2;
      }

      v28 = v39;
    }
  }

  v42 = *(a1 + 160);
  if (v42)
  {
    for (jj = 0; jj != v42; ++jj)
    {
      if (*a3 <= v39)
      {
        v39 = sub_225EB68(a3, v39);
      }

      v44 = *(*(a1 + 168) + 8 * jj + 8);
      *v39 = 82;
      v45 = *(v44 + 20);
      v39[1] = v45;
      if (v45 > 0x7F)
      {
        v46 = sub_19575D0(v45, v39 + 1);
      }

      else
      {
        v46 = v39 + 2;
      }

      v39 = sub_14EA6BC(v44, v46, a3);
    }
  }

  if ((v16 & 2) != 0)
  {
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v48 = *(a1 + 208);
    *v39 = 88;
    v39[1] = v48;
    if (v48 > 0x7F)
    {
      v39[1] = v48 | 0x80;
      v49 = v48 >> 7;
      v39[2] = v48 >> 7;
      v47 = v39 + 3;
      if (v48 >= 0x4000)
      {
        LOBYTE(v39) = v39[2];
        do
        {
          *(v47 - 1) = v39 | 0x80;
          v39 = (v49 >> 7);
          *v47++ = v49 >> 7;
          v50 = v49 >> 14;
          v49 >>= 7;
        }

        while (v50);
      }
    }

    else
    {
      v47 = v39 + 2;
    }
  }

  else
  {
    v47 = v39;
  }

  v51 = *(a1 + 184);
  if (v51)
  {
    for (kk = 0; kk != v51; ++kk)
    {
      if (*a3 <= v47)
      {
        v47 = sub_225EB68(a3, v47);
      }

      v53 = *(*(a1 + 192) + 8 * kk + 8);
      *v47 = 98;
      v54 = *(v53 + 64);
      v47[1] = v54;
      if (v54 > 0x7F)
      {
        v55 = sub_19575D0(v54, v47 + 1);
      }

      else
      {
        v55 = v47 + 2;
      }

      v47 = sub_1510104(v53, v55, a3);
    }
  }

  v56 = *(a1 + 8);
  if ((v56 & 1) == 0)
  {
    return v47;
  }

  v58 = v56 & 0xFFFFFFFFFFFFFFFCLL;
  v59 = *(v58 + 31);
  if (v59 < 0)
  {
    v60 = *(v58 + 8);
    v59 = *(v58 + 16);
  }

  else
  {
    v60 = (v58 + 8);
  }

  if (*a3 - v47 >= v59)
  {
    v61 = v59;
    memcpy(v47, v60, v59);
    v47 += v61;
    return v47;
  }

  return sub_1957130(a3, v60, v59, v47);
}

uint64_t sub_150FA40(uint64_t a1)
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
      v7 = sub_16E7590(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 56);
  v9 = v2 + v8;
  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = sub_14F7418(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 80);
  v16 = v9 + v15;
  v17 = *(a1 + 88);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = sub_14F0760(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = sub_1959F14((a1 + 96));
  v23 = *(a1 + 120);
  v24 = v22 + *(a1 + 96) + v23 + v16;
  v25 = *(a1 + 128);
  if (v25)
  {
    v26 = (v25 + 8);
  }

  else
  {
    v26 = 0;
  }

  if (v23)
  {
    v27 = 8 * v23;
    do
    {
      v28 = *v26++;
      v29 = sub_14D9520(v28);
      v24 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6);
      v27 -= 8;
    }

    while (v27);
  }

  v30 = *(a1 + 136);
  if (v30)
  {
    v31 = 0;
    v32 = 0;
    do
    {
      v33 = *(*(a1 + 144) + 4 * v32);
      if (v33 < 0)
      {
        v34 = 10;
      }

      else
      {
        v34 = (9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6;
      }

      v31 += v34;
      ++v32;
    }

    while (v30 != v32);
  }

  else
  {
    v31 = 0;
  }

  v35 = *(a1 + 160);
  v36 = v24 + v30 + v31 + v35;
  v37 = *(a1 + 168);
  if (v37)
  {
    v38 = (v37 + 8);
  }

  else
  {
    v38 = 0;
  }

  if (v35)
  {
    v39 = 8 * v35;
    do
    {
      v40 = *v38++;
      v41 = sub_14EA814(v40);
      v36 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6);
      v39 -= 8;
    }

    while (v39);
  }

  v42 = *(a1 + 184);
  v43 = v36 + v42;
  v44 = *(a1 + 192);
  if (v44)
  {
    v45 = (v44 + 8);
  }

  else
  {
    v45 = 0;
  }

  if (v42)
  {
    v46 = 8 * v42;
    do
    {
      v47 = *v45++;
      v48 = sub_15102C8(v47);
      v43 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6);
      v46 -= 8;
    }

    while (v46);
  }

  v49 = *(a1 + 16);
  if ((v49 & 3) != 0)
  {
    if (v49)
    {
      v50 = sub_16F05A0(*(a1 + 200));
      v43 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v49 & 2) != 0)
    {
      v51 = *(a1 + 208);
      v52 = ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v51 >= 0)
      {
        v53 = v52;
      }

      else
      {
        v53 = 11;
      }

      v43 += v53;
    }
  }

  v54 = *(a1 + 8);
  if (v54)
  {
    v56 = v54 & 0xFFFFFFFFFFFFFFFCLL;
    v57 = *((v54 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v57 < 0)
    {
      v57 = *(v56 + 16);
    }

    v43 += v57;
  }

  *(a1 + 20) = v43;
  return v43;
}

void *sub_150FD68(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1569F4C(a1 + 5);
  sub_1347714(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_150FDF4(void *a1)
{
  sub_150FD68(a1);

  operator delete();
}

uint64_t sub_150FE2C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14F00F0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v5 = *(v1 + 48);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 56) + 8);
    do
    {
      v7 = *v6++;
      result = sub_1510670(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  v9 = *(v1 + 8);
  v8 = (v1 + 8);
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

char *sub_150FED0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v26 = a2;
  if ((sub_195ADC0(a3, &v26, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = v26 + 1;
      v7 = *v26;
      if (*v26 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          v6 = sub_1958824(v26, v8 - 128);
          v7 = v9;
        }

        else
        {
          v6 = v26 + 2;
        }
      }

      v26 = v6;
      if (v7 >> 3 == 2)
      {
        if (v7 == 18)
        {
          v14 = v6 - 1;
          while (1)
          {
            v15 = (v14 + 1);
            v26 = v14 + 1;
            v16 = *(a1 + 56);
            if (v16 && (v17 = *(a1 + 48), v17 < *v16))
            {
              *(a1 + 48) = v17 + 1;
              v18 = *&v16[2 * v17 + 2];
            }

            else
            {
              v19 = sub_152A3B8(*(a1 + 40));
              v18 = sub_19593CC(a1 + 40, v19);
              v15 = v26;
            }

            v14 = sub_2219078(a3, v18, v15);
            v26 = v14;
            if (!v14)
            {
              return 0;
            }

            if (*a3 <= v14 || *v14 != 18)
            {
              goto LABEL_38;
            }
          }
        }
      }

      else if (v7 >> 3 == 1 && v7 == 10)
      {
        v20 = v6 - 1;
        while (1)
        {
          v21 = (v20 + 1);
          v26 = v20 + 1;
          v22 = *(a1 + 32);
          if (v22 && (v23 = *(a1 + 24), v23 < *v22))
          {
            *(a1 + 24) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            v25 = sub_1528744(*(a1 + 16));
            v24 = sub_19593CC(a1 + 16, v25);
            v21 = v26;
          }

          v20 = sub_21FCC40(a3, v24, v21);
          v26 = v20;
          if (!v20)
          {
            return 0;
          }

          if (*a3 <= v20 || *v20 != 10)
          {
            goto LABEL_38;
          }
        }
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
        v6 = v26;
      }

      v26 = sub_1952690(v7, v13, v6, a3);
      if (!v26)
      {
        return 0;
      }

LABEL_38:
      if (sub_195ADC0(a3, &v26, a3[11].i32[1]))
      {
        return v26;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return v26;
    }

    return 0;
  }

  return v26;
}

char *sub_1510104(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_14F04AC(v8, v10, a3);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v13 = *(*(a1 + 56) + 8 * j + 8);
      *__dst = 18;
      v14 = *(v13 + 20);
      __dst[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, __dst + 1);
      }

      else
      {
        v15 = __dst + 2;
      }

      __dst = sub_1510B20(v13, v15, a3);
    }
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return __dst;
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

  if (*a3 - __dst >= v19)
  {
    v21 = v19;
    memcpy(__dst, v20, v19);
    __dst += v21;
    return __dst;
  }

  return sub_1957130(a3, v20, v19, __dst);
}