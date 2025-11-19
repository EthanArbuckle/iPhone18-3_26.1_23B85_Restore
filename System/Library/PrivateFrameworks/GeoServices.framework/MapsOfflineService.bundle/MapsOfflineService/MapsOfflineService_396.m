uint64_t sub_1625EEC(uint64_t a1)
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
      v7 = sub_16256EC(v6);
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
      v14 = sub_16251E8(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 3) != 0)
  {
    if (v15)
    {
      v16 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v17 = *(v16 + 23);
      v18 = *(v16 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v18 = v17;
      }

      v9 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v15 & 2) != 0)
    {
      v19 = *(a1 + 80);
      v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v19 >= 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = 11;
      }

      v9 += v21;
    }
  }

  v22 = *(a1 + 8);
  if (v22)
  {
    v24 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v25 < 0)
    {
      v25 = *(v24 + 16);
    }

    v9 += v25;
  }

  *(a1 + 20) = v9;
  return v9;
}

std::string *sub_1626068(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_1638C44(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
    result = sub_1638CC0(&v3[2], v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
    v12 = LODWORD(v3[2].__r_.__value_.__r.__words[1]) + v9;
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = v12;
    v13 = v3[2].__r_.__value_.__r.__words[2];
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if ((v14 & 3) != 0)
  {
    if (v14)
    {
      v15 = *(a2 + 72);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      size = v3->__r_.__value_.__l.__size_;
      v17 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v17 = *v17;
      }

      result = sub_194EA1C(&v3[3], (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
    }

    if ((v14 & 2) != 0)
    {
      LODWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 80);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v14;
  }

  v18 = *(a2 + 8);
  if (v18)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_16261F0(void *a1)
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

void sub_162626C(void *a1)
{
  sub_16261F0(a1);

  operator delete();
}

uint64_t sub_16262A4(uint64_t a1)
{
  *(a1 + 24) = 0;
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 44) = 0;
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

char *sub_16262CC(uint64_t a1, char *a2, int32x2_t *a3)
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
    v11 = v8 >> 3;
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 == 26)
    {
      v16 = sub_1958908((a1 + 24), v7, a3);
      goto LABEL_27;
    }

    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v28 = sub_128A7C8(&v27);
    sub_194FE98((a1 + 24), &v28);
    if (!v27)
    {
      goto LABEL_45;
    }

LABEL_33:
    if (sub_195ADC0(a3, &v27, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2)
  {
    if (v8 != 16)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v18 = v7 + 1;
    LODWORD(v17) = *v7;
    if ((v17 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    v19 = *v18;
    v17 = v17 + (v19 << 7) - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_24:
      v27 = v18;
      *(a1 + 48) = v17;
      goto LABEL_33;
    }

    v23 = sub_19587DC(v7, v17);
    v27 = v23;
    *(a1 + 48) = v24;
    if (!v23)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

  if (v11 == 1 && v8 == 8)
  {
    v5 |= 1u;
    v21 = v7 + 1;
    LODWORD(v20) = *v7;
    if ((v20 & 0x80) == 0)
    {
      goto LABEL_32;
    }

    v22 = *v21;
    v20 = v20 + (v22 << 7) - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_32:
      v27 = v21;
      *(a1 + 44) = v20;
      goto LABEL_33;
    }

    v25 = sub_19587DC(v7, v20);
    v27 = v25;
    *(a1 + 44) = v26;
    if (!v25)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
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
      v7 = v27;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
LABEL_27:
    v27 = v16;
    if (!v16)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_45:
  v27 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v27;
}

char *sub_16264FC(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 44);
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

    v12 = *(a1 + 48);
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

  v15 = *(a1 + 40);
  if (v15 >= 1)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    *v11 = 26;
    v16 = v11 + 1;
    if (v15 >= 0x80)
    {
      do
      {
        *v16++ = v15 | 0x80;
        v30 = v15 >> 14;
        v15 >>= 7;
      }

      while (v30);
      v11 = v16 - 1;
    }

    v17 = v11 + 2;
    *v16 = v15;
    v18 = *(a1 + 32);
    v19 = &v18[*(a1 + 24)];
    do
    {
      if (*a3 <= v17)
      {
        v17 = sub_225EB68(a3, v17);
      }

      v21 = *v18++;
      v20 = v21;
      *v17 = v21;
      if (v21 > 0x7F)
      {
        *v17 = v20 | 0x80;
        v22 = v20 >> 7;
        v17[1] = v20 >> 7;
        v11 = v17 + 2;
        if (v20 >= 0x4000)
        {
          LOBYTE(v23) = v17[1];
          do
          {
            *(v11 - 1) = v23 | 0x80;
            v23 = v22 >> 7;
            *v11++ = v22 >> 7;
            v24 = v22 >> 14;
            v22 >>= 7;
          }

          while (v24);
        }
      }

      else
      {
        v11 = v17 + 1;
      }

      v17 = v11;
    }

    while (v18 < v19);
  }

  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return v11;
  }

  v27 = v25 & 0xFFFFFFFFFFFFFFFCLL;
  v28 = *(v27 + 31);
  if (v28 < 0)
  {
    v29 = *(v27 + 8);
    v28 = *(v27 + 16);
  }

  else
  {
    v29 = (v27 + 8);
  }

  if (*a3 - v11 >= v28)
  {
    v31 = v28;
    memcpy(v11, v29, v28);
    v11 += v31;
    return v11;
  }

  return sub_1957130(a3, v29, v28, v11);
}

uint64_t sub_16267A8(uint64_t a1)
{
  v2 = sub_1959E04((a1 + 24));
  if (v2)
  {
    v3 = v2;
    if ((v2 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else
    {
      v4 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  *(a1 + 40) = v3;
  result = v4 + v2;
  v6 = *(a1 + 16);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      v7 = *(a1 + 44);
      if (v7 < 0)
      {
        v8 = 11;
      }

      else
      {
        v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      result += v8;
    }

    if ((v6 & 2) != 0)
    {
      v9 = *(a1 + 48);
      if (v9 < 0)
      {
        v10 = 11;
      }

      else
      {
        v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      result += v10;
    }
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    result += v13;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_16268B0(std::string *result, uint64_t a2)
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

  v8 = *(a2 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      HIDWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
    }

    if ((v8 & 2) != 0)
    {
      LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v8;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_162699C(uint64_t a1)
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
  if (a1 != &off_277B0B0)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_16261F0(v6);
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

void sub_1626A54(uint64_t a1)
{
  sub_162699C(a1);

  operator delete();
}

uint64_t sub_1626A8C(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_16262A4(*(result + 24));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_1626AE8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v18 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v18, i) & 1) == 0; i = a3[11].i32[1])
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
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_16321C4(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_222C4E4(a3, v14, v6);
    }

    else
    {
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
          return v18;
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
        v6 = v18;
      }

      v13 = sub_1952690(v7, v12, v6, a3);
    }

    v18 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v18;
}

char *sub_1626C2C(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *v4 = 10;
    v7 = *(v6 + 20);
    v4[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, v4 + 1);
    }

    else
    {
      v8 = v4 + 2;
    }

    v4 = sub_16264FC(v6, v8, a3);
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

uint64_t sub_1626D38(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_16267A8(*(a1 + 24));
    result = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    result = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    result += v6;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_1626DB8(std::string *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 16))
  {
    v4 = *(a2 + 24);
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

      data = sub_16321C4(v7);
      v3[1].__r_.__value_.__r.__words[0] = data;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_277B078;
    }

    result = sub_16268B0(data, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1626E78(uint64_t a1)
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

  if (a1 != &off_277B0D0)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_162699C(v5);
      operator delete();
    }

    if (*(a1 + 56))
    {
      sub_1789564();
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1638680((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1626F54(uint64_t a1)
{
  sub_1626E78(a1);

  operator delete();
}

uint64_t sub_1626F8C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1622DFC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      result = sub_1626A8C(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      result = sub_1789398(*(v1 + 56));
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 56) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_1627034(uint64_t a1, char *a2, int32x2_t *a3)
{
  v29 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
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
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 26)
      {
        goto LABEL_39;
      }

      *(a1 + 16) |= 1u;
      v23 = *(a1 + 48);
      if (!v23)
      {
        v24 = *(a1 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        v23 = sub_1632268(v25);
        *(a1 + 48) = v23;
        v7 = v29;
      }

      v22 = sub_222C604(a3, v23, v7);
    }

    else
    {
      if (v11 != 4 || v8 != 34)
      {
        goto LABEL_39;
      }

      *(a1 + 16) |= 2u;
      v19 = *(a1 + 56);
      if (!v19)
      {
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_1789A8C(v21);
        *(a1 + 56) = v19;
        v7 = v29;
      }

      v22 = sub_21F6470(a3, v19, v7);
    }

LABEL_46:
    v29 = v22;
    if (!v22)
    {
      goto LABEL_52;
    }

LABEL_47:
    if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 == 9)
    {
      v5 |= 4u;
      *(a1 + 64) = *v7;
      v29 = v7 + 8;
      goto LABEL_47;
    }
  }

  else if (v11 == 2 && v8 == 18)
  {
    v13 = v7 - 1;
    while (1)
    {
      v14 = (v13 + 1);
      v29 = v13 + 1;
      v15 = *(a1 + 40);
      if (v15 && (v16 = *(a1 + 32), v16 < *v15))
      {
        *(a1 + 32) = v16 + 1;
        v17 = *&v15[2 * v16 + 2];
      }

      else
      {
        sub_1631E00(*(a1 + 24));
        v17 = sub_19593CC(a1 + 24, v18);
        v14 = v29;
      }

      v13 = sub_222C574(a3, v17, v14);
      v29 = v13;
      if (!v13)
      {
        goto LABEL_52;
      }

      if (*a3 <= v13 || *v13 != 18)
      {
        goto LABEL_47;
      }
    }
  }

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

    v22 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_46;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_52:
  v29 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v29;
}

char *sub_16272C4(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 64);
    *v4 = 9;
    *(v4 + 1) = v7;
    v4 += 9;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v10 = *(*(a1 + 40) + 8 * i + 8);
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

      v4 = sub_16236E4(v10, v12, a3);
    }
  }

  if (v6)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v13 = *(a1 + 48);
    *v4 = 26;
    v14 = *(v13 + 20);
    v4[1] = v14;
    if (v14 > 0x7F)
    {
      v15 = sub_19575D0(v14, v4 + 1);
    }

    else
    {
      v15 = v4 + 2;
    }

    v4 = sub_1626C2C(v13, v15, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v16 = *(a1 + 56);
    *v4 = 34;
    v17 = *(v16 + 20);
    v4[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v4 + 1);
    }

    else
    {
      v18 = v4 + 2;
    }

    v4 = sub_17897D8(v16, v18, a3);
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v4;
  }

  v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  v22 = *(v21 + 31);
  if (v22 < 0)
  {
    v23 = *(v21 + 8);
    v22 = *(v21 + 16);
  }

  else
  {
    v23 = (v21 + 8);
  }

  if ((*a3 - v4) >= v22)
  {
    v24 = v22;
    memcpy(v4, v23, v22);
    v4 += v24;
    return v4;
  }

  return sub_1957130(a3, v23, v22, v4);
}

uint64_t sub_1627508(uint64_t a1)
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
      v7 = sub_1623CB4(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 16);
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      v9 = sub_1626D38(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = sub_178999C(*(a1 + 56));
      v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 4) != 0)
    {
      v2 += 9;
    }
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

void sub_1627628(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1638D3C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
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
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 48);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_1632268(v13);
        *(a1 + 48) = v11;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_277B0B0;
      }

      sub_1626DB8(v11, v14);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
LABEL_9:
          *(a1 + 16) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        *(a1 + 64) = *(a2 + 64);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 16) |= 2u;
    v15 = *(a1 + 56);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_1789A8C(v17);
      *(a1 + 56) = v15;
    }

    if (*(a2 + 56))
    {
      v18 = *(a2 + 56);
    }

    else
    {
      v18 = &off_2781FD0;
    }

    sub_17893E8(v15, v18);
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

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_16277C4(void *a1)
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

void sub_1627838(void *a1)
{
  sub_16277C4(a1);

  operator delete();
}

uint64_t sub_1627870(uint64_t a1)
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

char *sub_1627898(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 >> 3 != 2)
    {
      break;
    }

    if (v7 != 16)
    {
      goto LABEL_11;
    }

    v5 |= 2u;
    v15 = v6 + 1;
    LODWORD(v14) = *v6;
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    v16 = *v15;
    v14 = v14 + (v16 << 7) - 128;
    if ((v16 & 0x80000000) == 0)
    {
      v15 = v6 + 2;
LABEL_23:
      v20 = v15;
      *(a1 + 32) = v14;
      goto LABEL_25;
    }

    v17 = sub_19587DC(v6, v14);
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

  if (v7 >> 3 == 1 && v7 == 9)
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

