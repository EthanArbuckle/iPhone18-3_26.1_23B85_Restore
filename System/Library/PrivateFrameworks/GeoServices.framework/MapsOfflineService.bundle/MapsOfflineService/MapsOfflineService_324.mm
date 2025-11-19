char *sub_136E0E0(uint64_t a1, char *__dst, unint64_t *a3)
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

      goto LABEL_10;
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

    goto LABEL_16;
  }

LABEL_10:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 40);
  *v4 = 26;
  v9 = *(v8 + 44);
  v4[1] = v9;
  if (v9 > 0x7F)
  {
    v10 = sub_19575D0(v9, v4 + 1);
  }

  else
  {
    v10 = v4 + 2;
  }

  v4 = sub_1838E28(v8, v10, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v14 = *(a1 + 56);
    *v4 = 42;
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

    v4 = sub_16E5070(v14, v16, a3);
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_16:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 48);
  *v4 = 34;
  v12 = *(v11 + 44);
  v4[1] = v12;
  if (v12 > 0x7F)
  {
    v13 = sub_19575D0(v12, v4 + 1);
  }

  else
  {
    v13 = v4 + 2;
  }

  v4 = sub_1403020(v11, v13, a3);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    v7 = v4;
    goto LABEL_35;
  }

LABEL_28:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v17 = *(a1 + 64);
  *v4 = 48;
  v4[1] = v17;
  if (v17 > 0x7F)
  {
    v4[1] = v17 | 0x80;
    v18 = v17 >> 7;
    v4[2] = v17 >> 7;
    v7 = v4 + 3;
    if (v17 >= 0x4000)
    {
      LOBYTE(v19) = v4[2];
      do
      {
        *(v7 - 1) = v19 | 0x80;
        v19 = v18 >> 7;
        *v7++ = v18 >> 7;
        v20 = v18 >> 14;
        v18 >>= 7;
      }

      while (v20);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_35:
  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v24)
  {
    v26 = v24;
    memcpy(v7, v25, v24);
    v7 += v26;
    return v7;
  }

  return sub_1957130(a3, v25, v24, v7);
}

uint64_t sub_136E388(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_24;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
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
    v10 = sub_1839564(*(a1 + 40));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v11 = sub_1403980(*(a1 + 48));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = sub_16E51F0(*(a1 + 56));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v13 = *(a1 + 64);
  if (v13 < 0)
  {
    v14 = 11;
  }

  else
  {
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v14;
LABEL_24:
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

void *sub_136E564(void *a1)
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

void sub_136E5E0(void *a1)
{
  sub_136E564(a1);

  operator delete();
}

uint64_t sub_136E618(uint64_t a1)
{
  *(a1 + 24) = 0;
  if ((*(a1 + 16) & 3) != 0)
  {
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

char *sub_136E640(uint64_t a1, char *a2, int32x2_t *a3)
{
  v33 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v33, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v33 + 1;
    v8 = *v33;
    if (*v33 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v33, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v33 + 2;
      }
    }

    v33 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 5)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v17 = v7 + 1;
      v18 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      v19 = *v17;
      v18 = v18 + (v19 << 7) - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v17 = v7 + 2;
LABEL_26:
        v33 = v17;
        *(a1 + 44) = v18;
        goto LABEL_45;
      }

      v29 = sub_1958770(v7, v18);
      v33 = v29;
      *(a1 + 44) = v30;
      if (!v29)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_13;
      }

      v5 |= 1u;
      v26 = v7 + 1;
      v27 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      v28 = *v26;
      v27 = v27 + (v28 << 7) - 128;
      if ((v28 & 0x80000000) == 0)
      {
        v26 = v7 + 2;
LABEL_44:
        v33 = v26;
        *(a1 + 40) = v27;
        goto LABEL_45;
      }

      v31 = sub_1958770(v7, v27);
      v33 = v31;
      *(a1 + 40) = v32;
      if (!v31)
      {
        goto LABEL_56;
      }
    }

LABEL_45:
    if (sub_195ADC0(a3, &v33, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 40)
  {
    v20 = v7 - 1;
    while (1)
    {
      v33 = v20 + 1;
      v21 = v20[1];
      if (v20[1] < 0)
      {
        v22 = v21 + (v20[2] << 7);
        v21 = v22 - 128;
        if (v20[2] < 0)
        {
          v20 = sub_1958770((v20 + 1), v22 - 128);
          v21 = v23;
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

      v33 = v20;
      v24 = *(a1 + 24);
      if (v24 == *(a1 + 28))
      {
        v25 = v24 + 1;
        sub_1958E5C((a1 + 24), v24 + 1);
        *(*(a1 + 32) + 4 * v24) = v21;
        v20 = v33;
      }

      else
      {
        *(*(a1 + 32) + 4 * v24) = v21;
        v25 = v24 + 1;
      }

      *(a1 + 24) = v25;
      if (!v20)
      {
        goto LABEL_56;
      }

      if (*a3 <= v20 || *v20 != 40)
      {
        goto LABEL_45;
      }
    }
  }

  if (v8 == 42)
  {
    v16 = sub_1958918((a1 + 24), v7, a3);
    goto LABEL_20;
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
      v7 = v33;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
LABEL_20:
    v33 = v16;
    if (!v16)
    {
      goto LABEL_56;
    }

    goto LABEL_45;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_56:
  v33 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v33;
}

char *sub_136E90C(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 40);
    *a2 = 16;
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

    v12 = *(a1 + 44);
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

  v15 = *(a1 + 24);
  if (v15 < 1)
  {
    v18 = v11;
  }

  else
  {
    for (i = 0; i != v15; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v17 = *(*(a1 + 32) + 4 * i);
      *v11 = 40;
      v11[1] = v17;
      if (v17 > 0x7F)
      {
        v11[1] = v17 | 0x80;
        v19 = v17 >> 7;
        v11[2] = v17 >> 7;
        v18 = v11 + 3;
        if (v17 >= 0x4000)
        {
          LOBYTE(v20) = v11[2];
          do
          {
            *(v18 - 1) = v20 | 0x80;
            v20 = v19 >> 7;
            *v18++ = v19 >> 7;
            v21 = v19 >> 14;
            v19 >>= 7;
          }

          while (v21);
        }
      }

      else
      {
        v18 = v11 + 2;
      }

      v11 = v18;
    }
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v18;
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

  if (*a3 - v18 >= v25)
  {
    v27 = v25;
    memcpy(v18, v26, v25);
    v18 += v27;
    return v18;
  }

  return sub_1957130(a3, v26, v25, v18);
}

uint64_t sub_136EB6C(uint64_t a1)
{
  result = sub_1959E5C((a1 + 24)) + *(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      result += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 2) != 0)
    {
      result += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

std::string *sub_136EC20(std::string *result, uint64_t a2)
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
      LODWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
    }

    if ((v8 & 2) != 0)
    {
      HIDWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
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

void *sub_136ED0C(void *a1)
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

void sub_136ED80(void *a1)
{
  sub_136ED0C(a1);

  operator delete();
}

char *sub_136EDB8(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v5 |= 4u;
    v19 = v7 + 1;
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_30:
      v31 = v19;
      *(a1 + 32) = v20;
      goto LABEL_35;
    }

    v29 = sub_1958770(v7, v20);
    v31 = v29;
    *(a1 + 32) = v30;
    if (!v29)
    {
      goto LABEL_46;
    }

LABEL_35:
    if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
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
      goto LABEL_35;
    }

    v25 = sub_1958770(v7, v17);
    v31 = v25;
    *(a1 + 28) = v26;
    if (!v25)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (v11 == 1 && v8 == 8)
  {
    v5 |= 1u;
    v22 = v7 + 1;
    v23 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    v24 = *v22;
    v23 = v23 + (v24 << 7) - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_34:
      v31 = v22;
      *(a1 + 24) = v23;
      goto LABEL_35;
    }

    v27 = sub_1958770(v7, v23);
    v31 = v27;
    *(a1 + 24) = v28;
    if (!v27)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
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
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_46:
  v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

char *sub_136F000(uint64_t a1, char *__dst, _DWORD *a3)
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
        LOBYTE(v11) = v11[2];
        do
        {
          *(v15 - 1) = v11 | 0x80;
          LODWORD(v11) = v17 >> 7;
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

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v15;
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

  if (*a3 - v15 >= v22)
  {
    v24 = v22;
    memcpy(v15, v23, v22);
    v15 += v24;
    return v15;
  }

  return sub_1957130(a3, v23, v22, v15);
}

uint64_t sub_136F238(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_10;
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
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
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

void *sub_136F314(void *a1)
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

void sub_136F388(void *a1)
{
  sub_136F314(a1);

  operator delete();
}

uint64_t sub_136F3C0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 16) = 0x100000000;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_136F3E0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v41 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v41, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v41 + 1;
    v8 = *v41;
    if (*v41 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v41, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v41 + 2;
      }
    }

    v41 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_43;
      }

      v5 |= 1u;
      v27 = v7 + 1;
      v26 = *v7;
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_42;
      }

      v28 = *v27;
      v26 = (v28 << 7) + v26 - 128;
      if ((v28 & 0x80000000) == 0)
      {
        v27 = v7 + 2;
LABEL_42:
        v41 = v27;
        *(a1 + 24) = v26 != 0;
        goto LABEL_50;
      }

      v36 = sub_19587DC(v7, v26);
      v41 = v36;
      *(a1 + 24) = v37 != 0;
      if (!v36)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_43;
      }

      v5 |= 2u;
      v18 = v7 + 1;
      v17 = *v7;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v19 = *v18;
      v17 = (v19 << 7) + v17 - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v18 = v7 + 2;
LABEL_27:
        v41 = v18;
        *(a1 + 25) = v17 != 0;
        goto LABEL_50;
      }

      v39 = sub_19587DC(v7, v17);
      v41 = v39;
      *(a1 + 25) = v40 != 0;
      if (!v39)
      {
        goto LABEL_66;
      }
    }

LABEL_50:
    if (sub_195ADC0(a3, &v41, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_43;
    }

    v5 |= 4u;
    v21 = v7 + 1;
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_32;
    }

    v22 = *v21;
    v20 = (v22 << 7) + v20 - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_32:
      v41 = v21;
      *(a1 + 26) = v20 != 0;
      goto LABEL_50;
    }

    v32 = sub_19587DC(v7, v20);
    v41 = v32;
    *(a1 + 26) = v33 != 0;
    if (!v32)
    {
      goto LABEL_66;
    }

    goto LABEL_50;
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_43;
    }

    v5 |= 8u;
    v24 = v7 + 1;
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_37;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_37:
      v41 = v24;
      *(a1 + 27) = v23 != 0;
      goto LABEL_50;
    }

    v34 = sub_19587DC(v7, v23);
    v41 = v34;
    *(a1 + 27) = v35 != 0;
    if (!v34)
    {
      goto LABEL_66;
    }

    goto LABEL_50;
  }

  if (v11 == 5 && v8 == 40)
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
        v41 = sub_19587DC(v7, (v15 - 128));
        if (!v41)
        {
          goto LABEL_66;
        }

        LODWORD(v13) = v38;
        goto LABEL_16;
      }

      v12 = v7 + 2;
    }

    v41 = v12;
