void *sub_1704C14(void *a1)
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

void sub_1704C88(void *a1)
{
  sub_1704C14(a1);

  operator delete();
}

uint64_t sub_1704CC0(uint64_t a1)
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

char *sub_1704CE8(uint64_t a1, char *a2, int32x2_t *a3)
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
    v20 = v7 + 1;
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_30:
      v31 = v20;
      *(a1 + 33) = v19 != 0;
      goto LABEL_35;
    }

    v29 = sub_19587DC(v7, v19);
    v31 = v29;
    *(a1 + 33) = v30 != 0;
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

    v5 |= 1u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_25:
      v31 = v17;
      *(a1 + 24) = v16;
      goto LABEL_35;
    }

    v25 = sub_19587DC(v7, v16);
    v31 = v25;
    *(a1 + 24) = v26;
    if (!v25)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (v11 == 1 && v8 == 8)
  {
    v5 |= 2u;
    v23 = v7 + 1;
    v22 = *v7;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    v24 = *v23;
    v22 = (v24 << 7) + v22 - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_34:
      v31 = v23;
      *(a1 + 32) = v22 != 0;
      goto LABEL_35;
    }

    v27 = sub_19587DC(v7, v22);
    v31 = v27;
    *(a1 + 32) = v28 != 0;
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

char *sub_1704F50(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 32);
    *__dst = 8;
    __dst[1] = v6;
    __dst += 2;
  }

  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 24);
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 33);
    *v7 = 24;
    v7[1] = v12;
    v7 += 2;
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v7;
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

  if (*a3 - v7 >= v16)
  {
    v18 = v16;
    memcpy(v7, v17, v16);
    v7 += v18;
    return v7;
  }

  return sub_1957130(a3, v17, v16, v7);
}

unint64_t sub_17050E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) != 0)
  {
    if (v1)
    {
      v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    v3 = v2 + ((*(a1 + 16) >> 1) & 2) + (*(a1 + 16) & 2u);
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

std::string *sub_1705168(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    result[1].__r_.__value_.__s.__data_[8] = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result[1].__r_.__value_.__s.__data_[9] = *(a2 + 33);
  }

LABEL_6:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_7:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_17051E4(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_18;
    }
  }

  else if (v4)
  {
    goto LABEL_18;
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

  if (a1 != &off_277F1E8)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      sub_1704C14(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_18:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1705308(uint64_t a1)
{
  sub_17051E4(a1);

  operator delete();
}

uint64_t sub_1705340(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if (v2)
  {
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

LABEL_21:
    v7 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_25;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_17:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_25:
  v8 = *(result + 48) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_29;
    }

LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  **v8 = 0;
  *(v8 + 8) = 0;
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_29:
  v9 = *(result + 56) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v9 + 23) & 0x80000000) == 0)
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    result = sub_1704CC0(*(result + 64));
    goto LABEL_9;
  }

  **v9 = 0;
  *(v9 + 8) = 0;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_17054AC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v28 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v28, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v28 + 1);
    v7 = **v28;
    if (**v28 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v28, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v28 + 2);
      }
    }

    *v28 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 3)
    {
      if (v10 == 4)
      {
        if (v7 == 34)
        {
          *(a1 + 16) |= 8u;
          v20 = *(a1 + 8);
          v13 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v13 = *v13;
          }

          v14 = (a1 + 48);
          goto LABEL_43;
        }
      }

      else if (v10 == 5)
      {
        if (v7 == 42)
        {
          *(a1 + 16) |= 0x10u;
          v22 = *(a1 + 8);
          v13 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v13 = *v13;
          }

          v14 = (a1 + 56);
          goto LABEL_43;
        }
      }

      else if (v10 == 6 && v7 == 50)
      {
        *(a1 + 16) |= 0x20u;
        v15 = *(a1 + 64);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_172827C(v17);
          *(a1 + 64) = v15;
          v6 = *v28;
        }

        v18 = sub_2236A74(a3, v15, v6);
        goto LABEL_44;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v19 = *(a1 + 8);
        v13 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v13 = *v13;
        }

        v14 = (a1 + 24);
        goto LABEL_43;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v21 = *(a1 + 8);
        v13 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v13 = *v13;
        }

        v14 = (a1 + 32);
        goto LABEL_43;
      }
    }

    else if (v10 == 3 && v7 == 26)
    {
      *(a1 + 16) |= 4u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v14 = (a1 + 40);
LABEL_43:
      v23 = sub_194DB04(v14, v13);
      v18 = sub_1958890(v23, *v28, a3);
      goto LABEL_44;
    }

    if (v7)
    {
      v24 = (v7 & 7) == 4;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v28;
      }

LABEL_57:
      *v28 = 0;
      return *v28;
    }

    v25 = *(a1 + 8);
    if (v25)
    {
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v26 = sub_11F1920((a1 + 8));
      v6 = *v28;
    }

    v18 = sub_1952690(v7, v26, v6, a3);
LABEL_44:
    *v28 = v18;
    if (!v18)
    {
      goto LABEL_57;
    }
  }

  return *v28;
}

char *sub_1705740(uint64_t a1, char *__dst, void *a3)
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

    goto LABEL_11;
  }

LABEL_10:
  v4 = sub_128AEEC(a3, 3, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = sub_128AEEC(a3, 4, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = sub_128AEEC(a3, 5, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 64);
  *v4 = 50;
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

  v4 = sub_1704F50(v7, v9, a3);
LABEL_19:
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

uint64_t sub_1705904(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_17;
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
    v13 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v16 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 23);
  v18 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v18 = v17;
  }

  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_25:
  v19 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v20 = *(v19 + 23);
  v21 = *(v19 + 8);
  if ((v20 & 0x80u) == 0)
  {
    v21 = v20;
  }

  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_16:
    v10 = sub_17050E4(*(a1 + 64));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  v11 = *(a1 + 8);
  if (v11)
  {
    v22 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    v3 += v23;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_1705B00(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) == 0)
  {
    goto LABEL_32;
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
        goto LABEL_5;
      }

      goto LABEL_15;
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
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_15:
  v11 = *(a2 + 40);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
  v12 = v3->__r_.__value_.__l.__size_;
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  result = sub_194EA1C(&v3[1].__r_.__value_.__r.__words[2], (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_18:
  v14 = *(a2 + 48);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
  v15 = v3->__r_.__value_.__l.__size_;
  v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
  if (v15)
  {
    v16 = *v16;
  }

  result = sub_194EA1C(&v3[2], (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_24;
  }

LABEL_21:
  v17 = *(a2 + 56);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
  v18 = v3->__r_.__value_.__l.__size_;
  v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
  if (v18)
  {
    v19 = *v19;
  }

  result = sub_194EA1C(&v3[2].__r_.__value_.__l.__size_, (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
  if ((v4 & 0x20) != 0)
  {
LABEL_24:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x20u;
    v20 = v3[2].__r_.__value_.__r.__words[2];
    if (!v20)
    {
      v21 = v3->__r_.__value_.__l.__size_;
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_172827C(v22);
      v3[2].__r_.__value_.__r.__words[2] = v20;
    }

    if (*(a2 + 64))
    {
      v23 = *(a2 + 64);
    }

    else
    {
      v23 = &off_277F1C0;
    }

    result = sub_1705168(v20, v23);
  }

LABEL_32:
  v24 = *(a2 + 8);
  if (v24)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1705CEC(uint64_t a1)
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
  if (a1 != &off_277F230)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_1706A68(v6);
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

void sub_1705DA4(uint64_t a1)
{
  sub_1705CEC(a1);

  operator delete();
}

uint64_t sub_1705DDC(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_1705E38(*(result + 24));
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

uint64_t sub_1705E38(uint64_t a1)
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
  *(result + 32) = 0;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_1705EB8(uint64_t a1, char *a2, int32x2_t *a3)
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

        v14 = sub_1728484(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_2236B04(a3, v14, v6);
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

char *sub_1705FFC(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_1706DEC(v6, v8, a3);
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

uint64_t sub_1706108(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_1706F54(*(a1 + 24));
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

std::string *sub_1706188(std::string *result, uint64_t a2)
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

      data = sub_1728484(v7);
      v3[1].__r_.__value_.__r.__words[0] = data;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_277F288;
    }

    result = sub_1706230(data, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_1706230(std::string *result, uint64_t a2)
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
      v3[1].__r_.__value_.__s.__data_[17] = *(a2 + 41);
      goto LABEL_7;
    }

LABEL_18:
    v3[1].__r_.__value_.__s.__data_[16] = *(a2 + 40);
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

uint64_t sub_1706350(uint64_t a1)
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

  if (a1 != &off_277F250)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_16F66CC(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_1705CEC(v7);
      operator delete();
    }
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

void sub_170643C(uint64_t a1)
{
  sub_1706350(a1);

  operator delete();
}

uint64_t sub_1706474(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 24)
        {
          v23 = v6 + 1;
          v22 = *v6;
          if ((v22 & 0x8000000000000000) == 0)
          {
            goto LABEL_35;
          }

          v24 = *v23;
          v22 = (v24 << 7) + v22 - 128;
          if (v24 < 0)
          {
            *v29 = sub_19587DC(v6, v22);
            if (!*v29)
            {
              goto LABEL_54;
            }
          }

          else
          {
            v23 = v6 + 2;
LABEL_35:
            *v29 = v23;
          }

          if (v22 > 1)
          {
            sub_1313740();
          }

          else
          {
            *(a1 + 16) |= 8u;
            *(a1 + 48) = v22;
          }

          continue;
        }

LABEL_38:
        if (v7)
        {
          v25 = (v7 & 7) == 4;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return *v29;
          }

LABEL_54:
          *v29 = 0;
          return *v29;
        }

        v26 = *(a1 + 8);
        if (v26)
        {
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v27 = sub_11F1920((a1 + 8));
          v6 = *v29;
        }

        v15 = sub_1952690(v7, v27, v6, a3);
        goto LABEL_45;
      }

      if (v10 != 4 || v7 != 34)
      {
        goto LABEL_38;
      }

      *(a1 + 16) |= 4u;
      v16 = *(a1 + 40);
      if (!v16)
      {
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v16 = sub_1728384(v18);
        *(a1 + 40) = v16;
        v6 = *v29;
      }

      v15 = sub_2236B94(a3, v16, v6);
    }

    else if (v10 == 1)
    {
      if (v7 != 10)
      {
        goto LABEL_38;
      }

      *(a1 + 16) |= 1u;
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v21 = sub_194DB04((a1 + 24), v20);
      v15 = sub_1958890(v21, *v29, a3);
    }

    else
    {
      if (v10 != 2 || v7 != 18)
      {
        goto LABEL_38;
      }

      *(a1 + 16) |= 2u;
      v12 = *(a1 + 32);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_16F9DC8(v14);
        *(a1 + 32) = v12;
        v6 = *v29;
      }

      v15 = sub_2227FB4(a3, v12, v6);
    }

LABEL_45:
    *v29 = v15;
    if (!v15)
    {
      goto LABEL_54;
    }
  }

  return *v29;
}

char *sub_17066EC(uint64_t a1, char *__dst, unint64_t *a3)
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
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 32);
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

    v4 = sub_16F6980(v8, v10, a3);
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 8) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_19;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 48);
  *v4 = 24;
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