char *sub_1627A38(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *__dst = 9;
    *(__dst + 1) = v6;
    __dst += 9;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 32);
    *__dst = 16;
    __dst[1] = v8;
    if (v8 > 0x7F)
    {
      __dst[1] = v8 | 0x80;
      v9 = v8 >> 7;
      __dst[2] = v8 >> 7;
      v7 = __dst + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v10) = __dst[2];
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
      v7 = __dst + 2;
    }
  }

  else
  {
    v7 = __dst;
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v7;
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

  if (*a3 - v7 >= v15)
  {
    v17 = v15;
    memcpy(v7, v16, v15);
    v7 += v17;
    return v7;
  }

  return sub_1957130(a3, v16, v15, v7);
}

uint64_t sub_1627B94(uint64_t a1)
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
      v3 = *(a1 + 32);
      if (v3 < 0)
      {
        v4 = 11;
      }

      else
      {
        v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v4;
    }
  }

  else
  {
    v2 = 0;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    v2 += v8;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_1627C30(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1638704(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1627CB0(void *a1)
{
  sub_1627C30(a1);

  operator delete();
}

uint64_t sub_1627CE8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1627870(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 0x1F) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 72) = 0;
    *(v1 + 64) = 0;
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

char *sub_1627D80(uint64_t a1, char *a2, int32x2_t *a3)
{
  v40 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v40, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v40 + 1;
    v8 = *v40;
    if (*v40 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v40, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v40 + 2;
      }
    }

    v40 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_47;
      }

      v5 |= 1u;
      v23 = v7 + 1;
      LODWORD(v22) = *v7;
      if ((v22 & 0x80) == 0)
      {
        goto LABEL_36;
      }

      v24 = *v23;
      v22 = v22 + (v24 << 7) - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_36:
        v40 = v23;
        *(a1 + 48) = v22;
        goto LABEL_54;
      }

      v34 = sub_19587DC(v7, v22);
      v40 = v34;
      *(a1 + 48) = v35;
      if (!v34)
      {
        goto LABEL_65;
      }
    }

    else if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_47;
      }

      v5 |= 2u;
      v28 = v7 + 1;
      LODWORD(v27) = *v7;
      if ((v27 & 0x80) == 0)
      {
        goto LABEL_43;
      }

      v29 = *v28;
      v27 = v27 + (v29 << 7) - 128;
      if ((v29 & 0x80000000) == 0)
      {
        v28 = v7 + 2;
LABEL_43:
        v40 = v28;
        *(a1 + 52) = v27;
        goto LABEL_54;
      }

      v38 = sub_19587DC(v7, v27);
      v40 = v38;
      *(a1 + 52) = v39;
      if (!v38)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_47;
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
        v40 = v14;
        *(a1 + 72) = v13;
        goto LABEL_54;
      }

      v36 = sub_19587DC(v7, v13);
      v40 = v36;
      *(a1 + 72) = v37;
      if (!v36)
      {
        goto LABEL_65;
      }
    }

LABEL_54:
    if (sub_195ADC0(a3, &v40, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 33)
    {
      goto LABEL_47;
    }

    v26 = *v7;
    v25 = v7 + 8;
    v5 |= 4u;
    *(a1 + 56) = v26;
    goto LABEL_46;
  }

  if (v11 == 5)
  {
    if (v8 != 41)
    {
      goto LABEL_47;
    }

    v30 = *v7;
    v25 = v7 + 8;
    v5 |= 8u;
    *(a1 + 64) = v30;
LABEL_46:
    v40 = v25;
    goto LABEL_54;
  }

  if (v11 == 6 && v8 == 50)
  {
    v16 = v7 - 1;
    while (1)
    {
      v17 = (v16 + 1);
      v40 = v16 + 1;
      v18 = *(a1 + 40);
      if (v18 && (v19 = *(a1 + 32), v19 < *v18))
      {
        *(a1 + 32) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
      }

      else
      {
        v21 = sub_1632380(*(a1 + 24));
        v20 = sub_19593CC(a1 + 24, v21);
        v17 = v40;
      }

      v16 = sub_222C694(a3, v20, v17);
      v40 = v16;
      if (!v16)
      {
        goto LABEL_65;
      }

      if (*a3 <= v16 || *v16 != 50)
      {
        goto LABEL_54;
      }
    }
  }

LABEL_47:
  if (v8)
  {
    v31 = (v8 & 7) == 4;
  }

  else
  {
    v31 = 1;
  }

  if (!v31)
  {
    v32 = *(a1 + 8);
    if (v32)
    {
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v33 = sub_11F1920((a1 + 8));
      v7 = v40;
    }

    v40 = sub_1952690(v8, v33, v7, a3);
    if (!v40)
    {
      goto LABEL_65;
    }

    goto LABEL_54;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_65:
  v40 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v40;
}

char *sub_16280A4(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 48);
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

    v12 = *(a1 + 52);
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 72);
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v19 = *(a1 + 56);
    *v15 = 33;
    *(v15 + 1) = v19;
    v15 += 9;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 64);
    *v15 = 41;
    *(v15 + 1) = v20;
    v15 += 9;
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    for (i = 0; i != v21; ++i)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v23 = *(*(a1 + 40) + 8 * i + 8);
      *v15 = 50;
      v24 = *(v23 + 20);
      v15[1] = v24;
      if (v24 > 0x7F)
      {
        v25 = sub_19575D0(v24, v15 + 1);
      }

      else
      {
        v25 = v15 + 2;
      }

      v15 = sub_1627A38(v23, v25, a3);
    }
  }

  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return v15;
  }

  v28 = v26 & 0xFFFFFFFFFFFFFFFCLL;
  v29 = *(v28 + 31);
  if (v29 < 0)
  {
    v30 = *(v28 + 8);
    v29 = *(v28 + 16);
  }

  else
  {
    v30 = (v28 + 8);
  }

  if (*a3 - v15 >= v29)
  {
    v31 = v29;
    memcpy(v15, v30, v29);
    v15 += v31;
    return v15;
  }

  return sub_1957130(a3, v30, v29, v15);
}

uint64_t sub_16283E8(uint64_t a1)
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
      v7 = sub_1627B94(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 16);
  if ((v8 & 0x1F) != 0)
  {
    if (v8)
    {
      v9 = *(a1 + 48);
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

    if ((v8 & 2) != 0)
    {
      v11 = *(a1 + 52);
      if (v11 < 0)
      {
        v12 = 11;
      }

      else
      {
        v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v12;
    }

    v13 = v2 + 9;
    if ((v8 & 4) == 0)
    {
      v13 = v2;
    }

    if ((v8 & 8) != 0)
    {
      v2 = v13 + 9;
    }

    else
    {
      v2 = v13;
    }

    if ((v8 & 0x10) != 0)
    {
      v14 = *(a1 + 72);
      v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v14 >= 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 11;
      }

      v2 += v16;
    }
  }

  v17 = *(a1 + 8);
  if (v17)
  {
    v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v2 += v20;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_1628550(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_1638DC8(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0x1F) != 0)
  {
    if (v9)
    {
      LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_18;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    HIDWORD(v3[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }

LABEL_18:
    v3[2].__r_.__value_.__l.__size_ = *(a2 + 56);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
LABEL_11:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
        goto LABEL_12;
      }

LABEL_10:
      LODWORD(v3[3].__r_.__value_.__l.__data_) = *(a2 + 72);
      goto LABEL_11;
    }

LABEL_19:
    v3[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_162868C(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_277B168)
  {
    v6 = *(a1 + 80);
    if (v6)
    {
      sub_16246E4(v6);
      operator delete();
    }

    v7 = *(a1 + 88);
    if (v7)
    {
      sub_16257C8(v7);
      operator delete();
    }

    v8 = *(a1 + 96);
    if (v8)
    {
      sub_1627C30(v8);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_1638788((a1 + 48));
  sub_1638680((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16287B0(uint64_t a1)
{
  sub_162868C(a1);

  operator delete();
}

uint64_t sub_16287E8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v87 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v87, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v87 + 1);
    v8 = **v87;
    if (**v87 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v87, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v87 + 2);
      }
    }

    *v87 = v7;
    switch(v8 >> 3)
    {
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_102;
        }

        v5 |= 0x10u;
        v12 = (v7 + 1);
        LODWORD(v11) = *v7;
        if ((v11 & 0x80) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v12;
        v11 = v11 + (v13 << 7) - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_12:
          *v87 = v12;
          *(a1 + 104) = v11;
          goto LABEL_110;
        }

        v79 = sub_19587DC(v7, v11);
        *v87 = v79;
        *(a1 + 104) = v80;
        if (v79)
        {
          goto LABEL_110;
        }

        goto LABEL_136;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_102;
        }

        v5 |= 0x20u;
        v43 = (v7 + 1);
        LODWORD(v42) = *v7;
        if ((v42 & 0x80) == 0)
        {
          goto LABEL_67;
        }

        v44 = *v43;
        v42 = v42 + (v44 << 7) - 128;
        if (v44 < 0)
        {
          v81 = sub_19587DC(v7, v42);
          *v87 = v81;
          *(a1 + 108) = v82;
          if (!v81)
          {
            goto LABEL_136;
          }
        }

        else
        {
          v43 = (v7 + 2);
LABEL_67:
          *v87 = v43;
          *(a1 + 108) = v42;
        }

        goto LABEL_110;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_102;
        }

        v5 |= 0x40u;
        v31 = (v7 + 1);
        LODWORD(v30) = *v7;
        if ((v30 & 0x80) == 0)
        {
          goto LABEL_46;
        }

        v32 = *v31;
        v30 = v30 + (v32 << 7) - 128;
        if (v32 < 0)
        {
          v73 = sub_19587DC(v7, v30);
          *v87 = v73;
          *(a1 + 112) = v74;
          if (!v73)
          {
            goto LABEL_136;
          }
        }

        else
        {
          v31 = (v7 + 2);
LABEL_46:
          *v87 = v31;
          *(a1 + 112) = v30;
        }

        goto LABEL_110;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_102;
        }

        v5 |= 0x80u;
        v37 = (v7 + 1);
        LODWORD(v36) = *v7;
        if ((v36 & 0x80) == 0)
        {
          goto LABEL_57;
        }

        v38 = *v37;
        v36 = v36 + (v38 << 7) - 128;
        if (v38 < 0)
        {
          v75 = sub_19587DC(v7, v36);
          *v87 = v75;
          *(a1 + 116) = v76;
          if (!v75)
          {
            goto LABEL_136;
          }
        }

        else
        {
          v37 = (v7 + 2);
LABEL_57:
          *v87 = v37;
          *(a1 + 116) = v36;
        }

        goto LABEL_110;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_102;
        }

        v22 = (v7 + 1);
        v21 = *v7;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v23 = *v22;
        v21 = (v23 << 7) + v21 - 128;
        if (v23 < 0)
        {
          *v87 = sub_19587DC(v7, v21);
          if (!*v87)
          {
            goto LABEL_136;
          }
        }

        else
        {
          v22 = (v7 + 2);
LABEL_28:
          *v87 = v22;
        }

        if (v21 > 3)
        {
          sub_13137B8();
        }

        else
        {
          *(a1 + 16) |= 0x100u;
          *(a1 + 120) = v21;
        }

        goto LABEL_110;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_102;
        }

        v45 = v7 - 1;
        while (1)
        {
          v46 = v45 + 1;
          *v87 = v45 + 1;
          v47 = *(a1 + 40);
          if (v47 && (v48 = *(a1 + 32), v48 < *v47))
          {
            *(a1 + 32) = v48 + 1;
            v49 = *&v47[2 * v48 + 2];
          }

          else
          {
            sub_1631E00(*(a1 + 24));
            v49 = sub_19593CC(a1 + 24, v50);
            v46 = *v87;
          }

          v45 = sub_222C574(a3, v49, v46);
          *v87 = v45;
          if (!v45)
          {
            goto LABEL_136;
          }

          if (*a3 <= v45 || *v45 != 58)
          {
            goto LABEL_110;
          }
        }

      case 8u:
        if (v8 != 64)
        {
          goto LABEL_102;
        }

        v5 |= 0x200u;
        v55 = (v7 + 1);
        LODWORD(v54) = *v7;
        if ((v54 & 0x80) == 0)
        {
          goto LABEL_86;
        }

        v56 = *v55;
        v54 = v54 + (v56 << 7) - 128;
        if (v56 < 0)
        {
          v83 = sub_19587DC(v7, v54);
          *v87 = v83;
          *(a1 + 124) = v84;
          if (!v83)
          {
            goto LABEL_136;
          }
        }

        else
        {
          v55 = (v7 + 2);
LABEL_86:
          *v87 = v55;
          *(a1 + 124) = v54;
        }

        goto LABEL_110;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_102;
        }

        v5 |= 0x400u;
        v40 = (v7 + 1);
        v39 = *v7;
        if ((v39 & 0x8000000000000000) == 0)
        {
          goto LABEL_62;
        }

        v41 = *v40;
        v39 = (v41 << 7) + v39 - 128;
        if (v41 < 0)
        {
          v77 = sub_19587DC(v7, v39);
          *v87 = v77;
          *(a1 + 128) = v78 != 0;
          if (!v77)
          {
            goto LABEL_136;
          }
        }

        else
        {
          v40 = (v7 + 2);
LABEL_62:
          *v87 = v40;
          *(a1 + 128) = v39 != 0;
        }

        goto LABEL_110;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_102;
        }

        v60 = (v7 - 1);
        while (1)
        {
          v61 = (v60 + 1);
          *v87 = v60 + 1;
          v62 = *(a1 + 64);
          if (v62 && (v63 = *(a1 + 56), v63 < *v62))
          {
            *(a1 + 56) = v63 + 1;
            v64 = *&v62[2 * v63 + 2];
          }

          else
          {
            v65 = sub_16322E0(*(a1 + 48));
            v64 = sub_19593CC(a1 + 48, v65);
            v61 = *v87;
          }

          v60 = sub_222C724(a3, v64, v61);
          *v87 = v60;
          if (!v60)
          {
            goto LABEL_136;
          }

          if (*a3 <= v60 || *v60 != 82)
          {
            goto LABEL_110;
          }
        }

      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_102;
        }

        *(a1 + 16) |= 2u;
        v27 = *(a1 + 80);
        if (!v27)
        {
          v28 = *(a1 + 8);
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          v27 = sub_1631F84(v29);
          *(a1 + 80) = v27;
          v7 = *v87;
        }

        v20 = sub_222C7B4(a3, v27, v7);
        goto LABEL_109;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_102;
        }

        v5 |= 0x800u;
        v58 = (v7 + 1);
        LODWORD(v57) = *v7;
        if ((v57 & 0x80) == 0)
        {
          goto LABEL_91;
        }

        v59 = *v58;
        v57 = v57 + (v59 << 7) - 128;
        if (v59 < 0)
        {
          v85 = sub_19587DC(v7, v57);
          *v87 = v85;
          *(a1 + 132) = v86;
          if (!v85)
          {
            goto LABEL_136;
          }
        }

        else
        {
          v58 = (v7 + 2);
LABEL_91:
          *v87 = v58;
          *(a1 + 132) = v57;
        }

        goto LABEL_110;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_102;
        }

        *(a1 + 16) |= 4u;
        v17 = *(a1 + 88);
        if (!v17)
        {
          v18 = *(a1 + 8);
          v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
          if (v18)
          {
            v19 = *v19;
          }

          v17 = sub_1632110(v19);
          *(a1 + 88) = v17;
          v7 = *v87;
        }

        v20 = sub_222C844(a3, v17, v7);
        goto LABEL_109;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_102;
        }

        v5 |= 0x1000u;
        v25 = (v7 + 1);
        LODWORD(v24) = *v7;
        if ((v24 & 0x80) == 0)
        {
          goto LABEL_35;
        }

        v26 = *v25;
        v24 = v24 + (v26 << 7) - 128;
        if (v26 < 0)
        {
          v71 = sub_19587DC(v7, v24);
          *v87 = v71;
          *(a1 + 136) = v72;
          if (!v71)
          {
            goto LABEL_136;
          }
        }

        else
        {
          v25 = (v7 + 2);
LABEL_35:
          *v87 = v25;
          *(a1 + 136) = v24;
        }

        goto LABEL_110;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_102;
        }

        *(a1 + 16) |= 1u;
        v51 = *(a1 + 8);
        v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
        if (v51)
        {
          v52 = *v52;
        }

        v53 = sub_194DB04((a1 + 72), v52);
        v20 = sub_1958890(v53, *v87, a3);
        goto LABEL_109;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_102;
        }

        v5 |= 0x2000u;
        v15 = (v7 + 1);
        LODWORD(v14) = *v7;
        if ((v14 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v16 = *v15;
        v14 = v14 + (v16 << 7) - 128;
        if (v16 < 0)
        {
          v69 = sub_19587DC(v7, v14);
          *v87 = v69;
          *(a1 + 140) = v70;
          if (!v69)
          {
            goto LABEL_136;
          }
        }

        else
        {
          v15 = (v7 + 2);
LABEL_17:
          *v87 = v15;
          *(a1 + 140) = v14;
        }

        goto LABEL_110;
      case 0x11u:
        if (v8 != 138)
        {
          goto LABEL_102;
        }

        *(a1 + 16) |= 8u;
        v33 = *(a1 + 96);
        if (!v33)
        {
          v34 = *(a1 + 8);
          v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
          if (v34)
          {
            v35 = *v35;
          }

          v33 = sub_16323FC(v35);
          *(a1 + 96) = v33;
          v7 = *v87;
        }

        v20 = sub_222C8D4(a3, v33, v7);
        goto LABEL_109;
      default:
LABEL_102:
        if (v8)
        {
          v66 = (v8 & 7) == 4;
        }

        else
        {
          v66 = 1;
        }

        if (!v66)
        {
          v67 = *(a1 + 8);
          if (v67)
          {
            v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v68 = sub_11F1920((a1 + 8));
            v7 = *v87;
          }

          v20 = sub_1952690(v8, v68, v7, a3);
LABEL_109:
          *v87 = v20;
          if (!v20)
          {
            goto LABEL_136;
          }

LABEL_110:
          if (sub_195ADC0(a3, v87, a3[11].i32[1]))
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
LABEL_136:
          *v87 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v87;
    }
  }
}

