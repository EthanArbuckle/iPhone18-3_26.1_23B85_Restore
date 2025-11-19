char *sub_15552A4(uint64_t a1, char *__dst, _DWORD *a3)
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v21 = *(a1 + 36);
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
          LODWORD(v15) = v22 >> 7;
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v25 = *(a1 + 40);
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

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v30 = *(a1 + 44);
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

  v33 = *(a1 + 8);
  if ((v33 & 1) == 0)
  {
    return v29;
  }

  v35 = v33 & 0xFFFFFFFFFFFFFFFCLL;
  v36 = *(v35 + 31);
  if (v36 < 0)
  {
    v37 = *(v35 + 8);
    v36 = *(v35 + 16);
  }

  else
  {
    v37 = (v35 + 8);
  }

  if (*a3 - v29 >= v36)
  {
    v38 = v36;
    memcpy(v29, v37, v36);
    v29 += v38;
    return v29;
  }

  return sub_1957130(a3, v37, v36, v29);
}

uint64_t sub_155566C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) == 0)
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
    if ((v1 & 8) == 0)
    {
LABEL_10:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_10;
  }

  v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) == 0)
  {
LABEL_11:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_20:
  v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x20) != 0)
  {
LABEL_12:
    v2 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  v3 = *(a1 + 8);
  if (v3)
  {
    v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    v2 += v8;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_15557DC(uint64_t a1)
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
  if (a1 != &off_2777240)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_1554778(v6);
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

void sub_1555894(uint64_t a1)
{
  sub_15557DC(a1);

  operator delete();
}

uint64_t sub_15558CC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_1554824(*(result + 24));
  }

  if ((v2 & 0xE) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
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

char *sub_1555938(uint64_t a1, char *a2, int32x2_t *a3)
{
  v25 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v25, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v25 + 1;
    v8 = *v25;
    if (*v25 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v25, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v25 + 2;
      }
    }

    v25 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 == 2 && v8 == 17)
      {
        v14 = *v7;
        v13 = v7 + 8;
        v5 |= 2u;
        *(a1 + 32) = v14;
LABEL_27:
        v25 = v13;
        goto LABEL_36;
      }

      goto LABEL_28;
    }

    if (v8 != 10)
    {
      goto LABEL_28;
    }

    *(a1 + 16) |= 1u;
    v16 = *(a1 + 24);
    if (!v16)
    {
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_155A57C(v18);
      v16 = v19;
      *(a1 + 24) = v19;
      v7 = v25;
    }

    v20 = sub_221E24C(a3, v16, v7);
LABEL_35:
    v25 = v20;
    if (!v20)
    {
      goto LABEL_41;
    }

LABEL_36:
    if (sub_195ADC0(a3, &v25, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 == 25)
    {
      v21 = *v7;
      v13 = v7 + 8;
      v5 |= 4u;
      *(a1 + 40) = v21;
      goto LABEL_27;
    }
  }

  else if (v11 == 4 && v8 == 33)
  {
    v15 = *v7;
    v13 = v7 + 8;
    v5 |= 8u;
    *(a1 + 48) = v15;
    goto LABEL_27;
  }

LABEL_28:
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
      v7 = v25;
    }

    v20 = sub_1952690(v8, v24, v7, a3);
    goto LABEL_35;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_41:
  v25 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v25;
}

char *sub_1555B24(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_1554A54(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
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
  *v4 = 17;
  *(v4 + 1) = v10;
  v4 += 9;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

LABEL_15:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 40);
  *v4 = 25;
  *(v4 + 1) = v11;
  v4 += 9;
  if ((v6 & 8) != 0)
  {
LABEL_18:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v12 = *(a1 + 48);
    *v4 = 33;
    *(v4 + 1) = v12;
    v4 += 9;
  }

LABEL_21:
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

  if (*a3 - v4 >= v16)
  {
    v18 = v16;
    memcpy(v4, v17, v16);
    v4 += v18;
    return v4;
  }

  return sub_1957130(a3, v17, v16, v4);
}

uint64_t sub_1555CF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) != 0)
  {
    if (v2)
    {
      v5 = sub_1554C64(*(a1 + 24));
      v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 8) != 0)
    {
      result = v3 + 9;
    }

    else
    {
      result = v3;
    }
  }

  else
  {
    result = 0;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    result += v8;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_1555DA8(std::string *result, uint64_t a2)
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

        sub_155A57C(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_27771C8;
      }

      result = sub_1554CF0(data, v9);
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
      v3[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_21:
    v3[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
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

void *sub_1555EB8(void *a1)
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

void sub_1555F2C(void *a1)
{
  sub_1555EB8(a1);

  operator delete();
}

uint64_t sub_1555F64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
  }

  if ((v1 & 0x300) != 0)
  {
    *(a1 + 96) = 0;
    *(a1 + 88) = 0;
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

char *sub_1555FA8(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 5)
    {
      if (v8 >> 3 <= 7)
      {
        if (v11 == 6)
        {
          if (v8 == 49)
          {
            v20 = *v7;
            v12 = v7 + 8;
            v5 |= 0x10u;
            *(a1 + 56) = v20;
            goto LABEL_44;
          }
        }

        else if (v11 == 7 && v8 == 57)
        {
          v17 = *v7;
          v12 = v7 + 8;
          v5 |= 0x20u;
          *(a1 + 64) = v17;
          goto LABEL_44;
        }
      }

      else if (v11 == 8)
      {
        if (v8 == 65)
        {
          v22 = *v7;
          v12 = v7 + 8;
          v5 |= 0x40u;
          *(a1 + 72) = v22;
          goto LABEL_44;
        }
      }

      else if (v11 == 9)
      {
        if (v8 == 73)
        {
          v24 = *v7;
          v12 = v7 + 8;
          v5 |= 0x80u;
          *(a1 + 80) = v24;
          goto LABEL_44;
        }
      }

      else if (v11 == 10 && v8 == 81)
      {
        v14 = *v7;
        v12 = v7 + 8;
        v5 |= 0x100u;
        *(a1 + 88) = v14;
        goto LABEL_44;
      }
    }

    else if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 == 8)
        {
          v5 |= 0x200u;
          LODWORD(v18) = *v7;
          if ((v18 & 0x80000000) != 0)
          {
            v18 = (v7[1] << 7) + v18 - 128;
            if (v7[1] < 0)
            {
              v28 = sub_19587DC(v7, v18);
              v30 = v28;
              *(a1 + 96) = v29;
              if (!v28)
              {
                goto LABEL_63;
              }

              goto LABEL_45;
            }

            v19 = v7 + 2;
          }

          else
          {
            v19 = v7 + 1;
          }

          v30 = v19;
          *(a1 + 96) = v18;
          goto LABEL_45;
        }
      }

      else if (v11 == 2 && v8 == 17)
      {
        v16 = *v7;
        v12 = v7 + 8;
        v5 |= 1u;
        *(a1 + 24) = v16;
        goto LABEL_44;
      }
    }

    else if (v11 == 3)
    {
      if (v8 == 25)
      {
        v21 = *v7;
        v12 = v7 + 8;
        v5 |= 2u;
        *(a1 + 32) = v21;
        goto LABEL_44;
      }
    }

    else if (v11 == 4)
    {
      if (v8 == 33)
      {
        v23 = *v7;
        v12 = v7 + 8;
        v5 |= 4u;
        *(a1 + 40) = v23;
        goto LABEL_44;
      }
    }

    else if (v11 == 5 && v8 == 41)
    {
      v13 = *v7;
      v12 = v7 + 8;
      v5 |= 8u;
      *(a1 + 48) = v13;
LABEL_44:
      v30 = v12;
      goto LABEL_45;
    }

    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v26 = *(a1 + 8);
    if (v26)
    {
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v27 = sub_11F1920((a1 + 8));
      v7 = v30;
    }

    v30 = sub_1952690(v8, v27, v7, a3);
    if (!v30)
    {
      goto LABEL_63;
    }