LABEL_16:
    if (sub_1538BA4(v13))
    {
      *(a1 + 16) |= 0x10u;
      *(a1 + 28) = v13;
    }

    else
    {
      sub_12E85B8();
    }

    goto LABEL_50;
  }

LABEL_43:
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
      v7 = v41;
    }

    v41 = sub_1952690(v8, v31, v7, a3);
    if (!v41)
    {
      goto LABEL_66;
    }

    goto LABEL_50;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_66:
  v41 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v41;
}

char *sub_136F760(uint64_t a1, char *__dst, _DWORD *a3)
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
    __dst += 2;
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
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

  v8 = *(a1 + 25);
  *__dst = 16;
  __dst[1] = v8;
  __dst += 2;
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 27);
    *__dst = 32;
    __dst[1] = v10;
    __dst += 2;
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_13:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v9 = *(a1 + 26);
  *__dst = 24;
  __dst[1] = v9;
  __dst += 2;
  if ((v5 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    v6 = __dst;
    goto LABEL_26;
  }

LABEL_19:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v11 = *(a1 + 28);
  *__dst = 40;
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

LABEL_26:
  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v18)
  {
    v20 = v18;
    memcpy(v6, v19, v18);
    v6 += v20;
    return v6;
  }

  return sub_1957130(a3, v19, v18, v6);
}

uint64_t sub_136F968(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) != 0)
  {
    v2 = 2 * (*(a1 + 16) & 1) + (*(a1 + 16) & 2) + ((*(a1 + 16) >> 1) & 2) + ((*(a1 + 16) >> 2) & 2u);
    if ((v1 & 0x10) != 0)
    {
      v3 = *(a1 + 28);
      v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v3 >= 0)
      {
        v5 = v4;
      }

      else
      {
        v5 = 11;
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

std::string *sub_136FA04(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_9;
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

      goto LABEL_13;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result[1].__r_.__value_.__s.__data_[1] = *(a2 + 25);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    result[1].__r_.__value_.__s.__data_[3] = *(a2 + 27);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  result[1].__r_.__value_.__s.__data_[2] = *(a2 + 26);
  if ((v2 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
  }

LABEL_8:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_9:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_136FAA0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = &off_26D8390;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = &qword_278E990;
  *(a1 + 56) = &qword_278E990;
  *(a1 + 64) = &qword_278E990;
  *(a1 + 72) = &qword_278E990;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return a1;
}

void sub_136FB24(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_136FB54(void *a1)
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

  sub_136FBE0(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_136FBE0(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2 = (a1 + 48);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C((a1 + 64));
  }

  result = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276CBE0)
  {
    v5 = *(a1 + 80);
    if (v5)
    {
      sub_13565A4(v5);
      operator delete();
    }

    v6 = *(a1 + 88);
    if (v6)
    {
      sub_13560E4(v6);
      operator delete();
    }

    if (*(a1 + 96))
    {
      sub_19182E4();
      operator delete();
    }

    if (*(a1 + 104))
    {
      sub_191A17C();
      operator delete();
    }

    v7 = *(a1 + 112);
    if (v7)
    {
      sub_136F314(v7);
      operator delete();
    }

    result = *(a1 + 120);
    if (result)
    {
      sub_16F8B5C();

      operator delete();
    }
  }

  return result;
}

void sub_136FD40(void *a1)
{
  sub_136FB54(a1);

  operator delete();
}

uint64_t sub_136FD78(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_11;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_25:
    v9 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v3 & 4) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v3 & 4) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_33:
    v11 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
      if ((v3 & 0x10) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
      if ((v3 & 0x10) != 0)
      {
        goto LABEL_37;
      }
    }

LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_38:
    result = sub_13561D4(*(a1 + 88));
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_39;
  }

  v8 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_4:
  if ((v3 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_29:
  v10 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v10 + 23) < 0)
  {
    **v10 = 0;
    *(v10 + 8) = 0;
    if ((v3 & 8) != 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    *v10 = 0;
    *(v10 + 23) = 0;
    if ((v3 & 8) != 0)
    {
      goto LABEL_33;
    }
  }

LABEL_6:
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_37:
  result = sub_13566B4(*(a1 + 80));
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_39:
  result = sub_18F9A60(*(a1 + 96));
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = sub_18F9CE4(*(a1 + 104));
  }

LABEL_11:
  if ((v3 & 0x300) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v4 = *(a1 + 112);
      v5 = *(v4 + 8);
      result = v4 + 8;
      *(result + 16) = 0x100000000;
      *(result + 8) = 0;
      if (v5)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v3 & 0x200) != 0)
    {
      result = sub_16F8B98(*(a1 + 120));
    }
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 120) = 0;
  *(v6 + 32) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_136FF24(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v45 = a2;
  if (sub_195ADC0(a3, v45, a3[11].i32[1]))
  {
    return *v45;
  }

  while (1)
  {
    v6 = (*v45 + 1);
    v7 = **v45;
    if (**v45 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v45, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v45 + 2);
      }
    }

    *v45 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 0xB)
    {
      break;
    }

    if (v7 >> 3 > 8)
    {
      if (v10 == 9)
      {
        if (v7 != 74)
        {
          goto LABEL_84;
        }

        *(a1 + 40) |= 0x40u;
        v35 = *(a1 + 96);
        if (!v35)
        {
          v36 = *(a1 + 8);
          v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
          if (v36)
          {
            v37 = *v37;
          }

          sub_191BB34(v37);
          v35 = v38;
          *(a1 + 96) = v38;
          v6 = *v45;
        }

        v15 = sub_2201D30(a3, v35, v6);
        goto LABEL_81;
      }

      if (v10 == 10)
      {
        if (v7 != 82)
        {
          goto LABEL_84;
        }

        *(a1 + 40) |= 0x80u;
        v28 = *(a1 + 104);
        if (!v28)
        {
          v29 = *(a1 + 8);
          v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v30 = *v30;
          }

          v28 = sub_191BBC4(v30);
          *(a1 + 104) = v28;
          v6 = *v45;
        }

        v15 = sub_2201DC0(a3, v28, v6);
        goto LABEL_81;
      }

      if (v10 != 11 || v7 != 90)
      {
        goto LABEL_84;
      }

      *(a1 + 40) |= 1u;
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v18 = (a1 + 48);
      goto LABEL_80;
    }

    if (v10 == 1)
    {
      if (v7 != 10)
      {
        goto LABEL_84;
      }

      *(a1 + 40) |= 0x10u;
      v25 = *(a1 + 80);
      if (!v25)
      {
        v26 = *(a1 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        v25 = sub_13793F0(v27);
        *(a1 + 80) = v25;
        v6 = *v45;
      }

      v15 = sub_2201C10(a3, v25, v6);
    }

    else
    {
      if (v10 != 6 || v7 != 50)
      {
        goto LABEL_84;
      }

      *(a1 + 40) |= 0x20u;
      v22 = *(a1 + 88);
      if (!v22)
      {
        v23 = *(a1 + 8);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        v22 = sub_137936C(v24);
        *(a1 + 88) = v22;
        v6 = *v45;
      }

      v15 = sub_2201CA0(a3, v22, v6);
    }

LABEL_81:
    *v45 = v15;
    if (!v15)
    {
      goto LABEL_99;
    }

LABEL_82:
    if (sub_195ADC0(a3, v45, a3[11].i32[1]))
    {
      return *v45;
    }
  }

  if (v7 >> 3 <= 0xE)
  {
    if (v10 == 12)
    {
      if (v7 != 98)
      {
        goto LABEL_84;
      }

      *(a1 + 40) |= 2u;
      v39 = *(a1 + 8);
      v17 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
      if (v39)
      {
        v17 = *v17;
      }

      v18 = (a1 + 56);
    }

    else
    {
      if (v10 != 13)
      {
        if (v10 != 14 || v7 != 114)
        {
          goto LABEL_84;
        }

        *(a1 + 40) |= 0x100u;
        v11 = *(a1 + 112);
        if (!v11)
        {
          v12 = *(a1 + 8);
          v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
          if (v12)
          {
            v13 = *v13;
          }

          sub_137A754(v13);
          v11 = v14;
          *(a1 + 112) = v14;
          v6 = *v45;
        }

        v15 = sub_2201E50(a3, v11, v6);
        goto LABEL_81;
      }

      if (v7 != 106)
      {
        goto LABEL_84;
      }

      *(a1 + 40) |= 4u;
      v31 = *(a1 + 8);
      v17 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v17 = *v17;
      }

      v18 = (a1 + 64);
    }

LABEL_80:
    v41 = sub_194DB04(v18, v17);
    v15 = sub_1958890(v41, *v45, a3);
    goto LABEL_81;
  }

  if (v10 == 15)
  {
    if (v7 != 122)
    {
      goto LABEL_84;
    }

    *(a1 + 40) |= 8u;
    v40 = *(a1 + 8);
    v17 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
    if (v40)
    {
      v17 = *v17;
    }

    v18 = (a1 + 72);
    goto LABEL_80;
  }

  if (v10 != 201)
  {
    if (v10 != 202 || v7 != 82)
    {
      goto LABEL_84;
    }

    *(a1 + 40) |= 0x200u;
    v19 = *(a1 + 120);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_16F9FEC(v21);
      *(a1 + 120) = v19;
      v6 = *v45;
    }

    v15 = sub_2201EE0(a3, v19, v6);
    goto LABEL_81;
  }

  if (v7 == 72)
  {
    v33 = (v6 + 1);
    v32 = *v6;
    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_63;
    }

    v34 = *v33;
    v32 = (v34 << 7) + v32 - 128;
    if (v34 < 0)
    {
      *v45 = sub_19587DC(v6, v32);
      if (!*v45)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v33 = (v6 + 2);
LABEL_63:
      *v45 = v33;
    }

    if (v32 > 2)
    {
      sub_13B67AC();
    }

    else
    {
      *(a1 + 40) |= 0x400u;
      *(a1 + 128) = v32;
    }

    goto LABEL_82;
  }

LABEL_84:
  if (v7)
  {
    v42 = (v7 & 7) == 4;
  }

  else
  {
    v42 = 1;
  }

  if (!v42)
  {
    if (v7 - 800 > 0x31F)
    {
      v43 = *(a1 + 8);
      if (v43)
      {
        v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v44 = sub_11F1920((a1 + 8));
        v6 = *v45;
      }

      v15 = sub_1952690(v7, v44, v6, a3);
    }

    else
    {
      v15 = sub_19525AC((a1 + 16), v7, v6, &off_276CBE0, (a1 + 8), a3);
    }

    goto LABEL_81;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v45;
  }