char *sub_1628F60(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 104);
    *__dst = 16;
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

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 108);
    *v6 = 24;
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

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 112);
    *v11 = 32;
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

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 116);
    *v15 = 40;
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v15[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[2] = v20 >> 7;
      v19 = v15 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v15[2];
        do
        {
          *(v19 - 1) = v22 | 0x80;
          v22 = v21 >> 7;
          *v19++ = v21 >> 7;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v19 = v15 + 2;
    }
  }

  else
  {
    v19 = v15;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 120);
    *v19 = 48;
    v19[1] = v25;
    if (v25 > 0x7F)
    {
      v19[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v19[2] = v25 >> 7;
      v24 = v19 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v24 - 1) = v19 | 0x80;
          v19 = (v26 >> 7);
          *v24++ = v26 >> 7;
          v27 = v26 >> 14;
          v26 >>= 7;
        }

        while (v27);
      }
    }

    else
    {
      v24 = v19 + 2;
    }
  }

  else
  {
    v24 = v19;
  }

  v28 = *(a1 + 32);
  if (v28)
  {
    for (i = 0; i != v28; ++i)
    {
      if (*a3 <= v24)
      {
        v24 = sub_225EB68(a3, v24);
      }

      v30 = *(*(a1 + 40) + 8 * i + 8);
      *v24 = 58;
      v31 = *(v30 + 20);
      v24[1] = v31;
      if (v31 > 0x7F)
      {
        v32 = sub_19575D0(v31, v24 + 1);
      }

      else
      {
        v32 = v24 + 2;
      }

      v24 = sub_16236E4(v30, v32, a3);
    }
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v34 = *(a1 + 124);
    *v24 = 64;
    v24[1] = v34;
    if (v34 > 0x7F)
    {
      v24[1] = v34 | 0x80;
      v35 = v34 >> 7;
      v24[2] = v34 >> 7;
      v33 = v24 + 3;
      if (v34 >= 0x4000)
      {
        LOBYTE(v24) = v24[2];
        do
        {
          *(v33 - 1) = v24 | 0x80;
          v24 = (v35 >> 7);
          *v33++ = v35 >> 7;
          v36 = v35 >> 14;
          v35 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v33 = v24 + 2;
    }
  }

  else
  {
    v33 = v24;
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v37 = *(a1 + 128);
    *v33 = 72;
    v33[1] = v37;
    v33 += 2;
  }

  v38 = *(a1 + 56);
  if (v38)
  {
    for (j = 0; j != v38; ++j)
    {
      if (*a3 <= v33)
      {
        v33 = sub_225EB68(a3, v33);
      }

      v40 = *(*(a1 + 64) + 8 * j + 8);
      *v33 = 82;
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

      v33 = sub_16272C4(v40, v42, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v43 = *(a1 + 80);
    *v33 = 90;
    v44 = *(v43 + 20);
    v33[1] = v44;
    if (v44 > 0x7F)
    {
      v45 = sub_19575D0(v44, v33 + 1);
    }

    else
    {
      v45 = v33 + 2;
    }

    v33 = sub_1624A14(v43, v45, a3);
  }

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v47 = *(a1 + 132);
    *v33 = 96;
    v33[1] = v47;
    if (v47 > 0x7F)
    {
      v33[1] = v47 | 0x80;
      v48 = v47 >> 7;
      v33[2] = v47 >> 7;
      v46 = v33 + 3;
      if (v47 >= 0x4000)
      {
        LOBYTE(v33) = v33[2];
        do
        {
          *(v46 - 1) = v33 | 0x80;
          v33 = (v48 >> 7);
          *v46++ = v48 >> 7;
          v49 = v48 >> 14;
          v48 >>= 7;
        }

        while (v49);
      }
    }

    else
    {
      v46 = v33 + 2;
    }
  }

  else
  {
    v46 = v33;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v50 = *(a1 + 88);
    *v46 = 106;
    v51 = *(v50 + 20);
    v46[1] = v51;
    if (v51 > 0x7F)
    {
      v52 = sub_19575D0(v51, v46 + 1);
    }

    else
    {
      v52 = v46 + 2;
    }

    v46 = sub_1625C84(v50, v52, a3);
  }

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v54 = *(a1 + 136);
    *v46 = 112;
    v46[1] = v54;
    if (v54 > 0x7F)
    {
      v46[1] = v54 | 0x80;
      v55 = v54 >> 7;
      v46[2] = v54 >> 7;
      v53 = v46 + 3;
      if (v54 >= 0x4000)
      {
        LOBYTE(v46) = v46[2];
        do
        {
          *(v53 - 1) = v46 | 0x80;
          v46 = (v55 >> 7);
          *v53++ = v55 >> 7;
          v56 = v55 >> 14;
          v55 >>= 7;
        }

        while (v56);
      }
    }

    else
    {
      v53 = v46 + 2;
    }
  }

  else
  {
    v53 = v46;
  }

  if (v5)
  {
    v53 = sub_128AEEC(a3, 15, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v53);
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v53)
    {
      v53 = sub_225EB68(a3, v53);
    }

    v58 = *(a1 + 140);
    *v53 = 384;
    v53[2] = v58;
    if (v58 > 0x7F)
    {
      v53[2] = v58 | 0x80;
      v59 = v58 >> 7;
      v53[3] = v58 >> 7;
      v57 = v53 + 4;
      if (v58 >= 0x4000)
      {
        LOBYTE(v60) = v53[3];
        do
        {
          *(v57 - 1) = v60 | 0x80;
          v60 = v59 >> 7;
          *v57++ = v59 >> 7;
          v61 = v59 >> 14;
          v59 >>= 7;
        }

        while (v61);
      }
    }

    else
    {
      v57 = v53 + 3;
    }
  }

  else
  {
    v57 = v53;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v57)
    {
      v57 = sub_225EB68(a3, v57);
    }

    v62 = *(a1 + 96);
    *v57 = 394;
    v63 = *(v62 + 20);
    v57[2] = v63;
    if (v63 > 0x7F)
    {
      v64 = sub_19575D0(v63, v57 + 2);
    }

    else
    {
      v64 = v57 + 3;
    }

    v57 = sub_16280A4(v62, v64, a3);
  }

  v65 = *(a1 + 8);
  if ((v65 & 1) == 0)
  {
    return v57;
  }

  v67 = v65 & 0xFFFFFFFFFFFFFFFCLL;
  v68 = *(v67 + 31);
  if (v68 < 0)
  {
    v69 = *(v67 + 8);
    v68 = *(v67 + 16);
  }

  else
  {
    v69 = (v67 + 8);
  }

  if ((*a3 - v57) >= v68)
  {
    v70 = v68;
    memcpy(v57, v69, v68);
    v57 += v70;
    return v57;
  }

  return sub_1957130(a3, v69, v68, v57);
}

