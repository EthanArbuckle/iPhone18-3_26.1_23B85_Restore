char *sub_1484DCC(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_147CEF4(v6, v8, a3);
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

uint64_t sub_1484ED8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_147D148(*(a1 + 24));
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

void sub_1484F58(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 24);
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

      sub_14BCBFC(v7);
      *(a1 + 24) = v5;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_2772418;
    }

    sub_147D280(v5, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1485000(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_147D40C(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1485040(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26E5AC0;
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

void sub_14850BC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_14850EC(void *a1)
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

void sub_1485160(void *a1)
{
  sub_14850EC(a1);

  operator delete();
}

uint64_t sub_1485198(uint64_t a1)
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

char *sub_14851B0(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
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
      v25 = v16;
      *(a1 + 25) = v15 != 0;
      goto LABEL_29;
    }

    v21 = sub_19587DC(v7, v15);
    v25 = v21;
    *(a1 + 25) = v22 != 0;
    if (!v21)
    {
      goto LABEL_38;
    }

LABEL_29:
    if (sub_195ADC0(a3, &v25, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 8)
  {
    v5 |= 1u;
    v19 = v7 + 1;
    v18 = *v7;
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v19;
    v18 = (v20 << 7) + v18 - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_28:
      v25 = v19;
      *(a1 + 24) = v18 != 0;
      goto LABEL_29;
    }

    v23 = sub_19587DC(v7, v18);
    v25 = v23;
    *(a1 + 24) = v24 != 0;
    if (!v23)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
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
      v7 = v25;
    }

    v25 = sub_1952690(v8, v14, v7, a3);
    if (!v25)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_38:
  v25 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v25;
}

char *sub_14853B4(uint64_t a1, unint64_t __dst, _DWORD *a3)
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
    *v4 = 8;
    v4[1] = v7;
    v4 += 2;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 25);
    *v4 = 16;
    v4[1] = v8;
    v4 += 2;
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

uint64_t sub_14854CC(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    v1 = 2 * (*(a1 + 16) & 1) + (*(a1 + 16) & 2u);
  }

  else
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

std::string *sub_1485514(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result[1].__r_.__value_.__s.__data_[0] = *(a2 + 24);
    }

    if ((v2 & 2) != 0)
    {
      result[1].__r_.__value_.__s.__data_[1] = *(a2 + 25);
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

void *sub_1485578(void *a1)
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

void sub_14855EC(void *a1)
{
  sub_1485578(a1);

  operator delete();
}

uint64_t sub_1485624(uint64_t a1)
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

char *sub_1485648(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_14857AC(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

uint64_t sub_14858C4(uint64_t a1)
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

uint64_t sub_1485930(uint64_t a1)
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

  if (a1 != &off_2772798 && *(a1 + 24))
  {
    sub_16E4E08();
    operator delete();
  }

  if (*(a1 + 8))
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14859E8(uint64_t a1)
{
  sub_1485930(a1);

  operator delete();
}

unsigned __int8 *sub_1485A20(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2)
  {
    result = sub_16E4E44(*(result + 3));
  }

  if ((v2 & 0xE) != 0)
  {
    *(v1 + 4) = 0;
    *(v1 + 5) = 0;
    *(v1 + 12) = 0;
  }

  v4 = v1[8];
  v3 = v1 + 8;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_1485A8C(uint64_t a1, char *a2, int32x2_t *a3)
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
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 17)
        {
          v14 = *v7;
          v13 = v7 + 8;
          v5 |= 2u;
          *(a1 + 32) = v14;
LABEL_32:
          v26 = v13;
          goto LABEL_41;
        }

        goto LABEL_33;
      }

      if (v8 != 8)
      {
        goto LABEL_33;
      }

      v20 = v7 + 1;
      v19 = *v7;
      if (v19 < 0)
      {
        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          v26 = sub_19587DC(v7, v19);
          if (!v26)
          {
            goto LABEL_49;
          }

          goto LABEL_28;
        }

        v20 = v7 + 2;
      }

      v26 = v20;
LABEL_28:
      if (v19 > 6)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 8u;
        *(a1 + 48) = v19;
      }

      goto LABEL_41;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 != 4 || v8 != 34)
    {
      goto LABEL_33;
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

      v15 = sub_16F5828(v17);
      *(a1 + 24) = v15;
      v7 = v26;
    }

    v18 = sub_21F4D60(a3, v15, v7);
LABEL_40:
    v26 = v18;
    if (!v18)
    {
      goto LABEL_49;
    }

LABEL_41:
    if (sub_195ADC0(a3, &v26, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 25)
  {
    v22 = *v7;
    v13 = v7 + 8;
    v5 |= 4u;
    *(a1 + 40) = v22;
    goto LABEL_32;
  }

LABEL_33:
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

    v18 = sub_1952690(v8, v25, v7, a3);
    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_49:
  v26 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v26;
}

char *sub_1485CD0(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) != 0)
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

    v11 = *(a1 + 32);
    *v6 = 17;
    *(v6 + 1) = v11;
    v6 += 9;
    if ((v5 & 4) == 0)
    {
LABEL_12:
      if ((v5 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_12;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v12 = *(a1 + 40);
  *v6 = 25;
  *(v6 + 1) = v12;
  v6 += 9;
  if (v5)
  {
LABEL_20:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v13 = *(a1 + 24);
    *v6 = 34;
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

    v6 = sub_16E5070(v13, v15, a3);
  }

LABEL_26:
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

uint64_t sub_1485ED8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) != 0)
  {
    if (v2)
    {
      v5 = sub_16E51F0(*(a1 + 24));
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
      result = v3 + 9;
    }

    else
    {
      result = v3;
    }

    if ((v2 & 8) != 0)
    {
      v6 = *(a1 + 48);
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v6 >= 0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 11;
      }

      result += v8;
    }
  }

  else
  {
    result = 0;
  }

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

void sub_1485FB4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
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

        v6 = sub_16F5828(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277E5E8;
      }

      sub_16E527C(v6, v9);
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

    *(a1 + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
LABEL_7:
        *(a1 + 16) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(a1 + 48) = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_21:
    *(a1 + 40) = *(a2 + 40);
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

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14860AC(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_14860EC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1564B48(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_148616C(void *a1)
{
  sub_14860EC(a1);

  operator delete();
}

unsigned __int8 *sub_14861A4(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1485A20(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v6 = v1[8];
  v5 = v1 + 8;
  v5[40] = 0;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_1486228(uint64_t a1, char *a2, int32x2_t *a3)
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
        sub_14BD2E4(*(a1 + 24));
        v22 = sub_19593CC(a1 + 24, v23);
        v19 = v26;
      }

      v18 = sub_220E598(a3, v22, v19);
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

char *sub_1486450(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_1485CD0(v8, v10, a3);
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

uint64_t sub_14865CC(uint64_t a1)
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
      v7 = sub_1485ED8(v6);
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

void sub_148667C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15668F4((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

uint64_t sub_148676C(uint64_t a1)
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

  if (a1 != &off_2772808)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      sub_1485578(v5);
      operator delete();
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      sub_14860EC(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1956ABC(a1 + 48);
  sub_12E6204((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1486850(uint64_t a1)
{
  sub_148676C(a1);

  operator delete();
}

uint64_t sub_1486888(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E4E44(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  *(v1 + 48) = 0;
  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      result = sub_1485624(*(v1 + 64));
    }

    if ((v5 & 2) != 0)
    {
      result = sub_14861A4(*(v1 + 72));
    }
  }

  if ((v5 & 0xFC) != 0)
  {
    *(v1 + 112) = 0;
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0u;
  }

  if ((v5 & 0x700) != 0)
  {
    *(v1 + 124) = 0;
    *(v1 + 116) = 0;
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

char *sub_1486954(uint64_t a1, char *a2, int32x2_t *a3)
{
  v67 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v67, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (2)
  {
    v8 = v67 + 1;
    v9 = *v67;
    if (*v67 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(v67, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = v67 + 2;
      }
    }

    v67 = v8;
    switch(v9 >> 3)
    {
      case 1u:
        if (v9 != 9)
        {
          goto LABEL_100;
        }

        v14 = *v8;
        v13 = v8 + 8;
        v5 |= 4u;
        *(a1 + 80) = v14;
        goto LABEL_52;
      case 2u:
        if (v9 != 18)
        {
          goto LABEL_100;
        }

        v37 = v8 - 1;
        while (1)
        {
          v38 = (v37 + 1);
          v67 = v37 + 1;
          v39 = *(a1 + 40);
          if (v39 && (v40 = *(a1 + 32), v40 < *v39))
          {
            *(a1 + 32) = v40 + 1;
            v41 = *&v39[2 * v40 + 2];
          }

          else
          {
            v42 = sub_16F5828(*(a1 + 24));
            v41 = sub_19593CC(a1 + 24, v42);
            v38 = v67;
          }

          v37 = sub_21F4D60(a3, v41, v38);
          v67 = v37;
          if (!v37)
          {
            goto LABEL_113;
          }

          if (*a3 <= v37 || *v37 != 18)
          {
            goto LABEL_108;
          }
        }

      case 3u:
        if (v9 != 25)
        {
          goto LABEL_100;
        }

        v36 = *v8;
        v13 = v8 + 8;
        v5 |= 8u;
        *(a1 + 88) = v36;
        goto LABEL_52;
      case 4u:
        if (v9 != 33)
        {
          goto LABEL_100;
        }

        v35 = *v8;
        v13 = v8 + 8;
        v5 |= 0x10u;
        *(a1 + 96) = v35;
LABEL_52:
        v67 = v13;
        goto LABEL_108;
      case 5u:
        if (v9 != 40)
        {
          goto LABEL_100;
        }

        v5 |= 0x20u;
        v23 = v8 + 1;
        v24 = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        v25 = *v23;
        v24 = v24 + (v25 << 7) - 128;
        if (v25 < 0)
        {
          v53 = sub_1958770(v8, v24);
          v67 = v53;
          *(a1 + 104) = v54;
          if (!v53)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v23 = v8 + 2;
LABEL_32:
          v67 = v23;
          *(a1 + 104) = v24;
        }

        goto LABEL_108;
      case 6u:
        if (v9 != 48)
        {
          goto LABEL_100;
        }

        v5 |= 0x40u;
        v29 = v8 + 1;
        v30 = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        v31 = *v29;
        v30 = v30 + (v31 << 7) - 128;
        if (v31 < 0)
        {
          v57 = sub_1958770(v8, v30);
          v67 = v57;
          *(a1 + 108) = v58;
          if (!v57)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v29 = v8 + 2;
LABEL_42:
          v67 = v29;
          *(a1 + 108) = v30;
        }

        goto LABEL_108;
      case 7u:
        if (v9 != 56)
        {
          goto LABEL_100;
        }

        v5 |= 0x80u;
        LODWORD(v43) = *v8;
        if ((v43 & 0x80000000) == 0)
        {
          v44 = v8 + 1;
LABEL_85:
          v67 = v44;
          *(a1 + 112) = v43;
          goto LABEL_108;
        }

        v43 = (v8[1] << 7) + v43 - 128;
        if ((v8[1] & 0x80000000) == 0)
        {
          v44 = v8 + 2;
          goto LABEL_85;
        }

        v61 = sub_19587DC(v8, v43);
        v67 = v61;
        *(a1 + 112) = v62;
        if (!v61)
        {
          goto LABEL_113;
        }

        goto LABEL_108;
      case 8u:
        if (v9 != 66)
        {
          goto LABEL_100;
        }

        *(a1 + 16) |= 1u;
        v45 = *(a1 + 64);
        if (!v45)
        {
          v46 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v46 = *v46;
          }

          v45 = sub_14BD268(v46);
          *(a1 + 64) = v45;
          v8 = v67;
        }

        v47 = sub_220E628(a3, v45, v8);
        goto LABEL_107;
      case 9u:
        if (v9 != 72)
        {
          goto LABEL_100;
        }

        v5 |= 0x100u;
        v50 = v8 + 1;
        v51 = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_82;
        }

        v52 = *v50;
        v51 = v51 + (v52 << 7) - 128;
        if (v52 < 0)
        {
          v63 = sub_1958770(v8, v51);
          v67 = v63;
          *(a1 + 116) = v64;
          if (!v63)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v50 = v8 + 2;
LABEL_82:
          v67 = v50;
          *(a1 + 116) = v51;
        }

        goto LABEL_108;
      case 0xBu:
        if (v9 != 90)
        {
          goto LABEL_100;
        }

        *(a1 + 16) |= 2u;
        v48 = *(a1 + 72);
        if (!v48)
        {
          v49 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v49 = *v49;
          }

          v48 = sub_14BD364(v49);
          *(a1 + 72) = v48;
          v8 = v67;
        }

        v47 = sub_220E6B8(a3, v48, v8);
        goto LABEL_107;
      case 0xCu:
        if (v9 == 96)
        {
          v15 = v8 - 1;
          while (1)
          {
            v67 = v15 + 1;
            v16 = v15[1];
            v17 = v15 + 2;
            if (v16 < 0)
            {
              v18 = *v17;
              v19 = (v18 << 7) + v16;
              LODWORD(v16) = v19 - 128;
              if (v18 < 0)
              {
                v67 = sub_19587DC((v15 + 1), (v19 - 128));
                if (!v67)
                {
                  goto LABEL_113;
                }

                LODWORD(v16) = v22;
                goto LABEL_17;
              }

              v17 = v15 + 3;
            }

            v67 = v17;
LABEL_17:
            if (v16 > 0xF)
            {
              sub_1348EB8();
            }

            else
            {
              v20 = *(a1 + 48);
              if (v20 == *(a1 + 52))
              {
                v21 = v20 + 1;
                sub_1958E5C((a1 + 48), v20 + 1);
                *(*(a1 + 56) + 4 * v20) = v16;
              }

              else
              {
                *(*(a1 + 56) + 4 * v20) = v16;
                v21 = v20 + 1;
              }

              *(a1 + 48) = v21;
            }

            v15 = v67;
            if (*a3 <= v67 || *v67 != 96)
            {
              goto LABEL_108;
            }
          }
        }

        if (v9 == 98)
        {
          *&v68 = a1 + 48;
          *(&v68 + 1) = sub_144E304;
          v69 = a1 + 8;
          v70 = 12;
          v47 = sub_1216588(a3, v8, &v68);
          goto LABEL_107;
        }

LABEL_100:
        if (v9)
        {
          v65 = (v9 & 7) == 4;
        }

        else
        {
          v65 = 1;
        }

        if (!v65)
        {
          if (*v7)
          {
            v66 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v66 = sub_11F1920((a1 + 8));
            v8 = v67;
          }

          v47 = sub_1952690(v9, v66, v8, a3);
LABEL_107:
          v67 = v47;
          if (!v47)
          {
            goto LABEL_113;
          }

LABEL_108:
          if (sub_195ADC0(a3, &v67, a3[11].i32[1]))
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
LABEL_113:
          v67 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return v67;
      case 0xDu:
        if (v9 != 104)
        {
          goto LABEL_100;
        }

        v5 |= 0x200u;
        v32 = v8 + 1;
        v33 = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

        v34 = *v32;
        v33 = v33 + (v34 << 7) - 128;
        if (v34 < 0)
        {
          v59 = sub_1958770(v8, v33);
          v67 = v59;
          *(a1 + 120) = v60;
          if (!v59)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v32 = v8 + 2;
LABEL_47:
          v67 = v32;
          *(a1 + 120) = v33;
        }

        goto LABEL_108;
      case 0xEu:
        if (v9 != 112)
        {
          goto LABEL_100;
        }

        v5 |= 0x400u;
        v26 = v8 + 1;
        v27 = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        v28 = *v26;
        v27 = v27 + (v28 << 7) - 128;
        if (v28 < 0)
        {
          v55 = sub_1958770(v8, v27);
          v67 = v55;
          *(a1 + 124) = v56;
          if (!v55)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v26 = v8 + 2;
LABEL_37:
          v67 = v26;
          *(a1 + 124) = v27;
        }

        goto LABEL_108;
      default:
        goto LABEL_100;
    }
  }
}

char *sub_1486FB8(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 80);
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

      v4 = sub_16E5070(v10, v12, a3);
    }
  }

  if ((v6 & 8) == 0)
  {
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v15 = *(a1 + 96);
    *v4 = 33;
    *(v4 + 1) = v15;
    v4 += 9;
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 88);
  *v4 = 25;
  *(v4 + 1) = v14;
  v4 += 9;
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if ((v6 & 0x20) == 0)
  {
LABEL_16:
    v13 = v4;
    goto LABEL_30;
  }

LABEL_23:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v16 = *(a1 + 104);
  *v4 = 40;
  v4[1] = v16;
  if (v16 > 0x7F)
  {
    v4[1] = v16 | 0x80;
    v17 = v16 >> 7;
    v4[2] = v16 >> 7;
    v13 = v4 + 3;
    if (v16 >= 0x4000)
    {
      LOBYTE(v4) = v4[2];
      do
      {
        *(v13 - 1) = v4 | 0x80;
        LODWORD(v4) = v17 >> 7;
        *v13++ = v17 >> 7;
        v18 = v17 >> 14;
        v17 >>= 7;
      }

      while (v18);
    }
  }

  else
  {
    v13 = v4 + 2;
  }

LABEL_30:
  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v13)
    {
      v13 = sub_225EB68(a3, v13);
    }

    v20 = *(a1 + 108);
    *v13 = 48;
    v13[1] = v20;
    if (v20 > 0x7F)
    {
      v13[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v13[2] = v20 >> 7;
      v19 = v13 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v13) = v13[2];
        do
        {
          *(v19 - 1) = v13 | 0x80;
          LODWORD(v13) = v21 >> 7;
          *v19++ = v21 >> 7;
          v22 = v21 >> 14;
          v21 >>= 7;
        }

        while (v22);
      }
    }

    else
    {
      v19 = v13 + 2;
    }
  }

  else
  {
    v19 = v13;
  }

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v24 = *(a1 + 112);
    *v19 = 56;
    v19[1] = v24;
    if (v24 > 0x7F)
    {
      v19[1] = v24 | 0x80;
      v25 = v24 >> 7;
      v19[2] = v24 >> 7;
      v23 = v19 + 3;
      if (v24 >= 0x4000)
      {
        LOBYTE(v26) = v19[2];
        do
        {
          *(v23 - 1) = v26 | 0x80;
          v26 = v25 >> 7;
          *v23++ = v25 >> 7;
          v27 = v25 >> 14;
          v25 >>= 7;
        }

        while (v27);
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

  if (v6)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v28 = *(a1 + 64);
    *v23 = 66;
    v29 = *(v28 + 20);
    v23[1] = v29;
    if (v29 > 0x7F)
    {
      v30 = sub_19575D0(v29, v23 + 1);
    }

    else
    {
      v30 = v23 + 2;
    }

    v23 = sub_14857AC(v28, v30, a3);
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v32 = *(a1 + 116);
    *v23 = 72;
    v23[1] = v32;
    if (v32 > 0x7F)
    {
      v23[1] = v32 | 0x80;
      v33 = v32 >> 7;
      v23[2] = v32 >> 7;
      v31 = v23 + 3;
      if (v32 >= 0x4000)
      {
        LOBYTE(v23) = v23[2];
        do
        {
          *(v31 - 1) = v23 | 0x80;
          LODWORD(v23) = v33 >> 7;
          *v31++ = v33 >> 7;
          v34 = v33 >> 14;
          v33 >>= 7;
        }

        while (v34);
      }
    }

    else
    {
      v31 = v23 + 2;
    }
  }

  else
  {
    v31 = v23;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v35 = *(a1 + 72);
    *v31 = 90;
    v36 = *(v35 + 20);
    v31[1] = v36;
    if (v36 > 0x7F)
    {
      v37 = sub_19575D0(v36, v31 + 1);
    }

    else
    {
      v37 = v31 + 2;
    }

    v31 = sub_1486450(v35, v37, a3);
  }

  v38 = *(a1 + 48);
  if (v38 < 1)
  {
    v41 = v31;
  }

  else
  {
    for (j = 0; j != v38; ++j)
    {
      if (*a3 <= v31)
      {
        v31 = sub_225EB68(a3, v31);
      }

      v40 = *(*(a1 + 56) + 4 * j);
      *v31 = 96;
      v31[1] = v40;
      if (v40 > 0x7F)
      {
        v31[1] = v40 | 0x80;
        v42 = v40 >> 7;
        v31[2] = v40 >> 7;
        v41 = v31 + 3;
        if (v40 >= 0x4000)
        {
          LOBYTE(v31) = v31[2];
          do
          {
            *(v41 - 1) = v31 | 0x80;
            v31 = (v42 >> 7);
            *v41++ = v42 >> 7;
            v43 = v42 >> 14;
            v42 >>= 7;
          }

          while (v43);
        }
      }

      else
      {
        v41 = v31 + 2;
      }

      v31 = v41;
    }
  }

  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v41)
    {
      v41 = sub_225EB68(a3, v41);
    }

    v45 = *(a1 + 120);
    *v41 = 104;
    v41[1] = v45;
    if (v45 > 0x7F)
    {
      v41[1] = v45 | 0x80;
      v46 = v45 >> 7;
      v41[2] = v45 >> 7;
      v44 = v41 + 3;
      if (v45 >= 0x4000)
      {
        LOBYTE(v41) = v41[2];
        do
        {
          *(v44 - 1) = v41 | 0x80;
          LODWORD(v41) = v46 >> 7;
          *v44++ = v46 >> 7;
          v47 = v46 >> 14;
          v46 >>= 7;
        }

        while (v47);
      }
    }

    else
    {
      v44 = v41 + 2;
    }
  }

  else
  {
    v44 = v41;
  }

  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v44)
    {
      v44 = sub_225EB68(a3, v44);
    }

    v49 = *(a1 + 124);
    *v44 = 112;
    v44[1] = v49;
    if (v49 > 0x7F)
    {
      v44[1] = v49 | 0x80;
      v50 = v49 >> 7;
      v44[2] = v49 >> 7;
      v48 = v44 + 3;
      if (v49 >= 0x4000)
      {
        LOBYTE(v51) = v44[2];
        do
        {
          *(v48 - 1) = v51 | 0x80;
          v51 = v50 >> 7;
          *v48++ = v50 >> 7;
          v52 = v50 >> 14;
          v50 >>= 7;
        }

        while (v52);
      }
    }

    else
    {
      v48 = v44 + 2;
    }
  }

  else
  {
    v48 = v44;
  }

  v53 = *(a1 + 8);
  if ((v53 & 1) == 0)
  {
    return v48;
  }

  v55 = v53 & 0xFFFFFFFFFFFFFFFCLL;
  v56 = *(v55 + 31);
  if (v56 < 0)
  {
    v57 = *(v55 + 8);
    v56 = *(v55 + 16);
  }

  else
  {
    v57 = (v55 + 8);
  }

  if (*a3 - v48 >= v56)
  {
    v58 = v56;
    memcpy(v48, v57, v56);
    v48 += v58;
    return v48;
  }

  return sub_1957130(a3, v57, v56, v48);
}

