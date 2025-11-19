void *sub_1602840(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13B31E8(a1 + 9);
  sub_13B31E8(a1 + 6);
  sub_13B31E8(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16028D8(void *a1)
{
  sub_1602840(a1);

  operator delete();
}

uint64_t sub_1602910(uint64_t result)
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
      result = sub_16E72AC(v7);
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
      result = sub_16E72AC(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  if ((*(v1 + 16) & 7) != 0)
  {
    *(v1 + 100) = 0;
    *(v1 + 96) = 0;
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

char *sub_16029F4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v47 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v47, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v47 + 1;
    v8 = *v47;
    if (*v47 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v47, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v47 + 2;
      }
    }

    v47 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_64;
      }

      v23 = v7 + 1;
      v22 = *v7;
      if (v22 < 0)
      {
        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if ((v24 & 0x80000000) == 0)
        {
          v23 = v7 + 2;
          goto LABEL_36;
        }

        v47 = sub_19587DC(v7, v22);
        if (!v47)
        {
          goto LABEL_83;
        }
      }

      else
      {
LABEL_36:
        v47 = v23;
      }

      if (v22 > 5)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 96) = v22;
      }

      goto LABEL_71;
    }

    if (v11 == 2)
    {
      if (v8 == 18)
      {
        v28 = v7 - 1;
        while (1)
        {
          v29 = (v28 + 1);
          v47 = v28 + 1;
          v30 = *(a1 + 40);
          if (v30 && (v31 = *(a1 + 32), v31 < *v30))
          {
            *(a1 + 32) = v31 + 1;
            v32 = *&v30[2 * v31 + 2];
          }

          else
          {
            v33 = sub_16F5A54(*(a1 + 24));
            v32 = sub_19593CC(a1 + 24, v33);
            v29 = v47;
          }

          v28 = sub_22002C0(a3, v32, v29);
          v47 = v28;
          if (!v28)
          {
            goto LABEL_83;
          }

          if (*a3 <= v28 || *v28 != 18)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_64;
    }

    if (v11 != 3 || v8 != 24)
    {
      goto LABEL_64;
    }

    v5 |= 2u;
    v14 = v7 + 1;
    v13 = *v7;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_18:
      v47 = v14;
      *(a1 + 100) = v13 != 0;
      goto LABEL_71;
    }

    v45 = sub_19587DC(v7, v13);
    v47 = v45;
    *(a1 + 100) = v46 != 0;
    if (!v45)
    {
      goto LABEL_83;
    }

LABEL_71:
    if (sub_195ADC0(a3, &v47, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_64;
    }

    v5 |= 4u;
    v26 = v7 + 1;
    v25 = *v7;
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_43;
    }

    v27 = *v26;
    v25 = (v27 << 7) + v25 - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v26 = v7 + 2;
LABEL_43:
      v47 = v26;
      *(a1 + 101) = v25 != 0;
      goto LABEL_71;
    }

    v43 = sub_19587DC(v7, v25);
    v47 = v43;
    *(a1 + 101) = v44 != 0;
    if (!v43)
    {
      goto LABEL_83;
    }

    goto LABEL_71;
  }

  if (v11 == 5)
  {
    if (v8 == 42)
    {
      v34 = v7 - 1;
      while (1)
      {
        v35 = (v34 + 1);
        v47 = v34 + 1;
        v36 = *(a1 + 64);
        if (v36 && (v37 = *(a1 + 56), v37 < *v36))
        {
          *(a1 + 56) = v37 + 1;
          v38 = *&v36[2 * v37 + 2];
        }

        else
        {
          v39 = sub_16F5A54(*(a1 + 48));
          v38 = sub_19593CC(a1 + 48, v39);
          v35 = v47;
        }

        v34 = sub_22002C0(a3, v38, v35);
        v47 = v34;
        if (!v34)
        {
          goto LABEL_83;
        }

        if (*a3 <= v34 || *v34 != 42)
        {
          goto LABEL_71;
        }
      }
    }
  }

  else if (v11 == 6 && v8 == 50)
  {
    v16 = v7 - 1;
    while (1)
    {
      v17 = (v16 + 1);
      v47 = v16 + 1;
      v18 = *(a1 + 88);
      if (v18 && (v19 = *(a1 + 80), v19 < *v18))
      {
        *(a1 + 80) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
      }

      else
      {
        v21 = sub_16F5A54(*(a1 + 72));
        v20 = sub_19593CC(a1 + 72, v21);
        v17 = v47;
      }

      v16 = sub_22002C0(a3, v20, v17);
      v47 = v16;
      if (!v16)
      {
        goto LABEL_83;
      }

      if (*a3 <= v16 || *v16 != 50)
      {
        goto LABEL_71;
      }
    }
  }

LABEL_64:
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
      v7 = v47;
    }

    v47 = sub_1952690(v8, v42, v7, a3);
    if (!v47)
    {
      goto LABEL_83;
    }

    goto LABEL_71;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_83:
  v47 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v47;
}

char *sub_1602E38(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if (v5)
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

      v6 = sub_16E74A8(v13, v15, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v16 = *(a1 + 100);
    *v6 = 24;
    v6[1] = v16;
    v6 += 2;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v17 = *(a1 + 101);
    *v6 = 32;
    v6[1] = v17;
    v6 += 2;
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    for (j = 0; j != v18; ++j)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v20 = *(*(a1 + 64) + 8 * j + 8);
      *v6 = 42;
      v21 = *(v20 + 20);
      v6[1] = v21;
      if (v21 > 0x7F)
      {
        v22 = sub_19575D0(v21, v6 + 1);
      }

      else
      {
        v22 = v6 + 2;
      }

      v6 = sub_16E74A8(v20, v22, a3);
    }
  }

  v23 = *(a1 + 80);
  if (v23)
  {
    for (k = 0; k != v23; ++k)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v25 = *(*(a1 + 88) + 8 * k + 8);
      *v6 = 50;
      v26 = *(v25 + 20);
      v6[1] = v26;
      if (v26 > 0x7F)
      {
        v27 = sub_19575D0(v26, v6 + 1);
      }

      else
      {
        v27 = v6 + 2;
      }

      v6 = sub_16E74A8(v25, v27, a3);
    }
  }

  v28 = *(a1 + 8);
  if ((v28 & 1) == 0)
  {
    return v6;
  }

  v30 = v28 & 0xFFFFFFFFFFFFFFFCLL;
  v31 = *(v30 + 31);
  if (v31 < 0)
  {
    v32 = *(v30 + 8);
    v31 = *(v30 + 16);
  }

  else
  {
    v32 = (v30 + 8);
  }

  if (*a3 - v6 >= v31)
  {
    v33 = v31;
    memcpy(v6, v32, v31);
    v6 += v33;
    return v6;
  }

  return sub_1957130(a3, v32, v31, v6);
}

uint64_t sub_1603174(uint64_t a1)
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
      v14 = sub_16E7590(v13);
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
      v21 = sub_16E7590(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 16);
  if ((v22 & 7) != 0)
  {
    if (v22)
    {
      v23 = *(a1 + 96);
      v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v23 >= 0)
      {
        v25 = v24;
      }

      else
      {
        v25 = 11;
      }

      v16 += v25;
    }

    v16 += ((*(a1 + 16) >> 1) & 2) + (*(a1 + 16) & 2u);
  }

  v26 = *(a1 + 8);
  if (v26)
  {
    v28 = v26 & 0xFFFFFFFFFFFFFFFCLL;
    v29 = *((v26 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v29 < 0)
    {
      v29 = *(v28 + 16);
    }

    v16 += v29;
  }

  *(a1 + 20) = v16;
  return v16;
}

std::string *sub_1603310(std::string *result, uint64_t a2)
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
    result = sub_13B326C(v3 + 2, v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
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
    result = sub_13B326C(v3 + 3, v16, (v15 + 8), v14, *v3[3].__r_.__value_.__r.__words[2] - LODWORD(v3[3].__r_.__value_.__r.__words[1]));
    v17 = LODWORD(v3[3].__r_.__value_.__r.__words[1]) + v14;
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = v17;
    v18 = v3[3].__r_.__value_.__r.__words[2];
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if ((v19 & 7) != 0)
  {
    if (v19)
    {
      LODWORD(v3[4].__r_.__value_.__l.__data_) = *(a2 + 96);
      if ((v19 & 2) == 0)
      {
LABEL_13:
        if ((v19 & 4) == 0)
        {
LABEL_15:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v19;
          goto LABEL_16;
        }

LABEL_14:
        v3[4].__r_.__value_.__s.__data_[5] = *(a2 + 101);
        goto LABEL_15;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    v3[4].__r_.__value_.__s.__data_[4] = *(a2 + 100);
    if ((v19 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
  v20 = *(a2 + 8);
  if (v20)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_16034E4(void *a1)
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

void sub_1603558(void *a1)
{
  sub_16034E4(a1);

  operator delete();
}

uint64_t sub_1603590(uint64_t a1)
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

char *sub_16035B8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v31 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v31 + 1;
    v8 = *v31;
    if (*v31 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v31, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v31 + 2;
      }
    }

    v31 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      break;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v16 = v7 + 1;
      v17 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      v18 = *v16;
      v17 = v17 + (v18 << 7) - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v16 = v7 + 2;
LABEL_25:
        v31 = v16;
        *(a1 + 28) = v17;
        goto LABEL_37;
      }

      v26 = sub_1958770(v7, v17);
      v31 = v26;
      *(a1 + 28) = v27;
      if (!v26)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v11 != 1 || v8 != 8)
      {
        goto LABEL_13;
      }

      v5 |= 1u;
      v23 = v7 + 1;
      v24 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      v25 = *v23;
      v24 = v24 + (v25 << 7) - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_36:
        v31 = v23;
        *(a1 + 24) = v24;
        goto LABEL_37;
      }

      v28 = sub_1958770(v7, v24);
      v31 = v28;
      *(a1 + 24) = v29;
      if (!v28)
      {
        goto LABEL_49;
      }
    }

LABEL_37:
    if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 24)
  {
    v19 = v7 + 1;
    v20 = *v7;
    if (v20 < 0)
    {
      v21 = *v19;
      v22 = (v21 << 7) + v20;
      LODWORD(v20) = v22 - 128;
      if (v21 < 0)
      {
        v31 = sub_19587DC(v7, (v22 - 128));
        if (!v31)
        {
          goto LABEL_49;
        }

        LODWORD(v20) = v30;
        goto LABEL_31;
      }

      v19 = v7 + 2;
    }

    v31 = v19;
LABEL_31:
    if (sub_140BCAC(v20))
    {
      *(a1 + 16) |= 4u;
      *(a1 + 32) = v20;
    }

    else
    {
      sub_12E8578();
    }

    goto LABEL_37;
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
      v7 = v31;
    }

    v31 = sub_1952690(v8, v15, v7, a3);
    if (!v31)
    {
      goto LABEL_49;
    }

    goto LABEL_37;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_49:
  v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

char *sub_1603828(uint64_t a1, char *__dst, _DWORD *a3)
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

    v12 = *(a1 + 28);
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
          LODWORD(v6) = v13 >> 7;
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

    v16 = *(a1 + 32);
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

  if (*a3 - v15 >= v23)
  {
    v25 = v23;
    memcpy(v15, v24, v23);
    v15 += v25;
    return v15;
  }

  return sub_1957130(a3, v24, v23, v15);
}

uint64_t sub_1603A5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_13;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v1 & 4) != 0)
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

LABEL_13:
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

void *sub_1603B44(void *a1)
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

void sub_1603BB8(void *a1)
{
  sub_1603B44(a1);

  operator delete();
}

uint64_t sub_1603BF0(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
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

char *sub_1603C18(uint64_t a1, char *a2, int32x2_t *a3)
{
  v31 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v31 + 1;
    v8 = *v31;
    if (*v31 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v31, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v31 + 2;
      }
    }

    v31 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_32;
      }

      v5 |= 1u;
      v20 = v7 + 1;
      v19 = *v7;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_29;
      }

      v21 = *v20;
      v19 = (v21 << 7) + v19 - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v20 = v7 + 2;
LABEL_29:
        v31 = v20;
        *(a1 + 24) = v19 != 0;
        goto LABEL_39;
      }

      v29 = sub_19587DC(v7, v19);
      v31 = v29;
      *(a1 + 24) = v30 != 0;
      if (!v29)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_32;
      }

      v5 |= 2u;
      v13 = v7 + 1;
      v14 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      v15 = *v13;
      v14 = v14 + (v15 << 7) - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v13 = v7 + 2;