LABEL_45:
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

LABEL_63:
  v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

char *sub_155628C(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x200) != 0)
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

    v11 = *(a1 + 24);
    *v6 = 17;
    *(v6 + 1) = v11;
    v6 += 9;
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
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

  v12 = *(a1 + 32);
  *v6 = 25;
  *(v6 + 1) = v12;
  v6 += 9;
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_26:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v13 = *(a1 + 40);
  *v6 = 33;
  *(v6 + 1) = v13;
  v6 += 9;
  if ((v5 & 8) == 0)
  {
LABEL_14:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_29:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v14 = *(a1 + 48);
  *v6 = 41;
  *(v6 + 1) = v14;
  v6 += 9;
  if ((v5 & 0x10) == 0)
  {
LABEL_15:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_32:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v15 = *(a1 + 56);
  *v6 = 49;
  *(v6 + 1) = v15;
  v6 += 9;
  if ((v5 & 0x20) == 0)
  {
LABEL_16:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_35:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v16 = *(a1 + 64);
  *v6 = 57;
  *(v6 + 1) = v16;
  v6 += 9;
  if ((v5 & 0x40) == 0)
  {
LABEL_17:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_38:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v17 = *(a1 + 72);
  *v6 = 65;
  *(v6 + 1) = v17;
  v6 += 9;
  if ((v5 & 0x80) == 0)
  {
LABEL_18:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

LABEL_41:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v18 = *(a1 + 80);
  *v6 = 73;
  *(v6 + 1) = v18;
  v6 += 9;
  if ((v5 & 0x100) != 0)
  {
LABEL_44:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v19 = *(a1 + 88);
    *v6 = 81;
    *(v6 + 1) = v19;
    v6 += 9;
  }

LABEL_47:
  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v23)
  {
    v25 = v23;
    memcpy(v6, v24, v23);
    v6 += v25;
    return v6;
  }

  return sub_1957130(a3, v24, v23, v6);
}

uint64_t sub_15565D0(uint64_t a1)
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

  if ((v1 & 0x300) != 0)
  {
    if ((v1 & 0x100) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x200) != 0)
    {
      v3 = *(a1 + 96);
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

std::string *sub_15566BC(std::string *result, uint64_t a2)
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

        goto LABEL_22;
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

      goto LABEL_23;
    }

LABEL_22:
    result[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }

LABEL_23:
    result[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

LABEL_24:
    result[2].__r_.__value_.__l.__size_ = *(a2 + 56);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }

LABEL_25:
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

LABEL_26:
    result[3].__r_.__value_.__r.__words[0] = *(a2 + 72);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v2 & 0x300) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      result[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
    }

    if ((v2 & 0x200) != 0)
    {
      LODWORD(result[4].__r_.__value_.__l.__data_) = *(a2 + 96);
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

uint64_t sub_15567B4(uint64_t a1)
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

  if (a1 != &off_27772E0)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      sub_1555EB8(v5);
      operator delete();
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      sub_1554778(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_155688C(uint64_t a1)
{
  sub_15567B4(a1);

  operator delete();
}

uint64_t sub_15568C4(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_1555F64(*(result + 40));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_1554824(*(v1 + 48));
    }
  }

  if ((v2 & 0x1C) != 0)
  {
    *(v1 + 64) = 0;
    *(v1 + 56) = 0;
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

char *sub_1556948(uint64_t a1, char *a2, int32x2_t *a3)
{
  v43 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v43, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v43 + 1;
    v8 = *v43;
    if (*v43 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v43, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v43 + 2;
      }
    }

    v43 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      if (v11 == 1)
      {
        if (v8 == 8)
        {
          v5 |= 4u;
          LODWORD(v21) = *v7;
          if ((v21 & 0x80000000) != 0)
          {
            v21 = (v7[1] << 7) + v21 - 128;
            if (v7[1] < 0)
            {
              v34 = sub_19587DC(v7, v21);
              v43 = v34;
              *(a1 + 56) = v35;
              if (!v34)
              {
                goto LABEL_82;
              }

              goto LABEL_77;
            }

            v22 = v7 + 2;
          }

          else
          {
            v22 = v7 + 1;
          }

          v43 = v22;
          *(a1 + 56) = v21;
          goto LABEL_77;
        }
      }

      else if (v11 == 2)
      {
        if (v8 == 16)
        {
          v5 |= 8u;
          LODWORD(v28) = *v7;
          if ((v28 & 0x80000000) != 0)
          {
            v28 = (v7[1] << 7) + v28 - 128;
            if (v7[1] < 0)
            {
              v38 = sub_19587DC(v7, v28);
              v43 = v38;
              *(a1 + 60) = v39;
              if (!v38)
              {
                goto LABEL_82;
              }

              goto LABEL_77;
            }

            v29 = v7 + 2;
          }

          else
          {
            v29 = v7 + 1;
          }

          v43 = v29;
          *(a1 + 60) = v28;
          goto LABEL_77;
        }
      }

      else if (v11 == 3 && v8 == 24)
      {
        v5 |= 0x10u;
        LODWORD(v13) = *v7;
        if ((v13 & 0x80000000) != 0)
        {
          v13 = (v7[1] << 7) + v13 - 128;
          if (v7[1] < 0)
          {
            v36 = sub_19587DC(v7, v13);
            v43 = v36;
            *(a1 + 64) = v37;
            if (!v36)
            {
              goto LABEL_82;
            }

            goto LABEL_77;
          }

          v14 = v7 + 2;
        }

        else
        {
          v14 = v7 + 1;
        }

        v43 = v14;
        *(a1 + 64) = v13;
        goto LABEL_77;
      }

      goto LABEL_69;
    }

    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_69;
      }

      *(a1 + 16) |= 1u;
      v23 = *(a1 + 40);
      if (!v23)
      {
        v24 = *(a1 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        sub_155A6FC(v25);
        v23 = v26;
        *(a1 + 40) = v26;
        v7 = v43;
      }

      v27 = sub_221E2DC(a3, v23, v7);
      goto LABEL_76;
    }

    if (v11 != 5)
    {
      break;
    }

    if (v8 != 42)
    {
      goto LABEL_69;
    }

    *(a1 + 16) |= 2u;
    v30 = *(a1 + 48);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      sub_155A57C(v32);
      v30 = v33;
      *(a1 + 48) = v33;
      v7 = v43;
    }

    v27 = sub_221E24C(a3, v30, v7);
LABEL_76:
    v43 = v27;
    if (!v27)
    {
      goto LABEL_82;
    }

LABEL_77:
    if (sub_195ADC0(a3, &v43, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 6)
  {
    if (v8 == 48)
    {
      v15 = v7 - 1;
      while (1)
      {
        v43 = v15 + 1;
        v16 = v15[1];
        if (v15[1] < 0)
        {
          v17 = v16 + (v15[2] << 7);
          v16 = v17 - 128;
          if (v15[2] < 0)
          {
            v15 = sub_1958770((v15 + 1), v17 - 128);
            v16 = v18;
          }

          else
          {
            v15 += 3;
          }
        }

        else
        {
          v15 += 2;
        }

        v43 = v15;
        v19 = *(a1 + 24);
        if (v19 == *(a1 + 28))
        {
          v20 = v19 + 1;
          sub_1958E5C((a1 + 24), v19 + 1);
          *(*(a1 + 32) + 4 * v19) = v16;
          v15 = v43;
        }

        else
        {
          *(*(a1 + 32) + 4 * v19) = v16;
          v20 = v19 + 1;
        }

        *(a1 + 24) = v20;
        if (!v15)
        {
          goto LABEL_82;
        }

        if (*a3 <= v15 || *v15 != 48)
        {
          goto LABEL_77;
        }
      }
    }

    if (v8 == 50)
    {
      v27 = sub_1958918((a1 + 24), v7, a3);
      goto LABEL_76;
    }
  }

LABEL_69:
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
      v7 = v43;
    }

    v27 = sub_1952690(v8, v42, v7, a3);
    goto LABEL_76;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_82:
  v43 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v43;
}