LABEL_99:
  *v45 = 0;
  return *v45;
}

char *sub_1370408(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 40);
  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 80);
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

    v4 = sub_1356FEC(v8, v10, a3);
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v12 = *(a1 + 88);
  *v4 = 50;
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

  v4 = sub_13563D0(v12, v14, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_4:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_39:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v21 = *(a1 + 96);
  *v4 = 74;
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

  v4 = sub_1918B64(v21, v23, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

LABEL_49:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v26 = *(a1 + 104);
  *v4 = 82;
  v27 = *(v26 + 44);
  v4[1] = v27;
  if (v27 > 0x7F)
  {
    v28 = sub_19575D0(v27, v4 + 1);
  }

  else
  {
    v28 = v4 + 2;
  }

  v4 = sub_191A244(v26, v28, a3);
  if ((v6 & 1) == 0)
  {
LABEL_6:
    if ((v6 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_55:
  v4 = sub_128AEEC(a3, 11, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 2) == 0)
  {
LABEL_7:
    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_57;
  }

LABEL_56:
  v4 = sub_128AEEC(a3, 12, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) == 0)
  {
LABEL_8:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

LABEL_57:
  v4 = sub_128AEEC(a3, 13, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x100) == 0)
  {
LABEL_9:
    if ((v6 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_58:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v29 = *(a1 + 112);
  *v4 = 114;
  v30 = *(v29 + 20);
  v4[1] = v30;
  if (v30 > 0x7F)
  {
    v31 = sub_19575D0(v30, v4 + 1);
  }

  else
  {
    v31 = v4 + 2;
  }

  v4 = sub_136F760(v29, v31, a3);
  if ((v6 & 8) != 0)
  {
LABEL_10:
    v4 = sub_128AEEC(a3, 15, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_11:
  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 100, 200, v4, a3);
  }

  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 128);
    *v4 = 3272;
    v4[2] = v11;
    if (v11 > 0x7F)
    {
      v4[2] = v11 | 0x80;
      v15 = v11 >> 7;
      v4[3] = v11 >> 7;
      v7 = v4 + 4;
      if (v11 >= 0x4000)
      {
        LOBYTE(v16) = v4[3];
        do
        {
          *(v7 - 1) = v16 | 0x80;
          v16 = v15 >> 7;
          *v7++ = v15 >> 7;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
      }
    }

    else
    {
      v7 = v4 + 3;
    }
  }

  else
  {
    v7 = v4;
  }

  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v18 = *(a1 + 120);
    *v7 = 3282;
    v19 = *(v18 + 20);
    v7[2] = v19;
    if (v19 > 0x7F)
    {
      v20 = sub_19575D0(v19, v7 + 2);
    }

    else
    {
      v20 = v7 + 3;
    }

    v7 = sub_16F8E64(v18, v20, a3);
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v7;
  }

  v32 = v24 & 0xFFFFFFFFFFFFFFFCLL;
  v33 = *(v32 + 31);
  if (v33 < 0)
  {
    v34 = *(v32 + 8);
    v33 = *(v32 + 16);
  }

  else
  {
    v34 = (v32 + 8);
  }

  if ((*a3 - v7) >= v33)
  {
    v35 = v33;
    memcpy(v7, v34, v33);
    v7 += v35;
    return v7;
  }

  return sub_1957130(a3, v34, v33, v7);
}

uint64_t sub_1370844(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = v2;
  v4 = *(a1 + 40);
  if (!v4)
  {
    goto LABEL_11;
  }

  if (v4)
  {
    v6 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v3 = v2 + v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v9 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 23);
  v11 = *(v9 + 8);
  if ((v10 & 0x80u) == 0)
  {
    v11 = v10;
  }

  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_22:
  v12 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v13 = *(v12 + 23);
  v14 = *(v12 + 8);
  if ((v13 & 0x80u) == 0)
  {
    v14 = v13;
  }

  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_25:
  v15 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 23);
  v17 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v17 = v16;
  }

  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_29:
    v19 = sub_13564B8(*(a1 + 88));
    v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_28:
  v18 = sub_1357318(*(a1 + 80));
  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_8:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_30:
  v20 = sub_191925C(*(a1 + 96));
  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x80) != 0)
  {
LABEL_10:
    v5 = sub_191B0B0(*(a1 + 104));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  if ((v4 & 0x700) == 0)
  {
    goto LABEL_38;
  }

  if ((v4 & 0x100) != 0)
  {
    v21 = sub_136F968(*(a1 + 112));
    v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 0x200) == 0)
    {
LABEL_14:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  v22 = sub_16F903C(*(a1 + 120));
  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v4 & 0x400) == 0)
  {
    goto LABEL_38;
  }