uint64_t sub_1629764(uint64_t a1)
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
      v7 = sub_1623CB4(v6);
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
      v14 = sub_1627508(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    goto LABEL_28;
  }

  if (v15)
  {
    v30 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v31 = *(v30 + 23);
    v32 = *(v30 + 8);
    if ((v31 & 0x80u) == 0)
    {
      v32 = v31;
    }

    v9 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 2) == 0)
    {
LABEL_18:
      if ((v15 & 4) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_52;
    }
  }

  else if ((v15 & 2) == 0)
  {
    goto LABEL_18;
  }

  v33 = sub_1624B90(*(a1 + 80));
  v9 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 4) == 0)
  {
LABEL_19:
    if ((v15 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  v34 = sub_1625EEC(*(a1 + 88));
  v9 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 8) == 0)
  {
LABEL_20:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  v35 = sub_16283E8(*(a1 + 96));
  v9 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 0x10) == 0)
  {
LABEL_21:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_22;
    }

LABEL_58:
    v39 = *(a1 + 108);
    v40 = ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v39 >= 0)
    {
      v41 = v40;
    }

    else
    {
      v41 = 11;
    }

    v9 += v41;
    if ((v15 & 0x40) == 0)
    {
LABEL_23:
      if ((v15 & 0x80) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_54:
  v36 = *(a1 + 104);
  v37 = ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v36 >= 0)
  {
    v38 = v37;
  }

  else
  {
    v38 = 11;
  }

  v9 += v38;
  if ((v15 & 0x20) != 0)
  {
    goto LABEL_58;
  }

LABEL_22:
  if ((v15 & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_62:
  v42 = *(a1 + 112);
  v43 = ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v42 >= 0)
  {
    v44 = v43;
  }

  else
  {
    v44 = 11;
  }

  v9 += v44;
  if ((v15 & 0x80) != 0)
  {
LABEL_24:
    v16 = *(a1 + 116);
    v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v16 >= 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 11;
    }

    v9 += v18;
  }

LABEL_28:
  if ((v15 & 0x3F00) == 0)
  {
    goto LABEL_46;
  }

  if ((v15 & 0x100) != 0)
  {
    v19 = *(a1 + 120);
    v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v19 >= 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 11;
    }

    v9 += v21;
  }

  if ((v15 & 0x200) != 0)
  {
    v22 = *(a1 + 124);
    v23 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v22 >= 0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 11;
    }

    v9 += v24;
  }

  v9 += (v15 >> 9) & 2;
  if ((v15 & 0x800) != 0)
  {
    v45 = *(a1 + 132);
    v46 = ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v45 >= 0)
    {
      v47 = v46;
    }

    else
    {
      v47 = 11;
    }

    v9 += v47;
    if ((v15 & 0x1000) == 0)
    {
LABEL_41:
      if ((v15 & 0x2000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_42;
    }
  }

  else if ((v15 & 0x1000) == 0)
  {
    goto LABEL_41;
  }

  v48 = *(a1 + 136);
  v49 = ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v48 >= 0)
  {
    v50 = v49;
  }

  else
  {
    v50 = 11;
  }

  v9 += v50;
  if ((v15 & 0x2000) != 0)
  {
LABEL_42:
    v25 = *(a1 + 140);
    v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v25 >= 0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 12;
    }

    v9 += v27;
  }

LABEL_46:
  v28 = *(a1 + 8);
  if (v28)
  {
    v51 = v28 & 0xFFFFFFFFFFFFFFFCLL;
    v52 = *((v28 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v52 < 0)
    {
      v52 = *(v51 + 16);
    }

    v9 += v52;
  }

  *(a1 + 20) = v9;
  return v9;
}

void *sub_1629B68(void *a1)
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

void sub_1629BE4(void *a1)
{
  sub_1629B68(a1);

  operator delete();
}

char *sub_1629C1C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v26 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v26, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v26 + 1;
    v8 = *v26;
    if (*v26 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v26, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v26 + 2;
      }
    }

    v26 = v7;
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_32;
    }

    v18 = v7 + 1;
    LODWORD(v17) = *v7;
    if ((v17 & 0x80) == 0)
    {
      goto LABEL_27;
    }

    v19 = *v18;
    v17 = v17 + (v19 << 7) - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_27:
      v26 = v18;
      *(a1 + 40) = v17;
      v5 = 1;
      goto LABEL_40;
    }

    v20 = sub_19587DC(v7, v17);
    v26 = v20;
    *(a1 + 40) = v21;
    v5 = 1;
    if (!v20)
    {
      goto LABEL_45;
    }

LABEL_40:
    if (sub_195ADC0(a3, &v26, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1)
  {
    if (v8 == 8)
    {
      v11 = v7 - 1;
      while (1)
      {
        v26 = v11 + 1;
        v12 = v11[1];
        if (v12 < 0)
        {
          v13 = (v11[2] << 7) + v12;
          LODWORD(v12) = v13 - 128;
          if (v11[2] < 0)
          {
            v11 = sub_19587DC((v11 + 1), (v13 - 128));
            LODWORD(v12) = v14;
          }

          else
          {
            v11 += 3;
          }
        }

        else
        {
          v11 += 2;
        }

        v26 = v11;
        v15 = *(a1 + 24);
        if (v15 == *(a1 + 28))
        {
          v16 = v15 + 1;
          sub_1958E5C((a1 + 24), v15 + 1);
          *(*(a1 + 32) + 4 * v15) = v12;
          v11 = v26;
        }

        else
        {
          *(*(a1 + 32) + 4 * v15) = v12;
          v16 = v15 + 1;
        }

        *(a1 + 24) = v16;
        if (!v11)
        {
          goto LABEL_45;
        }

        if (*a3 <= v11 || *v11 != 8)
        {
          goto LABEL_40;
        }
      }
    }

    if (v8 == 10)
    {
      v22 = sub_1958908((a1 + 24), v7, a3);
      goto LABEL_39;
    }
  }

LABEL_32:
  if (v8)
  {
    v23 = (v8 & 7) == 4;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v24 = *(a1 + 8);
    if (v24)
    {
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v25 = sub_11F1920((a1 + 8));
      v7 = v26;
    }

    v22 = sub_1952690(v8, v25, v7, a3);
LABEL_39:
    v26 = v22;
    if (!v22)
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_45:
  v26 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v26;
}

char *sub_1629E88(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 24);
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

      v7 = *(*(a1 + 32) + 4 * i);
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

  if (*(a1 + 16))
  {
    if (*a3 <= v8)
    {
      v8 = sub_225EB68(a3, v8);
    }

    v13 = *(a1 + 40);
    *v8 = 16;
    v8[1] = v13;
    if (v13 > 0x7F)
    {
      v8[1] = v13 | 0x80;
      v14 = v13 >> 7;
      v8[2] = v13 >> 7;
      v12 = v8 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v8) = v8[2];
        do
        {
          *(v12 - 1) = v8 | 0x80;
          v8 = (v14 >> 7);
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v12 = v8 + 2;
    }
  }

  else
  {
    v12 = v8;
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v12;
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

  if (*a3 - v12 >= v19)
  {
    v21 = v19;
    memcpy(v12, v20, v19);
    v12 += v21;
    return v12;
  }

  return sub_1957130(a3, v20, v19, v12);
}

uint64_t sub_162A064(uint64_t a1)
{
  result = sub_1959E04((a1 + 24)) + *(a1 + 24);
  if (*(a1 + 16))
  {
    v3 = *(a1 + 40);
    if (v3 < 0)
    {
      v4 = 11;
    }

    else
    {
      v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v4;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v7 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v7 < 0)
    {
      v7 = *(v6 + 16);
    }

    result += v7;
  }

  *(a1 + 20) = result;
  return result;
}

void *sub_162A10C(void *a1)
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

void sub_162A180(void *a1)
{
  sub_162A10C(a1);

  operator delete();
}

uint64_t sub_162A1B8(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0x100000000;
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

char *sub_162A1E0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v36 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v36, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v36 + 1;
    v8 = *v36;
    if (*v36 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v36, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v36 + 2;
      }
    }

    v36 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_35;
      }

      v5 |= 2u;
      v23 = v7 + 1;
      LODWORD(v22) = *v7;
      if ((v22 & 0x80) == 0)
      {
        goto LABEL_34;
      }

      v24 = *v23;
      v22 = v22 + (v24 << 7) - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_34:
        v36 = v23;
        *(a1 + 28) = v22;
        goto LABEL_42;
      }

      v34 = sub_19587DC(v7, v22);
      v36 = v34;
      *(a1 + 28) = v35;
      if (!v34)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_35;
      }

      v5 |= 4u;
      v17 = v7 + 1;
      LODWORD(v16) = *v7;
      if ((v16 & 0x80) == 0)
      {
        goto LABEL_24;
      }

      v18 = *v17;
      v16 = v16 + (v18 << 7) - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = v7 + 2;
LABEL_24:
        v36 = v17;
        *(a1 + 32) = v16;
        goto LABEL_42;
      }

      v28 = sub_19587DC(v7, v16);
      v36 = v28;
      *(a1 + 32) = v29;
      if (!v28)
      {
        goto LABEL_55;
      }
    }

LABEL_42:
    if (sub_195ADC0(a3, &v36, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_35;
    }

    v5 |= 1u;
    v20 = v7 + 1;
    LODWORD(v19) = *v7;
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    v21 = *v20;
    v19 = v19 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_29:
      v36 = v20;
      *(a1 + 24) = v19;
      goto LABEL_42;
    }

    v32 = sub_19587DC(v7, v19);
    v36 = v32;
    *(a1 + 24) = v33;
    if (!v32)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
  }

  if (v11 == 2 && v8 == 16)
  {
    v5 |= 8u;
    v14 = v7 + 1;
    LODWORD(v13) = *v7;
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v14;
    v13 = v13 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_17:
      v36 = v14;
      *(a1 + 36) = v13;
      goto LABEL_42;
    }

    v30 = sub_19587DC(v7, v13);
    v36 = v30;
    *(a1 + 36) = v31;
    if (!v30)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
  }

LABEL_35:
  if (v8)
  {
    v25 = (v8 & 7) == 4;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    v26 = *(a1 + 8);
    if (v26)
    {
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v27 = sub_11F1920((a1 + 8));
      v7 = v36;
    }

    v36 = sub_1952690(v8, v27, v7, a3);
    if (!v36)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_55:
  v36 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v36;
}

char *sub_162A484(uint64_t a1, char *__dst, _DWORD *a3)
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 36);
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 28);
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 32);
    *v15 = 32;
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v15[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[2] = v20 >> 7;
      v19 = v15 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v15[2];
        do
        {
          *(v19 - 1) = v22 | 0x80;
          v22 = v21 >> 7;
          *v19++ = v21 >> 7;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v19 = v15 + 2;
    }
  }

  else
  {
    v19 = v15;
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v19;
  }

  v26 = v24 & 0xFFFFFFFFFFFFFFFCLL;
  v27 = *(v26 + 31);
  if (v27 < 0)
  {
    v28 = *(v26 + 8);
    v27 = *(v26 + 16);
  }

  else
  {
    v28 = (v26 + 8);
  }

  if (*a3 - v19 >= v27)
  {
    v29 = v27;
    memcpy(v19, v28, v27);
    v19 += v29;
    return v19;
  }

  return sub_1957130(a3, v28, v27, v19);
}

