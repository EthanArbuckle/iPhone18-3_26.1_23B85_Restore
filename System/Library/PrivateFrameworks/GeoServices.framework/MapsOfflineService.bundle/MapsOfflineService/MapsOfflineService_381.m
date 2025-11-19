char *sub_15973B4(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_1596F40(v8, v10, a3);
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

uint64_t sub_15974F4(uint64_t a1)
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
      v7 = sub_1597040(v6);
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

std::string *sub_159759C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_15B6014(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
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

uint64_t sub_1597670(uint64_t a1)
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

void sub_1597710(uint64_t a1)
{
  sub_1597670(a1);

  operator delete();
}

uint64_t sub_1597748(uint64_t a1)
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

uint64_t sub_1597790(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 == 2)
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

  if (v7 == 21)
  {
    v5 |= 2u;
    *(a1 + 32) = *v6;
    *v19 = v6 + 1;
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

char *sub_159791C(uint64_t a1, char *__dst, void *a3)
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
    *v4 = 21;
    *(v4 + 1) = v7;
    v4 += 5;
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

uint64_t sub_1597A1C(uint64_t a1)
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
      v3 = v2 + 5;
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

uint64_t sub_1597ACC(uint64_t a1)
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
  if (a1 != &off_2778198)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      sub_1584338(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_15B51F8((a1 + 48));
  sub_15B4C4C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1597B9C(uint64_t a1)
{
  sub_1597ACC(a1);

  operator delete();
}

uint64_t sub_1597BD4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15838E0(v4);
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
      result = sub_1597748(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_158397C(*(v1 + 72));
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 72) = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

char *sub_1597C90(uint64_t a1, char *a2, int32x2_t *a3)
{
  v37 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v37, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v37 + 1;
    v8 = *v37;
    if (*v37 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v37, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v37 + 2;
      }
    }

    v37 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 == 2 && v8 == 18)
      {
        v13 = v7 - 1;
        while (1)
        {
          v14 = (v13 + 1);
          v37 = v13 + 1;
          v15 = *(a1 + 40);
          if (v15 && (v16 = *(a1 + 32), v16 < *v15))
          {
            *(a1 + 32) = v16 + 1;
            v17 = *&v15[2 * v16 + 2];
          }

          else
          {
            v18 = sub_15AC578(*(a1 + 24));
            v17 = sub_19593CC(a1 + 24, v18);
            v14 = v37;
          }

          v13 = sub_221EF3C(a3, v17, v14);
          v37 = v13;
          if (!v13)
          {
            goto LABEL_61;
          }

          if (*a3 <= v13 || *v13 != 18)
          {
            goto LABEL_54;
          }
        }
      }

      goto LABEL_46;
    }

    if (v8 != 8)
    {
      goto LABEL_46;
    }

    v5 |= 2u;
    v26 = v7 + 1;
    v25 = *v7;
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_39;
    }

    v27 = *v26;
    v25 = (v27 << 7) + v25 - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v26 = v7 + 2;
LABEL_39:
      v37 = v26;
      *(a1 + 80) = v25;
      goto LABEL_54;
    }

    v35 = sub_19587DC(v7, v25);
    v37 = v35;
    *(a1 + 80) = v36;
    if (!v35)
    {
      goto LABEL_61;
    }

LABEL_54:
    if (sub_195ADC0(a3, &v37, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 26)
    {
      goto LABEL_46;
    }

    *(a1 + 16) |= 1u;
    v28 = *(a1 + 72);
    if (!v28)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      v28 = sub_15AC620(v30);
      *(a1 + 72) = v28;
      v7 = v37;
    }

    v31 = sub_221EFCC(a3, v28, v7);
LABEL_53:
    v37 = v31;
    if (!v31)
    {
      goto LABEL_61;
    }

    goto LABEL_54;
  }

  if (v11 == 4 && v8 == 34)
  {
    v19 = v7 - 1;
    while (1)
    {
      v20 = (v19 + 1);
      v37 = v19 + 1;
      v21 = *(a1 + 64);
      if (v21 && (v22 = *(a1 + 56), v22 < *v21))
      {
        *(a1 + 56) = v22 + 1;
        v23 = *&v21[2 * v22 + 2];
      }

      else
      {
        v24 = sub_15AD7F4(*(a1 + 48));
        v23 = sub_19593CC(a1 + 48, v24);
        v20 = v37;
      }

      v19 = sub_221FE6C(a3, v23, v20);
      v37 = v19;
      if (!v19)
      {
        goto LABEL_61;
      }

      if (*a3 <= v19 || *v19 != 34)
      {
        goto LABEL_54;
      }
    }
  }

LABEL_46:
  if (v8)
  {
    v32 = (v8 & 7) == 4;
  }

  else
  {
    v32 = 1;
  }

  if (!v32)
  {
    v33 = *(a1 + 8);
    if (v33)
    {
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v34 = sub_11F1920((a1 + 8));
      v7 = v37;
    }

    v31 = sub_1952690(v8, v34, v7, a3);
    goto LABEL_53;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_61:
  v37 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v37;
}

char *sub_1597F98(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 80);
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

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *v6 = 18;
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

      v6 = sub_1583D38(v13, v15, a3);
    }
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v16 = *(a1 + 72);
    *v6 = 26;
    v17 = *(v16 + 20);
    v6[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v6 + 1);
    }

    else
    {
      v18 = v6 + 2;
    }

    v6 = sub_1584604(v16, v18, a3);
  }

  v19 = *(a1 + 56);
  if (v19)
  {
    for (j = 0; j != v19; ++j)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v21 = *(*(a1 + 64) + 8 * j + 8);
      *v6 = 34;
      v22 = *(v21 + 20);
      v6[1] = v22;
      if (v22 > 0x7F)
      {
        v23 = sub_19575D0(v22, v6 + 1);
      }

      else
      {
        v23 = v6 + 2;
      }

      v6 = sub_159791C(v21, v23, a3);
    }
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v27)
  {
    v29 = v27;
    memcpy(v6, v28, v27);
    v6 += v29;
    return v6;
  }

  return sub_1957130(a3, v28, v27, v6);
}

uint64_t sub_1598244(uint64_t a1)
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
      v7 = sub_1583FA4(v6);
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
      v14 = sub_1597A1C(v13);
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
      v16 = sub_1584784(*(a1 + 72));
      v9 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v15 & 2) != 0)
    {
      v9 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

    v9 += v20;
  }

  *(a1 + 20) = v9;
  return v9;
}

std::string *sub_159839C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_15B5ACC(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
    result = sub_15B6090(&v3[2], v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
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
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      data = v3[3].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v17 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v17 = *v17;
        }

        data = sub_15AC620(v17);
        v3[3].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 72))
      {
        v18 = *(a2 + 72);
      }

      else
      {
        v18 = &off_2777AA0;
      }

      result = sub_158424C(data, v18);
    }

    if ((v14 & 2) != 0)
    {
      v3[3].__r_.__value_.__l.__size_ = *(a2 + 80);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v14;
  }

  v19 = *(a2 + 8);
  if (v19)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_1598524(uint64_t a1)
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

  while ((*(v3 + 16) & 4) != 0);
  return v2 < 1;
}

uint64_t sub_1598564(uint64_t a1)
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

  v5 = (a1 + 96);
  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 104) != &qword_278E990)
  {
    sub_194E89C((a1 + 104));
  }

  if (*(a1 + 112) != &qword_278E990)
  {
    sub_194E89C((a1 + 112));
  }

  if (*(a1 + 120) != &qword_278E990)
  {
    sub_194E89C((a1 + 120));
  }

  if (*(a1 + 128) != &qword_278E990)
  {
    sub_194E89C((a1 + 128));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_15:
  sub_1956AFC((a1 + 72));
  sub_1956AFC((a1 + 48));
  sub_15B527C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1598674(uint64_t a1)
{
  sub_1598564(a1);

  operator delete();
}

uint64_t sub_15986AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_1599D54(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  sub_12A41D0(a1 + 48);
  result = sub_12A41D0(a1 + 72);
  v6 = *(a1 + 16);
  if ((v6 & 0x1F) != 0)
  {
    if ((v6 & 1) == 0)
    {
      if ((v6 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_16:
      v8 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v8 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
        if ((v6 & 4) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
        if ((v6 & 4) != 0)
        {
          goto LABEL_20;
        }
      }

LABEL_9:
      if ((v6 & 8) == 0)
      {
        goto LABEL_10;
      }

LABEL_24:
      v10 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
        if ((v6 & 0x10) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        *v10 = 0;
        *(v10 + 23) = 0;
        if ((v6 & 0x10) == 0)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_28;
    }

    v7 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_20:
    v9 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v6 & 8) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v6 & 8) != 0)
      {
        goto LABEL_24;
      }
    }

LABEL_10:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_31;
    }

LABEL_28:
    v11 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
    }
  }

LABEL_31:
  if ((v6 & 0xE0) != 0)
  {
    *(a1 + 144) = 0;
    *(a1 + 136) = 0;
  }

  if ((v6 & 0x700) != 0)
  {
    *(a1 + 153) = 0;
    *(a1 + 148) = 0;
  }

  v13 = *(a1 + 8);
  v12 = a1 + 8;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

uint64_t sub_1598868(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v71 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v71, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v71 + 1);
    v8 = **v71;
    if (**v71 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v71, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v71 + 2);
      }
    }

    *v71 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_88;
        }

        v5 |= 0x20u;
        LODWORD(v11) = *v7;
        if ((v11 & 0x80000000) == 0)
        {
          v12 = v7 + 1;
LABEL_103:
          *v71 = v12;
          *(a1 + 136) = v11;
          goto LABEL_86;
        }

        v11 = (v7[1] << 7) + v11 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v12 = v7 + 2;
          goto LABEL_103;
        }

        v65 = sub_19587DC(v7, v11);
        *v71 = v65;
        *(a1 + 136) = v66;
        if (!v65)
        {
          goto LABEL_122;
        }

        goto LABEL_86;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_88;
        }

        v5 |= 0x40u;
        LODWORD(v38) = *v7;
        if ((v38 & 0x80000000) == 0)
        {
          v39 = v7 + 1;
LABEL_106:
          *v71 = v39;
          *(a1 + 140) = v38;
          goto LABEL_86;
        }

        v38 = (v7[1] << 7) + v38 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v39 = v7 + 2;
          goto LABEL_106;
        }

        v67 = sub_19587DC(v7, v38);
        *v71 = v67;
        *(a1 + 140) = v68;
        if (!v67)
        {
          goto LABEL_122;
        }

        goto LABEL_86;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_88;
        }

        v5 |= 0x80u;
        LODWORD(v33) = *v7;
        if ((v33 & 0x80000000) == 0)
        {
          v34 = v7 + 1;
LABEL_97:
          *v71 = v34;
          *(a1 + 144) = v33;
          goto LABEL_86;
        }

        v33 = (v7[1] << 7) + v33 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v34 = v7 + 2;
          goto LABEL_97;
        }

        v61 = sub_19587DC(v7, v33);
        *v71 = v61;
        *(a1 + 144) = v62;
        if (!v61)
        {
          goto LABEL_122;
        }

        goto LABEL_86;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_88;
        }

        v5 |= 0x100u;
        LODWORD(v35) = *v7;
        if ((v35 & 0x80000000) == 0)
        {
          v36 = v7 + 1;
LABEL_100:
          *v71 = v36;
          *(a1 + 148) = v35;
          goto LABEL_86;
        }

        v35 = (v7[1] << 7) + v35 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v36 = v7 + 2;
          goto LABEL_100;
        }

        v63 = sub_19587DC(v7, v35);
        *v71 = v63;
        *(a1 + 148) = v64;
        if (!v63)
        {
          goto LABEL_122;
        }

        goto LABEL_86;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_88;
        }

        v16 = (v7 - 1);
        while (1)
        {
          v17 = (v16 + 1);
          *v71 = v16 + 1;
          v18 = *(a1 + 40);
          if (v18 && (v19 = *(a1 + 32), v19 < *v18))
          {
            *(a1 + 32) = v19 + 1;
            v20 = *&v18[2 * v19 + 2];
          }

          else
          {
            v21 = sub_15AD9F4(*(a1 + 24));
            v20 = sub_19593CC(a1 + 24, v21);
            v17 = *v71;
          }

          v16 = sub_221FEFC(a3, v20, v17);
          *v71 = v16;
          if (!v16)
          {
            goto LABEL_122;
          }

          if (*a3 <= v16 || *v16 != 42)
          {
            goto LABEL_86;
          }
        }

      case 6u:
        if (v8 != 50)
        {
          goto LABEL_88;
        }

        *(a1 + 16) |= 1u;
        v40 = *(a1 + 8);
        v14 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
        if (v40)
        {
          v14 = *v14;
        }

        v15 = (a1 + 96);
        goto LABEL_84;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_88;
        }

        *(a1 + 16) |= 2u;
        v44 = *(a1 + 8);
        v14 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
        if (v44)
        {
          v14 = *v14;
        }

        v15 = (a1 + 104);
        goto LABEL_84;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_88;
        }

        *(a1 + 16) |= 4u;
        v37 = *(a1 + 8);
        v14 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
        if (v37)
        {
          v14 = *v14;
        }

        v15 = (a1 + 112);
        goto LABEL_84;
      case 9u:
        if (v8 != 74)
        {
          goto LABEL_88;
        }

        *(a1 + 16) |= 8u;
        v53 = *(a1 + 8);
        v14 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
        if (v53)
        {
          v14 = *v14;
        }

        v15 = (a1 + 120);
        goto LABEL_84;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_88;
        }

        v5 |= 0x200u;
        v31 = (v7 + 1);
        v30 = *v7;
        if ((v30 & 0x8000000000000000) == 0)
        {
          goto LABEL_41;
        }

        v32 = *v31;
        v30 = (v32 << 7) + v30 - 128;
        if (v32 < 0)
        {
          v59 = sub_19587DC(v7, v30);
          *v71 = v59;
          *(a1 + 152) = v60;
          if (!v59)
          {
            goto LABEL_122;
          }
        }

        else
        {
          v31 = (v7 + 2);
LABEL_41:
          *v71 = v31;
          *(a1 + 152) = v30;
        }

        goto LABEL_86;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_88;
        }

        v45 = (v7 - 1);
        while (1)
        {
          v46 = (v45 + 1);
          *v71 = v45 + 1;
          v47 = *(a1 + 64);
          if (v47 && (v48 = *(a1 + 56), v48 < *v47))
          {
            *(a1 + 56) = v48 + 1;
            v49 = *&v47[2 * v48 + 2];
          }

          else
          {
            v50 = *(a1 + 48);
            if (!v50)
            {
              operator new();
            }

            *v52 = v51;
            v52[1] = sub_195A650;
            *v51 = 0;
            v51[1] = 0;
            v51[2] = 0;
            v49 = sub_19593CC(a1 + 48, v51);
            v46 = *v71;
          }

          v45 = sub_1958890(v49, v46, a3);
          *v71 = v45;
          if (!v45)
          {
            goto LABEL_122;
          }

          if (*a3 <= v45 || *v45 != 90)
          {
            goto LABEL_86;
          }
        }

      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_88;
        }

        *(a1 + 16) |= 0x10u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 128);