LABEL_17:
        v31 = v13;
        *(a1 + 28) = v14;
        goto LABEL_39;
      }

      v27 = sub_1958770(v7, v14);
      v31 = v27;
      *(a1 + 28) = v28;
      if (!v27)
      {
        goto LABEL_50;
      }
    }

LABEL_39:
    if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 3)
  {
    if (v11 != 4 || v8 != 32)
    {
      goto LABEL_32;
    }

    v5 |= 4u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_24:
      v31 = v17;
      *(a1 + 32) = v16;
      goto LABEL_39;
    }

    v25 = sub_19587DC(v7, v16);
    v31 = v25;
    *(a1 + 32) = v26;
    if (!v25)
    {
      goto LABEL_50;
    }

    goto LABEL_39;
  }

  if (v8 == 29)
  {
    v5 |= 8u;
    *(a1 + 40) = *v7;
    v31 = v7 + 4;
    goto LABEL_39;
  }

LABEL_32:
  if (v8)
  {
    v22 = (v8 & 7) == 4;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    v23 = *(a1 + 8);
    if (v23)
    {
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v24 = sub_11F1920((a1 + 8));
      v7 = v31;
    }

    v31 = sub_1952690(v8, v24, v7, a3);
    if (!v31)
    {
      goto LABEL_50;
    }

    goto LABEL_39;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_50:
  v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

char *sub_1603EA0(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *__dst = 8;
    __dst[1] = v6;
    __dst += 2;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 28);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 40);
    *v7 = 29;
    *(v7 + 1) = v12;
    v7 += 5;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v14 = *(a1 + 32);
    *v7 = 32;
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

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v13;
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

  if (*a3 - v13 >= v20)
  {
    v22 = v20;
    memcpy(v13, v21, v20);
    v13 += v22;
    return v13;
  }

  return sub_1957130(a3, v21, v20, v13);
}

unint64_t sub_16040BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) != 0)
  {
    LODWORD(v2) = 2 * (*(a1 + 16) & 1);
    if ((v1 & 2) != 0)
    {
      LODWORD(v2) = v2 + ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 = v2;
    if ((v1 & 4) != 0)
    {
      v2 = v2 + ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v1 & 8) != 0)
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

std::string *sub_160415C(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    result[1].__r_.__value_.__s.__data_[0] = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
  if ((v2 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 8) != 0)
  {
LABEL_6:
    LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
  }

LABEL_7:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_8:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_16041E8(void *a1)
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

  sub_1604290(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1636D8C(a1 + 9);
  sub_13B31E8(a1 + 6);
  sub_1636D08(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1604290(uint64_t a1)
{
  v3 = *(a1 + 96);
  v2 = (a1 + 96);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 104);
  if (*(a1 + 104) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_277A478)
  {
    v5 = *(a1 + 112);
    if (v5)
    {
      sub_1601BB0(v5);
      operator delete();
    }

    v6 = *(a1 + 120);
    if (v6)
    {
      sub_160217C(v6);
      operator delete();
    }

    result = *(a1 + 128);
    if (result)
    {
      sub_1603B44(result);

      operator delete();
    }
  }

  return result;
}

void sub_1604368(void *a1)
{
  sub_16041E8(a1);

  operator delete();
}

uint64_t sub_16043A0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1600D9C(v4);
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
      result = sub_16E72AC(v7);
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
      result = sub_1602910(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 16);
  if ((v11 & 0x1F) == 0)
  {
    goto LABEL_20;
  }

  if (v11)
  {
    v14 = *(v1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v14 + 23) < 0)
    {
      **v14 = 0;
      *(v14 + 8) = 0;
      if ((v11 & 2) != 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      *v14 = 0;
      *(v14 + 23) = 0;
      if ((v11 & 2) != 0)
      {
        goto LABEL_30;
      }
    }

LABEL_16:
    if ((v11 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    result = sub_1600ED4(*(v1 + 112));
    if ((v11 & 8) == 0)
    {
LABEL_18:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    goto LABEL_35;
  }

  if ((v11 & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_30:
  v15 = *(v1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v15 + 23) < 0)
  {
    **v15 = 0;
    *(v15 + 8) = 0;
    if ((v11 & 4) != 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    *v15 = 0;
    *(v15 + 23) = 0;
    if ((v11 & 4) != 0)
    {
      goto LABEL_34;
    }
  }

LABEL_17:
  if ((v11 & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_35:
  result = sub_1602228(*(v1 + 120));
  if ((v11 & 0x10) != 0)
  {
LABEL_19:
    result = sub_1603BF0(*(v1 + 128));
  }

LABEL_20:
  if ((v11 & 0x60) != 0)
  {
    *(v1 + 136) = 0;
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

uint64_t sub_1604520(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v55 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v55, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v55 + 1);
    v7 = **v55;
    if (**v55 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v55, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v55 + 2);
      }
    }

    *v55 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 5)
    {
      if (v7 >> 3 <= 7)
      {
        if (v10 == 6)
        {
          if (v7 == 50)
          {
            v30 = v6 - 1;
            while (1)
            {
              v31 = (v30 + 1);
              *v55 = v30 + 1;
              v32 = *(a1 + 88);
              if (v32 && (v33 = *(a1 + 80), v33 < *v32))
              {
                *(a1 + 80) = v33 + 1;
                v34 = *&v32[2 * v33 + 2];
              }

              else
              {
                v35 = sub_1617EAC(*(a1 + 72));
                v34 = sub_19593CC(a1 + 72, v35);
                v31 = *v55;
              }

              v30 = sub_22291B8(a3, v34, v31);
              *v55 = v30;
              if (!v30)
              {
                goto LABEL_112;
              }

              if (*a3 <= v30 || *v30 != 50)
              {
                goto LABEL_102;
              }
            }
          }

LABEL_94:
          if (v7)
          {
            v51 = (v7 & 7) == 4;
          }

          else
          {
            v51 = 1;
          }

          if (v51)
          {
            if (v6)
            {
              a3[10].i32[0] = v7 - 1;
              return *v55;
            }

            goto LABEL_112;
          }

          v52 = *(a1 + 8);
          if (v52)
          {
            v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v53 = sub_11F1920((a1 + 8));
            v6 = *v55;
          }

          v14 = sub_1952690(v7, v53, v6, a3);
          goto LABEL_101;
        }

        if (v10 != 7 || v7 != 58)
        {
          goto LABEL_94;
        }

        *(a1 + 16) |= 1u;
        v22 = *(a1 + 8);
        v16 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v16 = *v16;
        }

        v17 = (a1 + 96);
        goto LABEL_44;
      }

      if (v10 != 8)
      {
        if (v10 == 9)
        {
          if (v7 == 72)
          {
            v49 = v6 + 1;
            v48 = *v6;
            if ((v48 & 0x8000000000000000) == 0)
            {
              goto LABEL_91;
            }

            v50 = *v49;
            v48 = (v50 << 7) + v48 - 128;
            if (v50 < 0)
            {
              *v55 = sub_19587DC(v6, v48);
              if (!*v55)
              {
                goto LABEL_112;
              }
            }

            else
            {
              v49 = v6 + 2;
LABEL_91:
              *v55 = v49;
            }

            if (v48 > 7)
            {
              sub_1348EF8();
            }

            else
            {
              *(a1 + 16) |= 0x40u;
              *(a1 + 140) = v48;
            }

            continue;
          }

          goto LABEL_94;
        }

        if (v10 != 10 || v7 != 82)
        {
          goto LABEL_94;
        }

        *(a1 + 16) |= 2u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = (a1 + 104);
LABEL_44:
        v23 = sub_194DB04(v17, v16);
        v14 = sub_1958890(v23, *v55, a3);
        goto LABEL_101;
      }

      if (v7 != 66)
      {
        goto LABEL_94;
      }

      *(a1 + 16) |= 0x10u;
      v42 = *(a1 + 128);
      if (!v42)
      {
        v43 = *(a1 + 8);
        v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
        if (v43)
        {
          v44 = *v44;
        }

        v42 = sub_1617FD8(v44);
        *(a1 + 128) = v42;
        v6 = *v55;
      }

      v14 = sub_2229248(a3, v42, v6);
    }

    else
    {
      if (v7 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v7 == 10)
          {
            v24 = v6 - 1;
            while (1)
            {
              v25 = v24 + 1;
              *v55 = v24 + 1;
              v26 = *(a1 + 40);
              if (v26 && (v27 = *(a1 + 32), v27 < *v26))
              {
                *(a1 + 32) = v27 + 1;
                v28 = *&v26[2 * v27 + 2];
              }

              else
              {
                v29 = sub_1617CD4(*(a1 + 24));
                v28 = sub_19593CC(a1 + 24, v29);
                v25 = *v55;
              }

              v24 = sub_2229098(a3, v28, v25);
              *v55 = v24;
              if (!v24)
              {
                goto LABEL_112;
              }

              if (*a3 <= v24 || *v24 != 10)
              {
                goto LABEL_102;
              }
            }
          }
        }

        else if (v10 == 2 && v7 == 16)
        {
          v20 = v6 + 1;
          v19 = *v6;
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_35;
          }

          v21 = *v20;
          v19 = (v21 << 7) + v19 - 128;
          if (v21 < 0)
          {
            *v55 = sub_19587DC(v6, v19);
            if (!*v55)
            {
              goto LABEL_112;
            }
          }

          else
          {
            v20 = v6 + 2;
LABEL_35:
            *v55 = v20;
          }

          if (v19 > 0x16)
          {
            sub_12E8418();
          }

          else
          {
            *(a1 + 16) |= 0x20u;
            *(a1 + 136) = v19;
          }

          continue;
        }

        goto LABEL_94;
      }

      if (v10 == 3)
      {
        if (v7 == 26)
        {
          v36 = v6 - 1;
          while (1)
          {
            v37 = v36 + 1;
            *v55 = v36 + 1;
            v38 = *(a1 + 64);
            if (v38 && (v39 = *(a1 + 56), v39 < *v38))
            {
              *(a1 + 56) = v39 + 1;
              v40 = *&v38[2 * v39 + 2];
            }

            else
            {
              v41 = sub_16F5A54(*(a1 + 48));
              v40 = sub_19593CC(a1 + 48, v41);
              v37 = *v55;
            }

            v36 = sub_22002C0(a3, v40, v37);
            *v55 = v36;
            if (!v36)
            {
              break;
            }

            if (*a3 <= v36 || *v36 != 26)
            {
              goto LABEL_102;
            }
          }

LABEL_112:
          *v55 = 0;
          return *v55;
        }

        goto LABEL_94;
      }

      if (v10 == 4)
      {
        if (v7 != 34)
        {
          goto LABEL_94;
        }

        *(a1 + 16) |= 4u;
        v45 = *(a1 + 112);
        if (!v45)
        {
          v46 = *(a1 + 8);
          v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
          if (v46)
          {
            v47 = *v47;
          }

          v45 = sub_1617D8C(v47);
          *(a1 + 112) = v45;
          v6 = *v55;
        }

        v14 = sub_2229008(a3, v45, v6);
      }

      else
      {
        if (v10 != 5 || v7 != 42)
        {
          goto LABEL_94;
        }

        *(a1 + 16) |= 8u;
        v11 = *(a1 + 120);
        if (!v11)
        {
          v12 = *(a1 + 8);
          v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
          if (v12)
          {
            v13 = *v13;
          }

          v11 = sub_1617E30(v13);
          *(a1 + 120) = v11;
          v6 = *v55;
        }

        v14 = sub_2229128(a3, v11, v6);
      }
    }

LABEL_101:
    *v55 = v14;
    if (!v14)
    {
      goto LABEL_112;
    }

LABEL_102:
    ;
  }

  return *v55;
}

char *sub_1604A74(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_1601374(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if ((v11 & 0x20) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v13 = *(a1 + 136);
    *__dst = 16;
    __dst[1] = v13;
    if (v13 > 0x7F)
    {
      __dst[1] = v13 | 0x80;
      v14 = v13 >> 7;
      __dst[2] = v13 >> 7;
      v12 = __dst + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(__dst) = __dst[2];
        do
        {
          *(v12 - 1) = __dst | 0x80;
          __dst = (v14 >> 7);
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v12 = __dst + 2;
    }
  }

  else
  {
    v12 = __dst;
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    for (j = 0; j != v16; ++j)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v18 = *(*(a1 + 64) + 8 * j + 8);
      *v12 = 26;
      v19 = *(v18 + 20);
      v12[1] = v19;
      if (v19 > 0x7F)
      {
        v20 = sub_19575D0(v19, v12 + 1);
      }

      else
      {
        v20 = v12 + 2;
      }

      v12 = sub_16E74A8(v18, v20, a3);
    }
  }

  if ((v11 & 4) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v21 = *(a1 + 112);
    *v12 = 34;
    v22 = *(v21 + 64);
    v12[1] = v22;
    if (v22 > 0x7F)
    {
      v23 = sub_19575D0(v22, v12 + 1);
    }

    else
    {
      v23 = v12 + 2;
    }

    v12 = sub_1601EA8(v21, v23, a3);
  }

  if ((v11 & 8) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v24 = *(a1 + 120);
    *v12 = 42;
    v25 = *(v24 + 20);
    v12[1] = v25;
    if (v25 > 0x7F)
    {
      v26 = sub_19575D0(v25, v12 + 1);
    }

    else
    {
      v26 = v12 + 2;
    }

    v12 = sub_1602510(v24, v26, a3);
  }

  v27 = *(a1 + 80);
  if (v27)
  {
    for (k = 0; k != v27; ++k)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v29 = *(*(a1 + 88) + 8 * k + 8);
      *v12 = 50;
      v30 = *(v29 + 20);
      v12[1] = v30;
      if (v30 > 0x7F)
      {
        v31 = sub_19575D0(v30, v12 + 1);
      }

      else
      {
        v31 = v12 + 2;
      }

      v12 = sub_1602E38(v29, v31, a3);
    }
  }

  if ((v11 & 1) == 0)
  {
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_50;
    }

LABEL_53:
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v33 = *(a1 + 128);
    *v12 = 66;
    v34 = *(v33 + 20);
    v12[1] = v34;
    if (v34 > 0x7F)
    {
      v35 = sub_19575D0(v34, v12 + 1);
    }

    else
    {
      v35 = v12 + 2;
    }

    v12 = sub_1603EA0(v33, v35, a3);
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_59;
  }

  v12 = sub_128AEEC(a3, 7, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, v12);
  if ((v11 & 0x10) != 0)
  {
    goto LABEL_53;
  }

LABEL_50:
  if ((v11 & 0x40) == 0)
  {
LABEL_51:
    v32 = v12;
    goto LABEL_66;
  }

LABEL_59:
  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v36 = *(a1 + 140);
  *v12 = 72;
  v12[1] = v36;
  if (v36 > 0x7F)
  {
    v12[1] = v36 | 0x80;
    v37 = v36 >> 7;
    v12[2] = v36 >> 7;
    v32 = v12 + 3;
    if (v36 >= 0x4000)
    {
      LOBYTE(v38) = v12[2];
      do
      {
        *(v32 - 1) = v38 | 0x80;
        v38 = v37 >> 7;
        *v32++ = v37 >> 7;
        v39 = v37 >> 14;
        v37 >>= 7;
      }

      while (v39);
    }
  }

  else
  {
    v32 = v12 + 2;
  }

LABEL_66:
  if ((v11 & 2) != 0)
  {
    v32 = sub_128AEEC(a3, 10, *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL, v32);
  }

  v40 = *(a1 + 8);
  if ((v40 & 1) == 0)
  {
    return v32;
  }

  v42 = v40 & 0xFFFFFFFFFFFFFFFCLL;
  v43 = *(v42 + 31);
  if (v43 < 0)
  {
    v44 = *(v42 + 8);
    v43 = *(v42 + 16);
  }

  else
  {
    v44 = (v42 + 8);
  }

  if (*a3 - v32 >= v43)
  {
    v45 = v43;
    memcpy(v32, v44, v43);
    v32 += v45;
    return v32;
  }

  return sub_1957130(a3, v44, v43, v32);
}

uint64_t sub_1604F40(uint64_t a1)
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
      v7 = sub_16016E4(v6);
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
      v14 = sub_16E7590(v13);
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
      v21 = sub_1603174(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 16);
  if ((v22 & 0x7F) == 0)
  {
    goto LABEL_33;
  }

  if (v22)
  {
    v28 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(v28 + 23);
    v30 = *(v28 + 8);
    if ((v29 & 0x80u) == 0)
    {
      v30 = v29;
    }

    v16 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 2) == 0)
    {
LABEL_24:
      if ((v22 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_41;
    }
  }

  else if ((v22 & 2) == 0)
  {
    goto LABEL_24;
  }

  v31 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  v32 = *(v31 + 23);
  v33 = *(v31 + 8);
  if ((v32 & 0x80u) == 0)
  {
    v33 = v32;
  }

  v16 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 4) == 0)
  {
LABEL_25:
    if ((v22 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_42;
  }

LABEL_41:
  v34 = sub_160206C(*(a1 + 112));
  v16 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 8) == 0)
  {
LABEL_26:
    if ((v22 & 0x10) == 0)
    {
      goto LABEL_27;
    }

LABEL_43:
    v36 = sub_16040BC(*(a1 + 128));
    v16 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 0x20) == 0)
    {
LABEL_28:
      if ((v22 & 0x40) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_29;
    }

    goto LABEL_44;
  }