uint64_t sub_162A740(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_25;
  }

  if (v1)
  {
    v3 = *(a1 + 24);
    if (v3 < 0)
    {
      v2 = 11;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v4 = *(a1 + 28);
  if (v4 < 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v5;
LABEL_14:
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v6 = *(a1 + 32);
  if (v6 < 0)
  {
    v7 = 11;
  }

  else
  {
    v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v7;
  if ((v1 & 8) != 0)
  {
LABEL_21:
    v8 = *(a1 + 36);
    if (v8 < 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v9;
  }

LABEL_25:
  v10 = *(a1 + 8);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v2 += v13;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_162A880(uint64_t a1)
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

void sub_162A920(uint64_t a1)
{
  sub_162A880(a1);

  operator delete();
}

uint64_t sub_162A958(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  if ((v1 & 0xFE) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 46) = 0;
  }

  v4 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v4)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_162A9AC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v44 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v44, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v44 + 1);
    v8 = **v44;
    if (**v44 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v44, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v44 + 2);
      }
    }

    *v44 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      break;
    }

    if (v8 >> 3 > 9)
    {
      if (v11 == 10)
      {
        if (v8 != 80)
        {
          goto LABEL_52;
        }

        v5 |= 0x40u;
        v31 = v7 + 1;
        v30 = *v7;
        if ((v30 & 0x8000000000000000) == 0)
        {
          goto LABEL_51;
        }

        v32 = *v31;
        v30 = (v32 << 7) + v30 - 128;
        if ((v32 & 0x80000000) == 0)
        {
          v31 = v7 + 2;
LABEL_51:
          *v44 = v31;
          *(a1 + 52) = v30 != 0;
          goto LABEL_60;
        }

        v38 = sub_19587DC(v7, v30);
        *v44 = v38;
        *(a1 + 52) = v39 != 0;
        if (!v38)
        {
          goto LABEL_73;
        }
      }

      else
      {
        if (v11 != 11 || v8 != 88)
        {
          goto LABEL_52;
        }

        v5 |= 0x80u;
        v20 = v7 + 1;
        v19 = *v7;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_34;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = v7 + 2;
LABEL_34:
          *v44 = v20;
          *(a1 + 53) = v19 != 0;
          goto LABEL_60;
        }

        v42 = sub_19587DC(v7, v19);
        *v44 = v42;
        *(a1 + 53) = v43 != 0;
        if (!v42)
        {
          goto LABEL_73;
        }
      }
    }

    else if (v11 == 6)
    {
      if (v8 != 48)
      {
        goto LABEL_52;
      }

      v5 |= 0x10u;
      v27 = v7 + 1;
      LODWORD(v26) = *v7;
      if ((v26 & 0x80) == 0)
      {
        goto LABEL_43;
      }

      v28 = *v27;
      v26 = v26 + (v28 << 7) - 128;
      if ((v28 & 0x80000000) == 0)
      {
        v27 = v7 + 2;
LABEL_43:
        *v44 = v27;
        *(a1 + 44) = v26;
        goto LABEL_60;
      }

      v36 = sub_19587DC(v7, v26);
      *v44 = v36;
      *(a1 + 44) = v37;
      if (!v36)
      {
        goto LABEL_73;
      }
    }

    else
    {
      if (v11 != 7 || v8 != 56)
      {
        goto LABEL_52;
      }

      v5 |= 0x20u;
      v16 = v7 + 1;
      LODWORD(v15) = *v7;
      if ((v15 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      v17 = *v16;
      v15 = v15 + (v17 << 7) - 128;
      if ((v17 & 0x80000000) == 0)
      {
        v16 = v7 + 2;
LABEL_23:
        *v44 = v16;
        *(a1 + 48) = v15;
        goto LABEL_60;
      }

      v40 = sub_19587DC(v7, v15);
      *v44 = v40;
      *(a1 + 48) = v41;
      if (!v40)
      {
        goto LABEL_73;
      }
    }

LABEL_60:
    if (sub_195ADC0(a3, v44, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 2)
  {
    if (v11 == 3)
    {
      if (v8 == 29)
      {
        v29 = *v7;
        v13 = v7 + 1;
        v5 |= 4u;
        *(a1 + 36) = v29;
        goto LABEL_46;
      }
    }

    else if (v11 == 4 && v8 == 37)
    {
      v18 = *v7;
      v13 = v7 + 1;
      v5 |= 8u;
      *(a1 + 40) = v18;
      goto LABEL_46;
    }
  }

  else if (v11 == 1)
  {
    if (v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v24 = sub_194DB04((a1 + 24), v23);
      v25 = sub_1958890(v24, *v44, a3);
LABEL_59:
      *v44 = v25;
      if (!v25)
      {
        goto LABEL_73;
      }

      goto LABEL_60;
    }
  }

  else if (v11 == 2 && v8 == 21)
  {
    v14 = *v7;
    v13 = v7 + 1;
    v5 |= 2u;
    *(a1 + 32) = v14;
LABEL_46:
    *v44 = v13;
    goto LABEL_60;
  }

LABEL_52:
  if (v8)
  {
    v33 = (v8 & 7) == 4;
  }

  else
  {
    v33 = 1;
  }

  if (!v33)
  {
    v34 = *(a1 + 8);
    if (v34)
    {
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v35 = sub_11F1920((a1 + 8));
      v7 = *v44;
    }

    v25 = sub_1952690(v8, v35, v7, a3);
    goto LABEL_59;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_73:
  *v44 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v44;
}

char *sub_162AD44(uint64_t a1, char *__dst, void *a3)
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

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 32);
  *v4 = 21;
  *(v4 + 1) = v8;
  v4 += 5;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 40);
    *v4 = 37;
    *(v4 + 1) = v10;
    v4 += 5;
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 36);
  *v4 = 29;
  *(v4 + 1) = v9;
  v4 += 5;
  if ((v6 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    v7 = v4;
    goto LABEL_24;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 44);
  *v4 = 48;
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v4[1] = v11 | 0x80;
    v12 = v11 >> 7;
    v4[2] = v11 >> 7;
    v7 = v4 + 3;
    if (v11 >= 0x4000)
    {
      LOBYTE(v13) = v4[2];
      do
      {
        *(v7 - 1) = v13 | 0x80;
        v13 = v12 >> 7;
        *v7++ = v12 >> 7;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_24:
  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v16 = *(a1 + 48);
    *v7 = 56;
    v7[1] = v16;
    if (v16 > 0x7F)
    {
      v7[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v7[2] = v16 >> 7;
      v15 = v7 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v18) = v7[2];
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
      v15 = v7 + 2;
    }
  }

  else
  {
    v15 = v7;
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 52);
    *v15 = 80;
    v15[1] = v20;
    v15 += 2;
  }

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v21 = *(a1 + 53);
    *v15 = 88;
    v15[1] = v21;
    v15 += 2;
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v15;
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

  if (*a3 - v15 >= v25)
  {
    v27 = v25;
    memcpy(v15, v26, v25);
    v15 += v27;
    return v15;
  }

  return sub_1957130(a3, v26, v25, v15);
}

uint64_t sub_162B03C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
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
      v7 = *(a1 + 44);
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v7 >= 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 11;
      }

      v2 += v9;
    }

    if ((v1 & 0x20) != 0)
    {
      v10 = *(a1 + 48);
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v10 >= 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 11;
      }

      v2 += v12;
    }

    v3 = v2 + ((v1 >> 6) & 2) + ((v1 >> 5) & 2);
  }

  else
  {
    v3 = 0;
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v3 += v16;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_162B16C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
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

    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
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
    HIDWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
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
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_23;
    }

LABEL_22:
    HIDWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }

LABEL_23:
    LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
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
      v3[2].__r_.__value_.__s.__data_[5] = *(a2 + 53);
      goto LABEL_11;
    }

LABEL_24:
    v3[2].__r_.__value_.__s.__data_[4] = *(a2 + 52);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_162B2A4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1638914(a1 + 11);
  sub_1638890(a1 + 8);
  sub_1956AFC(a1 + 5);
  sub_163880C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_162B344(void *a1)
{
  sub_162B2A4(a1);

  operator delete();
}

uint64_t sub_162B37C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v41 = a2;
  if ((sub_195ADC0(a3, v41, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = (*v41 + 1);
      v7 = **v41;
      if (**v41 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          v6 = sub_1958824(*v41, v8 - 128);
          v7 = v9;
        }

        else
        {
          v6 = (*v41 + 2);
        }
      }

      *v41 = v6;
      v10 = v7 >> 3;
      if (v7 >> 3 > 4)
      {
        if (v10 == 5)
        {
          if (v7 == 42)
          {
            v32 = v6 - 1;
            while (1)
            {
              v33 = v32 + 1;
              *v41 = v32 + 1;
              v34 = *(a1 + 80);
              if (v34 && (v35 = *(a1 + 72), v35 < *v34))
              {
                *(a1 + 72) = v35 + 1;
                v36 = *&v34[2 * v35 + 2];
              }

              else
              {
                v37 = sub_1632B08(*(a1 + 64));
                v36 = sub_19593CC(a1 + 64, v37);
                v33 = *v41;
              }

              v32 = sub_222C9F4(a3, v36, v33);
              *v41 = v32;
              if (!v32)
              {
                goto LABEL_69;
              }

              if (*a3 <= v32 || *v32 != 42)
              {
                goto LABEL_64;
              }
            }
          }
        }

        else if (v10 == 6 && v7 == 50)
        {
          v20 = v6 - 1;
          while (1)
          {
            v21 = v20 + 1;
            *v41 = v20 + 1;
            v22 = *(a1 + 104);
            if (v22 && (v23 = *(a1 + 96), v23 < *v22))
            {
              *(a1 + 96) = v23 + 1;
              v24 = *&v22[2 * v23 + 2];
            }

            else
            {
              v25 = sub_1632674(*(a1 + 88));
              v24 = sub_19593CC(a1 + 88, v25);
              v21 = *v41;
            }

            v20 = sub_222CA84(a3, v24, v21);
            *v41 = v20;
            if (!v20)
            {
              goto LABEL_69;
            }

            if (*a3 <= v20 || *v20 != 50)
            {
              goto LABEL_64;
            }
          }
        }
      }

      else if (v10 == 1)
      {
        if (v7 == 10)
        {
          v26 = v6 - 1;
          while (1)
          {
            v27 = (v26 + 1);
            *v41 = v26 + 1;
            v28 = *(a1 + 32);
            if (v28 && (v29 = *(a1 + 24), v29 < *v28))
            {
              *(a1 + 24) = v29 + 1;
              v30 = *&v28[2 * v29 + 2];
            }

            else
            {
              v31 = sub_16325F4(*(a1 + 16));
              v30 = sub_19593CC(a1 + 16, v31);
              v27 = *v41;
            }

            v26 = sub_222C964(a3, v30, v27);
            *v41 = v26;
            if (!v26)
            {
              goto LABEL_69;
            }

            if (*a3 <= v26 || *v26 != 10)
            {
              goto LABEL_64;
            }
          }
        }
      }

      else if (v10 == 3 && v7 == 26)
      {
        v12 = v6 - 1;
        while (1)
        {
          v13 = (v12 + 1);
          *v41 = v12 + 1;
          v14 = *(a1 + 56);
          if (v14 && (v15 = *(a1 + 48), v15 < *v14))
          {
            *(a1 + 48) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = *(a1 + 40);
            if (!v17)
            {
              operator new();
            }

            *v19 = v18;
            v19[1] = sub_195A650;
            *v18 = 0;
            v18[1] = 0;
            v18[2] = 0;
            v16 = sub_19593CC(a1 + 40, v18);
            v13 = *v41;
          }

          v12 = sub_1958890(v16, v13, a3);
          *v41 = v12;
          if (!v12)
          {
            goto LABEL_69;
          }

          if (*a3 <= v12 || *v12 != 26)
          {
            goto LABEL_64;
          }
        }
      }

      if (!v7 || (v7 & 7) == 4)
      {
        break;
      }

      v39 = *(a1 + 8);
      if (v39)
      {
        v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v40 = sub_11F1920((a1 + 8));
        v6 = *v41;
      }

      *v41 = sub_1952690(v7, v40, v6, a3);
      if (!*v41)
      {
        goto LABEL_69;
      }

LABEL_64:
      if (sub_195ADC0(a3, v41, a3[11].i32[1]))
      {
        return *v41;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return *v41;
    }

LABEL_69:
    *v41 = 0;
  }

  return *v41;
}

char *sub_162B738(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_162A484(v8, v10, a3);
    }
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
        __dst = sub_1957480(a3, 3, v13, __dst);
      }

      else
      {
        *__dst = 26;
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
  if (v16)
  {
    for (j = 0; j != v16; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v18 = *(*(a1 + 80) + 8 * j + 8);
      *__dst = 42;
      v19 = *(v18 + 20);
      __dst[1] = v19;
      if (v19 > 0x7F)
      {
        v20 = sub_19575D0(v19, __dst + 1);
      }

      else
      {
        v20 = __dst + 2;
      }

      __dst = sub_163054C(v18, v20, a3);
    }
  }

  v21 = *(a1 + 96);
  if (v21)
  {
    for (k = 0; k != v21; ++k)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v23 = *(*(a1 + 104) + 8 * k + 8);
      *__dst = 50;
      v24 = *(v23 + 20);
      __dst[1] = v24;
      if (v24 > 0x7F)
      {
        v25 = sub_19575D0(v24, __dst + 1);
      }

      else
      {
        v25 = __dst + 2;
      }

      __dst = sub_162AD44(v23, v25, a3);
    }
  }

  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return __dst;
  }

  v28 = v26 & 0xFFFFFFFFFFFFFFFCLL;
  v29 = *(v28 + 31);
  if (v29 < 0)
  {
    v30 = *(v28 + 8);
    v29 = *(v28 + 16);
  }

  else
  {
    v30 = (v28 + 8);
  }

  if (*a3 - __dst >= v29)
  {
    v31 = v29;
    memcpy(__dst, v30, v29);
    __dst += v31;
    return __dst;
  }

  return sub_1957130(a3, v30, v29, __dst);
}