LABEL_84:
        v54 = sub_194DB04(v15, v14);
        v55 = sub_1958890(v54, *v71, a3);
        goto LABEL_85;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_88;
        }

        v22 = (v7 - 1);
        while (1)
        {
          v23 = (v22 + 1);
          *v71 = v22 + 1;
          v24 = *(a1 + 88);
          if (v24 && (v25 = *(a1 + 80), v25 < *v24))
          {
            *(a1 + 80) = v25 + 1;
            v26 = *&v24[2 * v25 + 2];
          }

          else
          {
            v27 = *(a1 + 72);
            if (!v27)
            {
              operator new();
            }

            *v29 = v28;
            v29[1] = sub_195A650;
            *v28 = 0;
            v28[1] = 0;
            v28[2] = 0;
            v26 = sub_19593CC(a1 + 72, v28);
            v23 = *v71;
          }

          v22 = sub_1958890(v26, v23, a3);
          *v71 = v22;
          if (!v22)
          {
            goto LABEL_122;
          }

          if (*a3 <= v22 || *v22 != 106)
          {
            goto LABEL_86;
          }
        }

      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_88;
        }

        v5 |= 0x400u;
        v42 = (v7 + 1);
        v41 = *v7;
        if ((v41 & 0x8000000000000000) == 0)
        {
          goto LABEL_63;
        }

        v43 = *v42;
        v41 = (v43 << 7) + v41 - 128;
        if (v43 < 0)
        {
          v69 = sub_19587DC(v7, v41);
          *v71 = v69;
          *(a1 + 160) = v70 != 0;
          if (!v69)
          {
            goto LABEL_122;
          }
        }

        else
        {
          v42 = (v7 + 2);
LABEL_63:
          *v71 = v42;
          *(a1 + 160) = v41 != 0;
        }

        goto LABEL_86;
      default:
LABEL_88:
        if (v8)
        {
          v56 = (v8 & 7) == 4;
        }

        else
        {
          v56 = 1;
        }

        if (!v56)
        {
          v57 = *(a1 + 8);
          if (v57)
          {
            v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v58 = sub_11F1920((a1 + 8));
            v7 = *v71;
          }

          v55 = sub_1952690(v8, v58, v7, a3);
LABEL_85:
          *v71 = v55;
          if (!v55)
          {
            goto LABEL_122;
          }

LABEL_86:
          if (sub_195ADC0(a3, v71, a3[11].i32[1]))
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
LABEL_122:
          *v71 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v71;
    }
  }
}

char *sub_1598F7C(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 136);
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

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 140);
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

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 144);
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

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 148);
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

  v24 = *(a1 + 32);
  if (v24)
  {
    for (i = 0; i != v24; ++i)
    {
      if (*a3 <= v19)
      {
        v19 = sub_225EB68(a3, v19);
      }

      v26 = *(*(a1 + 40) + 8 * i + 8);
      *v19 = 42;
      v27 = *(v26 + 20);
      v19[1] = v27;
      if (v27 > 0x7F)
      {
        v28 = sub_19575D0(v27, v19 + 1);
      }

      else
      {
        v28 = v19 + 2;
      }

      v19 = sub_1599F64(v26, v28, a3);
    }
  }

  if (v5)
  {
    v19 = sub_128AEEC(a3, 6, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, v19);
    if ((v5 & 2) == 0)
    {
LABEL_47:
      if ((v5 & 4) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_53;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_47;
  }

  v19 = sub_128AEEC(a3, 7, *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL, v19);
  if ((v5 & 4) == 0)
  {
LABEL_48:
    if ((v5 & 8) == 0)
    {
      goto LABEL_49;
    }

LABEL_54:
    v19 = sub_128AEEC(a3, 9, *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL, v19);
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_55;
  }

LABEL_53:
  v19 = sub_128AEEC(a3, 8, *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL, v19);
  if ((v5 & 8) != 0)
  {
    goto LABEL_54;
  }

LABEL_49:
  if ((v5 & 0x200) == 0)
  {
LABEL_50:
    v29 = v19;
    goto LABEL_62;
  }

LABEL_55:
  if (*a3 <= v19)
  {
    v19 = sub_225EB68(a3, v19);
  }

  v30 = *(a1 + 152);
  *v19 = 80;
  v19[1] = v30;
  if (v30 > 0x7F)
  {
    v19[1] = v30 | 0x80;
    v31 = v30 >> 7;
    v19[2] = v30 >> 7;
    v29 = v19 + 3;
    if (v30 >= 0x4000)
    {
      LOBYTE(v32) = v19[2];
      do
      {
        *(v29 - 1) = v32 | 0x80;
        v32 = v31 >> 7;
        *v29++ = v31 >> 7;
        v33 = v31 >> 14;
        v31 >>= 7;
      }

      while (v33);
    }
  }

  else
  {
    v29 = v19 + 2;
  }

LABEL_62:
  v34 = *(a1 + 56);
  if (v34 >= 1)
  {
    v35 = 8;
    do
    {
      v36 = *(*(a1 + 64) + v35);
      v37 = *(v36 + 23);
      if (v37 < 0 && (v37 = v36[1], v37 > 127) || *a3 - v29 + 14 < v37)
      {
        v29 = sub_1957480(a3, 11, v36, v29);
      }

      else
      {
        *v29 = 90;
        v29[1] = v37;
        if (*(v36 + 23) < 0)
        {
          v36 = *v36;
        }

        v38 = v29 + 2;
        memcpy(v38, v36, v37);
        v29 = &v38[v37];
      }

      v35 += 8;
      --v34;
    }

    while (v34);
  }

  if ((v5 & 0x10) != 0)
  {
    v29 = sub_128AEEC(a3, 12, *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL, v29);
  }

  v39 = *(a1 + 80);
  if (v39 >= 1)
  {
    v40 = 8;
    do
    {
      v41 = *(*(a1 + 88) + v40);
      v42 = *(v41 + 23);
      if (v42 < 0 && (v42 = v41[1], v42 > 127) || *a3 - v29 + 14 < v42)
      {
        v29 = sub_1957480(a3, 13, v41, v29);
      }

      else
      {
        *v29 = 106;
        v29[1] = v42;
        if (*(v41 + 23) < 0)
        {
          v41 = *v41;
        }

        v43 = v29 + 2;
        memcpy(v43, v41, v42);
        v29 = &v43[v42];
      }

      v40 += 8;
      --v39;
    }

    while (v39);
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v29)
    {
      v29 = sub_225EB68(a3, v29);
    }

    v44 = *(a1 + 160);
    *v29 = 112;
    v29[1] = v44;
    v29 += 2;
  }

  v45 = *(a1 + 8);
  if ((v45 & 1) == 0)
  {
    return v29;
  }

  v47 = v45 & 0xFFFFFFFFFFFFFFFCLL;
  v48 = *(v47 + 31);
  if (v48 < 0)
  {
    v49 = *(v47 + 8);
    v48 = *(v47 + 16);
  }

  else
  {
    v49 = (v47 + 8);
  }

  if (*a3 - v29 >= v48)
  {
    v50 = v48;
    memcpy(v29, v49, v48);
    v29 += v50;
    return v29;
  }

  return sub_1957130(a3, v49, v48, v29);
}

uint64_t sub_1599564(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
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
      v12 = sub_159A184(v11);
      v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      v10 -= 8;
    }

    while (v10);
  }

  v13 = *(a1 + 56);
  v14 = v7 + v13;
  if (v13 >= 1)
  {
    v15 = (*(a1 + 64) + 8);
    do
    {
      v16 = *v15++;
      v17 = *(v16 + 23);
      v18 = *(v16 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v18 = v17;
      }

      v14 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6);
      --v13;
    }

    while (v13);
  }

  v19 = *(a1 + 80);
  result = v14 + v19;
  if (v19 >= 1)
  {
    v21 = (*(a1 + 88) + 8);
    do
    {
      v22 = *v21++;
      v23 = *(v22 + 23);
      v24 = *(v22 + 8);
      if ((v23 & 0x80u) == 0)
      {
        v24 = v23;
      }

      result += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6);
      --v19;
    }

    while (v19);
  }

  v25 = *(a1 + 16);
  if ((v25 & 0xFE) == 0)
  {
    goto LABEL_34;
  }

  if ((v25 & 2) != 0)
  {
    v33 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
    v34 = *(v33 + 23);
    v35 = *(v33 + 8);
    if ((v34 & 0x80u) == 0)
    {
      v35 = v34;
    }

    result += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v25 & 4) == 0)
    {
LABEL_25:
      if ((v25 & 8) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_51;
    }
  }

  else if ((v25 & 4) == 0)
  {
    goto LABEL_25;
  }

  v36 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
  v37 = *(v36 + 23);
  v38 = *(v36 + 8);
  if ((v37 & 0x80u) == 0)
  {
    v38 = v37;
  }

  result += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v25 & 8) == 0)
  {
LABEL_26:
    if ((v25 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_54;
  }

LABEL_51:
  v39 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
  v40 = *(v39 + 23);
  v41 = *(v39 + 8);
  if ((v40 & 0x80u) == 0)
  {
    v41 = v40;
  }

  result += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v25 & 0x10) == 0)
  {
LABEL_27:
    if ((v25 & 0x20) == 0)
    {
      goto LABEL_28;
    }

LABEL_57:
    v45 = *(a1 + 136);
    v46 = ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v45 >= 0)
    {
      v47 = v46;
    }

    else
    {
      v47 = 11;
    }

    result += v47;
    if ((v25 & 0x40) == 0)
    {
LABEL_29:
      if ((v25 & 0x80) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_54:
  v42 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
  v43 = *(v42 + 23);
  v44 = *(v42 + 8);
  if ((v43 & 0x80u) == 0)
  {
    v44 = v43;
  }

  result += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v25 & 0x20) != 0)
  {
    goto LABEL_57;
  }

LABEL_28:
  if ((v25 & 0x40) == 0)
  {
    goto LABEL_29;
  }

LABEL_61:
  v48 = *(a1 + 140);
  v49 = ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v48 >= 0)
  {
    v50 = v49;
  }

  else
  {
    v50 = 11;
  }

  result += v50;
  if ((v25 & 0x80) != 0)
  {
LABEL_30:
    v26 = *(a1 + 144);
    v27 = ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v26 >= 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = 11;
    }

    result += v28;
  }