LABEL_34:
  v23 = *(a1 + 128);
  if (v23 < 0)
  {
    v24 = 12;
  }

  else
  {
    v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v24;
LABEL_38:
  v25 = *(a1 + 8);
  if (v25)
  {
    v27 = v25 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = *((v25 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v28 < 0)
    {
      v28 = *(v27 + 16);
    }

    v3 += v28;
  }

  *(a1 + 44) = v3;
  return v3;
}

void sub_1370B48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (!v4)
  {
    goto LABEL_55;
  }

  if (v4)
  {
    v5 = *(a2 + 48);
    *(a1 + 40) |= 1u;
    v6 = *(a1 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 48), (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 56);
  *(a1 + 40) |= 2u;
  v9 = *(a1 + 8);
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  sub_194EA1C((a1 + 56), (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_17:
  v11 = *(a2 + 64);
  *(a1 + 40) |= 4u;
  v12 = *(a1 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  sub_194EA1C((a1 + 64), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_20:
  v14 = *(a2 + 72);
  *(a1 + 40) |= 8u;
  v15 = *(a1 + 8);
  v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
  if (v15)
  {
    v16 = *v16;
  }

  sub_194EA1C((a1 + 72), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_23:
  *(a1 + 40) |= 0x10u;
  v17 = *(a1 + 80);
  if (!v17)
  {
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    v17 = sub_13793F0(v19);
    *(a1 + 80) = v17;
  }

  if (*(a2 + 80))
  {
    v20 = *(a2 + 80);
  }

  else
  {
    v20 = &off_276C348;
  }

  sub_135749C(v17, v20);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_31:
  *(a1 + 40) |= 0x20u;
  v21 = *(a1 + 88);
  if (!v21)
  {
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v21 = sub_137936C(v23);
    *(a1 + 88) = v21;
  }

  if (*(a2 + 88))
  {
    v24 = *(a2 + 88);
  }

  else
  {
    v24 = &off_276C320;
  }

  sub_12F5A34(v21, v24);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_47;
  }

LABEL_39:
  *(a1 + 40) |= 0x40u;
  v25 = *(a1 + 96);
  if (!v25)
  {
    v26 = *(a1 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    sub_191BB34(v27);
    *(a1 + 96) = v25;
  }

  if (*(a2 + 96))
  {
    v28 = *(a2 + 96);
  }

  else
  {
    v28 = &off_278B8D0;
  }

  sub_18FBF24(v25, v28);
  if ((v4 & 0x80) != 0)
  {
LABEL_47:
    *(a1 + 40) |= 0x80u;
    v29 = *(a1 + 104);
    if (!v29)
    {
      v30 = *(a1 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      v29 = sub_191BBC4(v31);
      *(a1 + 104) = v29;
    }

    if (*(a2 + 104))
    {
      v32 = *(a2 + 104);
    }

    else
    {
      v32 = &off_278B980;
    }

    sub_18FC364(v29, v32);
  }

LABEL_55:
  if ((v4 & 0x700) == 0)
  {
    goto LABEL_61;
  }

  if ((v4 & 0x100) == 0)
  {
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_58;
    }

LABEL_73:
    *(a1 + 40) |= 0x200u;
    v38 = *(a1 + 120);
    if (!v38)
    {
      v39 = *(a1 + 8);
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
      if (v39)
      {
        v40 = *v40;
      }

      v38 = sub_16F9FEC(v40);
      *(a1 + 120) = v38;
    }

    if (*(a2 + 120))
    {
      v41 = *(a2 + 120);
    }

    else
    {
      v41 = &off_277ED18;
    }

    sub_1645A7C(v38, v41);
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  *(a1 + 40) |= 0x100u;
  v34 = *(a1 + 112);
  if (!v34)
  {
    v35 = *(a1 + 8);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    sub_137A754(v36);
    *(a1 + 112) = v34;
  }

  if (*(a2 + 112))
  {
    v37 = *(a2 + 112);
  }

  else
  {
    v37 = &off_276CBC0;
  }

  sub_136FA04(v34, v37);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_73;
  }

LABEL_58:
  if ((v4 & 0x400) != 0)
  {
LABEL_59:
    *(a1 + 128) = *(a2 + 128);
  }

LABEL_60:
  *(a1 + 40) |= v4;
LABEL_61:
  sub_225EA0C(a1 + 16, a2 + 16);
  v33 = *(a2 + 8);
  if (v33)
  {

    sub_1957EF4((a1 + 8), (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1370EA4(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if ((v3 & 0x10) != 0)
    {
      result = sub_1358338(*(a1 + 80));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x40) != 0)
    {
      result = sub_18FCBD0(*(a1 + 96));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x80) == 0)
    {
      return 1;
    }

    result = sub_18FCC5C(*(a1 + 104));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1370F20(uint64_t a1)
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

void sub_1370FC0(uint64_t a1)
{
  sub_1370F20(a1);

  operator delete();
}

uint64_t sub_1370FF8(uint64_t a1)
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

  if ((v1 & 6) != 0)
  {
    *(a1 + 36) = 0;
    *(a1 + 32) = 0;
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

uint64_t sub_137104C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v30 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v30, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v30 + 1);
    v8 = **v30;
    if (**v30 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v30, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v30 + 2);
      }
    }

    *v30 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v5 |= 4u;
    v21 = v7 + 1;
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

    v22 = *v21;
    v20 = (v22 << 7) + v20 - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_30:
      *v30 = v21;
      *(a1 + 36) = v20 != 0;
      goto LABEL_37;
    }

    v28 = sub_19587DC(v7, v20);
    *v30 = v28;
    *(a1 + 36) = v29 != 0;
    if (!v28)
    {
      goto LABEL_47;
    }

LABEL_37:
    if (sub_195ADC0(a3, v30, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2)
  {
    if (v8 == 18)
    {
      *(a1 + 16) |= 1u;
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v19 = sub_194DB04((a1 + 24), v18);
      v16 = sub_1958890(v19, *v30, a3);
LABEL_24:
      *v30 = v16;
      if (!v16)
      {
        goto LABEL_47;
      }

      goto LABEL_37;
    }
  }

  else if (v11 == 1 && v8 == 8)
  {
    v23 = v7 + 1;
    v24 = *v7;
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    v25 = *v23;
    v26 = (v25 << 7) + v24;
    LODWORD(v24) = v26 - 128;
    if (v25 < 0)
    {
      *v30 = sub_19587DC(v7, (v26 - 128));
      if (!*v30)
      {
        goto LABEL_47;
      }

      LODWORD(v24) = v27;
    }

    else
    {
      v23 = v7 + 2;
LABEL_34:
      *v30 = v23;
    }

    if (sub_14CB318(v24))
    {
      *(a1 + 16) |= 2u;
      *(a1 + 32) = v24;
    }

    else
    {
      sub_12E8450();
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
      v7 = *v30;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_24;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_47:
  *v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v30;
}

char *sub_13712B4(uint64_t a1, char *__dst, void *a3)
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
    v6 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 36);
    *v6 = 24;
    v6[1] = v11;
    v6 += 2;
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

uint64_t sub_1371434(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_14;
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
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v8;
  }

LABEL_13:
  v3 = v2 + ((v1 >> 1) & 2);
LABEL_14:
  v9 = *(a1 + 8);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v3 += v12;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_1371504(std::string *result, uint64_t a2)
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
        v3[1].__r_.__value_.__s.__data_[12] = *(a2 + 36);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
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

void *sub_13715EC(void *a1)
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

  sub_1371678(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1371678(uint64_t a1)
{
  v3 = *(a1 + 48);
  result = (a1 + 48);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276CC90)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      sub_13560E4(v4);
      operator delete();
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      sub_136F314(v5);
      operator delete();
    }

    if (*(a1 + 72))
    {
      sub_19182E4();
      operator delete();
    }

    if (*(a1 + 80))
    {
      sub_13F1158();
      operator delete();
    }

    result = *(a1 + 88);
    if (result)
    {
      sub_1552968();

      operator delete();
    }
  }

  return result;
}

void sub_137177C(void *a1)
{
  sub_13715EC(a1);

  operator delete();
}

uint64_t sub_13717B4(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 0x3F) == 0)
  {
    goto LABEL_17;
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
      goto LABEL_13;
    }

LABEL_11:
    v5 = *(a1 + 64);
    v6 = *(v5 + 8);
    result = v5 + 8;
    *(result + 16) = 0x100000000;
    *(result + 8) = 0;
    if (v6)
    {
      result = sub_1957EA8(result);
    }

    goto LABEL_13;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_10:
  result = sub_13561D4(*(a1 + 56));
  if ((v3 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  if ((v3 & 8) != 0)
  {
    result = sub_18F9A60(*(a1 + 72));
    if ((v3 & 0x10) == 0)
    {
LABEL_15:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_15;
  }

  result = sub_13F1194(*(a1 + 80));
  if ((v3 & 0x20) != 0)
  {
LABEL_16:
    result = sub_15529A4(*(a1 + 88));
  }

LABEL_17:
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 88) = 0;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_13718B4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v50 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v50, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v50 + 1);
    v8 = **v50;
    if (**v50 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v50, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v50 + 2);
      }
    }

    *v50 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      if (v8 >> 3 > 2)
      {
        if (v11 == 3)
        {
          if (v8 == 26)
          {
            v34 = (v7 - 1);
            while (1)
            {
              v35 = (v34 + 1);
              *v50 = v34 + 1;
              v36 = *(a1 + 40);
              if (v36 && (v37 = *(a1 + 32), v37 < *v36))
              {
                *(a1 + 32) = v37 + 1;
                v38 = *&v36[2 * v37 + 2];
              }

              else
              {
                v39 = *(a1 + 24);
                if (!v39)
                {
                  operator new();
                }

                *v41 = v40;
                v41[1] = sub_195A650;
                *v40 = 0;
                v40[1] = 0;
                v40[2] = 0;
                v38 = sub_19593CC(a1 + 24, v40);
                v35 = *v50;
              }

              v34 = sub_1958890(v38, v35, a3);
              *v50 = v34;
              if (!v34)
              {
                goto LABEL_87;
              }

              if (*a3 <= v34 || *v34 != 26)
              {
                goto LABEL_80;
              }
            }
          }
        }

        else if (v11 == 4 && v8 == 34)
        {
          *(a1 + 16) |= 4u;
          v20 = *(a1 + 64);
          if (!v20)
          {
            v21 = *(a1 + 8);
            v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
            if (v21)
            {
              v22 = *v22;
            }

            sub_137A754(v22);
            v20 = v23;
            *(a1 + 64) = v23;
            v7 = *v50;
          }

          v16 = sub_2201E50(a3, v20, v7);
          goto LABEL_79;
        }
      }

      else if (v11 == 1)
      {
        if (v8 == 10)
        {
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

            v27 = sub_137936C(v29);
            *(a1 + 56) = v27;
            v7 = *v50;
          }

          v16 = sub_2201CA0(a3, v27, v7);
          goto LABEL_79;
        }
      }

      else if (v11 == 2 && v8 == 18)
      {
        *(a1 + 16) |= 1u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = sub_194DB04((a1 + 48), v14);
        v16 = sub_1958890(v15, *v50, a3);
        goto LABEL_79;
      }

      goto LABEL_72;
    }

    if (v8 >> 3 <= 6)
    {
      if (v11 == 5)
      {
        if (v8 == 42)
        {
          *(a1 + 16) |= 8u;
          v30 = *(a1 + 72);
          if (!v30)
          {
            v31 = *(a1 + 8);
            v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
            if (v31)
            {
              v32 = *v32;
            }

            sub_191BB34(v32);
            v30 = v33;
            *(a1 + 72) = v33;
            v7 = *v50;
          }

          v16 = sub_2201D30(a3, v30, v7);
          goto LABEL_79;
        }
      }

      else if (v11 == 6 && v8 == 50)
      {
        *(a1 + 16) |= 0x10u;
        v17 = *(a1 + 80);
        if (!v17)
        {
          v18 = *(a1 + 8);
          v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
          if (v18)
          {
            v19 = *v19;
          }

          v17 = sub_13F62B0(v19);
          *(a1 + 80) = v17;
          v7 = *v50;
        }

        v16 = sub_2201F70(a3, v17, v7);
        goto LABEL_79;
      }

      goto LABEL_72;
    }

    if (v11 == 7)
    {
      break;
    }

    if (v11 != 8 || v8 != 64)
    {
      goto LABEL_72;
    }

    v5 |= 0x40u;
    v25 = (v7 + 1);
    v24 = *v7;
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_41;
    }

    v26 = *v25;
    v24 = (v26 << 7) + v24 - 128;
    if ((v26 & 0x80000000) == 0)
    {
      v25 = (v7 + 2);
LABEL_41:
      *v50 = v25;
      *(a1 + 96) = v24 != 0;
      goto LABEL_80;
    }

    v48 = sub_19587DC(v7, v24);
    *v50 = v48;
    *(a1 + 96) = v49 != 0;
    if (!v48)
    {
      goto LABEL_87;
    }

LABEL_80:
    if (sub_195ADC0(a3, v50, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 58)
  {
    *(a1 + 16) |= 0x20u;
    v42 = *(a1 + 88);
    if (!v42)
    {
      v43 = *(a1 + 8);
      v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
      if (v43)
      {
        v44 = *v44;
      }

      v42 = sub_1552C7C(v44);
      *(a1 + 88) = v42;
      v7 = *v50;
    }

    v16 = sub_22010D0(a3, v42, v7);
LABEL_79:
    *v50 = v16;
    if (!v16)
    {
      goto LABEL_87;
    }

    goto LABEL_80;
  }

LABEL_72:
  if (v8)
  {
    v45 = (v8 & 7) == 4;
  }

  else
  {
    v45 = 1;
  }

  if (!v45)
  {
    v46 = *(a1 + 8);
    if (v46)
    {
      v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v47 = sub_11F1920((a1 + 8));
      v7 = *v50;
    }

    v16 = sub_1952690(v8, v47, v7, a3);
    goto LABEL_79;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_87:
  *v50 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v50;
}

char *sub_1371D4C(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_13563D0(v7, v9, a3);
  }

  if (v6)
  {
    v4 = sub_128AEEC(a3, 2, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
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
        v4 = sub_1957480(a3, 3, v12, v4);
      }

      else
      {
        *v4 = 26;
        v4[1] = v13;
        if (*(v12 + 23) < 0)
        {
          v12 = *v12;
        }

        v14 = v4 + 2;
        memcpy(v14, v12, v13);
        v4 = &v14[v13];
      }

      v11 += 8;
      --v10;
    }

    while (v10);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v15 = *(a1 + 64);
    *v4 = 34;
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

    v4 = sub_136F760(v15, v17, a3);
    if ((v6 & 8) == 0)
    {
LABEL_23:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_39;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_23;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v18 = *(a1 + 72);
  *v4 = 42;
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

  v4 = sub_1918B64(v18, v20, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_24:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_45;
  }

LABEL_39:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v21 = *(a1 + 80);
  *v4 = 50;
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

  v4 = sub_13F14C4(v21, v23, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_25:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

LABEL_45:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v24 = *(a1 + 88);
  *v4 = 58;
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

  v4 = sub_1552B20(v24, v26, a3);
  if ((v6 & 0x40) != 0)
  {
LABEL_51:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v27 = *(a1 + 96);
    *v4 = 64;
    v4[1] = v27;
    v4 += 2;
  }

LABEL_54:
  v28 = *(a1 + 8);
  if ((v28 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v31)
  {
    v33 = v31;
    memcpy(v4, v32, v31);
    v4 += v33;
    return v4;
  }

  return sub_1957130(a3, v32, v31, v4);
}

uint64_t sub_1372104(uint64_t a1)
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
  if ((v8 & 0x7F) != 0)
  {
    if (v8)
    {
      v12 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v13 = *(v12 + 23);
      v14 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v14 = v13;
      }

      v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_11:
        if ((v8 & 4) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_23;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

    v15 = sub_13564B8(*(a1 + 56));
    v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
LABEL_12:
      if ((v8 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_24;
    }

LABEL_23:
    v16 = sub_136F968(*(a1 + 64));
    v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 8) == 0)
    {
LABEL_13:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }

LABEL_24:
    v17 = sub_191925C(*(a1 + 72));
    v4 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x10) == 0)
    {
LABEL_14:
      if ((v8 & 0x20) == 0)
      {
LABEL_16:
        v4 += (v8 >> 5) & 2;
        goto LABEL_17;
      }

LABEL_15:
      v9 = sub_1552BE8(*(a1 + 88));
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_16;
    }

LABEL_25:
    v18 = sub_13F16F0(*(a1 + 80));
    v4 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  v10 = *(a1 + 8);
  if (v10)
  {
    v19 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v4 += v20;
  }

  *(a1 + 20) = v4;
  return v4;
}

void sub_137231C(uint64_t a1, uint64_t a2)
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
  if ((v9 & 0x7F) != 0)
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
          goto LABEL_8;
        }

        goto LABEL_29;
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

      v14 = sub_137936C(v16);
      *(a1 + 56) = v14;
    }

    if (*(a2 + 56))
    {
      v17 = *(a2 + 56);
    }

    else
    {
      v17 = &off_276C320;
    }

    sub_12F5A34(v14, v17);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_37;
    }

