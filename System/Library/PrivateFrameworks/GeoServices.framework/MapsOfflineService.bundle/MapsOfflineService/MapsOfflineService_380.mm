void sub_158E22C(void *a1)
{
  sub_158E1B8(a1);

  operator delete();
}

uint64_t sub_158E264(uint64_t a1)
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

char *sub_158E28C(uint64_t a1, char *a2, int32x2_t *a3)
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
      if (v7 == 17)
      {
        *(a1 + 24) = *v6;
        v18 = v6 + 8;
        v5 = 1;
        goto LABEL_27;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 8)
    {
      v15 = v6 + 1;
      v14 = *v6;
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      v16 = *v15;
      v14 = (v16 << 7) + v14 - 128;
      if (v16 < 0)
      {
        v18 = sub_19587DC(v6, v14);
        if (!v18)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v15 = v6 + 2;
LABEL_24:
        v18 = v15;
      }

      if (v14 > 0xD)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 32) = v14;
      }

      goto LABEL_27;
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

char *sub_158E448(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_158E5A8(uint64_t a1)
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

void *sub_158E644(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_15B4DD8(a1 + 6);
  sub_15B4D54(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_158E6D0(void *a1)
{
  sub_158E644(a1);

  operator delete();
}

uint64_t sub_158E708(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_158E264(v4);
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
      result = sub_157E0B4(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  if ((*(v1 + 16) & 0xF) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
    *(v1 + 96) = 0;
    *(v1 + 88) = 0;
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

char *sub_158E7C8(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 == 2)
      {
        if (v8 == 17)
        {
          v25 = *v7;
          v13 = v7 + 8;
          v5 |= 1u;
          *(a1 + 72) = v25;
          goto LABEL_38;
        }
      }

      else if (v11 == 3 && v8 == 25)
      {
        v14 = *v7;
        v13 = v7 + 8;
        v5 |= 2u;
        *(a1 + 80) = v14;
LABEL_38:
        v37 = v13;
        goto LABEL_56;
      }

      goto LABEL_49;
    }

    if (v8 != 8)
    {
      goto LABEL_49;
    }

    v5 |= 8u;
    v21 = v7 + 1;
    v22 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    v23 = *v21;
    v22 = v22 + (v23 << 7) - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_33:
      v37 = v21;
      *(a1 + 96) = v22;
      goto LABEL_56;
    }

    v35 = sub_1958770(v7, v22);
    v37 = v35;
    *(a1 + 96) = v36;
    if (!v35)
    {
      goto LABEL_63;
    }

LABEL_56:
    if (sub_195ADC0(a3, &v37, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 == 33)
    {
      v24 = *v7;
      v13 = v7 + 8;
      v5 |= 4u;
      *(a1 + 88) = v24;
      goto LABEL_38;
    }
  }

  else if (v11 == 5)
  {
    if (v8 == 42)
    {
      v26 = v7 - 1;
      while (1)
      {
        v27 = (v26 + 1);
        v37 = v26 + 1;
        v28 = *(a1 + 40);
        if (v28 && (v29 = *(a1 + 32), v29 < *v28))
        {
          *(a1 + 32) = v29 + 1;
          v30 = *&v28[2 * v29 + 2];
        }

        else
        {
          v31 = sub_15ACE74(*(a1 + 24));
          v30 = sub_19593CC(a1 + 24, v31);
          v27 = v37;
        }

        v26 = sub_221F95C(a3, v30, v27);
        v37 = v26;
        if (!v26)
        {
          goto LABEL_63;
        }

        if (*a3 <= v26 || *v26 != 42)
        {
          goto LABEL_56;
        }
      }
    }
  }

  else if (v11 == 6 && v8 == 50)
  {
    v15 = v7 - 1;
    while (1)
    {
      v16 = (v15 + 1);
      v37 = v15 + 1;
      v17 = *(a1 + 64);
      if (v17 && (v18 = *(a1 + 56), v18 < *v17))
      {
        *(a1 + 56) = v18 + 1;
        v19 = *&v17[2 * v18 + 2];
      }

      else
      {
        v20 = sub_15AC14C(*(a1 + 48));
        v19 = sub_19593CC(a1 + 48, v20);
        v16 = v37;
      }

      v15 = sub_221F9EC(a3, v19, v16);
      v37 = v15;
      if (!v15)
      {
        goto LABEL_63;
      }

      if (*a3 <= v15 || *v15 != 50)
      {
        goto LABEL_56;
      }
    }
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
      v7 = v37;
    }

    v37 = sub_1952690(v8, v34, v7, a3);
    if (!v37)
    {
      goto LABEL_63;
    }

    goto LABEL_56;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_63:
  v37 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v37;
}

char *sub_158EAE8(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 96);
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

    v11 = *(a1 + 72);
    *v6 = 17;
    *(v6 + 1) = v11;
    v6 += 9;
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_12;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v12 = *(a1 + 80);
  *v6 = 25;
  *(v6 + 1) = v12;
  v6 += 9;
  if ((v5 & 4) != 0)
  {
LABEL_20:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v13 = *(a1 + 88);
    *v6 = 33;
    *(v6 + 1) = v13;
    v6 += 9;
  }

LABEL_23:
  v14 = *(a1 + 32);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v16 = *(*(a1 + 40) + 8 * i + 8);
      *v6 = 42;
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

      v6 = sub_158E448(v16, v18, a3);
    }
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

      v6 = sub_157E2B0(v21, v23, a3);
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

uint64_t sub_158EDE4(uint64_t a1)
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
      v7 = sub_158E5A8(v6);
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
      v14 = sub_157E398(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 0xF) != 0)
  {
    v16 = v9 + 9;
    if ((v15 & 1) == 0)
    {
      v16 = v9;
    }

    if ((v15 & 2) != 0)
    {
      v16 += 9;
    }

    if ((v15 & 4) != 0)
    {
      v9 = v16 + 9;
    }

    else
    {
      v9 = v16;
    }

    if ((v15 & 8) != 0)
    {
      v9 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

std::string *sub_158EF34(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_15B5BE4(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
    result = sub_15B5C60(v3 + 2, v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
    v12 = LODWORD(v3[2].__r_.__value_.__r.__words[1]) + v9;
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = v12;
    v13 = v3[2].__r_.__value_.__r.__words[2];
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if ((v14 & 0xF) != 0)
  {
    if (v14)
    {
      v3[3].__r_.__value_.__r.__words[0] = *(a2 + 72);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_20;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    v3[3].__r_.__value_.__l.__size_ = *(a2 + 80);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
LABEL_13:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v14;
        goto LABEL_14;
      }

LABEL_12:
      LODWORD(v3[4].__r_.__value_.__l.__data_) = *(a2 + 96);
      goto LABEL_13;
    }

LABEL_20:
    v3[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
    if ((v14 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  v15 = *(a2 + 8);
  if (v15)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_158F0A4(uint64_t a1)
{
  v1 = *(a1 + 56);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(a1 + 64) + 8 * v1--);
  }

  while ((~*(v3 + 16) & 3) == 0);
  return v2 < 1;
}

uint64_t sub_158F0EC(uint64_t a1)
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
  sub_15B4DD8((a1 + 48));
  sub_15B4E5C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_158F1A4(uint64_t a1)
{
  sub_158F0EC(a1);

  operator delete();
}

uint64_t sub_158F1DC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1579FA0(v4);
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
      result = sub_157E0B4(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if (v8)
  {
    v9 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
    }
  }

  if ((v8 & 6) != 0)
  {
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 8);
  v10 = v1 + 8;
  *(v10 + 8) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_158F2C0(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 29)
        {
          goto LABEL_45;
        }

        v26 = *v7;
        v25 = v7 + 1;
        v5 |= 2u;
        *(a1 + 80) = v26;
      }

      else
      {
        if (v11 != 4)
        {
          if (v11 == 5 && v8 == 42)
          {
            v12 = v7 - 1;
            while (1)
            {
              v13 = v12 + 1;
              *v35 = v12 + 1;
              v14 = *(a1 + 64);
              if (v14 && (v15 = *(a1 + 56), v15 < *v14))
              {
                *(a1 + 56) = v15 + 1;
                v16 = *&v14[2 * v15 + 2];
              }

              else
              {
                v17 = sub_15AC14C(*(a1 + 48));
                v16 = sub_19593CC(a1 + 48, v17);
                v13 = *v35;
              }

              v12 = sub_221F9EC(a3, v16, v13);
              *v35 = v12;
              if (!v12)
              {
                goto LABEL_58;
              }

              if (*a3 <= v12 || *v12 != 42)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_45;
        }

        if (v8 != 37)
        {
          goto LABEL_45;
        }

        v27 = *v7;
        v25 = v7 + 1;
        v5 |= 4u;
        *(a1 + 84) = v27;
      }

      *v35 = v25;
      goto LABEL_53;
    }

    if (v11 != 1)
    {
      break;
    }

    if (v8 != 10)
    {
      goto LABEL_45;
    }

    *(a1 + 16) |= 1u;
    v28 = *(a1 + 8);
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    v30 = sub_194DB04((a1 + 72), v29);
    v31 = sub_1958890(v30, *v35, a3);
LABEL_52:
    *v35 = v31;
    if (!v31)
    {
      goto LABEL_58;
    }

LABEL_53:
    if (sub_195ADC0(a3, v35, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2 && v8 == 18)
  {
    v19 = v7 - 1;
    while (1)
    {
      v20 = v19 + 1;
      *v35 = v19 + 1;
      v21 = *(a1 + 40);
      if (v21 && (v22 = *(a1 + 32), v22 < *v21))
      {
        *(a1 + 32) = v22 + 1;
        v23 = *&v21[2 * v22 + 2];
      }

      else
      {
        v24 = sub_157B820(*(a1 + 24));
        v23 = sub_19593CC(a1 + 24, v24);
        v20 = *v35;
      }

      v19 = sub_221FA7C(a3, v23, v20);
      *v35 = v19;
      if (!v19)
      {
        goto LABEL_58;
      }

      if (*a3 <= v19 || *v19 != 18)
      {
        goto LABEL_53;
      }
    }
  }

LABEL_45:
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

    v31 = sub_1952690(v8, v34, v7, a3);
    goto LABEL_52;
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

char *sub_158F5A4(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, __dst);
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
      *v4 = 18;
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

      v4 = sub_157A174(v9, v11, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v12 = *(a1 + 80);
    *v4 = 29;
    *(v4 + 1) = v12;
    v4 += 5;
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v13 = *(a1 + 84);
    *v4 = 37;
    *(v4 + 1) = v13;
    v4 += 5;
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    for (j = 0; j != v14; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v16 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 42;
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

      v4 = sub_157E2B0(v16, v18, a3);
    }
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

  if (*a3 - v4 >= v22)
  {
    v24 = v22;
    memcpy(v4, v23, v22);
    v4 += v24;
    return v4;
  }

  return sub_1957130(a3, v23, v22, v4);
}

uint64_t sub_158F7FC(uint64_t a1)
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
      v7 = sub_157A274(v6);
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
      v14 = sub_157E398(v13);
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

    v19 = v9 + 5;
    if ((v15 & 2) == 0)
    {
      v19 = v9;
    }

    if ((v15 & 4) != 0)
    {
      v9 = v19 + 5;
    }

    else
    {
      v9 = v19;
    }
  }

  v20 = *(a1 + 8);
  if (v20)
  {
    v22 = v20 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v20 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    v9 += v23;
  }

  *(a1 + 20) = v9;
  return v9;
}

std::string *sub_158F95C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_15B5CDC(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
    result = sub_15B5C60(v3 + 2, v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
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
        HIDWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 84);
        goto LABEL_12;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 80);
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

BOOL sub_158FAE4(uint64_t a1)
{
  v1 = *(a1 + 56);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(a1 + 64) + 8 * v1--);
  }

  while ((~*(v3 + 16) & 3) == 0);
  return v2 < 1;
}

uint64_t sub_158FB2C(uint64_t a1)
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

  v5 = (a1 + 64);
  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_15B4DD8((a1 + 40));
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_158FBE0(uint64_t a1)
{
  sub_158FB2C(a1);

  operator delete();
}

uint64_t sub_158FC18(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 48);
  if (v2 >= 1)
  {
    v3 = (*(result + 56) + 8);
    do
    {
      v4 = *v3++;
      result = sub_157E0B4(v4);
      --v2;
    }

    while (v2);
    *(v1 + 48) = 0;
  }

  if (*(v1 + 16))
  {
    v5 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
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

uint64_t sub_158FCCC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v30 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v30, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v30 + 1);
    v7 = **v30;
    if (**v30 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v30, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v30 + 2);
      }
    }

    *v30 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        v20 = v6 - 1;
        while (1)
        {
          v21 = v20 + 1;
          *v30 = v20 + 1;
          v22 = *(a1 + 56);
          if (v22 && (v23 = *(a1 + 48), v23 < *v22))
          {
            *(a1 + 48) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            v25 = sub_15AC14C(*(a1 + 40));
            v24 = sub_19593CC(a1 + 40, v25);
            v21 = *v30;
          }

          v20 = sub_221F9EC(a3, v24, v21);
          *v30 = v20;
          if (!v20)
          {
            break;
          }

          if (*a3 <= v20 || *v20 != 26)
          {
            goto LABEL_42;
          }
        }

LABEL_49:
        *v30 = 0;
        return *v30;
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
          return *v30;
        }

        goto LABEL_49;
      }

      v13 = *(a1 + 8);
      if (v13)
      {
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v14 = sub_11F1920((a1 + 8));
        v6 = *v30;
      }

      v15 = sub_1952690(v7, v14, v6, a3);
      goto LABEL_41;
    }

    if (v10 == 2)
    {
      if (v7 == 21)
      {
        v16 = v6 - 1;
        v17 = *(a1 + 24);
        do
        {
          v18 = (v16 + 1);
          *v30 = v16 + 1;
          v19 = *(v16 + 1);
          if (v17 == *(a1 + 28))
          {
            sub_1958E5C((a1 + 24), v17 + 1);
            *(*(a1 + 32) + 4 * v17) = v19;
            v18 = *v30;
          }

          else
          {
            *(*(a1 + 32) + 4 * v17) = v19;
          }

          *(a1 + 24) = ++v17;
          v16 = (v18 + 4);
          *v30 = v18 + 4;
        }

        while (*a3 > (v18 + 4) && *v16 == 21);
        continue;
      }

      if (v7 != 18)
      {
        goto LABEL_13;
      }

      v15 = sub_1958988(a1 + 24, v6, a3);
    }

    else
    {
      if (v10 != 1 || v7 != 10)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v28 = sub_194DB04((a1 + 64), v27);
      v15 = sub_1958890(v28, *v30, a3);
    }