LABEL_19:
  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v15 = *(a1 + 40);
    *v7 = 34;
    v16 = *(v15 + 20);
    v7[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v7 + 1);
    }

    else
    {
      v17 = v7 + 2;
    }

    v7 = sub_1705FFC(v15, v17, a3);
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v21)
  {
    v23 = v21;
    memcpy(v7, v22, v21);
    v7 += v23;
    return v7;
  }

  return sub_1957130(a3, v22, v21, v7);
}

uint64_t sub_1706908(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_16F6B30(*(a1 + 32));
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
  if ((v2 & 4) != 0)
  {
    v8 = sub_1706108(*(a1 + 40));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_18;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v9 = *(a1 + 48);
  if (v9 < 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v10;
LABEL_18:
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

uint64_t sub_1706A68(uint64_t a1)
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

void sub_1706B20(uint64_t a1)
{
  sub_1706A68(a1);

  operator delete();
}

uint64_t sub_1706B58(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_34;
      }

      v5 |= 4u;
      v23 = v7 + 1;
      v22 = *v7;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_33;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_33:
        *v32 = v23;
        *(a1 + 40) = v22 != 0;
        goto LABEL_42;
      }

      v30 = sub_19587DC(v7, v22);
      *v32 = v30;
      *(a1 + 40) = v31 != 0;
      if (!v30)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_34;
      }

      v5 |= 8u;
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
        *v32 = v17;
        *(a1 + 41) = v16 != 0;
        goto LABEL_42;
      }

      v28 = sub_19587DC(v7, v16);
      *v32 = v28;
      *(a1 + 41) = v29 != 0;
      if (!v28)
      {
        goto LABEL_51;
      }
    }

LABEL_42:
    if (sub_195ADC0(a3, v32, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_34;
    }

    *(a1 + 16) |= 1u;
    v19 = *(a1 + 8);
    v14 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v14 = *v14;
    }

    v15 = (a1 + 24);
LABEL_28:
    v20 = sub_194DB04(v15, v14);
    v21 = sub_1958890(v20, *v32, a3);
    goto LABEL_41;
  }

  if (v11 == 2 && v8 == 18)
  {
    *(a1 + 16) |= 2u;
    v13 = *(a1 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    v15 = (a1 + 32);
    goto LABEL_28;
  }

LABEL_34:
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

    v21 = sub_1952690(v8, v27, v7, a3);
LABEL_41:
    *v32 = v21;
    if (!v21)
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
  *v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v32;
}

char *sub_1706DEC(uint64_t a1, char *__dst, void *a3)
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

      goto LABEL_8;
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
      goto LABEL_14;
    }

    goto LABEL_11;
  }

LABEL_8:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 40);
  *v4 = 24;
  v4[1] = v7;
  v4 += 2;
  if ((v6 & 8) != 0)
  {
LABEL_11:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 41);
    *v4 = 32;
    v4[1] = v8;
    v4 += 2;
  }

LABEL_14:
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

uint64_t sub_1706F54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_13;
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
  v3 = v2 + ((v1 >> 2) & 2) + ((v1 >> 1) & 2);
LABEL_13:
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

uint64_t sub_1707058(uint64_t a1)
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
  if (a1 != &off_277F2B8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_1707FE0(v6);
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

void sub_1707110(uint64_t a1)
{
  sub_1707058(a1);

  operator delete();
}

uint64_t sub_1707148(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_17071B4(*(result + 24));
  }

  if ((v2 & 0x1E) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 32) = 0;
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

uint64_t sub_17071B4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x7F) == 0)
  {
    goto LABEL_19;
  }

  if (v2)
  {
    result = sub_17081AC(*(result + 24));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_1707E54(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = sub_1707ED0(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = sub_17082AC(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_14:
    v3 = *(v1 + 64);
    v4 = *(v3 + 8);
    result = v3 + 8;
    if (v4)
    {
      result = sub_1957EA8(result);
    }

    goto LABEL_16;
  }

LABEL_13:
  result = sub_1707F64(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_16:
  if ((v2 & 0x40) != 0)
  {
    v5 = *(v1 + 72);
    v6 = *(v5 + 8);
    result = v5 + 8;
    if (v6)
    {
      result = sub_1957EA8(result);
    }
  }

LABEL_19:
  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

char *sub_1707288(uint64_t a1, char *a2, int32x2_t *a3)
{
  v39 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v39, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v39 + 1;
    v8 = *v39;
    if (*v39 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v39, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v39 + 2;
      }
    }

    v39 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 16)
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
            v39 = sub_19587DC(v7, v16);
            if (!v39)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v17 = v7 + 2;
LABEL_25:
            v39 = v17;
          }

          if (v16 > 7)
          {
            sub_12E8418();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 36) = v16;
          }

          goto LABEL_54;
        }

        goto LABEL_46;
      }

      if (v8 != 8)
      {
        goto LABEL_46;
      }

      v27 = v7 + 1;
      v28 = *v7;
      if (v28 < 0)
      {
        v29 = *v27;
        v30 = (v29 << 7) + v28;
        LODWORD(v28) = v30 - 128;
        if (v29 < 0)
        {
          v39 = sub_19587DC(v7, (v30 - 128));
          if (!v39)
          {
            goto LABEL_69;
          }

          LODWORD(v28) = v36;
          goto LABEL_44;
        }

        v27 = v7 + 2;
      }

      v39 = v27;
LABEL_44:
      if (sub_14CB318(v28))
      {
        *(a1 + 16) |= 2u;
        *(a1 + 32) = v28;
      }

      else
      {
        sub_12E8450();
      }

      goto LABEL_54;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_46;
      }

      v5 |= 8u;
      v25 = v7 + 1;
      v24 = *v7;
      if ((v24 & 0x8000000000000000) == 0)
      {
        goto LABEL_38;
      }

      v26 = *v25;
      v24 = (v26 << 7) + v24 - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v25 = v7 + 2;
LABEL_38:
        v39 = v25;
        *(a1 + 40) = v24 != 0;
        goto LABEL_54;
      }

      v34 = sub_19587DC(v7, v24);
      v39 = v34;
      *(a1 + 40) = v35 != 0;
      if (!v34)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_46;
      }

      v5 |= 0x10u;
      v13 = v7 + 1;
      v12 = *v7;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = v7 + 2;
LABEL_15:
        v39 = v13;
        *(a1 + 41) = v12 != 0;
        goto LABEL_54;
      }

      v37 = sub_19587DC(v7, v12);
      v39 = v37;
      *(a1 + 41) = v38 != 0;
      if (!v37)
      {
        goto LABEL_69;
      }
    }

LABEL_54:
    if (sub_195ADC0(a3, &v39, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
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

      sub_172858C(v21);
      v19 = v22;
      *(a1 + 24) = v22;
      v7 = v39;
    }

    v23 = sub_2236C24(a3, v19, v7);
LABEL_53:
    v39 = v23;
    if (!v23)
    {
      goto LABEL_69;
    }

    goto LABEL_54;
  }

LABEL_46:
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
      v7 = v39;
    }

    v23 = sub_1952690(v8, v33, v7, a3);
    goto LABEL_53;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_69:
  v39 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v39;
}