LABEL_29:
    *(a1 + 16) |= 4u;
    v18 = *(a1 + 64);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      sub_137A754(v20);
      *(a1 + 64) = v18;
    }

    if (*(a2 + 64))
    {
      v21 = *(a2 + 64);
    }

    else
    {
      v21 = &off_276CBC0;
    }

    sub_136FA04(v18, v21);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_45;
    }

LABEL_37:
    *(a1 + 16) |= 8u;
    v22 = *(a1 + 72);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      sub_191BB34(v24);
      *(a1 + 72) = v22;
    }

    if (*(a2 + 72))
    {
      v25 = *(a2 + 72);
    }

    else
    {
      v25 = &off_278B8D0;
    }

    sub_18FBF24(v22, v25);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_53;
    }

LABEL_45:
    *(a1 + 16) |= 0x10u;
    v26 = *(a1 + 80);
    if (!v26)
    {
      v27 = *(a1 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      v26 = sub_13F62B0(v28);
      *(a1 + 80) = v26;
    }

    if (*(a2 + 80))
    {
      v29 = *(a2 + 80);
    }

    else
    {
      v29 = &off_276F3C8;
    }

    sub_13F181C(v26, v29);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
LABEL_13:
        *(a1 + 16) |= v9;
        goto LABEL_14;
      }

LABEL_12:
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_13;
    }

LABEL_53:
    *(a1 + 16) |= 0x20u;
    v30 = *(a1 + 88);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_1552C7C(v32);
      *(a1 + 88) = v30;
    }

    if (*(a2 + 88))
    {
      v33 = *(a2 + 88);
    }

    else
    {
      v33 = &off_2777110;
    }

    sub_132DE2C(v30, v33);
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13725C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 8) != 0)
  {
    result = sub_18FCBD0(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) == 0)
  {
    return 1;
  }

  result = sub_13F1988(*(a1 + 80));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_1372624(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13B3C30(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13726A4(void *a1)
{
  sub_1372624(a1);

  operator delete();
}

uint64_t sub_13726DC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1376264(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_1372760(uint64_t a1, char *a2, int32x2_t *a3)
{
  v26 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v26, i) & 1) == 0; i = a3[11].i32[1])
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
          v16 = *(a1 + 40);
          if (v16 && (v17 = *(a1 + 32), v17 < *v16))
          {
            *(a1 + 32) = v17 + 1;
            v18 = *&v16[2 * v17 + 2];
          }

          else
          {
            sub_137AD18(*(a1 + 24));
            v18 = sub_19593CC(a1 + 24, v19);
            v15 = v26;
          }

          v14 = sub_2202000(a3, v18, v15);
          v26 = v14;
          if (!v14)
          {
            return 0;
          }

          if (*a3 <= v14 || *v14 != 18)
          {
            goto LABEL_36;
          }
        }
      }
    }

    else if (v7 >> 3 == 1 && v7 == 8)
    {
      v20 = v6 + 1;
      v21 = *v6;
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_33;
      }

      v22 = *v20;
      v23 = (v22 << 7) + v21;
      LODWORD(v21) = v23 - 128;
      if (v22 < 0)
      {
        v26 = sub_19587DC(v6, (v23 - 128));
        if (!v26)
        {
          return 0;
        }

        LODWORD(v21) = v24;
      }

      else
      {
        v20 = v6 + 2;
LABEL_33:
        v26 = v20;
      }

      if (sub_14CB318(v21))
      {
        *(a1 + 16) |= 1u;
        *(a1 + 48) = v21;
      }

      else
      {
        sub_12E8450();
      }

      continue;
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
        return v26;
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
      v6 = v26;
    }

    v26 = sub_1952690(v7, v13, v6, a3);
    if (!v26)
    {
      return 0;
    }

LABEL_36:
    ;
  }

  return v26;
}

char *sub_1372978(uint64_t a1, char *__dst, unint64_t *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 48);
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

  v10 = *(a1 + 32);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v5)
      {
        v5 = sub_225EB68(a3, v5);
      }

      v12 = *(*(a1 + 40) + 8 * i + 8);
      *v5 = 18;
      v13 = *(v12 + 20);
      v5[1] = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, v5 + 1);
      }

      else
      {
        v14 = v5 + 2;
      }

      v5 = sub_1376654(v12, v14, a3);
    }
  }

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v5;
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

  if ((*a3 - v5) >= v18)
  {
    v20 = v18;
    memcpy(v5, v19, v18);
    v5 += v20;
    return v5;
  }

  return sub_1957130(a3, v19, v18, v5);
}

uint64_t sub_1372B3C(uint64_t a1)
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
      v7 = sub_1376924(v6);
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
    v8 = *(a1 + 48);
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

void sub_1372C1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B47D8((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    *(a1 + 48) = v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_1372CF4(uint64_t a1)
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
    v5 = sub_1376C6C(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_1372D5C(uint64_t a1)
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

  v5 = (a1 + 96);
  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 104) != &qword_278E990)
  {
    sub_194E89C((a1 + 104));
  }

  if (a1 != &off_276CD30)
  {
    v6 = *(a1 + 112);
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
  sub_13B30D8((a1 + 72));
  sub_1956AFC((a1 + 48));
  sub_13B3CB4((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1372E64(uint64_t a1)
{
  sub_1372D5C(a1);

  operator delete();
}

uint64_t sub_1372E9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_152BAD4(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  result = sub_12A41D0(a1 + 48);
  v6 = *(a1 + 80);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 88) + 8);
    do
    {
      v8 = *v7++;
      result = sub_1835AE0(v8);
      --v6;
    }

    while (v6);
    *(a1 + 80) = 0;
  }

  v9 = *(a1 + 16);
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

    goto LABEL_24;
  }

  v12 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v12 + 23) & 0x80000000) == 0)
  {
    *v12 = 0;
    *(v12 + 23) = 0;
    if ((v9 & 2) != 0)
    {
      goto LABEL_24;
    }

LABEL_12:
    if ((v9 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  **v12 = 0;
  *(v12 + 8) = 0;
  if ((v9 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_24:
  v13 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v13 + 23) & 0x80000000) == 0)
  {
    *v13 = 0;
    *(v13 + 23) = 0;
    if ((v9 & 4) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    result = sub_16E5B70(*(a1 + 112));
    goto LABEL_14;
  }

  **v13 = 0;
  *(v13 + 8) = 0;
  if ((v9 & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  if ((v9 & 0x38) != 0)
  {
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
  }

  v11 = *(a1 + 8);
  v10 = a1 + 8;
  *(v10 + 8) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_1372FE0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v54 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v54, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v54 + 1);
    v8 = **v54;
    if (**v54 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v54, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v54 + 2);
      }
    }

    *v54 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      break;
    }

    if (v8 >> 3 > 6)
    {
      if (v11 == 7)
      {
        if (v8 != 58)
        {
          goto LABEL_83;
        }

        *(a1 + 16) |= 1u;
        v38 = *(a1 + 8);
        v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        if (v38)
        {
          v39 = *v39;
        }

        v40 = (a1 + 96);
      }

      else
      {
        if (v11 != 8)
        {
          if (v11 == 9 && v8 == 72)
          {
            v13 = (v7 + 1);
            v12 = *v7;
            if (v12 < 0)
            {
              v14 = *v13;
              v12 = (v14 << 7) + v12 - 128;
              if (v14 < 0)
              {
                *v54 = sub_19587DC(v7, v12);
                if (!*v54)
                {
                  goto LABEL_101;
                }

                goto LABEL_17;
              }

              v13 = (v7 + 2);
            }

            *v54 = v13;
LABEL_17:
            if (v12 > 5)
            {
              sub_13B6774();
            }

            else
            {
              *(a1 + 16) |= 0x20u;
              *(a1 + 136) = v12;
            }

            goto LABEL_91;
          }

          goto LABEL_83;
        }

        if (v8 != 66)
        {
          goto LABEL_83;
        }

        *(a1 + 16) |= 2u;
        v47 = *(a1 + 8);
        v39 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
        if (v47)
        {
          v39 = *v39;
        }

        v40 = (a1 + 104);
      }

      v48 = sub_194DB04(v40, v39);
      v37 = sub_1958890(v48, *v54, a3);
LABEL_90:
      *v54 = v37;
      if (!v37)
      {
        goto LABEL_101;
      }

      goto LABEL_91;
    }

    if (v11 == 5)
    {
      if (v8 == 42)
      {
        v41 = v7 - 1;
        while (1)
        {
          v42 = v41 + 1;
          *v54 = v41 + 1;
          v43 = *(a1 + 88);
          if (v43 && (v44 = *(a1 + 80), v44 < *v43))
          {
            *(a1 + 80) = v44 + 1;
            v45 = *&v43[2 * v44 + 2];
          }

          else
          {
            v46 = sub_18648BC(*(a1 + 72));
            v45 = sub_19593CC(a1 + 72, v46);
            v42 = *v54;
          }

          v41 = sub_2200230(a3, v45, v42);
          *v54 = v41;
          if (!v41)
          {
            goto LABEL_101;
          }

          if (*a3 <= v41 || *v41 != 42)
          {
            goto LABEL_91;
          }
        }
      }

      goto LABEL_83;
    }

    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_83;
    }

    v5 |= 0x10u;
    v31 = (v7 + 1);
    v30 = *v7;
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_55;
    }

    v32 = *v31;
    v30 = (v32 << 7) + v30 - 128;
    if ((v32 & 0x80000000) == 0)
    {
      v31 = (v7 + 2);
LABEL_55:
      *v54 = v31;
      *(a1 + 128) = v30;
      goto LABEL_91;
    }

    v52 = sub_19587DC(v7, v30);
    *v54 = v52;
    *(a1 + 128) = v53;
    if (!v52)
    {
      goto LABEL_101;
    }