char *sub_1556D3C(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 56);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 60);
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

    v16 = *(a1 + 64);
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

  if (v5)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v19 = *(a1 + 40);
    *v15 = 34;
    v20 = *(v19 + 20);
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v21 = sub_19575D0(v20, v15 + 1);
    }

    else
    {
      v21 = v15 + 2;
    }

    v15 = sub_155628C(v19, v21, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v22 = *(a1 + 48);
    *v15 = 42;
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

    v15 = sub_1554A54(v22, v24, a3);
  }

  v25 = *(a1 + 24);
  if (v25 < 1)
  {
    v28 = v15;
  }

  else
  {
    for (i = 0; i != v25; ++i)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v27 = *(*(a1 + 32) + 4 * i);
      *v15 = 48;
      v15[1] = v27;
      if (v27 > 0x7F)
      {
        v15[1] = v27 | 0x80;
        v29 = v27 >> 7;
        v15[2] = v27 >> 7;
        v28 = v15 + 3;
        if (v27 >= 0x4000)
        {
          LOBYTE(v15) = v15[2];
          do
          {
            *(v28 - 1) = v15 | 0x80;
            LODWORD(v15) = v29 >> 7;
            *v28++ = v29 >> 7;
            v30 = v29 >> 14;
            v29 >>= 7;
          }

          while (v30);
        }
      }

      else
      {
        v28 = v15 + 2;
      }

      v15 = v28;
    }
  }

  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return v28;
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

  if (*a3 - v28 >= v34)
  {
    v36 = v34;
    memcpy(v28, v35, v34);
    v28 += v36;
    return v28;
  }

  return sub_1957130(a3, v35, v34, v28);
}