LABEL_41:
    *v30 = v15;
    if (!v15)
    {
      goto LABEL_49;
    }

LABEL_42:
    ;
  }

  return *v30;
}

char *sub_158FF54(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v6 = *(a1 + 24);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 4 * v6;
    do
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v9 = *(*(a1 + 32) + v7);
      *v4 = 21;
      *(v4 + 1) = v9;
      v4 += 5;
      v7 += 4;
    }

    while (v8 != v7);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v12 = *(*(a1 + 56) + 8 * i + 8);
      *v4 = 26;
      v13 = *(v12 + 20);
      v4[1] = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, v4 + 1);
      }

      else
      {
        v14 = v4 + 2;
      }

      v4 = sub_157E2B0(v12, v14, a3);
    }
  }

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v18)
  {
    v20 = v18;
    memcpy(v4, v19, v18);
    v4 += v20;
    return v4;
  }

  return sub_1957130(a3, v19, v18, v4);
}

uint64_t sub_1590114(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = 5 * *(a1 + 24) + v2;
  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  if (v2)
  {
    v6 = 8 * v2;
    do
    {
      v7 = *v5++;
      v8 = sub_157E398(v7);
      v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      v6 -= 8;
    }

    while (v6);
  }

  if (*(a1 + 16))
  {
    v9 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v12 = *(a1 + 8);
  if (v12)
  {
    v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v3 += v15;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_1590208(std::string *result, uint64_t a2)
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
    result = sub_15B5C60((v3 + 40), v10, (v9 + 8), v8, *v3[2].__r_.__value_.__l.__size_ - LODWORD(v3[2].__r_.__value_.__l.__data_));
    v11 = LODWORD(v3[2].__r_.__value_.__l.__data_) + v8;
    LODWORD(v3[2].__r_.__value_.__l.__data_) = v11;
    v12 = v3[2].__r_.__value_.__l.__size_;
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  if (*(a2 + 16))
  {
    v13 = *(a2 + 64);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    v14 = v3->__r_.__value_.__l.__size_;
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    result = sub_194EA1C(&v3[2].__r_.__value_.__r.__words[2], (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
  }

  v16 = *(a2 + 8);
  if (v16)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v16 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_1590340(uint64_t a1)
{
  v1 = *(a1 + 48);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(a1 + 56) + 8 * v1--);
  }

  while ((~*(v3 + 16) & 3) == 0);
  return v2 < 1;
}

uint64_t sub_1590388(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_1580044(*(result + 24));
  }

  if ((v2 & 0xE) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
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

uint64_t sub_15903F0(uint64_t a1)
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
  if (a1 != &off_2777EE0)
  {
    v6 = *(a1 + 96);
    if (v6)
    {
      sub_15AF0D4(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_15B4F64((a1 + 72));
  sub_15B4EE0((a1 + 48));
  sub_15B4EE0((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15904CC(uint64_t a1)
{
  sub_15903F0(a1);

  operator delete();
}

uint64_t sub_1590504(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15AFC28(v4);
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
      result = sub_15AFC28(v7);
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
      result = sub_1590388(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 16);
  if (v11)
  {
    result = sub_1590388(*(v1 + 96));
  }

  if ((v11 & 0xFE) != 0)
  {
    *(v1 + 104) = 0;
    *(v1 + 112) = 0;
    *(v1 + 120) = 0;
  }

  if ((v11 & 0xF00) != 0)
  {
    *(v1 + 128) = 0;
    *(v1 + 136) = 0x100000000;
  }

  v13 = *(v1 + 8);
  v12 = v1 + 8;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

char *sub_1590604(uint64_t a1, char *a2, int32x2_t *a3)
{
  v83 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v83, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = v83 + 1;
    v8 = *v83;
    if (*v83 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v83, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v83 + 2;
      }
    }

    v83 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_100;
        }

        *(a1 + 16) |= 1u;
        v11 = *(a1 + 96);
        if (!v11)
        {
          v12 = *(a1 + 8);
          v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
          if (v12)
          {
            v13 = *v13;
          }

          sub_15B0488(v13);
          v11 = v14;
          *(a1 + 96) = v14;
          v7 = v83;
        }

        v15 = sub_21F4DF0(a3, v11, v7);
        goto LABEL_107;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_100;
        }

        v5 |= 8u;
        v44 = v7 + 1;
        v43 = *v7;
        if ((v43 & 0x8000000000000000) == 0)
        {
          goto LABEL_65;
        }

        v45 = *v44;
        v43 = (v45 << 7) + v43 - 128;
        if (v45 < 0)
        {
          v79 = sub_19587DC(v7, v43);
          v83 = v79;
          *(a1 + 120) = v80 != 0;
          if (!v79)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v44 = v7 + 2;
LABEL_65:
          v83 = v44;
          *(a1 + 120) = v43 != 0;
        }

        goto LABEL_108;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_100;
        }

        v35 = v7 + 1;
        v34 = *v7;
        if ((v34 & 0x8000000000000000) == 0)
        {
          goto LABEL_48;
        }

        v36 = *v35;
        v34 = (v36 << 7) + v34 - 128;
        if (v36 < 0)
        {
          v83 = sub_19587DC(v7, v34);
          if (!v83)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v35 = v7 + 2;
LABEL_48:
          v83 = v35;
        }

        if ((v34 - 1) > 5)
        {
          sub_1313740();
        }

        else
        {
          *(a1 + 16) |= 0x800u;
          *(a1 + 140) = v34;
        }

        goto LABEL_108;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_100;
        }

        v5 |= 2u;
        v38 = v7 + 1;
        v37 = *v7;
        if ((v37 & 0x8000000000000000) == 0)
        {
          goto LABEL_55;
        }

        v39 = *v38;
        v37 = (v39 << 7) + v37 - 128;
        if (v39 < 0)
        {
          v75 = sub_19587DC(v7, v37);
          v83 = v75;
          *(a1 + 104) = v76;
          if (!v75)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v38 = v7 + 2;
LABEL_55:
          v83 = v38;
          *(a1 + 104) = v37;
        }

        goto LABEL_108;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_100;
        }

        v5 |= 0x10u;
        v23 = v7 + 1;
        v22 = *v7;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if (v24 < 0)
        {
          v71 = sub_19587DC(v7, v22);
          v83 = v71;
          *(a1 + 121) = v72 != 0;
          if (!v71)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v23 = v7 + 2;
LABEL_28:
          v83 = v23;
          *(a1 + 121) = v22 != 0;
        }

        goto LABEL_108;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_100;
        }

        v46 = v7 - 1;
        while (1)
        {
          v47 = (v46 + 1);
          v83 = v46 + 1;
          v48 = *(a1 + 40);
          if (v48 && (v49 = *(a1 + 32), v49 < *v48))
          {
            *(a1 + 32) = v49 + 1;
            v50 = *&v48[2 * v49 + 2];
          }

          else
          {
            v51 = sub_15B0588(*(a1 + 24));
            v50 = sub_19593CC(a1 + 24, v51);
            v47 = v83;
          }

          v46 = sub_221FB0C(a3, v50, v47);
          v83 = v46;
          if (!v46)
          {
            goto LABEL_135;
          }

          if (*a3 <= v46 || *v46 != 50)
          {
            goto LABEL_108;
          }
        }

      case 7u:
        if (v8 != 57)
        {
          goto LABEL_100;
        }

        v5 |= 4u;
        *(a1 + 112) = *v7;
        v83 = v7 + 8;
        goto LABEL_108;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_100;
        }

        v5 |= 0x20u;
        v41 = v7 + 1;
        v40 = *v7;
        if ((v40 & 0x8000000000000000) == 0)
        {
          goto LABEL_60;
        }

        v42 = *v41;
        v40 = (v42 << 7) + v40 - 128;
        if (v42 < 0)
        {
          v77 = sub_19587DC(v7, v40);
          v83 = v77;
          *(a1 + 122) = v78 != 0;
          if (!v77)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v41 = v7 + 2;
LABEL_60:
          v83 = v41;
          *(a1 + 122) = v40 != 0;
        }

        goto LABEL_108;
      case 9u:
        if (v8 != 74)
        {
          goto LABEL_100;
        }

        v58 = v7 - 1;
        while (1)
        {
          v59 = (v58 + 1);
          v83 = v58 + 1;
          v60 = *(a1 + 64);
          if (v60 && (v61 = *(a1 + 56), v61 < *v60))
          {
            *(a1 + 56) = v61 + 1;
            v62 = *&v60[2 * v61 + 2];
          }

          else
          {
            v63 = sub_15B0588(*(a1 + 48));
            v62 = sub_19593CC(a1 + 48, v63);
            v59 = v83;
          }

          v58 = sub_221FB0C(a3, v62, v59);
          v83 = v58;
          if (!v58)
          {
            goto LABEL_135;
          }

          if (*a3 <= v58 || *v58 != 74)
          {
            goto LABEL_108;
          }
        }

      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_100;
        }

        v28 = v7 - 1;
        while (1)
        {
          v29 = (v28 + 1);
          v83 = v28 + 1;
          v30 = *(a1 + 88);
          if (v30 && (v31 = *(a1 + 80), v31 < *v30))
          {
            *(a1 + 80) = v31 + 1;
            v32 = *&v30[2 * v31 + 2];
          }

          else
          {
            sub_15B0488(*(a1 + 72));
            v32 = sub_19593CC(a1 + 72, v33);
            v29 = v83;
          }

          v28 = sub_21F4DF0(a3, v32, v29);
          v83 = v28;
          if (!v28)
          {
            goto LABEL_135;
          }

          if (*a3 <= v28 || *v28 != 82)
          {
            goto LABEL_108;
          }
        }

      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_100;
        }

        v56 = v7 + 1;
        v55 = *v7;
        if ((v55 & 0x8000000000000000) == 0)
        {
          goto LABEL_87;
        }

        v57 = *v56;
        v55 = (v57 << 7) + v55 - 128;
        if (v57 < 0)
        {
          v83 = sub_19587DC(v7, v55);
          if (!v83)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v56 = v7 + 2;
LABEL_87:
          v83 = v56;
        }

        if (v55 > 2)
        {
          sub_1313680();
        }

        else
        {
          *(a1 + 16) |= 0x80u;
          *(a1 + 124) = v55;
        }

        goto LABEL_108;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_100;
        }

        v5 |= 0x40u;
        v20 = v7 + 1;
        v19 = *v7;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          v69 = sub_19587DC(v7, v19);
          v83 = v69;
          *(a1 + 123) = v70 != 0;
          if (!v69)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v20 = v7 + 2;