LABEL_34:
  if ((v25 & 0x700) != 0)
  {
    if ((v25 & 0x100) != 0)
    {
      v29 = *(a1 + 148);
      v30 = ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v29 >= 0)
      {
        v31 = v30;
      }

      else
      {
        v31 = 11;
      }

      result += v31;
    }

    if ((v25 & 0x200) != 0)
    {
      result += ((9 * (__clz(*(a1 + 152) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    result += (v25 >> 9) & 2;
  }

  v32 = *(a1 + 8);
  if (v32)
  {
    v51 = v32 & 0xFFFFFFFFFFFFFFFCLL;
    v52 = *((v32 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v52 < 0)
    {
      v52 = *(v51 + 16);
    }

    result += v52;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_1599940(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_15B610C(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
    result = sub_1201B48(&v3[2], v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
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
    result = sub_1201B48(&v3[3], v16, (v15 + 8), v14, *v3[3].__r_.__value_.__r.__words[2] - LODWORD(v3[3].__r_.__value_.__r.__words[1]));
    v17 = LODWORD(v3[3].__r_.__value_.__r.__words[1]) + v14;
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = v17;
    v18 = v3[3].__r_.__value_.__r.__words[2];
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if (v19)
  {
    if (v19)
    {
      v21 = *(a2 + 96);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      size = v3->__r_.__value_.__l.__size_;
      v23 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v23 = *v23;
      }

      result = sub_194EA1C(&v3[4], (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
      if ((v19 & 2) == 0)
      {
LABEL_13:
        if ((v19 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_37;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    v24 = *(a2 + 104);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v25 = v3->__r_.__value_.__l.__size_;
    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v26 = *v26;
    }

    result = sub_194EA1C(&v3[4].__r_.__value_.__l.__size_, (v24 & 0xFFFFFFFFFFFFFFFELL), v26);
    if ((v19 & 4) == 0)
    {
LABEL_14:
      if ((v19 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_40;
    }

LABEL_37:
    v27 = *(a2 + 112);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v28 = v3->__r_.__value_.__l.__size_;
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    result = sub_194EA1C(&v3[4].__r_.__value_.__r.__words[2], (v27 & 0xFFFFFFFFFFFFFFFELL), v29);
    if ((v19 & 8) == 0)
    {
LABEL_15:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_43;
    }

LABEL_40:
    v30 = *(a2 + 120);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    v31 = v3->__r_.__value_.__l.__size_;
    v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
    if (v31)
    {
      v32 = *v32;
    }

    result = sub_194EA1C(&v3[5], (v30 & 0xFFFFFFFFFFFFFFFELL), v32);
    if ((v19 & 0x10) == 0)
    {
LABEL_16:
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_46;
    }

LABEL_43:
    v33 = *(a2 + 128);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
    v34 = v3->__r_.__value_.__l.__size_;
    v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
    if (v34)
    {
      v35 = *v35;
    }

    result = sub_194EA1C(&v3[5].__r_.__value_.__l.__size_, (v33 & 0xFFFFFFFFFFFFFFFELL), v35);
    if ((v19 & 0x20) == 0)
    {
LABEL_17:
      if ((v19 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_47;
    }

LABEL_46:
    LODWORD(v3[5].__r_.__value_.__r.__words[2]) = *(a2 + 136);
    if ((v19 & 0x40) == 0)
    {
LABEL_18:
      if ((v19 & 0x80) == 0)
      {
LABEL_20:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v19;
        goto LABEL_21;
      }

LABEL_19:
      LODWORD(v3[6].__r_.__value_.__l.__data_) = *(a2 + 144);
      goto LABEL_20;
    }

LABEL_47:
    HIDWORD(v3[5].__r_.__value_.__r.__words[2]) = *(a2 + 140);
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_21:
  if ((v19 & 0x700) == 0)
  {
    goto LABEL_27;
  }

  if ((v19 & 0x100) == 0)
  {
    if ((v19 & 0x200) == 0)
    {
      goto LABEL_24;
    }

LABEL_50:
    v3[6].__r_.__value_.__l.__size_ = *(a2 + 152);
    if ((v19 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  HIDWORD(v3[6].__r_.__value_.__r.__words[0]) = *(a2 + 148);
  if ((v19 & 0x200) != 0)
  {
    goto LABEL_50;
  }

LABEL_24:
  if ((v19 & 0x400) != 0)
  {
LABEL_25:
    v3[6].__r_.__value_.__s.__data_[16] = *(a2 + 160);
  }

LABEL_26:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= v19;
LABEL_27:
  v20 = *(a2 + 8);
  if (v20)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_1599C58(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  do
  {
    result = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(v3 + 8 * v2--);
  }

  while ((~*(v4 + 16) & 3) == 0);
  return result;
}

void *sub_1599CA8(void *a1)
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

void sub_1599D1C(void *a1)
{
  sub_1599CA8(a1);

  operator delete();
}

uint64_t sub_1599D54(uint64_t a1)
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

char *sub_1599D7C(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 8)
    {
      goto LABEL_12;
    }

    v5 |= 1u;
    v18 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_26;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_26:
      v24 = v18;
      *(a1 + 24) = v17;
      goto LABEL_30;
    }

    v22 = sub_19587DC(v7, v17);
    v24 = v22;
    *(a1 + 24) = v23;
    if (!v22)
    {
      goto LABEL_39;
    }

LABEL_30:
    if (sub_195ADC0(a3, &v24, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 16)
  {
    v5 |= 2u;
    LODWORD(v15) = *v7;
    if ((v15 & 0x80000000) != 0)
    {
      v15 = (v7[1] << 7) + v15 - 128;
      if (v7[1] < 0)
      {
        v20 = sub_19587DC(v7, v15);
        v24 = v20;
        *(a1 + 32) = v21;
        if (!v20)
        {
          goto LABEL_39;
        }

        goto LABEL_30;
      }

      v16 = v7 + 2;
    }

    else
    {
      v16 = v7 + 1;
    }

    v24 = v16;
    *(a1 + 32) = v15;
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

    v24 = sub_1952690(v8, v14, v7, a3);
    if (!v24)
    {
      goto LABEL_39;
    }

    goto LABEL_30;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_39:
  v24 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v24;
}

char *sub_1599F64(uint64_t a1, char *__dst, _DWORD *a3)
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 32);
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

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v11;
  }

  v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
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

  if (*a3 - v11 >= v18)
  {
    v20 = v18;
    memcpy(v11, v19, v18);
    v11 += v20;
    return v11;
  }

  return sub_1957130(a3, v19, v18, v11);
}

unint64_t sub_159A114(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      return result;
    }
  }

  v4 = *(a1 + 32);
  if (v4 < 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v5;
  return result;
}

unint64_t sub_159A184(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    result = sub_159A114(a1);
  }

  else
  {
    v2 = (9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6;
    v3 = *(a1 + 32);
    v4 = (9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6;
    if (v3 >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 10;
    }

    result = v2 + v5 + 2;
  }

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

void *sub_159A258(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_15B5300(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_159A2D8(void *a1)
{
  sub_159A258(a1);

  operator delete();
}

uint64_t sub_159A310(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15986AC(v4);
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

char *sub_159A38C(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_15AD92C(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_221FF8C(a3, v16, v13);
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

char *sub_159A51C(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_1598F7C(v8, v10, a3);
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

uint64_t sub_159A65C(uint64_t a1)
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
      v7 = sub_1599564(v6);
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

std::string *sub_159A704(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_15B6188(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
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

uint64_t sub_159A7C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = *(a1 + 16) + 8;
  do
  {
    v3 = *(v2 + 8 * (v1 - 1));
    v4 = *(v3 + 16);
    result = v4 & 1;
    if ((v4 & 1) == 0)
    {
      break;
    }

    v6 = *(v3 + 32);
    v7 = *(v3 + 40);
    while (v6 >= 1)
    {
      v8 = *(v7 + 8 * v6--);
      if ((~*(v8 + 16) & 3) != 0)
      {
        return 0;
      }
    }
  }

  while (v1-- >= 2);
  return result;
}

uint64_t sub_159A84C(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_15B5384((a1 + 48));
  sub_15B5384((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_159A904(uint64_t a1)
{
  sub_159A84C(a1);

  operator delete();
}

uint64_t sub_159A93C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_49;
      }

      v18 = v7 + 1;
      v17 = *v7;
      if (v17 < 0)
      {
        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if ((v19 & 0x80000000) == 0)
        {
          v18 = v7 + 2;
          goto LABEL_26;
        }

        *v35 = sub_19587DC(v7, v17);
        if (!*v35)
        {
          goto LABEL_65;
        }
      }

      else
      {
LABEL_26:
        *v35 = v18;
      }

      if ((v17 - 1) > 0x1D)
      {
        sub_1313740();
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 88) = v17;
      }

      goto LABEL_57;
    }

    if (v11 == 4)
    {
      if (v8 == 34)
      {
        v20 = v7 - 1;
        while (1)
        {
          v21 = v20 + 1;
          *v35 = v20 + 1;
          v22 = *(a1 + 64);
          if (v22 && (v23 = *(a1 + 56), v23 < *v22))
          {
            *(a1 + 56) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            v25 = sub_15ADC74(*(a1 + 48));
            v24 = sub_19593CC(a1 + 48, v25);
            v21 = *v35;
          }

          v20 = sub_222001C(a3, v24, v21);
          *v35 = v20;
          if (!v20)
          {
            goto LABEL_65;
          }

          if (*a3 <= v20 || *v20 != 34)
          {
            goto LABEL_57;
          }
        }
      }

      goto LABEL_49;
    }

    if (v11 != 5 || v8 != 42)
    {
      goto LABEL_49;
    }

    *(a1 + 16) |= 1u;
    v12 = *(a1 + 8);
    v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    if (v12)
    {
      v13 = *v13;
    }

    v14 = sub_194DB04((a1 + 72), v13);
    v15 = sub_1958890(v14, *v35, a3);
LABEL_56:
    *v35 = v15;
    if (!v15)
    {
      goto LABEL_65;
    }

LABEL_57:
    if (sub_195ADC0(a3, v35, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 == 10)
    {
      v26 = v7 - 1;
      while (1)
      {
        v27 = v26 + 1;
        *v35 = v26 + 1;
        v28 = *(a1 + 40);
        if (v28 && (v29 = *(a1 + 32), v29 < *v28))
        {
          *(a1 + 32) = v29 + 1;
          v30 = *&v28[2 * v29 + 2];
        }

        else
        {
          v31 = sub_15ADC74(*(a1 + 24));
          v30 = sub_19593CC(a1 + 24, v31);
          v27 = *v35;
        }

        v26 = sub_222001C(a3, v30, v27);
        *v35 = v26;
        if (!v26)
        {
          goto LABEL_65;
        }

        if (*a3 <= v26 || *v26 != 10)
        {
          goto LABEL_57;
        }
      }
    }
  }

  else if (v11 == 2 && v8 == 17)
  {
    v5 |= 2u;
    *(a1 + 80) = *v7;
    *v35 = v7 + 2;
    goto LABEL_57;
  }

LABEL_49:
  if (v8)
  {
    v32 = (v8 & 7) == 4;
  }

  else
  {
    v32 = 1;
  }

  if (!v32)
  {
    v33 = *(a1 + 8);
    if (v33)
    {
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v34 = sub_11F1920((a1 + 8));
      v7 = *v35;
    }

    v15 = sub_1952690(v8, v34, v7, a3);
    goto LABEL_56;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_65:
  *v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v35;
}

char *sub_159AC7C(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_159CB1C(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if ((v11 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v12 = *(a1 + 80);
    *__dst = 17;
    *(__dst + 1) = v12;
    __dst += 9;
  }

  if ((v11 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v14 = *(a1 + 88);
    *__dst = 24;
    __dst[1] = v14;
    if (v14 > 0x7F)
    {
      __dst[1] = v14 | 0x80;
      v15 = v14 >> 7;
      __dst[2] = v14 >> 7;
      v13 = __dst + 3;
      if (v14 >= 0x4000)
      {
        LOBYTE(__dst) = __dst[2];
        do
        {
          *(v13 - 1) = __dst | 0x80;
          __dst = (v15 >> 7);
          *v13++ = v15 >> 7;
          v16 = v15 >> 14;
          v15 >>= 7;
        }

        while (v16);
      }
    }

    else
    {
      v13 = __dst + 2;
    }
  }

  else
  {
    v13 = __dst;
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    for (j = 0; j != v17; ++j)
    {
      if (*a3 <= v13)
      {
        v13 = sub_225EB68(a3, v13);
      }

      v19 = *(*(a1 + 64) + 8 * j + 8);
      *v13 = 34;
      v20 = *(v19 + 20);
      v13[1] = v20;
      if (v20 > 0x7F)
      {
        v21 = sub_19575D0(v20, v13 + 1);
      }

      else
      {
        v21 = v13 + 2;
      }

      v13 = sub_159CB1C(v19, v21, a3);
    }
  }

  if (v11)
  {
    v13 = sub_128AEEC(a3, 5, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v13);
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v13;
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

  if (*a3 - v13 >= v25)
  {
    v27 = v25;
    memcpy(v13, v26, v25);
    v13 += v27;
    return v13;
  }

  return sub_1957130(a3, v26, v25, v13);
}

uint64_t sub_159AF24(uint64_t a1)
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
      v7 = sub_159CF50(v6);
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
      v14 = sub_159CF50(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 7) != 0)
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
      v9 += 9;
    }

    if ((v15 & 4) != 0)
    {
      v19 = *(a1 + 88);
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

BOOL sub_159B0AC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = *(a1 + 16) + 8;
  do
  {
    v3 = *(v2 + 8 * (v1 - 1));
    v4 = *(v3 + 16) & 0x13;
    result = v4 == 19;
    if (v4 != 19)
    {
      break;
    }

    v6 = *(v3 + 32);
    v7 = *(v3 + 40);
    while (v6 >= 1)
    {
      v8 = *(v7 + 8 * v6--);
      if ((~*(v8 + 16) & 3) != 0)
      {
        return 0;
      }
    }
  }

  while (v1-- >= 2);
  return result;
}

uint64_t sub_159B13C(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
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

LABEL_11:
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_159B210(uint64_t a1)
{
  sub_159B13C(a1);

  operator delete();
}

uint64_t sub_159B248(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 7) != 0)
  {
    if ((v3 & 1) == 0)
    {
      if ((v3 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      v5 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v5 + 23) < 0)
      {
        **v5 = 0;
        *(v5 + 8) = 0;
        if ((v3 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        *v5 = 0;
        *(v5 + 23) = 0;
        if ((v3 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_14;
    }

    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v6 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
    }
  }

LABEL_17:
  if ((v3 & 0xF8) != 0)
  {
    *(a1 + 76) = 0;
    *(a1 + 72) = 0;
  }

  if ((v3 & 0x7F00) != 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 77) = 0;
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

uint64_t sub_159B360(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v89 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v89, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v89 + 1);
    v8 = **v89;
    if (**v89 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v89, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v89 + 2);
      }
    }

    *v89 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_93;
        }

        *(a1 + 16) |= 1u;
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v13 = (a1 + 48);
        goto LABEL_92;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_93;
        }

        v5 |= 8u;
        v47 = v7 + 1;
        v46 = *v7;
        if ((v46 & 0x8000000000000000) == 0)
        {
          goto LABEL_68;
        }

        v48 = *v47;
        v46 = (v48 << 7) + v46 - 128;
        if (v48 < 0)
        {
          v81 = sub_19587DC(v7, v46);
          *v89 = v81;
          *(a1 + 72) = v82 != 0;
          if (!v81)
          {
            goto LABEL_130;
          }
        }

        else
        {
          v47 = v7 + 2;
LABEL_68:
          *v89 = v47;
          *(a1 + 72) = v46 != 0;
        }

        goto LABEL_101;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_93;
        }

        v5 |= 0x10u;
        v30 = v7 + 1;
        v29 = *v7;
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_41;
        }

        v31 = *v30;
        v29 = (v31 << 7) + v29 - 128;
        if (v31 < 0)
        {
          v75 = sub_19587DC(v7, v29);
          *v89 = v75;
          *(a1 + 73) = v76 != 0;
          if (!v75)
          {
            goto LABEL_130;
          }
        }

        else
        {
          v30 = v7 + 2;
LABEL_41:
          *v89 = v30;
          *(a1 + 73) = v29 != 0;
        }

        goto LABEL_101;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_93;
        }

        v5 |= 0x20u;
        v41 = v7 + 1;
        v40 = *v7;
        if ((v40 & 0x8000000000000000) == 0)
        {
          goto LABEL_58;
        }

        v42 = *v41;
        v40 = (v42 << 7) + v40 - 128;
        if (v42 < 0)
        {
          v77 = sub_19587DC(v7, v40);
          *v89 = v77;
          *(a1 + 74) = v78 != 0;
          if (!v77)
          {
            goto LABEL_130;
          }
        }

        else
        {
          v41 = v7 + 2;
LABEL_58:
          *v89 = v41;
          *(a1 + 74) = v40 != 0;
        }

        goto LABEL_101;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_93;
        }

        v5 |= 0x40u;
        v21 = v7 + 1;
        v20 = *v7;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_26;
        }

        v22 = *v21;
        v20 = (v22 << 7) + v20 - 128;
        if (v22 < 0)
        {
          v69 = sub_19587DC(v7, v20);
          *v89 = v69;
          *(a1 + 75) = v70 != 0;
          if (!v69)
          {
            goto LABEL_130;
          }
        }

        else
        {
          v21 = v7 + 2;
LABEL_26:
          *v89 = v21;
          *(a1 + 75) = v20 != 0;
        }

        goto LABEL_101;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_93;
        }

        v5 |= 0x80u;
        v50 = v7 + 1;
        v49 = *v7;
        if ((v49 & 0x8000000000000000) == 0)
        {
          goto LABEL_73;
        }

        v51 = *v50;
        v49 = (v51 << 7) + v49 - 128;
        if (v51 < 0)
        {
          v83 = sub_19587DC(v7, v49);
          *v89 = v83;
          *(a1 + 76) = v84 != 0;
          if (!v83)
          {
            goto LABEL_130;
          }
        }

        else
        {
          v50 = v7 + 2;
LABEL_73:
          *v89 = v50;
          *(a1 + 76) = v49 != 0;
        }

        goto LABEL_101;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_93;
        }

        v5 |= 0x100u;
        v56 = v7 + 1;
        v55 = *v7;
        if ((v55 & 0x8000000000000000) == 0)
        {
          goto LABEL_83;
        }

        v57 = *v56;
        v55 = (v57 << 7) + v55 - 128;
        if (v57 < 0)
        {
          v87 = sub_19587DC(v7, v55);
          *v89 = v87;
          *(a1 + 77) = v88 != 0;
          if (!v87)
          {
            goto LABEL_130;
          }
        }

        else
        {
          v56 = v7 + 2;
LABEL_83:
          *v89 = v56;
          *(a1 + 77) = v55 != 0;
        }

        goto LABEL_101;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_93;
        }

        v5 |= 0x200u;
        v44 = v7 + 1;
        v43 = *v7;
        if ((v43 & 0x8000000000000000) == 0)
        {
          goto LABEL_63;
        }

        v45 = *v44;
        v43 = (v45 << 7) + v43 - 128;
        if (v45 < 0)
        {
          v79 = sub_19587DC(v7, v43);
          *v89 = v79;
          *(a1 + 78) = v80 != 0;
          if (!v79)
          {
            goto LABEL_130;
          }
        }

        else
        {
          v44 = v7 + 2;
LABEL_63:
          *v89 = v44;
          *(a1 + 78) = v43 != 0;
        }

        goto LABEL_101;
      case 9u:
        if (v8 != 74)
        {
          goto LABEL_93;
        }

        *(a1 + 16) |= 2u;
        v59 = *(a1 + 8);
        v12 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
        if (v59)
        {
          v12 = *v12;
        }

        v13 = (a1 + 56);
        goto LABEL_92;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_93;
        }

        v5 |= 0x400u;
        v27 = v7 + 1;
        v26 = *v7;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if (v28 < 0)
        {
          v73 = sub_19587DC(v7, v26);
          *v89 = v73;
          *(a1 + 79) = v74 != 0;
          if (!v73)
          {
            goto LABEL_130;
          }
        }

        else
        {
          v27 = v7 + 2;
LABEL_36:
          *v89 = v27;
          *(a1 + 79) = v26 != 0;
        }

        goto LABEL_101;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_93;
        }

        *(a1 + 16) |= 4u;
        v58 = *(a1 + 8);
        v12 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
        if (v58)
        {
          v12 = *v12;
        }

        v13 = (a1 + 64);
LABEL_92:
        v60 = sub_194DB04(v13, v12);
        v61 = sub_1958890(v60, *v89, a3);
        goto LABEL_100;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_93;
        }

        v5 |= 0x800u;
        v18 = v7 + 1;
        v17 = *v7;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if (v19 < 0)
        {
          v67 = sub_19587DC(v7, v17);
          *v89 = v67;
          *(a1 + 80) = v68 != 0;
          if (!v67)
          {
            goto LABEL_130;
          }
        }

        else
        {
          v18 = v7 + 2;
LABEL_21:
          *v89 = v18;
          *(a1 + 80) = v17 != 0;
        }

        goto LABEL_101;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_93;
        }

        v5 |= 0x1000u;
        v24 = v7 + 1;
        v23 = *v7;
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_31;
        }

        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if (v25 < 0)
        {
          v71 = sub_19587DC(v7, v23);
          *v89 = v71;
          *(a1 + 81) = v72 != 0;
          if (!v71)
          {
            goto LABEL_130;
          }
        }

        else
        {
          v24 = v7 + 2;
LABEL_31:
          *v89 = v24;
          *(a1 + 81) = v23 != 0;
        }

        goto LABEL_101;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_93;
        }

        v5 |= 0x2000u;
        v53 = v7 + 1;
        v52 = *v7;
        if ((v52 & 0x8000000000000000) == 0)
        {
          goto LABEL_78;
        }

        v54 = *v53;
        v52 = (v54 << 7) + v52 - 128;
        if (v54 < 0)
        {
          v85 = sub_19587DC(v7, v52);
          *v89 = v85;
          *(a1 + 82) = v86 != 0;
          if (!v85)
          {
            goto LABEL_130;
          }
        }

        else
        {
          v53 = v7 + 2;
LABEL_78:
          *v89 = v53;
          *(a1 + 82) = v52 != 0;
        }

        goto LABEL_101;
      case 0xFu:
        if (v8 != 120)
        {
          goto LABEL_93;
        }

        v5 |= 0x4000u;
        v15 = v7 + 1;
        v14 = *v7;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if (v16 < 0)
        {
          v65 = sub_19587DC(v7, v14);
          *v89 = v65;
          *(a1 + 83) = v66 != 0;
          if (!v65)
          {
            goto LABEL_130;
          }
        }

        else
        {
          v15 = v7 + 2;
LABEL_16:
          *v89 = v15;
          *(a1 + 83) = v14 != 0;
        }

        goto LABEL_101;
      case 0x10u:
        if (v8 != 130)
        {
          goto LABEL_93;
        }

        v32 = v7 - 2;
        while (1)
        {
          v33 = (v32 + 2);
          *v89 = v32 + 2;
          v34 = *(a1 + 40);
          if (v34 && (v35 = *(a1 + 32), v35 < *v34))
          {
            *(a1 + 32) = v35 + 1;
            v36 = *&v34[2 * v35 + 2];
          }

          else
          {
            v37 = *(a1 + 24);
            if (!v37)
            {
              operator new();
            }

            *v39 = v38;
            v39[1] = sub_195A650;
            *v38 = 0;
            v38[1] = 0;
            v38[2] = 0;
            v36 = sub_19593CC(a1 + 24, v38);
            v33 = *v89;
          }

          v32 = sub_1958890(v36, v33, a3);
          *v89 = v32;
          if (!v32)
          {
            goto LABEL_130;
          }

          if (*a3 <= v32 || *v32 != 386)
          {
            goto LABEL_101;
          }
        }

      default:
LABEL_93:
        if (v8)
        {
          v62 = (v8 & 7) == 4;
        }

        else
        {
          v62 = 1;
        }

        if (!v62)
        {
          v63 = *(a1 + 8);
          if (v63)
          {
            v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v64 = sub_11F1920((a1 + 8));
            v7 = *v89;
          }

          v61 = sub_1952690(v8, v64, v7, a3);
LABEL_100:
          *v89 = v61;
          if (!v61)
          {
            goto LABEL_130;
          }

LABEL_101:
          if (sub_195ADC0(a3, v89, a3[11].i32[1]))
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
LABEL_130:
          *v89 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v89;
    }
  }
}

char *sub_159BB8C(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 72);
  *v4 = 16;
  v4[1] = v7;
  v4 += 2;
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 73);
  *v4 = 24;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_24:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 74);
  *v4 = 32;
  v4[1] = v9;
  v4 += 2;
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_27:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 75);
  *v4 = 40;
  v4[1] = v10;
  v4 += 2;
  if ((v6 & 0x80) == 0)
  {
LABEL_7:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_30:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 76);
  *v4 = 48;
  v4[1] = v11;
  v4 += 2;
  if ((v6 & 0x100) == 0)
  {
LABEL_8:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_33:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v12 = *(a1 + 77);
  *v4 = 56;
  v4[1] = v12;
  v4 += 2;
  if ((v6 & 0x200) == 0)
  {
LABEL_9:
    if ((v6 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_36:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 78);
  *v4 = 64;
  v4[1] = v13;
  v4 += 2;
  if ((v6 & 2) == 0)
  {
LABEL_10:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  v4 = sub_128AEEC(a3, 9, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x400) == 0)
  {
LABEL_11:
    if ((v6 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_40:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 79);
  *v4 = 80;
  v4[1] = v14;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  v4 = sub_128AEEC(a3, 11, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v15 = *(a1 + 80);
  *v4 = 96;
  v4[1] = v15;
  v4 += 2;
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_47:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v16 = *(a1 + 81);
  *v4 = 104;
  v4[1] = v16;
  v4 += 2;
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

LABEL_50:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v17 = *(a1 + 82);
  *v4 = 112;
  v4[1] = v17;
  v4 += 2;
  if ((v6 & 0x4000) != 0)
  {
LABEL_53:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v18 = *(a1 + 83);
    *v4 = 120;
    v4[1] = v18;
    v4 += 2;
  }

LABEL_56:
  v19 = *(a1 + 32);
  if (v19 >= 1)
  {
    v20 = 8;
    do
    {
      v21 = *(*(a1 + 40) + v20);
      v22 = *(v21 + 23);
      if (v22 < 0 && (v22 = v21[1], v22 > 127) || *a3 - v4 + 13 < v22)
      {
        v4 = sub_1957480(a3, 16, v21, v4);
      }

      else
      {
        *v4 = 386;
        v4[2] = v22;
        if (*(v21 + 23) < 0)
        {
          v21 = *v21;
        }

        v23 = v4 + 3;
        memcpy(v23, v21, v22);
        v4 = &v23[v22];
      }

      v20 += 8;
      --v19;
    }

    while (v19);
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v27)
  {
    v29 = v27;
    memcpy(v4, v28, v27);
    v4 += v29;
    return v4;
  }

  return sub_1957130(a3, v28, v27, v4);
}

uint64_t sub_159C020(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 2 * v1;
  if (v1 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
      --v1;
    }

    while (v1);
  }

  v7 = *(a1 + 16);
  v8 = vdupq_n_s32(v7);
  if (v7)
  {
    if (v7)
    {
      v16 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v17 = *(v16 + 23);
      v18 = *(v16 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v18 = v17;
      }

      v2 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v7 & 2) == 0)
      {
LABEL_9:
        if ((v7 & 4) == 0)
        {
LABEL_13:
          v12.i64[0] = 0x200000002;
          v12.i64[1] = 0x200000002;
          v2 += vaddvq_s32(vandq_s8(vshlq_u32(v8, xmmword_232F5A0), v12)) + ((v7 >> 6) & 2);
          goto LABEL_14;
        }

LABEL_10:
        v9 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
        v10 = *(v9 + 23);
        v11 = *(v9 + 8);
        if ((v10 & 0x80u) == 0)
        {
          v11 = v10;
        }

        v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
        goto LABEL_13;
      }
    }

    else if ((v7 & 2) == 0)
    {
      goto LABEL_9;
    }

    v19 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v20 = *(v19 + 23);
    v21 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v21 = v20;
    }

    v2 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

LABEL_14:
  if ((v7 & 0x7F00) != 0)
  {
    v13.i64[0] = 0x200000002;
    v13.i64[1] = 0x200000002;
    v2 += vaddvq_s32(vandq_s8(vshlq_u32(v8, xmmword_232B880), v13)) + ((v7 >> 11) & 2) + ((v7 >> 12) & 2) + ((v7 >> 13) & 2);
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    v22 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    v2 += v23;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_159C208(std::string *result, uint64_t a2)
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
  if (v9)
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
          goto LABEL_8;
        }

        goto LABEL_35;
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
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_38;
    }

LABEL_35:
    v17 = *(a2 + 64);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v18 = v3->__r_.__value_.__l.__size_;
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    result = sub_194EA1C(&v3[2].__r_.__value_.__r.__words[2], (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_39;
    }

LABEL_38:
    v3[3].__r_.__value_.__s.__data_[0] = *(a2 + 72);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_40;
    }

LABEL_39:
    v3[3].__r_.__value_.__s.__data_[1] = *(a2 + 73);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_41;
    }

LABEL_40:
    v3[3].__r_.__value_.__s.__data_[2] = *(a2 + 74);
    if ((v9 & 0x40) == 0)
    {
LABEL_12:
      if ((v9 & 0x80) == 0)
      {
LABEL_14:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
        goto LABEL_15;
      }

LABEL_13:
      v3[3].__r_.__value_.__s.__data_[4] = *(a2 + 76);
      goto LABEL_14;
    }

LABEL_41:
    v3[3].__r_.__value_.__s.__data_[3] = *(a2 + 75);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  if ((v9 & 0x7F00) == 0)
  {
    goto LABEL_25;
  }

  if ((v9 & 0x100) != 0)
  {
    v3[3].__r_.__value_.__s.__data_[5] = *(a2 + 77);
    if ((v9 & 0x200) == 0)
    {
LABEL_18:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_45;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v3[3].__r_.__value_.__s.__data_[6] = *(a2 + 78);
  if ((v9 & 0x400) == 0)
  {
LABEL_19:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  v3[3].__r_.__value_.__s.__data_[7] = *(a2 + 79);
  if ((v9 & 0x800) == 0)
  {
LABEL_20:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  v3[3].__r_.__value_.__s.__data_[8] = *(a2 + 80);
  if ((v9 & 0x1000) == 0)
  {
LABEL_21:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

LABEL_48:
    v3[3].__r_.__value_.__s.__data_[10] = *(a2 + 82);
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_47:
  v3[3].__r_.__value_.__s.__data_[9] = *(a2 + 81);
  if ((v9 & 0x2000) != 0)
  {
    goto LABEL_48;
  }

LABEL_22:
  if ((v9 & 0x4000) != 0)
  {
LABEL_23:
    v3[3].__r_.__value_.__s.__data_[11] = *(a2 + 83);
  }

LABEL_24:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
LABEL_25:
  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_159C470(uint64_t a1)
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

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  if (a1 != &off_27782D8)
  {
    v6 = *(a1 + 88);
    if (v6)
    {
      sub_159B13C(v6);
      operator delete();
    }

    v7 = *(a1 + 96);
    if (v7)
    {
      sub_159B13C(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_1956AFC((a1 + 48));
  sub_15B4DD8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_159C584(uint64_t a1)
{
  sub_159C470(a1);

  operator delete();
}

uint64_t sub_159C5BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_157E0B4(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  result = sub_12A41D0(a1 + 48);
  v6 = *(a1 + 16);
  if ((v6 & 0xF) == 0)
  {
    goto LABEL_11;
  }

  if (v6)
  {
    v9 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_19:
  v10 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v10 + 23) < 0)
  {
    **v10 = 0;
    *(v10 + 8) = 0;
    if ((v6 & 4) != 0)
    {
      goto LABEL_23;
    }

LABEL_9:
    if ((v6 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  *v10 = 0;
  *(v10 + 23) = 0;
  if ((v6 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_23:
  result = sub_159B248(*(a1 + 88));
  if ((v6 & 8) != 0)
  {
LABEL_10:
    result = sub_159B248(*(a1 + 96));
  }

LABEL_11:
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 96) = 0;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_159C6DC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v45 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v45, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v45 + 1);
    v8 = **v45;
    if (**v45 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v45, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v45 + 2);
      }
    }

    *v45 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      if (v8 >> 3 <= 5)
      {
        if (v11 == 4)
        {
          if (v8 != 34)
          {
            goto LABEL_65;
          }

          *(a1 + 16) |= 2u;
          v29 = *(a1 + 8);
          v22 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v22 = *v22;
          }

          v23 = (a1 + 80);
          goto LABEL_47;
        }

        if (v11 == 5 && v8 == 42)
        {
          v12 = (v7 - 1);
          while (1)
          {
            v13 = (v12 + 1);
            *v45 = v12 + 1;
            v14 = *(a1 + 64);
            if (v14 && (v15 = *(a1 + 56), v15 < *v14))
            {
              *(a1 + 56) = v15 + 1;
              v16 = *&v14[2 * v15 + 2];
            }

            else
            {
              v17 = *(a1 + 48);
              if (!v17)
              {
                operator new();
              }

              *v19 = v18;
              v19[1] = sub_195A650;
              *v18 = 0;
              v18[1] = 0;
              v18[2] = 0;
              v16 = sub_19593CC(a1 + 48, v18);
              v13 = *v45;
            }

            v12 = sub_1958890(v16, v13, a3);
            *v45 = v12;
            if (!v12)
            {
              goto LABEL_83;
            }

            if (*a3 <= v12 || *v12 != 42)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_65;
      }

      if (v11 == 6)
      {
        if (v8 != 50)
        {
          goto LABEL_65;
        }

        *(a1 + 16) |= 4u;
        v24 = *(a1 + 88);
        if (v24)
        {
          goto LABEL_54;
        }

        v32 = *(a1 + 8);
        v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
        if (v32)
        {
          v33 = *v33;
        }

        v24 = sub_15ADBC8(v33);
        *(a1 + 88) = v24;
      }

      else
      {
        if (v11 != 7 || v8 != 58)
        {
          goto LABEL_65;
        }

        *(a1 + 16) |= 8u;
        v24 = *(a1 + 96);
        if (v24)
        {
          goto LABEL_54;
        }

        v25 = *(a1 + 8);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        v24 = sub_15ADBC8(v26);
        *(a1 + 96) = v24;
      }

      v7 = *v45;
LABEL_54:
      v31 = sub_22200AC(a3, v24, v7);
      goto LABEL_72;
    }

    if (v11 != 1)
    {
      break;
    }

    if (v8 != 8)
    {
      goto LABEL_65;
    }

    v5 |= 0x10u;
    LODWORD(v27) = *v7;
    if ((v27 & 0x80000000) == 0)
    {
      v28 = v7 + 1;
LABEL_77:
      *v45 = v28;
      *(a1 + 104) = v27;
      goto LABEL_73;
    }

    v27 = (v7[1] << 7) + v27 - 128;
    if ((v7[1] & 0x80000000) == 0)
    {
      v28 = v7 + 2;
      goto LABEL_77;
    }

    v43 = sub_19587DC(v7, v27);
    *v45 = v43;
    *(a1 + 104) = v44;
    if (!v43)
    {
      goto LABEL_83;
    }

LABEL_73:
    if (sub_195ADC0(a3, v45, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 2)
  {
    if (v11 != 3 || v8 != 26)
    {
      goto LABEL_65;
    }

    *(a1 + 16) |= 1u;
    v21 = *(a1 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    v23 = (a1 + 72);
LABEL_47:
    v30 = sub_194DB04(v23, v22);
    v31 = sub_1958890(v30, *v45, a3);
LABEL_72:
    *v45 = v31;
    if (!v31)
    {
      goto LABEL_83;
    }

    goto LABEL_73;
  }

  if (v8 == 18)
  {
    v34 = v7 - 1;
    while (1)
    {
      v35 = v34 + 1;
      *v45 = v34 + 1;
      v36 = *(a1 + 40);
      if (v36 && (v37 = *(a1 + 32), v37 < *v36))
      {
        *(a1 + 32) = v37 + 1;
        v38 = *&v36[2 * v37 + 2];
      }

      else
      {
        v39 = sub_15AC14C(*(a1 + 24));
        v38 = sub_19593CC(a1 + 24, v39);
        v35 = *v45;
      }

      v34 = sub_221F9EC(a3, v38, v35);
      *v45 = v34;
      if (!v34)
      {
        goto LABEL_83;
      }

      if (*a3 <= v34 || *v34 != 18)
      {
        goto LABEL_73;
      }
    }
  }

LABEL_65:
  if (v8)
  {
    v40 = (v8 & 7) == 4;
  }

  else
  {
    v40 = 1;
  }

  if (!v40)
  {
    v41 = *(a1 + 8);
    if (v41)
    {
      v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v42 = sub_11F1920((a1 + 8));
      v7 = *v45;
    }

    v31 = sub_1952690(v8, v42, v7, a3);
    goto LABEL_72;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_83:
  *v45 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v45;
}

char *sub_159CB1C(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 104);
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

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *v6 = 18;
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

      v6 = sub_157E2B0(v13, v15, a3);
    }
  }

  if (v5)
  {
    v6 = sub_128AEEC(a3, 3, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  if ((v5 & 2) != 0)
  {
    v6 = sub_128AEEC(a3, 4, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  v16 = *(a1 + 56);
  if (v16 >= 1)
  {
    v17 = 8;
    do
    {
      v18 = *(*(a1 + 64) + v17);
      v19 = *(v18 + 23);
      if (v19 < 0 && (v19 = v18[1], v19 > 127) || *a3 - v6 + 14 < v19)
      {
        v6 = sub_1957480(a3, 5, v18, v6);
      }

      else
      {
        *v6 = 42;
        v6[1] = v19;
        if (*(v18 + 23) < 0)
        {
          v18 = *v18;
        }

        v20 = v6 + 2;
        memcpy(v20, v18, v19);
        v6 = &v20[v19];
      }

      v17 += 8;
      --v16;
    }

    while (v16);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v21 = *(a1 + 88);
    *v6 = 50;
    v22 = *(v21 + 20);
    v6[1] = v22;
    if (v22 > 0x7F)
    {
      v23 = sub_19575D0(v22, v6 + 1);
    }

    else
    {
      v23 = v6 + 2;
    }

    v6 = sub_159BB8C(v21, v23, a3);
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v24 = *(a1 + 96);
    *v6 = 58;
    v25 = *(v24 + 20);
    v6[1] = v25;
    if (v25 > 0x7F)
    {
      v26 = sub_19575D0(v25, v6 + 1);
    }

    else
    {
      v26 = v6 + 2;
    }

    v6 = sub_159BB8C(v24, v26, a3);
  }

  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return v6;
  }

  v29 = v27 & 0xFFFFFFFFFFFFFFFCLL;
  v30 = *(v29 + 31);
  if (v30 < 0)
  {
    v31 = *(v29 + 8);
    v30 = *(v29 + 16);
  }

  else
  {
    v31 = (v29 + 8);
  }

  if (*a3 - v6 >= v30)
  {
    v32 = v30;
    memcpy(v6, v31, v30);
    v6 += v32;
    return v6;
  }

  return sub_1957130(a3, v31, v30, v6);
}

uint64_t sub_159CE80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v6 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v1 & 0x10) != 0)
  {
    v9 = *(a1 + 104);
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

  return v2;
}

uint64_t sub_159CF50(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x13) != 0)
  {
    v13 = sub_159CE80(a1);
  }

  else
  {
    v2 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    v6 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v9 = (9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6;
    v10 = *(a1 + 104);
    v11 = (9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6;
    if (v10 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 10;
    }

    v13 = v4 + v8 + v5 + v9 + v12 + 3;
  }

  v14 = *(a1 + 32);
  v15 = v13 + v14;
  v16 = *(a1 + 40);
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
      v20 = sub_157E398(v19);
      v15 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      v18 -= 8;
    }

    while (v18);
  }

  v21 = *(a1 + 56);
  v22 = v15 + v21;
  if (v21 >= 1)
  {
    v23 = (*(a1 + 64) + 8);
    do
    {
      v24 = *v23++;
      v25 = *(v24 + 23);
      v26 = *(v24 + 8);
      if ((v25 & 0x80u) == 0)
      {
        v26 = v25;
      }

      v22 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6);
      --v21;
    }

    while (v21);
  }

  v27 = *(a1 + 16);
  if ((v27 & 0xC) != 0)
  {
    if ((v27 & 4) != 0)
    {
      v28 = sub_159C020(*(a1 + 88));
      v22 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v27 & 8) != 0)
    {
      v29 = sub_159C020(*(a1 + 96));
      v22 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v30 = *(a1 + 8);
  if (v30)
  {
    v32 = v30 & 0xFFFFFFFFFFFFFFFCLL;
    v33 = *((v30 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v33 < 0)
    {
      v33 = *(v32 + 16);
    }

    v22 += v33;
  }

  *(a1 + 20) = v22;
  return v22;
}

std::string *sub_159D174(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_15B5C60(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
    result = sub_1201B48(&v3[2], v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
    v12 = LODWORD(v3[2].__r_.__value_.__r.__words[1]) + v9;
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = v12;
    v13 = v3[2].__r_.__value_.__r.__words[2];
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if ((v14 & 0x1F) != 0)
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
      v18 = *(a2 + 80);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
      v19 = v3->__r_.__value_.__l.__size_;
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      result = sub_194EA1C(&v3[3].__r_.__value_.__l.__size_, (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
    }

    if ((v14 & 4) != 0)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
      v22 = v3[3].__r_.__value_.__r.__words[2];
      if (!v22)
      {
        v23 = v3->__r_.__value_.__l.__size_;
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        v22 = sub_15ADBC8(v24);
        v3[3].__r_.__value_.__r.__words[2] = v22;
      }

      if (*(a2 + 88))
      {
        v25 = *(a2 + 88);
      }

      else
      {
        v25 = &off_2778280;
      }

      result = sub_159C208(v22, v25);
      if ((v14 & 8) == 0)
      {
LABEL_18:
        if ((v14 & 0x10) == 0)
        {
LABEL_20:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v14;
          goto LABEL_21;
        }

LABEL_19:
        LODWORD(v3[4].__r_.__value_.__r.__words[1]) = *(a2 + 104);
        goto LABEL_20;
      }
    }

    else if ((v14 & 8) == 0)
    {
      goto LABEL_18;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    data = v3[4].__r_.__value_.__l.__data_;
    if (!data)
    {
      v27 = v3->__r_.__value_.__l.__size_;
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      data = sub_15ADBC8(v28);
      v3[4].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 96))
    {
      v29 = *(a2 + 96);
    }

    else
    {
      v29 = &off_2778280;
    }

    result = sub_159C208(data, v29);
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_21:
  v21 = *(a2 + 8);
  if (v21)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_159D3B4(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x13) != 0)
  {
    return 0;
  }

  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  do
  {
    result = v1 < 1;
    if (v1 < 1)
    {
      break;
    }

    v4 = *(v2 + 8 * v1--);
  }

  while ((~*(v4 + 16) & 3) == 0);
  return result;
}

uint64_t sub_159D40C(uint64_t a1)
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

  if (a1 != &off_2778348)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_15954E4(v6);
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

void sub_159D4D8(uint64_t a1)
{
  sub_159D40C(a1);

  operator delete();
}

uint64_t sub_159D510(uint64_t result)
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
      result = sub_159562C(*(result + 32));
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 32) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_159D5A8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v26 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v26, i) & 1) == 0; i = a3[11].i32[1])
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
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v19 = *(a1 + 32);
      if (!v19)
      {
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_15AD608(v21);
        *(a1 + 32) = v19;
        v6 = *v26;
      }

      v15 = sub_222013C(a3, v19, v6);
    }

    else
    {
      if (v10 != 2)
      {
        if (v10 == 1 && v7 == 8)
        {
          v23 = (v6 + 1);
          v22 = *v6;
          if ((v22 & 0x8000000000000000) == 0)
          {
            goto LABEL_35;
          }

          v24 = *v23;
          v22 = (v24 << 7) + v22 - 128;
          if (v24 < 0)
          {
            *v26 = sub_19587DC(v6, v22);
            if (!*v26)
            {
              goto LABEL_46;
            }
          }

          else
          {
            v23 = (v6 + 2);
LABEL_35:
            *v26 = v23;
          }

          if (v22 > 3)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 40) = v22;
          }

          continue;
        }

LABEL_13:
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
            return *v26;
          }

LABEL_46:
          *v26 = 0;
          return *v26;
        }

        v13 = *(a1 + 8);
        if (v13)
        {
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v14 = sub_11F1920((a1 + 8));
          v6 = *v26;
        }

        v15 = sub_1952690(v7, v14, v6, a3);
        goto LABEL_30;
      }

      if (v7 != 18)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v18 = sub_194DB04((a1 + 24), v17);
      v15 = sub_1958890(v18, *v26, a3);
    }

LABEL_30:
    *v26 = v15;
    if (!v15)
    {
      goto LABEL_46;
    }
  }

  return *v26;
}

char *sub_159D7C0(uint64_t a1, char *__dst, void *a3)
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

  if (v5)
  {
    v6 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 32);
    *v6 = 26;
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

    v6 = sub_1595FC8(v11, v13, a3);
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

uint64_t sub_159D96C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_15;
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
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = sub_159657C(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v8 = *(a1 + 40);
    if (v8 < 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v9;
  }

LABEL_15:
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

std::string *sub_159DA84(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
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
LABEL_6:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        LODWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v9 = v3[1].__r_.__value_.__l.__size_;
    if (!v9)
    {
      v10 = v3->__r_.__value_.__l.__size_;
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      v9 = sub_15AD608(v11);
      v3[1].__r_.__value_.__l.__size_ = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_27780C8;
    }

    result = sub_1596914(v9, v12);
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_159DB94(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  do
  {
    result = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v5 = *(v4 + 8 * v3--);
  }

  while ((~*(v5 + 16) & 3) == 0);
  return result;
}

uint64_t sub_159DBE8(uint64_t a1)
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

  v5 = (a1 + 80);
  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_1956ABC(a1 + 64);
  sub_1956AFC((a1 + 40));
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_159DCA0(uint64_t a1)
{
  sub_159DBE8(a1);

  operator delete();
}

uint64_t sub_159DCD8(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_12A41D0(a1 + 40);
  *(a1 + 64) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
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

  if ((v3 & 0x1E) != 0)
  {
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

uint64_t sub_159DD74(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v56 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, v56, a3[11].i32[1]) & 1) == 0)
  {
    v7 = (a1 + 8);
    do
    {
      v8 = (*v56 + 1);
      v9 = **v56;
      if (**v56 < 0)
      {
        v10 = *v8;
        v11 = v9 + (v10 << 7);
        v9 = v11 - 128;
        if (v10 < 0)
        {
          v8 = sub_1958824(*v56, v11 - 128);
          v9 = v12;
        }

        else
        {
          v8 = (*v56 + 2);
        }
      }

      *v56 = v8;
      v13 = v9 >> 3;
      if (v9 >> 3 > 4)
      {
        if (v9 >> 3 > 6)
        {
          if (v13 == 7)
          {
            if (v9 == 58)
            {
              v42 = v8 - 1;
              while (1)
              {
                v43 = (v42 + 1);
                *v56 = v42 + 1;
                v44 = *(a1 + 56);
                if (v44 && (v45 = *(a1 + 48), v45 < *v44))
                {
                  *(a1 + 48) = v45 + 1;
                  v46 = *&v44[2 * v45 + 2];
                }

                else
                {
                  v47 = *(a1 + 40);
                  if (!v47)
                  {
                    operator new();
                  }

                  *v49 = v48;
                  v49[1] = sub_195A650;
                  *v48 = 0;
                  v48[1] = 0;
                  v48[2] = 0;
                  v46 = sub_19593CC(a1 + 40, v48);
                  v43 = *v56;
                }

                v42 = sub_1958890(v46, v43, a3);
                *v56 = v42;
                if (!v42)
                {
                  goto LABEL_105;
                }

                if (*a3 <= v42 || *v42 != 58)
                {
                  goto LABEL_100;
                }
              }
            }

            goto LABEL_92;
          }

          if (v13 != 8)
          {
LABEL_92:
            if (v9)
            {
              v54 = (v9 & 7) == 4;
            }

            else
            {
              v54 = 1;
            }

            if (v54)
            {
              if (v8)
              {
                a3[10].i32[0] = v9 - 1;
                break;
              }

LABEL_105:
              *v56 = 0;
              break;
            }

            if (*v7)
            {
              v55 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v55 = sub_11F1920((a1 + 8));
              v8 = *v56;
            }

            v37 = sub_1952690(v9, v55, v8, a3);
            goto LABEL_99;
          }

          if (v9 != 64)
          {
            if (v9 != 66)
            {
              goto LABEL_92;
            }

            *&v57 = a1 + 64;
            *(&v57 + 1) = sub_1578F74;
            v58 = a1 + 8;
            v59 = 8;
            v37 = sub_1216588(a3, v8, &v57);
            goto LABEL_99;
          }

          v26 = v8 - 1;
LABEL_45:
          *v56 = v26 + 1;
          v27 = *(v26 + 1);
          v28 = (v26 + 2);
          if (v27 < 0)
          {
            v29 = *v28;
            v30 = (v29 << 7) + v27;
            LODWORD(v27) = v30 - 128;
            if ((v29 & 0x80000000) == 0)
            {
              v28 = (v26 + 3);
              goto LABEL_48;
            }

            *v56 = sub_19587DC(v26 + 1, (v30 - 128));
            if (!*v56)
            {
              goto LABEL_105;
            }

            LODWORD(v27) = v33;
          }

          else
          {
LABEL_48:
            *v56 = v28;
          }

          if (v27 > 0xF)
          {
            sub_13B67EC();
          }

          else
          {
            v31 = *(a1 + 64);
            if (v31 == *(a1 + 68))
            {
              v32 = v31 + 1;
              sub_1958E5C((a1 + 64), v31 + 1);
              *(*(a1 + 72) + 4 * v31) = v27;
            }

            else
            {
              *(*(a1 + 72) + 4 * v31) = v27;
              v32 = v31 + 1;
            }

            *(a1 + 64) = v32;
          }

          v26 = *v56;
          if (*a3 <= *v56 || **v56 != 64)
          {
            continue;
          }

          goto LABEL_45;
        }

        if (v13 == 5)
        {
          if (v9 != 45)
          {
            goto LABEL_92;
          }

          v38 = *v8;
          v15 = v8 + 1;
          v5 |= 8u;
          *(a1 + 100) = v38;
LABEL_66:
          *v56 = v15;
          continue;
        }

        if (v13 != 6 || v9 != 48)
        {
          goto LABEL_92;
        }

        v5 |= 0x10u;
        v18 = v8 + 1;
        v17 = *v8;
        if (v17 < 0)
        {
          v19 = *v18;
          v17 = (v19 << 7) + v17 - 128;
          if (v19 < 0)
          {
            v52 = sub_19587DC(v8, v17);
            *v56 = v52;
            *(a1 + 104) = v53 != 0;
            if (!v52)
            {
              goto LABEL_105;
            }

            continue;
          }

          v18 = v8 + 2;
        }

        *v56 = v18;
        *(a1 + 104) = v17 != 0;
      }

      else
      {
        if (v9 >> 3 <= 2)
        {
          if (v13 != 1)
          {
            if (v13 != 2 || v9 != 21)
            {
              goto LABEL_92;
            }

            v16 = *v8;
            v15 = v8 + 1;
            v5 |= 4u;
            *(a1 + 96) = v16;
            goto LABEL_66;
          }

          if (v9 != 10)
          {
            goto LABEL_92;
          }

          *(a1 + 16) |= 1u;
          v34 = *(a1 + 8);
          v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
          if (v34)
          {
            v35 = *v35;
          }

          v36 = sub_194DB04((a1 + 80), v35);
          v37 = sub_1958890(v36, *v56, a3);
LABEL_99:
          *v56 = v37;
          if (!v37)
          {
            goto LABEL_105;
          }

          continue;
        }

        if (v13 != 3)
        {
          if (v13 == 4)
          {
            if (v9 == 32)
            {
              v20 = v8 - 1;
              while (1)
              {
                *v56 = v20 + 1;
                v21 = v20[1];
                if (v21 < 0)
                {
                  v22 = (v20[2] << 7) + v21;
                  LODWORD(v21) = v22 - 128;
                  if (v20[2] < 0)
                  {
                    v20 = sub_19587DC((v20 + 1), (v22 - 128));
                    LODWORD(v21) = v23;
                  }

                  else
                  {
                    v20 += 3;
                  }
                }

                else
                {
                  v20 += 2;
                }

                *v56 = v20;
                v24 = *(a1 + 24);
                if (v24 == *(a1 + 28))
                {
                  v25 = v24 + 1;
                  sub_1958E5C((a1 + 24), v24 + 1);
                  *(*(a1 + 32) + 4 * v24) = v21;
                  v20 = *v56;
                }

                else
                {
                  *(*(a1 + 32) + 4 * v24) = v21;
                  v25 = v24 + 1;
                }

                *(a1 + 24) = v25;
                if (!v20)
                {
                  goto LABEL_105;
                }

                if (*a3 <= v20 || *v20 != 32)
                {
                  goto LABEL_100;
                }
              }
            }

            if (v9 == 34)
            {
              v37 = sub_1958908((a1 + 24), v8, a3);
              goto LABEL_99;
            }
          }

          goto LABEL_92;
        }

        if (v9 != 24)
        {
          goto LABEL_92;
        }

        v5 |= 2u;
        v40 = v8 + 1;
        v39 = *v8;
        if (v39 < 0)
        {
          v41 = *v40;
          v39 = (v41 << 7) + v39 - 128;
          if (v41 < 0)
          {
            v50 = sub_19587DC(v8, v39);
            *v56 = v50;
            *(a1 + 88) = v51;
            if (!v50)
            {
              goto LABEL_105;
            }

            continue;
          }

          v40 = v8 + 2;
        }

        *v56 = v40;
        *(a1 + 88) = v39;
      }

LABEL_100:
      ;
    }

    while ((sub_195ADC0(a3, v56, a3[11].i32[1]) & 1) == 0);
  }

  *(a1 + 16) |= v5;
  return *v56;
}

char *sub_159E30C(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 96);
    *v4 = 21;
    *(v4 + 1) = v8;
    v4 += 5;
    if ((v6 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, a2);
  if ((v6 & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 2) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_16;
  }

LABEL_9:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 88);
  *v4 = 24;
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

LABEL_16:
  v13 = *(a1 + 24);
  if (v13 < 1)
  {
    v16 = v7;
  }

  else
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v15 = *(*(a1 + 32) + 4 * i);
      *v7 = 32;
      v7[1] = v15;
      if (v15 > 0x7F)
      {
        v7[1] = v15 | 0x80;
        v17 = v15 >> 7;
        v7[2] = v15 >> 7;
        v16 = v7 + 3;
        if (v15 >= 0x4000)
        {
          LOBYTE(v18) = v7[2];
          do
          {
            *(v16 - 1) = v18 | 0x80;
            v18 = v17 >> 7;
            *v16++ = v17 >> 7;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
        }
      }

      else
      {
        v16 = v7 + 2;
      }

      v7 = v16;
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v20 = *(a1 + 100);
    *v16 = 45;
    *(v16 + 1) = v20;
    v16 += 5;
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v21 = *(a1 + 104);
    *v16 = 48;
    v16[1] = v21;
    v16 += 2;
  }

  v22 = *(a1 + 48);
  if (v22 >= 1)
  {
    v23 = 8;
    do
    {
      v24 = *(*(a1 + 56) + v23);
      v25 = *(v24 + 23);
      if (v25 < 0 && (v25 = v24[1], v25 > 127) || *a3 - v16 + 14 < v25)
      {
        v16 = sub_1957480(a3, 7, v24, v16);
      }

      else
      {
        *v16 = 58;
        v16[1] = v25;
        if (*(v24 + 23) < 0)
        {
          v24 = *v24;
        }

        v26 = v16 + 2;
        memcpy(v16 + 2, v24, v25);
        v16 = &v26[v25];
      }

      v23 += 8;
      --v22;
    }

    while (v22);
  }

  v27 = *(a1 + 64);
  if (v27 < 1)
  {
    v30 = v16;
  }

  else
  {
    for (j = 0; j != v27; ++j)
    {
      if (*a3 <= v16)
      {
        v16 = sub_225EB68(a3, v16);
      }

      v29 = *(*(a1 + 72) + 4 * j);
      *v16 = 64;
      v16[1] = v29;
      if (v29 > 0x7F)
      {
        v16[1] = v29 | 0x80;
        v31 = v29 >> 7;
        v16[2] = v29 >> 7;
        v30 = v16 + 3;
        if (v29 >= 0x4000)
        {
          LOBYTE(v32) = v16[2];
          do
          {
            *(v30 - 1) = v32 | 0x80;
            v32 = v31 >> 7;
            *v30++ = v31 >> 7;
            v33 = v31 >> 14;
            v31 >>= 7;
          }

          while (v33);
        }
      }

      else
      {
        v30 = v16 + 2;
      }

      v16 = v30;
    }
  }

  v34 = *(a1 + 8);
  if ((v34 & 1) == 0)
  {
    return v30;
  }

  v36 = v34 & 0xFFFFFFFFFFFFFFFCLL;
  v37 = *(v36 + 31);
  if (v37 < 0)
  {
    v38 = *(v36 + 8);
    v37 = *(v36 + 16);
  }

  else
  {
    v38 = (v36 + 8);
  }

  if (*a3 - v30 >= v37)
  {
    v39 = v37;
    memcpy(v30, v38, v37);
    v30 += v39;
    return v30;
  }

  return sub_1957130(a3, v38, v37, v30);
}

uint64_t sub_159E700(uint64_t a1)
{
  v2 = sub_1959E04((a1 + 24));
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

  v9 = *(a1 + 64);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(*(a1 + 72) + 4 * v10);
      if (v12 < 0)
      {
        v13 = 10;
      }

      else
      {
        v13 = (9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6;
      }

      v11 += v13;
      ++v10;
    }

    while (v9 != v10);
  }

  else
  {
    v11 = 0;
  }

  result = v4 + v9 + v11;
  v15 = *(a1 + 16);
  if ((v15 & 0x1F) != 0)
  {
    if (v15)
    {
      v16 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
      v17 = *(v16 + 23);
      v18 = *(v16 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v18 = v17;
      }

      result += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v15 & 2) != 0)
    {
      result += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    v19 = result + 5;
    if ((v15 & 4) == 0)
    {
      v19 = result;
    }

    if ((v15 & 8) != 0)
    {
      v19 += 5;
    }

    result = v19 + ((v15 >> 3) & 2);
  }

  v20 = *(a1 + 8);
  if (v20)
  {
    v21 = v20 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v20 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    result += v22;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_159E8A4(std::string *result, uint64_t a2)
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
    v9 = *(a2 + 56);
    v10 = sub_19592E8(&v3[1].__r_.__value_.__r.__words[2], *(a2 + 48));
    result = sub_1201B48(&v3[1].__r_.__value_.__r.__words[2], v10, (v9 + 8), v8, *v3[2].__r_.__value_.__l.__size_ - LODWORD(v3[2].__r_.__value_.__l.__data_));
    v11 = LODWORD(v3[2].__r_.__value_.__l.__data_) + v8;
    LODWORD(v3[2].__r_.__value_.__l.__data_) = v11;
    v12 = v3[2].__r_.__value_.__l.__size_;
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 64);
  if (v13)
  {
    v14 = SLODWORD(v3[2].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[2].__r_.__value_.__r.__words[2], v14 + v13);
    data = v3[3].__r_.__value_.__l.__data_;
    LODWORD(v3[2].__r_.__value_.__r.__words[2]) += *(a2 + 64);
    result = memcpy(&data[4 * v14], *(a2 + 72), 4 * *(a2 + 64));
  }

  v16 = *(a2 + 16);
  if ((v16 & 0x1F) != 0)
  {
    if (v16)
    {
      v18 = *(a2 + 80);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v19 = v3->__r_.__value_.__l.__size_;
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      result = sub_194EA1C(&v3[3].__r_.__value_.__l.__size_, (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
      if ((v16 & 2) == 0)
      {
LABEL_11:
        if ((v16 & 4) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_24;
      }
    }

    else if ((v16 & 2) == 0)
    {
      goto LABEL_11;
    }

    v3[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
    if ((v16 & 4) == 0)
    {
LABEL_12:
      if ((v16 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }

LABEL_24:
    LODWORD(v3[4].__r_.__value_.__l.__data_) = *(a2 + 96);
    if ((v16 & 8) == 0)
    {
LABEL_13:
      if ((v16 & 0x10) == 0)
      {
LABEL_15:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v16;
        goto LABEL_16;
      }

LABEL_14:
      v3[4].__r_.__value_.__s.__data_[8] = *(a2 + 104);
      goto LABEL_15;
    }

LABEL_25:
    HIDWORD(v3[4].__r_.__value_.__r.__words[0]) = *(a2 + 100);
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
  v17 = *(a2 + 8);
  if (v17)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_159EA90(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_13;
    }
  }

  else if (v4)
  {
    goto LABEL_13;
  }

  v5 = (a1 + 112);
  if (*(a1 + 112) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 120) != &qword_278E990)
  {
    sub_194E89C((a1 + 120));
  }

  if (*(a1 + 128) != &qword_278E990)
  {
    sub_194E89C((a1 + 128));
  }

  if (*(a1 + 136) != &qword_278E990)
  {
    sub_194E89C((a1 + 136));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_13:
  sub_15B4A3C((a1 + 88));
  sub_1311EE8((a1 + 64));
  sub_1956AFC((a1 + 40));
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_159EB98(uint64_t a1)
{
  sub_159EA90(a1);

  operator delete();
}

uint64_t sub_159EBD0(uint64_t a1)
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
      result = sub_1579070(v5);
      --v3;
    }

    while (v3);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 96);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 104) + 8);
    do
    {
      v8 = *v7++;
      result = sub_157EBD8(v8);
      --v6;
    }

    while (v6);
    *(a1 + 96) = 0;
  }

  v9 = *(a1 + 16);
  if ((v9 & 0xF) != 0)
  {
    if ((v9 & 1) == 0)
    {
      if ((v9 & 2) == 0)
      {
        goto LABEL_12;
      }

LABEL_19:
      v11 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v11 + 23) < 0)
      {
        **v11 = 0;
        *(v11 + 8) = 0;
        if ((v9 & 4) != 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        *v11 = 0;
        *(v11 + 23) = 0;
        if ((v9 & 4) != 0)
        {
          goto LABEL_23;
        }
      }

LABEL_13:
      if ((v9 & 8) == 0)
      {
        goto LABEL_30;
      }

LABEL_27:
      v13 = *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v13 + 23) < 0)
      {
        **v13 = 0;
        *(v13 + 8) = 0;
      }

      else
      {
        *v13 = 0;
        *(v13 + 23) = 0;
      }

      goto LABEL_30;
    }

    v10 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v9 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v9 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_12:
    if ((v9 & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_23:
    v12 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
      if ((v9 & 8) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
      if ((v9 & 8) == 0)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_27;
  }

LABEL_30:
  if ((v9 & 0xF0) != 0)
  {
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
  }

  if ((v9 & 0xFF00) != 0)
  {
    *(a1 + 212) = 0;
    *(a1 + 196) = 0u;
    *(a1 + 180) = 0u;
    *(a1 + 164) = 0u;
    *(a1 + 216) = 0x7FEFFFFFFFFFFFFFLL;
  }

  v15 = *(a1 + 8);
  v14 = a1 + 8;
  *(v14 + 216) = 0x7FEFFFFFFFFFFFFFLL;
  *(v14 + 8) = 0;
  if (v15)
  {

    return sub_1957EA8(v14);
  }

  return result;
}

uint64_t sub_159ED98(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v92 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v92, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (2)
  {
    v8 = (*v92 + 1);
    v9 = **v92;
    if (**v92 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(*v92, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = (*v92 + 2);
      }
    }

    *v92 = v8;
    switch(v9 >> 3)
    {
      case 1u:
        if (v9 != 10)
        {
          goto LABEL_144;
        }

        *(a1 + 16) |= 1u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 112);
        goto LABEL_69;
      case 2u:
        if (v9 != 18)
        {
          goto LABEL_144;
        }

        *(a1 + 16) |= 2u;
        v43 = *(a1 + 8);
        v14 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
        if (v43)
        {
          v14 = *v14;
        }

        v15 = (a1 + 120);
        goto LABEL_69;
      case 3u:
        if (v9 != 24)
        {
          goto LABEL_144;
        }

        v5 |= 0x10u;
        LODWORD(v36) = *v8;
        if ((v36 & 0x80000000) == 0)
        {
          v37 = v8 + 1;
LABEL_127:
          *v92 = v37;
          *(a1 + 144) = v36;
          goto LABEL_113;
        }

        v36 = (v8[1] << 7) + v36 - 128;
        if ((v8[1] & 0x80000000) == 0)
        {
          v37 = v8 + 2;
          goto LABEL_127;
        }

        v82 = sub_19587DC(v8, v36);
        *v92 = v82;
        *(a1 + 144) = v83;
        if (!v82)
        {
          goto LABEL_154;
        }

        goto LABEL_113;
      case 4u:
        if (v9 != 34)
        {
          goto LABEL_144;
        }

        *(a1 + 16) |= 4u;
        v41 = *(a1 + 8);
        v14 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
        if (v41)
        {
          v14 = *v14;
        }

        v15 = (a1 + 128);
        goto LABEL_69;
      case 5u:
        if (v9 != 40)
        {
          goto LABEL_144;
        }

        v5 |= 0x40u;
        v30 = v8 + 1;
        v29 = *v8;
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_41;
        }

        v31 = *v30;
        v29 = (v31 << 7) + v29 - 128;
        if (v31 < 0)
        {
          v78 = sub_19587DC(v8, v29);
          *v92 = v78;
          *(a1 + 152) = v79;
          if (!v78)
          {
            goto LABEL_154;
          }
        }

        else
        {
          v30 = v8 + 2;
LABEL_41:
          *v92 = v30;
          *(a1 + 152) = v29;
        }

        goto LABEL_113;
      case 6u:
        if (v9 != 53)
        {
          goto LABEL_144;
        }

        v57 = *v8;
        v19 = v8 + 4;
        v5 |= 0x20u;
        *(a1 + 148) = v57;
        goto LABEL_112;
      case 7u:
        if (v9 != 61)
        {
          goto LABEL_144;
        }

        v59 = *v8;
        v19 = v8 + 4;
        v5 |= 0x80u;
        *(a1 + 160) = v59;
        goto LABEL_112;
      case 8u:
        if (v9 != 65)
        {
          goto LABEL_144;
        }

        v42 = *v8;
        v19 = v8 + 8;
        v5 |= 0x8000u;
        *(a1 + 216) = v42;
        goto LABEL_112;
      case 9u:
        if (v9 != 73)
        {
          goto LABEL_144;
        }

        v69 = *v8;
        v19 = v8 + 8;
        v5 |= 0x10000u;
        *(a1 + 224) = v69;
        goto LABEL_112;
      case 0xAu:
        if (v9 != 82)
        {
          goto LABEL_144;
        }

        *(a1 + 16) |= 8u;
        v35 = *(a1 + 8);
        v14 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
        if (v35)
        {
          v14 = *v14;
        }

        v15 = (a1 + 136);
LABEL_69:
        v44 = sub_194DB04(v15, v14);
        v45 = sub_1958890(v44, *v92, a3);
        goto LABEL_70;
      case 0xBu:
        if (v9 != 88)
        {
          goto LABEL_144;
        }

        v5 |= 0x200u;
        v67 = v8 + 1;
        v66 = *v8;
        if ((v66 & 0x8000000000000000) == 0)
        {
          goto LABEL_109;
        }

        v68 = *v67;
        v66 = (v68 << 7) + v66 - 128;
        if (v68 < 0)
        {
          v88 = sub_19587DC(v8, v66);
          *v92 = v88;
          *(a1 + 168) = v89;
          if (!v88)
          {
            goto LABEL_154;
          }
        }

        else
        {
          v67 = v8 + 2;
LABEL_109:
          *v92 = v67;
          *(a1 + 168) = v66;
        }

        goto LABEL_113;
      case 0xCu:
        if (v9 == 96)
        {
          v21 = (v8 - 1);
          while (1)
          {
            *v92 = v21 + 1;
            v22 = *(v21 + 1);
            v23 = (v21 + 2);
            if (v22 < 0)
            {
              v24 = *v23;
              v25 = (v24 << 7) + v22;
              LODWORD(v22) = v25 - 128;
              if (v24 < 0)
              {
                *v92 = sub_19587DC(v21 + 1, (v25 - 128));
                if (!*v92)
                {
                  goto LABEL_154;
                }

                LODWORD(v22) = v28;
                goto LABEL_26;
              }

              v23 = (v21 + 3);
            }

            *v92 = v23;
LABEL_26:
            if (v22 > 0xF)
            {
              sub_1348EB8();
            }

            else
            {
              v26 = *(a1 + 24);
              if (v26 == *(a1 + 28))
              {
                v27 = v26 + 1;
                sub_1958E5C((a1 + 24), v26 + 1);
                *(*(a1 + 32) + 4 * v26) = v22;
              }

              else
              {
                *(*(a1 + 32) + 4 * v26) = v22;
                v27 = v26 + 1;
              }

              *(a1 + 24) = v27;
            }

            v21 = *v92;
            if (*a3 <= *v92 || **v92 != 96)
            {
              goto LABEL_113;
            }
          }
        }

        if (v9 == 98)
        {
          *&v93 = a1 + 24;
          *(&v93 + 1) = sub_1578F74;
          v94 = a1 + 8;
          v95 = 12;
          v45 = sub_1216588(a3, v8, &v93);
          goto LABEL_70;
        }

LABEL_144:
        if (v9)
        {
          v90 = (v9 & 7) == 4;
        }

        else
        {
          v90 = 1;
        }

        if (!v90)
        {
          if (*v7)
          {
            v91 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v91 = sub_11F1920((a1 + 8));
            v8 = *v92;
          }

          v45 = sub_1952690(v9, v91, v8, a3);
LABEL_70:
          *v92 = v45;
          if (!v45)
          {
            goto LABEL_154;
          }

LABEL_113:
          if (sub_195ADC0(a3, v92, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

        if (v8)
        {
          a3[10].i32[0] = v9 - 1;
        }

        else
        {
LABEL_154:
          *v92 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v92;
      case 0xDu:
        if (v9 != 104)
        {
          goto LABEL_144;
        }

        v5 |= 0x100u;
        v33 = v8 + 1;
        v32 = *v8;
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_46;
        }

        v34 = *v33;
        v32 = (v34 << 7) + v32 - 128;
        if (v34 < 0)
        {
          v80 = sub_19587DC(v8, v32);
          *v92 = v80;
          *(a1 + 164) = v81 != 0;
          if (!v80)
          {
            goto LABEL_154;
          }
        }

        else
        {
          v33 = v8 + 2;
LABEL_46:
          *v92 = v33;
          *(a1 + 164) = v32 != 0;
        }

        goto LABEL_113;
      case 0xEu:
        if (v9 != 113)
        {
          goto LABEL_144;
        }

        v58 = *v8;
        v19 = v8 + 8;
        v5 |= 0x400u;
        *(a1 + 176) = v58;
        goto LABEL_112;
      case 0xFu:
        if (v9 != 121)
        {
          goto LABEL_144;
        }

        v20 = *v8;
        v19 = v8 + 8;
        v5 |= 0x800u;
        *(a1 + 184) = v20;
LABEL_112:
        *v92 = v19;
        goto LABEL_113;
      case 0x10u:
        if (v9 != 128)
        {
          goto LABEL_144;
        }

        v5 |= 0x1000u;
        v39 = v8 + 1;
        v38 = *v8;
        if ((v38 & 0x8000000000000000) == 0)
        {
          goto LABEL_58;
        }

        v40 = *v39;
        v38 = (v40 << 7) + v38 - 128;
        if (v40 < 0)
        {
          v84 = sub_19587DC(v8, v38);
          *v92 = v84;
          *(a1 + 192) = v85;
          if (!v84)
          {
            goto LABEL_154;
          }
        }

        else
        {
          v39 = v8 + 2;
LABEL_58:
          *v92 = v39;
          *(a1 + 192) = v38;
        }

        goto LABEL_113;
      case 0x11u:
        if (v9 != 136)
        {
          goto LABEL_144;
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
          v76 = sub_19587DC(v8, v16);
          *v92 = v76;
          *(a1 + 200) = v77;
          if (!v76)
          {
            goto LABEL_154;
          }
        }

        else
        {
          v17 = v8 + 2;
LABEL_17:
          *v92 = v17;
          *(a1 + 200) = v16;
        }

        goto LABEL_113;
      case 0x12u:
        if (v9 != 146)
        {
          goto LABEL_144;
        }

        v46 = v8 - 2;
        while (1)
        {
          v47 = (v46 + 2);
          *v92 = v46 + 2;
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
            v47 = *v92;
          }

          v46 = sub_1958890(v50, v47, a3);
          *v92 = v46;
          if (!v46)
          {
            goto LABEL_154;
          }

          if (*a3 <= v46 || *v46 != 402)
          {
            goto LABEL_113;
          }
        }

      case 0x13u:
        if (v9 != 154)
        {
          goto LABEL_144;
        }

        v60 = v8 - 2;
        while (1)
        {
          v61 = (v60 + 2);
          *v92 = v60 + 2;
          v62 = *(a1 + 80);
          if (v62 && (v63 = *(a1 + 72), v63 < *v62))
          {
            *(a1 + 72) = v63 + 1;
            v64 = *&v62[2 * v63 + 2];
          }

          else
          {
            v65 = sub_157B674(*(a1 + 64));
            v64 = sub_19593CC(a1 + 64, v65);
            v61 = *v92;
          }

          v60 = sub_21F8DA8(a3, v64, v61);
          *v92 = v60;
          if (!v60)
          {
            goto LABEL_154;
          }

          if (*a3 <= v60 || *v60 != 410)
          {
            goto LABEL_113;
          }
        }

      case 0x14u:
        if (v9 != 162)
        {
          goto LABEL_144;
        }

        v70 = v8 - 2;
        while (1)
        {
          v71 = (v70 + 2);
          *v92 = v70 + 2;
          v72 = *(a1 + 104);
          if (v72 && (v73 = *(a1 + 96), v73 < *v72))
          {
            *(a1 + 96) = v73 + 1;
            v74 = *&v72[2 * v73 + 2];
          }

          else
          {
            v75 = sub_15AC274(*(a1 + 88));
            v74 = sub_19593CC(a1 + 88, v75);
            v71 = *v92;
          }

          v70 = sub_221EC6C(a3, v74, v71);
          *v92 = v70;
          if (!v70)
          {
            goto LABEL_154;
          }

          if (*a3 <= v70 || *v70 != 418)
          {
            goto LABEL_113;
          }
        }

      case 0x15u:
        if (v9 != 168)
        {
          goto LABEL_144;
        }

        v5 |= 0x4000u;
        v55 = v8 + 1;
        v54 = *v8;
        if ((v54 & 0x8000000000000000) == 0)
        {
          goto LABEL_88;
        }

        v56 = *v55;
        v54 = (v56 << 7) + v54 - 128;
        if (v56 < 0)
        {
          v86 = sub_19587DC(v8, v54);
          *v92 = v86;
          *(a1 + 208) = v87;
          if (!v86)
          {
            goto LABEL_154;
          }
        }

        else
        {
          v55 = v8 + 2;
LABEL_88:
          *v92 = v55;
          *(a1 + 208) = v54;
        }

        goto LABEL_113;
      default:
        goto LABEL_144;
    }
  }
}

char *sub_159F678(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = sub_128AEEC(a3, 2, *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL, a2);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 0x10) == 0)
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

  v8 = *(a1 + 144);
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
  if ((v6 & 4) != 0)
  {
    v7 = sub_128AEEC(a3, 4, *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL, v7);
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 152);
    *v7 = 40;
    v7[1] = v13;
    if (v13 > 0x7F)
    {
      v7[1] = v13 | 0x80;
      v14 = v13 >> 7;
      v7[2] = v13 >> 7;
      v12 = v7 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v7) = v7[2];
        do
        {
          *(v12 - 1) = v7 | 0x80;
          v7 = (v14 >> 7);
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v12 = v7 + 2;
    }
  }

  else
  {
    v12 = v7;
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v17 = *(a1 + 148);
    *v12 = 53;
    *(v12 + 1) = v17;
    v12 += 5;
    if ((v6 & 0x80) == 0)
    {
LABEL_27:
      if ((v6 & 0x8000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_38;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_27;
  }

  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v18 = *(a1 + 160);
  *v12 = 61;
  *(v12 + 1) = v18;
  v12 += 5;
  if ((v6 & 0x8000) == 0)
  {
LABEL_28:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_41;
  }

LABEL_38:
  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v19 = *(a1 + 216);
  *v12 = 65;
  *(v12 + 1) = v19;
  v12 += 9;
  if ((v6 & 0x10000) == 0)
  {
LABEL_29:
    if ((v6 & 8) == 0)
    {
      goto LABEL_30;
    }

LABEL_44:
    v12 = sub_128AEEC(a3, 10, *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL, v12);
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_45;
  }

LABEL_41:
  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v20 = *(a1 + 224);
  *v12 = 73;
  *(v12 + 1) = v20;
  v12 += 9;
  if ((v6 & 8) != 0)
  {
    goto LABEL_44;
  }

LABEL_30:
  if ((v6 & 0x200) == 0)
  {
LABEL_31:
    v16 = v12;
    goto LABEL_52;
  }

LABEL_45:
  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v21 = *(a1 + 168);
  *v12 = 88;
  v12[1] = v21;
  if (v21 > 0x7F)
  {
    v12[1] = v21 | 0x80;
    v22 = v21 >> 7;
    v12[2] = v21 >> 7;
    v16 = v12 + 3;
    if (v21 >= 0x4000)
    {
      LOBYTE(v23) = v12[2];
      do
      {
        *(v16 - 1) = v23 | 0x80;
        v23 = v22 >> 7;
        *v16++ = v22 >> 7;
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
    }
  }

  else
  {
    v16 = v12 + 2;
  }

LABEL_52:
  v25 = *(a1 + 24);
  if (v25 < 1)
  {
    v28 = v16;
  }

  else
  {
    for (i = 0; i != v25; ++i)
    {
      if (*a3 <= v16)
      {
        v16 = sub_225EB68(a3, v16);
      }

      v27 = *(*(a1 + 32) + 4 * i);
      *v16 = 96;
      v16[1] = v27;
      if (v27 > 0x7F)
      {
        v16[1] = v27 | 0x80;
        v29 = v27 >> 7;
        v16[2] = v27 >> 7;
        v28 = v16 + 3;
        if (v27 >= 0x4000)
        {
          LOBYTE(v16) = v16[2];
          do
          {
            *(v28 - 1) = v16 | 0x80;
            v16 = (v29 >> 7);
            *v28++ = v29 >> 7;
            v30 = v29 >> 14;
            v29 >>= 7;
          }

          while (v30);
        }
      }

      else
      {
        v28 = v16 + 2;
      }

      v16 = v28;
    }
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v32 = *(a1 + 164);
    *v28 = 104;
    v28[1] = v32;
    v28 += 2;
    if ((v6 & 0x400) == 0)
    {
LABEL_66:
      if ((v6 & 0x800) == 0)
      {
        goto LABEL_67;
      }

LABEL_75:
      if (*a3 <= v28)
      {
        v28 = sub_225EB68(a3, v28);
      }

      v34 = *(a1 + 184);
      *v28 = 121;
      *(v28 + 1) = v34;
      v28 += 9;
      if ((v6 & 0x1000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_78;
    }
  }

  else if ((v6 & 0x400) == 0)
  {
    goto LABEL_66;
  }

  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v33 = *(a1 + 176);
  *v28 = 113;
  *(v28 + 1) = v33;
  v28 += 9;
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_75;
  }

LABEL_67:
  if ((v6 & 0x1000) == 0)
  {
LABEL_68:
    v31 = v28;
    goto LABEL_85;
  }

LABEL_78:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v35 = *(a1 + 192);
  *v28 = 384;
  v28[2] = v35;
  if (v35 > 0x7F)
  {
    v28[2] = v35 | 0x80;
    v36 = v35 >> 7;
    v28[3] = v35 >> 7;
    v31 = v28 + 4;
    if (v35 >= 0x4000)
    {
      LOBYTE(v37) = v28[3];
      do
      {
        *(v31 - 1) = v37 | 0x80;
        v37 = v36 >> 7;
        *v31++ = v36 >> 7;
        v38 = v36 >> 14;
        v36 >>= 7;
      }

      while (v38);
    }
  }

  else
  {
    v31 = v28 + 3;
  }

LABEL_85:
  if ((v6 & 0x2000) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v40 = *(a1 + 200);
    *v31 = 392;
    v31[2] = v40;
    if (v40 > 0x7F)
    {
      v31[2] = v40 | 0x80;
      v41 = v40 >> 7;
      v31[3] = v40 >> 7;
      v39 = v31 + 4;
      if (v40 >= 0x4000)
      {
        LOBYTE(v31) = v31[3];
        do
        {
          *(v39 - 1) = v31 | 0x80;
          v31 = (v41 >> 7);
          *v39++ = v41 >> 7;
          v42 = v41 >> 14;
          v41 >>= 7;
        }

        while (v42);
      }
    }

    else
    {
      v39 = v31 + 3;
    }
  }

  else
  {
    v39 = v31;
  }

  v43 = *(a1 + 48);
  if (v43 >= 1)
  {
    v44 = 8;
    do
    {
      v45 = *(*(a1 + 56) + v44);
      v46 = *(v45 + 23);
      if (v46 < 0 && (v46 = v45[1], v46 > 127) || *a3 - v39 + 13 < v46)
      {
        v39 = sub_1957480(a3, 18, v45, v39);
      }

      else
      {
        *v39 = 402;
        v39[2] = v46;
        if (*(v45 + 23) < 0)
        {
          v45 = *v45;
        }

        v47 = v39 + 3;
        memcpy(v39 + 3, v45, v46);
        v39 = &v47[v46];
      }

      v44 += 8;
      --v43;
    }

    while (v43);
  }

  v48 = *(a1 + 72);
  if (v48)
  {
    for (j = 0; j != v48; ++j)
    {
      if (*a3 <= v39)
      {
        v39 = sub_225EB68(a3, v39);
      }

      v50 = *(*(a1 + 80) + 8 * j + 8);
      *v39 = 410;
      v51 = *(v50 + 20);
      v39[2] = v51;
      if (v51 > 0x7F)
      {
        v52 = sub_19575D0(v51, v39 + 2);
      }

      else
      {
        v52 = v39 + 3;
      }

      v39 = sub_157926C(v50, v52, a3);
    }
  }

  v53 = *(a1 + 96);
  if (v53)
  {
    for (k = 0; k != v53; ++k)
    {
      if (*a3 <= v39)
      {
        v39 = sub_225EB68(a3, v39);
      }

      v55 = *(*(a1 + 104) + 8 * k + 8);
      *v39 = 418;
      v56 = *(v55 + 20);
      v39[2] = v56;
      if (v56 > 0x7F)
      {
        v57 = sub_19575D0(v56, v39 + 2);
      }

      else
      {
        v57 = v39 + 3;
      }

      v39 = sub_157EE74(v55, v57, a3);
    }
  }

  if ((v6 & 0x4000) != 0)
  {
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v59 = *(a1 + 208);
    *v39 = 424;
    v39[2] = v59;
    if (v59 > 0x7F)
    {
      v39[2] = v59 | 0x80;
      v60 = v59 >> 7;
      v39[3] = v59 >> 7;
      v58 = v39 + 4;
      if (v59 >= 0x4000)
      {
        LOBYTE(v61) = v39[3];
        do
        {
          *(v58 - 1) = v61 | 0x80;
          v61 = v60 >> 7;
          *v58++ = v60 >> 7;
          v62 = v60 >> 14;
          v60 >>= 7;
        }

        while (v62);
      }
    }

    else
    {
      v58 = v39 + 3;
    }
  }

  else
  {
    v58 = v39;
  }

  v63 = *(a1 + 8);
  if ((v63 & 1) == 0)
  {
    return v58;
  }

  v65 = v63 & 0xFFFFFFFFFFFFFFFCLL;
  v66 = *(v65 + 31);
  if (v66 < 0)
  {
    v67 = *(v65 + 8);
    v66 = *(v65 + 16);
  }

  else
  {
    v67 = (v65 + 8);
  }

  if (*a3 - v58 >= v66)
  {
    v68 = v66;
    memcpy(v58, v67, v66);
    v58 += v68;
    return v58;
  }

  return sub_1957130(a3, v67, v66, v58);
}

uint64_t sub_159FEC0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 32) + 4 * v4);
      if (v5 < 0)
      {
        v6 = 10;
      }

      else
      {
        v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
      }

      v3 += v6;
      ++v4;
    }

    while (v2 != v4);
  }

  else
  {
    v3 = 0;
  }

  v7 = v3 + v2;
  v8 = *(a1 + 48);
  v9 = v7 + 2 * v8;
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
  v15 = v9 + 2 * v14;
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
      v20 = sub_1579354(v19);
      v15 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      v18 -= 8;
    }

    while (v18);
  }

  v21 = *(a1 + 96);
  v22 = v15 + 2 * v21;
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
      v27 = sub_157F044(v26);
      v22 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6);
      v25 -= 8;
    }

    while (v25);
  }

  v28 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (v28)
    {
      v36 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
      v37 = *(v36 + 23);
      v38 = *(v36 + 8);
      if ((v37 & 0x80u) == 0)
      {
        v38 = v37;
      }

      v22 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v28 & 2) == 0)
      {
LABEL_29:
        if ((v28 & 4) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_68;
      }
    }

    else if ((v28 & 2) == 0)
    {
      goto LABEL_29;
    }

    v39 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
    v40 = *(v39 + 23);
    v41 = *(v39 + 8);
    if ((v40 & 0x80u) == 0)
    {
      v41 = v40;
    }

    v22 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v28 & 4) == 0)
    {
LABEL_30:
      if ((v28 & 8) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_71;
    }

LABEL_68:
    v42 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
    v43 = *(v42 + 23);
    v44 = *(v42 + 8);
    if ((v43 & 0x80u) == 0)
    {
      v44 = v43;
    }

    v22 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v28 & 8) == 0)
    {
LABEL_31:
      if ((v28 & 0x10) == 0)
      {
LABEL_36:
        v32 = v22 + 5;
        if ((v28 & 0x20) == 0)
        {
          v32 = v22;
        }

        if ((v28 & 0x40) != 0)
        {
          v32 += ((9 * (__clz(*(a1 + 152) | 1) ^ 0x3F) + 73) >> 6) + 1;
        }

        if ((v28 & 0x80) != 0)
        {
          v22 = v32 + 5;
        }

        else
        {
          v22 = v32;
        }

        goto LABEL_43;
      }

LABEL_32:
      v29 = *(a1 + 144);
      v30 = ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v29 >= 0)
      {
        v31 = v30;
      }

      else
      {
        v31 = 11;
      }

      v22 += v31;
      goto LABEL_36;
    }