char *sub_17075F4(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 4) != 0)
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

  if (v5)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v15 = *(a1 + 24);
    *v11 = 26;
    v16 = *(v15 + 20);
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v11 + 1);
    }

    else
    {
      v17 = v11 + 2;
    }

    v11 = sub_17086B8(v15, v17, a3);
    if ((v5 & 8) == 0)
    {
LABEL_21:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_32;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_21;
  }

  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v18 = *(a1 + 40);
  *v11 = 32;
  v11[1] = v18;
  v11 += 2;
  if ((v5 & 0x10) != 0)
  {
LABEL_32:
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v19 = *(a1 + 41);
    *v11 = 40;
    v11[1] = v19;
    v11 += 2;
  }

LABEL_35:
  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v11;
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

  if ((*a3 - v11) >= v23)
  {
    v25 = v23;
    memcpy(v11, v24, v23);
    v11 += v25;
    return v11;
  }

  return sub_1957130(a3, v24, v23, v11);
}

uint64_t sub_1707890(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    result = 0;
    goto LABEL_17;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v6 = *(a1 + 32);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v7;
    goto LABEL_11;
  }

  v5 = sub_1708A44(*(a1 + 24));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v8 = *(a1 + 36);
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v8 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 11;
    }

    v3 += v10;
  }

  result = v3 + ((v2 >> 3) & 2) + ((v2 >> 2) & 2);
LABEL_17:
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

void sub_17079A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x1F) != 0)
  {
    if (v4)
    {
      *(a1 + 16) |= 1u;
      v6 = *(a1 + 24);
      if (!v6)
      {
        v7 = *(a1 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        sub_172858C(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277F2E8;
      }

      sub_1707AAC(v6, v9);
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

    *(a1 + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }

LABEL_22:
    *(a1 + 36) = *(a2 + 36);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
LABEL_8:
        *(a1 + 16) |= v4;
        goto LABEL_9;
      }

LABEL_7:
      *(a1 + 41) = *(a2 + 41);
      goto LABEL_8;
    }

LABEL_23:
    *(a1 + 40) = *(a2 + 40);
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

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1707AAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x7F) == 0)
  {
    goto LABEL_66;
  }

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

      sub_1728AD8(v7);
      *(a1 + 24) = v5;
    }

    if (*(a2 + 24))
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = &off_277F470;
    }

    sub_1708C58(v5, v8);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

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

    v9 = sub_17347F0(v11);
    *(a1 + 32) = v9;
  }

  if (*(a2 + 32))
  {
    v12 = *(a2 + 32);
  }

  else
  {
    v12 = &off_2780068;
  }

  sub_1708E98(v9, v12);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_25:
  *(a1 + 16) |= 4u;
  v13 = *(a1 + 40);
  if (!v13)
  {
    v14 = *(a1 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    v13 = sub_1735310(v15);
    *(a1 + 40) = v13;
  }

  if (*(a2 + 40))
  {
    v16 = *(a2 + 40);
  }

  else
  {
    v16 = &off_27803D8;
  }

  sub_1708F54(v13, v16);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_41:
    *(a1 + 16) |= 0x10u;
    v21 = *(a1 + 56);
    if (!v21)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_173C87C(v23);
      *(a1 + 56) = v21;
    }

    if (*(a2 + 56))
    {
      v24 = *(a2 + 56);
    }

    else
    {
      v24 = &off_27805B8;
    }

    sub_17090FC(v21, v24);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
  }

LABEL_33:
  *(a1 + 16) |= 8u;
  v17 = *(a1 + 48);
  if (!v17)
  {
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    v17 = sub_172882C(v19);
    *(a1 + 48) = v17;
  }

  if (*(a2 + 48))
  {
    v20 = *(a2 + 48);
  }

  else
  {
    v20 = &off_277F3F0;
  }

  sub_1709040(v17, v20);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_41;
  }