LABEL_23:
          v83 = v20;
          *(a1 + 123) = v19 != 0;
        }

        goto LABEL_108;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_100;
        }

        v5 |= 0x100u;
        v26 = v7 + 1;
        v25 = *v7;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if (v27 < 0)
        {
          v73 = sub_19587DC(v7, v25);
          v83 = v73;
          *(a1 + 128) = v74 != 0;
          if (!v73)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v26 = v7 + 2;
LABEL_33:
          v83 = v26;
          *(a1 + 128) = v25 != 0;
        }

        goto LABEL_108;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_100;
        }

        v5 |= 0x200u;
        v52 = v7 + 1;
        v53 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_80;
        }

        v54 = *v52;
        v53 = v53 + (v54 << 7) - 128;
        if (v54 < 0)
        {
          v81 = sub_1958770(v7, v53);
          v83 = v81;
          *(a1 + 132) = v82;
          if (!v81)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v52 = v7 + 2;
LABEL_80:
          v83 = v52;
          *(a1 + 132) = v53;
        }

        goto LABEL_108;
      case 0xFu:
        if (v8 != 120)
        {
          goto LABEL_100;
        }

        v5 |= 0x400u;
        v16 = v7 + 1;
        v17 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        v18 = *v16;
        v17 = v17 + (v18 << 7) - 128;
        if (v18 < 0)
        {
          v67 = sub_1958770(v7, v17);
          v83 = v67;
          *(a1 + 136) = v68;
          if (!v67)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v16 = v7 + 2;
LABEL_18:
          v83 = v16;
          *(a1 + 136) = v17;
        }

        goto LABEL_108;
      default:
LABEL_100:
        if (v8)
        {
          v64 = (v8 & 7) == 4;
        }

        else
        {
          v64 = 1;
        }

        if (!v64)
        {
          v65 = *(a1 + 8);
          if (v65)
          {
            v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v66 = sub_11F1920((a1 + 8));
            v7 = v83;
          }

          v15 = sub_1952690(v8, v66, v7, a3);
LABEL_107:
          v83 = v15;
          if (!v15)
          {
            goto LABEL_135;
          }

LABEL_108:
          if (sub_195ADC0(a3, &v83, a3[11].i32[1]))
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
LABEL_135:
          v83 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return v83;
    }
  }
}

char *sub_1590DCC(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 120);
    *__dst = 16;
    __dst[1] = v10;
    __dst += 2;
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v7 = *(a1 + 96);
  *__dst = 10;
  v8 = *(v7 + 20);
  __dst[1] = v8;
  if (v8 > 0x7F)
  {
    v9 = sub_19575D0(v8, __dst + 1);
  }

  else
  {
    v9 = __dst + 2;
  }

  __dst = sub_15AF3F0(v7, v9, a3);
  if ((v5 & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v5 & 0x800) == 0)
  {
LABEL_4:
    v6 = __dst;
    goto LABEL_21;
  }

LABEL_14:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v11 = *(a1 + 140);
  *__dst = 24;
  __dst[1] = v11;
  if (v11 > 0x7F)
  {
    __dst[1] = v11 | 0x80;
    v12 = v11 >> 7;
    __dst[2] = v11 >> 7;
    v6 = __dst + 3;
    if (v11 >= 0x4000)
    {
      LOBYTE(v13) = __dst[2];
      do
      {
        *(v6 - 1) = v13 | 0x80;
        v13 = v12 >> 7;
        *v6++ = v12 >> 7;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
    }
  }

  else
  {
    v6 = __dst + 2;
  }

LABEL_21:
  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v16 = *(a1 + 104);
    *v6 = 32;
    v6[1] = v16;
    if (v16 > 0x7F)
    {
      v6[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v6[2] = v16 >> 7;
      v15 = v6 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v15 - 1) = v6 | 0x80;
          v6 = (v17 >> 7);
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v6 + 2;
    }
  }

  else
  {
    v15 = v6;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v19 = *(a1 + 121);
    *v15 = 40;
    v15[1] = v19;
    v15 += 2;
  }

  v20 = *(a1 + 32);
  if (v20)
  {
    for (i = 0; i != v20; ++i)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v22 = *(*(a1 + 40) + 8 * i + 8);
      *v15 = 50;
      v23 = *(v22 + 20);
      v15[1] = v23;
      if (v23 > 0x7F)
      {
        v24 = sub_19575D0(v23, v15 + 1);
      }

      else
      {
        v24 = v15 + 2;
      }

      v15 = sub_15AFFB4(v22, v24, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v25 = *(a1 + 112);
    *v15 = 57;
    *(v15 + 1) = v25;
    v15 += 9;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v26 = *(a1 + 122);
    *v15 = 64;
    v15[1] = v26;
    v15 += 2;
  }

  v27 = *(a1 + 56);
  if (v27)
  {
    for (j = 0; j != v27; ++j)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v29 = *(*(a1 + 64) + 8 * j + 8);
      *v15 = 74;
      v30 = *(v29 + 20);
      v15[1] = v30;
      if (v30 > 0x7F)
      {
        v31 = sub_19575D0(v30, v15 + 1);
      }

      else
      {
        v31 = v15 + 2;
      }

      v15 = sub_15AFFB4(v29, v31, a3);
    }
  }

  v32 = *(a1 + 80);
  if (v32)
  {
    for (k = 0; k != v32; ++k)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v34 = *(*(a1 + 88) + 8 * k + 8);
      *v15 = 82;
      v35 = *(v34 + 20);
      v15[1] = v35;
      if (v35 > 0x7F)
      {
        v36 = sub_19575D0(v35, v15 + 1);
      }

      else
      {
        v36 = v15 + 2;
      }

      v15 = sub_15AF3F0(v34, v36, a3);
    }
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v38 = *(a1 + 124);
    *v15 = 88;
    v15[1] = v38;
    if (v38 > 0x7F)
    {
      v15[1] = v38 | 0x80;
      v39 = v38 >> 7;
      v15[2] = v38 >> 7;
      v37 = v15 + 3;
      if (v38 >= 0x4000)
      {
        LOBYTE(v15) = v15[2];
        do
        {
          *(v37 - 1) = v15 | 0x80;
          v15 = (v39 >> 7);
          *v37++ = v39 >> 7;
          v40 = v39 >> 14;
          v39 >>= 7;
        }

        while (v40);
      }
    }

    else
    {
      v37 = v15 + 2;
    }
  }

  else
  {
    v37 = v15;
  }

  if ((v5 & 0x40) == 0)
  {
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_77;
    }