uint64_t sub_15570F0(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 24)) + *(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 0x1F) == 0)
  {
    goto LABEL_22;
  }

  if (v3)
  {
    v4 = sub_15565D0(*(a1 + 40));
    v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  v5 = sub_1554C64(*(a1 + 48));
  v2 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_10:
  v6 = *(a1 + 56);
  if (v6 < 0)
  {
    v7 = 11;
  }

  else
  {
    v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v7;
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

LABEL_14:
  v8 = *(a1 + 60);
  if (v8 < 0)
  {
    v9 = 11;
  }

  else
  {
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v9;
  if ((v3 & 0x10) != 0)
  {
LABEL_18:
    v10 = *(a1 + 64);
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

LABEL_22:
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

std::string *sub_1557270(std::string *result, uint64_t a2)
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
  if ((v8 & 0x1F) != 0)
  {
    if (v8)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v10 = v3[1].__r_.__value_.__r.__words[2];
      if (!v10)
      {
        v11 = v3->__r_.__value_.__l.__size_;
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        sub_155A6FC(v12);
        v3[1].__r_.__value_.__r.__words[2] = v10;
      }

      if (*(a2 + 40))
      {
        v13 = *(a2 + 40);
      }

      else
      {
        v13 = &off_2777278;
      }

      result = sub_15566BC(v10, v13);
      if ((v8 & 2) == 0)
      {
LABEL_6:
        if ((v8 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_31;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    data = v3[2].__r_.__value_.__l.__data_;
    if (!data)
    {
      v15 = v3->__r_.__value_.__l.__size_;
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      sub_155A57C(v16);
      v3[2].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 48))
    {
      v17 = *(a2 + 48);
    }

    else
    {
      v17 = &off_27771C8;
    }

    result = sub_1554CF0(data, v17);
    if ((v8 & 4) == 0)
    {
LABEL_7:
      if ((v8 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_32;
    }

LABEL_31:
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    if ((v8 & 8) == 0)
    {
LABEL_8:
      if ((v8 & 0x10) == 0)
      {
LABEL_10:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v8;
        goto LABEL_11;
      }

LABEL_9:
      LODWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
      goto LABEL_10;
    }

LABEL_32:
    HIDWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1557414(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = off_26EDF18;
  *(a1 + 24) = 0;
  v5 = *(a2 + 16);
  if (v5)
  {
    sub_1958E5C((a1 + 16), v5);
    v6 = *(a1 + 24);
    *(a1 + 16) += *(a2 + 16);
    memcpy(v6, *(a2 + 24), 4 * *(a2 + 16));
  }

  *(a1 + 32) = 0;
  v7 = *(a2 + 8);
  if (v7)
  {
    sub_1957EF4(v4, (v7 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_15574C4(_Unwind_Exception *a1)
{
  sub_1956ABC(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1557504(void *a1)
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

void sub_1557580(void *a1)
{
  sub_1557504(a1);

  operator delete();
}

uint64_t sub_15575B8(uint64_t a1)
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

char *sub_15575CC(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_15577BC(uint64_t a1, char *a2, _DWORD *a3)
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

uint64_t sub_155790C(uint64_t a1)
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

uint64_t sub_155797C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26EDF98;
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
    sub_156E1CC((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v10 = *(a2 + 48);
  if (v10)
  {
    sub_1958E5C((a1 + 48), v10);
    v11 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy(v11, *(a2 + 56), 4 * *(a2 + 48));
  }

  v12 = *(a2 + 8);
  if (v12)
  {
    sub_1957EF4(v4, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  v13 = *(a2 + 16);
  if (v13)
  {
    operator new();
  }

  *(a1 + 64) = 0;
  if ((v13 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 72) = 0;
  if ((v13 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  if ((v13 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 88) = 0;
  if ((v13 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 96) = 0;
  if ((v13 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 104) = 0;
  v14 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v14;
  return a1;
}

uint64_t sub_1557CBC(uint64_t a1)
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

  sub_1557D54(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956ABC(a1 + 48);
  sub_156E148((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_1557D54(uint64_t (***result)()))()
{
  if (result != &off_2777350)
  {
    v1 = result;
    v2 = result[8];
    if (v2)
    {
      sub_1554778(v2);
      operator delete();
    }

    v3 = v1[9];
    if (v3)
    {
      sub_15542AC(v3);
      operator delete();
    }

    v4 = v1[10];
    if (v4)
    {
      sub_1552E98(v4);
      operator delete();
    }

    v5 = v1[11];
    if (v5)
    {
      sub_1554E50(v5);
      operator delete();
    }

    if (v1[12])
    {
      sub_16F3700();
      operator delete();
    }

    result = v1[13];
    if (result)
    {
      sub_1557504(result);

      operator delete();
    }
  }

  return result;
}

void sub_1557E58(uint64_t a1)
{
  sub_1557CBC(a1);

  operator delete();
}

uint64_t sub_1557E90(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15568C4(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  *(v1 + 48) = 0;
  v5 = *(v1 + 16);
  if ((v5 & 0x3F) != 0)
  {
    if (v5)
    {
      result = sub_1554824(*(v1 + 64));
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    result = sub_14F37E0(*(v1 + 72));
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }

LABEL_15:
    result = sub_1552F80(*(v1 + 80));
    if ((v5 & 8) == 0)
    {
LABEL_10:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }

LABEL_16:
    result = sub_1554EFC(*(v1 + 88));
    if ((v5 & 0x10) == 0)
    {
LABEL_11:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

LABEL_17:
    result = sub_16F373C(*(v1 + 96));
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_18:
    v6 = *(v1 + 104);
    v7 = *(v6 + 8);
    result = v6 + 8;
    *(result + 8) = 0;
    if (v7)
    {
      result = sub_1957EA8(result);
    }
  }

LABEL_20:
  if ((v5 & 0xC0) != 0)
  {
    *(v1 + 112) = 0;
    *(v1 + 120) = 0;
  }

  if ((v5 & 0x300) != 0)
  {
    *(v1 + 128) = 0;
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

char *sub_1557FA4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v70 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v70, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v70 + 1;
    v8 = *v70;
    if (*v70 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v70, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v70 + 2;
      }
    }

    v70 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 6)
    {
      if (v8 >> 3 > 9)
      {
        if (v11 == 10)
        {
          if (v8 != 82)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 8u;
          v39 = *(a1 + 88);
          if (!v39)
          {
            v40 = *(a1 + 8);
            v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
            if (v40)
            {
              v41 = *v41;
            }

            sub_155A600(v41);
            v39 = v42;
            *(a1 + 88) = v42;
            v7 = v70;
          }

          v17 = sub_221E48C(a3, v39, v7);
        }

        else if (v11 == 11)
        {
          if (v8 != 90)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 0x10u;
          v56 = *(a1 + 96);
          if (!v56)
          {
            v57 = *(a1 + 8);
            v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
            if (v57)
            {
              v58 = *v58;
            }

            v56 = sub_16F6438(v58);
            *(a1 + 96) = v56;
            v7 = v70;
          }

          v17 = sub_21F9DF8(a3, v56, v7);
        }

        else
        {
          if (v11 != 12 || v8 != 98)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 0x20u;
          v28 = *(a1 + 104);
          if (!v28)
          {
            v29 = *(a1 + 8);
            v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
            if (v29)
            {
              v30 = *v30;
            }

            v28 = sub_155A828(v30);
            *(a1 + 104) = v28;
            v7 = v70;
          }

          v17 = sub_221E51C(a3, v28, v7);
        }
      }

      else
      {
        if (v11 == 7)
        {
          if (v8 != 56)
          {
            goto LABEL_116;
          }

          v5 |= 0x200u;
          v34 = v7 + 1;
          v35 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_66;
          }

          v36 = *v34;
          v35 = v35 + (v36 << 7) - 128;
          if ((v36 & 0x80000000) == 0)
          {
            v34 = v7 + 2;
LABEL_66:
            v70 = v34;
            *(a1 + 132) = v35;
            goto LABEL_124;
          }

          v61 = sub_1958770(v7, v35);
          v70 = v61;
          *(a1 + 132) = v62;
          if (!v61)
          {
            goto LABEL_129;
          }

          goto LABEL_124;
        }

        if (v11 != 8)
        {
          if (v11 == 9)
          {
            if (v8 == 72)
            {
              v18 = v7 - 1;
              while (1)
              {
                v70 = v18 + 1;
                v19 = v18[1];
                if (v18[1] < 0)
                {
                  v20 = v19 + (v18[2] << 7);
                  v19 = v20 - 128;
                  if (v18[2] < 0)
                  {
                    v18 = sub_1958770((v18 + 1), v20 - 128);
                    v19 = v21;
                  }

                  else
                  {
                    v18 += 3;
                  }
                }

                else
                {
                  v18 += 2;
                }

                v70 = v18;
                v22 = *(a1 + 48);
                if (v22 == *(a1 + 52))
                {
                  v23 = v22 + 1;
                  sub_1958E5C((a1 + 48), v22 + 1);
                  *(*(a1 + 56) + 4 * v22) = v19;
                  v18 = v70;
                }

                else
                {
                  *(*(a1 + 56) + 4 * v22) = v19;
                  v23 = v22 + 1;
                }

                *(a1 + 48) = v23;
                if (!v18)
                {
                  goto LABEL_129;
                }

                if (*a3 <= v18 || *v18 != 72)
                {
                  goto LABEL_124;
                }
              }
            }

            if (v8 == 74)
            {
              v17 = sub_1958918((a1 + 48), v7, a3);
              goto LABEL_123;
            }
          }

          goto LABEL_116;
        }

        if (v8 != 66)
        {
          goto LABEL_116;
        }

        *(a1 + 16) |= 4u;
        v49 = *(a1 + 80);
        if (!v49)
        {
          v50 = *(a1 + 8);
          v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
          if (v50)
          {
            v51 = *v51;
          }

          sub_155A444(v51);
          v49 = v52;
          *(a1 + 80) = v52;
          v7 = v70;
        }

        v17 = sub_221E3FC(a3, v49, v7);
      }

LABEL_123:
      v70 = v17;
      if (!v17)
      {
        goto LABEL_129;
      }

      goto LABEL_124;
    }

    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 == 2)
      {
        if (v8 == 18)
        {
          v43 = v7 - 1;
          while (1)
          {
            v44 = (v43 + 1);
            v70 = v43 + 1;
            v45 = *(a1 + 40);
            if (v45 && (v46 = *(a1 + 32), v46 < *v45))
            {
              *(a1 + 32) = v46 + 1;
              v47 = *&v45[2 * v46 + 2];
            }

            else
            {
              v48 = sub_155A784(*(a1 + 24));
              v47 = sub_19593CC(a1 + 24, v48);
              v44 = v70;
            }

            v43 = sub_221E36C(a3, v47, v44);
            v70 = v43;
            if (!v43)
            {
              goto LABEL_129;
            }

            if (*a3 <= v43 || *v43 != 18)
            {
              goto LABEL_124;
            }
          }
        }
      }

      else if (v11 == 3 && v8 == 26)
      {
        *(a1 + 16) |= 1u;
        v13 = *(a1 + 64);
        if (!v13)
        {
          v14 = *(a1 + 8);
          v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          if (v14)
          {
            v15 = *v15;
          }

          sub_155A57C(v15);
          v13 = v16;
          *(a1 + 64) = v16;
          v7 = v70;
        }

        v17 = sub_221E24C(a3, v13, v7);
        goto LABEL_123;
      }

      goto LABEL_116;
    }

    if (v8 != 8)
    {
      goto LABEL_116;
    }

    v5 |= 0x40u;
    v32 = v7 + 1;
    v31 = *v7;
    if ((v31 & 0x8000000000000000) == 0)
    {
      goto LABEL_61;
    }

    v33 = *v32;
    v31 = (v33 << 7) + v31 - 128;
    if ((v33 & 0x80000000) == 0)
    {
      v32 = v7 + 2;
LABEL_61:
      v70 = v32;
      *(a1 + 112) = v31;
      goto LABEL_124;
    }

    v59 = sub_19587DC(v7, v31);
    v70 = v59;
    *(a1 + 112) = v60;
    if (!v59)
    {
      goto LABEL_129;
    }

LABEL_124:
    if (sub_195ADC0(a3, &v70, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 == 32)
    {
      v5 |= 0x100u;
      LODWORD(v37) = *v7;
      if ((v37 & 0x80000000) != 0)
      {
        v37 = (v7[1] << 7) + v37 - 128;
        if (v7[1] < 0)
        {
          v63 = sub_19587DC(v7, v37);
          v70 = v63;
          *(a1 + 128) = v64;
          if (!v63)
          {
            goto LABEL_129;
          }

          goto LABEL_124;
        }

        v38 = v7 + 2;
      }

      else
      {
        v38 = v7 + 1;
      }

      v70 = v38;
      *(a1 + 128) = v37;
      goto LABEL_124;
    }

    goto LABEL_116;
  }

  if (v11 == 5)
  {
    if (v8 != 40)
    {
      goto LABEL_116;
    }

    v5 |= 0x80u;
    v54 = v7 + 1;
    v53 = *v7;
    if ((v53 & 0x8000000000000000) == 0)
    {
      goto LABEL_96;
    }

    v55 = *v54;
    v53 = (v55 << 7) + v53 - 128;
    if ((v55 & 0x80000000) == 0)
    {
      v54 = v7 + 2;
LABEL_96:
      v70 = v54;
      *(a1 + 120) = v53;
      goto LABEL_124;
    }

    v65 = sub_19587DC(v7, v53);
    v70 = v65;
    *(a1 + 120) = v66;
    if (!v65)
    {
      goto LABEL_129;
    }

    goto LABEL_124;
  }

  if (v11 == 6 && v8 == 50)
  {
    *(a1 + 16) |= 2u;
    v24 = *(a1 + 72);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      sub_155A500(v26);
      v24 = v27;
      *(a1 + 72) = v27;
      v7 = v70;
    }

    v17 = sub_22179F8(a3, v24, v7);
    goto LABEL_123;
  }

LABEL_116:
  if (v8)
  {
    v67 = (v8 & 7) == 4;
  }

  else
  {
    v67 = 1;
  }

  if (!v67)
  {
    v68 = *(a1 + 8);
    if (v68)
    {
      v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v69 = sub_11F1920((a1 + 8));
      v7 = v70;
    }

    v17 = sub_1952690(v8, v69, v7, a3);
    goto LABEL_123;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_129:
  v70 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v70;
}

char *sub_15585F8(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 112);
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

      v6 = sub_1556D3C(v13, v15, a3);
    }
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v16 = *(a1 + 64);
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

    v6 = sub_1554A54(v16, v18, a3);
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v20 = *(a1 + 128);
    *v6 = 32;
    v6[1] = v20;
    if (v20 > 0x7F)
    {
      v6[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v6[2] = v20 >> 7;
      v19 = v6 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v19 - 1) = v6 | 0x80;
          v6 = (v21 >> 7);
          *v19++ = v21 >> 7;
          v22 = v21 >> 14;
          v21 >>= 7;
        }

        while (v22);
      }
    }

    else
    {
      v19 = v6 + 2;
    }
  }

  else
  {
    v19 = v6;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v24 = *(a1 + 120);
    *v19 = 40;
    v19[1] = v24;
    if (v24 > 0x7F)
    {
      v19[1] = v24 | 0x80;
      v25 = v24 >> 7;
      v19[2] = v24 >> 7;
      v23 = v19 + 3;
      if (v24 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v23 - 1) = v19 | 0x80;
          v19 = (v25 >> 7);
          *v23++ = v25 >> 7;
          v26 = v25 >> 14;
          v25 >>= 7;
        }

        while (v26);
      }
    }

    else
    {
      v23 = v19 + 2;
    }
  }

  else
  {
    v23 = v19;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v27 = *(a1 + 72);
    *v23 = 50;
    v28 = *(v27 + 20);
    v23[1] = v28;
    if (v28 > 0x7F)
    {
      v29 = sub_19575D0(v28, v23 + 1);
    }

    else
    {
      v29 = v23 + 2;
    }

    v23 = sub_15544E4(v27, v29, a3);
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v31 = *(a1 + 132);
    *v23 = 56;
    v23[1] = v31;
    if (v31 > 0x7F)
    {
      v23[1] = v31 | 0x80;
      v32 = v31 >> 7;
      v23[2] = v31 >> 7;
      v30 = v23 + 3;
      if (v31 >= 0x4000)
      {
        LOBYTE(v23) = v23[2];
        do
        {
          *(v30 - 1) = v23 | 0x80;
          LODWORD(v23) = v32 >> 7;
          *v30++ = v32 >> 7;
          v33 = v32 >> 14;
          v32 >>= 7;
        }

        while (v33);
      }
    }

    else
    {
      v30 = v23 + 2;
    }
  }

  else
  {
    v30 = v23;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v30)
    {
      v30 = sub_225EB68(a3, v30);
    }

    v34 = *(a1 + 80);
    *v30 = 66;
    v35 = *(v34 + 20);
    v30[1] = v35;
    if (v35 > 0x7F)
    {
      v36 = sub_19575D0(v35, v30 + 1);
    }

    else
    {
      v36 = v30 + 2;
    }

    v30 = sub_1553704(v34, v36, a3);
  }

  v37 = *(a1 + 48);
  if (v37 < 1)
  {
    v40 = v30;
  }

  else
  {
    for (j = 0; j != v37; ++j)
    {
      if (*a3 <= v30)
      {
        v30 = sub_225EB68(a3, v30);
      }

      v39 = *(*(a1 + 56) + 4 * j);
      *v30 = 72;
      v30[1] = v39;
      if (v39 > 0x7F)
      {
        v30[1] = v39 | 0x80;
        v41 = v39 >> 7;
        v30[2] = v39 >> 7;
        v40 = v30 + 3;
        if (v39 >= 0x4000)
        {
          LOBYTE(v30) = v30[2];
          do
          {
            *(v40 - 1) = v30 | 0x80;
            LODWORD(v30) = v41 >> 7;
            *v40++ = v41 >> 7;
            v42 = v41 >> 14;
            v41 >>= 7;
          }

          while (v42);
        }
      }

      else
      {
        v40 = v30 + 2;
      }

      v30 = v40;
    }
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v40)
    {
      v40 = sub_225EB68(a3, v40);
    }

    v43 = *(a1 + 88);
    *v40 = 82;
    v44 = *(v43 + 20);
    v40[1] = v44;
    if (v44 > 0x7F)
    {
      v45 = sub_19575D0(v44, v40 + 1);
    }

    else
    {
      v45 = v40 + 2;
    }

    v40 = sub_15552A4(v43, v45, a3);
    if ((v5 & 0x10) == 0)
    {
LABEL_80:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_94;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_80;
  }

  if (*a3 <= v40)
  {
    v40 = sub_225EB68(a3, v40);
  }

  v46 = *(a1 + 96);
  *v40 = 90;
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

  v40 = sub_16F39A0(v46, v48, a3);
  if ((v5 & 0x20) != 0)
  {
LABEL_94:
    if (*a3 <= v40)
    {
      v40 = sub_225EB68(a3, v40);
    }

    v49 = *(a1 + 104);
    *v40 = 98;
    v50 = *(v49 + 32);
    v40[1] = v50;
    if (v50 > 0x7F)
    {
      v51 = sub_19575D0(v50, v40 + 1);
    }

    else
    {
      v51 = v40 + 2;
    }

    v40 = sub_15577BC(v49, v51, a3);
  }

LABEL_100:
  v52 = *(a1 + 8);
  if ((v52 & 1) == 0)
  {
    return v40;
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

  if (*a3 - v40 >= v55)
  {
    v57 = v55;
    memcpy(v40, v56, v55);
    v40 += v57;
    return v40;
  }

  return sub_1957130(a3, v56, v55, v40);
}

uint64_t sub_1558C60(uint64_t a1)
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
      v7 = sub_15570F0(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = sub_1959E5C((a1 + 48)) + v2 + *(a1 + 48);
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_19;
  }

  if (v9)
  {
    v12 = sub_1554C64(*(a1 + 64));
    v8 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 2) == 0)
    {
LABEL_12:
      if ((v9 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_12;
  }

  v13 = sub_1554640(*(a1 + 72));
  v8 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 4) == 0)
  {
LABEL_13:
    if ((v9 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  v14 = sub_1553D80(*(a1 + 80));
  v8 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 8) == 0)
  {
LABEL_14:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  v15 = sub_155566C(*(a1 + 88));
  v8 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 0x10) == 0)
  {
LABEL_15:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_28:
    v17 = sub_155790C(*(a1 + 104));
    v8 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 0x40) == 0)
    {
LABEL_17:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_29;
  }

LABEL_27:
  v16 = sub_16F3BD8(*(a1 + 96));
  v8 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_16:
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_29:
  v8 += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v9 & 0x80) != 0)
  {
LABEL_18:
    v8 += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v9 & 0x300) != 0)
  {
    if ((v9 & 0x100) != 0)
    {
      v10 = *(a1 + 128);
      if (v10 < 0)
      {
        v11 = 11;
      }

      else
      {
        v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v8 += v11;
    }

    if ((v9 & 0x200) != 0)
    {
      v8 += ((9 * (__clz(*(a1 + 132) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v18 = *(a1 + 8);
  if (v18)
  {
    v20 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    v8 += v21;
  }

  *(a1 + 20) = v8;
  return v8;
}

std::string *sub_1558F14(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_156E1CC(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    data_low = SLODWORD(v3[2].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[2], data_low + v9);
    size = v3[2].__r_.__value_.__l.__size_;
    LODWORD(v3[2].__r_.__value_.__l.__data_) += *(a2 + 48);
    result = memcpy((size + 4 * data_low), *(a2 + 56), 4 * *(a2 + 48));
  }

  v12 = *(a2 + 16);
  if (v12)
  {
    if (v12)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v14 = v3[2].__r_.__value_.__r.__words[2];
      if (!v14)
      {
        v15 = v3->__r_.__value_.__l.__size_;
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        sub_155A57C(v16);
        v3[2].__r_.__value_.__r.__words[2] = v14;
      }

      if (*(a2 + 64))
      {
        v17 = *(a2 + 64);
      }

      else
      {
        v17 = &off_27771C8;
      }

      result = sub_1554CF0(v14, v17);
      if ((v12 & 2) == 0)
      {
LABEL_9:
        if ((v12 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_43;
      }
    }

    else if ((v12 & 2) == 0)
    {
      goto LABEL_9;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    data = v3[3].__r_.__value_.__l.__data_;
    if (!data)
    {
      v19 = v3->__r_.__value_.__l.__size_;
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      sub_155A500(v20);
      v3[3].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 72))
    {
      v21 = *(a2 + 72);
    }

    else
    {
      v21 = &off_2777198;
    }

    result = sub_14F406C(data, v21);
    if ((v12 & 4) == 0)
    {
LABEL_10:
      if ((v12 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_51;
    }

LABEL_43:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v22 = v3[3].__r_.__value_.__l.__size_;
    if (!v22)
    {
      v23 = v3->__r_.__value_.__l.__size_;
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      sub_155A444(v24);
      v3[3].__r_.__value_.__l.__size_ = v22;
    }

    if (*(a2 + 80))
    {
      v25 = *(a2 + 80);
    }

    else
    {
      v25 = &off_2777130;
    }

    result = sub_155400C(v22, v25);
    if ((v12 & 8) == 0)
    {
LABEL_11:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_59;
    }

LABEL_51:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    v26 = v3[3].__r_.__value_.__r.__words[2];
    if (!v26)
    {
      v27 = v3->__r_.__value_.__l.__size_;
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      sub_155A600(v28);
      v3[3].__r_.__value_.__r.__words[2] = v26;
    }

    if (*(a2 + 88))
    {
      v29 = *(a2 + 88);
    }

    else
    {
      v29 = &off_2777210;
    }

    result = sub_12BF854(v26, v29);
    if ((v12 & 0x10) == 0)
    {
LABEL_12:
      if ((v12 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_67;
    }

LABEL_59:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
    v30 = v3[4].__r_.__value_.__l.__data_;
    if (!v30)
    {
      v31 = v3->__r_.__value_.__l.__size_;
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_16F6438(v32);
      v3[4].__r_.__value_.__r.__words[0] = v30;
    }

    if (*(a2 + 96))
    {
      v33 = *(a2 + 96);
    }

    else
    {
      v33 = &off_277EB80;
    }

    result = sub_128F948(v30, v33);
    if ((v12 & 0x20) == 0)
    {
LABEL_13:
      if ((v12 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_75;
    }

LABEL_67:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x20u;
    v34 = v3[4].__r_.__value_.__l.__size_;
    if (!v34)
    {
      v35 = v3->__r_.__value_.__l.__size_;
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      v34 = sub_155A828(v36);
      v3[4].__r_.__value_.__l.__size_ = v34;
    }

    if (*(a2 + 104))
    {
      v37 = *(a2 + 104);
    }

    else
    {
      v37 = &off_2777328;
    }

    result = sub_12EE670(v34, v37);
    if ((v12 & 0x40) == 0)
    {
LABEL_14:
      if ((v12 & 0x80) == 0)
      {
LABEL_16:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v12;
        goto LABEL_17;
      }

LABEL_15:
      v3[5].__r_.__value_.__r.__words[0] = *(a2 + 120);
      goto LABEL_16;
    }

LABEL_75:
    v3[4].__r_.__value_.__r.__words[2] = *(a2 + 112);
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  if ((v12 & 0x300) != 0)
  {
    if ((v12 & 0x100) != 0)
    {
      LODWORD(v3[5].__r_.__value_.__r.__words[1]) = *(a2 + 128);
    }

    if ((v12 & 0x200) != 0)
    {
      HIDWORD(v3[5].__r_.__value_.__r.__words[1]) = *(a2 + 132);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v12;
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_1559270(void *a1)
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

void sub_15592E4(void *a1)
{
  sub_1559270(a1);

  operator delete();
}

uint64_t sub_155931C(uint64_t a1)
{
  if ((*(a1 + 16) & 0x3F) != 0)
  {
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
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

char *sub_155934C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v23 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v23, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v23 + 1;
    v8 = *v23;
    if (*v23 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v23, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v23 + 2;
      }
    }

    v23 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      if (v11 == 4)
      {
        if (v8 == 33)
        {
          v17 = *v7;
          v13 = v7 + 8;
          v5 |= 8u;
          *(a1 + 48) = v17;
          goto LABEL_29;
        }
      }

      else if (v11 == 5)
      {
        if (v8 == 41)
        {
          v19 = *v7;
          v13 = v7 + 8;
          v5 |= 0x10u;
          *(a1 + 56) = v19;
          goto LABEL_29;
        }
      }

      else if (v11 == 6 && v8 == 49)
      {
        v15 = *v7;
        v13 = v7 + 8;
        v5 |= 0x20u;
        *(a1 + 64) = v15;
        goto LABEL_29;
      }
    }

    else if (v11 == 1)
    {
      if (v8 == 9)
      {
        v16 = *v7;
        v13 = v7 + 8;
        v5 |= 1u;
        *(a1 + 24) = v16;
        goto LABEL_29;
      }
    }

    else if (v11 == 2)
    {
      if (v8 == 17)
      {
        v18 = *v7;
        v13 = v7 + 8;
        v5 |= 2u;
        *(a1 + 32) = v18;
        goto LABEL_29;
      }
    }

    else if (v11 == 3 && v8 == 25)
    {
      v14 = *v7;
      v13 = v7 + 8;
      v5 |= 4u;
      *(a1 + 40) = v14;
LABEL_29:
      v23 = v13;
      goto LABEL_30;
    }

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
      v7 = v23;
    }

    v23 = sub_1952690(v8, v22, v7, a3);
    if (!v23)
    {
      goto LABEL_43;
    }

LABEL_30:
    if (sub_195ADC0(a3, &v23, a3[11].i32[1]))
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
  v23 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v23;
}

char *sub_155954C(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

      goto LABEL_14;
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

    goto LABEL_17;
  }

LABEL_14:
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

    goto LABEL_20;
  }

LABEL_17:
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
      goto LABEL_26;
    }

    goto LABEL_23;
  }

LABEL_20:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 56);
  *v4 = 41;
  *(v4 + 1) = v11;
  v4 += 9;
  if ((v6 & 0x20) != 0)
  {
LABEL_23:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v12 = *(a1 + 64);
    *v4 = 49;
    *(v4 + 1) = v12;
    v4 += 9;
  }

LABEL_26:
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

  if (*a3 - v4 >= v16)
  {
    v18 = v16;
    memcpy(v4, v17, v16);
    v4 += v18;
    return v4;
  }

  return sub_1957130(a3, v17, v16, v4);
}

uint64_t sub_155975C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) != 0)
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

uint64_t sub_1559800(uint64_t a1)
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

void sub_15598CC(uint64_t a1)
{
  sub_1559800(a1);

  operator delete();
}

uint64_t sub_1559904(uint64_t a1)
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

uint64_t sub_15599BC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1559B78(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1559C8C(uint64_t a1)
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

uint64_t sub_1559DBC(uint64_t a1)
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

  if (a1 != &off_2777450)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_1559270(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1559800(v6);
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

void sub_1559E8C(uint64_t a1)
{
  sub_1559DBC(a1);

  operator delete();
}

uint64_t sub_1559EC4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_155931C(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_1559904(*(v1 + 32));
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

char *sub_1559F34(uint64_t a1, char *a2, int32x2_t *a3)
{
  v23 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v23, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v23 + 1;
    v7 = *v23;
    if (*v23 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v23, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v23 + 2;
      }
    }

    v23 = v6;
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

          v15 = sub_155A9F0(v17);
          *(a1 + 32) = v15;
          v6 = v23;
        }

        v14 = sub_221E63C(a3, v15, v6);
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

        sub_155A96C(v20);
        v18 = v21;
        *(a1 + 24) = v21;
        v6 = v23;
      }

      v14 = sub_221E5AC(a3, v18, v6);
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
        return v23;
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
      v6 = v23;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_30:
    v23 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v23;
}

char *sub_155A0DC(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_155954C(v7, v9, a3);
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

    v4 = sub_1559B78(v10, v12, a3);
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

  if (*a3 - v4 >= v16)
  {
    v18 = v16;
    memcpy(v4, v17, v16);
    v4 += v18;
    return v4;
  }

  return sub_1957130(a3, v17, v16, v4);
}

uint64_t sub_155A258(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_155975C(*(a1 + 24));
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
    v5 = sub_1559C8C(*(a1 + 32));
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

std::string *sub_155A328(std::string *result, uint64_t a2)
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

        sub_155A96C(v7);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_27773D8;
      }

      result = sub_1554CF0(data, v8);
    }

    if ((v4 & 2) != 0)
    {
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

        v9 = sub_155A9F0(v11);
        v3[1].__r_.__value_.__l.__size_ = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_2777420;
      }

      result = sub_12EB184(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

double sub_155A444(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26EDB98;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = a1;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = &qword_278E990;
  result = 0.0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 1;
  return result;
}

double sub_155A500(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26EDC18;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

double sub_155A57C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26EDC98;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

double sub_155A600(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26EDD18;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

double sub_155A67C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26EDD98;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

double sub_155A6FC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26EDE18;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  return result;
}

uint64_t sub_155A784(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26EDE98;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_155A828(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26EDF18;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_155A8BC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26EDF98;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = a1;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0;
  return result;
}

double sub_155A96C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26EE018;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

void *sub_155A9F0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26EE098;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  return result;
}

void *sub_155AA78(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26EE118;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_1563BF0(uint64_t result)
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
      *(result + 16) = 0;
      *(result + 8) = 0;
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

void sub_1563C54(void *a1)
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
          sub_144F68C(*v3);
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

void sub_1563CD8(void *a1)
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
          sub_1454AF4(*v3);
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

void sub_1563D5C(void *a1)
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
          sub_14520E0(*v3);
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

void sub_1563DE0(void *a1)
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
          sub_1455758(*v3);
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

void sub_1563E64(void *a1)
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
          sub_145788C(*v3);
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

void sub_1563EE8(void *a1)
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
          sub_1459244();
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

void sub_1563F6C(void *a1)
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
          sub_1450A5C(*v3);
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

void sub_1563FF0(void *a1)
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
          sub_14666E8(*v3);
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

void sub_1564074(void *a1)
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
          sub_14683C4(*v3);
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

void sub_15640F8(void *a1)
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
          sub_1467B90(*v3);
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

void sub_156417C(void *a1)
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
          sub_14691DC(*v3);
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

void sub_1564200(void *a1)
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
          sub_146A4D8(*v3);
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

void sub_1564284(void *a1)
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
          sub_146B858(*v3);
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

void sub_1564308(void *a1)
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
          sub_146C2C4(*v3);
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

void sub_156438C(void *a1)
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
          sub_16E9078();
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

void sub_1564410(void *a1)
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
          sub_16E9760();
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

void sub_1564494(void *a1)
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
          sub_1461EC4(*v3);
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

void sub_1564518(void *a1)
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
          sub_146D7DC(*v3);
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

void sub_156459C(void *a1)
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
          sub_1472C10(*v3);
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

void sub_1564620(void *a1)
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
          sub_14736A8(*v3);
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

void sub_15646A4(void *a1)
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
          sub_14741EC(*v3);
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

void sub_1564728(void *a1)
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
          sub_1476148(*v3);
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

void sub_15647AC(void *a1)
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
          sub_1476AB8(*v3);
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

void sub_1564830(void *a1)
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
          sub_1477D08(*v3);
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

void sub_15648B4(void *a1)
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
          sub_15557DC(*v3);
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

void sub_1564938(void *a1)
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
          sub_147E414(*v3);
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

void sub_15649BC(void *a1)
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
          sub_147F110(*v3);
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

void sub_1564A40(void *a1)
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
          sub_147FE94(*v3);
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

void sub_1564AC4(void *a1)
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
          sub_147D490(*v3);
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

void sub_1564B48(void *a1)
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
          sub_1485930(*v3);
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

void sub_1564BCC(void *a1)
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
          sub_14A4760(*v3);
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

void sub_1564C50(void *a1)
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
          sub_14A1520(*v3);
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

void sub_1564CD4(void *a1)
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
          sub_14A0454(*v3);
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

void sub_1564D58(void *a1)
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
          sub_1498398(*v3);
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

void sub_1564DDC(void *a1)
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
          sub_146F3CC(*v3);
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

void sub_1564E60(void *a1)
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
          sub_148A34C(*v3);
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

void sub_1564EE4(void *a1)
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
          sub_14A1E98(*v3);
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

void sub_1564F68(void *a1)
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
          sub_146AA18(*v3);
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

void sub_1564FEC(void *a1)
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
          sub_146B228(*v3);
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

void sub_1565070(void *a1)
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
          sub_148AC04(*v3);
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

void sub_15650F4(void *a1)
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
          sub_1473128(*v3);
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

void sub_1565178(void *a1)
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
          sub_1473BC0(*v3);
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

void sub_15651FC(void *a1)
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
          sub_148B21C(*v3);
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

void sub_1565280(void *a1)
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
          sub_144FCBC(*v3);
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

void sub_1565304(void *a1)
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
          sub_148676C(*v3);
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

void sub_1565388(void *a1)
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
          sub_148B734(*v3);
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

void sub_156540C(void *a1)
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
          sub_1497618(*v3);
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

void sub_1565490(void *a1)
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
          sub_149BEFC(*v3);
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

void sub_1565514(void *a1)
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
          sub_14A389C(*v3);
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

void sub_1565598(void *a1)
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
          sub_14A3E4C(*v3);
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

void sub_156561C(void *a1)
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
          sub_14A6E60(*v3);
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

void sub_15656A0(void *a1)
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
          sub_14ABA70(*v3);
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

void sub_1565724(void *a1)
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
          sub_14B0DC0(*v3);
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

void sub_15657A8(void *a1)
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
          sub_14B121C(*v3);
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

void sub_156582C(void *a1)
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
          sub_14B1F18(*v3);
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

void sub_15658B0(void *a1)
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
          sub_16E550C();
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

void sub_1565934(void *a1)
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
          sub_14B964C(*v3);
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

uint64_t *sub_15659B8(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BA4E4(v9);
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
      result = sub_1312C58(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_1565A34(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BAB80(v9);
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
      result = sub_1565AB0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_1565AC0(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BA844(v9);
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
      result = sub_1565B3C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1565B4C(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      sub_14BAC9C(v9);
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
      sub_1565BC8(v12, v14);
      --v5;
    }

    while (v5);
  }
}

uint64_t *sub_1565BD8(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BADDC(v9);
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
      result = sub_1565C54(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_1565C64(uint64_t *result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BAF28(v9);
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
      result = sub_1565CE0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_1565CF0(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BA608(v9);
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
      result = sub_1312C58(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_1565D6C(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BB7AC(v9);
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
      result = sub_1565DE8(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_1565DF8(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BB984(v9);
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

uint64_t *sub_1565E74(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BB8E8(v9);
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
      result = sub_1565EF0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_1565F00(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BBAAC(v9);
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
      result = sub_131354C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_1565F7C(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BBC70(v9);
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

std::string *sub_1565FF8(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BBE00(v9);
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

void sub_1566074(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_14BBEF0(v9);
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
      sub_15660F0(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1566100(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_16F5C34(v9);
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
      sub_156617C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_156618C(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_16F5CD4(v9);
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
      sub_1566208(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1566218(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      sub_14BB54C(v9);
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
      sub_1566294(v12, v14);
      --v5;
    }

    while (v5);
  }
}

uint64_t *sub_15662A4(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BC020(v9);
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
      result = sub_1565AB0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_1566320(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BC27C(v9);
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

std::string *sub_156639C(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BC394(v9);
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

void sub_1566418(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_14BC4AC(v9);
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
      sub_1566494(v11, v13);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_15664A4(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BC5AC(v9);
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
      result = sub_1566520(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_1566530(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BC634(v9);
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
      result = sub_15665AC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_15665BC(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BC7A8(v9);
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
      result = sub_1312C58(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1566638(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
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
      sub_155A67C(v9);
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
      sub_15666B4(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_15666C4(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      sub_14BCD74(v9);
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
      sub_1566740(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_1566750(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_14BCDF8(v9);
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
      sub_15667CC(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15667DC(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_14BCE94(v9);
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
      sub_1566858(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1566868(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      sub_14BCC7C(v9);
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
      sub_15668E4(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_15668F4(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      sub_14BD2E4(v9);
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
      sub_1566970(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_1566980(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_14BE3A4(v9);
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
      sub_15669FC(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1566A0C(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_14BE0EC(v9);
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
      sub_1566A88(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1566A98(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      sub_14BE058(v9);
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
      sub_1566B14(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_1566B24(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      sub_14BDC34(v9);
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
      sub_1566BA0(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_1566BB0(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_14BC220(v9);
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
      sub_1566C2C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1566C3C(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_14BD508(v9);
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
      sub_1566CB8(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1566CC8(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      sub_14BE174(v9);
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
      sub_1566D44(v12, v14);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_1566D54(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BBCE8(v9);
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
      result = sub_1566DD0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_1566DE0(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BBD84(v9);
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
      result = sub_1312C58(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1566E5C(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_14BD5AC(v9);
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
      sub_1566ED8(v11, v13);
      --v5;
    }

    while (v5);
  }
}

uint64_t *sub_1566EE8(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BC2F4(v9);
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
      result = sub_1566F64(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_1566F74(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BC40C(v9);
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
      result = sub_1566FF0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_1567000(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BD644(v9);
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

void sub_156707C(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_14BA560(v9);
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
      sub_15670F8(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1567108(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_14BD400(v9);
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
      sub_1567184(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1567194(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_14BD6BC(v9);
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
      sub_1567210(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1567220(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_14BDBB8(v9);
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
      sub_15660F0(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_156729C(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_14BDD20(v9);
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
      sub_1567318(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1567328(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_14BE2A4(v9);
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
      sub_15673A4(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15673B4(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_14BE320(v9);
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
      sub_1567430(v11, v13);
      --v5;
    }

    while (v5);
  }
}

uint64_t *sub_1567440(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BEA20(v9);
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
      result = sub_1565AB0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_15674BC(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BEFAC(v9);
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
      result = sub_13460C4(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1567538(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      sub_14BF034(v9);
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
      sub_15675B4(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_15675C4(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_14BF0E8(v9);
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
      sub_1567640(v11, v13);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_1567650(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16F5884(v9);
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

std::string *sub_15676CC(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_14BF6E8(v9);
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
      result = sub_1567748(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1567DAC(void *a1)
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
          sub_14BF924(*v3);
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

void sub_1567E30(void *a1)
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
          sub_14C0908(*v3);
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