LABEL_91:
    if (sub_195ADC0(a3, v54, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 2)
  {
    if (v11 != 3)
    {
      if (v11 == 4 && v8 == 34)
      {
        v22 = (v7 - 1);
        while (1)
        {
          v23 = (v22 + 1);
          *v54 = v22 + 1;
          v24 = *(a1 + 64);
          if (v24 && (v25 = *(a1 + 56), v25 < *v24))
          {
            *(a1 + 56) = v25 + 1;
            v26 = *&v24[2 * v25 + 2];
          }

          else
          {
            v27 = *(a1 + 48);
            if (!v27)
            {
              operator new();
            }

            *v29 = v28;
            v29[1] = sub_195A650;
            *v28 = 0;
            v28[1] = 0;
            v28[2] = 0;
            v26 = sub_19593CC(a1 + 48, v28);
            v23 = *v54;
          }

          v22 = sub_1958890(v26, v23, a3);
          *v54 = v22;
          if (!v22)
          {
            goto LABEL_101;
          }

          if (*a3 <= v22 || *v22 != 34)
          {
            goto LABEL_91;
          }
        }
      }

      goto LABEL_83;
    }

    if (v8 != 26)
    {
      goto LABEL_83;
    }

    *(a1 + 16) |= 4u;
    v33 = *(a1 + 112);
    if (!v33)
    {
      v34 = *(a1 + 8);
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      if (v34)
      {
        v35 = *v35;
      }

      sub_16F58FC(v35);
      v33 = v36;
      *(a1 + 112) = v36;
      v7 = *v54;
    }

    v37 = sub_21F86E8(a3, v33, v7);
    goto LABEL_90;
  }

  if (v11 == 1)
  {
    if (v8 == 9)
    {
      v5 |= 8u;
      *(a1 + 120) = *v7;
      *v54 = v7 + 8;
      goto LABEL_91;
    }
  }

  else if (v11 == 2 && v8 == 18)
  {
    v16 = v7 - 1;
    while (1)
    {
      v17 = v16 + 1;
      *v54 = v16 + 1;
      v18 = *(a1 + 40);
      if (v18 && (v19 = *(a1 + 32), v19 < *v18))
      {
        *(a1 + 32) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
      }

      else
      {
        v21 = sub_1550F20(*(a1 + 24));
        v20 = sub_19593CC(a1 + 24, v21);
        v17 = *v54;
      }

      v16 = sub_2200BC0(a3, v20, v17);
      *v54 = v16;
      if (!v16)
      {
        goto LABEL_101;
      }

      if (*a3 <= v16 || *v16 != 18)
      {
        goto LABEL_91;
      }
    }
  }

LABEL_83:
  if (v8)
  {
    v49 = (v8 & 7) == 4;
  }

  else
  {
    v49 = 1;
  }

  if (!v49)
  {
    v50 = *(a1 + 8);
    if (v50)
    {
      v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v51 = sub_11F1920((a1 + 8));
      v7 = *v54;
    }

    v37 = sub_1952690(v8, v51, v7, a3);
    goto LABEL_90;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_101:
  *v54 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v54;
}

char *sub_1373510(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 120);
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
      v11 = *(v10 + 44);
      v4[1] = v11;
      if (v11 > 0x7F)
      {
        v12 = sub_19575D0(v11, v4 + 1);
      }

      else
      {
        v12 = v4 + 2;
      }

      v4 = sub_152C800(v10, v12, a3);
    }
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v13 = *(a1 + 112);
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

    v4 = sub_16E5FE0(v13, v15, a3);
  }

  v16 = *(a1 + 56);
  if (v16 >= 1)
  {
    v17 = 8;
    do
    {
      v18 = *(*(a1 + 64) + v17);
      v19 = *(v18 + 23);
      if (v19 < 0 && (v19 = v18[1], v19 > 127) || (*a3 - v4 + 14) < v19)
      {
        v4 = sub_1957480(a3, 4, v18, v4);
      }

      else
      {
        *v4 = 34;
        v4[1] = v19;
        if (*(v18 + 23) < 0)
        {
          v18 = *v18;
        }

        v20 = v4 + 2;
        memcpy(v4 + 2, v18, v19);
        v4 = &v20[v19];
      }

      v17 += 8;
      --v16;
    }

    while (v16);
  }

  v21 = *(a1 + 80);
  if (v21)
  {
    for (j = 0; j != v21; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v23 = *(*(a1 + 88) + 8 * j + 8);
      *v4 = 42;
      v24 = *(v23 + 44);
      v4[1] = v24;
      if (v24 > 0x7F)
      {
        v25 = sub_19575D0(v24, v4 + 1);
      }

      else
      {
        v25 = v4 + 2;
      }

      v4 = sub_1838E28(v23, v25, a3);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v27 = *(a1 + 128);
    *v4 = 48;
    v4[1] = v27;
    if (v27 > 0x7F)
    {
      v4[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v4[2] = v27 >> 7;
      v26 = v4 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v29) = v4[2];
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
      v26 = v4 + 2;
    }
  }

  else
  {
    v26 = v4;
  }

  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_50;
    }

LABEL_53:
    v26 = sub_128AEEC(a3, 8, *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL, v26);
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_54;
  }

  v26 = sub_128AEEC(a3, 7, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, v26);
  if ((v6 & 2) != 0)
  {
    goto LABEL_53;
  }

LABEL_50:
  if ((v6 & 0x20) == 0)
  {
LABEL_51:
    v31 = v26;
    goto LABEL_61;
  }

LABEL_54:
  if (*a3 <= v26)
  {
    v26 = sub_225EB68(a3, v26);
  }

  v32 = *(a1 + 136);
  *v26 = 72;
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

LABEL_61:
  v35 = *(a1 + 8);
  if ((v35 & 1) == 0)
  {
    return v31;
  }

  v37 = v35 & 0xFFFFFFFFFFFFFFFCLL;
  v38 = *(v37 + 31);
  if (v38 < 0)
  {
    v39 = *(v37 + 8);
    v38 = *(v37 + 16);
  }

  else
  {
    v39 = (v37 + 8);
  }

  if ((*a3 - v31) >= v38)
  {
    v40 = v38;
    memcpy(v31, v39, v38);
    v31 += v40;
    return v31;
  }

  return sub_1957130(a3, v39, v38, v31);
}

uint64_t sub_1373960(uint64_t a1)
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
      v7 = sub_152D208(v6);
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
  v15 = v9 + v14;
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
      v20 = sub_1839564(v19);
      v15 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      v18 -= 8;
    }

    while (v18);
  }

  v21 = *(a1 + 16);
  if ((v21 & 0x3F) != 0)
  {
    if (v21)
    {
      v28 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
      v29 = *(v28 + 23);
      v30 = *(v28 + 8);
      if ((v29 & 0x80u) == 0)
      {
        v30 = v29;
      }

      v15 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v21 & 2) == 0)
      {
LABEL_23:
        if ((v21 & 4) == 0)
        {
LABEL_25:
          if ((v21 & 8) != 0)
          {
            v15 += 9;
          }

          if ((v21 & 0x10) != 0)
          {
            v15 += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x3F) + 73) >> 6) + 1;
          }

          if ((v21 & 0x20) != 0)
          {
            v23 = *(a1 + 136);
            v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
            if (v23 >= 0)
            {
              v25 = v24;
            }

            else
            {
              v25 = 11;
            }

            v15 += v25;
          }

          goto LABEL_34;
        }

LABEL_24:
        v22 = sub_16E62F4(*(a1 + 112));
        v15 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
        goto LABEL_25;
      }
    }

    else if ((v21 & 2) == 0)
    {
      goto LABEL_23;
    }

    v31 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
    v32 = *(v31 + 23);
    v33 = *(v31 + 8);
    if ((v32 & 0x80u) == 0)
    {
      v33 = v32;
    }

    v15 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v21 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_34:
  v26 = *(a1 + 8);
  if (v26)
  {
    v34 = v26 & 0xFFFFFFFFFFFFFFFCLL;
    v35 = *((v26 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v35 < 0)
    {
      v35 = *(v34 + 16);
    }

    v15 += v35;
  }

  *(a1 + 20) = v15;
  return v15;
}

void sub_1373BE4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B4864((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_1201B48(a1 + 48, v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_13B315C((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if ((v19 & 0x3F) != 0)
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

        goto LABEL_29;
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

      goto LABEL_37;
    }

LABEL_29:
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

      sub_16F58FC(v29);
      *(a1 + 112) = v27;
    }

    if (*(a2 + 112))
    {
      v30 = *(a2 + 112);
    }

    else
    {
      v30 = &off_277E650;
    }

    sub_16E645C(v27, v30);
    if ((v19 & 8) == 0)
    {
LABEL_15:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_38;
    }

LABEL_37:
    *(a1 + 120) = *(a2 + 120);
    if ((v19 & 0x10) == 0)
    {
LABEL_16:
      if ((v19 & 0x20) == 0)
      {
LABEL_18:
        *(a1 + 16) |= v19;
        goto LABEL_19;
      }

LABEL_17:
      *(a1 + 136) = *(a2 + 136);
      goto LABEL_18;
    }

LABEL_38:
    *(a1 + 128) = *(a2 + 128);
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_19:
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_1373E60(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_152DE60(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 80);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = sub_1836CF0(*(*(a1 + 88) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 4) == 0)
  {
    return 1;
  }

  result = sub_16E6614(*(a1 + 112));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1373EFC(uint64_t a1)
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

void sub_1373FB4(uint64_t a1)
{
  sub_1373EFC(a1);

  operator delete();
}

uint64_t sub_1373FEC(uint64_t a1)
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

uint64_t sub_1374068(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_13741E8(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_13742D0(uint64_t a1)
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

uint64_t sub_13743BC(uint64_t a1)
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

  if (a1 != &off_276CDE8 && *(a1 + 32))
  {
    sub_16E4E08();
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

void sub_1374488(uint64_t a1)
{
  sub_13743BC(a1);

  operator delete();
}

unsigned __int8 *sub_13744C0(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
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
      result = sub_16E4E44(*(result + 4));
    }
  }

LABEL_7:
  v5 = v1[8];
  v4 = v1 + 8;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_1374554(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

          v15 = sub_16F5828(v17);
          *(a1 + 32) = v15;
          v6 = *v22;
        }

        v14 = sub_21F4D60(a3, v15, v6);
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

char *sub_13746F0(uint64_t a1, char *__dst, void *a3)
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

    v4 = sub_16E5070(v7, v9, a3);
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

uint64_t sub_137481C(uint64_t a1)
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
    v7 = sub_16E51F0(*(a1 + 32));
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

uint64_t sub_13748F8(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1374938(uint64_t a1)
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

void sub_13749D8(uint64_t a1)
{
  sub_1374938(a1);

  operator delete();
}

uint64_t sub_1374A10(uint64_t a1)
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

uint64_t sub_1374A58(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      if (v7 == 16)
      {
        v16 = v6 + 1;
        v15 = *v6;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if (v17 < 0)
        {
          *v22 = sub_19587DC(v6, v15);
          if (!*v22)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v16 = v6 + 2;
LABEL_23:
          *v22 = v16;
        }

        if (v15 > 1)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v15;
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
          return *v22;
        }

LABEL_38:
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
      goto LABEL_29;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    v20 = sub_194DB04((a1 + 24), v19);
    v14 = sub_1958890(v20, *v22, a3);
LABEL_29:
    *v22 = v14;
    if (!v14)
    {
      goto LABEL_38;
    }
  }

  return *v22;
}

char *sub_1374C18(uint64_t a1, char *__dst, void *a3)
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

    v8 = *(a1 + 32);
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

uint64_t sub_1374D64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_13;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_13;
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
  }

LABEL_13:
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

  *(a1 + 20) = v2;
  return v2;
}

void *sub_1374E40(void *a1)
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

  sub_1374ED0(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_13B30D8(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1374ED0(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2 = (a1 + 48);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 56);
  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276CE38)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      sub_16E5B34(v5);
      operator delete();
    }

    if (*(a1 + 72))
    {
      sub_186702C();
      operator delete();
    }

    v6 = *(a1 + 80);
    if (v6)
    {
      sub_13743BC(v6);
      operator delete();
    }

    result = *(a1 + 88);
    if (result)
    {
      sub_1374938(result);

      operator delete();
    }
  }

  return result;
}

void sub_1374FC8(void *a1)
{
  sub_1374E40(a1);

  operator delete();
}

uint64_t sub_1375000(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1835AE0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 0x3F) == 0)
  {
    goto LABEL_13;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_23:
    v9 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v5 & 4) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v5 & 4) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    result = sub_17DB104(*(v1 + 72));
    if ((v5 & 0x10) == 0)
    {
LABEL_11:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_29;
  }

  v8 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_23;
    }
  }