uint64_t sub_1487644(uint64_t a1)
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

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 56) + 4 * v9);
      if (v11 < 0)
      {
        v12 = 10;
      }

      else
      {
        v12 = (9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6;
      }

      v10 += v12;
      ++v9;
    }

    while (v8 != v9);
  }

  else
  {
    v10 = 0;
  }

  v13 = v2 + v8 + v10;
  v14 = *(a1 + 16);
  if (v14)
  {
    if (v14)
    {
      v15 = sub_14858C4(*(a1 + 64));
      v13 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v14 & 2) != 0)
    {
      v16 = sub_14865CC(*(a1 + 72));
      v13 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v17 = v13 + 9;
    if ((v14 & 4) == 0)
    {
      v17 = v13;
    }

    if ((v14 & 8) != 0)
    {
      v17 += 9;
    }

    if ((v14 & 0x10) != 0)
    {
      v13 = v17 + 9;
    }

    else
    {
      v13 = v17;
    }

    if ((v14 & 0x20) != 0)
    {
      v13 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v14 & 0x40) == 0)
      {
LABEL_31:
        if ((v14 & 0x80) == 0)
        {
          goto LABEL_36;
        }

LABEL_32:
        v18 = *(a1 + 112);
        v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if (v18 >= 0)
        {
          v20 = v19;
        }

        else
        {
          v20 = 11;
        }

        v13 += v20;
        goto LABEL_36;
      }
    }

    else if ((v14 & 0x40) == 0)
    {
      goto LABEL_31;
    }

    v13 += ((9 * (__clz(*(a1 + 108) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

LABEL_36:
  if ((v14 & 0x700) == 0)
  {
    goto LABEL_41;
  }

  if ((v14 & 0x100) != 0)
  {
    v13 += ((9 * (__clz(*(a1 + 116) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v14 & 0x200) == 0)
    {
LABEL_39:
      if ((v14 & 0x400) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_39;
  }

  v13 += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v14 & 0x400) != 0)
  {
LABEL_40:
    v13 += ((9 * (__clz(*(a1 + 124) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_41:
  v21 = *(a1 + 8);
  if (v21)
  {
    v23 = v21 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v21 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    v13 += v24;
  }

  *(a1 + 20) = v13;
  return v13;
}

void sub_14878F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_11F1A54((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

  v12 = *(a2 + 16);
  if (v12)
  {
    if (v12)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 64);
      if (!v14)
      {
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_14BD268(v16);
        *(a1 + 64) = v14;
      }

      if (*(a2 + 64))
      {
        v17 = *(a2 + 64);
      }

      else
      {
        v17 = &off_2772770;
      }

      sub_1336380(v14, v17);
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

    *(a1 + 16) |= 2u;
    v18 = *(a1 + 72);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_14BD364(v20);
      *(a1 + 72) = v18;
    }

    if (*(a2 + 72))
    {
      v21 = *(a2 + 72);
    }

    else
    {
      v21 = &off_27727D0;
    }

    sub_148667C(v18, v21);
    if ((v12 & 4) == 0)
    {
LABEL_10:
      if ((v12 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_44;
    }

LABEL_43:
    *(a1 + 80) = *(a2 + 80);
    if ((v12 & 8) == 0)
    {
LABEL_11:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_45;
    }

LABEL_44:
    *(a1 + 88) = *(a2 + 88);
    if ((v12 & 0x10) == 0)
    {
LABEL_12:
      if ((v12 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_46;
    }

LABEL_45:
    *(a1 + 96) = *(a2 + 96);
    if ((v12 & 0x20) == 0)
    {
LABEL_13:
      if ((v12 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_47;
    }

LABEL_46:
    *(a1 + 104) = *(a2 + 104);
    if ((v12 & 0x40) == 0)
    {
LABEL_14:
      if ((v12 & 0x80) == 0)
      {
LABEL_16:
        *(a1 + 16) |= v12;
        goto LABEL_17;
      }

LABEL_15:
      *(a1 + 112) = *(a2 + 112);
      goto LABEL_16;
    }

LABEL_47:
    *(a1 + 108) = *(a2 + 108);
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  if ((v12 & 0x700) == 0)
  {
    goto LABEL_23;
  }

  if ((v12 & 0x100) == 0)
  {
    if ((v12 & 0x200) == 0)
    {
      goto LABEL_20;
    }

LABEL_50:
    *(a1 + 120) = *(a2 + 120);
    if ((v12 & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  *(a1 + 116) = *(a2 + 116);
  if ((v12 & 0x200) != 0)
  {
    goto LABEL_50;
  }

LABEL_20:
  if ((v12 & 0x400) != 0)
  {
LABEL_21:
    *(a1 + 124) = *(a2 + 124);
  }

LABEL_22:
  *(a1 + 16) |= v12;
LABEL_23:
  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1487B50(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_16E5370(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  result = sub_12B329C(*(a1 + 72) + 24);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1487BC8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E5D40;
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
  *(a1 + 120) = a2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = a2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = a2;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = a2;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a2;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 293) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  return a1;
}

void sub_1487C74(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1487CA4(uint64_t a1)
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

  sub_1487D8C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956ABC(a1 + 216);
  sub_1564D58((a1 + 192));
  sub_144D914((a1 + 168));
  sub_1564CD4((a1 + 144));
  sub_1564C50((a1 + 120));
  sub_1564BCC((a1 + 96));
  sub_1564410((a1 + 72));
  sub_144B648((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_1487D8C(uint64_t (***result)()))()
{
  if (result != &off_2772888)
  {
    v1 = result;
    v2 = result[29];
    if (v2)
    {
      sub_147B058(v2);
      operator delete();
    }

    v3 = v1[30];
    if (v3)
    {
      sub_147B8C0(v3);
      operator delete();
    }

    v4 = v1[31];
    if (v4)
    {
      sub_1483624(v4);
      operator delete();
    }

    v5 = v1[32];
    if (v5)
    {
      sub_1482618(v5);
      operator delete();
    }

    v6 = v1[33];
    if (v6)
    {
      sub_1484B3C(v6);
      operator delete();
    }

    result = v1[34];
    if (result)
    {
      sub_147B058(result);

      operator delete();
    }
  }

  return result;
}

void sub_1487E90(uint64_t a1)
{
  sub_1487CA4(a1);

  operator delete();
}

uint64_t sub_1487EC8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_148C3F4(v5);
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
      result = sub_16E979C(v8);
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
      result = sub_14A4824(v11);
      --v9;
    }

    while (v9);
    *(a1 + 104) = 0;
  }

  v12 = *(a1 + 128);
  if (v12 >= 1)
  {
    v13 = (*(a1 + 136) + 8);
    do
    {
      v14 = *v13++;
      result = sub_14A1624(v14);
      --v12;
    }

    while (v12);
    *(a1 + 128) = 0;
  }

  v15 = *(a1 + 152);
  if (v15 >= 1)
  {
    v16 = (*(a1 + 160) + 8);
    do
    {
      v17 = *v16++;
      result = sub_14A05E0(v17);
      --v15;
    }

    while (v15);
    *(a1 + 152) = 0;
  }

  v18 = *(a1 + 176);
  if (v18 >= 1)
  {
    v19 = (*(a1 + 184) + 8);
    do
    {
      v20 = *v19++;
      result = sub_149D390(v20);
      --v18;
    }

    while (v18);
    *(a1 + 176) = 0;
  }

  v21 = *(a1 + 200);
  if (v21 >= 1)
  {
    v22 = (*(a1 + 208) + 8);
    do
    {
      v23 = *v22++;
      result = sub_14985CC(v23);
      --v21;
    }

    while (v21);
    *(a1 + 200) = 0;
  }

  *(a1 + 216) = 0;
  v24 = *(a1 + 40);
  if ((v24 & 0x3F) == 0)
  {
    goto LABEL_40;
  }

  if (v24)
  {
    result = sub_147B104(*(a1 + 232));
  }

  if ((v24 & 2) != 0)
  {
    v25 = *(a1 + 240);
    v26 = *(v25 + 8);
    result = v25 + 8;
    *(result + 18) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v26)
    {
      result = sub_1957EA8(result);
    }
  }

  if ((v24 & 4) == 0)
  {
    if ((v24 & 8) == 0)
    {
      goto LABEL_37;
    }

LABEL_49:
    result = sub_14826D8(*(a1 + 256));
    if ((v24 & 0x10) == 0)
    {
LABEL_38:
      if ((v24 & 0x20) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    goto LABEL_50;
  }

  result = sub_1483850(*(a1 + 248));
  if ((v24 & 8) != 0)
  {
    goto LABEL_49;
  }

LABEL_37:
  if ((v24 & 0x10) == 0)
  {
    goto LABEL_38;
  }

LABEL_50:
  result = sub_1484C2C(*(a1 + 264));
  if ((v24 & 0x20) != 0)
  {
LABEL_39:
    result = sub_147B104(*(a1 + 272));
  }

LABEL_40:
  if ((v24 & 0xC0) != 0)
  {
    *(a1 + 280) = 0;
  }

  if ((v24 & 0xF00) != 0)
  {
    *(a1 + 288) = 0;
    *(a1 + 293) = 0;
  }

  v28 = *(a1 + 8);
  v27 = a1 + 8;
  *(v27 + 32) = 0;
  if (v28)
  {

    return sub_1957EA8(v27);
  }

  return result;
}

char *sub_14880DC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v101 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v101, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (2)
  {
    v8 = v101 + 1;
    v9 = *v101;
    if (*v101 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(v101, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = v101 + 2;
      }
    }

    v101 = v8;
    switch(v9 >> 3)
    {
      case 1u:
        if (v9 != 8)
        {
          goto LABEL_182;
        }

        v5 |= 0x40u;
        v13 = v8 + 1;
        v14 = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        v15 = *v13;
        v14 = v14 + (v15 << 7) - 128;
        if ((v15 & 0x80000000) == 0)
        {
          v13 = v8 + 2;
LABEL_13:
          v101 = v13;
          *(a1 + 280) = v14;
          goto LABEL_192;
        }

        v93 = sub_1958770(v8, v14);
        v101 = v93;
        *(a1 + 280) = v94;
        if (!v93)
        {
          goto LABEL_200;
        }

        goto LABEL_192;
      case 2u:
        if (v9 != 18)
        {
          goto LABEL_182;
        }

        v52 = v8 - 1;
        while (1)
        {
          v53 = (v52 + 1);
          v101 = v52 + 1;
          v54 = *(a1 + 64);
          if (v54 && (v55 = *(a1 + 56), v55 < *v54))
          {
            *(a1 + 56) = v55 + 1;
            v56 = *&v54[2 * v55 + 2];
          }

          else
          {
            v57 = sub_14BD738(*(a1 + 48));
            v56 = sub_19593CC(a1 + 48, v57);
            v53 = v101;
          }

          sub_220AD58(a3, v56, v53);
          v101 = v52;
          if (!v52)
          {
            goto LABEL_200;
          }

          if (*a3 <= v52 || *v52 != 18)
          {
            goto LABEL_192;
          }
        }

      case 3u:
        if (v9 != 24)
        {
          goto LABEL_182;
        }

        v43 = v8 + 1;
        v42 = *v8;
        if ((v42 & 0x8000000000000000) == 0)
        {
          goto LABEL_67;
        }

        v44 = *v43;
        v42 = (v44 << 7) + v42 - 128;
        if (v44 < 0)
        {
          v101 = sub_19587DC(v8, v42);
          if (!v101)
          {
            goto LABEL_200;
          }
        }

        else
        {
          v43 = v8 + 2;
LABEL_67:
          v101 = v43;
        }

        if (v42 > 6)
        {
          sub_1313740();
        }

        else
        {
          *(a1 + 40) |= 0x80u;
          *(a1 + 284) = v42;
        }

        goto LABEL_192;
      case 4u:
        if (v9 != 32)
        {
          goto LABEL_182;
        }

        v48 = v8 + 1;
        v47 = *v8;
        if ((v47 & 0x8000000000000000) == 0)
        {
          goto LABEL_80;
        }

        v49 = *v48;
        v47 = (v49 << 7) + v47 - 128;
        if (v49 < 0)
        {
          v101 = sub_19587DC(v8, v47);
          if (!v101)
          {
            goto LABEL_200;
          }
        }

        else
        {
          v48 = v8 + 2;
LABEL_80:
          v101 = v48;
        }

        if (v47 > 1)
        {
          sub_12E8500();
        }

        else
        {
          *(a1 + 40) |= 0x100u;
          *(a1 + 288) = v47;
        }

        goto LABEL_192;
      case 5u:
        if (v9 != 40)
        {
          goto LABEL_182;
        }

        v32 = v8 + 1;
        v31 = *v8;
        if ((v31 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        v33 = *v32;
        v31 = (v33 << 7) + v31 - 128;
        if (v33 < 0)
        {
          v101 = sub_19587DC(v8, v31);
          if (!v101)
          {
            goto LABEL_200;
          }
        }

        else
        {
          v32 = v8 + 2;
LABEL_44:
          v101 = v32;
        }

        if (v31 > 5)
        {
          sub_12E85B8();
        }

        else
        {
          *(a1 + 40) |= 0x200u;
          *(a1 + 292) = v31;
        }

        goto LABEL_192;
      case 6u:
        if (v9 != 50)
        {
          goto LABEL_182;
        }

        v66 = v8 - 1;
        while (1)
        {
          v67 = (v66 + 1);
          v101 = v66 + 1;
          v68 = *(a1 + 88);
          if (v68 && (v69 = *(a1 + 80), v69 < *v68))
          {
            *(a1 + 80) = v69 + 1;
            v70 = *&v68[2 * v69 + 2];
          }

          else
          {
            v71 = sub_16F5CD4(*(a1 + 72));
            v70 = sub_19593CC(a1 + 72, v71);
            v67 = v101;
          }

          v66 = sub_220D038(a3, v70, v67);
          v101 = v66;
          if (!v66)
          {
            goto LABEL_200;
          }

          if (*a3 <= v66 || *v66 != 50)
          {
            goto LABEL_192;
          }
        }

      case 7u:
        if (v9 != 56)
        {
          goto LABEL_182;
        }

        v5 |= 0x400u;
        v78 = v8 + 1;
        v79 = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_139;
        }

        v80 = *v78;
        v79 = v79 + (v80 << 7) - 128;
        if (v80 < 0)
        {
          v95 = sub_1958770(v8, v79);
          v101 = v95;
          *(a1 + 296) = v96;
          if (!v95)
          {
            goto LABEL_200;
          }
        }

        else
        {
          v78 = v8 + 2;
LABEL_139:
          v101 = v78;
          *(a1 + 296) = v79;
        }

        goto LABEL_192;
      case 8u:
        if (v9 != 66)
        {
          goto LABEL_182;
        }

        *(a1 + 40) |= 1u;
        v50 = *(a1 + 232);
        if (v50)
        {
          goto LABEL_146;
        }

        v51 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v7)
        {
          v51 = *v51;
        }

        v50 = sub_14BCA7C(v51);
        *(a1 + 232) = v50;
        goto LABEL_145;
      case 9u:
        if (v9 != 74)
        {
          goto LABEL_182;
        }

        *(a1 + 40) |= 2u;
        v88 = *(a1 + 240);
        if (!v88)
        {
          v89 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v89 = *v89;
          }

          v88 = sub_14BCAFC(v89);
          *(a1 + 240) = v88;
          v8 = v101;
        }

        v24 = sub_220E748(a3, v88, v8);
        goto LABEL_191;
      case 0xAu:
        if (v9 != 82)
        {
          goto LABEL_182;
        }

        *(a1 + 40) |= 4u;
        v40 = *(a1 + 248);
        if (!v40)
        {
          v41 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v41 = *v41;
          }

          v40 = sub_14BD0D0(v41);
          *(a1 + 248) = v40;
          v8 = v101;
        }

        v24 = sub_220E7D8(a3, v40, v8);
        goto LABEL_191;
      case 0xBu:
        if (v9 != 90)
        {
          goto LABEL_182;
        }

        v82 = v8 - 1;
        while (1)
        {
          v83 = (v82 + 1);
          v101 = v82 + 1;
          v84 = *(a1 + 112);
          if (v84 && (v85 = *(a1 + 104), v85 < *v84))
          {
            *(a1 + 104) = v85 + 1;
            v86 = *&v84[2 * v85 + 2];
          }

          else
          {
            v87 = sub_14BE3A4(*(a1 + 96));
            v86 = sub_19593CC(a1 + 96, v87);
            v83 = v101;
          }

          v82 = sub_220E868(a3, v86, v83);
          v101 = v82;
          if (!v82)
          {
            goto LABEL_200;
          }

          if (*a3 <= v82 || *v82 != 90)
          {
            goto LABEL_192;
          }
        }

      case 0xCu:
        if (v9 != 98)
        {
          goto LABEL_182;
        }

        v25 = v8 - 1;
        while (1)
        {
          v26 = (v25 + 1);
          v101 = v25 + 1;
          v27 = *(a1 + 136);
          if (v27 && (v28 = *(a1 + 128), v28 < *v27))
          {
            *(a1 + 128) = v28 + 1;
            v29 = *&v27[2 * v28 + 2];
          }

          else
          {
            v30 = sub_14BE0EC(*(a1 + 120));
            v29 = sub_19593CC(a1 + 120, v30);
            v26 = v101;
          }

          v25 = sub_220E8F8(a3, v29, v26);
          v101 = v25;
          if (!v25)
          {
            goto LABEL_200;
          }

          if (*a3 <= v25 || *v25 != 98)
          {
            goto LABEL_192;
          }
        }

      case 0xDu:
        if (v9 != 106)
        {
          goto LABEL_182;
        }

        v34 = v8 - 1;
        while (1)
        {
          v35 = (v34 + 1);
          v101 = v34 + 1;
          v36 = *(a1 + 160);
          if (v36 && (v37 = *(a1 + 152), v37 < *v36))
          {
            *(a1 + 152) = v37 + 1;
            v38 = *&v36[2 * v37 + 2];
          }

          else
          {
            sub_14BE058(*(a1 + 144));
            v38 = sub_19593CC(a1 + 144, v39);
            v35 = v101;
          }

          v34 = sub_220E988(a3, v38, v35);
          v101 = v34;
          if (!v34)
          {
            goto LABEL_200;
          }

          if (*a3 <= v34 || *v34 != 106)
          {
            goto LABEL_192;
          }
        }

      case 0xEu:
        if (v9 != 114)
        {
          goto LABEL_182;
        }

        v72 = v8 - 1;
        while (1)
        {
          v73 = (v72 + 1);
          v101 = v72 + 1;
          v74 = *(a1 + 184);
          if (v74 && (v75 = *(a1 + 176), v75 < *v74))
          {
            *(a1 + 176) = v75 + 1;
            v76 = *&v74[2 * v75 + 2];
          }

          else
          {
            v77 = sub_14BDE5C(*(a1 + 168));
            v76 = sub_19593CC(a1 + 168, v77);
            v73 = v101;
          }

          v72 = sub_21F6500(a3, v76, v73);
          v101 = v72;
          if (!v72)
          {
            goto LABEL_200;
          }

          if (*a3 <= v72 || *v72 != 114)
          {
            goto LABEL_192;
          }
        }

      case 0xFu:
        if (v9 != 122)
        {
          goto LABEL_182;
        }

        *(a1 + 40) |= 8u;
        v22 = *(a1 + 256);
        if (!v22)
        {
          v23 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v23 = *v23;
          }

          v22 = sub_14BCFFC(v23);
          *(a1 + 256) = v22;
          v8 = v101;
        }

        v24 = sub_220EA18(a3, v22, v8);
        goto LABEL_191;
      case 0x10u:
        if (v9 != 130)
        {
          goto LABEL_182;
        }

        *(a1 + 40) |= 0x10u;
        v45 = *(a1 + 264);
        if (!v45)
        {
          v46 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v46 = *v46;
          }

          v45 = sub_14BD174(v46);
          *(a1 + 264) = v45;
          v8 = v101;
        }

        v24 = sub_220EAA8(a3, v45, v8);
        goto LABEL_191;
      case 0x11u:
        if (v9 != 138)
        {
          goto LABEL_182;
        }

        v16 = v8 - 2;
        while (1)
        {
          v17 = (v16 + 2);
          v101 = v16 + 2;
          v18 = *(a1 + 208);
          if (v18 && (v19 = *(a1 + 200), v19 < *v18))
          {
            *(a1 + 200) = v19 + 1;
            v20 = *&v18[2 * v19 + 2];
          }

          else
          {
            sub_14BDC34(*(a1 + 192));
            v20 = sub_19593CC(a1 + 192, v21);
            v17 = v101;
          }

          v16 = sub_220EB38(a3, v20, v17);
          v101 = v16;
          if (!v16)
          {
            goto LABEL_200;
          }

          if (*a3 <= v16 || *v16 != 394)
          {
            goto LABEL_192;
          }
        }

      case 0x12u:
        if (v9 == 144)
        {
          v58 = v8 - 2;
          while (1)
          {
            v101 = v58 + 2;
            v59 = v58[2];
            v60 = v58 + 3;
            if (v59 < 0)
            {
              v61 = *v60;
              v62 = (v61 << 7) + v59;
              LODWORD(v59) = v62 - 128;
              if (v61 < 0)
              {
                v101 = sub_19587DC((v58 + 2), (v62 - 128));
                if (!v101)
                {
                  goto LABEL_200;
                }

                LODWORD(v59) = v65;
                goto LABEL_104;
              }

              v60 = v58 + 4;
            }

            v101 = v60;
LABEL_104:
            if (v59 > 1)
            {
              sub_13ED138();
            }

            else
            {
              v63 = *(a1 + 216);
              if (v63 == *(a1 + 220))
              {
                v64 = v63 + 1;
                sub_1958E5C((a1 + 216), v63 + 1);
                *(*(a1 + 224) + 4 * v63) = v59;
              }

              else
              {
                *(*(a1 + 224) + 4 * v63) = v59;
                v64 = v63 + 1;
              }

              *(a1 + 216) = v64;
            }

            v58 = v101;
            if (*a3 <= v101 || *v101 != 400)
            {
              goto LABEL_192;
            }
          }
        }

        if (v9 == 146)
        {
          *&v102 = a1 + 216;
          *(&v102 + 1) = sub_144E2D0;
          v103 = a1 + 8;
          v104 = 18;
          v24 = sub_1216588(a3, v8, &v102);
LABEL_191:
          v101 = v24;
          if (!v24)
          {
            goto LABEL_200;
          }

LABEL_192:
          if (sub_195ADC0(a3, &v101, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_182:
        if (v9)
        {
          v99 = (v9 & 7) == 4;
        }

        else
        {
          v99 = 1;
        }

        if (!v99)
        {
          if (v9 - 8000 > 0x647)
          {
            if (*v7)
            {
              v100 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v100 = sub_11F1920((a1 + 8));
              v8 = v101;
            }

            v24 = sub_1952690(v9, v100, v8, a3);
          }

          else
          {
            v24 = sub_19525AC((a1 + 16), v9, v8, &off_2772888, (a1 + 8), a3);
          }

          goto LABEL_191;
        }

        if (v8)
        {
          a3[10].i32[0] = v9 - 1;
        }

        else
        {
LABEL_200:
          v101 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return v101;
      case 0x13u:
        if (v9 != 154)
        {
          goto LABEL_182;
        }

        *(a1 + 40) |= 0x20u;
        v50 = *(a1 + 272);
        if (v50)
        {
          goto LABEL_146;
        }

        v81 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v7)
        {
          v81 = *v81;
        }

        v50 = sub_14BCA7C(v81);
        *(a1 + 272) = v50;
LABEL_145:
        v8 = v101;
LABEL_146:
        v24 = sub_21F7F98(a3, v50, v8);
        goto LABEL_191;
      case 0x14u:
        if (v9 != 160)
        {
          goto LABEL_182;
        }

        v5 |= 0x800u;
        v91 = v8 + 1;
        v90 = *v8;
        if ((v90 & 0x8000000000000000) == 0)
        {
          goto LABEL_167;
        }

        v92 = *v91;
        v90 = (v92 << 7) + v90 - 128;
        if (v92 < 0)
        {
          v97 = sub_19587DC(v8, v90);
          v101 = v97;
          *(a1 + 300) = v98 != 0;
          if (!v97)
          {
            goto LABEL_200;
          }
        }

        else
        {
          v91 = v8 + 2;
LABEL_167:
          v101 = v91;
          *(a1 + 300) = v90 != 0;
        }

        goto LABEL_192;
      default:
        goto LABEL_182;
    }
  }
}

char *sub_1488C14(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 280);
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
      v14 = *(v13 + 48);
      v6[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, v6 + 1);
      }

      else
      {
        v15 = v6 + 2;
      }

      v6 = sub_148CC30(v13, v15, a3);
    }
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v17 = *(a1 + 284);
    *v6 = 24;
    v6[1] = v17;
    if (v17 > 0x7F)
    {
      v6[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v6[2] = v17 >> 7;
      v16 = v6 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v16 - 1) = v6 | 0x80;
          v6 = (v18 >> 7);
          *v16++ = v18 >> 7;
          v19 = v18 >> 14;
          v18 >>= 7;
        }

        while (v19);
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

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v21 = *(a1 + 288);
    *v16 = 32;
    v16[1] = v21;
    if (v21 > 0x7F)
    {
      v16[1] = v21 | 0x80;
      v22 = v21 >> 7;
      v16[2] = v21 >> 7;
      v20 = v16 + 3;
      if (v21 >= 0x4000)
      {
        LOBYTE(v16) = v16[2];
        do
        {
          *(v20 - 1) = v16 | 0x80;
          v16 = (v22 >> 7);
          *v20++ = v22 >> 7;
          v23 = v22 >> 14;
          v22 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v20 = v16 + 2;
    }
  }

  else
  {
    v20 = v16;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v25 = *(a1 + 292);
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

  v29 = *(a1 + 80);
  if (v29)
  {
    for (j = 0; j != v29; ++j)
    {
      if (*a3 <= v24)
      {
        v24 = sub_225EB68(a3, v24);
      }

      v31 = *(*(a1 + 88) + 8 * j + 8);
      *v24 = 50;
      v32 = *(v31 + 44);
      v24[1] = v32;
      if (v32 > 0x7F)
      {
        v33 = sub_19575D0(v32, v24 + 1);
      }

      else
      {
        v33 = v24 + 2;
      }

      v24 = sub_16E9CA0(v31, v33, a3);
    }
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v35 = *(a1 + 296);
    *v24 = 56;
    v24[1] = v35;
    if (v35 > 0x7F)
    {
      v24[1] = v35 | 0x80;
      v36 = v35 >> 7;
      v24[2] = v35 >> 7;
      v34 = v24 + 3;
      if (v35 >= 0x4000)
      {
        LOBYTE(v24) = v24[2];
        do
        {
          *(v34 - 1) = v24 | 0x80;
          LODWORD(v24) = v36 >> 7;
          *v34++ = v36 >> 7;
          v37 = v36 >> 14;
          v36 >>= 7;
        }

        while (v37);
      }
    }

    else
    {
      v34 = v24 + 2;
    }
  }

  else
  {
    v34 = v24;
  }

  if (v5)
  {
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v38 = *(a1 + 232);
    *v34 = 66;
    v39 = *(v38 + 20);
    v34[1] = v39;
    if (v39 > 0x7F)
    {
      v40 = sub_19575D0(v39, v34 + 1);
    }

    else
    {
      v40 = v34 + 2;
    }

    v34 = sub_147B444(v38, v40, a3);
    if ((v5 & 2) == 0)
    {
LABEL_64:
      if ((v5 & 4) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_78;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_64;
  }

  if (*a3 <= v34)
  {
    v34 = sub_225EB68(a3, v34);
  }

  v41 = *(a1 + 240);
  *v34 = 74;
  v42 = *(v41 + 20);
  v34[1] = v42;
  if (v42 > 0x7F)
  {
    v43 = sub_19575D0(v42, v34 + 1);
  }

  else
  {
    v43 = v34 + 2;
  }

  v34 = sub_147BC00(v41, v43, a3);
  if ((v5 & 4) != 0)
  {
LABEL_78:
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v44 = *(a1 + 248);
    *v34 = 82;
    v45 = *(v44 + 20);
    v34[1] = v45;
    if (v45 > 0x7F)
    {
      v46 = sub_19575D0(v45, v34 + 1);
    }

    else
    {
      v46 = v34 + 2;
    }

    v34 = sub_1483E54(v44, v46, a3);
  }

LABEL_84:
  v47 = *(a1 + 104);
  if (v47)
  {
    for (k = 0; k != v47; ++k)
    {
      if (*a3 <= v34)
      {
        v34 = sub_225EB68(a3, v34);
      }

      v49 = *(*(a1 + 112) + 8 * k + 8);
      *v34 = 90;
      v50 = *(v49 + 20);
      v34[1] = v50;
      if (v50 > 0x7F)
      {
        v51 = sub_19575D0(v50, v34 + 1);
      }

      else
      {
        v51 = v34 + 2;
      }

      v34 = sub_14A4BF0(v49, v51, a3);
    }
  }

  v52 = *(a1 + 128);
  if (v52)
  {
    for (m = 0; m != v52; ++m)
    {
      if (*a3 <= v34)
      {
        v34 = sub_225EB68(a3, v34);
      }

      v54 = *(*(a1 + 136) + 8 * m + 8);
      *v34 = 98;
      v55 = *(v54 + 20);
      v34[1] = v55;
      if (v55 > 0x7F)
      {
        v56 = sub_19575D0(v55, v34 + 1);
      }

      else
      {
        v56 = v34 + 2;
      }

      v34 = sub_14A196C(v54, v56, a3);
    }
  }

  v57 = *(a1 + 152);
  if (v57)
  {
    for (n = 0; n != v57; ++n)
    {
      if (*a3 <= v34)
      {
        v34 = sub_225EB68(a3, v34);
      }

      v59 = *(*(a1 + 160) + 8 * n + 8);
      *v34 = 106;
      v60 = *(v59 + 20);
      v34[1] = v60;
      if (v60 > 0x7F)
      {
        v61 = sub_19575D0(v60, v34 + 1);
      }

      else
      {
        v61 = v34 + 2;
      }

      v34 = sub_14A0B70(v59, v61, a3);
    }
  }

  v62 = *(a1 + 176);
  if (v62)
  {
    for (ii = 0; ii != v62; ++ii)
    {
      if (*a3 <= v34)
      {
        v34 = sub_225EB68(a3, v34);
      }

      v64 = *(*(a1 + 184) + 8 * ii + 8);
      *v34 = 114;
      v65 = *(v64 + 44);
      v34[1] = v65;
      if (v65 > 0x7F)
      {
        v66 = sub_19575D0(v65, v34 + 1);
      }

      else
      {
        v66 = v34 + 2;
      }

      v34 = sub_149DD64(v64, v66, a3);
    }
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v67 = *(a1 + 256);
    *v34 = 122;
    v68 = *(v67 + 44);
    v34[1] = v68;
    if (v68 > 0x7F)
    {
      v69 = sub_19575D0(v68, v34 + 1);
    }

    else
    {
      v69 = v34 + 2;
    }

    v34 = sub_1482ACC(v67, v69, a3);
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v70 = *(a1 + 264);
    *v34 = 386;
    v71 = *(v70 + 20);
    v34[2] = v71;
    if (v71 > 0x7F)
    {
      v72 = sub_19575D0(v71, v34 + 2);
    }

    else
    {
      v72 = v34 + 3;
    }

    v34 = sub_1484DCC(v70, v72, a3);
  }

  v73 = *(a1 + 200);
  if (v73)
  {
    for (jj = 0; jj != v73; ++jj)
    {
      if (*a3 <= v34)
      {
        v34 = sub_225EB68(a3, v34);
      }

      v75 = *(*(a1 + 208) + 8 * jj + 8);
      *v34 = 394;
      v76 = *(v75 + 20);
      v34[2] = v76;
      if (v76 > 0x7F)
      {
        v77 = sub_19575D0(v76, v34 + 2);
      }

      else
      {
        v77 = v34 + 3;
      }

      v34 = sub_149975C(v75, v77, a3);
    }
  }

  v78 = *(a1 + 216);
  if (v78 < 1)
  {
    v81 = v34;
  }

  else
  {
    for (kk = 0; kk != v78; ++kk)
    {
      if (*a3 <= v34)
      {
        v34 = sub_225EB68(a3, v34);
      }

      v80 = *(*(a1 + 224) + 4 * kk);
      *v34 = 400;
      v34[2] = v80;
      if (v80 > 0x7F)
      {
        v34[2] = v80 | 0x80;
        v82 = v80 >> 7;
        v34[3] = v80 >> 7;
        v81 = v34 + 4;
        if (v80 >= 0x4000)
        {
          LOBYTE(v34) = v34[3];
          do
          {
            *(v81 - 1) = v34 | 0x80;
            v34 = (v82 >> 7);
            *v81++ = v82 >> 7;
            v83 = v82 >> 14;
            v82 >>= 7;
          }

          while (v83);
        }
      }

      else
      {
        v81 = v34 + 3;
      }

      v34 = v81;
    }
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v81)
    {
      v81 = sub_225EB68(a3, v81);
    }

    v84 = *(a1 + 272);
    *v81 = 410;
    v85 = *(v84 + 20);
    v81[2] = v85;
    if (v85 > 0x7F)
    {
      v86 = sub_19575D0(v85, v81 + 2);
    }

    else
    {
      v86 = v81 + 3;
    }

    v81 = sub_147B444(v84, v86, a3);
  }

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v81)
    {
      v81 = sub_225EB68(a3, v81);
    }

    v87 = *(a1 + 300);
    *v81 = 416;
    v81[2] = v87;
    v81 += 3;
  }

  if (*(a1 + 26))
  {
    v81 = sub_1953428(a1 + 16, 1000, 1201, v81, a3);
  }

  v88 = *(a1 + 8);
  if ((v88 & 1) == 0)
  {
    return v81;
  }

  v90 = v88 & 0xFFFFFFFFFFFFFFFCLL;
  v91 = *(v90 + 31);
  if (v91 < 0)
  {
    v92 = *(v90 + 8);
    v91 = *(v90 + 16);
  }

  else
  {
    v92 = (v90 + 8);
  }

  if ((*a3 - v81) >= v91)
  {
    v93 = v91;
    memcpy(v81, v92, v91);
    v81 += v93;
    return v81;
  }

  return sub_1957130(a3, v92, v91, v81);
}

uint64_t sub_1489674(uint64_t a1)
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
      v9 = sub_148EB94(v8);
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
      v16 = sub_16E9F88(v15);
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
      v23 = sub_14A4EC0(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(a1 + 128);
  v25 = v18 + v24;
  v26 = *(a1 + 136);
  if (v26)
  {
    v27 = (v26 + 8);
  }

  else
  {
    v27 = 0;
  }

  if (v24)
  {
    v28 = 8 * v24;
    do
    {
      v29 = *v27++;
      v30 = sub_14A1BA4(v29);
      v25 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6);
      v28 -= 8;
    }

    while (v28);
  }

  v31 = *(a1 + 152);
  v32 = v25 + v31;
  v33 = *(a1 + 160);
  if (v33)
  {
    v34 = (v33 + 8);
  }

  else
  {
    v34 = 0;
  }

  if (v31)
  {
    v35 = 8 * v31;
    do
    {
      v36 = *v34++;
      v37 = sub_14A0FE0(v36);
      v32 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6);
      v35 -= 8;
    }

    while (v35);
  }

  v38 = *(a1 + 176);
  v39 = v32 + v38;
  v40 = *(a1 + 184);
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
      v44 = sub_149E4E4(v43);
      v39 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6);
      v42 -= 8;
    }

    while (v42);
  }

  v45 = *(a1 + 200);
  v46 = v39 + 2 * v45;
  v47 = *(a1 + 208);
  if (v47)
  {
    v48 = (v47 + 8);
  }

  else
  {
    v48 = 0;
  }

  if (v45)
  {
    v49 = 8 * v45;
    do
    {
      v50 = *v48++;
      v51 = sub_149A624(v50);
      v46 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6);
      v49 -= 8;
    }

    while (v49);
  }

  v52 = *(a1 + 216);
  if (v52)
  {
    v53 = 0;
    v54 = 0;
    do
    {
      v55 = *(*(a1 + 224) + 4 * v53);
      if (v55 < 0)
      {
        v56 = 10;
      }

      else
      {
        v56 = (9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6;
      }

      v54 += v56;
      ++v53;
    }

    while (v52 != v53);
  }

  else
  {
    v54 = 0;
  }

  v57 = v46 + 2 * v52 + v54;
  v58 = *(a1 + 40);
  if (v58)
  {
    if (v58)
    {
      v59 = sub_147B788(*(a1 + 232));
      v57 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v58 & 2) == 0)
      {
LABEL_54:
        if ((v58 & 4) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_63;
      }
    }

    else if ((v58 & 2) == 0)
    {
      goto LABEL_54;
    }

    v60 = sub_147BD5C(*(a1 + 240));
    v57 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v58 & 4) == 0)
    {
LABEL_55:
      if ((v58 & 8) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_64;
    }

LABEL_63:
    v61 = sub_14843A0(*(a1 + 248));
    v57 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v58 & 8) == 0)
    {
LABEL_56:
      if ((v58 & 0x10) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_65;
    }

LABEL_64:
    v62 = sub_1482DBC(*(a1 + 256));
    v57 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v58 & 0x10) == 0)
    {
LABEL_57:
      if ((v58 & 0x20) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_66;
    }

LABEL_65:
    v63 = sub_1484ED8(*(a1 + 264));
    v57 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v58 & 0x20) == 0)
    {
LABEL_58:
      if ((v58 & 0x40) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_67;
    }

LABEL_66:
    v64 = sub_147B788(*(a1 + 272));
    v57 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v58 & 0x40) == 0)
    {
LABEL_59:
      if ((v58 & 0x80) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_68;
    }

LABEL_67:
    v57 += ((9 * (__clz(*(a1 + 280) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v58 & 0x80) == 0)
    {
      goto LABEL_72;
    }

LABEL_68:
    v65 = *(a1 + 284);
    if (v65 < 0)
    {
      v66 = 11;
    }

    else
    {
      v66 = ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v57 += v66;
  }

LABEL_72:
  if ((v58 & 0xF00) == 0)
  {
    goto LABEL_79;
  }

  if ((v58 & 0x100) != 0)
  {
    v69 = *(a1 + 288);
    if (v69 < 0)
    {
      v70 = 11;
    }

    else
    {
      v70 = ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v57 += v70;
    if ((v58 & 0x200) == 0)
    {
LABEL_75:
      if ((v58 & 0x400) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }
  }

  else if ((v58 & 0x200) == 0)
  {
    goto LABEL_75;
  }

  v71 = *(a1 + 292);
  if (v71 < 0)
  {
    v72 = 11;
  }

  else
  {
    v72 = ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v57 += v72;
  if ((v58 & 0x400) != 0)
  {
LABEL_76:
    v57 += ((9 * (__clz(*(a1 + 296) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_77:
  if ((v58 & 0x800) != 0)
  {
    v57 += 3;
  }

LABEL_79:
  v67 = *(a1 + 8);
  if (v67)
  {
    v73 = v67 & 0xFFFFFFFFFFFFFFFCLL;
    v74 = *((v67 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v74 < 0)
    {
      v74 = *(v73 + 16);
    }

    v57 += v74;
  }

  *(a1 + 44) = v57;
  return v57;
}

void sub_1489BB4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144C6DC((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_156618C((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
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
    sub_1566980((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 128);
  if (v19)
  {
    v20 = *(a2 + 136);
    v21 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_1566A0C((a1 + 120), v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
    v22 = *(a1 + 128) + v19;
    *(a1 + 128) = v22;
    v23 = *(a1 + 136);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 152);
  if (v24)
  {
    v25 = *(a2 + 160);
    v26 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_1566A98((a1 + 144), v26, (v25 + 8), v24, **(a1 + 160) - *(a1 + 152));
    v27 = *(a1 + 152) + v24;
    *(a1 + 152) = v27;
    v28 = *(a1 + 160);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 176);
  if (v29)
  {
    v30 = *(a2 + 184);
    v31 = sub_19592E8(a1 + 168, *(a2 + 176));
    sub_144DA24((a1 + 168), v31, (v30 + 8), v29, **(a1 + 184) - *(a1 + 176));
    v32 = *(a1 + 176) + v29;
    *(a1 + 176) = v32;
    v33 = *(a1 + 184);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 200);
  if (v34)
  {
    v35 = *(a2 + 208);
    v36 = sub_19592E8(a1 + 192, *(a2 + 200));
    sub_1566B24((a1 + 192), v36, (v35 + 8), v34, **(a1 + 208) - *(a1 + 200));
    v37 = *(a1 + 200) + v34;
    *(a1 + 200) = v37;
    v38 = *(a1 + 208);
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  v39 = *(a2 + 216);
  if (v39)
  {
    v40 = *(a1 + 216);
    sub_1958E5C((a1 + 216), v40 + v39);
    v41 = *(a1 + 224);
    *(a1 + 216) += *(a2 + 216);
    memcpy((v41 + 4 * v40), *(a2 + 224), 4 * *(a2 + 216));
  }

  v42 = *(a2 + 40);
  if (v42)
  {
    if (v42)
    {
      *(a1 + 40) |= 1u;
      v44 = *(a1 + 232);
      if (!v44)
      {
        v45 = *(a1 + 8);
        v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
        if (v45)
        {
          v46 = *v46;
        }

        v44 = sub_14BCA7C(v46);
        *(a1 + 232) = v44;
      }

      if (*(a2 + 232))
      {
        v47 = *(a2 + 232);
      }

      else
      {
        v47 = &off_2772380;
      }

      sub_129DA38(v44, v47);
      if ((v42 & 2) == 0)
      {
LABEL_27:
        if ((v42 & 4) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_62;
      }
    }

    else if ((v42 & 2) == 0)
    {
      goto LABEL_27;
    }

    *(a1 + 40) |= 2u;
    v48 = *(a1 + 240);
    if (!v48)
    {
      v49 = *(a1 + 8);
      v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
      if (v49)
      {
        v50 = *v50;
      }

      v48 = sub_14BCAFC(v50);
      *(a1 + 240) = v48;
    }

    if (*(a2 + 240))
    {
      v51 = *(a2 + 240);
    }

    else
    {
      v51 = &off_27723B0;
    }

    sub_135B6B4(v48, v51);
    if ((v42 & 4) == 0)
    {
LABEL_28:
      if ((v42 & 8) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_70;
    }

LABEL_62:
    *(a1 + 40) |= 4u;
    v52 = *(a1 + 248);
    if (!v52)
    {
      v53 = *(a1 + 8);
      v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
      if (v53)
      {
        v54 = *v54;
      }

      v52 = sub_14BD0D0(v54);
      *(a1 + 248) = v52;
    }

    if (*(a2 + 248))
    {
      v55 = *(a2 + 248);
    }

    else
    {
      v55 = &off_27726B0;
    }

    sub_148465C(v52, v55);
    if ((v42 & 8) == 0)
    {
LABEL_29:
      if ((v42 & 0x10) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_78;
    }

LABEL_70:
    *(a1 + 40) |= 8u;
    v56 = *(a1 + 256);
    if (!v56)
    {
      v57 = *(a1 + 8);
      v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
      if (v57)
      {
        v58 = *v58;
      }

      v56 = sub_14BCFFC(v58);
      *(a1 + 256) = v56;
    }

    if (*(a2 + 256))
    {
      v59 = *(a2 + 256);
    }

    else
    {
      v59 = &off_2772638;
    }

    sub_1482F1C(v56, v59);
    if ((v42 & 0x10) == 0)
    {
LABEL_30:
      if ((v42 & 0x20) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_86;
    }

LABEL_78:
    *(a1 + 40) |= 0x10u;
    v60 = *(a1 + 264);
    if (!v60)
    {
      v61 = *(a1 + 8);
      v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
      if (v61)
      {
        v62 = *v62;
      }

      v60 = sub_14BD174(v62);
      *(a1 + 264) = v60;
    }

    if (*(a2 + 264))
    {
      v63 = *(a2 + 264);
    }

    else
    {
      v63 = &off_2772730;
    }

    sub_1484F58(v60, v63);
    if ((v42 & 0x20) == 0)
    {
LABEL_31:
      if ((v42 & 0x40) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_94;
    }

LABEL_86:
    *(a1 + 40) |= 0x20u;
    v64 = *(a1 + 272);
    if (!v64)
    {
      v65 = *(a1 + 8);
      v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
      if (v65)
      {
        v66 = *v66;
      }

      v64 = sub_14BCA7C(v66);
      *(a1 + 272) = v64;
    }

    if (*(a2 + 272))
    {
      v67 = *(a2 + 272);
    }

    else
    {
      v67 = &off_2772380;
    }

    sub_129DA38(v64, v67);
    if ((v42 & 0x40) == 0)
    {
LABEL_32:
      if ((v42 & 0x80) == 0)
      {
LABEL_34:
        *(a1 + 40) |= v42;
        goto LABEL_35;
      }

LABEL_33:
      *(a1 + 284) = *(a2 + 284);
      goto LABEL_34;
    }

LABEL_94:
    *(a1 + 280) = *(a2 + 280);
    if ((v42 & 0x80) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_35:
  if ((v42 & 0xF00) == 0)
  {
    goto LABEL_42;
  }

  if ((v42 & 0x100) != 0)
  {
    *(a1 + 288) = *(a2 + 288);
    if ((v42 & 0x200) == 0)
    {
LABEL_38:
      if ((v42 & 0x400) == 0)
      {
        goto LABEL_39;
      }

LABEL_98:
      *(a1 + 296) = *(a2 + 296);
      if ((v42 & 0x800) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }
  }

  else if ((v42 & 0x200) == 0)
  {
    goto LABEL_38;
  }

  *(a1 + 292) = *(a2 + 292);
  if ((v42 & 0x400) != 0)
  {
    goto LABEL_98;
  }

LABEL_39:
  if ((v42 & 0x800) != 0)
  {
LABEL_40:
    *(a1 + 300) = *(a2 + 300);
  }

LABEL_41:
  *(a1 + 40) |= v42;
LABEL_42:
  sub_225EA0C(a1 + 16, a2 + 16);
  v43 = *(a2 + 8);
  if (v43)
  {

    sub_1957EF4((a1 + 8), (v43 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_148A14C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (!result)
  {
    return result;
  }

  v3 = *(a1 + 56);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    v5 = sub_1490E5C(*(*(a1 + 64) + 8 * v3));
    v3 = v4;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 80);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = sub_16EA33C(*(*(a1 + 88) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_148A2D8(a1 + 96);
  if (!result)
  {
    return result;
  }

  result = sub_12D45E0(a1 + 120);
  if (!result)
  {
    return result;
  }

  v9 = *(a1 + 152);
  while (v9 >= 1)
  {
    v10 = v9 - 1;
    v11 = sub_14A14B0(*(*(a1 + 160) + 8 * v9));
    result = 0;
    v9 = v10;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  v12 = *(a1 + 176);
  while (v12 >= 1)
  {
    v13 = v12 - 1;
    v14 = sub_149EC98(*(*(a1 + 184) + 8 * v12));
    result = 0;
    v12 = v13;
    if ((v14 & 1) == 0)
    {
      return result;
    }
  }

  v15 = *(a1 + 200);
  while (v15 >= 1)
  {
    v16 = v15 - 1;
    v17 = sub_149B3A0(*(*(a1 + 208) + 8 * v15));
    result = 0;
    v15 = v16;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  v18 = *(a1 + 40);
  if ((v18 & 4) != 0)
  {
    result = sub_1484A28(*(a1 + 248));
    if (!result)
    {
      return result;
    }

    v18 = *(a1 + 40);
  }

  if ((v18 & 8) != 0)
  {
    v20 = *(a1 + 256);
    result = sub_195228C(v20 + 16);
    if (!result)
    {
      return result;
    }

    result = sub_1483078(v20 + 48);
    if (!result)
    {
      return result;
    }

    if ((*(a1 + 40) & 0x10) != 0)
    {
      goto LABEL_30;
    }

    return 1;
  }

  if ((v18 & 0x10) == 0)
  {
    return 1;
  }

LABEL_30:
  v19 = *(a1 + 264);
  if ((*(v19 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_147D40C(*(v19 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL sub_148A2D8(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(*(a1 + 16) + 8 * v2);
    if (!sub_12B329C(v4 + 24))
    {
      break;
    }

    --v2;
  }

  while (sub_1483078(v4 + 48));
  return v3 < 1;
}

uint64_t sub_148A34C(uint64_t a1)
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

  if (a1 != &off_27729B8 && *(a1 + 48))
  {
    sub_16E9760();
    operator delete();
  }

  if (*(a1 + 8))
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_156417C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_148A410(uint64_t a1)
{
  sub_148A34C(a1);

  operator delete();
}

uint64_t sub_148A448(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1469288(v4);
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
      result = sub_16E979C(*(v1 + 48));
    }

    *(v1 + 56) = -1;
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

char *sub_148A4E8(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 == 3)
    {
      break;
    }

    if (v11 != 2)
    {
      if (v11 != 1 || v8 != 10)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v25 = *(a1 + 48);
      if (!v25)
      {
        v26 = *(a1 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        v25 = sub_16F5CD4(v27);
        *(a1 + 48) = v25;
        v7 = v30;
      }

      v16 = sub_220D038(a3, v25, v7);
LABEL_38:
      v30 = v16;
      if (!v16)
      {
        goto LABEL_50;
      }

      goto LABEL_43;
    }

    if (v8 != 16)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    LODWORD(v17) = *v7;
    if ((v17 & 0x80000000) == 0)
    {
      v18 = v7 + 1;
LABEL_42:
      v30 = v18;
      *(a1 + 56) = v17;
      goto LABEL_43;
    }

    v17 = (v7[1] << 7) + v17 - 128;
    if ((v7[1] & 0x80000000) == 0)
    {
      v18 = v7 + 2;
      goto LABEL_42;
    }

    v28 = sub_19587DC(v7, v17);
    v30 = v28;
    *(a1 + 56) = v29;
    if (!v28)
    {
      goto LABEL_50;
    }

LABEL_43:
    if (sub_195ADC0(a3, &v30, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    v19 = v7 - 1;
    while (1)
    {
      v20 = (v19 + 1);
      v30 = v19 + 1;
      v21 = *(a1 + 40);
      if (v21 && (v22 = *(a1 + 32), v22 < *v21))
      {
        *(a1 + 32) = v22 + 1;
        v23 = *&v21[2 * v22 + 2];
      }

      else
      {
        v24 = sub_14BBAAC(*(a1 + 24));
        v23 = sub_19593CC(a1 + 24, v24);
        v20 = v30;
      }

      v19 = sub_220D278(a3, v23, v20);
      v30 = v19;
      if (!v19)
      {
        goto LABEL_50;
      }

      if (*a3 <= v19 || *v19 != 26)
      {
        goto LABEL_43;
      }
    }
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
      v7 = v30;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_38;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_50:
  v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

char *sub_148A758(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 48);
    *__dst = 10;
    v7 = *(v6 + 44);
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, __dst + 1);
    }

    else
    {
      v8 = __dst + 2;
    }

    __dst = sub_16E9CA0(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 56);
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

  v14 = *(a1 + 32);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= v9)
      {
        v9 = sub_225EB68(a3, v9);
      }

      v16 = *(*(a1 + 40) + 8 * i + 8);
      *v9 = 26;
      v17 = *(v16 + 20);
      v9[1] = v17;
      if (v17 > 0x7F)
      {
        v18 = sub_19575D0(v17, v9 + 1);
      }

      else
      {
        v18 = v9 + 2;
      }

      v9 = sub_1469560(v16, v18, a3);
    }
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v9;
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

  if (*a3 - v9 >= v22)
  {
    v24 = v22;
    memcpy(v9, v23, v22);
    v9 += v24;
    return v9;
  }

  return sub_1957130(a3, v23, v22, v9);
}

uint64_t sub_148A980(uint64_t a1)
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
      v7 = sub_146981C(v6);
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
      v9 = sub_16E9F88(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = *(a1 + 56);
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

    v2 += v15;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_148AA98(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1565F00((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

        v10 = sub_16F5CD4(v12);
        *(a1 + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_277E7C0;
      }

      sub_16EA1A8(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 56) = *(a2 + 56);
    }

    *(a1 + 16) |= v9;
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_148ABC4(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16EA33C(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_148AC04(uint64_t a1)
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
  if (a1 != &off_27729F8)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_148ACC4(uint64_t a1)
{
  sub_148AC04(a1);

  operator delete();
}

uint64_t sub_148ACFC(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  if (*(result + 16))
  {
    result = sub_144E5CC(*(result + 40));
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

char *sub_148AD5C(uint64_t a1, char *a2, int32x2_t *a3)
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
      if (v7 == 16)
      {
        v15 = v6 - 1;
        while (1)
        {
          v26 = v15 + 1;
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

          v26 = v15;
          v19 = *(a1 + 24);
          if (v19 == *(a1 + 28))
          {
            v20 = v19 + 1;
            sub_1958E5C((a1 + 24), v19 + 1);
            *(*(a1 + 32) + 4 * v19) = v16;
            v15 = v26;
          }

          else
          {
            *(*(a1 + 32) + 4 * v19) = v16;
            v20 = v19 + 1;
          }

          *(a1 + 24) = v20;
          if (!v15)
          {
            return 0;
          }

          if (*a3 <= v15 || *v15 != 16)
          {
            goto LABEL_39;
          }
        }
      }

      if (v7 == 18)
      {
        v14 = sub_1958918((a1 + 24), v6, a3);
        goto LABEL_38;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 40);
      if (!v21)
      {
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        sub_14BAE64(v23);
        v21 = v24;
        *(a1 + 40) = v24;
        v6 = v26;
      }

      v14 = sub_22095B8(a3, v21, v6);
      goto LABEL_38;
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

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_38:
    v26 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_39:
    ;
  }

  return v26;
}

char *sub_148AF94(uint64_t a1, char *a2, unint64_t *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v5 = *(a1 + 40);
    *a2 = 10;
    v6 = *(v5 + 20);
    a2[1] = v6;
    if (v6 > 0x7F)
    {
      v7 = sub_19575D0(v6, a2 + 1);
    }

    else
    {
      v7 = a2 + 2;
    }

    a2 = sub_14589F4(v5, v7, a3);
  }

  v8 = *(a1 + 24);
  if (v8 < 1)
  {
    v11 = a2;
  }

  else
  {
    for (i = 0; i != v8; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v10 = *(*(a1 + 32) + 4 * i);
      *a2 = 16;
      a2[1] = v10;
      if (v10 > 0x7F)
      {
        a2[1] = v10 | 0x80;
        v12 = v10 >> 7;
        a2[2] = v10 >> 7;
        v11 = a2 + 3;
        if (v10 >= 0x4000)
        {
          LOBYTE(v13) = a2[2];
          do
          {
            *(v11 - 1) = v13 | 0x80;
            v13 = v12 >> 7;
            *v11++ = v12 >> 7;
            v14 = v12 >> 14;
            v12 >>= 7;
          }

          while (v14);
        }
      }

      else
      {
        v11 = a2 + 2;
      }

      a2 = v11;
    }
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

  if ((*a3 - v11) >= v18)
  {
    v20 = v18;
    memcpy(v11, v19, v18);
    v11 += v20;
    return v11;
  }

  return sub_1957130(a3, v19, v18, v11);
}

uint64_t sub_148B14C(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 24)) + *(a1 + 24);
  if (*(a1 + 16))
  {
    v3 = sub_1458DB4(*(a1 + 40));
    v2 += v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v2 += v7;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_148B1DC(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_148B21C(void *a1)
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

void sub_148B290(void *a1)
{
  sub_148B21C(a1);

  operator delete();
}

uint64_t sub_148B2C8(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
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

char *sub_148B2EC(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
    v15 = v7 + 1;
    v16 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    v17 = *v15;
    v16 = v16 + (v17 << 7) - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v15 = v7 + 2;
LABEL_24:
      v25 = v15;
      *(a1 + 28) = v16;
      goto LABEL_29;
    }

    v21 = sub_1958770(v7, v16);
    v25 = v21;
    *(a1 + 28) = v22;
    if (!v21)
    {
      goto LABEL_38;
    }

LABEL_29:
    if (sub_195ADC0(a3, &v25, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 8)
  {
    v5 |= 1u;
    v18 = v7 + 1;
    v19 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v18;
    v19 = v19 + (v20 << 7) - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_28:
      v25 = v18;
      *(a1 + 24) = v19;
      goto LABEL_29;
    }

    v23 = sub_1958770(v7, v19);
    v25 = v23;
    *(a1 + 24) = v24;
    if (!v23)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
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
      v7 = v25;
    }

    v25 = sub_1952690(v8, v14, v7, a3);
    if (!v25)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_38:
  v25 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v25;
}

char *sub_148B4D0(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_148B680(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_8;
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

uint64_t sub_148B734(uint64_t a1)
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

  if (a1 != &off_2772A28 && *(a1 + 24))
  {
    sub_16E9760();
    operator delete();
  }

  if (*(a1 + 8))
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_148B7EC(uint64_t a1)
{
  sub_148B734(a1);

  operator delete();
}

unsigned __int8 *sub_148B824(unsigned __int8 *result)
{
  v1 = result;
  if (result[16])
  {
    result = sub_16E979C(*(result + 3));
  }

  v3 = v1[8];
  v2 = v1 + 8;
  *(v2 + 6) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_148B884(uint64_t a1, char *a2, int32x2_t *a3)
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
    v16 = v7 + 1;
    v17 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    v18 = *v16;
    v17 = v17 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_23:
      v24 = v16;
      *(a1 + 32) = v17;
      goto LABEL_30;
    }

    v22 = sub_1958770(v7, v17);
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

      v19 = sub_16F5CD4(v21);
      *(a1 + 24) = v19;
      v7 = v24;
    }

    v15 = sub_220D038(a3, v19, v7);
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

char *sub_148BA5C(uint64_t a1, char *__dst, void *a3)
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
    v7 = *(v6 + 44);
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, __dst + 1);
    }

    else
    {
      v8 = __dst + 2;
    }

    __dst = sub_16E9CA0(v6, v8, a3);
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

uint64_t sub_148BBE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_16E9F88(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
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

void sub_148BCA4(uint64_t a1, uint64_t a2)
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

        v5 = sub_16F5CD4(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_277E7C0;
      }

      sub_16EA1A8(v5, v8);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 32) = *(a2 + 32);
    }

    *(a1 + 16) |= v4;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_148BD74(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16EA33C(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_148BDB4(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E5FC0;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0u;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0u;
  *(a1 + 128) = a2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = a2;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = a2;
  *(a1 + 192) = 0;
  *(a1 + 200) = a2;
  *(a1 + 208) = 0u;
  *(a1 + 224) = a2;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 256) = a2;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = a2;
  *(a1 + 288) = 0;
  *(a1 + 296) = a2;
  *(a1 + 304) = 0u;
  *(a1 + 320) = a2;
  *(a1 + 328) = 0u;
  *(a1 + 344) = a2;
  *(a1 + 352) = 0u;
  *(a1 + 368) = a2;
  *(a1 + 376) = 0u;
  *(a1 + 392) = a2;
  *(a1 + 400) = 0u;
  *(a1 + 416) = a2;
  *(a1 + 424) = 0u;
  *(a1 + 440) = a2;
  *(a1 + 448) = 0u;
  *(a1 + 464) = a2;
  *(a1 + 472) = 0u;
  *(a1 + 488) = a2;
  *(a1 + 496) = 0u;
  *(a1 + 512) = a2;
  *(a1 + 520) = 0u;
  *(a1 + 536) = a2;
  *(a1 + 560) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 568) = a2;
  *(a1 + 576) = 0;
  *(a1 + 584) = 0;
  *(a1 + 592) = a2;
  *(a1 + 600) = 0;
  *(a1 + 608) = a2;
  *(a1 + 616) = 0u;
  *(a1 + 632) = a2;
  *(a1 + 640) = 0u;
  *(a1 + 656) = a2;
  *(a1 + 664) = 0u;
  *(a1 + 680) = a2;
  *(a1 + 688) = 0u;
  *(a1 + 704) = &qword_278E990;
  *(a1 + 712) = &qword_278E990;
  *(a1 + 720) = &qword_278E990;
  *(a1 + 728) = &qword_278E990;
  *(a1 + 736) = &qword_278E990;
  *(a1 + 744) = &qword_278E990;
  *(a1 + 752) = &qword_278E990;
  *(a1 + 760) = &qword_278E990;
  *(a1 + 768) = &qword_278E990;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  return a1;
}

void sub_148BF70(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_148BFA0(void *a1)
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

  sub_148C14C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1565388(a1 + 85);
  sub_1565304(a1 + 82);
  sub_1565280(a1 + 79);
  sub_1565280(a1 + 76);
  sub_1956ABC((a1 + 73));
  sub_1956ABC((a1 + 70));
  sub_15651FC(a1 + 67);
  sub_1565178(a1 + 64);
  sub_15650F4(a1 + 61);
  sub_1565070(a1 + 58);
  sub_1564AC4(a1 + 55);
  sub_1564FEC(a1 + 52);
  sub_1564F68(a1 + 49);
  sub_1564494(a1 + 46);
  sub_144A1C8(a1 + 43);
  sub_144A1C8(a1 + 40);
  sub_144A1C8(a1 + 37);
  sub_1956ABC((a1 + 34));
  sub_1956ABC((a1 + 31));
  sub_1564EE4(a1 + 28);
  sub_1564E60(a1 + 25);
  sub_1956ABC((a1 + 22));
  sub_1956ABC((a1 + 19));
  sub_1956AFC(a1 + 16);
  sub_1956AFC(a1 + 13);
  sub_1956AFC(a1 + 10);
  sub_1564DDC(a1 + 7);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_148C14C(uint64_t result)
{
  v1 = result;
  if (*(result + 704) != &qword_278E990)
  {
    sub_194E89C((result + 704));
  }

  if (*(result + 712) != &qword_278E990)
  {
    sub_194E89C((result + 712));
  }

  if (*(result + 720) != &qword_278E990)
  {
    sub_194E89C((result + 720));
  }

  if (*(result + 728) != &qword_278E990)
  {
    sub_194E89C((result + 728));
  }

  if (*(result + 736) != &qword_278E990)
  {
    sub_194E89C((result + 736));
  }

  if (*(result + 744) != &qword_278E990)
  {
    sub_194E89C((result + 744));
  }

  if (*(result + 752) != &qword_278E990)
  {
    sub_194E89C((result + 752));
  }

  if (*(result + 760) != &qword_278E990)
  {
    sub_194E89C((result + 760));
  }

  if (*(result + 768) != &qword_278E990)
  {
    sub_194E89C((result + 768));
  }

  if (result != &off_2772A50)
  {
    v2 = *(result + 776);
    if (v2)
    {
      sub_145C090(v2);
      operator delete();
    }

    v3 = v1[98];
    if (v3)
    {
      sub_147CA9C(v3);
      operator delete();
    }

    v4 = v1[99];
    if (v4)
    {
      sub_147BDC8(v4);
      operator delete();
    }

    v5 = v1[100];
    if (v5)
    {
      sub_14B3C28(v5);
      operator delete();
    }

    v6 = v1[101];
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }

    v7 = v1[102];
    if (v7)
    {
      sub_146CA78(v7);
      operator delete();
    }

    v8 = v1[103];
    if (v8)
    {
      sub_1458388(v8);
      operator delete();
    }

    v9 = v1[104];
    if (v9)
    {
      sub_147A07C(v9);
      operator delete();
    }

    v10 = v1[105];
    if (v10)
    {
      sub_147A07C(v10);
      operator delete();
    }

    v11 = v1[106];
    if (v11)
    {
      sub_145B1C4(v11);
      operator delete();
    }

    v12 = v1[107];
    if (v12)
    {
      sub_145B1C4(v12);
      operator delete();
    }

    result = v1[108];
    if (result)
    {
      sub_14B9B28(result);

      operator delete();
    }
  }

  return result;
}

void sub_148C3BC(void *a1)
{
  sub_148BFA0(a1);

  operator delete();
}

uint64_t sub_148C3F4(uint64_t a1)
{
  sub_1951124((a1 + 16));
  v2 = *(a1 + 64);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 72) + 8);
    do
    {
      v4 = *v3++;
      sub_146F644(v4);
      --v2;
    }

    while (v2);
    *(a1 + 64) = 0;
  }

  sub_12A41D0(a1 + 80);
  sub_12A41D0(a1 + 104);
  result = sub_12A41D0(a1 + 128);
  *(a1 + 152) = 0;
  *(a1 + 176) = 0;
  v6 = *(a1 + 208);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 216) + 8);
    do
    {
      v8 = *v7++;
      result = sub_148A448(v8);
      --v6;
    }

    while (v6);
    *(a1 + 208) = 0;
  }

  v9 = *(a1 + 232);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 240) + 8);
    do
    {
      v11 = *v10++;
      result = sub_14A1FA8(v11);
      --v9;
    }

    while (v9);
    *(a1 + 232) = 0;
  }

  *(a1 + 248) = 0;
  *(a1 + 272) = 0;
  v12 = *(a1 + 304);
  if (v12 >= 1)
  {
    v13 = (*(a1 + 312) + 8);
    do
    {
      v14 = *v13++;
      result = sub_144E5CC(v14);
      --v12;
    }

    while (v12);
    *(a1 + 304) = 0;
  }

  v15 = *(a1 + 328);
  if (v15 >= 1)
  {
    v16 = (*(a1 + 336) + 8);
    do
    {
      v17 = *v16++;
      result = sub_144E5CC(v17);
      --v15;
    }

    while (v15);
    *(a1 + 328) = 0;
  }

  v18 = *(a1 + 352);
  if (v18 >= 1)
  {
    v19 = (*(a1 + 360) + 8);
    do
    {
      v20 = *v19++;
      result = sub_144E5CC(v20);
      --v18;
    }

    while (v18);
    *(a1 + 352) = 0;
  }

  v21 = *(a1 + 376);
  if (v21 >= 1)
  {
    v22 = (*(a1 + 384) + 8);
    do
    {
      v23 = *v22++;
      result = sub_14620AC(v23);
      --v21;
    }

    while (v21);
    *(a1 + 376) = 0;
  }

  v24 = *(a1 + 400);
  if (v24 >= 1)
  {
    v25 = (*(a1 + 408) + 8);
    do
    {
      v26 = *v25++;
      result = sub_146AAD0(v26);
      --v24;
    }

    while (v24);
    *(a1 + 400) = 0;
  }

  v27 = *(a1 + 424);
  if (v27 >= 1)
  {
    v28 = (*(a1 + 432) + 8);
    do
    {
      v29 = *v28++;
      result = sub_146B2D4(v29);
      --v27;
    }

    while (v27);
    *(a1 + 424) = 0;
  }

  v30 = *(a1 + 448);
  if (v30 >= 1)
  {
    v31 = (*(a1 + 456) + 8);
    do
    {
      v32 = *v31++;
      result = sub_147D580(v32);
      --v30;
    }

    while (v30);
    *(a1 + 448) = 0;
  }

  v33 = *(a1 + 472);
  if (v33 >= 1)
  {
    v34 = (*(a1 + 480) + 8);
    do
    {
      v35 = *v34++;
      result = sub_148ACFC(v35);
      --v33;
    }

    while (v33);
    *(a1 + 472) = 0;
  }

  v36 = *(a1 + 496);
  if (v36 >= 1)
  {
    v37 = (*(a1 + 504) + 8);
    do
    {
      v38 = *v37++;
      result = sub_14731E0(v38);
      --v36;
    }

    while (v36);
    *(a1 + 496) = 0;
  }

  v39 = *(a1 + 520);
  if (v39 >= 1)
  {
    v40 = (*(a1 + 528) + 8);
    do
    {
      v41 = *v40++;
      result = sub_1473C78(v41);
      --v39;
    }

    while (v39);
    *(a1 + 520) = 0;
  }

  v42 = *(a1 + 544);
  if (v42 >= 1)
  {
    v43 = (*(a1 + 552) + 8);
    do
    {
      v44 = *v43++;
      result = sub_148B2C8(v44);
      --v42;
    }

    while (v42);
    *(a1 + 544) = 0;
  }

  *(a1 + 560) = 0;
  *(a1 + 584) = 0;
  v45 = *(a1 + 616);
  if (v45 >= 1)
  {
    v46 = (*(a1 + 624) + 8);
    do
    {
      v47 = *v46++;
      result = sub_144FDD0(v47);
      --v45;
    }

    while (v45);
    *(a1 + 616) = 0;
  }

  v48 = *(a1 + 640);
  if (v48 >= 1)
  {
    v49 = (*(a1 + 648) + 8);
    do
    {
      v50 = *v49++;
      result = sub_144FDD0(v50);
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
      result = sub_1486888(v53);
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
      result = sub_148B824(v56);
      --v54;
    }

    while (v54);
    *(a1 + 688) = 0;
  }

  v57 = *(a1 + 40);
  if (v57)
  {
    if ((v57 & 1) == 0)
    {
      if ((v57 & 2) == 0)
      {
        goto LABEL_76;
      }

LABEL_87:
      v59 = *(a1 + 712) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v59 + 23) < 0)
      {
        **v59 = 0;
        *(v59 + 8) = 0;
        if ((v57 & 4) != 0)
        {
          goto LABEL_91;
        }
      }

      else
      {
        *v59 = 0;
        *(v59 + 23) = 0;
        if ((v57 & 4) != 0)
        {
          goto LABEL_91;
        }
      }

LABEL_77:
      if ((v57 & 8) == 0)
      {
        goto LABEL_78;
      }

LABEL_95:
      v61 = *(a1 + 728) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v61 + 23) < 0)
      {
        **v61 = 0;
        *(v61 + 8) = 0;
        if ((v57 & 0x10) != 0)
        {
          goto LABEL_99;
        }
      }

      else
      {
        *v61 = 0;
        *(v61 + 23) = 0;
        if ((v57 & 0x10) != 0)
        {
          goto LABEL_99;
        }
      }

LABEL_79:
      if ((v57 & 0x20) == 0)
      {
        goto LABEL_80;
      }

LABEL_103:
      v63 = *(a1 + 744) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v63 + 23) < 0)
      {
        **v63 = 0;
        *(v63 + 8) = 0;
        if ((v57 & 0x40) != 0)
        {
          goto LABEL_107;
        }
      }

      else
      {
        *v63 = 0;
        *(v63 + 23) = 0;
        if ((v57 & 0x40) != 0)
        {
          goto LABEL_107;
        }
      }

LABEL_81:
      if ((v57 & 0x80) == 0)
      {
        goto LABEL_114;
      }

LABEL_111:
      v65 = *(a1 + 760) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v65 + 23) < 0)
      {
        **v65 = 0;
        *(v65 + 8) = 0;
      }

      else
      {
        *v65 = 0;
        *(v65 + 23) = 0;
      }

      goto LABEL_114;
    }

    v58 = *(a1 + 704) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v58 + 23) < 0)
    {
      **v58 = 0;
      *(v58 + 8) = 0;
      if ((v57 & 2) != 0)
      {
        goto LABEL_87;
      }
    }

    else
    {
      *v58 = 0;
      *(v58 + 23) = 0;
      if ((v57 & 2) != 0)
      {
        goto LABEL_87;
      }
    }

LABEL_76:
    if ((v57 & 4) == 0)
    {
      goto LABEL_77;
    }

LABEL_91:
    v60 = *(a1 + 720) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v60 + 23) < 0)
    {
      **v60 = 0;
      *(v60 + 8) = 0;
      if ((v57 & 8) != 0)
      {
        goto LABEL_95;
      }
    }

    else
    {
      *v60 = 0;
      *(v60 + 23) = 0;
      if ((v57 & 8) != 0)
      {
        goto LABEL_95;
      }
    }

LABEL_78:
    if ((v57 & 0x10) == 0)
    {
      goto LABEL_79;
    }

LABEL_99:
    v62 = *(a1 + 736) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v62 + 23) < 0)
    {
      **v62 = 0;
      *(v62 + 8) = 0;
      if ((v57 & 0x20) != 0)
      {
        goto LABEL_103;
      }
    }

    else
    {
      *v62 = 0;
      *(v62 + 23) = 0;
      if ((v57 & 0x20) != 0)
      {
        goto LABEL_103;
      }
    }

LABEL_80:
    if ((v57 & 0x40) == 0)
    {
      goto LABEL_81;
    }

LABEL_107:
    v64 = *(a1 + 752) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v64 + 23) < 0)
    {
      **v64 = 0;
      *(v64 + 8) = 0;
      if ((v57 & 0x80) == 0)
      {
        goto LABEL_114;
      }
    }

    else
    {
      *v64 = 0;
      *(v64 + 23) = 0;
      if ((v57 & 0x80) == 0)
      {
        goto LABEL_114;
      }
    }

    goto LABEL_111;
  }

LABEL_114:
  if ((v57 & 0xFF00) == 0)
  {
    goto LABEL_124;
  }

  if ((v57 & 0x100) != 0)
  {
    v68 = *(a1 + 768) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v68 + 23) < 0)
    {
      **v68 = 0;
      *(v68 + 8) = 0;
      if ((v57 & 0x200) != 0)
      {
        goto LABEL_150;
      }
    }

    else
    {
      *v68 = 0;
      *(v68 + 23) = 0;
      if ((v57 & 0x200) != 0)
      {
        goto LABEL_150;
      }
    }

LABEL_117:
    if ((v57 & 0x400) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_151;
  }

  if ((v57 & 0x200) == 0)
  {
    goto LABEL_117;
  }

LABEL_150:
  result = sub_145C210(*(a1 + 776));
  if ((v57 & 0x400) == 0)
  {
LABEL_118:
    if ((v57 & 0x800) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_152;
  }

LABEL_151:
  result = sub_147CC14(*(a1 + 784));
  if ((v57 & 0x800) == 0)
  {
LABEL_119:
    if ((v57 & 0x1000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_153;
  }

LABEL_152:
  result = sub_147BF68(*(a1 + 792));
  if ((v57 & 0x1000) == 0)
  {
LABEL_120:
    if ((v57 & 0x2000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_154;
  }

LABEL_153:
  result = sub_148176C(*(a1 + 800));
  if ((v57 & 0x2000) == 0)
  {
LABEL_121:
    if ((v57 & 0x4000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_155;
  }

LABEL_154:
  result = sub_144E5CC(*(a1 + 808));
  if ((v57 & 0x4000) == 0)
  {
LABEL_122:
    if ((v57 & 0x8000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_123;
  }

LABEL_155:
  result = sub_146CB98(*(a1 + 816));
  if ((v57 & 0x8000) != 0)
  {
LABEL_123:
    result = sub_144E5CC(*(a1 + 824));
  }

LABEL_124:
  if ((v57 & 0x1F0000) == 0)
  {
    goto LABEL_131;
  }

  if ((v57 & 0x10000) != 0)
  {
    result = sub_147447C(*(a1 + 832));
    if ((v57 & 0x20000) == 0)
    {
LABEL_127:
      if ((v57 & 0x40000) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_146;
    }
  }

  else if ((v57 & 0x20000) == 0)
  {
    goto LABEL_127;
  }

  result = sub_147447C(*(a1 + 840));
  if ((v57 & 0x40000) == 0)
  {
LABEL_128:
    if ((v57 & 0x80000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_147;
  }

LABEL_146:
  result = sub_145B310(*(a1 + 848));
  if ((v57 & 0x80000) == 0)
  {
LABEL_129:
    if ((v57 & 0x100000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_130;
  }

LABEL_147:
  result = sub_145B310(*(a1 + 856));
  if ((v57 & 0x100000) != 0)
  {
LABEL_130:
    result = sub_148CA40(*(a1 + 864));
  }

LABEL_131:
  if ((v57 & 0xE00000) != 0)
  {
    *(a1 + 880) = 0;
    *(a1 + 872) = 0;
  }

  if (HIBYTE(v57))
  {
    *(a1 + 884) = 0u;
    *(a1 + 900) = 0u;
  }

  if ((*(a1 + 44) & 0x7F) != 0)
  {
    *(a1 + 932) = 0;
    *(a1 + 916) = 0u;
  }

  v67 = *(a1 + 8);
  v66 = (a1 + 8);
  v66[4] = 0;
  if (v67)
  {

    return sub_1957EA8(v66);
  }

  return result;
}

uint64_t sub_148CA40(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14B973C(v4);
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

char *sub_148CC30(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x200000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 872);
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

  v11 = *(a1 + 64);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v13 = *(*(a1 + 72) + 8 * i + 8);
      *v6 = 18;
      v14 = *(v13 + 48);
      v6[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, v6 + 1);
      }

      else
      {
        v15 = v6 + 2;
      }

      v6 = sub_1470AF0(v13, v15, a3);
    }
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v6 = sub_128AEEC(a3, 4, *(a1 + 712) & 0xFFFFFFFFFFFFFFFELL, v6);
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v6 = sub_128AEEC(a3, 3, *(a1 + 704) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 2) != 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if ((v5 & 0x400000) == 0)
  {
LABEL_21:
    v16 = v6;
    goto LABEL_31;
  }

LABEL_24:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v17 = *(a1 + 876);
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

LABEL_31:
  if ((v5 & 0x800000) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v22 = *(a1 + 880);
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

  if ((v5 & 4) != 0)
  {
    v21 = sub_128AEEC(a3, 7, *(a1 + 720) & 0xFFFFFFFFFFFFFFFELL, v21);
  }

  if ((v5 & 0x1000000) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v27 = *(a1 + 884);
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
        LOBYTE(v21) = v21[2];
        do
        {
          *(v26 - 1) = v21 | 0x80;
          v21 = (v28 >> 7);
          *v26++ = v28 >> 7;
          v29 = v28 >> 14;
          v28 >>= 7;
        }

        while (v29);
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

  v30 = *(a1 + 88);
  if (v30 >= 1)
  {
    v31 = 8;
    do
    {
      v26 = sub_1355F54(a3, 9, *(*(a1 + 96) + v31), v26);
      v31 += 8;
      --v30;
    }

    while (v30);
  }

  if ((v5 & 0x2000000) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v33 = *(a1 + 888);
    *v26 = 80;
    v26[1] = v33;
    if (v33 > 0x7F)
    {
      v26[1] = v33 | 0x80;
      v34 = v33 >> 7;
      v26[2] = v33 >> 7;
      v32 = v26 + 3;
      if (v33 >= 0x4000)
      {
        LOBYTE(v35) = v26[2];
        do
        {
          *(v32 - 1) = v35 | 0x80;
          v35 = v34 >> 7;
          *v32++ = v34 >> 7;
          v36 = v34 >> 14;
          v34 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v32 = v26 + 2;
    }
  }

  else
  {
    v32 = v26;
  }

  if ((v5 & 8) != 0)
  {
    v32 = sub_128AEEC(a3, 16, *(a1 + 728) & 0xFFFFFFFFFFFFFFFELL, v32);
  }

  if ((v5 & 0x4000000) != 0)
  {
    if (*a3 <= v32)
    {
      v32 = sub_225EB68(a3, v32);
    }

    v38 = *(a1 + 892);
    *v32 = 392;
    v32[2] = v38;
    if (v38 > 0x7F)
    {
      v32[2] = v38 | 0x80;
      v39 = v38 >> 7;
      v32[3] = v38 >> 7;
      v37 = v32 + 4;
      if (v38 >= 0x4000)
      {
        LOBYTE(v32) = v32[3];
        do
        {
          *(v37 - 1) = v32 | 0x80;
          LODWORD(v32) = v39 >> 7;
          *v37++ = v39 >> 7;
          v40 = v39 >> 14;
          v39 >>= 7;
        }

        while (v40);
      }
    }

    else
    {
      v37 = v32 + 3;
    }
  }

  else
  {
    v37 = v32;
  }

  if ((v5 & 0x10) != 0)
  {
    v37 = sub_128AEEC(a3, 18, *(a1 + 736) & 0xFFFFFFFFFFFFFFFELL, v37);
  }

  if ((v5 & 0x8000000) != 0)
  {
    if (*a3 <= v37)
    {
      v37 = sub_225EB68(a3, v37);
    }

    v42 = *(a1 + 896);
    *v37 = 408;
    v37[2] = v42;
    if (v42 > 0x7F)
    {
      v37[2] = v42 | 0x80;
      v43 = v42 >> 7;
      v37[3] = v42 >> 7;
      v41 = v37 + 4;
      if (v42 >= 0x4000)
      {
        LOBYTE(v37) = v37[3];
        do
        {
          *(v41 - 1) = v37 | 0x80;
          LODWORD(v37) = v43 >> 7;
          *v41++ = v43 >> 7;
          v44 = v43 >> 14;
          v43 >>= 7;
        }

        while (v44);
      }
    }

    else
    {
      v41 = v37 + 3;
    }
  }

  else
  {
    v41 = v37;
  }

  v45 = *(a1 + 112);
  if (v45 >= 1)
  {
    v46 = 8;
    do
    {
      v41 = sub_1355F54(a3, 20, *(*(a1 + 120) + v46), v41);
      v46 += 8;
      --v45;
    }

    while (v45);
  }

  v47 = *(a1 + 136);
  if (v47 >= 1)
  {
    v48 = 8;
    do
    {
      v49 = *(*(a1 + 144) + v48);
      v50 = *(v49 + 23);
      if (v50 < 0 && (v50 = v49[1], v50 > 127) || (*a3 - v41 + 13) < v50)
      {
        v41 = sub_1957480(a3, 21, v49, v41);
      }

      else
      {
        *v41 = 426;
        v41[2] = v50;
        if (*(v49 + 23) < 0)
        {
          v49 = *v49;
        }

        v51 = v41 + 3;
        memcpy(v41 + 3, v49, v50);
        v41 = &v51[v50];
      }

      v48 += 8;
      --v47;
    }

    while (v47);
  }

  v52 = *(a1 + 168);
  if (v52 > 0)
  {
    if (*a3 <= v41)
    {
      v41 = sub_225EB68(a3, v41);
    }

    *v41 = 434;
    v53 = v41 + 2;
    if (v52 >= 0x80)
    {
      do
      {
        *v53++ = v52 | 0x80;
        v54 = v52 >> 7;
        v290 = v52 >> 14;
        v52 >>= 7;
      }

      while (v290);
    }

    else
    {
      LOBYTE(v54) = v52;
    }

    *v53 = v54;
    v55 = *(a1 + 160);
    v56 = &v55[*(a1 + 152)];
    v57 = v53 + 1;
    do
    {
      if (*a3 <= v57)
      {
        v57 = sub_225EB68(a3, v57);
      }

      v59 = *v55++;
      v58 = v59;
      *v57 = v59;
      if (v59 > 0x7F)
      {
        *v57 = v58 | 0x80;
        v60 = v58 >> 7;
        v57[1] = v58 >> 7;
        v41 = v57 + 2;
        if (v58 >= 0x4000)
        {
          LOBYTE(v61) = v57[1];
          do
          {
            *(v41 - 1) = v61 | 0x80;
            v61 = v60 >> 7;
            *v41++ = v60 >> 7;
            v62 = v60 >> 14;
            v60 >>= 7;
          }

          while (v62);
        }
      }

      else
      {
        v41 = v57 + 1;
      }

      v57 = v41;
    }

    while (v55 < v56);
  }

  v63 = *(a1 + 192);
  if (v63 >= 1)
  {
    if (*a3 <= v41)
    {
      v41 = sub_225EB68(a3, v41);
    }

    *v41 = 442;
    v64 = v41 + 2;
    if (v63 >= 0x80)
    {
      do
      {
        *v64++ = v63 | 0x80;
        v65 = v63 >> 7;
        v291 = v63 >> 14;
        v63 >>= 7;
      }

      while (v291);
    }

    else
    {
      LOBYTE(v65) = v63;
    }

    *v64 = v65;
    v66 = *(a1 + 184);
    v67 = &v66[*(a1 + 176)];
    v68 = v64 + 1;
    do
    {
      if (*a3 <= v68)
      {
        v68 = sub_225EB68(a3, v68);
      }

      v70 = *v66++;
      v69 = v70;
      *v68 = v70;
      if (v70 > 0x7F)
      {
        *v68 = v69 | 0x80;
        v71 = v69 >> 7;
        v68[1] = v69 >> 7;
        v41 = v68 + 2;
        if (v69 >= 0x4000)
        {
          LOBYTE(v72) = v68[1];
          do
          {
            *(v41 - 1) = v72 | 0x80;
            v72 = v71 >> 7;
            *v41++ = v71 >> 7;
            v73 = v71 >> 14;
            v71 >>= 7;
          }

          while (v73);
        }
      }

      else
      {
        v41 = v68 + 1;
      }

      v68 = v41;
    }

    while (v66 < v67);
  }

  v74 = *(a1 + 208);
  if (v74)
  {
    for (j = 0; j != v74; ++j)
    {
      if (*a3 <= v41)
      {
        v41 = sub_225EB68(a3, v41);
      }

      v76 = *(*(a1 + 216) + 8 * j + 8);
      *v41 = 458;
      v77 = *(v76 + 20);
      v41[2] = v77;
      if (v77 > 0x7F)
      {
        v78 = sub_19575D0(v77, v41 + 2);
      }

      else
      {
        v78 = v41 + 3;
      }

      v41 = sub_148A758(v76, v78, a3);
    }
  }

  if ((v5 & 0x10000000) != 0)
  {
    if (*a3 <= v41)
    {
      v41 = sub_225EB68(a3, v41);
    }

    v80 = *(a1 + 900);
    *v41 = 464;
    v41[2] = v80;
    if (v80 > 0x7F)
    {
      v41[2] = v80 | 0x80;
      v81 = v80 >> 7;
      v41[3] = v80 >> 7;
      v79 = v41 + 4;
      if (v80 >= 0x4000)
      {
        LOBYTE(v82) = v41[3];
        do
        {
          *(v79 - 1) = v82 | 0x80;
          v82 = v81 >> 7;
          *v79++ = v81 >> 7;
          v83 = v81 >> 14;
          v81 >>= 7;
        }

        while (v83);
      }
    }

    else
    {
      v79 = v41 + 3;
    }
  }

  else
  {
    v79 = v41;
  }

  if ((v5 & 0x20000000) != 0)
  {
    if (*a3 <= v79)
    {
      v79 = sub_225EB68(a3, v79);
    }

    v85 = *(a1 + 904);
    *v79 = 480;
    v79[2] = v85;
    if (v85 > 0x7F)
    {
      v79[2] = v85 | 0x80;
      v86 = v85 >> 7;
      v79[3] = v85 >> 7;
      v84 = v79 + 4;
      if (v85 >= 0x4000)
      {
        LOBYTE(v87) = v79[3];
        do
        {
          *(v84 - 1) = v87 | 0x80;
          v87 = v86 >> 7;
          *v84++ = v86 >> 7;
          v88 = v86 >> 14;
          v86 >>= 7;
        }

        while (v88);
      }
    }

    else
    {
      v84 = v79 + 3;
    }
  }

  else
  {
    v84 = v79;
  }

  if ((v5 & 0x40000000) != 0)
  {
    if (*a3 <= v84)
    {
      v84 = sub_225EB68(a3, v84);
    }

    v90 = *(a1 + 908);
    *v84 = 488;
    v84[2] = v90;
    if (v90 > 0x7F)
    {
      v84[2] = v90 | 0x80;
      v91 = v90 >> 7;
      v84[3] = v90 >> 7;
      v89 = v84 + 4;
      if (v90 >= 0x4000)
      {
        LOBYTE(v84) = v84[3];
        do
        {
          *(v89 - 1) = v84 | 0x80;
          LODWORD(v84) = v91 >> 7;
          *v89++ = v91 >> 7;
          v92 = v91 >> 14;
          v91 >>= 7;
        }

        while (v92);
      }
    }

    else
    {
      v89 = v84 + 3;
    }
  }

  else
  {
    v89 = v84;
  }

  if (v5 < 0)
  {
    if (*a3 <= v89)
    {
      v89 = sub_225EB68(a3, v89);
    }

    v94 = *(a1 + 912);
    *v89 = 496;
    v89[2] = v94;
    if (v94 > 0x7F)
    {
      v89[2] = v94 | 0x80;
      v95 = v94 >> 7;
      v89[3] = v94 >> 7;
      v93 = v89 + 4;
      if (v94 >= 0x4000)
      {
        LOBYTE(v96) = v89[3];
        do
        {
          *(v93 - 1) = v96 | 0x80;
          v96 = v95 >> 7;
          *v93++ = v95 >> 7;
          v97 = v95 >> 14;
          v95 >>= 7;
        }

        while (v97);
      }
    }

    else
    {
      v93 = v89 + 3;
    }
  }

  else
  {
    v93 = v89;
  }

  v98 = *(a1 + 44);
  if (v98)
  {
    if (*a3 <= v93)
    {
      v93 = sub_225EB68(a3, v93);
    }

    v99 = *(a1 + 916);
    *v93 = 504;
    v93[2] = v99;
    v93 += 3;
    if ((v98 & 2) == 0)
    {
LABEL_173:
      if ((v98 & 4) == 0)
      {
        goto LABEL_184;
      }

      goto LABEL_181;
    }
  }

  else if ((v98 & 2) == 0)
  {
    goto LABEL_173;
  }

  if (*a3 <= v93)
  {
    v93 = sub_225EB68(a3, v93);
  }

  v100 = *(a1 + 917);
  *v93 = 640;
  v93[2] = v100;
  v93 += 3;
  if ((v98 & 4) != 0)
  {
LABEL_181:
    if (*a3 <= v93)
    {
      v93 = sub_225EB68(a3, v93);
    }

    v101 = *(a1 + 918);
    *v93 = 648;
    v93[2] = v101;
    v93 += 3;
  }

LABEL_184:
  v102 = *(a1 + 232);
  if (v102)
  {
    for (k = 0; k != v102; ++k)
    {
      if (*a3 <= v93)
      {
        v93 = sub_225EB68(a3, v93);
      }

      v104 = *(*(a1 + 240) + 8 * k + 8);
      *v93 = 658;
      v105 = *(v104 + 20);
      v93[2] = v105;
      if (v105 > 0x7F)
      {
        v106 = sub_19575D0(v105, v93 + 2);
      }

      else
      {
        v106 = v93 + 3;
      }

      v93 = sub_14A2640(v104, v106, a3);
    }
  }

  v107 = *(a1 + 40);
  if ((v107 & 0x20) != 0)
  {
    v93 = sub_128AEEC(a3, 50, *(a1 + 744) & 0xFFFFFFFFFFFFFFFELL, v93);
  }

  v108 = *(a1 + 264);
  if (v108 >= 1)
  {
    if (*a3 <= v93)
    {
      v93 = sub_225EB68(a3, v93);
    }

    *v93 = 922;
    v109 = v93 + 2;
    if (v108 >= 0x80)
    {
      do
      {
        *v109++ = v108 | 0x80;
        v110 = v108 >> 7;
        v292 = v108 >> 14;
        v108 >>= 7;
      }

      while (v292);
    }

    else
    {
      LOBYTE(v110) = v108;
    }

    *v109 = v110;
    v111 = *(a1 + 256);
    v112 = &v111[*(a1 + 248)];
    v113 = v109 + 1;
    do
    {
      if (*a3 <= v113)
      {
        v113 = sub_225EB68(a3, v113);
      }

      v115 = *v111++;
      v114 = v115;
      *v113 = v115;
      if (v115 > 0x7F)
      {
        *v113 = v114 | 0x80;
        v116 = v114 >> 7;
        v113[1] = v114 >> 7;
        v93 = v113 + 2;
        if (v114 >= 0x4000)
        {
          LOBYTE(v117) = v113[1];
          do
          {
            *(v93 - 1) = v117 | 0x80;
            v117 = v116 >> 7;
            *v93++ = v116 >> 7;
            v118 = v116 >> 14;
            v116 >>= 7;
          }

          while (v118);
        }
      }

      else
      {
        v93 = v113 + 1;
      }

      v113 = v93;
    }

    while (v111 < v112);
  }

  v119 = *(a1 + 288);
  if (v119 >= 1)
  {
    if (*a3 <= v93)
    {
      v93 = sub_225EB68(a3, v93);
    }

    *v93 = 930;
    v120 = v93 + 2;
    if (v119 >= 0x80)
    {
      do
      {
        *v120++ = v119 | 0x80;
        v121 = v119 >> 7;
        v293 = v119 >> 14;
        v119 >>= 7;
      }

      while (v293);
    }

    else
    {
      LOBYTE(v121) = v119;
    }

    *v120 = v121;
    v122 = *(a1 + 280);
    v123 = &v122[*(a1 + 272)];
    v124 = v120 + 1;
    do
    {
      if (*a3 <= v124)
      {
        v124 = sub_225EB68(a3, v124);
      }

      v126 = *v122++;
      v125 = v126;
      *v124 = v126;
      if (v126 > 0x7F)
      {
        *v124 = v125 | 0x80;
        v127 = v125 >> 7;
        v124[1] = v125 >> 7;
        v93 = v124 + 2;
        if (v125 >= 0x4000)
        {
          LOBYTE(v128) = v124[1];
          do
          {
            *(v93 - 1) = v128 | 0x80;
            v128 = v127 >> 7;
            *v93++ = v127 >> 7;
            v129 = v127 >> 14;
            v127 >>= 7;
          }

          while (v129);
        }
      }

      else
      {
        v93 = v124 + 1;
      }

      v124 = v93;
    }

    while (v122 < v123);
  }

  if ((v107 & 0x200) != 0)
  {
    if (*a3 <= v93)
    {
      v93 = sub_225EB68(a3, v93);
    }

    v130 = *(a1 + 776);
    *v93 = 938;
    v131 = *(v130 + 20);
    v93[2] = v131;
    if (v131 > 0x7F)
    {
      v132 = sub_19575D0(v131, v93 + 2);
    }

    else
    {
      v132 = v93 + 3;
    }

    v93 = sub_145C564(v130, v132, a3);
  }

  v133 = *(a1 + 304);
  if (v133)
  {
    for (m = 0; m != v133; ++m)
    {
      if (*a3 <= v93)
      {
        v93 = sub_225EB68(a3, v93);
      }

      v135 = *(*(a1 + 312) + 8 * m + 8);
      *v93 = 946;
      v136 = *(v135 + 20);
      v93[2] = v136;
      if (v136 > 0x7F)
      {
        v137 = sub_19575D0(v136, v93 + 2);
      }

      else
      {
        v137 = v93 + 3;
      }

      v93 = sub_14589F4(v135, v137, a3);
    }
  }

  v138 = *(a1 + 328);
  if (v138)
  {
    for (n = 0; n != v138; ++n)
    {
      if (*a3 <= v93)
      {
        v93 = sub_225EB68(a3, v93);
      }

      v140 = *(*(a1 + 336) + 8 * n + 8);
      *v93 = 954;
      v141 = *(v140 + 20);
      v93[2] = v141;
      if (v141 > 0x7F)
      {
        v142 = sub_19575D0(v141, v93 + 2);
      }

      else
      {
        v142 = v93 + 3;
      }

      v93 = sub_14589F4(v140, v142, a3);
    }
  }

  v143 = *(a1 + 352);
  if (v143)
  {
    for (ii = 0; ii != v143; ++ii)
    {
      if (*a3 <= v93)
      {
        v93 = sub_225EB68(a3, v93);
      }

      v145 = *(*(a1 + 360) + 8 * ii + 8);
      *v93 = 962;
      v146 = *(v145 + 20);
      v93[2] = v146;
      if (v146 > 0x7F)
      {
        v147 = sub_19575D0(v146, v93 + 2);
      }

      else
      {
        v147 = v93 + 3;
      }

      v93 = sub_14589F4(v145, v147, a3);
    }
  }

  if ((v107 & 0x40) != 0)
  {
    v93 = sub_128AEEC(a3, 57, *(a1 + 752) & 0xFFFFFFFFFFFFFFFELL, v93);
    if ((v107 & 0x80) == 0)
    {
LABEL_255:
      if ((v107 & 0x400) == 0)
      {
        goto LABEL_265;
      }

      goto LABEL_259;
    }
  }

  else if ((v107 & 0x80) == 0)
  {
    goto LABEL_255;
  }

  v93 = sub_128AEEC(a3, 58, *(a1 + 760) & 0xFFFFFFFFFFFFFFFELL, v93);
  if ((v107 & 0x400) == 0)
  {
    goto LABEL_265;
  }

LABEL_259:
  if (*a3 <= v93)
  {
    v93 = sub_225EB68(a3, v93);
  }

  v148 = *(a1 + 784);
  *v93 = 986;
  v149 = *(v148 + 20);
  v93[2] = v149;
  if (v149 > 0x7F)
  {
    v150 = sub_19575D0(v149, v93 + 2);
  }

  else
  {
    v150 = v93 + 3;
  }

  v93 = sub_147CEF4(v148, v150, a3);
LABEL_265:
  v151 = *(a1 + 376);
  if (v151)
  {
    for (jj = 0; jj != v151; ++jj)
    {
      if (*a3 <= v93)
      {
        v93 = sub_225EB68(a3, v93);
      }

      v153 = *(*(a1 + 384) + 8 * jj + 8);
      *v93 = 994;
      v154 = *(v153 + 20);
      v93[2] = v154;
      if (v154 > 0x7F)
      {
        v155 = sub_19575D0(v154, v93 + 2);
      }

      else
      {
        v155 = v93 + 3;
      }

      v93 = sub_1462EF0(v153, v155, a3);
    }
  }

  if ((v107 & 0x800) != 0)
  {
    if (*a3 <= v93)
    {
      v93 = sub_225EB68(a3, v93);
    }

    v156 = *(a1 + 792);
    *v93 = 1002;
    v157 = *(v156 + 20);
    v93[2] = v157;
    if (v157 > 0x7F)
    {
      v158 = sub_19575D0(v157, v93 + 2);
    }

    else
    {
      v158 = v93 + 3;
    }

    v93 = sub_147C300(v156, v158, a3);
  }

  v159 = *(a1 + 400);
  if (v159)
  {
    for (kk = 0; kk != v159; ++kk)
    {
      if (*a3 <= v93)
      {
        v93 = sub_225EB68(a3, v93);
      }

      v161 = *(*(a1 + 408) + 8 * kk + 8);
      *v93 = 1010;
      v162 = *(v161 + 20);
      v93[2] = v162;
      if (v162 > 0x7F)
      {
        v163 = sub_19575D0(v162, v93 + 2);
      }

      else
      {
        v163 = v93 + 3;
      }

      v93 = sub_146ADD8(v161, v163, a3);
    }
  }

  if ((*(a1 + 44) & 8) != 0)
  {
    if (*a3 <= v93)
    {
      v93 = sub_225EB68(a3, v93);
    }

    v165 = *(a1 + 920);
    *v93 = 1016;
    v93[2] = v165;
    if (v165 > 0x7F)
    {
      v93[2] = v165 | 0x80;
      v166 = v165 >> 7;
      v93[3] = v165 >> 7;
      v164 = v93 + 4;
      if (v165 >= 0x4000)
      {
        LOBYTE(v167) = v93[3];
        do
        {
          *(v164 - 1) = v167 | 0x80;
          v167 = v166 >> 7;
          *v164++ = v166 >> 7;
          v168 = v166 >> 14;
          v166 >>= 7;
        }

        while (v168);
      }
    }

    else
    {
      v164 = v93 + 3;
    }
  }

  else
  {
    v164 = v93;
  }

  v169 = *(a1 + 424);
  if (v169)
  {
    for (mm = 0; mm != v169; ++mm)
    {
      if (*a3 <= v164)
      {
        v164 = sub_225EB68(a3, v164);
      }

      v171 = *(*(a1 + 432) + 8 * mm + 8);
      *v164 = 1154;
      v172 = *(v171 + 20);
      v164[2] = v172;
      if (v172 > 0x7F)
      {
        v173 = sub_19575D0(v172, v164 + 2);
      }

      else
      {
        v173 = v164 + 3;
      }

      v164 = sub_146B544(v171, v173, a3);
    }
  }

  v174 = *(a1 + 40);
  if ((v174 & 0x1000) != 0)
  {
    if (*a3 <= v164)
    {
      v164 = sub_225EB68(a3, v164);
    }

    v175 = *(a1 + 800);
    *v164 = 1162;
    v176 = *(v175 + 20);
    v164[2] = v176;
    if (v176 > 0x7F)
    {
      v177 = sub_19575D0(v176, v164 + 2);
    }

    else
    {
      v177 = v164 + 3;
    }

    v164 = sub_14B3F58(v175, v177, a3);
  }

  v178 = *(a1 + 448);
  if (v178)
  {
    for (nn = 0; nn != v178; ++nn)
    {
      if (*a3 <= v164)
      {
        v164 = sub_225EB68(a3, v164);
      }

      v180 = *(*(a1 + 456) + 8 * nn + 8);
      *v164 = 1170;
      v181 = *(v180 + 20);
      v164[2] = v181;
      if (v181 > 0x7F)
      {
        v182 = sub_19575D0(v181, v164 + 2);
      }

      else
      {
        v182 = v164 + 3;
      }

      v164 = sub_147D8A8(v180, v182, a3);
    }
  }

  v183 = *(a1 + 472);
  if (v183)
  {
    for (i1 = 0; i1 != v183; ++i1)
    {
      if (*a3 <= v164)
      {
        v164 = sub_225EB68(a3, v164);
      }

      v185 = *(*(a1 + 480) + 8 * i1 + 8);
      *v164 = 1178;
      v186 = *(v185 + 20);
      v164[2] = v186;
      if (v186 > 0x7F)
      {
        v187 = sub_19575D0(v186, v164 + 2);
      }

      else
      {
        v187 = v164 + 3;
      }

      v164 = sub_148AF94(v185, v187, a3);
    }
  }

  if ((v174 & 0x2000) != 0)
  {
    if (*a3 <= v164)
    {
      v164 = sub_225EB68(a3, v164);
    }

    v188 = *(a1 + 808);
    *v164 = 1186;
    v189 = *(v188 + 20);
    v164[2] = v189;
    if (v189 > 0x7F)
    {
      v190 = sub_19575D0(v189, v164 + 2);
    }

    else
    {
      v190 = v164 + 3;
    }

    v164 = sub_14589F4(v188, v190, a3);
    if ((v174 & 0x4000) == 0)
    {
LABEL_330:
      if ((v174 & 0x8000) == 0)
      {
        goto LABEL_350;
      }

      goto LABEL_344;
    }
  }

  else if ((v174 & 0x4000) == 0)
  {
    goto LABEL_330;
  }

  if (*a3 <= v164)
  {
    v164 = sub_225EB68(a3, v164);
  }

  v191 = *(a1 + 816);
  *v164 = 1194;
  v192 = *(v191 + 20);
  v164[2] = v192;
  if (v192 > 0x7F)
  {
    v193 = sub_19575D0(v192, v164 + 2);
  }

  else
  {
    v193 = v164 + 3;
  }

  v164 = sub_146D034(v191, v193, a3);
  if ((v174 & 0x8000) != 0)
  {
LABEL_344:
    if (*a3 <= v164)
    {
      v164 = sub_225EB68(a3, v164);
    }

    v194 = *(a1 + 824);
    *v164 = 1202;
    v195 = *(v194 + 20);
    v164[2] = v195;
    if (v195 > 0x7F)
    {
      v196 = sub_19575D0(v195, v164 + 2);
    }

    else
    {
      v196 = v164 + 3;
    }

    v164 = sub_14589F4(v194, v196, a3);
  }

LABEL_350:
  v197 = *(a1 + 496);
  if (v197)
  {
    for (i2 = 0; i2 != v197; ++i2)
    {
      if (*a3 <= v164)
      {
        v164 = sub_225EB68(a3, v164);
      }

      v199 = *(*(a1 + 504) + 8 * i2 + 8);
      *v164 = 1210;
      v200 = *(v199 + 40);
      v164[2] = v200;
      if (v200 > 0x7F)
      {
        v201 = sub_19575D0(v200, v164 + 2);
      }

      else
      {
        v201 = v164 + 3;
      }

      v164 = sub_14733EC(v199, v201, a3);
    }
  }

  v202 = *(a1 + 520);
  if (v202)
  {
    for (i3 = 0; i3 != v202; ++i3)
    {
      if (*a3 <= v164)
      {
        v164 = sub_225EB68(a3, v164);
      }

      v204 = *(*(a1 + 528) + 8 * i3 + 8);
      *v164 = 1218;
      v205 = *(v204 + 40);
      v164[2] = v205;
      if (v205 > 0x7F)
      {
        v206 = sub_19575D0(v205, v164 + 2);
      }

      else
      {
        v206 = v164 + 3;
      }

      v164 = sub_1473E84(v204, v206, a3);
    }
  }

  if ((*(a1 + 44) & 0x10) != 0)
  {
    if (*a3 <= v164)
    {
      v164 = sub_225EB68(a3, v164);
    }

    v208 = *(a1 + 924);
    *v164 = 1224;
    v164[2] = v208;
    if (v208 > 0x7F)
    {
      v164[2] = v208 | 0x80;
      v209 = v208 >> 7;
      v164[3] = v208 >> 7;
      v207 = v164 + 4;
      if (v208 >= 0x4000)
      {
        LOBYTE(v164) = v164[3];
        do
        {
          *(v207 - 1) = v164 | 0x80;
          v164 = (v209 >> 7);
          *v207++ = v209 >> 7;
          v210 = v209 >> 14;
          v209 >>= 7;
        }

        while (v210);
      }
    }

    else
    {
      v207 = v164 + 3;
    }
  }

  else
  {
    v207 = v164;
  }

  v211 = *(a1 + 544);
  if (v211)
  {
    for (i4 = 0; i4 != v211; ++i4)
    {
      if (*a3 <= v207)
      {
        v207 = sub_225EB68(a3, v207);
      }

      v213 = *(*(a1 + 552) + 8 * i4 + 8);
      *v207 = 1234;
      v214 = *(v213 + 20);
      v207[2] = v214;
      if (v214 > 0x7F)
      {
        v215 = sub_19575D0(v214, v207 + 2);
      }

      else
      {
        v215 = v207 + 3;
      }

      v207 = sub_148B4D0(v213, v215, a3);
    }
  }

  v216 = *(a1 + 40);
  if ((v216 & 0x10000) != 0)
  {
    if (*a3 <= v207)
    {
      v207 = sub_225EB68(a3, v207);
    }

    v217 = *(a1 + 832);
    *v207 = 1242;
    v218 = *(v217 + 20);
    v207[2] = v218;
    if (v218 > 0x7F)
    {
      v219 = sub_19575D0(v218, v207 + 2);
    }

    else
    {
      v219 = v207 + 3;
    }

    v207 = sub_147A7BC(v217, v219, a3);
  }

  if ((v216 & 0x20000) != 0)
  {
    if (*a3 <= v207)
    {
      v207 = sub_225EB68(a3, v207);
    }

    v220 = *(a1 + 840);
    *v207 = 1250;
    v221 = *(v220 + 20);
    v207[2] = v221;
    if (v221 > 0x7F)
    {
      v222 = sub_19575D0(v221, v207 + 2);
    }

    else
    {
      v222 = v207 + 3;
    }

    v207 = sub_147A7BC(v220, v222, a3);
  }

  v223 = *(a1 + 44);
  if ((v223 & 0x20) != 0)
  {
    if (*a3 <= v207)
    {
      v207 = sub_225EB68(a3, v207);
    }

    v225 = *(a1 + 928);
    *v207 = 1256;
    v207[2] = v225;
    if (v225 > 0x7F)
    {
      v207[2] = v225 | 0x80;
      v226 = v225 >> 7;
      v207[3] = v225 >> 7;
      v224 = v207 + 4;
      if (v225 >= 0x4000)
      {
        LOBYTE(v207) = v207[3];
        do
        {
          *(v224 - 1) = v207 | 0x80;
          v207 = (v226 >> 7);
          *v224++ = v226 >> 7;
          v227 = v226 >> 14;
          v226 >>= 7;
        }

        while (v227);
      }
    }

    else
    {
      v224 = v207 + 3;
    }
  }

  else
  {
    v224 = v207;
  }

  if ((v223 & 0x40) != 0)
  {
    if (*a3 <= v224)
    {
      v224 = sub_225EB68(a3, v224);
    }

    v229 = *(a1 + 932);
    *v224 = 1264;
    v224[2] = v229;
    if (v229 > 0x7F)
    {
      v224[2] = v229 | 0x80;
      v230 = v229 >> 7;
      v224[3] = v229 >> 7;
      v228 = v224 + 4;
      if (v229 >= 0x4000)
      {
        LOBYTE(v231) = v224[3];
        do
        {
          *(v228 - 1) = v231 | 0x80;
          v231 = v230 >> 7;
          *v228++ = v230 >> 7;
          v232 = v230 >> 14;
          v230 >>= 7;
        }

        while (v232);
      }
    }

    else
    {
      v228 = v224 + 3;
    }
  }

  else
  {
    v228 = v224;
  }

  v233 = *(a1 + 40);
  if ((v233 & 0x100) != 0)
  {
    v228 = sub_128AEEC(a3, 79, *(a1 + 768) & 0xFFFFFFFFFFFFFFFELL, v228);
  }

  v234 = *(a1 + 576);
  if (v234 >= 1)
  {
    if (*a3 <= v228)
    {
      v228 = sub_225EB68(a3, v228);
    }

    *v228 = 1410;
    v235 = v228 + 2;
    if (v234 >= 0x80)
    {
      do
      {
        *v235++ = v234 | 0x80;
        v236 = v234 >> 7;
        v294 = v234 >> 14;
        v234 >>= 7;
      }

      while (v294);
    }

    else
    {
      LOBYTE(v236) = v234;
    }

    *v235 = v236;
    v237 = *(a1 + 568);
    v238 = &v237[*(a1 + 560)];
    v239 = v235 + 1;
    do
    {
      if (*a3 <= v239)
      {
        v239 = sub_225EB68(a3, v239);
      }

      v241 = *v237++;
      v240 = v241;
      *v239 = v241;
      if (v241 > 0x7F)
      {
        *v239 = v240 | 0x80;
        v242 = v240 >> 7;
        v239[1] = v240 >> 7;
        v228 = v239 + 2;
        if (v240 >= 0x4000)
        {
          LOBYTE(v243) = v239[1];
          do
          {
            *(v228 - 1) = v243 | 0x80;
            v243 = v242 >> 7;
            *v228++ = v242 >> 7;
            v244 = v242 >> 14;
            v242 >>= 7;
          }

          while (v244);
        }
      }

      else
      {
        v228 = v239 + 1;
      }

      v239 = v228;
    }

    while (v237 < v238);
  }

  v245 = *(a1 + 600);
  if (v245 >= 1)
  {
    if (*a3 <= v228)
    {
      v228 = sub_225EB68(a3, v228);
    }

    *v228 = 1418;
    v246 = v228 + 2;
    if (v245 >= 0x80)
    {
      do
      {
        *v246++ = v245 | 0x80;
        v247 = v245 >> 7;
        v295 = v245 >> 14;
        v245 >>= 7;
      }

      while (v295);
    }

    else
    {
      LOBYTE(v247) = v245;
    }

    *v246 = v247;
    v248 = *(a1 + 592);
    v249 = &v248[*(a1 + 584)];
    v250 = v246 + 1;
    do
    {
      if (*a3 <= v250)
      {
        v250 = sub_225EB68(a3, v250);
      }

      v252 = *v248++;
      v251 = v252;
      *v250 = v252;
      if (v252 > 0x7F)
      {
        *v250 = v251 | 0x80;
        v253 = v251 >> 7;
        v250[1] = v251 >> 7;
        v228 = v250 + 2;
        if (v251 >= 0x4000)
        {
          LOBYTE(v254) = v250[1];
          do
          {
            *(v228 - 1) = v254 | 0x80;
            v254 = v253 >> 7;
            *v228++ = v253 >> 7;
            v255 = v253 >> 14;
            v253 >>= 7;
          }

          while (v255);
        }
      }

      else
      {
        v228 = v250 + 1;
      }

      v250 = v228;
    }

    while (v248 < v249);
  }

  v256 = *(a1 + 616);
  if (v256)
  {
    for (i5 = 0; i5 != v256; ++i5)
    {
      if (*a3 <= v228)
      {
        v228 = sub_225EB68(a3, v228);
      }

      v258 = *(*(a1 + 624) + 8 * i5 + 8);
      *v228 = 1426;
      v259 = *(v258 + 20);
      v228[2] = v259;
      if (v259 > 0x7F)
      {
        v260 = sub_19575D0(v259, v228 + 2);
      }

      else
      {
        v260 = v228 + 3;
      }

      v228 = sub_14502B0(v258, v260, a3);
    }
  }

  v261 = *(a1 + 640);
  if (v261)
  {
    for (i6 = 0; i6 != v261; ++i6)
    {
      if (*a3 <= v228)
      {
        v228 = sub_225EB68(a3, v228);
      }

      v263 = *(*(a1 + 648) + 8 * i6 + 8);
      *v228 = 1434;
      v264 = *(v263 + 20);
      v228[2] = v264;
      if (v264 > 0x7F)
      {
        v265 = sub_19575D0(v264, v228 + 2);
      }

      else
      {
        v265 = v228 + 3;
      }

      v228 = sub_14502B0(v263, v265, a3);
    }
  }

  if ((v233 & 0x40000) != 0)
  {
    if (*a3 <= v228)
    {
      v228 = sub_225EB68(a3, v228);
    }

    v266 = *(a1 + 848);
    *v228 = 1458;
    v267 = *(v266 + 20);
    v228[2] = v267;
    if (v267 > 0x7F)
    {
      v268 = sub_19575D0(v267, v228 + 2);
    }

    else
    {
      v268 = v228 + 3;
    }

    v228 = sub_145B7D4(v266, v268, a3);
    if ((v233 & 0x80000) == 0)
    {
LABEL_463:
      if ((v233 & 0x100000) == 0)
      {
        goto LABEL_483;
      }

      goto LABEL_477;
    }
  }

  else if ((v233 & 0x80000) == 0)
  {
    goto LABEL_463;
  }

  if (*a3 <= v228)
  {
    v228 = sub_225EB68(a3, v228);
  }

  v269 = *(a1 + 856);
  *v228 = 1466;
  v270 = *(v269 + 20);
  v228[2] = v270;
  if (v270 > 0x7F)
  {
    v271 = sub_19575D0(v270, v228 + 2);
  }

  else
  {
    v271 = v228 + 3;
  }

  v228 = sub_145B7D4(v269, v271, a3);
  if ((v233 & 0x100000) != 0)
  {
LABEL_477:
    if (*a3 <= v228)
    {
      v228 = sub_225EB68(a3, v228);
    }

    v272 = *(a1 + 864);
    *v228 = 1474;
    v273 = *(v272 + 40);
    v228[2] = v273;
    if (v273 > 0x7F)
    {
      v274 = sub_19575D0(v273, v228 + 2);
    }

    else
    {
      v274 = v228 + 3;
    }

    v228 = sub_14B9D70(v272, v274, a3);
  }

LABEL_483:
  v275 = *(a1 + 664);
  if (v275)
  {
    for (i7 = 0; i7 != v275; ++i7)
    {
      if (*a3 <= v228)
      {
        v228 = sub_225EB68(a3, v228);
      }

      v277 = *(*(a1 + 672) + 8 * i7 + 8);
      *v228 = 1482;
      v278 = *(v277 + 20);
      v228[2] = v278;
      if (v278 > 0x7F)
      {
        v279 = sub_19575D0(v278, v228 + 2);
      }

      else
      {
        v279 = v228 + 3;
      }

      v228 = sub_1486FB8(v277, v279, a3);
    }
  }

  v280 = *(a1 + 688);
  if (v280)
  {
    for (i8 = 0; i8 != v280; ++i8)
    {
      if (*a3 <= v228)
      {
        v228 = sub_225EB68(a3, v228);
      }

      v282 = *(*(a1 + 696) + 8 * i8 + 8);
      *v228 = 1490;
      v283 = *(v282 + 20);
      v228[2] = v283;
      if (v283 > 0x7F)
      {
        v284 = sub_19575D0(v283, v228 + 2);
      }

      else
      {
        v284 = v228 + 3;
      }

      v228 = sub_148BA5C(v282, v284, a3);
    }
  }

  if (*(a1 + 26))
  {
    v228 = sub_1953428(a1 + 16, 950, 10101, v228, a3);
  }

  v285 = *(a1 + 8);
  if ((v285 & 1) == 0)
  {
    return v228;
  }

  v287 = v285 & 0xFFFFFFFFFFFFFFFCLL;
  v288 = *(v287 + 31);
  if (v288 < 0)
  {
    v289 = *(v287 + 8);
    v288 = *(v287 + 16);
  }

  else
  {
    v289 = (v287 + 8);
  }

  if ((*a3 - v228) >= v288)
  {
    v296 = v288;
    memcpy(v228, v289, v288);
    v228 += v296;
    return v228;
  }

  return sub_1957130(a3, v289, v288, v228);
}