LABEL_42:
  v35 = sub_1602748(*(a1 + 120));
  v16 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 0x10) != 0)
  {
    goto LABEL_43;
  }

LABEL_27:
  if ((v22 & 0x20) == 0)
  {
    goto LABEL_28;
  }

LABEL_44:
  v37 = *(a1 + 136);
  v38 = ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v37 >= 0)
  {
    v39 = v38;
  }

  else
  {
    v39 = 11;
  }

  v16 += v39;
  if ((v22 & 0x40) != 0)
  {
LABEL_29:
    v23 = *(a1 + 140);
    v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v23 >= 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 11;
    }

    v16 += v25;
  }

LABEL_33:
  v26 = *(a1 + 8);
  if (v26)
  {
    v40 = v26 & 0xFFFFFFFFFFFFFFFCLL;
    v41 = *((v26 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v41 < 0)
    {
      v41 = *(v40 + 16);
    }

    v16 += v41;
  }

  *(a1 + 20) = v16;
  return v16;
}

void sub_1605230(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1637B64((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_13B326C((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_1637BF0((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if ((v19 & 0x7F) != 0)
  {
    if (v19)
    {
      v21 = *(a2 + 96);
      *(a1 + 16) |= 1u;
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      sub_194EA1C((a1 + 96), (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
      if ((v19 & 2) == 0)
      {
LABEL_13:
        if ((v19 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_30;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    v24 = *(a2 + 104);
    *(a1 + 16) |= 2u;
    v25 = *(a1 + 8);
    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v26 = *v26;
    }

    sub_194EA1C((a1 + 104), (v24 & 0xFFFFFFFFFFFFFFFELL), v26);
    if ((v19 & 4) == 0)
    {
LABEL_14:
      if ((v19 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_38;
    }

LABEL_30:
    *(a1 + 16) |= 4u;
    v27 = *(a1 + 112);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v27 = sub_1617D8C(v29);
      *(a1 + 112) = v27;
    }

    if (*(a2 + 112))
    {
      v30 = *(a2 + 112);
    }

    else
    {
      v30 = &off_277A3B0;
    }

    sub_13D7FAC(v27, v30);
    if ((v19 & 8) == 0)
    {
LABEL_15:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_46;
    }

LABEL_38:
    *(a1 + 16) |= 8u;
    v31 = *(a1 + 120);
    if (!v31)
    {
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      v31 = sub_1617E30(v33);
      *(a1 + 120) = v31;
    }

    if (*(a2 + 120))
    {
      v34 = *(a2 + 120);
    }

    else
    {
      v34 = &off_277A3F8;
    }

    sub_128F948(v31, v34);
    if ((v19 & 0x10) == 0)
    {
LABEL_16:
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_54;
    }

LABEL_46:
    *(a1 + 16) |= 0x10u;
    v35 = *(a1 + 128);
    if (!v35)
    {
      v36 = *(a1 + 8);
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
      if (v36)
      {
        v37 = *v37;
      }

      v35 = sub_1617FD8(v37);
      *(a1 + 128) = v35;
    }

    if (*(a2 + 128))
    {
      v38 = *(a2 + 128);
    }

    else
    {
      v38 = &off_277A448;
    }

    sub_160415C(v35, v38);
    if ((v19 & 0x20) == 0)
    {
LABEL_17:
      if ((v19 & 0x40) == 0)
      {
LABEL_19:
        *(a1 + 16) |= v19;
        goto LABEL_20;
      }

LABEL_18:
      *(a1 + 140) = *(a2 + 140);
      goto LABEL_19;
    }

LABEL_54:
    *(a1 + 136) = *(a2 + 136);
    if ((v19 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_20:
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_160553C(uint64_t a1)
{
  v2 = *(a1 + 32);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_1601B14(*(*(a1 + 40) + 8 * v2) + 48);
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_16055A8(uint64_t result)
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

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      result = sub_1626F8C(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if ((v8 & 0xF) == 0)
  {
    goto LABEL_15;
  }

  if ((v8 & 1) == 0)
  {
    if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_27:
    result = sub_16247EC(*(v1 + 80));
    if ((v8 & 4) == 0)
    {
LABEL_13:
      if ((v8 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_28;
  }

  v11 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v11 + 23) < 0)
  {
    **v11 = 0;
    *(v11 + 8) = 0;
    if ((v8 & 2) != 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    *v11 = 0;
    *(v11 + 23) = 0;
    if ((v8 & 2) != 0)
    {
      goto LABEL_27;
    }
  }

LABEL_12:
  if ((v8 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_28:
  result = sub_16258B8(*(v1 + 88));
  if ((v8 & 8) != 0)
  {
LABEL_14:
    result = sub_1627CE8(*(v1 + 96));
  }

LABEL_15:
  if ((v8 & 0xF0) != 0)
  {
    *(v1 + 104) = 0;
    *(v1 + 112) = 0;
  }

  if ((v8 & 0x3F00) != 0)
  {
    *(v1 + 120) = 0;
    *(v1 + 128) = 0;
    *(v1 + 136) = 0;
  }

  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

uint64_t sub_16056DC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16332D4(v4);
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

uint64_t sub_1605758(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1619544(v4);
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

uint64_t sub_16057D4(uint64_t a1)
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

  sub_1605870(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1636E94((a1 + 48));
  sub_1636E10((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_1605870(uint64_t (***result)()))()
{
  if (result != &off_277A508)
  {
    v1 = result;
    v2 = result[9];
    if (v2)
    {
      sub_162868C(v2);
      operator delete();
    }

    v3 = v1[10];
    if (v3)
    {
      sub_1610720(v3);
      operator delete();
    }

    v4 = v1[11];
    if (v4)
    {
      sub_160B61C(v4);
      operator delete();
    }

    v5 = v1[12];
    if (v5)
    {
      sub_160A200(v5);
      operator delete();
    }

    v6 = v1[13];
    if (v6)
    {
      sub_1608A58(v6);
      operator delete();
    }

    v7 = v1[14];
    if (v7)
    {
      sub_1614334(v7);
      operator delete();
    }

    v8 = v1[15];
    if (v8)
    {
      sub_16148A8(v8);
      operator delete();
    }

    v9 = v1[16];
    if (v9)
    {
      sub_1633838(v9);
      operator delete();
    }

    result = v1[17];
    if (result)
    {
      sub_1619AB4(result);

      operator delete();
    }
  }

  return result;
}

void sub_16059CC(uint64_t a1)
{
  sub_16057D4(a1);

  operator delete();
}

uint64_t sub_1605A04(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_160A930(v4);
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
      result = sub_1600894(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if (!v8)
  {
    goto LABEL_19;
  }

  if (v8)
  {
    result = sub_16055A8(*(v1 + 72));
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  result = sub_1605B44(*(v1 + 80));
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = sub_1605BF0(*(v1 + 88));
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = sub_1605C90(*(v1 + 96));
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_30:
    result = sub_1605E20(*(v1 + 112));
    if ((v8 & 0x40) == 0)
    {
LABEL_17:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_31;
  }

LABEL_29:
  result = sub_1605D58(*(v1 + 104));
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_30;
  }

LABEL_16:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  result = sub_1605EB0(*(v1 + 120));
  if ((v8 & 0x80) != 0)
  {
LABEL_18:
    result = sub_16056DC(*(v1 + 128));
  }

LABEL_19:
  if ((v8 & 0x100) != 0)
  {
    result = sub_1605758(*(v1 + 136));
  }

  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

uint64_t sub_1605B44(uint64_t a1)
{
  result = sub_12A41D0(a1 + 16);
  v3 = *(a1 + 48);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 56) + 8);
    do
    {
      v5 = *v4++;
      result = sub_16E4E44(v5);
      --v3;
    }

    while (v3);
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 72);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 80) + 8);
    do
    {
      v8 = *v7++;
      result = sub_1688B20(v8);
      --v6;
    }

    while (v6);
    *(a1 + 72) = 0;
  }

  v10 = *(a1 + 8);
  v9 = (a1 + 8);
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

uint64_t sub_1605BF0(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 3) != 0)
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_5;
    }

    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v4 + 23) & 0x80000000) == 0)
    {
      *v4 = 0;
      *(v4 + 23) = 0;
LABEL_5:
      if ((v3 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v3 & 2) != 0)
    {
LABEL_6:
      result = sub_160B154(*(a1 + 56));
    }
  }

LABEL_7:
  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 56) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

uint64_t sub_1605C90(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13C17C4(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v6 + 23) & 0x80000000) == 0)
    {
      *v6 = 0;
      *(v6 + 23) = 0;
LABEL_9:
      if ((v5 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v5 & 2) != 0)
    {
LABEL_10:
      result = sub_178ABF8(*(v1 + 56));
    }
  }

LABEL_11:
  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_1605D58(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1608540(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v6 + 23) & 0x80000000) == 0)
    {
      *v6 = 0;
      *(v6 + 23) = 0;
LABEL_9:
      if ((v5 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v5 & 2) != 0)
    {
LABEL_10:
      result = sub_1608B68(*(v1 + 56));
    }
  }

LABEL_11:
  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_1605E20(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1610FEC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_1613E6C(*(v1 + 48));
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

uint64_t sub_1605EB0(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_41;
  }

  if (v3)
  {
    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    v6 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_27:
    v8 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v10 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_39;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_15:
  v5 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_19;
    }
  }

LABEL_5:
  if ((v3 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_23:
  v7 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_27;
    }
  }

LABEL_7:
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_31:
  v9 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_35;
    }
  }

LABEL_9:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_41;
  }

LABEL_39:
  v11 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v11 + 23) < 0)
  {
    **v11 = 0;
    *(v11 + 8) = 0;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

  *v11 = 0;
  *(v11 + 23) = 0;
LABEL_41:
  if ((v3 & 0x100) == 0)
  {
    goto LABEL_46;
  }

LABEL_42:
  v12 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v12 + 23) < 0)
  {
    **v12 = 0;
    *(v12 + 8) = 0;
  }

  else
  {
    *v12 = 0;
    *(v12 + 23) = 0;
  }

LABEL_46:
  if ((v3 & 0xFE00) != 0)
  {
    *(a1 + 152) = 0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    *(a1 + 188) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
  }

  if (HIBYTE(v3))
  {
    *(a1 + 236) = 0;
    *(a1 + 220) = 0u;
    *(a1 + 204) = 0u;
  }

  v14 = *(a1 + 8);
  v13 = a1 + 8;
  *(v13 + 8) = 0;
  if (v14)
  {

    return sub_1957EA8(v13);
  }

  return result;
}

char *sub_1606120(uint64_t a1, char *a2, int32x2_t *a3)
{
  v58 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v58, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v58 + 1;
    v7 = *v58;
    if (*v58 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v58, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v58 + 2;
      }
    }

    v58 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 5)
    {
      if (v7 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v7 == 10)
          {
            *(a1 + 16) |= 1u;
            v29 = *(a1 + 72);
            if (!v29)
            {
              v30 = *(a1 + 8);
              v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
              if (v30)
              {
                v31 = *v31;
              }

              sub_163249C(v31);
              v29 = v32;
              *(a1 + 72) = v32;
              v6 = v58;
            }

            v15 = sub_22292D8(a3, v29, v6);
            goto LABEL_105;
          }
        }

        else if (v10 == 2 && v7 == 18)
        {
          *(a1 + 16) |= 2u;
          v26 = *(a1 + 80);
          if (!v26)
          {
            v27 = *(a1 + 8);
            v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
            if (v27)
            {
              v28 = *v28;
            }

            v26 = sub_1618888(v28);
            *(a1 + 80) = v26;
            v6 = v58;
          }

          v15 = sub_2229368(a3, v26, v6);
          goto LABEL_105;
        }
      }

      else if (v10 == 3)
      {
        if (v7 == 26)
        {
          v42 = v6 - 1;
          while (1)
          {
            v43 = (v42 + 1);
            v58 = v42 + 1;
            v44 = *(a1 + 40);
            if (v44 && (v45 = *(a1 + 32), v45 < *v44))
            {
              *(a1 + 32) = v45 + 1;
              v46 = *&v44[2 * v45 + 2];
            }

            else
            {
              v47 = sub_161845C(*(a1 + 24));
              v46 = sub_19593CC(a1 + 24, v47);
              v43 = v58;
            }

            v42 = sub_22293F8(a3, v46, v43);
            v58 = v42;
            if (!v42)
            {
              return 0;
            }

            if (*a3 <= v42 || *v42 != 26)
            {
              goto LABEL_106;
            }
          }
        }
      }

      else if (v10 == 4)
      {
        if (v7 == 34)
        {
          *(a1 + 16) |= 4u;
          v33 = *(a1 + 88);
          if (!v33)
          {
            v34 = *(a1 + 8);
            v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
            if (v34)
            {
              v35 = *v35;
            }

            v33 = sub_1618584(v35);
            *(a1 + 88) = v33;
            v6 = v58;
          }

          v15 = sub_2229488(a3, v33, v6);
          goto LABEL_105;
        }
      }

      else if (v10 == 5 && v7 == 42)
      {
        *(a1 + 16) |= 8u;
        v16 = *(a1 + 96);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_16183B8(v18);
          *(a1 + 96) = v16;
          v6 = v58;
        }

        v15 = sub_2229518(a3, v16, v6);
        goto LABEL_105;
      }
    }

    else if (v7 >> 3 > 8)
    {
      if (v10 == 9)
      {
        if (v7 == 74)
        {
          *(a1 + 16) |= 0x80u;
          v51 = *(a1 + 128);
          if (!v51)
          {
            v52 = *(a1 + 8);
            v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
            if (v52)
            {
              v53 = *v53;
            }

            v51 = sub_1633D74(v53);
            *(a1 + 128) = v51;
            v6 = v58;
          }

          v15 = sub_2229758(a3, v51, v6);
          goto LABEL_105;
        }
      }

      else if (v10 == 10)
      {
        if (v7 == 82)
        {
          *(a1 + 16) |= 0x100u;
          v39 = *(a1 + 136);
          if (!v39)
          {
            v40 = *(a1 + 8);
            v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
            if (v40)
            {
              v41 = *v41;
            }

            v39 = sub_1619FF0(v41);
            *(a1 + 136) = v39;
            v6 = v58;
          }

          v15 = sub_22297E8(a3, v39, v6);
          goto LABEL_105;
        }
      }

      else if (v10 == 11 && v7 == 90)
      {
        v19 = v6 - 1;
        while (1)
        {
          v20 = (v19 + 1);
          v58 = v19 + 1;
          v21 = *(a1 + 64);
          if (v21 && (v22 = *(a1 + 56), v22 < *v21))
          {
            *(a1 + 56) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_1617C50(*(a1 + 48));
            v23 = sub_19593CC(a1 + 48, v24);
            v20 = v58;
          }

          v19 = sub_2229878(a3, v23, v20);
          v58 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 90)
          {
            goto LABEL_106;
          }
        }
      }
    }

    else if (v10 == 6)
    {
      if (v7 == 50)
      {
        *(a1 + 16) |= 0x10u;
        v48 = *(a1 + 104);
        if (!v48)
        {
          v49 = *(a1 + 8);
          v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
          if (v49)
          {
            v50 = *v50;
          }

          v48 = sub_161827C(v50);
          *(a1 + 104) = v48;
          v6 = v58;
        }

        v15 = sub_22295A8(a3, v48, v6);
        goto LABEL_105;
      }
    }

    else if (v10 == 7)
    {
      if (v7 == 58)
      {
        *(a1 + 16) |= 0x20u;
        v36 = *(a1 + 112);
        if (!v36)
        {
          v37 = *(a1 + 8);
          v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
          if (v37)
          {
            v38 = *v38;
          }

          v36 = sub_1618CDC(v38);
          *(a1 + 112) = v36;
          v6 = v58;
        }

        v15 = sub_2229638(a3, v36, v6);
        goto LABEL_105;
      }
    }

    else if (v10 == 8 && v7 == 66)
    {
      *(a1 + 16) |= 0x40u;
      v11 = *(a1 + 120);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        sub_1618D78(v13);
        v11 = v14;
        *(a1 + 120) = v14;
        v6 = v58;
      }

      v15 = sub_22296C8(a3, v11, v6);
      goto LABEL_105;
    }

    if (v7)
    {
      v54 = (v7 & 7) == 4;
    }

    else
    {
      v54 = 1;
    }

    if (v54)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v58;
      }

      return 0;
    }

    v55 = *(a1 + 8);
    if (v55)
    {
      v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v56 = sub_11F1920((a1 + 8));
      v6 = v58;
    }

    v15 = sub_1952690(v7, v56, v6, a3);