uint64_t sub_162BA18(uint64_t a1)
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
      v7 = sub_162A740(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 48);
  v9 = v2 + v8;
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
  v16 = *(a1 + 80);
  if (v16)
  {
    v17 = (v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  if (v14)
  {
    v18 = 8 * v14;
    do
    {
      v19 = *v17++;
      v20 = sub_1630698(v19);
      v15 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      v18 -= 8;
    }

    while (v18);
  }

  v21 = *(a1 + 96);
  v22 = v15 + v21;
  v23 = *(a1 + 104);
  if (v23)
  {
    v24 = (v23 + 8);
  }

  else
  {
    v24 = 0;
  }

  if (v21)
  {
    v25 = 8 * v21;
    do
    {
      v26 = *v24++;
      v27 = sub_162B03C(v26);
      v22 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6);
      v25 -= 8;
    }

    while (v25);
  }

  v28 = *(a1 + 8);
  if (v28)
  {
    v30 = v28 & 0xFFFFFFFFFFFFFFFCLL;
    v31 = *((v28 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v31 < 0)
    {
      v31 = *(v30 + 16);
    }

    v22 += v31;
  }

  *(a1 + 112) = v22;
  return v22;
}

uint64_t sub_162BBD0(uint64_t a1)
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

  if (a1 != &off_277B2A0)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_16218CC(v6);
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

void sub_162BC9C(uint64_t a1)
{
  sub_162BBD0(a1);

  operator delete();
}

uint64_t sub_162BCD4(uint64_t result)
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
      result = sub_1621AC4(*(result + 32));
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

uint64_t sub_162BD68(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

          v15 = sub_1631D4C(v17);
          *(a1 + 32) = v15;
          v6 = *v22;
        }

        v14 = sub_222BFCC(a3, v15, v6);
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

char *sub_162BF04(uint64_t a1, char *__dst, unint64_t *a3)
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

    v4 = sub_162212C(v7, v9, a3);
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

  if ((*a3 - v4) >= v13)
  {
    v15 = v13;
    memcpy(v4, v14, v13);
    v4 += v15;
    return v4;
  }

  return sub_1957130(a3, v14, v13, v4);
}

uint64_t sub_162C030(uint64_t a1)
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
    v7 = sub_1622648(*(a1 + 32));
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

std::string *sub_162C10C(std::string *result, uint64_t a2)
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

        v8 = sub_1631D4C(v10);
        v3[1].__r_.__value_.__l.__size_ = v8;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = &off_277AED8;
      }

      result = sub_1622908(v8, v11);
    }
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_162C210(uint64_t a1)
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
  if (a1 != &off_277B2C8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_16218CC(v6);
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

void sub_162C2C8(uint64_t a1)
{
  sub_162C210(a1);

  operator delete();
}

uint64_t sub_162C300(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_1621AC4(*(result + 24));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_162C35C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v18 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v18, i) & 1) == 0; i = a3[11].i32[1])
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
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_1631D4C(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_222BFCC(a3, v14, v6);
    }

    else
    {
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
          return v18;
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
        v6 = v18;
      }

      v13 = sub_1952690(v7, v12, v6, a3);
    }

    v18 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v18;
}

char *sub_162C4A0(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *v4 = 10;
    v7 = *(v6 + 20);
    v4[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, v4 + 1);
    }

    else
    {
      v8 = v4 + 2;
    }

    v4 = sub_162212C(v6, v8, a3);
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

  if ((*a3 - v4) >= v12)
  {
    v14 = v12;
    memcpy(v4, v13, v12);
    v4 += v14;
    return v4;
  }

  return sub_1957130(a3, v13, v12, v4);
}

uint64_t sub_162C5AC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_1622648(*(a1 + 24));
    result = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    result = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    result += v6;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_162C62C(std::string *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 16))
  {
    v4 = *(a2 + 24);
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

      data = sub_1631D4C(v7);
      v3[1].__r_.__value_.__r.__words[0] = data;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_277AED8;
    }

    result = sub_1622908(data, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_162C6EC(uint64_t a1)
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

  if (a1 != &off_277B2E8)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_16218CC(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_162BBD0(v6);
      operator delete();
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      sub_162C210(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_162C7E4(uint64_t a1)
{
  sub_162C6EC(a1);

  operator delete();
}

uint64_t sub_162C81C(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 7) != 0)
  {
    if (v3)
    {
      result = sub_1621AC4(*(a1 + 48));
      if ((v3 & 2) == 0)
      {
LABEL_4:
        if ((v3 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = sub_162BCD4(*(a1 + 56));
    if ((v3 & 4) != 0)
    {
LABEL_5:
      result = sub_162C300(*(a1 + 64));
    }
  }

LABEL_6:
  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_162C8AC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v33 = a2;
  if (sub_195ADC0(a3, v33, a3[11].i32[1]))
  {
    return *v33;
  }

  while (1)
  {
    v6 = (*v33 + 1);
    v7 = **v33;
    if (**v33 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v33, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v33 + 2);
      }
    }

    *v33 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 != 26)
        {
          goto LABEL_45;
        }

        *(a1 + 16) |= 2u;
        v27 = *(a1 + 56);
        if (!v27)
        {
          v28 = *(a1 + 8);
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          v27 = sub_16327B0(v29);
          *(a1 + 56) = v27;
          v6 = *v33;
        }

        v15 = sub_222CB14(a3, v27, v6);
      }

      else
      {
        if (v10 != 5 || v7 != 42)
        {
          goto LABEL_45;
        }

        *(a1 + 16) |= 4u;
        v16 = *(a1 + 64);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_1632834(v18);
          *(a1 + 64) = v16;
          v6 = *v33;
        }

        v15 = sub_222CBA4(a3, v16, v6);
      }

      goto LABEL_52;
    }

    if (v10 == 1)
    {
      break;
    }

    if (v10 != 2 || v7 != 18)
    {
      goto LABEL_45;
    }

    *(a1 + 16) |= 1u;
    v12 = *(a1 + 48);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v12 = sub_1631D4C(v14);
      *(a1 + 48) = v12;
      v6 = *v33;
    }

    v15 = sub_222BFCC(a3, v12, v6);
LABEL_52:
    *v33 = v15;
    if (!v15)
    {
      goto LABEL_58;
    }

LABEL_53:
    if (sub_195ADC0(a3, v33, a3[11].i32[1]))
    {
      return *v33;
    }
  }

  if (v7 == 10)
  {
    v19 = (v6 - 1);
    while (1)
    {
      v20 = (v19 + 1);
      *v33 = v19 + 1;
      v21 = *(a1 + 40);
      if (v21 && (v22 = *(a1 + 32), v22 < *v21))
      {
        *(a1 + 32) = v22 + 1;
        v23 = *&v21[2 * v22 + 2];
      }

      else
      {
        v24 = *(a1 + 24);
        if (!v24)
        {
          operator new();
        }

        *v26 = v25;
        v26[1] = sub_195A650;
        *v25 = 0;
        v25[1] = 0;
        v25[2] = 0;
        v23 = sub_19593CC(a1 + 24, v25);
        v20 = *v33;
      }

      v19 = sub_1958890(v23, v20, a3);
      *v33 = v19;
      if (!v19)
      {
        goto LABEL_58;
      }

      if (*a3 <= v19 || *v19 != 10)
      {
        goto LABEL_53;
      }
    }
  }

LABEL_45:
  if (v7)
  {
    v30 = (v7 & 7) == 4;
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
      v6 = *v33;
    }

    v15 = sub_1952690(v7, v32, v6, a3);
    goto LABEL_52;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v33;
  }

LABEL_58:
  *v33 = 0;
  return *v33;
}

char *sub_162CBB4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 40) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || (*a3 - __dst + 14) < v9)
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

  v11 = *(a1 + 16);
  if (v11)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v12 = *(a1 + 48);
    *__dst = 18;
    v13 = *(v12 + 20);
    __dst[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, __dst + 1);
    }

    else
    {
      v14 = __dst + 2;
    }

    __dst = sub_162212C(v12, v14, a3);
    if ((v11 & 2) == 0)
    {
LABEL_14:
      if ((v11 & 4) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_14;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v15 = *(a1 + 56);
  *__dst = 26;
  v16 = *(v15 + 20);
  __dst[1] = v16;
  if (v16 > 0x7F)
  {
    v17 = sub_19575D0(v16, __dst + 1);
  }

  else
  {
    v17 = __dst + 2;
  }

  __dst = sub_162BF04(v15, v17, a3);
  if ((v11 & 4) != 0)
  {
LABEL_28:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v18 = *(a1 + 64);
    *__dst = 42;
    v19 = *(v18 + 20);
    __dst[1] = v19;
    if (v19 > 0x7F)
    {
      v20 = sub_19575D0(v19, __dst + 1);
    }

    else
    {
      v20 = __dst + 2;
    }

    __dst = sub_162C4A0(v18, v20, a3);
  }

LABEL_34:
  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return __dst;
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

  if ((*a3 - __dst) >= v24)
  {
    v26 = v24;
    memcpy(__dst, v25, v24);
    __dst += v26;
    return __dst;
  }

  return sub_1957130(a3, v25, v24, __dst);
}

uint64_t sub_162CE44(uint64_t a1)
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
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      v12 = sub_1622648(*(a1 + 48));
      v4 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_11:
        if ((v8 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

    v13 = sub_162C030(*(a1 + 56));
    v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) != 0)
    {
LABEL_12:
      v9 = sub_162C5AC(*(a1 + 64));
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_13:
  v10 = *(a1 + 8);
  if (v10)
  {
    v14 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v4 += v15;
  }

  *(a1 + 20) = v4;
  return v4;
}

std::string *sub_162CFA0(std::string *result, uint64_t a2)
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
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      data = v3[2].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v12 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v12 = *v12;
        }

        data = sub_1631D4C(v12);
        v3[2].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_277AED8;
      }

      result = sub_1622908(data, v13);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_25;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v14 = v3[2].__r_.__value_.__l.__size_;
    if (!v14)
    {
      v15 = v3->__r_.__value_.__l.__size_;
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_16327B0(v16);
      v3[2].__r_.__value_.__l.__size_ = v14;
    }

    if (*(a2 + 56))
    {
      v17 = *(a2 + 56);
    }

    else
    {
      v17 = &off_277B2A0;
    }

    result = sub_162C10C(v14, v17);
    if ((v9 & 4) != 0)
    {
LABEL_25:
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
      v18 = v3[2].__r_.__value_.__r.__words[2];
      if (!v18)
      {
        v19 = v3->__r_.__value_.__l.__size_;
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v18 = sub_1632834(v20);
        v3[2].__r_.__value_.__r.__words[2] = v18;
      }

      if (*(a2 + 64))
      {
        v21 = *(a2 + 64);
      }

      else
      {
        v21 = &off_277B2C8;
      }

      result = sub_162C62C(v18, v21);
    }
  }