LABEL_71:
    v45 = *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL;
    v46 = *(v45 + 23);
    v47 = *(v45 + 8);
    if ((v46 & 0x80u) == 0)
    {
      v47 = v46;
    }

    v22 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v28 & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

LABEL_43:
  if ((v28 & 0xFF00) != 0)
  {
    v33 = v22 + ((v28 >> 7) & 2);
    if ((v28 & 0x200) != 0)
    {
      v33 += ((9 * (__clz(*(a1 + 168) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v28 & 0x400) != 0)
    {
      v33 += 9;
    }

    if ((v28 & 0x800) != 0)
    {
      v33 += 9;
    }

    if ((v28 & 0x1000) != 0)
    {
      v33 += ((9 * (__clz(*(a1 + 192) | 1) ^ 0x3F) + 73) >> 6) + 2;
      if ((v28 & 0x2000) == 0)
      {
LABEL_52:
        if ((v28 & 0x4000) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }
    }

    else if ((v28 & 0x2000) == 0)
    {
      goto LABEL_52;
    }

    v33 += ((9 * (__clz(*(a1 + 200) | 1) ^ 0x3F) + 73) >> 6) + 2;
    if ((v28 & 0x4000) == 0)
    {
LABEL_54:
      if ((v28 & 0x8000) != 0)
      {
        v22 = v33 + 9;
      }

      else
      {
        v22 = v33;
      }

      goto LABEL_57;
    }

LABEL_53:
    v33 += ((9 * (__clz(*(a1 + 208) | 1) ^ 0x3F) + 73) >> 6) + 2;
    goto LABEL_54;
  }

LABEL_57:
  if ((v28 & 0x10000) != 0)
  {
    result = v22 + 9;
  }

  else
  {
    result = v22;
  }

  v35 = *(a1 + 8);
  if (v35)
  {
    v48 = v35 & 0xFFFFFFFFFFFFFFFCLL;
    v49 = *((v35 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v49 < 0)
    {
      v49 = *(v48 + 16);
    }

    result += v49;
  }

  *(a1 + 20) = result;
  return result;
}