LABEL_105:
    v58 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_106:
    ;
  }

  return v58;
}

char *sub_1606670(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 72);
    *v4 = 10;
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

    v4 = sub_1628F60(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 80);
    *v4 = 18;
    v11 = *(v10 + 88);
    v4[1] = v11;
    if (v11 > 0x7F)
    {
      v12 = sub_19575D0(v11, v4 + 1);
    }

    else
    {
      v12 = v4 + 2;
    }

    v4 = sub_1610B0C(v10, v12, a3);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v15 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 26;
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

      v4 = sub_160AC64(v15, v17, a3);
    }
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v18 = *(a1 + 88);
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

    v4 = sub_160BA3C(v18, v20, a3);
    if ((v6 & 8) == 0)
    {
LABEL_25:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_43;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_25;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v21 = *(a1 + 96);
  *v4 = 42;
  v22 = *(v21 + 20);
  v4[1] = v22;
  if (v22 > 0x7F)
  {
    v23 = sub_19575D0(v22, v4 + 1);
  }

  else
  {
    v23 = v4 + 2;
  }

  v4 = sub_160A540(v21, v23, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_26:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_49;
  }

LABEL_43:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v24 = *(a1 + 104);
  *v4 = 50;
  v25 = *(v24 + 20);
  v4[1] = v25;
  if (v25 > 0x7F)
  {
    v26 = sub_19575D0(v25, v4 + 1);
  }

  else
  {
    v26 = v4 + 2;
  }

  v4 = sub_1608EA0(v24, v26, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_27:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_55;
  }

LABEL_49:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v27 = *(a1 + 112);
  *v4 = 58;
  v28 = *(v27 + 20);
  v4[1] = v28;
  if (v28 > 0x7F)
  {
    v29 = sub_19575D0(v28, v4 + 1);
  }

  else
  {
    v29 = v4 + 2;
  }

  v4 = sub_1614614(v27, v29, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_28:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_55:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v30 = *(a1 + 120);
  *v4 = 66;
  v31 = *(v30 + 20);
  v4[1] = v31;
  if (v31 > 0x7F)
  {
    v32 = sub_19575D0(v31, v4 + 1);
  }

  else
  {
    v32 = v4 + 2;
  }

  v4 = sub_1615380(v30, v32, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_29:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_67;
  }

LABEL_61:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v33 = *(a1 + 128);
  *v4 = 74;
  v34 = *(v33 + 40);
  v4[1] = v34;
  if (v34 > 0x7F)
  {
    v35 = sub_19575D0(v34, v4 + 1);
  }

  else
  {
    v35 = v4 + 2;
  }

  v4 = sub_1633A80(v33, v35, a3);
  if ((v6 & 0x100) != 0)
  {
LABEL_67:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v36 = *(a1 + 136);
    *v4 = 82;
    v37 = *(v36 + 40);
    v4[1] = v37;
    if (v37 > 0x7F)
    {
      v38 = sub_19575D0(v37, v4 + 1);
    }

    else
    {
      v38 = v4 + 2;
    }

    v4 = sub_1619CFC(v36, v38, a3);
  }

LABEL_73:
  v39 = *(a1 + 56);
  if (v39)
  {
    for (j = 0; j != v39; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v41 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 90;
      v42 = *(v41 + 20);
      v4[1] = v42;
      if (v42 > 0x7F)
      {
        v43 = sub_19575D0(v42, v4 + 1);
      }

      else
      {
        v43 = v4 + 2;
      }

      v4 = sub_1600A90(v41, v43, a3);
    }
  }

  v44 = *(a1 + 8);
  if ((v44 & 1) == 0)
  {
    return v4;
  }

  v46 = v44 & 0xFFFFFFFFFFFFFFFCLL;
  v47 = *(v46 + 31);
  if (v47 < 0)
  {
    v48 = *(v46 + 8);
    v47 = *(v46 + 16);
  }

  else
  {
    v48 = (v46 + 8);
  }

  if ((*a3 - v4) >= v47)
  {
    v49 = v47;
    memcpy(v4, v48, v47);
    v4 += v49;
    return v4;
  }

  return sub_1957130(a3, v48, v47, v4);
}

uint64_t sub_1606BD8(uint64_t a1)
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
      v7 = sub_160AE4C(v6);
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
      v14 = sub_1600B78(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if (!v15)
  {
    goto LABEL_25;
  }

  if (v15)
  {
    v20 = sub_1629764(*(a1 + 72));
    v9 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 2) == 0)
    {
LABEL_18:
      if ((v15 & 4) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }
  }

  else if ((v15 & 2) == 0)
  {
    goto LABEL_18;
  }

  v21 = sub_1610D68(*(a1 + 80));
  v9 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 4) == 0)
  {
LABEL_19:
    if ((v15 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_32;
  }

LABEL_31:
  v22 = sub_160BC38(*(a1 + 88));
  v9 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 8) == 0)
  {
LABEL_20:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

LABEL_32:
  v23 = sub_160A708(*(a1 + 96));
  v9 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 0x10) == 0)
  {
LABEL_21:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_22;
    }