LABEL_8:
  if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_27:
  result = sub_16E5B70(*(v1 + 64));
  if ((v5 & 8) != 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_29:
  result = sub_13744C0(*(v1 + 80));
  if ((v5 & 0x20) != 0)
  {
LABEL_12:
    result = sub_1374A10(*(v1 + 88));
  }

LABEL_13:
  if ((v5 & 0xC0) != 0)
  {
    *(v1 + 96) = 0;
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 96) = 1;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_1375148(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
            v29 = v6 - 1;
            while (1)
            {
              v30 = v29 + 1;
              *v55 = v29 + 1;
              v31 = *(a1 + 40);
              if (v31 && (v32 = *(a1 + 32), v32 < *v31))
              {
                *(a1 + 32) = v32 + 1;
                v33 = *&v31[2 * v32 + 2];
              }

              else
              {
                v34 = sub_18648BC(*(a1 + 24));
                v33 = sub_19593CC(a1 + 24, v34);
                v30 = *v55;
              }

              v29 = sub_2200230(a3, v33, v30);
              *v55 = v29;
              if (!v29)
              {
                break;
              }

              if (*a3 <= v29 || *v29 != 50)
              {
                goto LABEL_95;
              }
            }

LABEL_109:
            *v55 = 0;
            return *v55;
          }

LABEL_87:
          if (v7)
          {
            v49 = (v7 & 7) == 4;
          }

          else
          {
            v49 = 1;
          }

          if (v49)
          {
            if (v6)
            {
              a3[10].i32[0] = v7 - 1;
              return *v55;
            }

            goto LABEL_109;
          }

          v50 = *(a1 + 8);
          if (v50)
          {
            v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v51 = sub_11F1920((a1 + 8));
            v6 = *v55;
          }

          v15 = sub_1952690(v7, v51, v6, a3);
          goto LABEL_94;
        }

        if (v10 != 7 || v7 != 58)
        {
          goto LABEL_87;
        }

        *(a1 + 16) |= 0x10u;
        v23 = *(a1 + 80);
        if (!v23)
        {
          v24 = *(a1 + 8);
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v25 = *v25;
          }

          v23 = sub_137AB54(v25);
          *(a1 + 80) = v23;
          v6 = *v55;
        }

        v15 = sub_2202090(a3, v23, v6);
      }

      else
      {
        if (v10 == 8)
        {
          if (v7 == 64)
          {
            v37 = v6 + 1;
            v38 = *v6;
            if ((v38 & 0x8000000000000000) == 0)
            {
              goto LABEL_71;
            }

            v39 = *v37;
            v40 = (v39 << 7) + v38;
            LODWORD(v38) = v40 - 128;
            if (v39 < 0)
            {
              *v55 = sub_19587DC(v6, (v40 - 128));
              if (!*v55)
              {
                goto LABEL_109;
              }

              LODWORD(v38) = v52;
            }

            else
            {
              v37 = v6 + 2;
LABEL_71:
              *v55 = v37;
            }

            if (sub_1470AE4(v38))
            {
              *(a1 + 16) |= 0x40u;
              *(a1 + 96) = v38;
            }

            else
            {
              sub_13B67EC();
            }

            continue;
          }

          goto LABEL_87;
        }

        if (v10 == 9)
        {
          if (v7 == 72)
          {
            v45 = v6 + 1;
            v46 = *v6;
            if ((v46 & 0x8000000000000000) == 0)
            {
              goto LABEL_84;
            }

            v47 = *v45;
            v48 = (v47 << 7) + v46;
            LODWORD(v46) = v48 - 128;
            if (v47 < 0)
            {
              *v55 = sub_19587DC(v6, (v48 - 128));
              if (!*v55)
              {
                goto LABEL_109;
              }

              LODWORD(v46) = v53;
            }

            else
            {
              v45 = v6 + 2;
LABEL_84:
              *v55 = v45;
            }

            if (sub_144E2E8(v46))
            {
              *(a1 + 16) |= 0x80u;
              *(a1 + 100) = v46;
            }

            else
            {
              sub_13B6774();
            }

            continue;
          }

          goto LABEL_87;
        }

        if (v10 != 10 || v7 != 82)
        {
          goto LABEL_87;
        }

        *(a1 + 16) |= 0x20u;
        v16 = *(a1 + 88);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_137ABD8(v18);
          *(a1 + 88) = v16;
          v6 = *v55;
        }

        v15 = sub_2202120(a3, v16, v6);
      }
    }

    else
    {
      if (v7 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v7 == 8)
          {
            v27 = v6 + 1;
            v26 = *v6;
            if ((v26 & 0x8000000000000000) == 0)
            {
              goto LABEL_49;
            }

            v28 = *v27;
            v26 = (v28 << 7) + v26 - 128;
            if (v28 < 0)
            {
              *v55 = sub_19587DC(v6, v26);
              if (!*v55)
              {
                goto LABEL_109;
              }
            }

            else
            {
              v27 = v6 + 2;
LABEL_49:
              *v55 = v27;
            }

            if ((v26 - 1) > 5)
            {
              sub_12E8450();
            }

            else
            {
              *(a1 + 16) |= 0x100u;
              *(a1 + 104) = v26;
            }

            continue;
          }

          goto LABEL_87;
        }

        if (v10 != 2 || v7 != 18)
        {
          goto LABEL_87;
        }

        *(a1 + 16) |= 1u;
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v22 = (a1 + 48);
        goto LABEL_66;
      }

      if (v10 == 3)
      {
        if (v7 != 26)
        {
          goto LABEL_87;
        }

        *(a1 + 16) |= 2u;
        v35 = *(a1 + 8);
        v21 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
        if (v35)
        {
          v21 = *v21;
        }

        v22 = (a1 + 56);
LABEL_66:
        v36 = sub_194DB04(v22, v21);
        v15 = sub_1958890(v36, *v55, a3);
        goto LABEL_94;
      }

      if (v10 == 4)
      {
        if (v7 != 34)
        {
          goto LABEL_87;
        }

        *(a1 + 16) |= 4u;
        v41 = *(a1 + 64);
        if (!v41)
        {
          v42 = *(a1 + 8);
          v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
          if (v42)
          {
            v43 = *v43;
          }

          sub_16F58FC(v43);
          v41 = v44;
          *(a1 + 64) = v44;
          v6 = *v55;
        }

        v15 = sub_21F86E8(a3, v41, v6);
      }

      else
      {
        if (v10 != 5 || v7 != 42)
        {
          goto LABEL_87;
        }

        *(a1 + 16) |= 8u;
        v11 = *(a1 + 72);
        if (!v11)
        {
          v12 = *(a1 + 8);
          v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
          if (v12)
          {
            v13 = *v13;
          }

          sub_1868ECC(v13);
          v11 = v14;
          *(a1 + 72) = v14;
          v6 = *v55;
        }

        v15 = sub_2200B30(a3, v11, v6);
      }
    }

LABEL_94:
    *v55 = v15;
    if (!v15)
    {
      goto LABEL_109;
    }

LABEL_95:
    ;
  }

  return *v55;
}

char *sub_137566C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x100) != 0)
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

  if (v5)
  {
    v6 = sub_128AEEC(a3, 2, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v6);
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_12;
  }

  v6 = sub_128AEEC(a3, 3, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

LABEL_17:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v11 = *(a1 + 64);
  *v6 = 34;
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

  v6 = sub_16E5FE0(v11, v13, a3);
  if ((v5 & 8) != 0)
  {
LABEL_23:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v14 = *(a1 + 72);
    *v6 = 42;
    v15 = *(v14 + 20);
    v6[1] = v15;
    if (v15 > 0x7F)
    {
      v16 = sub_19575D0(v15, v6 + 1);
    }

    else
    {
      v16 = v6 + 2;
    }

    v6 = sub_186732C(v14, v16, a3);
  }

LABEL_29:
  v17 = *(a1 + 32);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v19 = *(*(a1 + 40) + 8 * i + 8);
      *v6 = 50;
      v20 = *(v19 + 44);
      v6[1] = v20;
      if (v20 > 0x7F)
      {
        v21 = sub_19575D0(v20, v6 + 1);
      }

      else
      {
        v21 = v6 + 2;
      }

      v6 = sub_1838E28(v19, v21, a3);
    }
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v22 = *(a1 + 80);
    *v6 = 58;
    v23 = *(v22 + 20);
    v6[1] = v23;
    if (v23 > 0x7F)
    {
      v24 = sub_19575D0(v23, v6 + 1);
    }

    else
    {
      v24 = v6 + 2;
    }

    v6 = sub_13746F0(v22, v24, a3);
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v26 = *(a1 + 96);
    *v6 = 64;
    v6[1] = v26;
    if (v26 > 0x7F)
    {
      v6[1] = v26 | 0x80;
      v27 = v26 >> 7;
      v6[2] = v26 >> 7;
      v25 = v6 + 3;
      if (v26 >= 0x4000)
      {
        LOBYTE(v28) = v6[2];
        do
        {
          *(v25 - 1) = v28 | 0x80;
          v28 = v27 >> 7;
          *v25++ = v27 >> 7;
          v29 = v27 >> 14;
          v27 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v25 = v6 + 2;
    }
  }

  else
  {
    v25 = v6;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v31 = *(a1 + 100);
    *v25 = 72;
    v25[1] = v31;
    if (v31 > 0x7F)
    {
      v25[1] = v31 | 0x80;
      v32 = v31 >> 7;
      v25[2] = v31 >> 7;
      v30 = v25 + 3;
      if (v31 >= 0x4000)
      {
        LOBYTE(v33) = v25[2];
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
      v30 = v25 + 2;
    }
  }

  else
  {
    v30 = v25;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v30)
    {
      v30 = sub_225EB68(a3, v30);
    }

    v35 = *(a1 + 88);
    *v30 = 82;
    v36 = *(v35 + 20);
    v30[1] = v36;
    if (v36 > 0x7F)
    {
      v37 = sub_19575D0(v36, v30 + 1);
    }

    else
    {
      v37 = v30 + 2;
    }

    v30 = sub_1374C18(v35, v37, a3);
  }

  v38 = *(a1 + 8);
  if ((v38 & 1) == 0)
  {
    return v30;
  }

  v40 = v38 & 0xFFFFFFFFFFFFFFFCLL;
  v41 = *(v40 + 31);
  if (v41 < 0)
  {
    v42 = *(v40 + 8);
    v41 = *(v40 + 16);
  }

  else
  {
    v42 = (v40 + 8);
  }

  if ((*a3 - v30) >= v41)
  {
    v43 = v41;
    memcpy(v30, v42, v41);
    v30 += v43;
    return v30;
  }

  return sub_1957130(a3, v42, v41, v30);
}