LABEL_33:
  v22 = *(a2 + 8);
  if (v22)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v22 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_162D170(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
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

  sub_162D20C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_12E6204((a1 + 48));
  sub_1638998((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_162D20C(uint64_t (***result)()))()
{
  if (result != &off_277B330)
  {
    v1 = result;
    v2 = result[9];
    if (v2)
    {
      sub_1629B68(v2);
      operator delete();
    }

    v3 = v1[10];
    if (v3)
    {
      sub_162B2A4(v3);
      operator delete();
    }

    v4 = v1[11];
    if (v4)
    {
      sub_162EA80(v4);
      operator delete();
    }

    result = v1[12];
    if (result)
    {
      sub_162B2A4(result);

      operator delete();
    }
  }

  return result;
}

void sub_162D2D0(uint64_t a1)
{
  sub_162D170(a1);

  operator delete();
}

uint64_t sub_162D308(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_162C81C(v4);
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
      result = sub_16E4E44(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if ((v8 & 0xF) != 0)
  {
    if (v8)
    {
      v9 = *(v1 + 72);
      v10 = *(v9 + 8);
      result = v9 + 8;
      *(result + 16) = 0;
      *(result + 32) = 0;
      *(result + 8) = 0;
      if (v10)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v8 & 2) != 0)
    {
      result = sub_1622EEC(*(v1 + 80));
      if ((v8 & 4) == 0)
      {
LABEL_15:
        if ((v8 & 8) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else if ((v8 & 4) == 0)
    {
      goto LABEL_15;
    }

    result = sub_162D418(*(v1 + 88));
    if ((v8 & 8) != 0)
    {
LABEL_16:
      result = sub_1622EEC(*(v1 + 96));
    }
  }

LABEL_17:
  if ((v8 & 0x30) != 0)
  {
    *(v1 + 104) = 0;
    *(v1 + 112) = 0;
  }

  v12 = *(v1 + 8);
  v11 = v1 + 8;
  *(v11 + 8) = 0;
  if (v12)
  {

    return sub_1957EA8(v11);
  }

  return result;
}

uint64_t sub_162D418(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0;
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 316) = 0;
    *(a1 + 308) = 0;
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

char *sub_162D474(uint64_t a1, char *a2, int32x2_t *a3)
{
  v44 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v44, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v44 + 1;
    v8 = *v44;
    if (*v44 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v44, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v44 + 2;
      }
    }

    v44 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 18)
        {
          v13 = v7 - 1;
          while (1)
          {
            v14 = (v13 + 1);
            v44 = v13 + 1;
            v15 = *(a1 + 40);
            if (v15 && (v16 = *(a1 + 32), v16 < *v15))
            {
              *(a1 + 32) = v16 + 1;
              v17 = *&v15[2 * v16 + 2];
            }

            else
            {
              v18 = sub_16328AC(*(a1 + 24));
              v17 = sub_19593CC(a1 + 24, v18);
              v14 = v44;
            }

            v13 = sub_222CC34(a3, v17, v14);
            v44 = v13;
            if (!v13)
            {
              goto LABEL_83;
            }

            if (*a3 <= v13 || *v13 != 18)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_70;
      }

      if (v8 != 9)
      {
        goto LABEL_70;
      }

      v28 = *v7;
      v19 = v7 + 8;
      v5 |= 0x10u;
      *(a1 + 104) = v28;
      goto LABEL_46;
    }

    if (v11 == 3)
    {
      if (v8 == 26)
      {
        v31 = v7 - 1;
        while (1)
        {
          v32 = (v31 + 1);
          v44 = v31 + 1;
          v33 = *(a1 + 64);
          if (v33 && (v34 = *(a1 + 56), v34 < *v33))
          {
            *(a1 + 56) = v34 + 1;
            v35 = *&v33[2 * v34 + 2];
          }

          else
          {
            v36 = sub_16F5828(*(a1 + 48));
            v35 = sub_19593CC(a1 + 48, v36);
            v32 = v44;
          }

          v31 = sub_21F4D60(a3, v35, v32);
          v44 = v31;
          if (!v31)
          {
            goto LABEL_83;
          }

          if (*a3 <= v31 || *v31 != 26)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_70;
    }

    if (v11 != 4 || v8 != 34)
    {
      goto LABEL_70;
    }

    *(a1 + 16) |= 1u;
    v21 = *(a1 + 72);
    if (!v21)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_1632558(v23);
      *(a1 + 72) = v21;
      v7 = v44;
    }

    v24 = sub_222C05C(a3, v21, v7);
LABEL_77:
    v44 = v24;
    if (!v24)
    {
      goto LABEL_83;
    }

LABEL_78:
    if (sub_195ADC0(a3, &v44, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 6)
  {
    if (v11 == 5)
    {
      if (v8 == 42)
      {
        *(a1 + 16) |= 2u;
        v25 = *(a1 + 80);
        if (!v25)
        {
          v29 = *(a1 + 8);
          v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v30 = *v30;
          }

          v25 = sub_16326FC(v30);
          *(a1 + 80) = v25;
          goto LABEL_52;
        }

        goto LABEL_53;
      }

      goto LABEL_70;
    }

    if (v11 != 6 || v8 != 49)
    {
      goto LABEL_70;
    }

    v20 = *v7;
    v19 = v7 + 8;
    v5 |= 0x20u;
    *(a1 + 112) = v20;
LABEL_46:
    v44 = v19;
    goto LABEL_78;
  }

  if (v11 == 7)
  {
    if (v8 != 58)
    {
      goto LABEL_70;
    }

    *(a1 + 16) |= 4u;
    v37 = *(a1 + 88);
    if (!v37)
    {
      v38 = *(a1 + 8);
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
      if (v38)
      {
        v39 = *v39;
      }

      sub_1632AA8(v39);
      v37 = v40;
      *(a1 + 88) = v40;
      v7 = v44;
    }

    v24 = sub_222CCC4(a3, v37, v7);
    goto LABEL_77;
  }

  if (v11 == 8 && v8 == 66)
  {
    *(a1 + 16) |= 8u;
    v25 = *(a1 + 96);
    if (!v25)
    {
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_16326FC(v27);
      *(a1 + 96) = v25;
LABEL_52:
      v7 = v44;
    }

LABEL_53:
    v24 = sub_222BF3C(a3, v25, v7);
    goto LABEL_77;
  }

LABEL_70:
  if (v8)
  {
    v41 = (v8 & 7) == 4;
  }

  else
  {
    v41 = 1;
  }

  if (!v41)
  {
    v42 = *(a1 + 8);
    if (v42)
    {
      v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v43 = sub_11F1920((a1 + 8));
      v7 = v44;
    }

    v24 = sub_1952690(v8, v43, v7, a3);
    goto LABEL_77;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_83:
  v44 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v44;
}

char *sub_162D870(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 104);
    *v4 = 9;
    *(v4 + 1) = v7;
    v4 += 9;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v10 = *(*(a1 + 40) + 8 * i + 8);
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

      v4 = sub_162CBB4(v10, v12, a3);
    }
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
      *v4 = 26;
      v16 = *(v15 + 44);
      v4[1] = v16;
      if (v16 > 0x7F)
      {
        v17 = sub_19575D0(v16, v4 + 1);
      }

      else
      {
        v17 = v4 + 2;
      }

      v4 = sub_16E5070(v15, v17, a3);
    }
  }

  if (v6)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v18 = *(a1 + 72);
    *v4 = 34;
    v19 = *(v18 + 20);
    v4[1] = v19;
    if (v19 > 0x7F)
    {
      v20 = sub_19575D0(v19, v4 + 1);
    }

    else
    {
      v20 = v4 + 2;
    }

    v4 = sub_1629E88(v18, v20, a3);
    if ((v6 & 2) == 0)
    {
LABEL_23:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_39;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_23;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v21 = *(a1 + 80);
  *v4 = 42;
  v22 = *(v21 + 112);
  v4[1] = v22;
  if (v22 > 0x7F)
  {
    v23 = sub_19575D0(v22, v4 + 1);
  }

  else
  {
    v23 = v4 + 2;
  }

  v4 = sub_162B738(v21, v23, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_24:
    if ((v6 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_42;
  }

LABEL_39:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v24 = *(a1 + 112);
  *v4 = 49;
  *(v4 + 1) = v24;
  v4 += 9;
  if ((v6 & 4) == 0)
  {
LABEL_25:
    if ((v6 & 8) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }

LABEL_42:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v25 = *(a1 + 88);
  *v4 = 58;
  v26 = *(v25 + 20);
  v4[1] = v26;
  if (v26 > 0x7F)
  {
    v27 = sub_19575D0(v26, v4 + 1);
  }

  else
  {
    v27 = v4 + 2;
  }

  v4 = sub_162F084(v25, v27, a3);
  if ((v6 & 8) != 0)
  {
LABEL_48:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v28 = *(a1 + 96);
    *v4 = 66;
    v29 = *(v28 + 112);
    v4[1] = v29;
    if (v29 > 0x7F)
    {
      v30 = sub_19575D0(v29, v4 + 1);
    }

    else
    {
      v30 = v4 + 2;
    }

    v4 = sub_162B738(v28, v30, a3);
  }

LABEL_54:
  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return v4;
  }

  v33 = v31 & 0xFFFFFFFFFFFFFFFCLL;
  v34 = *(v33 + 31);
  if (v34 < 0)
  {
    v35 = *(v33 + 8);
    v34 = *(v33 + 16);
  }

  else
  {
    v35 = (v33 + 8);
  }

  if ((*a3 - v4) >= v34)
  {
    v36 = v34;
    memcpy(v4, v35, v34);
    v4 += v36;
    return v4;
  }

  return sub_1957130(a3, v35, v34, v4);
}

uint64_t sub_162DC4C(uint64_t a1)
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
      v7 = sub_162CE44(v6);
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
      v14 = sub_16E51F0(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 0x3F) != 0)
  {
    if (v15)
    {
      v20 = sub_162A064(*(a1 + 72));
      v9 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v15 & 2) == 0)
      {
LABEL_18:
        if ((v15 & 4) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_30;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_18;
    }

    v21 = sub_162BA18(*(a1 + 80));
    v9 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 4) == 0)
    {
LABEL_19:
      if ((v15 & 8) == 0)
      {
LABEL_21:
        v17 = v9 + 9;
        if ((v15 & 0x10) == 0)
        {
          v17 = v9;
        }

        if ((v15 & 0x20) != 0)
        {
          v9 = v17 + 9;
        }

        else
        {
          v9 = v17;
        }

        goto LABEL_26;
      }

LABEL_20:
      v16 = sub_162BA18(*(a1 + 96));
      v9 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_21;
    }

LABEL_30:
    v22 = sub_162FE04(*(a1 + 88));
    v9 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_26:
  v18 = *(a1 + 8);
  if (v18)
  {
    v23 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    v9 += v24;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_162DE38(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1639054((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_11F1A54((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if ((v14 & 0x3F) != 0)
  {
    if (v14)
    {
      *(a1 + 16) |= 1u;
      v15 = *(a1 + 72);
      if (!v15)
      {
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v15 = sub_1632558(v17);
        *(a1 + 72) = v15;
      }

      if (*(a2 + 72))
      {
        v18 = *(a2 + 72);
      }

      else
      {
        v18 = &off_277B1F8;
      }

      sub_12EE138(v15, v18);
    }

    if ((v14 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v20 = *(a1 + 80);
      if (!v20)
      {
        v21 = *(a1 + 8);
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        v20 = sub_16326FC(v22);
        *(a1 + 80) = v20;
      }

      if (*(a2 + 80))
      {
        v23 = *(a2 + 80);
      }

      else
      {
        v23 = &off_277B228;
      }

      sub_162419C(v20, v23);
      if ((v14 & 4) == 0)
      {
LABEL_19:
        if ((v14 & 8) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_44;
      }
    }

    else if ((v14 & 4) == 0)
    {
      goto LABEL_19;
    }

    *(a1 + 16) |= 4u;
    v24 = *(a1 + 88);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      sub_1632AA8(v26);
      *(a1 + 88) = v24;
    }

    if (*(a2 + 88))
    {
      v27 = *(a2 + 88);
    }

    else
    {
      v27 = &off_277B3D8;
    }

    sub_162E0BC(v24, v27);
    if ((v14 & 8) == 0)
    {
LABEL_20:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_52;
    }

LABEL_44:
    *(a1 + 16) |= 8u;
    v28 = *(a1 + 96);
    if (!v28)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      v28 = sub_16326FC(v30);
      *(a1 + 96) = v28;
    }

    if (*(a2 + 96))
    {
      v31 = *(a2 + 96);
    }

    else
    {
      v31 = &off_277B228;
    }

    sub_162419C(v28, v31);
    if ((v14 & 0x10) == 0)
    {
LABEL_21:
      if ((v14 & 0x20) == 0)
      {
LABEL_23:
        *(a1 + 16) |= v14;
        goto LABEL_24;
      }

LABEL_22:
      *(a1 + 112) = *(a2 + 112);
      goto LABEL_23;
    }

LABEL_52:
    *(a1 + 104) = *(a2 + 104);
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_24:
  v19 = *(a2 + 8);
  if (v19)
  {

    sub_1957EF4((a1 + 8), (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_162E0BC(std::string *result, uint64_t a2)
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

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = SLODWORD(v3[2].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[2], v9 + v8);
    v10 = v3[2].__r_.__value_.__l.__size_;
    LODWORD(v3[2].__r_.__value_.__l.__data_) += *(a2 + 48);
    result = memcpy((v10 + 4 * v9), *(a2 + 56), 4 * *(a2 + 48));
  }

  v11 = *(a2 + 72);
  if (v11)
  {
    v12 = SLODWORD(v3[3].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[3], v12 + v11);
    v13 = v3[3].__r_.__value_.__l.__size_;
    LODWORD(v3[3].__r_.__value_.__l.__data_) += *(a2 + 72);
    result = memcpy((v13 + 4 * v12), *(a2 + 80), 4 * *(a2 + 72));
  }

  v14 = *(a2 + 96);
  if (v14)
  {
    v15 = SLODWORD(v3[4].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[4], v15 + v14);
    v16 = v3[4].__r_.__value_.__l.__size_;
    LODWORD(v3[4].__r_.__value_.__l.__data_) += *(a2 + 96);
    result = memcpy((v16 + 4 * v15), *(a2 + 104), 4 * *(a2 + 96));
  }

  v17 = *(a2 + 120);
  if (v17)
  {
    v18 = SLODWORD(v3[5].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[5], v18 + v17);
    v19 = v3[5].__r_.__value_.__l.__size_;
    LODWORD(v3[5].__r_.__value_.__l.__data_) += *(a2 + 120);
    result = memcpy((v19 + 4 * v18), *(a2 + 128), 4 * *(a2 + 120));
  }

  v20 = *(a2 + 144);
  if (v20)
  {
    v21 = SLODWORD(v3[6].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[6], v21 + v20);
    v22 = v3[6].__r_.__value_.__l.__size_;
    LODWORD(v3[6].__r_.__value_.__l.__data_) += *(a2 + 144);
    result = memcpy((v22 + 4 * v21), *(a2 + 152), 4 * *(a2 + 144));
  }

  v23 = *(a2 + 168);
  if (v23)
  {
    v24 = SLODWORD(v3[7].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[7], v24 + v23);
    v25 = v3[7].__r_.__value_.__l.__size_;
    LODWORD(v3[7].__r_.__value_.__l.__data_) += *(a2 + 168);
    result = memcpy((v25 + 4 * v24), *(a2 + 176), 4 * *(a2 + 168));
  }

  v26 = *(a2 + 192);
  if (v26)
  {
    v27 = SLODWORD(v3[8].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[8], v27 + v26);
    v28 = v3[8].__r_.__value_.__l.__size_;
    LODWORD(v3[8].__r_.__value_.__l.__data_) += *(a2 + 192);
    result = memcpy((v28 + 4 * v27), *(a2 + 200), 4 * *(a2 + 192));
  }

  v29 = *(a2 + 216);
  if (v29)
  {
    v30 = SLODWORD(v3[9].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[9], v30 + v29);
    v31 = v3[9].__r_.__value_.__l.__size_;
    LODWORD(v3[9].__r_.__value_.__l.__data_) += *(a2 + 216);
    result = memcpy((v31 + 4 * v30), *(a2 + 224), 4 * *(a2 + 216));
  }

  v32 = *(a2 + 240);
  if (v32)
  {
    v33 = SLODWORD(v3[10].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[10], v33 + v32);
    v34 = v3[10].__r_.__value_.__l.__size_;
    LODWORD(v3[10].__r_.__value_.__l.__data_) += *(a2 + 240);
    result = memcpy((v34 + 4 * v33), *(a2 + 248), 4 * *(a2 + 240));
  }

  v35 = *(a2 + 264);
  if (v35)
  {
    v36 = SLODWORD(v3[11].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[11], v36 + v35);
    v37 = v3[11].__r_.__value_.__l.__size_;
    LODWORD(v3[11].__r_.__value_.__l.__data_) += *(a2 + 264);
    result = memcpy((v37 + 4 * v36), *(a2 + 272), 4 * *(a2 + 264));
  }

  v38 = *(a2 + 288);
  if (v38)
  {
    v39 = SLODWORD(v3[12].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[12], v39 + v38);
    v40 = v3[12].__r_.__value_.__l.__size_;
    LODWORD(v3[12].__r_.__value_.__l.__data_) += *(a2 + 288);
    result = memcpy((v40 + 4 * v39), *(a2 + 296), 4 * *(a2 + 288));
  }

  v41 = *(a2 + 16);
  if ((v41 & 7) != 0)
  {
    if (v41)
    {
      HIDWORD(v3[12].__r_.__value_.__r.__words[2]) = *(a2 + 308);
      if ((v41 & 2) == 0)
      {
LABEL_28:
        if ((v41 & 4) == 0)
        {
LABEL_30:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v41;
          goto LABEL_31;
        }

LABEL_29:
        HIDWORD(v3[13].__r_.__value_.__r.__words[0]) = *(a2 + 316);
        goto LABEL_30;
      }
    }

    else if ((v41 & 2) == 0)
    {
      goto LABEL_28;
    }

    LODWORD(v3[13].__r_.__value_.__l.__data_) = *(a2 + 312);
    if ((v41 & 4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_31:
  v42 = *(a2 + 8);
  if (v42)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v42 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_162E48C(uint64_t a1)
{
  v2 = *(a1 + 56);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_16E5370(*(*(a1 + 64) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

void *sub_162E4F4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1638A1C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_162E574(void *a1)
{
  sub_162E4F4(a1);

  operator delete();
}

char *sub_162E5AC(uint64_t a1, char *a2, int32x2_t *a3)
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
            sub_163294C(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_222CD54(a3, v16, v13);
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

char *sub_162E73C(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_162D870(v8, v10, a3);
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

  if ((*a3 - __dst) >= v14)
  {
    v16 = v14;
    memcpy(__dst, v15, v14);
    __dst += v16;
    return __dst;
  }

  return sub_1957130(a3, v15, v14, __dst);
}

uint64_t sub_162E87C(uint64_t a1)
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
      v7 = sub_162DC4C(v6);
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

uint64_t sub_162E924(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v3 = v1--;
      v4 = *(*(a1 + 16) + 8 * v1 + 8);
      v5 = *(v4 + 56);
      while (v5 >= 1)
      {
        v6 = v5 - 1;
        v7 = sub_16E5370(*(*(v4 + 64) + 8 * v5));
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

double sub_162E9C0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26F8F18;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  result = 0.0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
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
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = a2;
  return result;
}

void *sub_162EA80(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 36));
  sub_1956ABC((a1 + 33));
  sub_1956ABC((a1 + 30));
  sub_1956ABC((a1 + 27));
  sub_1956ABC((a1 + 24));
  sub_1956ABC((a1 + 21));
  sub_1956ABC((a1 + 18));
  sub_1956ABC((a1 + 15));
  sub_1956ABC((a1 + 12));
  sub_1956ABC((a1 + 9));
  sub_1956ABC((a1 + 6));
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_162EB54(void *a1)
{
  sub_162EA80(a1);

  operator delete();
}

char *sub_162EB8C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v32 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v32, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v32 + 1;
    v8 = *v32;
    if (*v32 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v32, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v32 + 2;
      }
    }

    v32 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 == 10)
        {
          v11 = (a1 + 24);
          goto LABEL_42;
        }

        if (v8 != 8)
        {
          goto LABEL_83;
        }

        v33 = sub_128A7C8(&v32);
        v28 = (a1 + 24);
        break;
      case 2u:
        if (v8 == 18)
        {
          v11 = (a1 + 48);
          goto LABEL_42;
        }

        if (v8 != 16)
        {
          goto LABEL_83;
        }

        v33 = sub_128A7C8(&v32);
        v28 = (a1 + 48);
        break;
      case 3u:
        if (v8 == 26)
        {
          v11 = (a1 + 72);
          goto LABEL_42;
        }

        if (v8 != 24)
        {
          goto LABEL_83;
        }

        v33 = sub_128A7C8(&v32);
        v28 = (a1 + 72);
        break;
      case 4u:
        if (v8 == 34)
        {
          v11 = (a1 + 96);
          goto LABEL_42;
        }

        if (v8 != 32)
        {
          goto LABEL_83;
        }

        v33 = sub_128A7C8(&v32);
        v28 = (a1 + 96);
        break;
      case 5u:
        if (v8 == 42)
        {
          v11 = (a1 + 120);
          goto LABEL_42;
        }

        if (v8 != 40)
        {
          goto LABEL_83;
        }

        v33 = sub_128A7C8(&v32);
        v28 = (a1 + 120);
        break;
      case 6u:
        if (v8 == 50)
        {
          v11 = (a1 + 144);
          goto LABEL_42;
        }

        if (v8 != 48)
        {
          goto LABEL_83;
        }

        v33 = sub_128A7C8(&v32);
        v28 = (a1 + 144);
        break;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_83;
        }

        v5 |= 1u;
        v15 = v7 + 1;
        v16 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_39;
        }

        v17 = *v15;
        v16 = v16 + (v17 << 7) - 128;
        if (v17 < 0)
        {
          v24 = sub_1958770(v7, v16);
          v32 = v24;
          *(a1 + 308) = v25;
          if (!v24)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v15 = v7 + 2;
LABEL_39:
          v32 = v15;
          *(a1 + 308) = v16;
        }

        goto LABEL_44;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_83;
        }

        v5 |= 2u;
        v12 = v7 + 1;
        v13 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        v14 = *v12;
        v13 = v13 + (v14 << 7) - 128;
        if (v14 < 0)
        {
          v22 = sub_1958770(v7, v13);
          v32 = v22;
          *(a1 + 312) = v23;
          if (!v22)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v12 = v7 + 2;
LABEL_28:
          v32 = v12;
          *(a1 + 312) = v13;
        }

        goto LABEL_44;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_83;
        }

        v5 |= 4u;
        v19 = v7 + 1;
        v20 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_50;
        }

        v21 = *v19;
        v20 = v20 + (v21 << 7) - 128;
        if (v21 < 0)
        {
          v26 = sub_1958770(v7, v20);
          v32 = v26;
          *(a1 + 316) = v27;
          if (!v26)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v19 = v7 + 2;
LABEL_50:
          v32 = v19;
          *(a1 + 316) = v20;
        }

        goto LABEL_44;
      case 0xAu:
        if (v8 == 82)
        {
          v11 = (a1 + 168);
          goto LABEL_42;
        }

        if (v8 != 80)
        {
          goto LABEL_83;
        }

        v33 = sub_128A7C8(&v32);
        v28 = (a1 + 168);
        break;
      case 0xBu:
        if (v8 == 90)
        {
          v11 = (a1 + 192);
          goto LABEL_42;
        }

        if (v8 == 88)
        {
          v33 = sub_128A7C8(&v32);
          v28 = (a1 + 192);
          break;
        }

LABEL_83:
        if (v8)
        {
          v29 = (v8 & 7) == 4;
        }

        else
        {
          v29 = 1;
        }

        if (!v29)
        {
          v30 = *(a1 + 8);
          if (v30)
          {
            v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v31 = sub_11F1920((a1 + 8));
            v7 = v32;
          }

          v18 = sub_1952690(v8, v31, v7, a3);
LABEL_43:
          v32 = v18;
          if (!v18)
          {
            goto LABEL_93;
          }

          goto LABEL_44;
        }

        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
        }

        else
        {
LABEL_93:
          v32 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return v32;
      case 0xCu:
        if (v8 == 98)
        {
          v11 = (a1 + 216);
          goto LABEL_42;
        }

        if (v8 != 96)
        {
          goto LABEL_83;
        }

        v33 = sub_128A7C8(&v32);
        v28 = (a1 + 216);
        break;
      case 0xDu:
        if (v8 == 106)
        {
          v11 = (a1 + 240);
          goto LABEL_42;
        }

        if (v8 != 104)
        {
          goto LABEL_83;
        }

        v33 = sub_128A7C8(&v32);
        v28 = (a1 + 240);
        break;
      case 0xEu:
        if (v8 == 114)
        {
          v11 = (a1 + 264);
          goto LABEL_42;
        }

        if (v8 != 112)
        {
          goto LABEL_83;
        }

        v33 = sub_128A7C8(&v32);
        v28 = (a1 + 264);
        break;
      case 0xFu:
        if (v8 == 122)
        {
          v11 = (a1 + 288);
LABEL_42:
          v18 = sub_1958908(v11, v7, a3);
          goto LABEL_43;
        }

        if (v8 != 120)
        {
          goto LABEL_83;
        }

        v33 = sub_128A7C8(&v32);
        v28 = (a1 + 288);
        break;
      default:
        goto LABEL_83;
    }

    sub_194FE98(v28, &v33);
    if (!v32)
    {
      goto LABEL_93;
    }

LABEL_44:
    if (sub_195ADC0(a3, &v32, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }
}