LABEL_82:
    if (*a3 <= v37)
    {
      v37 = sub_225EB68(a3, v37);
    }

    v43 = *(a1 + 128);
    *v37 = 104;
    v37[1] = v43;
    v37 += 2;
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_85;
  }

  if (*a3 <= v37)
  {
    v37 = sub_225EB68(a3, v37);
  }

  v42 = *(a1 + 123);
  *v37 = 96;
  v37[1] = v42;
  v37 += 2;
  if ((v5 & 0x100) != 0)
  {
    goto LABEL_82;
  }

LABEL_77:
  if ((v5 & 0x200) == 0)
  {
LABEL_78:
    v41 = v37;
    goto LABEL_92;
  }

LABEL_85:
  if (*a3 <= v37)
  {
    v37 = sub_225EB68(a3, v37);
  }

  v44 = *(a1 + 132);
  *v37 = 112;
  v37[1] = v44;
  if (v44 > 0x7F)
  {
    v37[1] = v44 | 0x80;
    v45 = v44 >> 7;
    v37[2] = v44 >> 7;
    v41 = v37 + 3;
    if (v44 >= 0x4000)
    {
      LOBYTE(v37) = v37[2];
      do
      {
        *(v41 - 1) = v37 | 0x80;
        LODWORD(v37) = v45 >> 7;
        *v41++ = v45 >> 7;
        v46 = v45 >> 14;
        v45 >>= 7;
      }

      while (v46);
    }
  }

  else
  {
    v41 = v37 + 2;
  }

LABEL_92:
  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v41)
    {
      v41 = sub_225EB68(a3, v41);
    }

    v48 = *(a1 + 136);
    *v41 = 120;
    v41[1] = v48;
    if (v48 > 0x7F)
    {
      v41[1] = v48 | 0x80;
      v49 = v48 >> 7;
      v41[2] = v48 >> 7;
      v47 = v41 + 3;
      if (v48 >= 0x4000)
      {
        LOBYTE(v50) = v41[2];
        do
        {
          *(v47 - 1) = v50 | 0x80;
          v50 = v49 >> 7;
          *v47++ = v49 >> 7;
          v51 = v49 >> 14;
          v49 >>= 7;
        }

        while (v51);
      }
    }

    else
    {
      v47 = v41 + 2;
    }
  }

  else
  {
    v47 = v41;
  }

  v52 = *(a1 + 8);
  if ((v52 & 1) == 0)
  {
    return v47;
  }

  v54 = v52 & 0xFFFFFFFFFFFFFFFCLL;
  v55 = *(v54 + 31);
  if (v55 < 0)
  {
    v56 = *(v54 + 8);
    v55 = *(v54 + 16);
  }

  else
  {
    v56 = (v54 + 8);
  }

  if ((*a3 - v47) >= v55)
  {
    v57 = v55;
    memcpy(v47, v56, v55);
    v47 += v57;
    return v47;
  }

  return sub_1957130(a3, v56, v55, v47);
}