LABEL_34:
    v25 = sub_16147BC(*(a1 + 112));
    v9 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 0x40) == 0)
    {
LABEL_23:
      if ((v15 & 0x80) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    goto LABEL_35;
  }

LABEL_33:
  v24 = sub_1609068(*(a1 + 104));
  v9 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 0x20) != 0)
  {
    goto LABEL_34;
  }

LABEL_22:
  if ((v15 & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_35:
  v26 = sub_1615D54(*(a1 + 120));
  v9 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 0x80) != 0)
  {
LABEL_24:
    v16 = sub_1633BC0(*(a1 + 128));
    v9 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_25:
  if ((v15 & 0x100) != 0)
  {
    v17 = sub_1619E3C(*(a1 + 136));
    v9 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v18 = *(a1 + 8);
  if (v18)
  {
    v27 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v28 < 0)
    {
      v28 = *(v27 + 16);
    }

    v9 += v28;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_1606EAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1637C7C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_1637D08((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if (!v14)
  {
    goto LABEL_16;
  }

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

      sub_163249C(v17);
      *(a1 + 72) = v15;
    }

    if (*(a2 + 72))
    {
      v18 = *(a2 + 72);
    }

    else
    {
      v18 = &off_277B168;
    }

    sub_16072A0(v15, v18);
    if ((v14 & 2) == 0)
    {
LABEL_10:
      if ((v14 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_34;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_10;
  }

  *(a1 + 16) |= 2u;
  v19 = *(a1 + 80);
  if (!v19)
  {
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    v19 = sub_1618888(v21);
    *(a1 + 80) = v19;
  }

  if (*(a2 + 80))
  {
    v22 = *(a2 + 80);
  }

  else
  {
    v22 = &off_277A950;
  }

  sub_16075AC(v19, v22);
  if ((v14 & 4) == 0)
  {
LABEL_11:
    if ((v14 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_34:
  *(a1 + 16) |= 4u;
  v23 = *(a1 + 88);
  if (!v23)
  {
    v24 = *(a1 + 8);
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v25 = *v25;
    }

    v23 = sub_1618584(v25);
    *(a1 + 88) = v23;
  }

  if (*(a2 + 88))
  {
    v26 = *(a2 + 88);
  }

  else
  {
    v26 = &off_277A6A8;
  }

  sub_1607720(v23, v26);
  if ((v14 & 8) == 0)
  {
LABEL_12:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_42:
  *(a1 + 16) |= 8u;
  v27 = *(a1 + 96);
  if (!v27)
  {
    v28 = *(a1 + 8);
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    v27 = sub_16183B8(v29);
    *(a1 + 96) = v27;
  }

  if (*(a2 + 96))
  {
    v30 = *(a2 + 96);
  }

  else
  {
    v30 = &off_277A638;
  }

  sub_160788C(v27, v30);
  if ((v14 & 0x10) == 0)
  {
LABEL_13:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

LABEL_50:
  *(a1 + 16) |= 0x10u;
  v31 = *(a1 + 104);
  if (!v31)
  {
    v32 = *(a1 + 8);
    v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
    if (v32)
    {
      v33 = *v33;
    }

    v31 = sub_161827C(v33);
    *(a1 + 104) = v31;
  }

  if (*(a2 + 104))
  {
    v34 = *(a2 + 104);
  }

  else
  {
    v34 = &off_277A598;
  }

  sub_16079D4(v31, v34);
  if ((v14 & 0x20) == 0)
  {
LABEL_14:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_66;
  }

LABEL_58:
  *(a1 + 16) |= 0x20u;
  v35 = *(a1 + 112);
  if (!v35)
  {
    v36 = *(a1 + 8);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    v35 = sub_1618CDC(v37);
    *(a1 + 112) = v35;
  }

  if (*(a2 + 112))
  {
    v38 = *(a2 + 112);
  }

  else
  {
    v38 = &off_277AA80;
  }

  sub_1607B1C(v35, v38);
  if ((v14 & 0x40) != 0)
  {
LABEL_66:
    *(a1 + 16) |= 0x40u;
    v39 = *(a1 + 120);
    if (!v39)
    {
      v40 = *(a1 + 8);
      v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
      if (v40)
      {
        v41 = *v41;
      }

      sub_1618D78(v41);
      *(a1 + 120) = v39;
    }

    if (*(a2 + 120))
    {
      v42 = *(a2 + 120);
    }

    else
    {
      v42 = &off_277AAB8;
    }

    sub_1607C2C(v39, v42);
    if ((v14 & 0x80) != 0)
    {
      goto LABEL_74;
    }

LABEL_16:
    if ((v14 & 0x100) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_82;
  }

LABEL_15:
  if ((v14 & 0x80) == 0)
  {
    goto LABEL_16;
  }

LABEL_74:
  *(a1 + 16) |= 0x80u;
  v43 = *(a1 + 128);
  if (!v43)
  {
    v44 = *(a1 + 8);
    v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
    if (v44)
    {
      v45 = *v45;
    }

    v43 = sub_1633D74(v45);
    *(a1 + 128) = v43;
  }

  if (*(a2 + 128))
  {
    v46 = *(a2 + 128);
  }

  else
  {
    v46 = &off_277B5E0;
  }

  sub_1608098(v43, v46);
  if ((v14 & 0x100) != 0)
  {
LABEL_82:
    *(a1 + 16) |= 0x100u;
    v47 = *(a1 + 136);
    if (!v47)
    {
      v48 = *(a1 + 8);
      v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
      if (v48)
      {
        v49 = *v49;
      }

      v47 = sub_1619FF0(v49);
      *(a1 + 136) = v47;
    }

    if (*(a2 + 136))
    {
      v50 = *(a2 + 136);
    }

    else
    {
      v50 = &off_277AC10;
    }

    sub_1608154(v47, v50);
  }

LABEL_90:
  v51 = *(a2 + 8);
  if (v51)
  {

    sub_1957EF4((a1 + 8), (v51 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_16072A0(uint64_t a1, uint64_t a2)
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

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1638E44((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if (v14)
  {
    if (v14)
    {
      v16 = *(a2 + 72);
      *(a1 + 16) |= 1u;
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_194EA1C((a1 + 72), (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_42;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(a1 + 16) |= 2u;
    v19 = *(a1 + 80);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_1631F84(v21);
      *(a1 + 80) = v19;
    }

    if (*(a2 + 80))
    {
      v22 = *(a2 + 80);
    }

    else
    {
      v22 = &off_277AFF8;
    }

    sub_1624C7C(v19, v22);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_50;
    }

LABEL_42:
    *(a1 + 16) |= 4u;
    v23 = *(a1 + 88);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_1632110(v25);
      *(a1 + 88) = v23;
    }

    if (*(a2 + 88))
    {
      v26 = *(a2 + 88);
    }

    else
    {
      v26 = &off_277B020;
    }

    sub_1626068(v23, v26);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_58;
    }

LABEL_50:
    *(a1 + 16) |= 8u;
    v27 = *(a1 + 96);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v27 = sub_16323FC(v29);
      *(a1 + 96) = v27;
    }

    if (*(a2 + 96))
    {
      v30 = *(a2 + 96);
    }

    else
    {
      v30 = &off_277B118;
    }

    sub_1628550(v27, v30);
    if ((v14 & 0x10) == 0)
    {
LABEL_13:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_59;
    }

LABEL_58:
    *(a1 + 104) = *(a2 + 104);
    if ((v14 & 0x20) == 0)
    {
LABEL_14:
      if ((v14 & 0x40) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_60;
    }

LABEL_59:
    *(a1 + 108) = *(a2 + 108);
    if ((v14 & 0x40) == 0)
    {
LABEL_15:
      if ((v14 & 0x80) == 0)
      {
LABEL_17:
        *(a1 + 16) |= v14;
        goto LABEL_18;
      }

LABEL_16:
      *(a1 + 116) = *(a2 + 116);
      goto LABEL_17;
    }

LABEL_60:
    *(a1 + 112) = *(a2 + 112);
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  if ((v14 & 0x3F00) == 0)
  {
    goto LABEL_27;
  }

  if ((v14 & 0x100) != 0)
  {
    *(a1 + 120) = *(a2 + 120);
    if ((v14 & 0x200) == 0)
    {
LABEL_21:
      if ((v14 & 0x400) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_64;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_21;
  }

  *(a1 + 124) = *(a2 + 124);
  if ((v14 & 0x400) == 0)
  {
LABEL_22:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(a1 + 128) = *(a2 + 128);
  if ((v14 & 0x800) == 0)
  {
LABEL_23:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

LABEL_66:
    *(a1 + 136) = *(a2 + 136);
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_65:
  *(a1 + 132) = *(a2 + 132);
  if ((v14 & 0x1000) != 0)
  {
    goto LABEL_66;
  }

LABEL_24:
  if ((v14 & 0x2000) != 0)
  {
LABEL_25:
    *(a1 + 140) = *(a2 + 140);
  }

LABEL_26:
  *(a1 + 16) |= v14;
LABEL_27:
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_16075AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1201B48(a1 + 16, v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
    v7 = *(a1 + 24) + v4;
    *(a1 + 24) = v7;
    v8 = *(a1 + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a2 + 56);
    v11 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_11F1A54((a1 + 40), v11, (v10 + 8), v9, **(a1 + 56) - *(a1 + 48));
    v12 = *(a1 + 48) + v9;
    *(a1 + 48) = v12;
    v13 = *(a1 + 56);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = *(a2 + 80);
    v16 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_1637FA4((a1 + 64), v16, (v15 + 8), v14, **(a1 + 80) - *(a1 + 72));
    v17 = *(a1 + 72) + v14;
    *(a1 + 72) = v17;
    v18 = *(a1 + 80);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 8);
  if (v19)
  {

    sub_1957EF4((a1 + 8), (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1607720(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1201B48(a1 + 24, v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
      v11 = *(a2 + 48);
      *(a1 + 16) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      sub_194EA1C((a1 + 48), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
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
    v14 = *(a1 + 56);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_16184E4(v16);
      *(a1 + 56) = v14;
    }

    if (*(a2 + 56))
    {
      v17 = *(a2 + 56);
    }

    else
    {
      v17 = &off_277A678;
    }

    sub_160B548(v14, v17);
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

void sub_160788C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1637E10((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      v10 = *(a2 + 48);
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      sub_194EA1C((a1 + 48), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v13 = *(a1 + 56);
      if (!v13)
      {
        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v13 = sub_178E2C4(v15);
        *(a1 + 56) = v13;
      }

      if (*(a2 + 56))
      {
        v16 = *(a2 + 56);
      }

      else
      {
        v16 = &off_2782068;
      }

      sub_178B0F0(v13, v16);
    }
  }

  v17 = *(a2 + 8);
  if (v17)
  {

    sub_1957EF4((a1 + 8), (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_16079D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1637D84((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      v10 = *(a2 + 48);
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      sub_194EA1C((a1 + 48), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v13 = *(a1 + 56);
      if (!v13)
      {
        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        sub_1618320(v15);
        *(a1 + 56) = v13;
      }

      if (*(a2 + 56))
      {
        v16 = *(a2 + 56);
      }

      else
      {
        v16 = &off_277A5D8;
      }

      sub_1609190(v13, v16);
    }
  }

  v17 = *(a2 + 8);
  if (v17)
  {

    sub_1957EF4((a1 + 8), (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1607B1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1638138((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

      v10 = sub_1618C3C(v12);
      *(a1 + 48) = v10;
      v9 = *(a2 + 48);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_277AA50;
    }

    sub_1614260(v10, v13);
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_1607C2C(std::string *result, uint64_t a2)
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
  if (!v9)
  {
    goto LABEL_38;
  }

  if (v9)
  {
    v10 = *(a2 + 48);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    size = v3->__r_.__value_.__l.__size_;
    v12 = (size & 0xFFFFFFFFFFFFFFFCLL);
    if (size)
    {
      v12 = *v12;
    }

    result = sub_194EA1C(&v3[2], (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
    if ((v9 & 2) == 0)
    {
LABEL_7:
      if ((v9 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_7;
  }

  v13 = *(a2 + 56);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
  v14 = v3->__r_.__value_.__l.__size_;
  v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
  if (v14)
  {
    v15 = *v15;
  }

  result = sub_194EA1C(&v3[2].__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
  if ((v9 & 4) == 0)
  {
LABEL_8:
    if ((v9 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_20:
  v16 = *(a2 + 64);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
  v17 = v3->__r_.__value_.__l.__size_;
  v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
  if (v17)
  {
    v18 = *v18;
  }

  result = sub_194EA1C(&v3[2].__r_.__value_.__r.__words[2], (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
  if ((v9 & 8) == 0)
  {
LABEL_9:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_23:
  v19 = *(a2 + 72);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
  v20 = v3->__r_.__value_.__l.__size_;
  v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
  if (v20)
  {
    v21 = *v21;
  }

  result = sub_194EA1C(&v3[3], (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
  if ((v9 & 0x10) == 0)
  {
LABEL_10:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_29:
    v25 = *(a2 + 88);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x20u;
    v26 = v3->__r_.__value_.__l.__size_;
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    result = sub_194EA1C(&v3[3].__r_.__value_.__r.__words[2], (v25 & 0xFFFFFFFFFFFFFFFELL), v27);
    if ((v9 & 0x40) == 0)
    {
LABEL_12:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    goto LABEL_32;
  }

LABEL_26:
  v22 = *(a2 + 80);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
  v23 = v3->__r_.__value_.__l.__size_;
  v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
  if (v23)
  {
    v24 = *v24;
  }

  result = sub_194EA1C(&v3[3].__r_.__value_.__l.__size_, (v22 & 0xFFFFFFFFFFFFFFFELL), v24);
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_32:
  v28 = *(a2 + 96);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x40u;
  v29 = v3->__r_.__value_.__l.__size_;
  v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
  if (v29)
  {
    v30 = *v30;
  }

  result = sub_194EA1C(&v3[4], (v28 & 0xFFFFFFFFFFFFFFFELL), v30);
  if ((v9 & 0x80) != 0)
  {
LABEL_35:
    v31 = *(a2 + 104);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x80u;
    v32 = v3->__r_.__value_.__l.__size_;
    v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
    if (v32)
    {
      v33 = *v33;
    }

    result = sub_194EA1C(&v3[4].__r_.__value_.__l.__size_, (v31 & 0xFFFFFFFFFFFFFFFELL), v33);
  }

LABEL_38:
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_49;
  }

  if ((v9 & 0x100) != 0)
  {
    v35 = *(a2 + 112);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x100u;
    v36 = v3->__r_.__value_.__l.__size_;
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    result = sub_194EA1C(&v3[4].__r_.__value_.__r.__words[2], (v35 & 0xFFFFFFFFFFFFFFFELL), v37);
    if ((v9 & 0x200) == 0)
    {
LABEL_41:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_78;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_41;
  }

  LODWORD(v3[5].__r_.__value_.__l.__data_) = *(a2 + 120);
  if ((v9 & 0x400) == 0)
  {
LABEL_42:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_79;
  }

LABEL_78:
  HIDWORD(v3[5].__r_.__value_.__r.__words[0]) = *(a2 + 124);
  if ((v9 & 0x800) == 0)
  {
LABEL_43:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_80;
  }

LABEL_79:
  v3[5].__r_.__value_.__l.__size_ = *(a2 + 128);
  if ((v9 & 0x1000) == 0)
  {
LABEL_44:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_81;
  }

LABEL_80:
  v3[5].__r_.__value_.__r.__words[2] = *(a2 + 136);
  if ((v9 & 0x2000) == 0)
  {
LABEL_45:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_46;
    }

LABEL_82:
    LODWORD(v3[6].__r_.__value_.__r.__words[1]) = *(a2 + 152);
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_81:
  v3[6].__r_.__value_.__r.__words[0] = *(a2 + 144);
  if ((v9 & 0x4000) != 0)
  {
    goto LABEL_82;
  }

LABEL_46:
  if ((v9 & 0x8000) != 0)
  {
LABEL_47:
    HIDWORD(v3[6].__r_.__value_.__r.__words[1]) = *(a2 + 156);
  }

LABEL_48:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
LABEL_49:
  if ((v9 & 0xFF0000) == 0)
  {
    goto LABEL_60;
  }

  if ((v9 & 0x10000) != 0)
  {
    LODWORD(v3[6].__r_.__value_.__r.__words[2]) = *(a2 + 160);
    if ((v9 & 0x20000) == 0)
    {
LABEL_52:
      if ((v9 & 0x40000) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_86;
    }
  }

  else if ((v9 & 0x20000) == 0)
  {
    goto LABEL_52;
  }

  HIDWORD(v3[6].__r_.__value_.__r.__words[2]) = *(a2 + 164);
  if ((v9 & 0x40000) == 0)
  {
LABEL_53:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_87;
  }

LABEL_86:
  LODWORD(v3[7].__r_.__value_.__l.__data_) = *(a2 + 168);
  if ((v9 & 0x80000) == 0)
  {
LABEL_54:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_88;
  }

LABEL_87:
  HIDWORD(v3[7].__r_.__value_.__r.__words[0]) = *(a2 + 172);
  if ((v9 & 0x100000) == 0)
  {
LABEL_55:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_89;
  }

LABEL_88:
  v3[7].__r_.__value_.__l.__size_ = *(a2 + 176);
  if ((v9 & 0x200000) == 0)
  {
LABEL_56:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_57;
    }

LABEL_90:
    v3[8].__r_.__value_.__r.__words[0] = *(a2 + 192);
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

LABEL_89:
  v3[7].__r_.__value_.__r.__words[2] = *(a2 + 184);
  if ((v9 & 0x400000) != 0)
  {
    goto LABEL_90;
  }

LABEL_57:
  if ((v9 & 0x800000) != 0)
  {
LABEL_58:
    LODWORD(v3[8].__r_.__value_.__r.__words[1]) = *(a2 + 200);
  }

LABEL_59:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
LABEL_60:
  if (!HIBYTE(v9))
  {
    goto LABEL_70;
  }

  if ((v9 & 0x1000000) != 0)
  {
    HIDWORD(v3[8].__r_.__value_.__r.__words[1]) = *(a2 + 204);
    if ((v9 & 0x2000000) == 0)
    {
LABEL_63:
      if ((v9 & 0x4000000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_94;
    }
  }

  else if ((v9 & 0x2000000) == 0)
  {
    goto LABEL_63;
  }

  LODWORD(v3[8].__r_.__value_.__r.__words[2]) = *(a2 + 208);
  if ((v9 & 0x4000000) == 0)
  {
LABEL_64:
    if ((v9 & 0x8000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_95;
  }

LABEL_94:
  HIDWORD(v3[8].__r_.__value_.__r.__words[2]) = *(a2 + 212);
  if ((v9 & 0x8000000) == 0)
  {
LABEL_65:
    if ((v9 & 0x10000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_96;
  }

LABEL_95:
  v3[9].__r_.__value_.__r.__words[0] = *(a2 + 216);
  if ((v9 & 0x10000000) == 0)
  {
LABEL_66:
    if ((v9 & 0x20000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_97;
  }

LABEL_96:
  LODWORD(v3[9].__r_.__value_.__r.__words[1]) = *(a2 + 224);
  if ((v9 & 0x20000000) == 0)
  {
LABEL_67:
    if ((v9 & 0x40000000) == 0)
    {
      goto LABEL_68;
    }

LABEL_98:
    LODWORD(v3[9].__r_.__value_.__r.__words[2]) = *(a2 + 232);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

LABEL_99:
    v3[9].__r_.__value_.__s.__data_[20] = *(a2 + 236);
    goto LABEL_69;
  }

LABEL_97:
  HIDWORD(v3[9].__r_.__value_.__r.__words[1]) = *(a2 + 228);
  if ((v9 & 0x40000000) != 0)
  {
    goto LABEL_98;
  }

LABEL_68:
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_99;
  }

LABEL_69:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
LABEL_70:
  v34 = *(a2 + 8);
  if (v34)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_1608098(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_16391F0(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
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

std::string *sub_1608154(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_1638360(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
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

uint64_t sub_1608210(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    if (!sub_1608308(*(a1 + 80)))
    {
      return 0;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    v3 = *(a1 + 88);
    if ((*(v3 + 16) & 2) != 0)
    {
      if (!sub_1601B14(*(v3 + 56) + 16))
      {
        return 0;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 8) != 0)
  {
    v4 = *(a1 + 96);
    v5 = *(v4 + 32);
    while (v5 >= 1)
    {
      v6 = v5 - 1;
      v7 = sub_13C1B80(*(*(v4 + 40) + 8 * v5));
      v5 = v6;
      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) == 0)
  {
    goto LABEL_17;
  }

  if (!sub_160938C(*(a1 + 104) + 24))
  {
    return 0;
  }

  v2 = *(a1 + 16);
LABEL_17:
  if ((v2 & 0x20) == 0)
  {
    return 1;
  }

  v10 = *(a1 + 112);
  v11 = *(v10 + 32);
  do
  {
    v8 = v11 < 1;
    if (v11 < 1)
    {
      break;
    }

    v12 = v11 - 1;
    v13 = sub_1601B14(*(*(v10 + 40) + 8 * v11) + 48);
    v11 = v12;
  }

  while ((v13 & 1) != 0);
  return v8;
}

BOOL sub_1608308(uint64_t a1)
{
  v2 = *(a1 + 48);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_16E5370(*(*(a1 + 56) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 72);
  do
  {
    v5 = v6 < 1;
    if (v6 < 1)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = sub_1688E0C(*(*(a1 + 80) + 8 * v6));
    v6 = v7;
  }

  while ((v8 & 1) != 0);
  return v5;
}

uint64_t sub_1608388(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  result = sub_1601B14(*(a1 + 56) + 16);
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL sub_16083BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_13C1B80(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

BOOL sub_160841C(uint64_t a1)
{
  v2 = *(a1 + 32);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_1601B14(*(*(a1 + 40) + 8 * v2) + 48);
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

void *sub_1608488(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_12E6204(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1608508(void *a1)
{
  sub_1608488(a1);

  operator delete();
}

unsigned __int8 *sub_1608540(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E4E44(v4);
      --v2;
    }

    while (v2);
    *(v1 + 6) = 0;
  }

  v6 = v1[8];
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_16085BC(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_16F5828(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_21F4D60(a3, v16, v13);
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

char *sub_160874C(uint64_t a1, char *__dst, _DWORD *a3)
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
      v9 = *(v8 + 44);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_16E5070(v8, v10, a3);
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

uint64_t sub_160888C(uint64_t a1)
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
      v7 = sub_16E51F0(v6);
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

void sub_1608934(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_11F1A54((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
    v7 = *(a1 + 24) + v4;
    *(a1 + 24) = v7;
    v8 = *(a1 + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_16089F0(uint64_t a1)
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
    v5 = sub_16E5370(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_1608A58(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_277A598)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      sub_1609428(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1636F18((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1608B30(uint64_t a1)
{
  sub_1608A58(a1);

  operator delete();
}

uint64_t sub_1608B68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) != 0)
  {
    if ((v1 & 1) == 0)
    {
      if ((v1 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v3 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
        if ((v1 & 4) != 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
        if ((v1 & 4) != 0)
        {
          goto LABEL_15;
        }
      }

LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_22;
      }

LABEL_19:
      v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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

      goto LABEL_22;
    }

    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_15:
    v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v1 & 8) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v1 & 8) == 0)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_19;
  }

LABEL_22:
  if ((v1 & 0xF0) != 0)
  {
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  if ((v1 & 0x1F00) != 0)
  {
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v7 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v7)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1608C70(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 == 6)
    {
      if (v7 == 50)
      {
        v19 = (v6 - 1);
        while (1)
        {
          v20 = (v19 + 1);
          *v30 = v19 + 1;
          v21 = *(a1 + 40);
          if (v21 && (v22 = *(a1 + 32), v22 < *v21))
          {
            *(a1 + 32) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_16181DC(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = *v30;
          }

          v19 = sub_2229998(a3, v23, v20);
          *v30 = v19;
          if (!v19)
          {
            break;
          }

          if (*a3 <= v19 || *v19 != 50)
          {
            goto LABEL_40;
          }
        }

LABEL_45:
        *v30 = 0;
        return *v30;
      }
    }

    else if (v10 == 5)
    {
      if (v7 == 42)
      {
        *(a1 + 16) |= 1u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = sub_194DB04((a1 + 48), v17);
        v15 = sub_1958890(v18, *v30, a3);
        goto LABEL_39;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 2u;
      v25 = *(a1 + 56);
      if (!v25)
      {
        v26 = *(a1 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        sub_1618320(v27);
        v25 = v28;
        *(a1 + 56) = v28;
        v6 = *v30;
      }

      v15 = sub_2229908(a3, v25, v6);
      goto LABEL_39;
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
        return *v30;
      }

      goto LABEL_45;
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
LABEL_39:
    *v30 = v15;
    if (!v15)
    {
      goto LABEL_45;
    }

LABEL_40:
    ;
  }

  return *v30;
}

char *sub_1608EA0(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 56);
    *v4 = 10;
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

    v4 = sub_1609A08(v7, v9, a3);
  }

  if (v6)
  {
    v4 = sub_128AEEC(a3, 5, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v12 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 50;
      v13 = *(v12 + 40);
      v4[1] = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, v4 + 1);
      }

      else
      {
        v14 = v4 + 2;
      }

      v4 = sub_160874C(v12, v14, a3);
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

  if ((*a3 - v4) >= v18)
  {
    v20 = v18;
    memcpy(v4, v19, v18);
    v4 += v20;
    return v4;
  }

  return sub_1957130(a3, v19, v18, v4);
}

uint64_t sub_1609068(uint64_t a1)
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
      v7 = sub_160888C(v6);
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
  if ((v8 & 3) != 0)
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

      v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v12 = sub_1609F10(*(a1 + 56));
      v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

    v2 += v16;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_1609190(std::string *result, uint64_t a2)
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

        goto LABEL_30;
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

      goto LABEL_33;
    }

LABEL_30:
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

      goto LABEL_36;
    }

LABEL_33:
    v15 = *(a2 + 48);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    v16 = v3->__r_.__value_.__l.__size_;
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    result = sub_194EA1C(&v3[2], (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_37;
    }

LABEL_36:
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_38;
    }

LABEL_37:
    HIDWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
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
      HIDWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 68);
      goto LABEL_11;
    }

LABEL_38:
    LODWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x1F00) == 0)
  {
    goto LABEL_20;
  }

  if ((v4 & 0x100) != 0)
  {
    LODWORD(v3[3].__r_.__value_.__l.__data_) = *(a2 + 72);
    if ((v4 & 0x200) == 0)
    {
LABEL_15:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_42;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  HIDWORD(v3[3].__r_.__value_.__r.__words[0]) = *(a2 + 76);
  if ((v4 & 0x400) == 0)
  {
LABEL_16:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_17;
    }

LABEL_43:
    HIDWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 84);
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_42:
  LODWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 80);
  if ((v4 & 0x800) != 0)
  {
    goto LABEL_43;
  }

LABEL_17:
  if ((v4 & 0x1000) != 0)
  {
LABEL_18:
    LODWORD(v3[3].__r_.__value_.__r.__words[2]) = *(a2 + 88);
  }

LABEL_19:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
LABEL_20:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_160938C(uint64_t a1)
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
        v7 = sub_16E5370(*(*(v4 + 32) + 8 * v5));
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

uint64_t sub_1609428(uint64_t a1)
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

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_13:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1609508(uint64_t a1)
{
  sub_1609428(a1);

  operator delete();
}

uint64_t sub_1609540(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v56 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v56, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v56 + 1);
    v8 = **v56;
    if (**v56 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v56, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v56 + 2);
      }
    }

    *v56 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_65;
        }

        *(a1 + 16) |= 1u;
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v13 = (a1 + 24);
        goto LABEL_51;
      case 2u:
        if (v8 != 21)
        {
          goto LABEL_65;
        }

        v30 = *v7;
        v20 = v7 + 1;
        v5 |= 0x10u;
        *(a1 + 56) = v30;
        goto LABEL_42;
      case 3u:
        if (v8 != 29)
        {
          goto LABEL_65;
        }

        v25 = *v7;
        v20 = v7 + 1;
        v5 |= 0x20u;
        *(a1 + 60) = v25;
        goto LABEL_42;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_65;
        }

        *(a1 + 16) |= 2u;
        v26 = *(a1 + 8);
        v12 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v12 = *v12;
        }

        v13 = (a1 + 32);
        goto LABEL_51;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_65;
        }

        v5 |= 0x40u;
        v18 = v7 + 1;
        LODWORD(v17) = *v7;
        if ((v17 & 0x80) == 0)
        {
          goto LABEL_21;
        }

        v19 = *v18;
        v17 = v17 + (v19 << 7) - 128;
        if (v19 < 0)
        {
          v46 = sub_19587DC(v7, v17);
          *v56 = v46;
          *(a1 + 64) = v47;
          if (!v46)
          {
            goto LABEL_87;
          }
        }

        else
        {
          v18 = v7 + 2;
LABEL_21:
          *v56 = v18;
          *(a1 + 64) = v17;
        }

        goto LABEL_53;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_65;
        }

        *(a1 + 16) |= 4u;
        v31 = *(a1 + 8);
        v12 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v12 = *v12;
        }

        v13 = (a1 + 40);
        goto LABEL_51;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_65;
        }

        *(a1 + 16) |= 8u;
        v32 = *(a1 + 8);
        v12 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
        if (v32)
        {
          v12 = *v12;
        }

        v13 = (a1 + 48);
LABEL_51:
        v33 = sub_194DB04(v13, v12);
        v34 = sub_1958890(v33, *v56, a3);
        goto LABEL_52;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_65;
        }

        v5 |= 0x80u;
        v28 = v7 + 1;
        LODWORD(v27) = *v7;
        if ((v27 & 0x80) == 0)
        {
          goto LABEL_39;
        }

        v29 = *v28;
        v27 = v27 + (v29 << 7) - 128;
        if (v29 < 0)
        {
          v50 = sub_19587DC(v7, v27);
          *v56 = v50;
          *(a1 + 68) = v51;
          if (!v50)
          {
            goto LABEL_87;
          }
        }

        else
        {
          v28 = v7 + 2;
LABEL_39:
          *v56 = v28;
          *(a1 + 68) = v27;
        }

        goto LABEL_53;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_65;
        }

        v5 |= 0x100u;
        v39 = v7 + 1;
        LODWORD(v38) = *v7;
        if ((v38 & 0x80) == 0)
        {
          goto LABEL_64;
        }

        v40 = *v39;
        v38 = v38 + (v40 << 7) - 128;
        if (v40 < 0)
        {
          v54 = sub_19587DC(v7, v38);
          *v56 = v54;
          *(a1 + 72) = v55;
          if (!v54)
          {
            goto LABEL_87;
          }
        }

        else
        {
          v39 = v7 + 2;
LABEL_64:
          *v56 = v39;
          *(a1 + 72) = v38;
        }

        goto LABEL_53;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_65;
        }

        v5 |= 0x200u;
        v23 = v7 + 1;
        LODWORD(v22) = *v7;
        if ((v22 & 0x80) == 0)
        {
          goto LABEL_28;
        }

        v24 = *v23;
        v22 = v22 + (v24 << 7) - 128;
        if (v24 < 0)
        {
          v48 = sub_19587DC(v7, v22);
          *v56 = v48;
          *(a1 + 76) = v49;
          if (!v48)
          {
            goto LABEL_87;
          }
        }

        else
        {
          v23 = v7 + 2;
LABEL_28:
          *v56 = v23;
          *(a1 + 76) = v22;
        }

        goto LABEL_53;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_65;
        }

        v5 |= 0x400u;
        v36 = v7 + 1;
        LODWORD(v35) = *v7;
        if ((v35 & 0x80) == 0)
        {
          goto LABEL_59;
        }

        v37 = *v36;
        v35 = v35 + (v37 << 7) - 128;
        if (v37 < 0)
        {
          v52 = sub_19587DC(v7, v35);
          *v56 = v52;
          *(a1 + 80) = v53;
          if (!v52)
          {
            goto LABEL_87;
          }
        }

        else
        {
          v36 = v7 + 2;
LABEL_59:
          *v56 = v36;
          *(a1 + 80) = v35;
        }

        goto LABEL_53;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_65;
        }

        v5 |= 0x800u;
        v15 = v7 + 1;
        LODWORD(v14) = *v7;
        if ((v14 & 0x80) == 0)
        {
          goto LABEL_16;
        }

        v16 = *v15;
        v14 = v14 + (v16 << 7) - 128;
        if (v16 < 0)
        {
          v44 = sub_19587DC(v7, v14);
          *v56 = v44;
          *(a1 + 84) = v45;
          if (!v44)
          {
            goto LABEL_87;
          }
        }

        else
        {
          v15 = v7 + 2;
LABEL_16:
          *v56 = v15;
          *(a1 + 84) = v14;
        }

        goto LABEL_53;
      case 0xDu:
        if (v8 != 109)
        {
          goto LABEL_65;
        }

        v21 = *v7;
        v20 = v7 + 1;
        v5 |= 0x1000u;
        *(a1 + 88) = v21;
LABEL_42:
        *v56 = v20;
        goto LABEL_53;
      default:
LABEL_65:
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
            v7 = *v56;
          }

          v34 = sub_1952690(v8, v43, v7, a3);
LABEL_52:
          *v56 = v34;
          if (!v34)
          {
            goto LABEL_87;
          }

LABEL_53:
          if (sub_195ADC0(a3, v56, a3[11].i32[1]))
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
LABEL_87:
          *v56 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v56;
    }
  }
}

char *sub_1609A08(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 56);
  *v4 = 21;
  *(v4 + 1) = v8;
  v4 += 5;
  if ((v6 & 0x20) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    v4 = sub_128AEEC(a3, 4, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 60);
  *v4 = 29;
  *(v4 + 1) = v9;
  v4 += 5;
  if ((v6 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    v7 = v4;
    goto LABEL_22;
  }

LABEL_15:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 64);
  *v4 = 40;
  v4[1] = v10;
  if (v10 > 0x7F)
  {
    v4[1] = v10 | 0x80;
    v11 = v10 >> 7;
    v4[2] = v10 >> 7;
    v7 = v4 + 3;
    if (v10 >= 0x4000)
    {
      LOBYTE(v12) = v4[2];
      do
      {
        *(v7 - 1) = v12 | 0x80;
        v12 = v11 >> 7;
        *v7++ = v11 >> 7;
        v13 = v11 >> 14;
        v11 >>= 7;
      }

      while (v13);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_22:
  if ((v6 & 4) == 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    v7 = sub_128AEEC(a3, 7, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v7);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v7 = sub_128AEEC(a3, 6, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v7);
  if ((v6 & 8) != 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  if ((v6 & 0x80) == 0)
  {
LABEL_25:
    v14 = v7;
    goto LABEL_35;
  }

LABEL_28:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v15 = *(a1 + 68);
  *v7 = 64;
  v7[1] = v15;
  if (v15 > 0x7F)
  {
    v7[1] = v15 | 0x80;
    v16 = v15 >> 7;
    v7[2] = v15 >> 7;
    v14 = v7 + 3;
    if (v15 >= 0x4000)
    {
      LOBYTE(v7) = v7[2];
      do
      {
        *(v14 - 1) = v7 | 0x80;
        v7 = (v16 >> 7);
        *v14++ = v16 >> 7;
        v17 = v16 >> 14;
        v16 >>= 7;
      }

      while (v17);
    }
  }

  else
  {
    v14 = v7 + 2;
  }

LABEL_35:
  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v19 = *(a1 + 72);
    *v14 = 72;
    v14[1] = v19;
    if (v19 > 0x7F)
    {
      v14[1] = v19 | 0x80;
      v20 = v19 >> 7;
      v14[2] = v19 >> 7;
      v18 = v14 + 3;
      if (v19 >= 0x4000)
      {
        LOBYTE(v21) = v14[2];
        do
        {
          *(v18 - 1) = v21 | 0x80;
          v21 = v20 >> 7;
          *v18++ = v20 >> 7;
          v22 = v20 >> 14;
          v20 >>= 7;
        }

        while (v22);
      }
    }

    else
    {
      v18 = v14 + 2;
    }
  }

  else
  {
    v18 = v14;
  }

  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v24 = *(a1 + 76);
    *v18 = 80;
    v18[1] = v24;
    if (v24 > 0x7F)
    {
      v18[1] = v24 | 0x80;
      v25 = v24 >> 7;
      v18[2] = v24 >> 7;
      v23 = v18 + 3;
      if (v24 >= 0x4000)
      {
        LOBYTE(v18) = v18[2];
        do
        {
          *(v23 - 1) = v18 | 0x80;
          v18 = (v25 >> 7);
          *v23++ = v25 >> 7;
          v26 = v25 >> 14;
          v25 >>= 7;
        }

        while (v26);
      }
    }

    else
    {
      v23 = v18 + 2;
    }
  }

  else
  {
    v23 = v18;
  }

  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v28 = *(a1 + 80);
    *v23 = 88;
    v23[1] = v28;
    if (v28 > 0x7F)
    {
      v23[1] = v28 | 0x80;
      v29 = v28 >> 7;
      v23[2] = v28 >> 7;
      v27 = v23 + 3;
      if (v28 >= 0x4000)
      {
        LOBYTE(v30) = v23[2];
        do
        {
          *(v27 - 1) = v30 | 0x80;
          v30 = v29 >> 7;
          *v27++ = v29 >> 7;
          v31 = v29 >> 14;
          v29 >>= 7;
        }

        while (v31);
      }
    }

    else
    {
      v27 = v23 + 2;
    }
  }

  else
  {
    v27 = v23;
  }

  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= v27)
    {
      v27 = sub_225EB68(a3, v27);
    }

    v33 = *(a1 + 84);
    *v27 = 96;
    v27[1] = v33;
    if (v33 > 0x7F)
    {
      v27[1] = v33 | 0x80;
      v34 = v33 >> 7;
      v27[2] = v33 >> 7;
      v32 = v27 + 3;
      if (v33 >= 0x4000)
      {
        LOBYTE(v27) = v27[2];
        do
        {
          *(v32 - 1) = v27 | 0x80;
          v27 = (v34 >> 7);
          *v32++ = v34 >> 7;
          v35 = v34 >> 14;
          v34 >>= 7;
        }

        while (v35);
      }
    }

    else
    {
      v32 = v27 + 2;
    }
  }

  else
  {
    v32 = v27;
  }

  if ((v6 & 0x1000) != 0)
  {
    if (*a3 <= v32)
    {
      v32 = sub_225EB68(a3, v32);
    }

    v36 = *(a1 + 88);
    *v32 = 109;
    *(v32 + 1) = v36;
    v32 += 5;
  }

  v37 = *(a1 + 8);
  if ((v37 & 1) == 0)
  {
    return v32;
  }

  v39 = v37 & 0xFFFFFFFFFFFFFFFCLL;
  v40 = *(v39 + 31);
  if (v40 < 0)
  {
    v41 = *(v39 + 8);
    v40 = *(v39 + 16);
  }

  else
  {
    v41 = (v39 + 8);
  }

  if (*a3 - v32 >= v40)
  {
    v42 = v40;
    memcpy(v32, v41, v40);
    v32 += v42;
    return v32;
  }

  return sub_1957130(a3, v41, v40, v32);
}

uint64_t sub_1609F10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v2 = 0;
    goto LABEL_31;
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
    v18 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(v18 + 23);
    v20 = *(v18 + 8);
    if ((v19 & 0x80u) == 0)
    {
      v20 = v19;
    }

    v2 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if ((v1 & 8) != 0)
  {
LABEL_14:
    v9 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v1 & 0x10) != 0)
  {
    v2 += 5;
  }

  if ((v1 & 0x20) != 0)
  {
    v2 += 5;
  }

  if ((v1 & 0x40) != 0)
  {
    v12 = *(a1 + 64);
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

  if ((v1 & 0x80) != 0)
  {
    v15 = *(a1 + 68);
    v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v15 >= 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 11;
    }

    v2 += v17;
  }

LABEL_31:
  if ((v1 & 0x1F00) == 0)
  {
    goto LABEL_59;
  }

  if ((v1 & 0x100) != 0)
  {
    v21 = *(a1 + 72);
    if (v21 < 0)
    {
      v22 = 11;
    }

    else
    {
      v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v22;
    if ((v1 & 0x200) == 0)
    {
LABEL_34:
      if ((v1 & 0x400) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_49;
    }
  }

  else if ((v1 & 0x200) == 0)
  {
    goto LABEL_34;
  }

  v23 = *(a1 + 76);
  if (v23 < 0)
  {
    v24 = 11;
  }

  else
  {
    v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v24;
  if ((v1 & 0x400) == 0)
  {
LABEL_35:
    if ((v1 & 0x800) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_53;
  }

LABEL_49:
  v25 = *(a1 + 80);
  if (v25 < 0)
  {
    v26 = 11;
  }

  else
  {
    v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v26;
  if ((v1 & 0x800) != 0)
  {
LABEL_53:
    v27 = *(a1 + 84);
    if (v27 < 0)
    {
      v28 = 11;
    }

    else
    {
      v28 = ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v28;
  }

LABEL_57:
  if ((v1 & 0x1000) != 0)
  {
    v2 += 5;
  }

LABEL_59:
  v29 = *(a1 + 8);
  if (v29)
  {
    v31 = v29 & 0xFFFFFFFFFFFFFFFCLL;
    v32 = *((v29 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v32 < 0)
    {
      v32 = *(v31 + 16);
    }

    v2 += v32;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_160A200(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_277A638 && *(a1 + 56))
  {
    sub_178ABBC();
    operator delete();
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1636F9C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_160A2D8(uint64_t a1)
{
  sub_160A200(a1);

  operator delete();
}

uint64_t sub_160A310(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v29 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v29, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v29 + 1);
    v7 = **v29;
    if (**v29 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v29, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v29 + 2);
      }
    }

    *v29 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        v19 = (v6 - 1);
        while (1)
        {
          v20 = (v19 + 1);
          *v29 = v19 + 1;
          v21 = *(a1 + 40);
          if (v21 && (v22 = *(a1 + 32), v22 < *v21))
          {
            *(a1 + 32) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            sub_13D4264(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = *v29;
          }

          v19 = sub_2205840(a3, v23, v20);
          *v29 = v19;
          if (!v19)
          {
            break;
          }

          if (*a3 <= v19 || *v19 != 26)
          {
            goto LABEL_40;
          }
        }

LABEL_45:
        *v29 = 0;
        return *v29;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v16 = *(a1 + 56);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_178E2C4(v18);
          *(a1 + 56) = v16;
          v6 = *v29;
        }

        v15 = sub_2229A28(a3, v16, v6);
        goto LABEL_39;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v27 = sub_194DB04((a1 + 48), v26);
      v15 = sub_1958890(v27, *v29, a3);
      goto LABEL_39;
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
        return *v29;
      }

      goto LABEL_45;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v6 = *v29;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_39:
    *v29 = v15;
    if (!v15)
    {
      goto LABEL_45;
    }

LABEL_40:
    ;
  }

  return *v29;
}

char *sub_160A540(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v7 = *(a1 + 56);
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

    v4 = sub_178AE6C(v7, v9, a3);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v12 = *(*(a1 + 40) + 8 * i + 8);
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

      v4 = sub_13D3310(v12, v14, a3);
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

  if ((*a3 - v4) >= v18)
  {
    v20 = v18;
    memcpy(v4, v19, v18);
    v4 += v20;
    return v4;
  }

  return sub_1957130(a3, v19, v18, v4);
}

uint64_t sub_160A708(uint64_t a1)
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
      v7 = sub_13D3704(v6);
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
  if ((v8 & 3) != 0)
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

      v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v12 = sub_178B014(*(a1 + 56));
      v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

    v2 += v16;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_160A840(uint64_t a1)
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

void sub_160A8F8(uint64_t a1)
{
  sub_160A840(a1);

  operator delete();
}

uint64_t sub_160A930(uint64_t a1)
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

uint64_t sub_160A9BC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v32 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v32, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v32 + 1);
    v8 = **v32;
    if (**v32 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v32, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v32 + 2);
      }
    }

    *v32 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 != 3)
    {
      if (v11 == 4)
      {
        if (v8 == 34)
        {
          *(a1 + 16) |= 2u;
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v21 = (a1 + 32);
          goto LABEL_36;
        }
      }

      else if (v11 == 5 && v8 == 45)
      {
        v5 |= 0x10u;
        *(a1 + 48) = *v7;
        *v32 = v7 + 1;
        goto LABEL_45;
      }

      goto LABEL_37;
    }

    if (v8 != 24)
    {
      goto LABEL_37;
    }

    v5 |= 8u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_27:
      *v32 = v17;
      *(a1 + 44) = v16 != 0;
      goto LABEL_45;
    }

    v28 = sub_19587DC(v7, v16);
    *v32 = v28;
    *(a1 + 44) = v29 != 0;
    if (!v28)
    {
      goto LABEL_54;
    }

LABEL_45:
    if (sub_195ADC0(a3, v32, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 1)
  {
    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_37;
    }

    v5 |= 4u;
    v14 = v7 + 1;
    LODWORD(v13) = *v7;
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    v15 = *v14;
    v13 = v13 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_22:
      *v32 = v14;
      *(a1 + 40) = v13;
      goto LABEL_45;
    }

    v30 = sub_19587DC(v7, v13);
    *v32 = v30;
    *(a1 + 40) = v31;
    if (!v30)
    {
      goto LABEL_54;
    }

    goto LABEL_45;
  }

  if (v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v22 = *(a1 + 8);
    v20 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v20 = *v20;
    }

    v21 = (a1 + 24);
LABEL_36:
    v23 = sub_194DB04(v21, v20);
    v24 = sub_1958890(v23, *v32, a3);
LABEL_44:
    *v32 = v24;
    if (!v24)
    {
      goto LABEL_54;
    }

    goto LABEL_45;
  }

LABEL_37:
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
      v7 = *v32;
    }

    v24 = sub_1952690(v8, v27, v7, a3);
    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  *v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v32;
}

char *sub_160AC64(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 40);
    *v4 = 16;
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
  }

  else
  {
    v7 = v4;
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 44);
    *v7 = 24;
    v7[1] = v12;
    v7 += 2;
    if ((v6 & 2) == 0)
    {
LABEL_14:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_14;
  }

  v7 = sub_128AEEC(a3, 4, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v7);
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v13 = *(a1 + 48);
  *v7 = 45;
  *(v7 + 1) = v13;
  v7 += 5;
LABEL_23:
  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v7;
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

  if (*a3 - v7 >= v17)
  {
    v19 = v17;
    memcpy(v7, v18, v17);
    v7 += v19;
    return v7;
  }

  return sub_1957130(a3, v18, v17, v7);
}