uint64_t sub_1375B14(uint64_t a1)
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
      v7 = sub_1839564(v6);
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
  if (!v8)
  {
    goto LABEL_18;
  }

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
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v12 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v13 = *(v12 + 23);
  v14 = *(v12 + 8);
  if ((v13 & 0x80u) == 0)
  {
    v14 = v13;
  }

  v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  v15 = sub_16E62F4(*(a1 + 64));
  v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v16 = sub_1867668(*(a1 + 72));
  v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  v17 = sub_137481C(*(a1 + 80));
  v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x20) == 0)
  {
LABEL_16:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

LABEL_29:
  v18 = sub_1374D64(*(a1 + 88));
  v2 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x40) != 0)
  {
LABEL_30:
    v19 = *(a1 + 96);
    if (v19 < 0)
    {
      v20 = 11;
    }

    else
    {
      v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v20;
    if ((v8 & 0x80) != 0)
    {
      goto LABEL_34;
    }

LABEL_18:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_17:
  if ((v8 & 0x80) == 0)
  {
    goto LABEL_18;
  }

LABEL_34:
  v21 = *(a1 + 100);
  if (v21 < 0)
  {
    v22 = 11;
  }

  else
  {
    v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v22;
  if ((v8 & 0x100) != 0)
  {
LABEL_38:
    v23 = *(a1 + 104);
    if (v23 < 0)
    {
      v24 = 11;
    }

    else
    {
      v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v24;
  }

LABEL_42:
  v25 = *(a1 + 8);
  if (v25)
  {
    v27 = v25 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = *((v25 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v28 < 0)
    {
      v28 = *(v27 + 16);
    }

    v2 += v28;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_1375DD0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B315C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
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
      v12 = *(a2 + 48);
      *(a1 + 16) |= 1u;
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      sub_194EA1C((a1 + 48), (v12 & 0xFFFFFFFFFFFFFFFELL), v14);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_27;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    v15 = *(a2 + 56);
    *(a1 + 16) |= 2u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    sub_194EA1C((a1 + 56), (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_35;
    }

LABEL_27:
    *(a1 + 16) |= 4u;
    v18 = *(a1 + 64);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      sub_16F58FC(v20);
      *(a1 + 64) = v18;
    }

    if (*(a2 + 64))
    {
      v21 = *(a2 + 64);
    }

    else
    {
      v21 = &off_277E650;
    }

    sub_16E645C(v18, v21);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_43;
    }

LABEL_35:
    *(a1 + 16) |= 8u;
    v22 = *(a1 + 72);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      sub_1868ECC(v24);
      *(a1 + 72) = v22;
    }

    if (*(a2 + 72))
    {
      v25 = *(a2 + 72);
    }

    else
    {
      v25 = &off_2787A70;
    }

    sub_17DBC2C(v22, v25);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_51;
    }

LABEL_43:
    *(a1 + 16) |= 0x10u;
    v26 = *(a1 + 80);
    if (!v26)
    {
      v27 = *(a1 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      v26 = sub_137AB54(v28);
      *(a1 + 80) = v26;
    }

    if (*(a2 + 80))
    {
      v29 = *(a2 + 80);
    }

    else
    {
      v29 = &off_276CDE8;
    }

    sub_13054EC(v26, v29);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_59;
    }

LABEL_51:
    *(a1 + 16) |= 0x20u;
    v30 = *(a1 + 88);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_137ABD8(v32);
      *(a1 + 88) = v30;
    }

    if (*(a2 + 88))
    {
      v33 = *(a2 + 88);
    }

    else
    {
      v33 = &off_276CE10;
    }

    sub_12B0A14(v30, v33);
    if ((v9 & 0x40) == 0)
    {
LABEL_12:
      if ((v9 & 0x80) == 0)
      {
LABEL_14:
        *(a1 + 16) |= v9;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 100) = *(a2 + 100);
      goto LABEL_14;
    }

LABEL_59:
    *(a1 + 96) = *(a2 + 96);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  if ((v9 & 0x100) != 0)
  {
    v10 = *(a2 + 104);
    *(a1 + 16) |= 0x100u;
    *(a1 + 104) = v10;
  }

  v11 = *(a2 + 8);
  if (v11)
  {

    sub_1957EF4((a1 + 8), (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_137608C(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_1836CF0(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    result = sub_16E6614(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x10) == 0)
  {
    return 1;
  }

  v7 = *(a1 + 80);
  if ((*(v7 + 16) & 2) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(v7 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1376120(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_276CEA8)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1372D5C(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_1373EFC(v7);
      operator delete();
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      sub_1374E40(v8);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_137622C(uint64_t a1)
{
  sub_1376120(a1);

  operator delete();
}

uint64_t sub_1376264(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_17:
    result = sub_1372E9C(*(result + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_18;
  }

  v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_17;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_18:
  result = sub_1373FEC(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_1375000(*(v1 + 48));
  }

LABEL_7:
  if ((v2 & 0x30) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 1;
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

uint64_t sub_1376334(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_48;
      }

      *(a1 + 16) |= 2u;
      v24 = *(a1 + 32);
      if (!v24)
      {
        v25 = *(a1 + 8);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        v24 = sub_137AA0C(v26);
        *(a1 + 32) = v24;
        v7 = *v33;
      }

      v20 = sub_22021B0(a3, v24, v7);
    }

    else if (v11 == 5)
    {
      if (v8 != 42)
      {
        goto LABEL_48;
      }

      *(a1 + 16) |= 4u;
      v27 = *(a1 + 40);
      if (!v27)
      {
        v28 = *(a1 + 8);
        v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (v28)
        {
          v29 = *v29;
        }

        v27 = sub_137AAD0(v29);
        *(a1 + 40) = v27;
        v7 = *v33;
      }

      v20 = sub_2202240(a3, v27, v7);
    }

    else
    {
      if (v11 != 6 || v8 != 50)
      {
        goto LABEL_48;
      }

      *(a1 + 16) |= 8u;
      v16 = *(a1 + 48);
      if (!v16)
      {
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        sub_137AC60(v18);
        v16 = v19;
        *(a1 + 48) = v19;
        v7 = *v33;
      }

      v20 = sub_22022D0(a3, v16, v7);
    }

LABEL_55:
    *v33 = v20;
    if (!v20)
    {
      goto LABEL_64;
    }

LABEL_56:
    if (sub_195ADC0(a3, v33, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_48;
    }

    *(a1 + 16) |= 1u;
    v21 = *(a1 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    v23 = sub_194DB04((a1 + 24), v22);
    v20 = sub_1958890(v23, *v33, a3);
    goto LABEL_55;
  }

  if (v11 == 2)
  {
    if (v8 == 17)
    {
      v5 |= 0x10u;
      *(a1 + 56) = *v7;
      *v33 = v7 + 8;
      goto LABEL_56;
    }
  }

  else if (v11 == 3 && v8 == 24)
  {
    v14 = (v7 + 1);
    v13 = *v7;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if (v15 < 0)
    {
      *v33 = sub_19587DC(v7, v13);
      if (!*v33)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v14 = (v7 + 2);
LABEL_18:
      *v33 = v14;
    }

    if ((v13 - 1) > 4)
    {
      sub_1313740();
    }

    else
    {
      *(a1 + 16) |= 0x20u;
      *(a1 + 64) = v13;
    }

    goto LABEL_56;
  }

LABEL_48:
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
      v7 = *v33;
    }

    v20 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_55;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_64:
  *v33 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v33;
}

char *sub_1376654(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 56);
    *v4 = 17;
    *(v4 + 1) = v8;
    v4 += 9;
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 0x20) == 0)
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

  v9 = *(a1 + 64);
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
  if ((v6 & 2) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 32);
    *v7 = 34;
    v14 = *(v13 + 20);
    v7[1] = v14;
    if (v14 > 0x7F)
    {
      v15 = sub_19575D0(v14, v7 + 1);
    }

    else
    {
      v15 = v7 + 2;
    }

    v7 = sub_1373510(v13, v15, a3);
    if ((v6 & 4) == 0)
    {
LABEL_18:
      if ((v6 & 8) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_18;
  }

  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v16 = *(a1 + 40);
  *v7 = 42;
  v17 = *(v16 + 20);
  v7[1] = v17;
  if (v17 > 0x7F)
  {
    v18 = sub_19575D0(v17, v7 + 1);
  }

  else
  {
    v18 = v7 + 2;
  }

  v7 = sub_13741E8(v16, v18, a3);
  if ((v6 & 8) != 0)
  {
LABEL_32:
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v19 = *(a1 + 48);
    *v7 = 50;
    v20 = *(v19 + 20);
    v7[1] = v20;
    if (v20 > 0x7F)
    {
      v21 = sub_19575D0(v20, v7 + 1);
    }

    else
    {
      v21 = v7 + 2;
    }

    v7 = sub_137566C(v19, v21, a3);
  }

LABEL_38:
  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v25)
  {
    v27 = v25;
    memcpy(v7, v26, v25);
    v7 += v27;
    return v7;
  }

  return sub_1957130(a3, v26, v25, v7);
}

uint64_t sub_1376924(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    result = 0;
    goto LABEL_21;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v8 = sub_1373960(*(a1 + 32));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
  }

  v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v5 + 23);
  v7 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v14 = sub_13742D0(*(a1 + 40));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_12:
    v9 = sub_1375B14(*(a1 + 48));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  if ((v2 & 0x10) != 0)
  {
    result = v3 + 9;
  }

  else
  {
    result = v3;
  }

  if ((v2 & 0x20) != 0)
  {
    v10 = *(a1 + 64);
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
  }

LABEL_21:
  v13 = *(a1 + 8);
  if (v13)
  {
    v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    result += v16;
  }

  *(a1 + 20) = result;
  return result;
}