uint64_t sub_1591474(uint64_t a1)
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
      v7 = sub_15B01D8(v6);
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
      v14 = sub_15B01D8(v13);
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
      v21 = sub_15AF5F0(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (v22)
    {
      v23 = sub_15AF5F0(*(a1 + 96));
      v16 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v22 & 2) != 0)
    {
      v16 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    v24 = v16 + 9;
    if ((v22 & 4) == 0)
    {
      v24 = v16;
    }

    v25.i64[0] = 0x200000002;
    v25.i64[1] = 0x200000002;
    v16 = v24 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v22), xmmword_232F5A0), v25));
    if ((v22 & 0x80) != 0)
    {
      v26 = *(a1 + 124);
      v27 = ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v26 >= 0)
      {
        v28 = v27;
      }

      else
      {
        v28 = 11;
      }

      v16 += v28;
    }
  }

  if ((v22 & 0xF00) != 0)
  {
    v16 += (v22 >> 7) & 2;
    if ((v22 & 0x200) != 0)
    {
      v16 += ((9 * (__clz(*(a1 + 132) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v22 & 0x400) == 0)
      {
LABEL_36:
        if ((v22 & 0x800) == 0)
        {
          goto LABEL_41;
        }

LABEL_37:
        v29 = *(a1 + 140);
        v30 = ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if (v29 >= 0)
        {
          v31 = v30;
        }

        else
        {
          v31 = 11;
        }

        v16 += v31;
        goto LABEL_41;
      }
    }

    else if ((v22 & 0x400) == 0)
    {
      goto LABEL_36;
    }

    v16 += ((9 * (__clz(*(a1 + 136) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 0x800) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

LABEL_41:
  v32 = *(a1 + 8);
  if (v32)
  {
    v34 = v32 & 0xFFFFFFFFFFFFFFFCLL;
    v35 = *((v32 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v35 < 0)
    {
      v35 = *(v34 + 16);
    }

    v16 += v35;
  }

  *(a1 + 20) = v16;
  return v16;
}

void sub_1591724(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15B5D58((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_15B5D58((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_15B5DE4((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
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
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 96);
      if (!v21)
      {
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        sub_15B0488(v23);
        *(a1 + 96) = v21;
      }

      if (*(a2 + 96))
      {
        v24 = *(a2 + 96);
      }

      else
      {
        v24 = &off_27788C0;
      }

      sub_15919C4(v21, v24);
      if ((v19 & 2) == 0)
      {
LABEL_13:
        if ((v19 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_41;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 104) = *(a2 + 104);
    if ((v19 & 4) == 0)
    {
LABEL_14:
      if ((v19 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(a1 + 112) = *(a2 + 112);
    if ((v19 & 8) == 0)
    {
LABEL_15:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_43;
    }

LABEL_42:
    *(a1 + 120) = *(a2 + 120);
    if ((v19 & 0x10) == 0)
    {
LABEL_16:
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_44;
    }

LABEL_43:
    *(a1 + 121) = *(a2 + 121);
    if ((v19 & 0x20) == 0)
    {
LABEL_17:
      if ((v19 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_45;
    }

LABEL_44:
    *(a1 + 122) = *(a2 + 122);
    if ((v19 & 0x40) == 0)
    {
LABEL_18:
      if ((v19 & 0x80) == 0)
      {
LABEL_20:
        *(a1 + 16) |= v19;
        goto LABEL_21;
      }

LABEL_19:
      *(a1 + 124) = *(a2 + 124);
      goto LABEL_20;
    }

LABEL_45:
    *(a1 + 123) = *(a2 + 123);
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_21:
  if ((v19 & 0xF00) == 0)
  {
    goto LABEL_28;
  }

  if ((v19 & 0x100) != 0)
  {
    *(a1 + 128) = *(a2 + 128);
    if ((v19 & 0x200) == 0)
    {
LABEL_24:
      if ((v19 & 0x400) == 0)
      {
        goto LABEL_25;
      }

LABEL_49:
      *(a1 + 136) = *(a2 + 136);
      if ((v19 & 0x800) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v19 & 0x200) == 0)
  {
    goto LABEL_24;
  }

  *(a1 + 132) = *(a2 + 132);
  if ((v19 & 0x400) != 0)
  {
    goto LABEL_49;
  }

LABEL_25:
  if ((v19 & 0x800) != 0)
  {
LABEL_26:
    *(a1 + 140) = *(a2 + 140);
  }

LABEL_27:
  *(a1 + 16) |= v19;
LABEL_28:
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_15919C4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      data = result[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v8 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v8 = *v8;
        }

        data = sub_15B234C(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_27789A0;
      }

      result = sub_1581C8C(data, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_21;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v3[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
LABEL_7:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      HIDWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
      goto LABEL_7;
    }

LABEL_21:
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1591ABC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  while (v2 >= 1)
  {
    v4 = v2 - 1;
    v5 = sub_15B0414(*(v3 + 8 * v2));
    v2 = v4;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  while (v6 >= 1)
  {
    v8 = v6 - 1;
    v9 = sub_15B0414(*(v7 + 8 * v6));
    v6 = v8;
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  while (v10 >= 1)
  {
    v12 = v10 - 1;
    v13 = sub_1591B78(*(v11 + 8 * v10));
    v10 = v12;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_1591B78(*(a1 + 96));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1591B78(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 24);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v5 = v3 - 1;
    v6 = sub_15B16F0(*(v4 + 8 * v3));
    v3 = v5;
  }

  while (v6);
  return v1;
}

void *sub_1591BEC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1311F6C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1591C6C(void *a1)
{
  sub_1591BEC(a1);

  operator delete();
}

uint64_t sub_1591CA4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1543CB4(v4);
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

char *sub_1591D20(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_1551DC4(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_21F8E38(a3, v16, v13);
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

char *sub_1591EB0(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_1543E88(v8, v10, a3);
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

uint64_t sub_1591FF0(uint64_t a1)
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
      v7 = sub_1543FE4(v6);
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

std::string *sub_1592098(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_131206C(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
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

BOOL sub_1592154(uint64_t a1)
{
  v2 = *(a1 + 24);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_1544084(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while (v5);
  return v3 < 1;
}

void *sub_15921BC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1311F6C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_159223C(void *a1)
{
  sub_15921BC(a1);

  operator delete();
}

uint64_t sub_1592274(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1543CB4(v4);
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

char *sub_15922F0(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_1551DC4(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_21F8E38(a3, v16, v13);
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

char *sub_1592480(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_1543E88(v8, v10, a3);
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

uint64_t sub_15925C0(uint64_t a1)
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
      v7 = sub_1543FE4(v6);
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

BOOL sub_1592668(uint64_t a1)
{
  v2 = *(a1 + 24);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_1544084(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while (v5);
  return v3 < 1;
}

uint64_t sub_15926D0(uint64_t a1)
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
  if (a1 != &off_2777FD0)
  {
    v6 = *(a1 + 80);
    if (v6)
    {
      sub_159A84C(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1956ABC(a1 + 64);
  sub_15B4FE8((a1 + 40));
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15927A4(uint64_t a1)
{
  sub_15926D0(a1);

  operator delete();
}

uint64_t sub_15927DC(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 48);
  if (v2 >= 1)
  {
    v3 = (*(result + 56) + 8);
    do
    {
      v4 = *v3++;
      result = sub_157E574(v4);
      --v2;
    }

    while (v2);
    *(v1 + 48) = 0;
  }

  *(v1 + 64) = 0;
  if (*(v1 + 16))
  {
    result = sub_1592874(*(v1 + 80));
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

uint64_t sub_1592874(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_159C5BC(v4);
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
      result = sub_159C5BC(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if (v8)
  {
    v9 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
    }
  }

  if ((v8 & 6) != 0)
  {
    *(v1 + 80) = 0;
    *(v1 + 88) = 1;
  }

  v11 = *(v1 + 8);
  v10 = v1 + 8;
  *(v10 + 8) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

char *sub_1592960(uint64_t a1, char *a2, int32x2_t *a3)
{
  v41 = a2;
  if ((sub_195ADC0(a3, &v41, a3[11].i32[1]) & 1) == 0)
  {
    v6 = (a1 + 8);
    do
    {
      v7 = v41 + 1;
      v8 = *v41;
      if (*v41 < 0)
      {
        v9 = *v7;
        v10 = v8 + (v9 << 7);
        v8 = v10 - 128;
        if (v9 < 0)
        {
          v7 = sub_1958824(v41, v10 - 128);
          v8 = v11;
        }

        else
        {
          v7 = v41 + 2;
        }
      }

      v41 = v7;
      v12 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v12 == 3)
        {
          if (v8 == 26)
          {
            v33 = v7 - 1;
            while (1)
            {
              v34 = (v33 + 1);
              v41 = v33 + 1;
              v35 = *(a1 + 56);
              if (v35 && (v36 = *(a1 + 48), v36 < *v35))
              {
                *(a1 + 48) = v36 + 1;
                v37 = *&v35[2 * v36 + 2];
              }

              else
              {
                v38 = sub_15AC1D0(*(a1 + 40));
                v37 = sub_19593CC(a1 + 40, v38);
                v34 = v41;
              }

              v33 = sub_221FC2C(a3, v37, v34);
              v41 = v33;
              if (!v33)
              {
                return 0;
              }

              if (*a3 <= v33 || *v33 != 26)
              {
                goto LABEL_79;
              }
            }
          }

          goto LABEL_71;
        }

        if (v12 == 4)
        {
          if (v8 != 32)
          {
            if (v8 == 34)
            {
              *&v42 = a1 + 64;
              *(&v42 + 1) = sub_157DA58;
              v43 = a1 + 8;
              v44 = 4;
LABEL_70:
              v16 = sub_1216588(a3, v7, &v42);
              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v17 = v7 - 1;
LABEL_24:
          v41 = v17 + 1;
          v18 = v17[1];
          v19 = v17 + 2;
          if (v18 < 0)
          {
            v20 = *v19;
            v21 = (v20 << 7) + v18;
            LODWORD(v18) = v21 - 128;
            if ((v20 & 0x80000000) == 0)
            {
              v19 = v17 + 3;
              goto LABEL_27;
            }

            v41 = sub_19587DC((v17 + 1), (v21 - 128));
            if (!v41)
            {
              return 0;
            }

            LODWORD(v18) = v24;
          }

          else
          {
LABEL_27:
            v41 = v19;
          }

          if ((v18 - 1) > 5)
          {
            sub_12E8500();
          }

          else
          {
            v22 = *(a1 + 64);
            if (v22 == *(a1 + 68))
            {
              v23 = v22 + 1;
              sub_1958E5C((a1 + 64), v22 + 1);
              *(*(a1 + 72) + 4 * v22) = v18;
            }

            else
            {
              *(*(a1 + 72) + 4 * v22) = v18;
              v23 = v22 + 1;
            }

            *(a1 + 64) = v23;
          }

          v17 = v41;
          if (*a3 <= v41 || *v41 != 32)
          {
            continue;
          }

          goto LABEL_24;
        }
      }

      else
      {
        if (v12 != 1)
        {
          if (v12 == 2 && v8 == 18)
          {
            *(a1 + 16) |= 1u;
            v14 = *(a1 + 80);
            if (!v14)
            {
              v15 = (*v6 & 0xFFFFFFFFFFFFFFFCLL);
              if (*v6)
              {
                v15 = *v15;
              }

              v14 = sub_15ADB10(v15);
              *(a1 + 80) = v14;
              v7 = v41;
            }

            v16 = sub_221FB9C(a3, v14, v7);
            goto LABEL_78;
          }

          goto LABEL_71;
        }

        if (v8 == 8)
        {
          v25 = v7 - 1;
          while (1)
          {
            v41 = v25 + 1;
            v26 = v25[1];
            v27 = v25 + 2;
            if (v26 < 0)
            {
              v28 = *v27;
              v29 = (v28 << 7) + v26;
              LODWORD(v26) = v29 - 128;
              if (v28 < 0)
              {
                v41 = sub_19587DC((v25 + 1), (v29 - 128));
                if (!v41)
                {
                  return 0;
                }

                LODWORD(v26) = v32;
                goto LABEL_45;
              }

              v27 = v25 + 3;
            }

            v41 = v27;
LABEL_45:
            if ((v26 - 1) > 0x1D)
            {
              sub_12E8450();
            }

            else
            {
              v30 = *(a1 + 24);
              if (v30 == *(a1 + 28))
              {
                v31 = v30 + 1;
                sub_1958E5C((a1 + 24), v30 + 1);
                *(*(a1 + 32) + 4 * v30) = v26;
              }

              else
              {
                *(*(a1 + 32) + 4 * v30) = v26;
                v31 = v30 + 1;
              }

              *(a1 + 24) = v31;
            }

            v25 = v41;
            if (*a3 <= v41 || *v41 != 8)
            {
              goto LABEL_79;
            }
          }
        }

        if (v8 == 10)
        {
          *&v42 = a1 + 24;
          *(&v42 + 1) = sub_157DA68;
          v43 = a1 + 8;
          v44 = 1;
          goto LABEL_70;
        }
      }

LABEL_71:
      if (v8)
      {
        v39 = (v8 & 7) == 4;
      }

      else
      {
        v39 = 1;
      }

      if (v39)
      {
        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
          return v41;
        }

        return 0;
      }

      if (*v6)
      {
        v40 = (*v6 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v40 = sub_11F1920((a1 + 8));
        v7 = v41;
      }

      v16 = sub_1952690(v8, v40, v7, a3);
LABEL_78:
      v41 = v16;
      if (!v16)
      {
        return 0;
      }

LABEL_79:
      ;
    }

    while ((sub_195ADC0(a3, &v41, a3[11].i32[1]) & 1) == 0);
  }

  return v41;
}

char *sub_1592D9C(uint64_t a1, char *a2, void *a3)
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

    v12 = *(a1 + 80);
    *v8 = 18;
    v13 = *(v12 + 20);
    v8[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, v8 + 1);
    }

    else
    {
      v14 = v8 + 2;
    }

    v8 = sub_159AC7C(v12, v14, a3);
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      if (*a3 <= v8)
      {
        v8 = sub_225EB68(a3, v8);
      }

      v17 = *(*(a1 + 56) + 8 * j + 8);
      *v8 = 26;
      v18 = *(v17 + 20);
      v8[1] = v18;
      if (v18 > 0x7F)
      {
        v19 = sub_19575D0(v18, v8 + 1);
      }

      else
      {
        v19 = v8 + 2;
      }

      v8 = sub_157E7E8(v17, v19, a3);
    }
  }

  v20 = *(a1 + 64);
  if (v20 < 1)
  {
    v23 = v8;
  }

  else
  {
    for (k = 0; k != v20; ++k)
    {
      if (*a3 <= v8)
      {
        v8 = sub_225EB68(a3, v8);
      }

      v22 = *(*(a1 + 72) + 4 * k);
      *v8 = 32;
      v8[1] = v22;
      if (v22 > 0x7F)
      {
        v8[1] = v22 | 0x80;
        v24 = v22 >> 7;
        v8[2] = v22 >> 7;
        v23 = v8 + 3;
        if (v22 >= 0x4000)
        {
          LOBYTE(v8) = v8[2];
          do
          {
            *(v23 - 1) = v8 | 0x80;
            v8 = (v24 >> 7);
            *v23++ = v24 >> 7;
            v25 = v24 >> 14;
            v24 >>= 7;
          }

          while (v25);
        }
      }

      else
      {
        v23 = v8 + 2;
      }

      v8 = v23;
    }
  }

  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return v23;
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

  if (*a3 - v23 >= v29)
  {
    v31 = v29;
    memcpy(v23, v30, v29);
    v23 += v31;
    return v23;
  }

  return sub_1957130(a3, v30, v29, v23);
}

uint64_t sub_1593080(uint64_t a1)
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
  v9 = v7 + v8;
  v10 = *(a1 + 56);
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
      v14 = sub_157E960(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 64);
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(*(a1 + 72) + 4 * v16);
      if (v18 < 0)
      {
        v19 = 10;
      }

      else
      {
        v19 = (9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6;
      }

      v17 += v19;
      ++v16;
    }

    while (v15 != v16);
  }

  else
  {
    v17 = 0;
  }

  v20 = v9 + v15 + v17;
  if (*(a1 + 16))
  {
    v21 = sub_159AF24(*(a1 + 80));
    v20 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v20 += v25;
  }

  *(a1 + 20) = v20;
  return v20;
}

std::string *sub_159320C(std::string *result, uint64_t a2)
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
    result = sub_15B5E70((v3 + 40), v10, (v9 + 8), v8, *v3[2].__r_.__value_.__l.__size_ - LODWORD(v3[2].__r_.__value_.__l.__data_));
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

  if (*(a2 + 16))
  {
    v16 = *(a2 + 80);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    v17 = v3[3].__r_.__value_.__l.__size_;
    if (!v17)
    {
      v18 = v3->__r_.__value_.__l.__size_;
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_15ADB10(v19);
      v3[3].__r_.__value_.__l.__size_ = v17;
      v16 = *(a2 + 80);
    }

    if (v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = &off_2778220;
    }

    result = sub_15933A4(v17, v20);
  }

  v21 = *(a2 + 8);
  if (v21)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_15933A4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_15B6214(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
    result = sub_15B6214(&v3[2], v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
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
        LODWORD(v3[3].__r_.__value_.__r.__words[2]) = *(a2 + 88);
        goto LABEL_12;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    v3[3].__r_.__value_.__l.__size_ = *(a2 + 80);
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

BOOL sub_159352C(uint64_t a1)
{
  v1 = *(a1 + 48);
  while (v1 >= 1)
  {
    v2 = *(*(a1 + 56) + 8 * v1--);
    if ((*(v2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  v4 = *(a1 + 80);
  result = sub_159B0AC(v4 + 24);
  if (result)
  {
    result = sub_159B0AC(v4 + 48);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_159359C(uint64_t a1)
{
  result = sub_159B0AC(a1 + 24);
  if (result)
  {

    return sub_159B0AC(a1 + 48);
  }

  return result;
}

uint64_t sub_15935F8(uint64_t a1)
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

void sub_15936C4(uint64_t a1)
{
  sub_15935F8(a1);

  operator delete();
}

uint64_t sub_15936FC(uint64_t a1)
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
  *(result + 40) = 0;
  *(result + 8) = 0;
  if (v6)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_15937B8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v23 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v23, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v23 + 1);
    v8 = **v23;
    if (**v23 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v23, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v23 + 2);
      }
    }

    *v23 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_30;
        }

        *(a1 + 16) |= 2u;
        v17 = *(a1 + 8);
        v14 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v14 = *v14;
        }

        v15 = (a1 + 32);
      }

      else
      {
        if (v11 != 4 || v8 != 34)
        {
          goto LABEL_30;
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

LABEL_29:
      v18 = sub_194DB04(v15, v14);
      v19 = sub_1958890(v18, *v23, a3);
      goto LABEL_37;
    }

    if (v11 == 1)
    {
      if (v8 != 10)
      {
        goto LABEL_30;
      }

      *(a1 + 16) |= 1u;
      v16 = *(a1 + 8);
      v14 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v14 = *v14;
      }

      v15 = (a1 + 24);
      goto LABEL_29;
    }

    if (v11 == 2 && v8 == 21)
    {
      v5 |= 8u;
      *(a1 + 48) = *v7;
      *v23 = v7 + 1;
      goto LABEL_38;
    }

LABEL_30:
    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v21 = *(a1 + 8);
    if (v21)
    {
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v22 = sub_11F1920((a1 + 8));
      v7 = *v23;
    }

    v19 = sub_1952690(v8, v22, v7, a3);
LABEL_37:
    *v23 = v19;
    if (!v19)
    {
      goto LABEL_43;
    }

LABEL_38:
    if (sub_195ADC0(a3, v23, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_43:
  *v23 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v23;
}

char *sub_15939C8(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
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

  v9 = *(a1 + 48);
  *v4 = 21;
  *(v4 + 1) = v9;
  v4 += 5;
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_12:
  v4 = sub_128AEEC(a3, 3, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) != 0)
  {
LABEL_5:
    v4 = sub_128AEEC(a3, 4, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_6:
  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v10 = v7 & 0xFFFFFFFFFFFFFFFCLL;
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

uint64_t sub_1593B18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_19;
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
    v10 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v1 & 8) != 0)
  {
    v3 = v2 + 5;
  }

  else
  {
    v3 = v2;
  }

LABEL_19:
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

std::string *sub_1593C3C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
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

        goto LABEL_18;
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
LABEL_7:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_18:
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
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1593D84(uint64_t a1)
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

void sub_1593E50(uint64_t a1)
{
  sub_1593D84(a1);

  operator delete();
}

uint64_t sub_1593E88(uint64_t a1)
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
  *(result + 40) = 0;
  *(result + 8) = 0;
  if (v6)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1593F44(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v23 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v23, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v23 + 1);
    v8 = **v23;
    if (**v23 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v23, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v23 + 2);
      }
    }

    *v23 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_30;
        }

        *(a1 + 16) |= 2u;
        v17 = *(a1 + 8);
        v14 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v14 = *v14;
        }

        v15 = (a1 + 32);
      }

      else
      {
        if (v11 != 4 || v8 != 34)
        {
          goto LABEL_30;
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

LABEL_29:
      v18 = sub_194DB04(v15, v14);
      v19 = sub_1958890(v18, *v23, a3);
      goto LABEL_37;
    }

    if (v11 == 1)
    {
      if (v8 != 10)
      {
        goto LABEL_30;
      }

      *(a1 + 16) |= 1u;
      v16 = *(a1 + 8);
      v14 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v14 = *v14;
      }

      v15 = (a1 + 24);
      goto LABEL_29;
    }

    if (v11 == 2 && v8 == 21)
    {
      v5 |= 8u;
      *(a1 + 48) = *v7;
      *v23 = v7 + 1;
      goto LABEL_38;
    }

LABEL_30:
    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v21 = *(a1 + 8);
    if (v21)
    {
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v22 = sub_11F1920((a1 + 8));
      v7 = *v23;
    }

    v19 = sub_1952690(v8, v22, v7, a3);
LABEL_37:
    *v23 = v19;
    if (!v19)
    {
      goto LABEL_43;
    }

LABEL_38:
    if (sub_195ADC0(a3, v23, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_43:
  *v23 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v23;
}

char *sub_1594154(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
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

  v9 = *(a1 + 48);
  *v4 = 21;
  *(v4 + 1) = v9;
  v4 += 5;
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_12:
  v4 = sub_128AEEC(a3, 3, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) != 0)
  {
LABEL_5:
    v4 = sub_128AEEC(a3, 4, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_6:
  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v10 = v7 & 0xFFFFFFFFFFFFFFFCLL;
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

uint64_t sub_15942A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_19;
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
    v10 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v1 & 8) != 0)
  {
    v3 = v2 + 5;
  }

  else
  {
    v3 = v2;
  }

LABEL_19:
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

uint64_t sub_15943E0(uint64_t a1)
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
  sub_15B4DD8((a1 + 48));
  sub_15B506C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1594498(uint64_t a1)
{
  sub_15943E0(a1);

  operator delete();
}

uint64_t sub_15944D0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_157DB4C(v4);
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
      result = sub_157E0B4(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if (v8)
  {
    v9 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
    }
  }

  if ((v8 & 6) != 0)
  {
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 8);
  v10 = v1 + 8;
  *(v10 + 8) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_15945B4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

      v24 = v7 + 1;
      v23 = *v7;
      if (v23 < 0)
      {
        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if ((v25 & 0x80000000) == 0)
        {
          v24 = v7 + 2;
          goto LABEL_34;
        }

        *v35 = sub_19587DC(v7, v23);
        if (!*v35)
        {
          goto LABEL_65;
        }
      }

      else
      {
LABEL_34:
        *v35 = v24;
      }

      if (v23 > 3)
      {
        sub_1313740();
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 84) = v23;
      }

      goto LABEL_57;
    }

    if (v11 == 4)
    {
      if (v8 == 34)
      {
        v26 = v7 - 1;
        while (1)
        {
          v27 = v26 + 1;
          *v35 = v26 + 1;
          v28 = *(a1 + 64);
          if (v28 && (v29 = *(a1 + 56), v29 < *v28))
          {
            *(a1 + 56) = v29 + 1;
            v30 = *&v28[2 * v29 + 2];
          }

          else
          {
            v31 = sub_15AC14C(*(a1 + 48));
            v30 = sub_19593CC(a1 + 48, v31);
            v27 = *v35;
          }

          v26 = sub_221F9EC(a3, v30, v27);
          *v35 = v26;
          if (!v26)
          {
            goto LABEL_65;
          }

          if (*a3 <= v26 || *v26 != 34)
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
    if (v8 == 13)
    {
      v5 |= 2u;
      *(a1 + 80) = *v7;
      *v35 = v7 + 1;
      goto LABEL_57;
    }
  }

  else if (v11 == 2 && v8 == 18)
  {
    v17 = v7 - 1;
    while (1)
    {
      v18 = (v17 + 1);
      *v35 = v17 + 1;
      v19 = *(a1 + 40);
      if (v19 && (v20 = *(a1 + 32), v20 < *v19))
      {
        *(a1 + 32) = v20 + 1;
        v21 = *&v19[2 * v20 + 2];
      }

      else
      {
        v22 = sub_15AC0D4(*(a1 + 24));
        v21 = sub_19593CC(a1 + 24, v22);
        v18 = *v35;
      }

      v17 = sub_221FCBC(a3, v21, v18);
      *v35 = v17;
      if (!v17)
      {
        goto LABEL_65;
      }

      if (*a3 <= v17 || *v17 != 18)
      {
        goto LABEL_57;
      }
    }
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

char *sub_15948F0(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 80);
    *v4 = 13;
    *(v4 + 1) = v7;
    v4 += 5;
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

      v4 = sub_157DD18(v10, v12, a3);
    }
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v14 = *(a1 + 84);
    *v4 = 24;
    v4[1] = v14;
    if (v14 > 0x7F)
    {
      v4[1] = v14 | 0x80;
      v15 = v14 >> 7;
      v4[2] = v14 >> 7;
      v13 = v4 + 3;
      if (v14 >= 0x4000)
      {
        LOBYTE(v4) = v4[2];
        do
        {
          *(v13 - 1) = v4 | 0x80;
          v4 = (v15 >> 7);
          *v13++ = v15 >> 7;
          v16 = v15 >> 14;
          v15 >>= 7;
        }

        while (v16);
      }
    }

    else
    {
      v13 = v4 + 2;
    }
  }

  else
  {
    v13 = v4;
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

      v13 = sub_157E2B0(v19, v21, a3);
    }
  }

  if (v6)
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

uint64_t sub_1594B98(uint64_t a1)
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
      v7 = sub_157DEC4(v6);
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
      v14 = sub_157E398(v13);
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
      v9 += 5;
    }

    if ((v15 & 4) != 0)
    {
      v19 = *(a1 + 84);
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

std::string *sub_1594D20(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_15B5EFC(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
    result = sub_15B5C60(v3 + 2, v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
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
        HIDWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 84);
        goto LABEL_12;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 80);
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

BOOL sub_1594EA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  while (v1 >= 1)
  {
    v2 = *(*(a1 + 40) + 8 * v1--);
    if ((~*(v2 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  do
  {
    result = v4 < 1;
    if (v4 < 1)
    {
      break;
    }

    v6 = *(v5 + 8 * v4--);
  }

  while ((~*(v6 + 16) & 3) == 0);
  return result;
}

void *sub_1594F18(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_15B50F0(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1594F98(void *a1)
{
  sub_1594F18(a1);

  operator delete();
}

uint64_t sub_1594FD0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15944D0(v4);
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

char *sub_159504C(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_15AD4B8(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_221FD4C(a3, v16, v13);
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

char *sub_15951DC(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_15948F0(v8, v10, a3);
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

uint64_t sub_159531C(uint64_t a1)
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
      v7 = sub_1594B98(v6);
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

std::string *sub_15953C4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_15B5F88(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
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

BOOL sub_1595480(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  do
  {
    v3 = v1;
    if (v1 < 1)
    {
      break;
    }

    v4 = v1 - 1;
    v5 = sub_1594EA8(*(v2 + 8 * v1));
    v1 = v4;
  }

  while (v5);
  return v3 < 1;
}

uint64_t sub_15954E4(uint64_t a1)
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
  sub_15B506C((a1 + 72));
  sub_1956AFC((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15955F4(uint64_t a1)
{
  sub_15954E4(a1);

  operator delete();
}

uint64_t sub_159562C(uint64_t a1)
{
  sub_12A41D0(a1 + 24);
  result = sub_12A41D0(a1 + 48);
  v3 = *(a1 + 80);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 88) + 8);
    do
    {
      v5 = *v4++;
      result = sub_157DB4C(v5);
      --v3;
    }

    while (v3);
    *(a1 + 80) = 0;
  }

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
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
  }

  if ((v6 & 0x1F00) != 0)
  {
    *(a1 + 152) = 0;
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

uint64_t sub_15957E0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v76 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v76, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v76 + 1);
    v8 = **v76;
    if (**v76 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v76, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v76 + 2);
      }
    }

    *v76 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_107;
        }

        v5 |= 0x20u;
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
          *v76 = v12;
          *(a1 + 136) = v11;
          goto LABEL_91;
        }

        v72 = sub_19587DC(v7, v11);
        *v76 = v72;
        *(a1 + 136) = v73;
        if (v72)
        {
          goto LABEL_91;
        }

        goto LABEL_133;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_107;
        }

        *(a1 + 16) |= 1u;
        v45 = *(a1 + 8);
        v15 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
        if (v45)
        {
          v15 = *v15;
        }

        v16 = (a1 + 96);
        goto LABEL_89;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_107;
        }

        v27 = v7 - 1;
        while (1)
        {
          v28 = (v27 + 1);
          *v76 = v27 + 1;
          v29 = *(a1 + 40);
          if (v29 && (v30 = *(a1 + 32), v30 < *v29))
          {
            *(a1 + 32) = v30 + 1;
            v31 = *&v29[2 * v30 + 2];
          }

          else
          {
            v32 = *(a1 + 24);
            if (!v32)
            {
              operator new();
            }

            *v34 = v33;
            v34[1] = sub_195A650;
            *v33 = 0;
            v33[1] = 0;
            v33[2] = 0;
            v31 = sub_19593CC(a1 + 24, v33);
            v28 = *v76;
          }

          v27 = sub_1958890(v31, v28, a3);
          *v76 = v27;
          if (!v27)
          {
            goto LABEL_133;
          }

          if (*a3 <= v27 || *v27 != 26)
          {
            goto LABEL_91;
          }
        }

      case 4u:
        if (v8 != 34)
        {
          goto LABEL_107;
        }

        *(a1 + 16) |= 2u;
        v41 = *(a1 + 8);
        v15 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
        if (v41)
        {
          v15 = *v15;
        }

        v16 = (a1 + 104);
        goto LABEL_89;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_107;
        }

        *(a1 + 16) |= 4u;
        v20 = *(a1 + 8);
        v15 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v15 = *v15;
        }

        v16 = (a1 + 112);
        goto LABEL_89;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_107;
        }

        v46 = v7 - 1;
        while (1)
        {
          v47 = (v46 + 1);
          *v76 = v46 + 1;
          v48 = *(a1 + 64);
          if (v48 && (v49 = *(a1 + 56), v49 < *v48))
          {
            *(a1 + 56) = v49 + 1;
            v50 = *&v48[2 * v49 + 2];
          }

          else
          {
            v51 = *(a1 + 48);
            if (!v51)
            {
              operator new();
            }

            *v53 = v52;
            v53[1] = sub_195A650;
            *v52 = 0;
            v52[1] = 0;
            v52[2] = 0;
            v50 = sub_19593CC(a1 + 48, v52);
            v47 = *v76;
          }

          v46 = sub_1958890(v50, v47, a3);
          *v76 = v46;
          if (!v46)
          {
            goto LABEL_133;
          }

          if (*a3 <= v46 || *v46 != 50)
          {
            goto LABEL_91;
          }
        }

      case 7u:
        if (v8 != 61)
        {
          goto LABEL_107;
        }

        v5 |= 0x40u;
        *(a1 + 144) = *v7;
        *v76 = v7 + 1;
        goto LABEL_91;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_107;
        }

        v43 = v7 + 1;
        v42 = *v7;
        if ((v42 & 0x8000000000000000) == 0)
        {
          goto LABEL_66;
        }

        v44 = *v43;
        v42 = (v44 << 7) + v42 - 128;
        if (v44 < 0)
        {
          *v76 = sub_19587DC(v7, v42);
          if (!*v76)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v43 = v7 + 2;
LABEL_66:
          *v76 = v43;
        }

        if (v42 > 3)
        {
          sub_13B67EC();
        }

        else
        {
          *(a1 + 16) |= 0x80u;
          *(a1 + 148) = v42;
        }

        goto LABEL_91;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_107;
        }

        v5 |= 0x200u;
        v61 = v7 + 1;
        v60 = *v7;
        if ((v60 & 0x8000000000000000) == 0)
        {
          goto LABEL_106;
        }

        v62 = *v61;
        v60 = (v62 << 7) + v60 - 128;
        if (v62 < 0)
        {
          v74 = sub_19587DC(v7, v60);
          *v76 = v74;
          *(a1 + 156) = v75 != 0;
          if (!v74)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v61 = v7 + 2;
LABEL_106:
          *v76 = v61;
          *(a1 + 156) = v60 != 0;
        }

        goto LABEL_91;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_107;
        }

        v5 |= 0x400u;
        v25 = v7 + 1;
        v24 = *v7;
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_35;
        }

        v26 = *v25;
        v24 = (v26 << 7) + v24 - 128;
        if (v26 < 0)
        {
          v70 = sub_19587DC(v7, v24);
          *v76 = v70;
          *(a1 + 157) = v71 != 0;
          if (!v70)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v25 = v7 + 2;
LABEL_35:
          *v76 = v25;
          *(a1 + 157) = v24 != 0;
        }

        goto LABEL_91;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_107;
        }

        v58 = v7 + 1;
        v57 = *v7;
        if ((v57 & 0x8000000000000000) == 0)
        {
          goto LABEL_99;
        }

        v59 = *v58;
        v57 = (v59 << 7) + v57 - 128;
        if (v59 < 0)
        {
          *v76 = sub_19587DC(v7, v57);
          if (!*v76)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v58 = v7 + 2;
LABEL_99:
          *v76 = v58;
        }

        if (v57 > 3)
        {
          sub_1313680();
        }

        else
        {
          *(a1 + 16) |= 0x100u;
          *(a1 + 152) = v57;
        }

        goto LABEL_91;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_107;
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
          v66 = sub_19587DC(v7, v17);
          *v76 = v66;
          *(a1 + 158) = v67 != 0;
          if (!v66)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v18 = v7 + 2;
LABEL_21:
          *v76 = v18;
          *(a1 + 158) = v17 != 0;
        }

        goto LABEL_91;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_107;
        }

        v5 |= 0x1000u;
        v22 = v7 + 1;
        v21 = *v7;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v23 = *v22;
        v21 = (v23 << 7) + v21 - 128;
        if (v23 < 0)
        {
          v68 = sub_19587DC(v7, v21);
          *v76 = v68;
          *(a1 + 159) = v69 != 0;
          if (!v68)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v22 = v7 + 2;
LABEL_30:
          *v76 = v22;
          *(a1 + 159) = v21 != 0;
        }

        goto LABEL_91;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_107;
        }

        *(a1 + 16) |= 8u;
        v54 = *(a1 + 8);
        v15 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
        if (v54)
        {
          v15 = *v15;
        }

        v16 = (a1 + 120);
        goto LABEL_89;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_107;
        }

        *(a1 + 16) |= 0x10u;
        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v16 = (a1 + 128);
LABEL_89:
        v55 = sub_194DB04(v16, v15);
        v56 = sub_1958890(v55, *v76, a3);
        goto LABEL_90;
      case 0x10u:
        if (v8 != 130)
        {
          goto LABEL_107;
        }

        v35 = v7 - 2;
        while (1)
        {
          v36 = (v35 + 2);
          *v76 = v35 + 2;
          v37 = *(a1 + 88);
          if (v37 && (v38 = *(a1 + 80), v38 < *v37))
          {
            *(a1 + 80) = v38 + 1;
            v39 = *&v37[2 * v38 + 2];
          }

          else
          {
            v40 = sub_15AC0D4(*(a1 + 72));
            v39 = sub_19593CC(a1 + 72, v40);
            v36 = *v76;
          }

          v35 = sub_221FCBC(a3, v39, v36);
          *v76 = v35;
          if (!v35)
          {
            goto LABEL_133;
          }

          if (*a3 <= v35 || *v35 != 386)
          {
            goto LABEL_91;
          }
        }

      default:
LABEL_107:
        if (v8)
        {
          v63 = (v8 & 7) == 4;
        }

        else
        {
          v63 = 1;
        }

        if (!v63)
        {
          v64 = *(a1 + 8);
          if (v64)
          {
            v65 = (v64 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v65 = sub_11F1920((a1 + 8));
            v7 = *v76;
          }

          v56 = sub_1952690(v8, v65, v7, a3);
LABEL_90:
          *v76 = v56;
          if (!v56)
          {
            goto LABEL_133;
          }

LABEL_91:
          if (sub_195ADC0(a3, v76, a3[11].i32[1]))
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
LABEL_133:
          *v76 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v76;
    }
  }
}

char *sub_1595FC8(uint64_t a1, char *__dst, void *a3)
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

  if (v5)
  {
    v6 = sub_128AEEC(a3, 2, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  v11 = *(a1 + 32);
  if (v11 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = *(*(a1 + 40) + v12);
      v14 = *(v13 + 23);
      if (v14 < 0 && (v14 = v13[1], v14 > 127) || *a3 - v6 + 14 < v14)
      {
        v6 = sub_1957480(a3, 3, v13, v6);
      }

      else
      {
        *v6 = 26;
        v6[1] = v14;
        if (*(v13 + 23) < 0)
        {
          v13 = *v13;
        }

        v15 = v6 + 2;
        memcpy(v6 + 2, v13, v14);
        v6 = &v15[v14];
      }

      v12 += 8;
      --v11;
    }

    while (v11);
  }

  if ((v5 & 2) != 0)
  {
    v6 = sub_128AEEC(a3, 4, *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  if ((v5 & 4) != 0)
  {
    v6 = sub_128AEEC(a3, 5, *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL, v6);
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
        v6 = sub_1957480(a3, 6, v18, v6);
      }

      else
      {
        *v6 = 50;
        v6[1] = v19;
        if (*(v18 + 23) < 0)
        {
          v18 = *v18;
        }

        v20 = v6 + 2;
        memcpy(v6 + 2, v18, v19);
        v6 = &v20[v19];
      }

      v17 += 8;
      --v16;
    }

    while (v16);
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v21 = *(a1 + 144);
    *v6 = 61;
    *(v6 + 1) = v21;
    v6 += 5;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v23 = *(a1 + 148);
    *v6 = 64;
    v6[1] = v23;
    if (v23 > 0x7F)
    {
      v6[1] = v23 | 0x80;
      v24 = v23 >> 7;
      v6[2] = v23 >> 7;
      v22 = v6 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v25) = v6[2];
        do
        {
          *(v22 - 1) = v25 | 0x80;
          v25 = v24 >> 7;
          *v22++ = v24 >> 7;
          v26 = v24 >> 14;
          v24 >>= 7;
        }

        while (v26);
      }
    }

    else
    {
      v22 = v6 + 2;
    }
  }

  else
  {
    v22 = v6;
  }

  if ((v5 & 0x200) == 0)
  {
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_53;
    }

LABEL_58:
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v29 = *(a1 + 157);
    *v22 = 80;
    v22[1] = v29;
    v22 += 2;
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_61;
  }

  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v28 = *(a1 + 156);
  *v22 = 72;
  v22[1] = v28;
  v22 += 2;
  if ((v5 & 0x400) != 0)
  {
    goto LABEL_58;
  }

LABEL_53:
  if ((v5 & 0x100) == 0)
  {
LABEL_54:
    v27 = v22;
    goto LABEL_68;
  }

LABEL_61:
  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v30 = *(a1 + 152);
  *v22 = 88;
  v22[1] = v30;
  if (v30 > 0x7F)
  {
    v22[1] = v30 | 0x80;
    v31 = v30 >> 7;
    v22[2] = v30 >> 7;
    v27 = v22 + 3;
    if (v30 >= 0x4000)
    {
      LOBYTE(v32) = v22[2];
      do
      {
        *(v27 - 1) = v32 | 0x80;
        v32 = v31 >> 7;
        *v27++ = v31 >> 7;
        v33 = v31 >> 14;
        v31 >>= 7;
      }

      while (v33);
    }
  }

  else
  {
    v27 = v22 + 2;
  }

LABEL_68:
  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v27)
    {
      v27 = sub_225EB68(a3, v27);
    }

    v41 = *(a1 + 158);
    *v27 = 96;
    v27[1] = v41;
    v27 += 2;
    if ((v5 & 0x1000) == 0)
    {
LABEL_70:
      if ((v5 & 8) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_89;
    }
  }

  else if ((v5 & 0x1000) == 0)
  {
    goto LABEL_70;
  }

  if (*a3 <= v27)
  {
    v27 = sub_225EB68(a3, v27);
  }

  v42 = *(a1 + 159);
  *v27 = 104;
  v27[1] = v42;
  v27 += 2;
  if ((v5 & 8) == 0)
  {
LABEL_71:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_89:
  v27 = sub_128AEEC(a3, 14, *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL, v27);
  if ((v5 & 0x10) != 0)
  {
LABEL_72:
    v27 = sub_128AEEC(a3, 15, *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL, v27);
  }

LABEL_73:
  v34 = *(a1 + 80);
  if (v34)
  {
    for (i = 0; i != v34; ++i)
    {
      if (*a3 <= v27)
      {
        v27 = sub_225EB68(a3, v27);
      }

      v36 = *(*(a1 + 88) + 8 * i + 8);
      *v27 = 386;
      v37 = *(v36 + 20);
      v27[2] = v37;
      if (v37 > 0x7F)
      {
        v38 = sub_19575D0(v37, v27 + 2);
      }

      else
      {
        v38 = v27 + 3;
      }

      v27 = sub_157DD18(v36, v38, a3);
    }
  }

  v39 = *(a1 + 8);
  if ((v39 & 1) == 0)
  {
    return v27;
  }

  v43 = v39 & 0xFFFFFFFFFFFFFFFCLL;
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

  if (*a3 - v27 >= v44)
  {
    v46 = v44;
    memcpy(v27, v45, v44);
    v27 += v46;
    return v27;
  }

  return sub_1957130(a3, v45, v44, v27);
}

uint64_t sub_159657C(uint64_t a1)
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

  v8 = *(a1 + 56);
  v9 = v4 + v8;
  if (v8 >= 1)
  {
    v10 = (*(a1 + 64) + 8);
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

  v14 = *(a1 + 80);
  v15 = v9 + 2 * v14;
  v16 = *(a1 + 88);
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
      v20 = sub_157DEC4(v19);
      v15 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      v18 -= 8;
    }

    while (v18);
  }

  v21 = *(a1 + 16);
  if (v21)
  {
    if (v21)
    {
      v31 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
      v32 = *(v31 + 23);
      v33 = *(v31 + 8);
      if ((v32 & 0x80u) == 0)
      {
        v33 = v32;
      }

      v15 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v21 & 2) == 0)
      {
LABEL_22:
        if ((v21 & 4) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_49;
      }
    }

    else if ((v21 & 2) == 0)
    {
      goto LABEL_22;
    }

    v34 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
    v35 = *(v34 + 23);
    v36 = *(v34 + 8);
    if ((v35 & 0x80u) == 0)
    {
      v36 = v35;
    }

    v15 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v21 & 4) == 0)
    {
LABEL_23:
      if ((v21 & 8) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_52;
    }

LABEL_49:
    v37 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    v38 = *(v37 + 23);
    v39 = *(v37 + 8);
    if ((v38 & 0x80u) == 0)
    {
      v39 = v38;
    }

    v15 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v21 & 8) == 0)
    {
LABEL_24:
      if ((v21 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_55;
    }

LABEL_52:
    v40 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
    v41 = *(v40 + 23);
    v42 = *(v40 + 8);
    if ((v41 & 0x80u) == 0)
    {
      v42 = v41;
    }

    v15 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v21 & 0x10) == 0)
    {
LABEL_25:
      if ((v21 & 0x20) == 0)
      {
LABEL_27:
        if ((v21 & 0x40) != 0)
        {
          v15 += 5;
        }

        if ((v21 & 0x80) != 0)
        {
          v22 = *(a1 + 148);
          v23 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
          if (v22 >= 0)
          {
            v24 = v23;
          }

          else
          {
            v24 = 11;
          }

          v15 += v24;
        }

        goto LABEL_34;
      }

LABEL_26:
      v15 += ((9 * (__clz(*(a1 + 136) | 1) ^ 0x3F) + 73) >> 6) + 1;
      goto LABEL_27;
    }

LABEL_55:
    v43 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
    v44 = *(v43 + 23);
    v45 = *(v43 + 8);
    if ((v44 & 0x80u) == 0)
    {
      v45 = v44;
    }

    v15 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v21 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_34:
  if ((v21 & 0x1F00) != 0)
  {
    if ((v21 & 0x100) != 0)
    {
      v25 = *(a1 + 152);
      v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v25 >= 0)
      {
        v27 = v26;
      }

      else
      {
        v27 = 11;
      }

      v15 += v27;
    }

    v28.i64[0] = 0x200000002;
    v28.i64[1] = 0x200000002;
    v15 += vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v21), xmmword_23342A0), v28));
  }

  v29 = *(a1 + 8);
  if (v29)
  {
    v46 = v29 & 0xFFFFFFFFFFFFFFFCLL;
    v47 = *((v29 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v47 < 0)
    {
      v47 = *(v46 + 16);
    }

    v15 += v47;
  }

  *(a1 + 20) = v15;
  return v15;
}

std::string *sub_1596914(std::string *result, uint64_t a2)
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
    result = sub_15B5EFC(v3 + 3, v16, (v15 + 8), v14, *v3[3].__r_.__value_.__r.__words[2] - LODWORD(v3[3].__r_.__value_.__r.__words[1]));
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

        goto LABEL_39;
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

      goto LABEL_42;
    }

LABEL_39:
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

      goto LABEL_45;
    }

LABEL_42:
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

      goto LABEL_48;
    }

LABEL_45:
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

      goto LABEL_49;
    }

LABEL_48:
    v3[5].__r_.__value_.__r.__words[2] = *(a2 + 136);
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
      HIDWORD(v3[6].__r_.__value_.__r.__words[0]) = *(a2 + 148);
      goto LABEL_20;
    }

LABEL_49:
    LODWORD(v3[6].__r_.__value_.__l.__data_) = *(a2 + 144);
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_21:
  if ((v19 & 0x1F00) == 0)
  {
    goto LABEL_29;
  }

  if ((v19 & 0x100) != 0)
  {
    LODWORD(v3[6].__r_.__value_.__r.__words[1]) = *(a2 + 152);
    if ((v19 & 0x200) == 0)
    {
LABEL_24:
      if ((v19 & 0x400) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_53;
    }
  }

  else if ((v19 & 0x200) == 0)
  {
    goto LABEL_24;
  }

  v3[6].__r_.__value_.__s.__data_[12] = *(a2 + 156);
  if ((v19 & 0x400) == 0)
  {
LABEL_25:
    if ((v19 & 0x800) == 0)
    {
      goto LABEL_26;
    }

LABEL_54:
    v3[6].__r_.__value_.__s.__data_[14] = *(a2 + 158);
    if ((v19 & 0x1000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_53:
  v3[6].__r_.__value_.__s.__data_[13] = *(a2 + 157);
  if ((v19 & 0x800) != 0)
  {
    goto LABEL_54;
  }

LABEL_26:
  if ((v19 & 0x1000) != 0)
  {
LABEL_27:
    v3[6].__r_.__value_.__s.__data_[15] = *(a2 + 159);
  }

LABEL_28:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= v19;
LABEL_29:
  v20 = *(a2 + 8);
  if (v20)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_1596C4C(uint64_t a1)
{
  v1 = *(a1 + 80);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(a1 + 88) + 8 * v1--);
  }

  while ((~*(v3 + 16) & 3) == 0);
  return v2 < 1;
}

uint64_t sub_1596C94(uint64_t a1)
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

void sub_1596D34(uint64_t a1)
{
  sub_1596C94(a1);

  operator delete();
}

uint64_t sub_1596D6C(uint64_t a1)
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

uint64_t sub_1596DB4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1596F40(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1597040(uint64_t a1)
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

void *sub_15970F0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_15B5174(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1597170(void *a1)
{
  sub_15970F0(a1);

  operator delete();
}

uint64_t sub_15971A8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1596D6C(v4);
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

char *sub_1597224(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_15AD6CC(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_221FDDC(a3, v16, v13);
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