LABEL_7:
  if ((v4 & 0x20) != 0)
  {
LABEL_49:
    *(a1 + 16) |= 0x20u;
    v25 = *(a1 + 64);
    if (!v25)
    {
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_172860C(v27);
      *(a1 + 64) = v25;
    }

    v28 = *(a2 + 64);
    if (!v28)
    {
      v28 = &off_277F338;
    }

    v29 = v28[1];
    if (v29)
    {
      sub_1957EF4((v25 + 8), (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

LABEL_57:
  if ((v4 & 0x40) != 0)
  {
    *(a1 + 16) |= 0x40u;
    v30 = *(a1 + 72);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_1728684(v32);
      *(a1 + 72) = v30;
    }

    v33 = *(a2 + 72);
    if (!v33)
    {
      v33 = &off_277F350;
    }

    v34 = v33[1];
    if (v34)
    {
      sub_1957EF4((v30 + 8), (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

LABEL_66:
  v35 = *(a2 + 8);
  if (v35)
  {

    sub_1957EF4((a1 + 8), (v35 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1707D6C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_1707D9C(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1707D9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    while (v4 >= 1)
    {
      v5 = v4 - 1;
      v6 = sub_172B7A0(*(*(v3 + 32) + 8 * v4) + 24);
      v4 = v5;
      if ((v6 & 1) == 0)
      {
        return 0;
      }
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  v8 = *(a1 + 40);
  v9 = *(v8 + 32);
  do
  {
    v7 = v9 < 1;
    if (v9 < 1)
    {
      break;
    }

    v10 = v9 - 1;
    v11 = sub_172B7A0(*(*(v8 + 40) + 8 * v9) + 24);
    v9 = v10;
  }

  while ((v11 & 1) != 0);
  return v7;
}

uint64_t sub_1707E54(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_172B058(v4);
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

uint64_t sub_1707ED0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_172B058(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 3) != 0)
  {
    *(v1 + 52) = 0;
    *(v1 + 48) = 0;
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

uint64_t sub_1707F64(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_173AA1C(v4);
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

uint64_t sub_1707FE0(uint64_t a1)
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

  sub_1708064(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_1708064(uint64_t (***result)()))()
{
  if (result != &off_277F2E8)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      sub_170D578(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_172AB34(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_1734120(v4);
      operator delete();
    }

    v5 = v1[6];
    if (v5)
    {
      sub_170B824(v5);
      operator delete();
    }

    v6 = v1[7];
    if (v6)
    {
      sub_1739990(v6);
      operator delete();
    }

    v7 = v1[8];
    if (v7)
    {
      sub_1709280(v7);
      operator delete();
    }

    result = v1[9];
    if (result)
    {
      sub_1709420(result);

      operator delete();
    }
  }

  return result;
}

void sub_1708174(uint64_t a1)
{
  sub_1707FE0(a1);

  operator delete();
}

uint64_t sub_17081AC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_170C5B4(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 0x1F) == 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    v8 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_21:
    result = sub_170D4B8(*(v1 + 64));
    if ((v5 & 8) == 0)
    {
LABEL_10:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_22;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_20:
  result = sub_170CF4C(*(v1 + 56));
  if ((v5 & 4) != 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  if ((v5 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_22:
  result = sub_170D518(*(v1 + 72));
  if ((v5 & 0x10) != 0)
  {
LABEL_11:
    result = sub_1705340(*(v1 + 80));
  }

LABEL_12:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

std::string *sub_17082AC(std::string *result)
{
  v1 = result;
  data_low = LODWORD(result[1].__r_.__value_.__l.__data_);
  if (data_low >= 1)
  {
    v3 = (result[1].__r_.__value_.__l.__size_ + 8);
    do
    {
      v4 = *v3++;
      result = sub_170BD80(v4);
      --data_low;
    }

    while (data_low);
    LODWORD(v1[1].__r_.__value_.__l.__data_) = 0;
  }

  v6 = v1->__r_.__value_.__s.__data_[8];
  p_size = &v1->__r_.__value_.__l.__size_;
  if (v6)
  {

    return sub_1957EA8(p_size);
  }

  return result;
}

uint64_t *sub_1708328(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t *sub_1708338(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_1708348(uint64_t a1, char *a2, int32x2_t *a3)
{
  v39 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v39, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v39 + 1;
    v7 = *v39;
    if (*v39 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v39, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v39 + 2;
      }
    }

    v39 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 3)
    {
      if (v10 == 1)
      {
        if (v7 == 10)
        {
          *(a1 + 16) |= 1u;
          v22 = *(a1 + 24);
          if (!v22)
          {
            v23 = *(a1 + 8);
            v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
            if (v23)
            {
              v24 = *v24;
            }

            sub_1728AD8(v24);
            v22 = v25;
            *(a1 + 24) = v25;
            v6 = v39;
          }

          v14 = sub_2236CB4(a3, v22, v6);
          goto LABEL_68;
        }
      }

      else if (v10 == 2)
      {
        if (v7 == 18)
        {
          *(a1 + 16) |= 2u;
          v32 = *(a1 + 32);
          if (!v32)
          {
            v33 = *(a1 + 8);
            v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
            if (v33)
            {
              v34 = *v34;
            }

            v32 = sub_17347F0(v34);
            *(a1 + 32) = v32;
            v6 = v39;
          }

          v14 = sub_2236D44(a3, v32, v6);
          goto LABEL_68;
        }
      }

      else if (v10 == 3 && v7 == 26)
      {
        *(a1 + 16) |= 4u;
        v16 = *(a1 + 40);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_1735310(v18);
          *(a1 + 40) = v16;
          v6 = v39;
        }

        v14 = sub_2236DD4(a3, v16, v6);
        goto LABEL_68;
      }
    }

    else if (v7 >> 3 > 5)
    {
      if (v10 == 6)
      {
        if (v7 == 50)
        {
          *(a1 + 16) |= 0x20u;
          v29 = *(a1 + 64);
          if (!v29)
          {
            v30 = *(a1 + 8);
            v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
            if (v30)
            {
              v31 = *v31;
            }

            v29 = sub_172860C(v31);
            *(a1 + 64) = v29;
            v6 = v39;
          }

          v14 = sub_2236F84(a3, v29, v6);
          goto LABEL_68;
        }
      }

      else if (v10 == 7 && v7 == 58)
      {
        *(a1 + 16) |= 0x40u;
        v19 = *(a1 + 72);
        if (!v19)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v19 = sub_1728684(v21);
          *(a1 + 72) = v19;
          v6 = v39;
        }

        v14 = sub_2237018(a3, v19, v6);
        goto LABEL_68;
      }
    }

    else if (v10 == 4)
    {
      if (v7 == 34)
      {
        *(a1 + 16) |= 8u;
        v26 = *(a1 + 48);
        if (!v26)
        {
          v27 = *(a1 + 8);
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
          if (v27)
          {
            v28 = *v28;
          }

          v26 = sub_172882C(v28);
          *(a1 + 48) = v26;
          v6 = v39;
        }

        v14 = sub_2236E64(a3, v26, v6);
        goto LABEL_68;
      }
    }

    else if (v10 == 5 && v7 == 42)
    {
      *(a1 + 16) |= 0x10u;
      v11 = *(a1 + 56);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_173C87C(v13);
        *(a1 + 56) = v11;
        v6 = v39;
      }

      v14 = sub_2236EF4(a3, v11, v6);
      goto LABEL_68;
    }

    if (v7)
    {
      v35 = (v7 & 7) == 4;
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v39;
      }

      return 0;
    }

    v36 = *(a1 + 8);
    if (v36)
    {
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v37 = sub_11F1920((a1 + 8));
      v6 = v39;
    }

    v14 = sub_1952690(v7, v37, v6, a3);
LABEL_68:
    v39 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v39;
}

char *sub_17086B8(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_170DA5C(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
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

  v10 = *(a1 + 32);
  *v4 = 18;
  v11 = *(v10 + 40);
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v12 = sub_19575D0(v11, v4 + 1);
  }

  else
  {
    v12 = v4 + 2;
  }

  v4 = sub_172AD7C(v10, v12, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 40);
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

  v4 = sub_1734460(v13, v15, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_27:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v16 = *(a1 + 48);
  *v4 = 34;
  v17 = *(v16 + 40);
  v4[1] = v17;
  if (v17 > 0x7F)
  {
    v18 = sub_19575D0(v17, v4 + 1);
  }

  else
  {
    v18 = v4 + 2;
  }

  v4 = sub_170BA6C(v16, v18, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_33:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v19 = *(a1 + 56);
  *v4 = 42;
  v20 = *(v19 + 40);
  v4[1] = v20;
  if (v20 > 0x7F)
  {
    v21 = sub_19575D0(v20, v4 + 1);
  }

  else
  {
    v21 = v4 + 2;
  }

  v4 = sub_1739BD8(v19, v21, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_45;
  }

LABEL_39:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v22 = *(a1 + 64);
  *v4 = 50;
  v23 = *(v22 + 16);
  v4[1] = v23;
  if (v23 > 0x7F)
  {
    v24 = sub_19575D0(v23, v4 + 1);
  }

  else
  {
    v24 = v4 + 2;
  }

  v4 = sub_170932C(v22, v24, a3);
  if ((v6 & 0x40) != 0)
  {
LABEL_45:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v25 = *(a1 + 72);
    *v4 = 58;
    v26 = *(v25 + 16);
    v4[1] = v26;
    if (v26 > 0x7F)
    {
      v27 = sub_19575D0(v26, v4 + 1);
    }

    else
    {
      v27 = v4 + 2;
    }

    v4 = sub_17094CC(v25, v27, a3);
  }

LABEL_51:
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

uint64_t sub_1708A44(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x7F) == 0)
  {
    v3 = 0;
    goto LABEL_23;
  }

  if (v2)
  {
    v4 = sub_170DD60(*(a1 + 24));
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
    v5 = sub_172AEBC(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = sub_1734658(*(a1 + 40));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v7 = sub_170BBAC(*(a1 + 48));
  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = sub_1739D18(*(a1 + 56));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_17:
  v9 = *(a1 + 64);
  v10 = *(v9 + 8);
  if (v10)
  {
    v19 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v19 + 16);
    }
  }

  else
  {
    v11 = 0;
  }

  *(v9 + 16) = v11;
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) != 0)
  {
LABEL_20:
    v12 = *(a1 + 72);
    v13 = *(v12 + 8);
    if (v13)
    {
      v20 = v13 & 0xFFFFFFFFFFFFFFFCLL;
      v14 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v14 < 0)
      {
        v14 = *(v20 + 16);
      }
    }

    else
    {
      v14 = 0;
    }

    *(v12 + 16) = v14;
    v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_23:
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

std::string *sub_1708C58(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_1762FDC(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0x1F) == 0)
  {
    goto LABEL_46;
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

LABEL_22:
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
      v17 = v3[2].__r_.__value_.__r.__words[2];
      if (!v17)
      {
        v18 = v3->__r_.__value_.__l.__size_;
        v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v19 = *v19;
        }

        v17 = sub_1750124(v19);
        v3[2].__r_.__value_.__r.__words[2] = v17;
      }

      if (*(a2 + 64))
      {
        v20 = *(a2 + 64);
      }

      else
      {
        v20 = &off_2780DB0;
      }

      result = sub_170DF2C(v17, v20);
      if ((v9 & 8) == 0)
      {
LABEL_9:
        if ((v9 & 0x10) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_38;
      }

      goto LABEL_30;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_7;
  }

  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
  v13 = v3[2].__r_.__value_.__l.__size_;
  if (!v13)
  {
    v14 = v3->__r_.__value_.__l.__size_;
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    v13 = sub_1728A5C(v15);
    v3[2].__r_.__value_.__l.__size_ = v13;
  }

  if (*(a2 + 56))
  {
    v16 = *(a2 + 56);
  }

  else
  {
    v16 = &off_277F448;
  }

  result = sub_170D3A4(v13, v16);
  if ((v9 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v9 & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_30:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
  data = v3[3].__r_.__value_.__l.__data_;
  if (!data)
  {
    v22 = v3->__r_.__value_.__l.__size_;
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    data = sub_17502BC(v23);
    v3[3].__r_.__value_.__r.__words[0] = data;
  }

  if (*(a2 + 72))
  {
    v24 = *(a2 + 72);
  }

  else
  {
    v24 = &off_2780E30;
  }

  result = sub_170E024(data, v24);
  if ((v9 & 0x10) != 0)
  {
LABEL_38:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
    v25 = v3[3].__r_.__value_.__l.__size_;
    if (!v25)
    {
      v26 = v3->__r_.__value_.__l.__size_;
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_17282F8(v27);
      v3[3].__r_.__value_.__l.__size_ = v25;
    }

    if (*(a2 + 80))
    {
      v28 = *(a2 + 80);
    }

    else
    {
      v28 = &off_277F1E8;
    }

    result = sub_1705B00(v25, v28);
  }

LABEL_46:
  v29 = *(a2 + 8);
  if (v29)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void sub_1708E98(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_17635EC((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
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

void sub_1708F54(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_17635EC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
      *(a1 + 48) = *(a2 + 48);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 52) = *(a2 + 52);
    }

    *(a1 + 16) |= v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_1709040(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_1762F50(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
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

std::string *sub_17090FC(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_17639A0(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
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

BOOL sub_17091B8(uint64_t a1)
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
    v5 = sub_172B7A0(*(*(a1 + 32) + 8 * v2) + 24);
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

BOOL sub_1709214(uint64_t a1)
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
    v5 = sub_172B7A0(*(*(a1 + 40) + 8 * v2) + 24);
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

void *sub_1709280(void *a1)
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

void sub_17092F4(void *a1)
{
  sub_1709280(a1);

  operator delete();
}

char *sub_170932C(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
    return __dst;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v7 < 0)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 8);
  }

  if (*a3 - __dst >= v7)
  {
    v9 = v7;
    memcpy(__dst, v8, v7);
    __dst += v9;
    return __dst;
  }

  return sub_1957130(a3, v8, v7, __dst);
}

uint64_t sub_17093C0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v4 = v1 & 0xFFFFFFFFFFFFFFFCLL;
    v2 = *((v1 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v2 < 0)
    {
      v2 = *(v4 + 16);
    }
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 16) = v2;
  return v2;
}

std::string *sub_17093EC(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_1709420(void *a1)
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

void sub_1709494(void *a1)
{
  sub_1709420(a1);

  operator delete();
}

char *sub_17094CC(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
    return __dst;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v7 < 0)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 8);
  }

  if (*a3 - __dst >= v7)
  {
    v9 = v7;
    memcpy(__dst, v8, v7);
    __dst += v9;
    return __dst;
  }

  return sub_1957130(a3, v8, v7, __dst);
}

uint64_t sub_1709560(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v4 = v1 & 0xFFFFFFFFFFFFFFFCLL;
    v2 = *((v1 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v2 < 0)
    {
      v2 = *(v4 + 16);
    }
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 16) = v2;
  return v2;
}

std::string *sub_170958C(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_17095C0(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_1747E8C(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 16);
  if ((v6 & 7) != 0)
  {
    if ((v6 & 1) == 0)
    {
      if ((v6 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v8 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v8 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
        if ((v6 & 4) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
        if ((v6 & 4) == 0)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_18;
    }

    v7 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_21;
    }

LABEL_18:
    v9 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_21:
  v11 = *(a1 + 8);
  v10 = a1 + 8;
  *(v10 + 8) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

void *sub_17096EC(void *a1)
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

  sub_1709770(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1709770(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = (a1 + 24);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 32);
  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_277F368)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      sub_1710E6C(v5);
      operator delete();
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      sub_170EEE4(v6);
      operator delete();
    }

    v7 = *(a1 + 56);
    if (v7)
    {
      sub_170E134(v7);
      operator delete();
    }

    result = *(a1 + 64);
    if (result)
    {
      sub_1748B68(result);

      operator delete();
    }
  }

  return result;
}

void sub_1709868(void *a1)
{
  sub_17096EC(a1);

  operator delete();
}

uint64_t sub_17098A0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    result = sub_17111AC(*(result + 24));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_1711254(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = sub_171134C(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = sub_17113CC(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_24:
    result = sub_17114B0(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_23:
  result = sub_171143C(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_25:
  result = sub_171154C(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = sub_17115C0(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_39;
  }

  if ((v2 & 0x100) != 0)
  {
    result = sub_16FA2D4(*(v1 + 88));
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = sub_1710D18(*(v1 + 96));
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = sub_1711630(*(v1 + 104));
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = sub_17116A0(*(v1 + 112));
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_34;
    }

LABEL_32:
    v3 = *(v1 + 128);
    v4 = *(v3 + 8);
    result = v3 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v4)
    {
      result = sub_1957EA8(result);
    }

    goto LABEL_34;
  }

LABEL_31:
  result = sub_1711720(*(v1 + 120));
  if ((v2 & 0x2000) != 0)
  {
    goto LABEL_32;
  }

LABEL_34:
  if ((v2 & 0x4000) != 0)
  {
    result = sub_17117A0(*(v1 + 136));
  }

  if ((v2 & 0x8000) != 0)
  {
    v5 = *(v1 + 144);
    v6 = *(v5 + 8);
    result = v5 + 8;
    if (v6)
    {
      result = sub_1957EA8(result);
    }
  }

LABEL_39:
  if ((v2 & 0xF0000) == 0)
  {
    goto LABEL_45;
  }

  if ((v2 & 0x10000) != 0)
  {
    result = sub_1710DB4(*(v1 + 152));
    if ((v2 & 0x20000) == 0)
    {
LABEL_42:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_51;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_42;
  }

  result = sub_1710E10(*(v1 + 160));
  if ((v2 & 0x40000) == 0)
  {
LABEL_43:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_51:
  result = sub_1711820(*(v1 + 168));
  if ((v2 & 0x80000) != 0)
  {
LABEL_44:
    result = sub_1711864(*(v1 + 176));
  }

LABEL_45:
  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_1709A58(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1368A08(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  *(v1 + 48) = 0;
  v5 = *(v1 + 72);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 80) + 8);
    do
    {
      v7 = *v6++;
      result = sub_1364010(v7);
      --v5;
    }

    while (v5);
    *(v1 + 72) = 0;
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x7F) == 0)
  {
    goto LABEL_18;
  }

  if (v8)
  {
    result = sub_13592D0(*(v1 + 88));
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

  result = sub_135D104(*(v1 + 96));
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
  result = sub_135D254(*(v1 + 104));
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_28:
    result = sub_170F160(*(v1 + 120));
    if ((v8 & 0x20) == 0)
    {
LABEL_16:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_27:
  result = sub_170F0E4(*(v1 + 112));
  if ((v8 & 0x10) != 0)
  {
    goto LABEL_28;
  }

LABEL_15:
  if ((v8 & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_29:
  result = sub_13F1C38(*(v1 + 128));
  if ((v8 & 0x40) != 0)
  {
LABEL_17:
    result = sub_170E77C(*(v1 + 136));
  }

LABEL_18:
  *(v1 + 144) = 0;
  if ((v8 & 0xF00) != 0)
  {
    *(v1 + 157) = 0;
    *(v1 + 152) = 0;
    *(v1 + 168) = -1;
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

uint64_t sub_1709B9C(uint64_t a1)
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

uint64_t sub_1709C20(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v38 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v38, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v38 + 1);
    v7 = **v38;
    if (**v38 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v38, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v38 + 2);
      }
    }

    *v38 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 3)
    {
      if (v10 == 1)
      {
        if (v7 != 10)
        {
          goto LABEL_59;
        }

        *(a1 + 16) |= 1u;
        v23 = *(a1 + 8);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        v25 = (a1 + 24);
LABEL_51:
        v30 = sub_194DB04(v25, v24);
        v14 = sub_1958890(v30, *v38, a3);
        goto LABEL_66;
      }

      if (v10 == 2)
      {
        if (v7 == 16)
        {
          v32 = v6 + 1;
          v31 = *v6;
          if ((v31 & 0x8000000000000000) == 0)
          {
            goto LABEL_56;
          }

          v33 = *v32;
          v31 = (v33 << 7) + v31 - 128;
          if (v33 < 0)
          {
            *v38 = sub_19587DC(v6, v31);
            if (!*v38)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v32 = v6 + 2;
LABEL_56:
            *v38 = v32;
          }

          if (v31 > 0x15)
          {
            sub_12E8418();
          }

          else
          {
            *(a1 + 16) |= 0x40u;
            *(a1 + 72) = v31;
          }

          continue;
        }

LABEL_59:
        if (v7)
        {
          v34 = (v7 & 7) == 4;
        }

        else
        {
          v34 = 1;
        }

        if (v34)
        {
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return *v38;
          }

LABEL_75:
          *v38 = 0;
          return *v38;
        }

        v35 = *(a1 + 8);
        if (v35)
        {
          v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v36 = sub_11F1920((a1 + 8));
          v6 = *v38;
        }

        v14 = sub_1952690(v7, v36, v6, a3);
        goto LABEL_66;
      }

      if (v10 != 3 || v7 != 26)
      {
        goto LABEL_59;
      }

      *(a1 + 16) |= 4u;
      v16 = *(a1 + 40);
      if (!v16)
      {
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        sub_1728EB0(v18);
        v16 = v19;
        *(a1 + 40) = v19;
        v6 = *v38;
      }

      v14 = sub_2237214(a3, v16, v6);
    }

    else if (v7 >> 3 > 5)
    {
      if (v10 == 6)
      {
        if (v7 != 50)
        {
          goto LABEL_59;
        }

        *(a1 + 16) |= 2u;
        v29 = *(a1 + 8);
        v24 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v24 = *v24;
        }

        v25 = (a1 + 32);
        goto LABEL_51;
      }

      if (v10 != 7 || v7 != 58)
      {
        goto LABEL_59;
      }

      *(a1 + 16) |= 0x20u;
      v20 = *(a1 + 64);
      if (!v20)
      {
        v21 = *(a1 + 8);
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        v20 = sub_174A1E4(v22);
        *(a1 + 64) = v20;
        v6 = *v38;
      }

      v14 = sub_22058D0(a3, v20, v6);
    }

    else if (v10 == 4)
    {
      if (v7 != 34)
      {
        goto LABEL_59;
      }

      *(a1 + 16) |= 8u;
      v26 = *(a1 + 48);
      if (!v26)
      {
        v27 = *(a1 + 8);
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v28 = *v28;
        }

        v26 = sub_1728CD0(v28);
        *(a1 + 48) = v26;
        v6 = *v38;
      }

      v14 = sub_22372A4(a3, v26, v6);
    }

    else
    {
      if (v10 != 5 || v7 != 42)
      {
        goto LABEL_59;
      }

      *(a1 + 16) |= 0x10u;
      v11 = *(a1 + 56);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_1728B88(v13);
        *(a1 + 56) = v11;
        v6 = *v38;
      }

      v14 = sub_2237334(a3, v11, v6);
    }

LABEL_66:
    *v38 = v14;
    if (!v14)
    {
      goto LABEL_75;
    }
  }

  return *v38;
}

char *sub_1709F8C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 72);
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

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 40);
    *v7 = 26;
    v13 = *(v12 + 20);
    v7[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, v7 + 1);
    }

    else
    {
      v14 = v7 + 2;
    }

    v7 = sub_1712060(v12, v14, a3);
    if ((v6 & 8) == 0)
    {
LABEL_14:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_14;
  }

  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v15 = *(a1 + 48);
  *v7 = 34;
  v16 = *(v15 + 20);
  v7[1] = v16;
  if (v16 > 0x7F)
  {
    v17 = sub_19575D0(v16, v7 + 1);
  }

  else
  {
    v17 = v7 + 2;
  }

  v7 = sub_170F9C0(v15, v17, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_15:
    if ((v6 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_30:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v18 = *(a1 + 56);
  *v7 = 42;
  v19 = *(v18 + 20);
  v7[1] = v19;
  if (v19 > 0x7F)
  {
    v20 = sub_19575D0(v19, v7 + 1);
  }

  else
  {
    v20 = v7 + 2;
  }

  v7 = sub_170E458(v18, v20, a3);
  if ((v6 & 2) == 0)
  {
LABEL_16:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_37;
  }

LABEL_36:
  v7 = sub_128AEEC(a3, 6, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v7);
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_43;
  }

LABEL_37:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v21 = *(a1 + 64);
  *v7 = 58;
  v22 = *(v21 + 20);
  v7[1] = v22;
  if (v22 > 0x7F)
  {
    v23 = sub_19575D0(v22, v7 + 1);
  }

  else
  {
    v23 = v7 + 2;
  }

  v7 = sub_1748FD8(v21, v23, a3);
LABEL_43:
  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v27)
  {
    v29 = v27;
    memcpy(v7, v28, v27);
    v7 += v29;
    return v7;
  }

  return sub_1957130(a3, v28, v27, v7);
}

uint64_t sub_170A2A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x7F) == 0)
  {
    v3 = 0;
    goto LABEL_26;
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
    v10 = sub_1712934(*(a1 + 40));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v11 = sub_171010C(*(a1 + 48));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = sub_170E5D0(*(a1 + 56));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = sub_1749214(*(a1 + 64));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  v14 = *(a1 + 72);
  if (v14 < 0)
  {
    v15 = 11;
  }

  else
  {
    v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v15;
LABEL_26:
  v16 = *(a1 + 8);
  if (v16)
  {
    v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v3 += v19;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_170A4A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_75;
  }

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

      sub_1729454(v7);
      *(a1 + 24) = v5;
    }

    if (*(a2 + 24))
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = &off_277F968;
    }

    sub_1712E04(v5, v8);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

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

    sub_17294D4(v11);
    *(a1 + 32) = v9;
  }

  if (*(a2 + 32))
  {
    v12 = *(a2 + 32);
  }

  else
  {
    v12 = &off_277F9A8;
  }

  sub_1712FDC(v9, v12);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_27:
  *(a1 + 16) |= 4u;
  v13 = *(a1 + 40);
  if (!v13)
  {
    v14 = *(a1 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    v13 = sub_17296BC(v15);
    *(a1 + 40) = v13;
  }

  if (*(a2 + 40))
  {
    v16 = *(a2 + 40);
  }

  else
  {
    v16 = &off_277FAB0;
  }

  sub_171325C(v13, v16);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_35:
  *(a1 + 16) |= 8u;
  v17 = *(a1 + 48);
  if (!v17)
  {
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    v17 = sub_1729640(v19);
    *(a1 + 48) = v17;
  }

  if (*(a2 + 48))
  {
    v20 = *(a2 + 48);
  }

  else
  {
    v20 = &off_277FA88;
  }

  sub_1713360(v17, v20);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_43:
  *(a1 + 16) |= 0x10u;
  v21 = *(a1 + 56);
  if (!v21)
  {
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v21 = sub_1729850(v23);
    *(a1 + 56) = v21;
  }

  if (*(a2 + 56))
  {
    v24 = *(a2 + 56);
  }

  else
  {
    v24 = &off_277FB30;
  }

  sub_1713464(v21, v24);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_59;
  }

LABEL_51:
  *(a1 + 16) |= 0x20u;
  v25 = *(a1 + 64);
  if (!v25)
  {
    v26 = *(a1 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    sub_1729A54(v27);
    *(a1 + 64) = v25;
  }

  if (*(a2 + 64))
  {
    v28 = *(a2 + 64);
  }

  else
  {
    v28 = &off_277FC78;
  }

  sub_171358C(v25, v28);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_67;
  }

LABEL_59:
  *(a1 + 16) |= 0x40u;
  v29 = *(a1 + 72);
  if (!v29)
  {
    v30 = *(a1 + 8);
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v31 = *v31;
    }

    v29 = sub_1729B4C(v31);
    *(a1 + 72) = v29;
  }

  if (*(a2 + 72))
  {
    v32 = *(a2 + 72);
  }

  else
  {
    v32 = &off_277FCD8;
  }

  sub_1713754(v29, v32);
  if ((v4 & 0x80) != 0)
  {
LABEL_67:
    *(a1 + 16) |= 0x80u;
    v33 = *(a1 + 80);
    if (!v33)
    {
      v34 = *(a1 + 8);
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      if (v34)
      {
        v35 = *v35;
      }

      v33 = sub_1729BCC(v35);
      *(a1 + 80) = v33;
    }

    if (*(a2 + 80))
    {
      v36 = *(a2 + 80);
    }

    else
    {
      v36 = &off_277FD08;
    }

    sub_171387C(v33, v36);
  }

LABEL_75:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_149;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v37 = *(a1 + 88);
    if (!v37)
    {
      v38 = *(a1 + 8);
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
      if (v38)
      {
        v39 = *v39;
      }

      sub_16FEEA0(v39);
      *(a1 + 88) = v37;
    }

    if (*(a2 + 88))
    {
      v40 = *(a2 + 88);
    }

    else
    {
      v40 = &off_277EDB8;
    }

    sub_16FB084(v37, v40);
    if ((v4 & 0x200) == 0)
    {
LABEL_78:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_101;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_78;
  }

  *(a1 + 16) |= 0x200u;
  v41 = *(a1 + 96);
  if (!v41)
  {
    v42 = *(a1 + 8);
    v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
    if (v42)
    {
      v43 = *v43;
    }

    sub_1738E68(v43);
    *(a1 + 96) = v41;
  }

  if (*(a2 + 96))
  {
    v44 = *(a2 + 96);
  }

  else
  {
    v44 = &off_2780410;
  }

  sub_1713980(v41, v44);
  if ((v4 & 0x400) == 0)
  {
LABEL_79:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_109;
  }

LABEL_101:
  *(a1 + 16) |= 0x400u;
  v45 = *(a1 + 104);
  if (!v45)
  {
    v46 = *(a1 + 8);
    v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
    if (v46)
    {
      v47 = *v47;
    }

    v45 = sub_1729FB0(v47);
    *(a1 + 104) = v45;
  }

  if (*(a2 + 104))
  {
    v48 = *(a2 + 104);
  }

  else
  {
    v48 = &off_277FEA8;
  }

  sub_1713B48(v45, v48);
  if ((v4 & 0x800) == 0)
  {
LABEL_80:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_117;
  }

LABEL_109:
  *(a1 + 16) |= 0x800u;
  v49 = *(a1 + 112);
  if (!v49)
  {
    v50 = *(a1 + 8);
    v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
    if (v50)
    {
      v51 = *v51;
    }

    v49 = sub_1729E08(v51);
    *(a1 + 112) = v49;
  }

  if (*(a2 + 112))
  {
    v52 = *(a2 + 112);
  }

  else
  {
    v52 = &off_277FE00;
  }

  sub_1713C4C(v49, v52);
  if ((v4 & 0x1000) == 0)
  {
LABEL_81:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_125;
  }

LABEL_117:
  *(a1 + 16) |= 0x1000u;
  v53 = *(a1 + 120);
  if (!v53)
  {
    v54 = *(a1 + 8);
    v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
    if (v54)
    {
      v55 = *v55;
    }

    v53 = sub_172A13C(v55);
    *(a1 + 120) = v53;
  }

  if (*(a2 + 120))
  {
    v56 = *(a2 + 120);
  }

  else
  {
    v56 = &off_277FF30;
  }

  sub_1713D50(v53, v56);
  if ((v4 & 0x2000) == 0)
  {
LABEL_82:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_133;
  }

LABEL_125:
  *(a1 + 16) |= 0x2000u;
  v57 = *(a1 + 128);
  if (!v57)
  {
    v58 = *(a1 + 8);
    v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
    if (v58)
    {
      v59 = *v59;
    }

    v57 = sub_172A1D8(v59);
    *(a1 + 128) = v57;
  }

  if (*(a2 + 128))
  {
    v60 = *(a2 + 128);
  }

  else
  {
    v60 = &off_277FF68;
  }

  sub_140C624(v57, v60);
  if ((v4 & 0x4000) == 0)
  {
LABEL_83:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_141;
  }

LABEL_133:
  *(a1 + 16) |= 0x4000u;
  v61 = *(a1 + 136);
  if (!v61)
  {
    v62 = *(a1 + 8);
    v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
    if (v62)
    {
      v63 = *v63;
    }

    v61 = sub_172A254(v63);
    *(a1 + 136) = v61;
  }

  if (*(a2 + 136))
  {
    v64 = *(a2 + 136);
  }

  else
  {
    v64 = &off_277FF88;
  }

  sub_1713E8C(v61, v64);
  if ((v4 & 0x8000) != 0)
  {
LABEL_141:
    *(a1 + 16) |= 0x8000u;
    v65 = *(a1 + 144);
    if (!v65)
    {
      v66 = *(a1 + 8);
      v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL);
      if (v66)
      {
        v67 = *v67;
      }

      v65 = sub_172A2D0(v67);
      *(a1 + 144) = v65;
    }

    v68 = *(a2 + 144);
    if (!v68)
    {
      v68 = &off_277FFB0;
    }

    v69 = v68[1];
    if (v69)
    {
      sub_1957EF4((v65 + 8), (v69 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

LABEL_149:
  if ((v4 & 0xF0000) == 0)
  {
    goto LABEL_187;
  }

  if ((v4 & 0x10000) != 0)
  {
    *(a1 + 16) |= 0x10000u;
    v70 = *(a1 + 152);
    if (!v70)
    {
      v71 = *(a1 + 8);
      v72 = (v71 & 0xFFFFFFFFFFFFFFFCLL);
      if (v71)
      {
        v72 = *v72;
      }

      v70 = sub_17500AC(v72);
      *(a1 + 152) = v70;
    }

    if (*(a2 + 152))
    {
      v73 = *(a2 + 152);
    }

    else
    {
      v73 = &off_2780D90;
    }

    sub_1713F90(v70, v73);
    if ((v4 & 0x20000) == 0)
    {
LABEL_152:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_153;
      }

      goto LABEL_171;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_152;
  }

  *(a1 + 16) |= 0x20000u;
  v74 = *(a1 + 160);
  if (!v74)
  {
    v75 = *(a1 + 8);
    v76 = (v75 & 0xFFFFFFFFFFFFFFFCLL);
    if (v75)
    {
      v76 = *v76;
    }

    v74 = sub_1750244(v76);
    *(a1 + 160) = v74;
  }

  if (*(a2 + 160))
  {
    v77 = *(a2 + 160);
  }

  else
  {
    v77 = &off_2780E10;
  }

  sub_1714038(v74, v77);
  if ((v4 & 0x40000) == 0)
  {
LABEL_153:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_187;
    }

    goto LABEL_179;
  }

LABEL_171:
  *(a1 + 16) |= 0x40000u;
  v78 = *(a1 + 168);
  if (!v78)
  {
    v79 = *(a1 + 8);
    v80 = (v79 & 0xFFFFFFFFFFFFFFFCLL);
    if (v79)
    {
      v80 = *v80;
    }

    v78 = sub_172A348(v80);
    *(a1 + 168) = v78;
  }

  if (*(a2 + 168))
  {
    v81 = *(a2 + 168);
  }

  else
  {
    v81 = &off_277FFC8;
  }

  sub_132DE2C(v78, v81);
  if ((v4 & 0x80000) != 0)
  {
LABEL_179:
    *(a1 + 16) |= 0x80000u;
    v82 = *(a1 + 176);
    if (!v82)
    {
      v83 = *(a1 + 8);
      v84 = (v83 & 0xFFFFFFFFFFFFFFFCLL);
      if (v83)
      {
        v84 = *v84;
      }

      v82 = sub_172A3CC(v84);
      *(a1 + 176) = v82;
    }

    if (*(a2 + 176))
    {
      v85 = *(a2 + 176);
    }

    else
    {
      v85 = &off_277FFE8;
    }

    sub_132DE2C(v82, v85);
  }

LABEL_187:
  v86 = *(a2 + 8);
  if (v86)
  {

    sub_1957EF4((a1 + 8), (v86 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_170AB78(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B3F60((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a1 + 48);
    sub_1958E5C((a1 + 48), v10 + v9);
    v11 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy((v11 + 4 * v10), *(a2 + 56), 4 * *(a2 + 48));
  }

  v12 = *(a2 + 72);
  if (v12)
  {
    v13 = *(a2 + 80);
    v14 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_13B4104((a1 + 64), v14, (v13 + 8), v12, **(a1 + 80) - *(a1 + 72));
    v15 = *(a1 + 72) + v12;
    *(a1 + 72) = v15;
    v16 = *(a1 + 80);
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  v17 = *(a2 + 16);
  if (v17)
  {
    if (v17)
    {
      *(a1 + 16) |= 1u;
      v19 = *(a1 + 88);
      if (!v19)
      {
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_1379E50(v21);
        *(a1 + 88) = v19;
      }

      if (*(a2 + 88))
      {
        v22 = *(a2 + 88);
      }

      else
      {
        v22 = &off_276C890;
      }

      sub_135AEA4(v19, v22);
      if ((v17 & 2) == 0)
      {
LABEL_12:
        if ((v17 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_47;
      }
    }

    else if ((v17 & 2) == 0)
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

      v23 = sub_1379A5C(v25);
      *(a1 + 96) = v23;
    }

    if (*(a2 + 96))
    {
      v26 = *(a2 + 96);
    }

    else
    {
      v26 = &off_276C760;
    }

    sub_135F4B0(v23, v26);
    if ((v17 & 4) == 0)
    {
LABEL_13:
      if ((v17 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_55;
    }

LABEL_47:
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

      sub_1379948(v29);
      *(a1 + 104) = v27;
    }

    if (*(a2 + 104))
    {
      v30 = *(a2 + 104);
    }

    else
    {
      v30 = &off_276C718;
    }

    sub_135F6C8(v27, v30);
    if ((v17 & 8) == 0)
    {
LABEL_14:
      if ((v17 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_63;
    }

LABEL_55:
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

      v31 = sub_1728E2C(v33);
      *(a1 + 112) = v31;
    }

    if (*(a2 + 112))
    {
      v34 = *(a2 + 112);
    }

    else
    {
      v34 = &off_277F618;
    }

    sub_12F5A34(v31, v34);
    if ((v17 & 0x10) == 0)
    {
LABEL_15:
      if ((v17 & 0x20) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_71;
    }

LABEL_63:
    *(a1 + 16) |= 0x10u;
    v35 = *(a1 + 120);
    if (!v35)
    {
      v36 = *(a1 + 8);
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
      if (v36)
      {
        v37 = *v37;
      }

      v35 = sub_1728DA8(v37);
      *(a1 + 120) = v35;
    }

    if (*(a2 + 120))
    {
      v38 = *(a2 + 120);
    }

    else
    {
      v38 = &off_277F5F0;
    }

    sub_12F5A34(v35, v38);
    if ((v17 & 0x20) == 0)
    {
LABEL_16:
      if ((v17 & 0x40) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_79;
    }

LABEL_71:
    *(a1 + 16) |= 0x20u;
    v39 = *(a1 + 128);
    if (!v39)
    {
      v40 = *(a1 + 8);
      v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
      if (v40)
      {
        v41 = *v41;
      }

      v39 = sub_13F6354(v41);
      *(a1 + 128) = v39;
    }

    if (*(a2 + 128))
    {
      v42 = *(a2 + 128);
    }

    else
    {
      v42 = &off_276F418;
    }

    sub_13F2B54(v39, v42);
    if ((v17 & 0x40) == 0)
    {
LABEL_17:
      if ((v17 & 0x80) == 0)
      {
LABEL_19:
        *(a1 + 16) |= v17;
        goto LABEL_20;
      }

LABEL_18:
      *(a1 + 144) = *(a2 + 144);
      goto LABEL_19;
    }

LABEL_79:
    *(a1 + 16) |= 0x40u;
    v43 = *(a1 + 136);
    if (!v43)
    {
      v44 = *(a1 + 8);
      v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
      if (v44)
      {
        v45 = *v45;
      }

      v43 = sub_1728C2C(v45);
      *(a1 + 136) = v43;
    }

    if (*(a2 + 136))
    {
      v46 = *(a2 + 136);
    }

    else
    {
      v46 = &off_277F500;
    }

    sub_170EDCC(v43, v46);
    if ((v17 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_20:
  if ((v17 & 0xF00) == 0)
  {
    goto LABEL_27;
  }

  if ((v17 & 0x100) != 0)
  {
    *(a1 + 152) = *(a2 + 152);
    if ((v17 & 0x200) == 0)
    {
LABEL_23:
      if ((v17 & 0x400) == 0)
      {
        goto LABEL_24;
      }

LABEL_90:
      *(a1 + 164) = *(a2 + 164);
      if ((v17 & 0x800) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if ((v17 & 0x200) == 0)
  {
    goto LABEL_23;
  }

  *(a1 + 160) = *(a2 + 160);
  if ((v17 & 0x400) != 0)
  {
    goto LABEL_90;
  }

LABEL_24:
  if ((v17 & 0x800) != 0)
  {
LABEL_25:
    *(a1 + 168) = *(a2 + 168);
  }

LABEL_26:
  *(a1 + 16) |= v17;
LABEL_27:
  v18 = *(a2 + 8);
  if (v18)
  {

    sub_1957EF4((a1 + 8), (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_170AF80(uint64_t a1, uint64_t a2)
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

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1763D4C((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
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
      v15 = *(a2 + 72);
      *(a1 + 16) |= 1u;
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      sub_194EA1C((a1 + 72), (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    v18 = *(a2 + 80);
    *(a1 + 16) |= 2u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    sub_194EA1C((a1 + 80), (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
    if ((v14 & 4) != 0)
    {
LABEL_18:
      v21 = *(a2 + 88);
      *(a1 + 16) |= 4u;
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      sub_194EA1C((a1 + 88), (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
    }
  }

LABEL_21:
  v24 = *(a2 + 8);
  if (v24)
  {

    sub_1957EF4((a1 + 8), (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_170B14C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_17140E0(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_1714140(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    v4 = *(a1 + 40);
    if (*(v4 + 16))
    {
      result = sub_171D3F8(*(v4 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 8) != 0)
  {
    v5 = *(a1 + 48);
    if (*(v5 + 16))
    {
      result = sub_135FB64(*(v5 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x10) != 0)
  {
    result = sub_1714254(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) != 0)
  {
    result = sub_17142A0(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = sub_1714300(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    v6 = *(a1 + 80);
    if (*(v6 + 16))
    {
      result = sub_1722430(*(v6 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x100) != 0)
  {
    result = sub_16FB71C(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200) != 0)
  {
    result = sub_171437C(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400) != 0)
  {
    result = sub_17143C8(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000) != 0)
  {
    v7 = *(a1 + 120);
    if (*(v7 + 16))
    {
      result = sub_17A8EF8(*(v7 + 40));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x4000) == 0)
  {
    return 1;
  }

  result = sub_1714434(*(a1 + 136));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_170B2A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_135B830(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) == 0)
  {
    return 1;
  }

  result = sub_13F2F78(*(a1 + 128));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_170B308(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1762B28(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_170B388(void *a1)
{
  sub_170B308(a1);

  operator delete();
}

char *sub_170B3C0(uint64_t a1, char *a2, int32x2_t *a3)
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
      goto LABEL_12;
    }

    v16 = v7 + 1;
    v15 = *v7;
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v17 = *v16;
    v15 = (v17 << 7) + v15 - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_24:
      v26 = v16;
      *(a1 + 48) = v15 != 0;
      v5 = 1;
      goto LABEL_33;
    }

    v24 = sub_19587DC(v7, v15);
    v26 = v24;
    *(a1 + 48) = v25 != 0;
    v5 = 1;
    if (!v24)
    {
      goto LABEL_40;
    }

LABEL_33:
    if (sub_195ADC0(a3, &v26, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 10)
  {
    v18 = v7 - 1;
    while (1)
    {
      v19 = (v18 + 1);
      v26 = v18 + 1;
      v20 = *(a1 + 40);
      if (v20 && (v21 = *(a1 + 32), v21 < *v20))
      {
        *(a1 + 32) = v21 + 1;
        v22 = *&v20[2 * v21 + 2];
      }

      else
      {
        v23 = sub_16F9F58(*(a1 + 24));
        v22 = sub_19593CC(a1 + 24, v23);
        v19 = v26;
      }

      v18 = sub_2236204(a3, v22, v19);
      v26 = v18;
      if (!v18)
      {
        goto LABEL_40;
      }

      if (*a3 <= v18 || *v18 != 10)
      {
        goto LABEL_33;
      }
    }
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
      v7 = v26;
    }

    v26 = sub_1952690(v8, v14, v7, a3);
    if (!v26)
    {
      goto LABEL_40;
    }

    goto LABEL_33;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_40:
  v26 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v26;
}

char *sub_170B5E8(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_16F8384(v8, v10, a3);
    }
  }

  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v11 = *(a1 + 48);
    *__dst = 16;
    __dst[1] = v11;
    __dst += 2;
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return __dst;
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

  if (*a3 - __dst >= v15)
  {
    v17 = v15;
    memcpy(__dst, v16, v15);
    __dst += v17;
    return __dst;
  }

  return sub_1957130(a3, v16, v15, __dst);
}

uint64_t sub_170B764(uint64_t a1)
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
      v7 = sub_16F8644(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  result = v2 + 2 * (*(a1 + 16) & 1);
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

void *sub_170B824(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1762BAC(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_170B8A4(void *a1)
{
  sub_170B824(a1);

  operator delete();
}

char *sub_170B8DC(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_17288CC(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_22373C4(a3, v16, v13);
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

char *sub_170BA6C(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_170C0C4(v8, v10, a3);
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

uint64_t sub_170BBAC(uint64_t a1)
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
      v7 = sub_170C1FC(v6);
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

uint64_t sub_170BC6C(uint64_t a1)
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

  if (*(a1 + 48))
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

void sub_170BD48(uint64_t a1)
{
  sub_170BC6C(a1);

  operator delete();
}

std::string *sub_170BD80(std::string *result)
{
  v1 = result;
  v2 = result->__r_.__value_.__r.__words[2];
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_20;
  }

  if (v2)
  {
    v3 = result[1].__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_11:
  v4 = result[1].__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_15;
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  *v4 = 0;
  *(v4 + 23) = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  v5 = result[1].__r_.__value_.__r.__words[2] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 8) != 0)
  {
LABEL_19:
    result = sub_194EC40(result + 2, &off_2780008);
  }

LABEL_20:
  v7 = v1->__r_.__value_.__s.__data_[8];
  p_size = &v1->__r_.__value_.__l.__size_;
  *(p_size + 2) = 0;
  if (v7)
  {

    return sub_1957EA8(p_size);
  }

  return result;
}

uint64_t sub_170BEA0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v24 = a2;
  if (sub_195ADC0(a3, v24, a3[11].i32[1]))
  {
    return *v24;
  }

  while (1)
  {
    v6 = (*v24 + 1);
    v7 = **v24;
    if (**v24 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v24, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v24 + 2);
      }
    }

    *v24 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 != 3)
      {
        if (v10 != 4 || v7 != 34)
        {
          goto LABEL_36;
        }

        *(a1 + 16) |= 8u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = sub_194EAD4((a1 + 48), &off_2780008, v16);
LABEL_32:
        v20 = sub_1958890(v17, *v24, a3);
        goto LABEL_33;
      }

      if (v7 != 26)
      {
        goto LABEL_36;
      }

      *(a1 + 16) |= 4u;
      v19 = *(a1 + 8);
      v13 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v13 = *v13;
      }

      v14 = (a1 + 40);
LABEL_31:
      v17 = sub_194DB04(v14, v13);
      goto LABEL_32;
    }

    if (v10 == 1)
    {
      if (v7 != 10)
      {
        goto LABEL_36;
      }

      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v13 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v13 = *v13;
      }

      v14 = (a1 + 24);
      goto LABEL_31;
    }

    if (v10 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 2u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v14 = (a1 + 32);
      goto LABEL_31;
    }

LABEL_36:
    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v22 = *(a1 + 8);
    if (v22)
    {
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v23 = sub_11F1920((a1 + 8));
      v6 = *v24;
    }

    v20 = sub_1952690(v7, v23, v6, a3);
LABEL_33:
    *v24 = v20;
    if (!v20)
    {
      goto LABEL_46;
    }

    if (sub_195ADC0(a3, v24, a3[11].i32[1]))
    {
      return *v24;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v24;
  }

LABEL_46:
  *v24 = 0;
  return *v24;
}

char *sub_170C0C4(uint64_t a1, char *__dst, void *a3)
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
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  v4 = sub_128AEEC(a3, 3, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) != 0)
  {
LABEL_5:
    v4 = sub_128AEEC(a3, 4, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_6:
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

uint64_t sub_170C1FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_17;
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
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v14 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  v16 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v16 = v15;
  }

  v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
  v12 = *(a1 + 8);
  if (v12)
  {
    v17 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v2 += v18;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_170C360(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0xF) == 0)
  {
    goto LABEL_19;
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
        goto LABEL_5;
      }

      goto LABEL_13;
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
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

LABEL_13:
  v11 = *(a2 + 40);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
  v12 = v3->__r_.__value_.__l.__size_;
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  result = sub_194EA1C(&v3[1].__r_.__value_.__r.__words[2], (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
  if ((v4 & 8) != 0)
  {
LABEL_16:
    v14 = *(a2 + 48);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    v15 = v3->__r_.__value_.__l.__size_;
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    result = sub_194EA44(&v3[2], (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
  }

LABEL_19:
  v17 = *(a2 + 8);
  if (v17)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_170C4C4(uint64_t a1)
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

void sub_170C57C(uint64_t a1)
{
  sub_170C4C4(a1);

  operator delete();
}

uint64_t sub_170C5B4(uint64_t a1)
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

uint64_t sub_170C630(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_170C7B0(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_170C898(uint64_t a1)
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

uint64_t sub_170C984(uint64_t a1)
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

void sub_170CA3C(uint64_t a1)
{
  sub_170C984(a1);

  operator delete();
}

uint64_t sub_170CA74(uint64_t a1)
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

uint64_t sub_170CAF0(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_170CC70(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_170CD58(uint64_t a1)
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

uint64_t sub_170CE44(uint64_t a1)
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

  if (a1 != &off_277F448)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_16E71BC(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_16E71BC(v6);
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

void sub_170CF14(uint64_t a1)
{
  sub_170CE44(a1);

  operator delete();
}

uint64_t sub_170CF4C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_16E72AC(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_16E72AC(*(v1 + 32));
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

char *sub_170CFBC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v21 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v21, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v21 + 1;
    v7 = *v21;
    if (*v21 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v21, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v21 + 2;
      }
    }

    v21 = v6;
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

          v15 = sub_16F5A54(v17);
          *(a1 + 32) = v15;
LABEL_28:
          v6 = v21;
        }

LABEL_29:
        v14 = sub_22002C0(a3, v15, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v15 = *(a1 + 24);
      if (!v15)
      {
        v18 = *(a1 + 8);
        v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v19 = *v19;
        }

        v15 = sub_16F5A54(v19);
        *(a1 + 24) = v15;
        goto LABEL_28;
      }

      goto LABEL_29;
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
        return v21;
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
      v6 = v21;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_30:
    v21 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v21;
}

char *sub_170D158(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_16E74A8(v7, v9, a3);
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

    v4 = sub_16E74A8(v10, v12, a3);
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