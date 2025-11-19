char *sub_1536FD4(uint64_t a1, char *__dst, _DWORD *a3)
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

LABEL_12:
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v9 = *(a1 + 26);
      *__dst = 24;
      __dst[1] = v9;
      __dst += 2;
      if ((v5 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
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
  if ((v5 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
LABEL_5:
    v6 = __dst;
    goto LABEL_22;
  }

LABEL_15:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v10 = *(a1 + 28);
  *__dst = 32;
  __dst[1] = v10;
  if (v10 > 0x7F)
  {
    __dst[1] = v10 | 0x80;
    v11 = v10 >> 7;
    __dst[2] = v10 >> 7;
    v6 = __dst + 3;
    if (v10 >= 0x4000)
    {
      LOBYTE(v12) = __dst[2];
      do
      {
        *(v6 - 1) = v12 | 0x80;
        v12 = v11 >> 7;
        *v6++ = v11 >> 7;
        v13 = v11 >> 14;
        v11 >>= 7;
      }

      while (v13);
    }
  }

  else
  {
    v6 = __dst + 2;
  }

LABEL_22:
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

uint64_t sub_15371A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) != 0)
  {
    v2 = 2 * (*(a1 + 16) & 1) + (*(a1 + 16) & 2) + ((*(a1 + 16) >> 1) & 2u);
    if ((v1 & 8) != 0)
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

std::string *sub_1537234(std::string *result, uint64_t a2)
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
      result[1].__r_.__value_.__s.__data_[2] = *(a2 + 26);
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

  result[1].__r_.__value_.__s.__data_[1] = *(a2 + 25);
  if ((v2 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 8) != 0)
  {
LABEL_6:
    HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
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

uint64_t sub_15372C0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26ECA40;
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

void sub_153733C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_153736C(void *a1)
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

void sub_15373E0(void *a1)
{
  sub_153736C(a1);

  operator delete();
}

uint64_t sub_1537418(uint64_t a1)
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

char *sub_1537430(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_1537634(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

uint64_t sub_153774C(uint64_t a1)
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

uint64_t sub_15377AC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26ECAC0;
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

void sub_1537828(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1537858(void *a1)
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

void sub_15378CC(void *a1)
{
  sub_1537858(a1);

  operator delete();
}

uint64_t sub_1537904(uint64_t a1)
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

char *sub_153791C(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_1537AA0(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

uint64_t sub_1537B80(uint64_t a1)
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

uint64_t sub_1537BD0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26ECB40;
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

void sub_1537C4C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1537C7C(void *a1)
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

void sub_1537CF0(void *a1)
{
  sub_1537C7C(a1);

  operator delete();
}

uint64_t sub_1537D28(uint64_t a1)
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

char *sub_1537D40(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_1537F44(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

uint64_t sub_153805C(uint64_t a1)
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

double sub_15380BC(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26ECBC0;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0uLL;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = &qword_278E990;
  *(a1 + 112) = &qword_278E990;
  *(a1 + 120) = &qword_278E990;
  *(a1 + 128) = &qword_278E990;
  *(a1 + 136) = &qword_278E990;
  *(a1 + 144) = &qword_278E990;
  *(a1 + 152) = &qword_278E990;
  *(a1 + 160) = &qword_278E990;
  *(a1 + 168) = &qword_278E990;
  *(a1 + 272) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 276) = xmmword_23365D0;
  *(a1 + 292) = 7;
  *&result = 0x300000001;
  *(a1 + 296) = 0x300000001;
  return result;
}

uint64_t sub_1538164(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26ECBC0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v5 = a1 + 32;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v6 = *(a2 + 40);
  if (v6)
  {
    v7 = *(a2 + 48);
    v8 = sub_19592E8(a1 + 32, *(a2 + 40));
    sub_1201B48(v5, v8, (v7 + 8), v6, **(a1 + 48) - *(a1 + 40));
    v9 = *(a1 + 40) + v6;
    *(a1 + 40) = v9;
    v10 = *(a1 + 48);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v11 = *(a2 + 56);
  if (v11)
  {
    sub_1958E5C((a1 + 56), v11);
    v12 = *(a1 + 64);
    *(a1 + 56) += *(a2 + 56);
    memcpy(v12, *(a2 + 64), 4 * *(a2 + 56));
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v13 = *(a2 + 72);
  if (v13)
  {
    sub_1958E5C((a1 + 72), v13);
    v14 = *(a1 + 80);
    *(a1 + 72) += *(a2 + 72);
    memcpy(v14, *(a2 + 80), 4 * *(a2 + 72));
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v15 = *(a2 + 88);
  if (v15)
  {
    sub_1958E5C((a1 + 88), v15);
    v16 = *(a1 + 96);
    *(a1 + 88) += *(a2 + 88);
    memcpy(v16, *(a2 + 96), 4 * *(a2 + 88));
  }

  v17 = *(a2 + 8);
  if (v17)
  {
    sub_1957EF4(v4, (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 104) = &qword_278E990;
  v18 = *(a2 + 16);
  if (v18)
  {
    v19 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v19 = *v19;
    }

    sub_194EA1C((a1 + 104), (*(a2 + 104) & 0xFFFFFFFFFFFFFFFELL), v19);
    v18 = *(a2 + 16);
  }

  *(a1 + 112) = &qword_278E990;
  if ((v18 & 2) != 0)
  {
    v20 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v20 = *v20;
    }

    sub_194EA1C((a1 + 112), (*(a2 + 112) & 0xFFFFFFFFFFFFFFFELL), v20);
    v18 = *(a2 + 16);
  }

  *(a1 + 120) = &qword_278E990;
  if ((v18 & 4) != 0)
  {
    v21 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v21 = *v21;
    }

    sub_194EA1C((a1 + 120), (*(a2 + 120) & 0xFFFFFFFFFFFFFFFELL), v21);
    v18 = *(a2 + 16);
  }

  *(a1 + 128) = &qword_278E990;
  if ((v18 & 8) != 0)
  {
    v22 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v22 = *v22;
    }

    sub_194EA1C((a1 + 128), (*(a2 + 128) & 0xFFFFFFFFFFFFFFFELL), v22);
    v18 = *(a2 + 16);
  }

  *(a1 + 136) = &qword_278E990;
  if ((v18 & 0x10) != 0)
  {
    v23 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v23 = *v23;
    }

    sub_194EA1C((a1 + 136), (*(a2 + 136) & 0xFFFFFFFFFFFFFFFELL), v23);
    v18 = *(a2 + 16);
  }

  *(a1 + 144) = &qword_278E990;
  if ((v18 & 0x20) != 0)
  {
    v24 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v24 = *v24;
    }

    sub_194EA1C((a1 + 144), (*(a2 + 144) & 0xFFFFFFFFFFFFFFFELL), v24);
    v18 = *(a2 + 16);
  }

  *(a1 + 152) = &qword_278E990;
  if ((v18 & 0x40) != 0)
  {
    v25 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v25 = *v25;
    }

    sub_194EA1C((a1 + 152), (*(a2 + 152) & 0xFFFFFFFFFFFFFFFELL), v25);
    v18 = *(a2 + 16);
  }

  *(a1 + 160) = &qword_278E990;
  if ((v18 & 0x80) != 0)
  {
    v26 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v26 = *v26;
    }

    sub_194EA1C((a1 + 160), (*(a2 + 160) & 0xFFFFFFFFFFFFFFFELL), v26);
    v18 = *(a2 + 16);
  }

  *(a1 + 168) = &qword_278E990;
  if ((v18 & 0x100) != 0)
  {
    v27 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v27 = *v27;
    }

    sub_194EA1C((a1 + 168), (*(a2 + 168) & 0xFFFFFFFFFFFFFFFELL), v27);
    v18 = *(a2 + 16);
  }

  if ((v18 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 176) = 0;
  if ((v18 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 184) = 0;
  if ((v18 & 0x800) != 0)
  {
    operator new();
  }

  *(a1 + 192) = 0;
  if ((v18 & 0x1000) != 0)
  {
    operator new();
  }

  *(a1 + 200) = 0;
  if ((v18 & 0x2000) != 0)
  {
    operator new();
  }

  *(a1 + 208) = 0;
  if ((v18 & 0x4000) != 0)
  {
    operator new();
  }

  *(a1 + 216) = 0;
  if ((v18 & 0x8000) != 0)
  {
    operator new();
  }

  *(a1 + 224) = 0;
  *(a1 + 232) = *(a2 + 232);
  v28 = *(a2 + 248);
  v29 = *(a2 + 264);
  v30 = *(a2 + 280);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 264) = v29;
  *(a1 + 280) = v30;
  *(a1 + 248) = v28;
  return a1;
}

void *sub_153875C(void *a1)
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

  sub_1538800(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956ABC((a1 + 11));
  sub_1956ABC((a1 + 9));
  sub_1956ABC((a1 + 7));
  sub_1956AFC(a1 + 4);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1538800(uint64_t a1)
{
  v3 = *(a1 + 104);
  v2 = (a1 + 104);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
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

  if (*(a1 + 136) != &qword_278E990)
  {
    sub_194E89C((a1 + 136));
  }

  if (*(a1 + 144) != &qword_278E990)
  {
    sub_194E89C((a1 + 144));
  }

  if (*(a1 + 152) != &qword_278E990)
  {
    sub_194E89C((a1 + 152));
  }

  if (*(a1 + 160) != &qword_278E990)
  {
    sub_194E89C((a1 + 160));
  }

  result = (a1 + 168);
  if (*(a1 + 168) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2776700)
  {
    v5 = *(a1 + 176);
    if (v5)
    {
      sub_1536C1C(v5);
      operator delete();
    }

    if (*(a1 + 184))
    {
      sub_16F2FF4();
      operator delete();
    }

    if (*(a1 + 192))
    {
      sub_16F285C();
      operator delete();
    }

    if (*(a1 + 200))
    {
      sub_16F4484();
      operator delete();
    }

    v6 = *(a1 + 208);
    if (v6)
    {
      sub_153736C(v6);
      operator delete();
    }

    v7 = *(a1 + 216);
    if (v7)
    {
      sub_1537858(v7);
      operator delete();
    }

    result = *(a1 + 224);
    if (result)
    {
      sub_1537C7C(result);

      operator delete();
    }
  }

  return result;
}

void sub_15389DC(void *a1)
{
  sub_153875C(a1);

  operator delete();
}

char *sub_1538BB4(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL, a2);
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

  v4 = sub_128AEEC(a3, 2, *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) != 0)
  {
LABEL_4:
    v4 = sub_128AEEC(a3, 3, *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_5:
  if ((*(a1 + 23) & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 280);
    *v4 = 32;
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      v4[2] = v8 >> 7;
      v7 = v4 + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v4) = v4[2];
        do
        {
          *(v7 - 1) = v4 | 0x80;
          v4 = (v9 >> 7);
          *v7++ = v9 >> 7;
          v10 = v9 >> 14;
          v9 >>= 7;
        }

        while (v10);
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

  v11 = *(a1 + 16);
  if ((v11 & 0x10000) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 232);
    *v7 = 40;
    v7[1] = v12;
    v7 += 2;
  }

  v13 = *(a1 + 40);
  if (v13 >= 1)
  {
    v14 = 8;
    do
    {
      v15 = *(*(a1 + 48) + v14);
      v16 = *(v15 + 23);
      if (v16 < 0 && (v16 = v15[1], v16 > 127) || *a3 - v7 + 14 < v16)
      {
        v7 = sub_1957480(a3, 6, v15, v7);
      }

      else
      {
        *v7 = 50;
        v7[1] = v16;
        if (*(v15 + 23) < 0)
        {
          v15 = *v15;
        }

        v17 = v7 + 2;
        memcpy(v7 + 2, v15, v16);
        v7 = &v17[v16];
      }

      v14 += 8;
      --v13;
    }

    while (v13);
  }

  if ((v11 & 8) != 0)
  {
    v7 = sub_128AEEC(a3, 7, *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL, v7);
  }

  v18 = *(a1 + 20);
  if ((v18 & 0x8000000) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v20 = *(a1 + 284);
    *v7 = 64;
    v7[1] = v20;
    if (v20 > 0x7F)
    {
      v7[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v7[2] = v20 >> 7;
      v19 = v7 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v7[2];
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
      v19 = v7 + 2;
    }
  }

  else
  {
    v19 = v7;
  }

  if ((v18 & 0x10000000) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 288);
    *v19 = 72;
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

  if ((v18 & 0x20000000) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 292);
    *v24 = 80;
    v24[1] = v29;
    if (v29 > 0x7F)
    {
      v24[1] = v29 | 0x80;
      v30 = v29 >> 7;
      v24[2] = v29 >> 7;
      v28 = v24 + 3;
      if (v29 >= 0x4000)
      {
        LOBYTE(v31) = v24[2];
        do
        {
          *(v28 - 1) = v31 | 0x80;
          v31 = v30 >> 7;
          *v28++ = v30 >> 7;
          v32 = v30 >> 14;
          v30 >>= 7;
        }

        while (v32);
      }
    }

    else
    {
      v28 = v24 + 2;
    }
  }

  else
  {
    v28 = v24;
  }

  v33 = *(a1 + 16);
  if ((v33 & 0x10) != 0)
  {
    v28 = sub_128AEEC(a3, 11, *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL, v28);
    if ((v33 & 0x40000) == 0)
    {
LABEL_63:
      if ((v33 & 0x80000) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    }
  }

  else if ((v33 & 0x40000) == 0)
  {
    goto LABEL_63;
  }

  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v34 = *(a1 + 234);
  *v28 = 96;
  v28[1] = v34;
  v28 += 2;
  if ((v33 & 0x80000) != 0)
  {
LABEL_69:
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v35 = *(a1 + 235);
    *v28 = 104;
    v28[1] = v35;
    v28 += 2;
  }

LABEL_72:
  if ((*(a1 + 23) & 0x40) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v37 = *(a1 + 296);
    *v28 = 112;
    v28[1] = v37;
    if (v37 > 0x7F)
    {
      v28[1] = v37 | 0x80;
      v38 = v37 >> 7;
      v28[2] = v37 >> 7;
      v36 = v28 + 3;
      if (v37 >= 0x4000)
      {
        LOBYTE(v28) = v28[2];
        do
        {
          *(v36 - 1) = v28 | 0x80;
          v28 = (v38 >> 7);
          *v36++ = v38 >> 7;
          v39 = v38 >> 14;
          v38 >>= 7;
        }

        while (v39);
      }
    }

    else
    {
      v36 = v28 + 2;
    }
  }

  else
  {
    v36 = v28;
  }

  v40 = *(a1 + 16);
  if ((v40 & 0x200) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v41 = *(a1 + 176);
    *v36 = 386;
    v42 = *(v41 + 20);
    v36[2] = v42;
    if (v42 > 0x7F)
    {
      v43 = sub_19575D0(v42, v36 + 2);
    }

    else
    {
      v43 = v36 + 3;
    }

    v36 = sub_1536FD4(v41, v43, a3);
    if ((v40 & 0x100000) == 0)
    {
LABEL_83:
      if ((v40 & 0x200000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_101;
    }
  }

  else if ((v40 & 0x100000) == 0)
  {
    goto LABEL_83;
  }

  if (*a3 <= v36)
  {
    v36 = sub_225EB68(a3, v36);
  }

  v44 = *(a1 + 236);
  *v36 = 392;
  v36[2] = v44;
  v36 += 3;
  if ((v40 & 0x200000) == 0)
  {
LABEL_84:
    if ((v40 & 0x20) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_104;
  }

LABEL_101:
  if (*a3 <= v36)
  {
    v36 = sub_225EB68(a3, v36);
  }

  v45 = *(a1 + 237);
  *v36 = 400;
  v36[2] = v45;
  v36 += 3;
  if ((v40 & 0x20) == 0)
  {
LABEL_85:
    if ((v40 & 0x400000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_105;
  }

LABEL_104:
  v36 = sub_128AEEC(a3, 19, *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL, v36);
  if ((v40 & 0x400000) == 0)
  {
LABEL_86:
    if ((v40 & 0x800000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_108;
  }

LABEL_105:
  if (*a3 <= v36)
  {
    v36 = sub_225EB68(a3, v36);
  }

  v46 = *(a1 + 238);
  *v36 = 416;
  v36[2] = v46;
  v36 += 3;
  if ((v40 & 0x800000) == 0)
  {
LABEL_87:
    if ((v40 & 0x1000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_111;
  }

LABEL_108:
  if (*a3 <= v36)
  {
    v36 = sub_225EB68(a3, v36);
  }

  v47 = *(a1 + 239);
  *v36 = 424;
  v36[2] = v47;
  v36 += 3;
  if ((v40 & 0x1000000) == 0)
  {
LABEL_88:
    if ((v40 & 0x20000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_114;
  }

LABEL_111:
  if (*a3 <= v36)
  {
    v36 = sub_225EB68(a3, v36);
  }

  v48 = *(a1 + 240);
  *v36 = 432;
  v36[2] = v48;
  v36 += 3;
  if ((v40 & 0x20000) == 0)
  {
LABEL_89:
    if ((v40 & 0x400) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_117;
  }

LABEL_114:
  if (*a3 <= v36)
  {
    v36 = sub_225EB68(a3, v36);
  }

  v49 = *(a1 + 233);
  *v36 = 440;
  v36[2] = v49;
  v36 += 3;
  if ((v40 & 0x400) == 0)
  {
LABEL_90:
    if ((v40 & 0x800) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_123;
  }

LABEL_117:
  if (*a3 <= v36)
  {
    v36 = sub_225EB68(a3, v36);
  }

  v50 = *(a1 + 184);
  *v36 = 450;
  v51 = *(v50 + 44);
  v36[2] = v51;
  if (v51 > 0x7F)
  {
    v52 = sub_19575D0(v51, v36 + 2);
  }

  else
  {
    v52 = v36 + 3;
  }

  v36 = sub_16F32C8(v50, v52, a3);
  if ((v40 & 0x800) != 0)
  {
LABEL_123:
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v53 = *(a1 + 192);
    *v36 = 458;
    v54 = *(v53 + 44);
    v36[2] = v54;
    if (v54 > 0x7F)
    {
      v55 = sub_19575D0(v54, v36 + 2);
    }

    else
    {
      v55 = v36 + 3;
    }

    v36 = sub_16F2AE0(v53, v55, a3);
  }

LABEL_129:
  if ((*(a1 + 20) & 0x80000000) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v57 = *(a1 + 300);
    *v36 = 464;
    v36[2] = v57;
    if (v57 > 0x7F)
    {
      v36[2] = v57 | 0x80;
      v58 = v57 >> 7;
      v36[3] = v57 >> 7;
      v56 = v36 + 4;
      if (v57 >= 0x4000)
      {
        LOBYTE(v59) = v36[3];
        do
        {
          *(v56 - 1) = v59 | 0x80;
          v59 = v58 >> 7;
          *v56++ = v58 >> 7;
          v60 = v58 >> 14;
          v58 >>= 7;
        }

        while (v60);
      }
    }

    else
    {
      v56 = v36 + 3;
    }
  }

  else
  {
    v56 = v36;
  }

  v61 = *(a1 + 56);
  if (v61 < 1)
  {
    v64 = v56;
  }

  else
  {
    for (i = 0; i != v61; ++i)
    {
      if (*a3 <= v56)
      {
        v56 = sub_225EB68(a3, v56);
      }

      v63 = *(*(a1 + 64) + 4 * i);
      *v56 = 472;
      v56[2] = v63;
      if (v63 > 0x7F)
      {
        v56[2] = v63 | 0x80;
        v65 = v63 >> 7;
        v56[3] = v63 >> 7;
        v64 = v56 + 4;
        if (v63 >= 0x4000)
        {
          LOBYTE(v66) = v56[3];
          do
          {
            *(v64 - 1) = v66 | 0x80;
            v66 = v65 >> 7;
            *v64++ = v65 >> 7;
            v67 = v65 >> 14;
            v65 >>= 7;
          }

          while (v67);
        }
      }

      else
      {
        v64 = v56 + 3;
      }

      v56 = v64;
    }
  }

  v68 = *(a1 + 16);
  if ((v68 & 0x2000000) != 0)
  {
    if (*a3 <= v64)
    {
      v64 = sub_225EB68(a3, v64);
    }

    v69 = *(a1 + 241);
    *v64 = 480;
    v64[2] = v69;
    v64 += 3;
    if ((v68 & 0x4000000) == 0)
    {
LABEL_152:
      if ((v68 & 0x8000000) == 0)
      {
        goto LABEL_153;
      }

      goto LABEL_166;
    }
  }

  else if ((v68 & 0x4000000) == 0)
  {
    goto LABEL_152;
  }

  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v70 = *(a1 + 242);
  *v64 = 488;
  v64[2] = v70;
  v64 += 3;
  if ((v68 & 0x8000000) == 0)
  {
LABEL_153:
    if ((v68 & 0x1000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_169;
  }

LABEL_166:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v71 = *(a1 + 243);
  *v64 = 496;
  v64[2] = v71;
  v64 += 3;
  if ((v68 & 0x1000) == 0)
  {
LABEL_154:
    if ((v68 & 0x40) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_175;
  }

LABEL_169:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v72 = *(a1 + 200);
  *v64 = 506;
  v73 = *(v72 + 20);
  v64[2] = v73;
  if (v73 > 0x7F)
  {
    v74 = sub_19575D0(v73, v64 + 2);
  }

  else
  {
    v74 = v64 + 3;
  }

  v64 = sub_16F47A4(v72, v74, a3);
  if ((v68 & 0x40) == 0)
  {
LABEL_155:
    if ((v68 & 0x10000000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_176;
  }

LABEL_175:
  v64 = sub_128AEEC(a3, 32, *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL, v64);
  if ((v68 & 0x10000000) == 0)
  {
LABEL_156:
    if ((v68 & 0x20000000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_179;
  }

LABEL_176:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v75 = *(a1 + 244);
  *v64 = 648;
  v64[2] = v75;
  v64 += 3;
  if ((v68 & 0x20000000) == 0)
  {
LABEL_157:
    if ((v68 & 0x40000000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_182;
  }

LABEL_179:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v76 = *(a1 + 245);
  *v64 = 656;
  v64[2] = v76;
  v64 += 3;
  if ((v68 & 0x40000000) == 0)
  {
LABEL_158:
    if ((v68 & 0x80000000) == 0)
    {
      goto LABEL_188;
    }

    goto LABEL_185;
  }

LABEL_182:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v77 = *(a1 + 246);
  *v64 = 664;
  v64[2] = v77;
  v64 += 3;
  if (v68 < 0)
  {
LABEL_185:
    if (*a3 <= v64)
    {
      v64 = sub_225EB68(a3, v64);
    }

    v78 = *(a1 + 247);
    *v64 = 672;
    v64[2] = v78;
    v64 += 3;
  }

LABEL_188:
  if (*(a1 + 20))
  {
    if (*a3 <= v64)
    {
      v64 = sub_225EB68(a3, v64);
    }

    v79 = *(a1 + 248);
    *v64 = 680;
    v64[2] = v79;
    v64 += 3;
  }

  if ((*(a1 + 16) & 0x80) != 0)
  {
    v64 = sub_128AEEC(a3, 38, *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL, v64);
  }

  v80 = *(a1 + 20);
  if ((v80 & 2) != 0)
  {
    if (*a3 <= v64)
    {
      v64 = sub_225EB68(a3, v64);
    }

    v81 = *(a1 + 249);
    *v64 = 696;
    v64[2] = v81;
    v64 += 3;
  }

  if ((v80 & 4) != 0)
  {
    if (*a3 <= v64)
    {
      v64 = sub_225EB68(a3, v64);
    }

    v82 = *(a1 + 250);
    *v64 = 704;
    v64[2] = v82;
    v64 += 3;
  }

  if ((*(a1 + 17) & 0x20) != 0)
  {
    if (*a3 <= v64)
    {
      v64 = sub_225EB68(a3, v64);
    }

    v83 = *(a1 + 208);
    *v64 = 714;
    v84 = *(v83 + 20);
    v64[2] = v84;
    if (v84 > 0x7F)
    {
      v85 = sub_19575D0(v84, v64 + 2);
    }

    else
    {
      v85 = v64 + 3;
    }

    v64 = sub_1537634(v83, v85, a3);
  }

  v86 = *(a1 + 20);
  if ((v86 & 8) != 0)
  {
    if (*a3 <= v64)
    {
      v64 = sub_225EB68(a3, v64);
    }

    v87 = *(a1 + 251);
    *v64 = 720;
    v64[2] = v87;
    v64 += 3;
    if ((v86 & 0x10) == 0)
    {
LABEL_211:
      if ((v86 & 0x20) == 0)
      {
        goto LABEL_212;
      }

      goto LABEL_226;
    }
  }

  else if ((v86 & 0x10) == 0)
  {
    goto LABEL_211;
  }

  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v88 = *(a1 + 252);
  *v64 = 728;
  v64[2] = v88;
  v64 += 3;
  if ((v86 & 0x20) == 0)
  {
LABEL_212:
    if ((v86 & 0x40) == 0)
    {
      goto LABEL_213;
    }

    goto LABEL_229;
  }

LABEL_226:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v89 = *(a1 + 253);
  *v64 = 736;
  v64[2] = v89;
  v64 += 3;
  if ((v86 & 0x40) == 0)
  {
LABEL_213:
    if ((v86 & 0x80) == 0)
    {
      goto LABEL_214;
    }

    goto LABEL_232;
  }

LABEL_229:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v90 = *(a1 + 254);
  *v64 = 744;
  v64[2] = v90;
  v64 += 3;
  if ((v86 & 0x80) == 0)
  {
LABEL_214:
    if ((v86 & 0x100) == 0)
    {
      goto LABEL_215;
    }

    goto LABEL_235;
  }

LABEL_232:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v91 = *(a1 + 255);
  *v64 = 752;
  v64[2] = v91;
  v64 += 3;
  if ((v86 & 0x100) == 0)
  {
LABEL_215:
    if ((v86 & 0x200) == 0)
    {
      goto LABEL_216;
    }

    goto LABEL_238;
  }

LABEL_235:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v92 = *(a1 + 256);
  *v64 = 760;
  v64[2] = v92;
  v64 += 3;
  if ((v86 & 0x200) == 0)
  {
LABEL_216:
    if ((v86 & 0x400) == 0)
    {
      goto LABEL_217;
    }

    goto LABEL_241;
  }

LABEL_238:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v93 = *(a1 + 257);
  *v64 = 896;
  v64[2] = v93;
  v64 += 3;
  if ((v86 & 0x400) == 0)
  {
LABEL_217:
    if ((v86 & 0x800) == 0)
    {
      goto LABEL_218;
    }

    goto LABEL_244;
  }

LABEL_241:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v94 = *(a1 + 258);
  *v64 = 904;
  v64[2] = v94;
  v64 += 3;
  if ((v86 & 0x800) == 0)
  {
LABEL_218:
    if ((v86 & 0x1000) == 0)
    {
      goto LABEL_250;
    }

    goto LABEL_247;
  }

LABEL_244:
  if (*a3 <= v64)
  {
    v64 = sub_225EB68(a3, v64);
  }

  v95 = *(a1 + 259);
  *v64 = 912;
  v64[2] = v95;
  v64 += 3;
  if ((v86 & 0x1000) != 0)
  {
LABEL_247:
    if (*a3 <= v64)
    {
      v64 = sub_225EB68(a3, v64);
    }

    v96 = *(a1 + 260);
    *v64 = 920;
    v64[2] = v96;
    v64 += 3;
  }

LABEL_250:
  v97 = *(a1 + 72);
  if (v97 < 1)
  {
    v100 = v64;
  }

  else
  {
    for (j = 0; j != v97; ++j)
    {
      if (*a3 <= v64)
      {
        v64 = sub_225EB68(a3, v64);
      }

      v99 = *(*(a1 + 80) + 4 * j);
      *v64 = 928;
      v64[2] = v99;
      if (v99 > 0x7F)
      {
        v64[2] = v99 | 0x80;
        v101 = v99 >> 7;
        v64[3] = v99 >> 7;
        v100 = v64 + 4;
        if (v99 >= 0x4000)
        {
          LOBYTE(v102) = v64[3];
          do
          {
            *(v100 - 1) = v102 | 0x80;
            v102 = v101 >> 7;
            *v100++ = v101 >> 7;
            v103 = v101 >> 14;
            v101 >>= 7;
          }

          while (v103);
        }
      }

      else
      {
        v100 = v64 + 3;
      }

      v64 = v100;
    }
  }

  if ((v86 & 0x2000) != 0)
  {
    if (*a3 <= v100)
    {
      v100 = sub_225EB68(a3, v100);
    }

    v104 = *(a1 + 261);
    *v100 = 936;
    v100[2] = v104;
    v100 += 3;
  }

  if ((*(a1 + 17) & 0x40) != 0)
  {
    if (*a3 <= v100)
    {
      v100 = sub_225EB68(a3, v100);
    }

    v105 = *(a1 + 216);
    *v100 = 946;
    v106 = *(v105 + 20);
    v100[2] = v106;
    if (v106 > 0x7F)
    {
      v107 = sub_19575D0(v106, v100 + 2);
    }

    else
    {
      v107 = v100 + 3;
    }

    v100 = sub_1537AA0(v105, v107, a3);
  }

  v108 = *(a1 + 20);
  if ((v108 & 0x2000000) != 0)
  {
    if (*a3 <= v100)
    {
      v100 = sub_225EB68(a3, v100);
    }

    v110 = *(a1 + 276);
    *v100 = 952;
    v100[2] = v110;
    if (v110 > 0x7F)
    {
      v100[2] = v110 | 0x80;
      v111 = v110 >> 7;
      v100[3] = v110 >> 7;
      v109 = v100 + 4;
      if (v110 >= 0x4000)
      {
        LOBYTE(v100) = v100[3];
        do
        {
          *(v109 - 1) = v100 | 0x80;
          v100 = (v111 >> 7);
          *v109++ = v111 >> 7;
          v112 = v111 >> 14;
          v111 >>= 7;
        }

        while (v112);
      }
    }

    else
    {
      v109 = v100 + 3;
    }
  }

  else
  {
    v109 = v100;
  }

  if ((v108 & 0x4000) != 0)
  {
    if (*a3 <= v109)
    {
      v109 = sub_225EB68(a3, v109);
    }

    v113 = *(a1 + 262);
    *v109 = 960;
    v109[2] = v113;
    v109 += 3;
    if ((v108 & 0x8000) == 0)
    {
LABEL_284:
      if ((v108 & 0x10000) == 0)
      {
        goto LABEL_285;
      }

      goto LABEL_296;
    }
  }

  else if ((v108 & 0x8000) == 0)
  {
    goto LABEL_284;
  }

  if (*a3 <= v109)
  {
    v109 = sub_225EB68(a3, v109);
  }

  v114 = *(a1 + 263);
  *v109 = 968;
  v109[2] = v114;
  v109 += 3;
  if ((v108 & 0x10000) == 0)
  {
LABEL_285:
    if ((v108 & 0x20000) == 0)
    {
      goto LABEL_286;
    }

    goto LABEL_299;
  }

LABEL_296:
  if (*a3 <= v109)
  {
    v109 = sub_225EB68(a3, v109);
  }

  v115 = *(a1 + 264);
  *v109 = 976;
  v109[2] = v115;
  v109 += 3;
  if ((v108 & 0x20000) == 0)
  {
LABEL_286:
    if ((v108 & 0x40000) == 0)
    {
      goto LABEL_287;
    }

    goto LABEL_302;
  }

LABEL_299:
  if (*a3 <= v109)
  {
    v109 = sub_225EB68(a3, v109);
  }

  v116 = *(a1 + 265);
  *v109 = 984;
  v109[2] = v116;
  v109 += 3;
  if ((v108 & 0x40000) == 0)
  {
LABEL_287:
    if ((v108 & 0x80000) == 0)
    {
      goto LABEL_288;
    }

    goto LABEL_305;
  }

LABEL_302:
  if (*a3 <= v109)
  {
    v109 = sub_225EB68(a3, v109);
  }

  v117 = *(a1 + 266);
  *v109 = 992;
  v109[2] = v117;
  v109 += 3;
  if ((v108 & 0x80000) == 0)
  {
LABEL_288:
    if ((v108 & 0x200000) == 0)
    {
      goto LABEL_311;
    }

    goto LABEL_308;
  }

LABEL_305:
  if (*a3 <= v109)
  {
    v109 = sub_225EB68(a3, v109);
  }

  v118 = *(a1 + 267);
  *v109 = 1000;
  v109[2] = v118;
  v109 += 3;
  if ((v108 & 0x200000) != 0)
  {
LABEL_308:
    if (*a3 <= v109)
    {
      v109 = sub_225EB68(a3, v109);
    }

    v119 = *(a1 + 269);
    *v109 = 1008;
    v109[2] = v119;
    v109 += 3;
  }

LABEL_311:
  v120 = *(a1 + 88);
  if (v120 < 1)
  {
    v123 = v109;
  }

  else
  {
    for (k = 0; k != v120; ++k)
    {
      if (*a3 <= v109)
      {
        v109 = sub_225EB68(a3, v109);
      }

      v122 = *(*(a1 + 96) + 4 * k);
      *v109 = 1016;
      v109[2] = v122;
      if (v122 > 0x7F)
      {
        v109[2] = v122 | 0x80;
        v124 = v122 >> 7;
        v109[3] = v122 >> 7;
        v123 = v109 + 4;
        if (v122 >= 0x4000)
        {
          LOBYTE(v125) = v109[3];
          do
          {
            *(v123 - 1) = v125 | 0x80;
            v125 = v124 >> 7;
            *v123++ = v124 >> 7;
            v126 = v124 >> 14;
            v124 >>= 7;
          }

          while (v126);
        }
      }

      else
      {
        v123 = v109 + 3;
      }

      v109 = v123;
    }
  }

  if ((v108 & 0x400000) != 0)
  {
    if (*a3 <= v123)
    {
      v123 = sub_225EB68(a3, v123);
    }

    v127 = *(a1 + 270);
    *v123 = 1152;
    v123[2] = v127;
    v123 += 3;
  }

  if (*(a1 + 17))
  {
    v123 = sub_128AEEC(a3, 65, *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL, v123);
  }

  if ((*(a1 + 22) & 0x80) != 0)
  {
    if (*a3 <= v123)
    {
      v123 = sub_225EB68(a3, v123);
    }

    v128 = *(a1 + 271);
    *v123 = 1168;
    v123[2] = v128;
    v123 += 3;
  }

  if ((*(a1 + 17) & 0x80) != 0)
  {
    if (*a3 <= v123)
    {
      v123 = sub_225EB68(a3, v123);
    }

    v129 = *(a1 + 224);
    *v123 = 1178;
    v130 = *(v129 + 20);
    v123[2] = v130;
    if (v130 > 0x7F)
    {
      v131 = sub_19575D0(v130, v123 + 2);
    }

    else
    {
      v131 = v123 + 3;
    }

    v123 = sub_1537F44(v129, v131, a3);
  }

  v132 = *(a1 + 20);
  if ((v132 & 0x100000) != 0)
  {
    if (*a3 <= v123)
    {
      v123 = sub_225EB68(a3, v123);
    }

    v133 = *(a1 + 268);
    *v123 = 1184;
    v123[2] = v133;
    v123 += 3;
  }

  if ((v132 & 0x1000000) != 0)
  {
    if (*a3 <= v123)
    {
      v123 = sub_225EB68(a3, v123);
    }

    v134 = *(a1 + 272);
    *v123 = 1696;
    v123[2] = v134;
    v123 += 3;
  }

  v135 = *(a1 + 8);
  if ((v135 & 1) == 0)
  {
    return v123;
  }

  v137 = v135 & 0xFFFFFFFFFFFFFFFCLL;
  v138 = *(v137 + 31);
  if (v138 < 0)
  {
    v139 = *(v137 + 8);
    v138 = *(v137 + 16);
  }

  else
  {
    v139 = (v137 + 8);
  }

  if (*a3 - v123 >= v138)
  {
    v140 = v138;
    memcpy(v123, v139, v138);
    v123 += v140;
    return v123;
  }

  return sub_1957130(a3, v139, v138, v123);
}

uint64_t sub_153A048(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 < 1)
  {
    v4 = *(a1 + 40);
  }

  else
  {
    v3 = (*(a1 + 48) + 8);
    v4 = *(a1 + 40);
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
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 64) + 4 * v9);
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

  v13 = *(a1 + 72);
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(*(a1 + 80) + 4 * v14);
      if (v16 < 0)
      {
        v17 = 10;
      }

      else
      {
        v17 = (9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6;
      }

      v15 += v17;
      ++v14;
    }

    while (v13 != v14);
  }

  else
  {
    v15 = 0;
  }

  v18 = *(a1 + 88);
  if (v18)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(*(a1 + 96) + 4 * v19);
      if (v21 < 0)
      {
        v22 = 10;
      }

      else
      {
        v22 = (9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6;
      }

      v20 += v22;
      ++v19;
    }

    while (v18 != v19);
  }

  else
  {
    v20 = 0;
  }

  v23 = v10 + v4 + v15 + 2 * (v13 + v8 + v18) + v20;
  v24 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    goto LABEL_44;
  }

  if (v24)
  {
    v38 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
    v39 = *(v38 + 23);
    v40 = *(v38 + 8);
    if ((v39 & 0x80u) == 0)
    {
      v40 = v39;
    }

    v23 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v24 & 2) == 0)
    {
LABEL_35:
      if ((v24 & 4) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_156;
    }
  }

  else if ((v24 & 2) == 0)
  {
    goto LABEL_35;
  }

  v41 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
  v42 = *(v41 + 23);
  v43 = *(v41 + 8);
  if ((v42 & 0x80u) == 0)
  {
    v43 = v42;
  }

  v23 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v24 & 4) == 0)
  {
LABEL_36:
    if ((v24 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_159;
  }

LABEL_156:
  v44 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
  v45 = *(v44 + 23);
  v46 = *(v44 + 8);
  if ((v45 & 0x80u) == 0)
  {
    v46 = v45;
  }

  v23 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v24 & 8) == 0)
  {
LABEL_37:
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_162;
  }

LABEL_159:
  v47 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
  v48 = *(v47 + 23);
  v49 = *(v47 + 8);
  if ((v48 & 0x80u) == 0)
  {
    v49 = v48;
  }

  v23 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v24 & 0x10) == 0)
  {
LABEL_38:
    if ((v24 & 0x20) == 0)
    {
      goto LABEL_39;
    }

LABEL_165:
    v53 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
    v54 = *(v53 + 23);
    v55 = *(v53 + 8);
    if ((v54 & 0x80u) == 0)
    {
      v55 = v54;
    }

    v23 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v24 & 0x40) == 0)
    {
LABEL_40:
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    goto LABEL_168;
  }

LABEL_162:
  v50 = *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL;
  v51 = *(v50 + 23);
  v52 = *(v50 + 8);
  if ((v51 & 0x80u) == 0)
  {
    v52 = v51;
  }

  v23 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v24 & 0x20) != 0)
  {
    goto LABEL_165;
  }

LABEL_39:
  if ((v24 & 0x40) == 0)
  {
    goto LABEL_40;
  }

LABEL_168:
  v56 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
  v57 = *(v56 + 23);
  v58 = *(v56 + 8);
  if ((v57 & 0x80u) == 0)
  {
    v58 = v57;
  }

  v23 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v24 & 0x80) != 0)
  {
LABEL_41:
    v25 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
    v26 = *(v25 + 23);
    v27 = *(v25 + 8);
    if ((v26 & 0x80u) == 0)
    {
      v27 = v26;
    }

    v23 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_44:
  if ((v24 & 0xFF00) == 0)
  {
    goto LABEL_54;
  }

  if ((v24 & 0x100) != 0)
  {
    v59 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
    v60 = *(v59 + 23);
    v61 = *(v59 + 8);
    if ((v60 & 0x80u) == 0)
    {
      v61 = v60;
    }

    v23 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v24 & 0x200) == 0)
    {
LABEL_47:
      if ((v24 & 0x400) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_176;
    }
  }

  else if ((v24 & 0x200) == 0)
  {
    goto LABEL_47;
  }

  v62 = sub_15371A4(*(a1 + 176));
  v23 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v24 & 0x400) == 0)
  {
LABEL_48:
    if ((v24 & 0x800) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_177;
  }

LABEL_176:
  v63 = sub_16F3438(*(a1 + 184));
  v23 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v24 & 0x800) == 0)
  {
LABEL_49:
    if ((v24 & 0x1000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_178;
  }

LABEL_177:
  v64 = sub_16F2C64(*(a1 + 192));
  v23 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v24 & 0x1000) == 0)
  {
LABEL_50:
    if ((v24 & 0x2000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_179;
  }

LABEL_178:
  v65 = sub_16F4930(*(a1 + 200));
  v23 += v65 + ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v24 & 0x2000) == 0)
  {
LABEL_51:
    if ((v24 & 0x4000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_180;
  }

LABEL_179:
  v66 = sub_153774C(*(a1 + 208));
  v23 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v24 & 0x4000) == 0)
  {
LABEL_52:
    if ((v24 & 0x8000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_180:
  v67 = *(a1 + 216);
  v68 = 2 * (*(v67 + 16) & 1);
  v69 = *(v67 + 8);
  if (v69)
  {
    v82 = v69 & 0xFFFFFFFFFFFFFFFCLL;
    v83 = *((v69 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v83 < 0)
    {
      v83 = *(v82 + 16);
    }

    v68 += v83;
  }

  *(v67 + 20) = v68;
  v23 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v24 & 0x8000) != 0)
  {
LABEL_53:
    v28 = sub_153805C(*(a1 + 224));
    v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_54:
  if ((v24 & 0xFF0000) != 0)
  {
    v29 = v23 + ((v24 >> 15) & 2);
    if ((v24 & 0x20000) != 0)
    {
      v29 += 3;
    }

    v30 = v29 + ((v24 >> 18) & 2) + ((v24 >> 17) & 2);
    if ((v24 & 0x100000) != 0)
    {
      v30 += 3;
    }

    if ((v24 & 0x200000) != 0)
    {
      v30 += 3;
    }

    if ((v24 & 0x400000) != 0)
    {
      v30 += 3;
    }

    if ((v24 & 0x800000) != 0)
    {
      v23 = v30 + 3;
    }

    else
    {
      v23 = v30;
    }
  }

  if (BYTE3(v24))
  {
    v31 = v23 + 3;
    if ((v24 & 0x1000000) == 0)
    {
      v31 = v23;
    }

    if ((v24 & 0x2000000) != 0)
    {
      v31 += 3;
    }

    if ((v24 & 0x4000000) != 0)
    {
      v31 += 3;
    }

    if ((v24 & 0x8000000) != 0)
    {
      v31 += 3;
    }

    if ((v24 & 0x10000000) != 0)
    {
      v31 += 3;
    }

    if ((v24 & 0x20000000) != 0)
    {
      v31 += 3;
    }

    if ((v24 & 0x40000000) != 0)
    {
      v31 += 3;
    }

    if ((v24 & 0x80000000) == 0)
    {
      v23 = v31;
    }

    else
    {
      v23 = v31 + 3;
    }
  }

  v32 = *(a1 + 20);
  if (v32)
  {
    v33 = v23 + 3;
    if ((v32 & 1) == 0)
    {
      v33 = v23;
    }

    if ((v32 & 2) != 0)
    {
      v33 += 3;
    }

    if ((v32 & 4) != 0)
    {
      v33 += 3;
    }

    if ((v32 & 8) != 0)
    {
      v33 += 3;
    }

    if ((v32 & 0x10) != 0)
    {
      v33 += 3;
    }

    if ((v32 & 0x20) != 0)
    {
      v33 += 3;
    }

    if ((v32 & 0x40) != 0)
    {
      v33 += 3;
    }

    if ((v32 & 0x80) != 0)
    {
      v23 = v33 + 3;
    }

    else
    {
      v23 = v33;
    }
  }

  if ((v32 & 0xFF00) != 0)
  {
    v34 = v23 + 3;
    if ((v32 & 0x100) == 0)
    {
      v34 = v23;
    }

    if ((v32 & 0x200) != 0)
    {
      v34 += 3;
    }

    if ((v32 & 0x400) != 0)
    {
      v34 += 3;
    }

    if ((v32 & 0x800) != 0)
    {
      v34 += 3;
    }

    if ((v32 & 0x1000) != 0)
    {
      v34 += 3;
    }

    if ((v32 & 0x2000) != 0)
    {
      v34 += 3;
    }

    if ((v32 & 0x4000) != 0)
    {
      v34 += 3;
    }

    if ((v32 & 0x8000) != 0)
    {
      v23 = v34 + 3;
    }

    else
    {
      v23 = v34;
    }
  }

  if ((v32 & 0xFF0000) != 0)
  {
    v35 = v23 + 3;
    if ((v32 & 0x10000) == 0)
    {
      v35 = v23;
    }

    if ((v32 & 0x20000) != 0)
    {
      v35 += 3;
    }

    if ((v32 & 0x40000) != 0)
    {
      v35 += 3;
    }

    if ((v32 & 0x80000) != 0)
    {
      v35 += 3;
    }

    if ((v32 & 0x100000) != 0)
    {
      v35 += 3;
    }

    if ((v32 & 0x200000) != 0)
    {
      v35 += 3;
    }

    if ((v32 & 0x400000) != 0)
    {
      v35 += 3;
    }

    if ((v32 & 0x800000) != 0)
    {
      v23 = v35 + 3;
    }

    else
    {
      v23 = v35;
    }
  }

  if (!HIBYTE(v32))
  {
    goto LABEL_148;
  }

  if ((v32 & 0x1000000) != 0)
  {
    v23 += 3;
  }

  if ((v32 & 0x2000000) != 0)
  {
    v70 = *(a1 + 276);
    if (v70 < 0)
    {
      v71 = 12;
    }

    else
    {
      v71 = ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v23 += v71;
    if ((v32 & 0x4000000) == 0)
    {
LABEL_143:
      if ((v32 & 0x8000000) == 0)
      {
        goto LABEL_144;
      }

      goto LABEL_191;
    }
  }

  else if ((v32 & 0x4000000) == 0)
  {
    goto LABEL_143;
  }

  v72 = *(a1 + 280);
  if (v72 < 0)
  {
    v73 = 11;
  }

  else
  {
    v73 = ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v23 += v73;
  if ((v32 & 0x8000000) == 0)
  {
LABEL_144:
    if ((v32 & 0x10000000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_192;
  }

LABEL_191:
  v23 += ((9 * (__clz(*(a1 + 284) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v32 & 0x10000000) == 0)
  {
LABEL_145:
    if ((v32 & 0x20000000) == 0)
    {
      goto LABEL_146;
    }

LABEL_196:
    v76 = *(a1 + 292);
    if (v76 < 0)
    {
      v77 = 11;
    }

    else
    {
      v77 = ((9 * (__clz(v76 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v23 += v77;
    if ((v32 & 0x40000000) == 0)
    {
LABEL_147:
      if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_204;
    }

    goto LABEL_200;
  }

LABEL_192:
  v74 = *(a1 + 288);
  if (v74 < 0)
  {
    v75 = 11;
  }

  else
  {
    v75 = ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v23 += v75;
  if ((v32 & 0x20000000) != 0)
  {
    goto LABEL_196;
  }

LABEL_146:
  if ((v32 & 0x40000000) == 0)
  {
    goto LABEL_147;
  }

LABEL_200:
  v78 = *(a1 + 296);
  if (v78 < 0)
  {
    v79 = 11;
  }

  else
  {
    v79 = ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v23 += v79;
  if ((v32 & 0x80000000) != 0)
  {
LABEL_204:
    v23 += ((9 * (__clz(*(a1 + 300) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_148:
  v36 = *(a1 + 8);
  if (v36)
  {
    v80 = v36 & 0xFFFFFFFFFFFFFFFCLL;
    v81 = *((v36 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v81 < 0)
    {
      v81 = *(v80 + 16);
    }

    v23 += v81;
  }

  *(a1 + 24) = v23;
  return v23;
}

uint64_t sub_153A9E0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_26ECC40;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = &qword_278E990;
  *(a1 + 56) = &qword_278E990;
  *(a1 + 64) = 0;
  *(a1 + 71) = 0;
  return a1;
}

void sub_153AA54(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_153AA84(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_26ECC40;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = 0;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  *(a1 + 48) = &qword_278E990;
  v7 = *(a2 + 40);
  if (v7)
  {
    v8 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v8 = *v8;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v8);
    v7 = *(a2 + 40);
  }

  *(a1 + 56) = &qword_278E990;
  if ((v7 & 2) != 0)
  {
    v9 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v9 = *v9;
    }

    sub_194EA1C((a1 + 56), (*(a2 + 56) & 0xFFFFFFFFFFFFFFFELL), v9);
  }

  v10 = *(a2 + 64);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 64) = v10;
  return a1;
}

void sub_153AB94(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_153ABD0(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_153AC90(uint64_t a1)
{
  sub_153ABD0(a1);

  operator delete();
}

unsigned __int8 *sub_153ACC8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v3 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v4 = 0;
      *(v4 + 23) = 0;
    }

    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v5 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_11:
  if ((v3 & 0x7C) != 0)
  {
    *(a1 + 71) = 0;
    *(a1 + 64) = 0;
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 32) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_153AD94(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v43 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v43, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v43 + 1);
    v8 = **v43;
    if (**v43 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v43, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v43 + 2);
      }
    }

    *v43 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          if (v11 != 3 || v8 != 26)
          {
            goto LABEL_61;
          }

          *(a1 + 40) |= 1u;
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v18 = (a1 + 48);
LABEL_44:
          v26 = sub_194DB04(v18, v17);
          v27 = sub_1958890(v26, *v43, a3);
LABEL_45:
          *v43 = v27;
          if (!v27)
          {
            goto LABEL_85;
          }

          goto LABEL_59;
        }

        if (v8 != 16)
        {
          goto LABEL_61;
        }

        v32 = v7 + 1;
        v31 = *v7;
        if (v31 < 0)
        {
          v33 = *v32;
          v31 = (v33 << 7) + v31 - 128;
          if (v33 < 0)
          {
            *v43 = sub_19587DC(v7, v31);
            if (!*v43)
            {
              goto LABEL_85;
            }

            goto LABEL_57;
          }

          v32 = v7 + 2;
        }

        *v43 = v32;
LABEL_57:
        if (v31 > 6)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 40) |= 8u;
          *(a1 + 68) = v31;
        }

        goto LABEL_59;
      }

      if (v8 != 8)
      {
        goto LABEL_61;
      }

      v23 = v7 + 1;
      v22 = *v7;
      if (v22 < 0)
      {
        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if (v24 < 0)
        {
          *v43 = sub_19587DC(v7, v22);
          if (!*v43)
          {
            goto LABEL_85;
          }

          goto LABEL_38;
        }

        v23 = v7 + 2;
      }

      *v43 = v23;
LABEL_38:
      if (v22 > 2)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 40) |= 4u;
        *(a1 + 64) = v22;
      }

      goto LABEL_59;
    }

    if (v8 >> 3 <= 5)
    {
      break;
    }

    if (v11 == 6)
    {
      if (v8 != 48)
      {
        goto LABEL_61;
      }

      v5 |= 0x20u;
      v29 = v7 + 1;
      v28 = *v7;
      if ((v28 & 0x8000000000000000) == 0)
      {
        goto LABEL_51;
      }

      v30 = *v29;
      v28 = (v30 << 7) + v28 - 128;
      if ((v30 & 0x80000000) == 0)
      {
        v29 = v7 + 2;
LABEL_51:
        *v43 = v29;
        *(a1 + 73) = v28 != 0;
        goto LABEL_59;
      }

      v37 = sub_19587DC(v7, v28);
      *v43 = v37;
      *(a1 + 73) = v38 != 0;
      if (!v37)
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v11 != 7 || v8 != 56)
      {
        goto LABEL_61;
      }

      v5 |= 0x40u;
      v20 = v7 + 1;
      v19 = *v7;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_32;
      }

      v21 = *v20;
      v19 = (v21 << 7) + v19 - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v20 = v7 + 2;
LABEL_32:
        *v43 = v20;
        *(a1 + 74) = v19 != 0;
        goto LABEL_59;
      }

      v41 = sub_19587DC(v7, v19);
      *v43 = v41;
      *(a1 + 74) = v42 != 0;
      if (!v41)
      {
        goto LABEL_85;
      }
    }

LABEL_59:
    if (sub_195ADC0(a3, v43, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 4)
  {
    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_61;
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
      *v43 = v13;
      *(a1 + 72) = v12 != 0;
      goto LABEL_59;
    }

    v39 = sub_19587DC(v7, v12);
    *v43 = v39;
    *(a1 + 72) = v40 != 0;
    if (!v39)
    {
      goto LABEL_85;
    }

    goto LABEL_59;
  }

  if (v8 == 34)
  {
    *(a1 + 40) |= 2u;
    v25 = *(a1 + 8);
    v17 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v17 = *v17;
    }

    v18 = (a1 + 56);
    goto LABEL_44;
  }

LABEL_61:
  if (v8)
  {
    v34 = (v8 & 7) == 4;
  }

  else
  {
    v34 = 1;
  }

  if (!v34)
  {
    if (v8 - 4000 > 0x63F)
    {
      v35 = *(a1 + 8);
      if (v35)
      {
        v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v36 = sub_11F1920((a1 + 8));
        v7 = *v43;
      }

      v27 = sub_1952690(v8, v36, v7, a3);
    }

    else
    {
      v27 = sub_19525AC((a1 + 16), v8, v7, &off_2776830, (a1 + 8), a3);
    }

    goto LABEL_45;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_85:
  *v43 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v43;
}

char *sub_153B1D4(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 64);
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

    v12 = *(a1 + 68);
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
    v11 = sub_128AEEC(a3, 3, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v11);
    if ((v5 & 2) == 0)
    {
LABEL_21:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_21;
  }

  v11 = sub_128AEEC(a3, 4, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v11);
  if ((v5 & 0x10) == 0)
  {
LABEL_22:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_30;
  }

LABEL_27:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v15 = *(a1 + 72);
  *v11 = 40;
  v11[1] = v15;
  v11 += 2;
  if ((v5 & 0x20) == 0)
  {
LABEL_23:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

LABEL_30:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v16 = *(a1 + 73);
  *v11 = 48;
  v11[1] = v16;
  v11 += 2;
  if ((v5 & 0x40) != 0)
  {
LABEL_33:
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v17 = *(a1 + 74);
    *v11 = 56;
    v11[1] = v17;
    v11 += 2;
  }

LABEL_36:
  if (*(a1 + 26))
  {
    v11 = sub_1953428(a1 + 16, 500, 700, v11, a3);
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v11;
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

  if (*a3 - v11 >= v21)
  {
    v23 = v21;
    memcpy(v11, v22, v21);
    v11 += v23;
    return v11;
  }

  return sub_1957130(a3, v22, v21, v11);
}

uint64_t sub_153B4A4(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 0x7F) != 0)
  {
    if (v3)
    {
      v8 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      result += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v3 & 2) == 0)
      {
LABEL_4:
        if ((v3 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_19;
      }
    }

    else if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    v11 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    result += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 4) == 0)
    {
LABEL_5:
      if ((v3 & 8) == 0)
      {
LABEL_10:
        result += ((v3 >> 4) & 2) + ((v3 >> 3) & 2) + ((v3 >> 5) & 2);
        goto LABEL_11;
      }

LABEL_6:
      v4 = *(a1 + 68);
      v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v4 >= 0)
      {
        v6 = v5;
      }

      else
      {
        v6 = 11;
      }

      result += v6;
      goto LABEL_10;
    }

LABEL_19:
    v14 = *(a1 + 64);
    if (v14 < 0)
    {
      v15 = 11;
    }

    else
    {
      v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v15;
    if ((v3 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

LABEL_11:
  v7 = *(a1 + 8);
  if (v7)
  {
    v16 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    result += v17;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_153B624(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 0x7F) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 48);
      *(a1 + 40) |= 1u;
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_194EA1C((a1 + 48), (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
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

    v9 = *(a2 + 56);
    *(a1 + 40) |= 2u;
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 56), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }

LABEL_21:
    *(a1 + 64) = *(a2 + 64);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }

LABEL_22:
    *(a1 + 68) = *(a2 + 68);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

LABEL_23:
    *(a1 + 72) = *(a2 + 72);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
LABEL_10:
        *(a1 + 40) |= v4;
        goto LABEL_11;
      }

LABEL_9:
      *(a1 + 74) = *(a2 + 74);
      goto LABEL_10;
    }

LABEL_24:
    *(a1 + 73) = *(a2 + 73);
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_153B780(void *a1)
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

void sub_153B7F4(void *a1)
{
  sub_153B780(a1);

  operator delete();
}

uint64_t sub_153B82C(uint64_t a1)
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

char *sub_153B850(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_153BA34(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_153BBE4(uint64_t a1)
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

void *sub_153BC98(void *a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  a1[1] = v5;
  *a1 = off_26ECD40;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = a2;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  return a1;
}

void sub_153BD08(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_153BD38(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_26ECD40;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 68) = 0;
  *(a1 + 52) = 0;
  *(a1 + 60) = 0;
  *(a1 + 44) = 0;
  v6 = *(a2 + 56);
  if (v6)
  {
    v7 = *(a2 + 64);
    v8 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144E1CC((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
    v9 = *(a1 + 56) + v6;
    *(a1 + 56) = v9;
    v10 = *(a1 + 64);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 8);
  if (v11)
  {
    sub_1957EF4(v4, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void sub_153BE44(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_153BE94(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_144E148(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_153BF1C(void *a1)
{
  sub_153BE94(a1);

  operator delete();
}

char *sub_153BF54(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_12;
    }

    v15 = v7 + 1;
    v14 = *v7;
    if ((v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_22;
    }

    v16 = *v15;
    v14 = (v16 << 7) + v14 - 128;
    if ((v16 & 0x80000000) == 0)
    {
      v15 = v7 + 2;
LABEL_22:
      v27 = v15;
      *(a1 + 72) = v14;
      v5 = 1;
      goto LABEL_36;
    }

    v25 = sub_19587DC(v7, v14);
    v27 = v25;
    *(a1 + 72) = v26;
    v5 = 1;
    if (!v25)
    {
      goto LABEL_43;
    }

LABEL_36:
    if (sub_195ADC0(a3, &v27, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 10)
  {
    v17 = v7 - 1;
    while (1)
    {
      v18 = (v17 + 1);
      v27 = v17 + 1;
      v19 = *(a1 + 64);
      if (v19 && (v20 = *(a1 + 56), v20 < *v19))
      {
        *(a1 + 56) = v20 + 1;
        v21 = *&v19[2 * v20 + 2];
      }

      else
      {
        v22 = sub_15519F8(*(a1 + 48));
        v21 = sub_19593CC(a1 + 48, v22);
        v18 = v27;
      }

      v17 = sub_220BDA8(a3, v21, v18);
      v27 = v17;
      if (!v17)
      {
        goto LABEL_43;
      }

      if (*a3 <= v17 || *v17 != 10)
      {
        goto LABEL_36;
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
    if (v8 - 1600 > 0xF9F)
    {
      v23 = *(a1 + 8);
      if (v23)
      {
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v24 = sub_11F1920((a1 + 8));
        v7 = v27;
      }

      v13 = sub_1952690(v8, v24, v7, a3);
    }

    else
    {
      v13 = sub_19525AC((a1 + 16), v8, v7, &off_2776880, (a1 + 8), a3);
    }

    v27 = v13;
    if (!v13)
    {
      goto LABEL_43;
    }

    goto LABEL_36;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_43:
  v27 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v27;
}

char *sub_153C1A4(uint64_t a1, char *a2, _DWORD *a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 64) + 8 * i + 8);
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

      a2 = sub_153BA34(v8, v10, a3);
    }
  }

  if (*(a1 + 40))
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v12 = *(a1 + 72);
    *a2 = 16;
    a2[1] = v12;
    if (v12 > 0x7F)
    {
      a2[1] = v12 | 0x80;
      v13 = v12 >> 7;
      a2[2] = v12 >> 7;
      v11 = a2 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(a2) = a2[2];
        do
        {
          *(v11 - 1) = a2 | 0x80;
          a2 = (v13 >> 7);
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = a2 + 2;
    }
  }

  else
  {
    v11 = a2;
  }

  if (*(a1 + 26))
  {
    v11 = sub_1953428(a1 + 16, 200, 700, v11, a3);
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

uint64_t sub_153C388(uint64_t a1)
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
      v9 = sub_153BBE4(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  if (*(a1 + 40))
  {
    v4 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

    v4 += v13;
  }

  *(a1 + 44) = v4;
  return v4;
}

void *sub_153C46C(void *a1)
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

void sub_153C4E8(void *a1)
{
  sub_153C46C(a1);

  operator delete();
}

uint64_t sub_153C520(uint64_t a1)
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

char *sub_153C548(uint64_t a1, char *a2, int32x2_t *a3)
{
  v33 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v33, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = v33 + 1;
    v9 = *v33;
    if (*v33 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(v33, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = v33 + 2;
      }
    }

    v33 = v8;
    v13 = v9 >> 3;
    if (v9 >> 3 == 3)
    {
      break;
    }

    if (v13 == 2)
    {
      if (v9 != 16)
      {
        goto LABEL_14;
      }

      v19 = v8 + 1;
      v18 = *v8;
      if (v18 < 0)
      {
        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = v8 + 2;
          goto LABEL_27;
        }

        v33 = sub_19587DC(v8, v18);
        if (!v33)
        {
          goto LABEL_64;
        }
      }

      else
      {
LABEL_27:
        v33 = v19;
      }

      if (v18 > 5)
      {
        sub_12E8418();
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 44) = v18;
      }

      goto LABEL_52;
    }

    if (v13 != 1 || v9 != 8)
    {
      goto LABEL_14;
    }

    LODWORD(v29) = *v8;
    if ((v29 & 0x80000000) == 0)
    {
      v30 = v8 + 1;
LABEL_51:
      v33 = v30;
      *(a1 + 40) = v29;
      v5 = 1;
      goto LABEL_52;
    }

    v29 = (v8[1] << 7) + v29 - 128;
    if ((v8[1] & 0x80000000) == 0)
    {
      v30 = v8 + 2;
      goto LABEL_51;
    }

    v31 = sub_19587DC(v8, v29);
    v33 = v31;
    *(a1 + 40) = v32;
    v5 = 1;
    if (!v31)
    {
      goto LABEL_64;
    }

LABEL_52:
    if (sub_195ADC0(a3, &v33, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v9 == 24)
  {
    v21 = v8 - 1;
    while (1)
    {
      v33 = v21 + 1;
      v22 = v21[1];
      v23 = v21 + 2;
      if (v22 < 0)
      {
        v24 = *v23;
        v25 = (v24 << 7) + v22;
        LODWORD(v22) = v25 - 128;
        if (v24 < 0)
        {
          v33 = sub_19587DC((v21 + 1), (v25 - 128));
          if (!v33)
          {
            goto LABEL_64;
          }

          LODWORD(v22) = v28;
          goto LABEL_36;
        }

        v23 = v21 + 3;
      }

      v33 = v23;
LABEL_36:
      if (v22 > 9)
      {
        sub_1313740();
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

      v21 = v33;
      if (*a3 <= v33 || *v33 != 24)
      {
        goto LABEL_52;
      }
    }
  }

  if (v9 == 26)
  {
    *&v34 = a1 + 24;
    *(&v34 + 1) = sub_152B658;
    v35 = a1 + 8;
    v36 = 3;
    v17 = sub_1216588(a3, v8, &v34);
    goto LABEL_21;
  }

LABEL_14:
  if (v9)
  {
    v15 = (v9 & 7) == 4;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    if (*v7)
    {
      v16 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v16 = sub_11F1920((a1 + 8));
      v8 = v33;
    }

    v17 = sub_1952690(v9, v16, v8, a3);
LABEL_21:
    v33 = v17;
    if (!v17)
    {
      goto LABEL_64;
    }

    goto LABEL_52;
  }

  if (v8)
  {
    a3[10].i32[0] = v9 - 1;
  }

  else
  {
LABEL_64:
    v33 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v33;
}

char *sub_153C87C(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 40);
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 44);
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
      *v11 = 24;
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

uint64_t sub_153CADC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(a1 + 40);
    if (v3 < 0)
    {
      v2 = 11;
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(*(a1 + 32) + 4 * v5);
      if (v7 < 0)
      {
        v8 = 10;
      }

      else
      {
        v8 = (9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6;
      }

      v6 += v8;
      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = v2 + v4 + v6;
  if ((v1 & 2) != 0)
  {
    v10 = *(a1 + 44);
    if (v10 < 0)
    {
      v11 = 11;
    }

    else
    {
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v9 += v11;
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

    v9 += v15;
  }

  *(a1 + 20) = v9;
  return v9;
}

uint64_t sub_153CBF4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26ECE40;
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
    sub_156D890((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
  *(a1 + 64) = 0;
  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1201B48(a1 + 48, v12, (v11 + 8), v10, **(a1 + 64) - *(a1 + 56));
    v13 = *(a1 + 56) + v10;
    *(a1 + 56) = v13;
    v14 = *(a1 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 8);
  if (v15)
  {
    sub_1957EF4(v4, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void sub_153CD4C(_Unwind_Exception *a1)
{
  sub_1956AFC(v3);
  sub_156CD20(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_153CDA0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956AFC(a1 + 6);
  sub_156CD20(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_153CE28(void *a1)
{
  sub_153CDA0(a1);

  operator delete();
}

uint64_t sub_153CE60(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_153C520(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  result = sub_12A41D0(a1 + 48);
  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 64) = 0;
  *(v6 + 68) = 1;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_153CEF4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 == 10)
        {
          v29 = (v7 - 1);
          while (1)
          {
            v30 = (v29 + 1);
            *v44 = v29 + 1;
            v31 = *(a1 + 40);
            if (v31 && (v32 = *(a1 + 32), v32 < *v31))
            {
              *(a1 + 32) = v32 + 1;
              v33 = *&v31[2 * v32 + 2];
            }

            else
            {
              v34 = sub_1551ACC(*(a1 + 24));
              v33 = sub_19593CC(a1 + 24, v34);
              v30 = *v44;
            }

            v29 = sub_221BFE8(a3, v33, v30);
            *v44 = v29;
            if (!v29)
            {
              goto LABEL_73;
            }

            if (*a3 <= v29 || *v29 != 10)
            {
              goto LABEL_62;
            }
          }
        }
      }

      else if (v11 == 2 && v8 == 18)
      {
        v16 = (v7 - 1);
        while (1)
        {
          v17 = (v16 + 1);
          *v44 = v16 + 1;
          v18 = *(a1 + 64);
          if (v18 && (v19 = *(a1 + 56), v19 < *v18))
          {
            *(a1 + 56) = v19 + 1;
            v20 = *&v18[2 * v19 + 2];
          }

          else
          {
            v21 = *(a1 + 48);
            if (!v21)
            {
              operator new();
            }

            *v23 = v22;
            v23[1] = sub_195A650;
            *v22 = 0;
            v22[1] = 0;
            v22[2] = 0;
            v20 = sub_19593CC(a1 + 48, v22);
            v17 = *v44;
          }

          v16 = sub_1958890(v20, v17, a3);
          *v44 = v16;
          if (!v16)
          {
            goto LABEL_73;
          }

          if (*a3 <= v16 || *v16 != 18)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_51;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_51;
      }

      v5 |= 1u;
      v25 = (v7 + 1);
      v24 = *v7;
      if ((v24 & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      v26 = *v25;
      v24 = (v26 << 7) + v24 - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v25 = (v7 + 2);
LABEL_37:
        *v44 = v25;
        *(a1 + 72) = v24 != 0;
        goto LABEL_62;
      }

      v38 = sub_19587DC(v7, v24);
      *v44 = v38;
      *(a1 + 72) = v39 != 0;
      if (!v38)
      {
        goto LABEL_73;
      }

      goto LABEL_62;
    }

    if (v11 == 4)
    {
      break;
    }

    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_51;
    }

    v5 |= 2u;
    v13 = (v7 + 1);
    v12 = *v7;
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

    v14 = *v13;
    v12 = (v14 << 7) + v12 - 128;
    if ((v14 & 0x80000000) == 0)
    {
      v13 = (v7 + 2);
LABEL_15:
      *v44 = v13;
      *(a1 + 73) = v12 != 0;
      goto LABEL_62;
    }

    v42 = sub_19587DC(v7, v12);
    *v44 = v42;
    *(a1 + 73) = v43 != 0;
    if (!v42)
    {
      goto LABEL_73;
    }

LABEL_62:
    if (sub_195ADC0(a3, v44, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 32)
  {
    v5 |= 4u;
    LODWORD(v27) = *v7;
    if ((v27 & 0x80000000) != 0)
    {
      v27 = (v7[1] << 7) + v27 - 128;
      if (v7[1] < 0)
      {
        v40 = sub_19587DC(v7, v27);
        *v44 = v40;
        *(a1 + 76) = v41;
        if (!v40)
        {
          goto LABEL_73;
        }

        goto LABEL_62;
      }

      v28 = v7 + 2;
    }

    else
    {
      v28 = v7 + 1;
    }

    *v44 = v28;
    *(a1 + 76) = v27;
    goto LABEL_62;
  }

LABEL_51:
  if (v8)
  {
    v35 = (v8 & 7) == 4;
  }

  else
  {
    v35 = 1;
  }

  if (!v35)
  {
    v36 = *(a1 + 8);
    if (v36)
    {
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v37 = sub_11F1920((a1 + 8));
      v7 = *v44;
    }

    *v44 = sub_1952690(v8, v37, v7, a3);
    if (!*v44)
    {
      goto LABEL_73;
    }

    goto LABEL_62;
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

char *sub_153D2E8(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_153C87C(v8, v10, a3);
    }
  }

  v11 = *(a1 + 56);
  if (v11 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = *(*(a1 + 64) + v12);
      v14 = *(v13 + 23);
      if (v14 < 0 && (v14 = v13[1], v14 > 127) || *a3 - __dst + 14 < v14)
      {
        __dst = sub_1957480(a3, 2, v13, __dst);
      }

      else
      {
        *__dst = 18;
        __dst[1] = v14;
        if (*(v13 + 23) < 0)
        {
          v13 = *v13;
        }

        v15 = __dst + 2;
        memcpy(__dst + 2, v13, v14);
        __dst = &v15[v14];
      }

      v12 += 8;
      --v11;
    }

    while (v11);
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v17 = *(a1 + 72);
    *__dst = 24;
    __dst[1] = v17;
    __dst += 2;
  }

  if ((v16 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v19 = *(a1 + 76);
    *__dst = 32;
    __dst[1] = v19;
    if (v19 > 0x7F)
    {
      __dst[1] = v19 | 0x80;
      v20 = v19 >> 7;
      __dst[2] = v19 >> 7;
      v18 = __dst + 3;
      if (v19 >= 0x4000)
      {
        LOBYTE(v21) = __dst[2];
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
      v18 = __dst + 2;
    }
  }

  else
  {
    v18 = __dst;
  }

  if ((v16 & 2) != 0)
  {
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v23 = *(a1 + 73);
    *v18 = 40;
    v18[1] = v23;
    v18 += 2;
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v18;
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

  if (*a3 - v18 >= v27)
  {
    v29 = v27;
    memcpy(v18, v28, v27);
    v18 += v29;
    return v18;
  }

  return sub_1957130(a3, v28, v27, v18);
}

uint64_t sub_153D5B8(uint64_t a1)
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
      v7 = sub_153CADC(v6);
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
  result = v2 + v8;
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

      result += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      --v8;
    }

    while (v8);
  }

  v14 = *(a1 + 16);
  if ((v14 & 7) != 0)
  {
    result += (v14 & 2) + 2 * (v14 & 1);
    if ((v14 & 4) != 0)
    {
      v15 = *(a1 + 76);
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v15 >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 11;
      }

      result += v17;
    }
  }

  v18 = *(a1 + 8);
  if (v18)
  {
    v19 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    result += v20;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_153D704(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_156D890(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
  if ((v14 & 7) != 0)
  {
    if (v14)
    {
      v3[3].__r_.__value_.__s.__data_[0] = *(a2 + 72);
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
        HIDWORD(v3[3].__r_.__value_.__r.__words[0]) = *(a2 + 76);
        goto LABEL_12;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    v3[3].__r_.__value_.__s.__data_[1] = *(a2 + 73);
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

BOOL sub_153D864(uint64_t a1)
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

uint64_t sub_153D8A4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26ECEC0;
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

  v11 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v11;
  return a1;
}

void sub_153D99C(_Unwind_Exception *a1)
{
  sub_1956AFC(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_153D9DC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_153DA58(void *a1)
{
  sub_153D9DC(a1);

  operator delete();
}

uint64_t sub_153DA90(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 56) = 0;
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_153DAF8(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 16)
        {
          v5 |= 2u;
          LODWORD(v13) = *v7;
          if ((v13 & 0x80000000) != 0)
          {
            v13 = (v7[1] << 7) + v13 - 128;
            if (v7[1] < 0)
            {
              v31 = sub_19587DC(v7, v13);
              *v35 = v31;
              *(a1 + 52) = v32;
              if (!v31)
              {
                goto LABEL_66;
              }

              goto LABEL_54;
            }

            v14 = v7 + 2;
          }

          else
          {
            v14 = v7 + 1;
          }

          *v35 = v14;
          *(a1 + 52) = v13;
          goto LABEL_54;
        }

        goto LABEL_40;
      }

      if (v8 != 8)
      {
        goto LABEL_40;
      }

      v24 = (v7 + 1);
      v23 = *v7;
      if (v23 < 0)
      {
        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if (v25 < 0)
        {
          *v35 = sub_19587DC(v7, v23);
          if (!*v35)
          {
            goto LABEL_66;
          }

          goto LABEL_35;
        }

        v24 = (v7 + 2);
      }

      *v35 = v24;
LABEL_35:
      if (v23 > 4)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 48) = v23;
      }

      goto LABEL_54;
    }

    if (v11 == 3)
    {
      if (v8 == 24)
      {
        v5 |= 4u;
        LODWORD(v26) = *v7;
        if ((v26 & 0x80000000) != 0)
        {
          v26 = (v7[1] << 7) + v26 - 128;
          if (v7[1] < 0)
          {
            v33 = sub_19587DC(v7, v26);
            *v35 = v33;
            *(a1 + 56) = v34;
            if (!v33)
            {
              goto LABEL_66;
            }

            goto LABEL_54;
          }

          v27 = v7 + 2;
        }

        else
        {
          v27 = v7 + 1;
        }

        *v35 = v27;
        *(a1 + 56) = v26;
        goto LABEL_54;
      }
    }

    else if (v11 == 4 && v8 == 34)
    {
      v15 = (v7 - 1);
      while (1)
      {
        v16 = (v15 + 1);
        *v35 = v15 + 1;
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
          v16 = *v35;
        }

        v15 = sub_1958890(v19, v16, a3);
        *v35 = v15;
        if (!v15)
        {
          goto LABEL_66;
        }

        if (*a3 <= v15 || *v15 != 34)
        {
          goto LABEL_54;
        }
      }
    }

LABEL_40:
    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v29 = *(a1 + 8);
    if (v29)
    {
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v30 = sub_11F1920((a1 + 8));
      v7 = *v35;
    }

    *v35 = sub_1952690(v8, v30, v7, a3);
    if (!*v35)
    {
      goto LABEL_66;
    }

LABEL_54:
    if (sub_195ADC0(a3, v35, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_66:
  *v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v35;
}

char *sub_153DE54(uint64_t a1, char *__dst, _DWORD *a3)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 56);
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

  v19 = *(a1 + 32);
  if (v19 >= 1)
  {
    v20 = 8;
    do
    {
      v21 = *(*(a1 + 40) + v20);
      v22 = *(v21 + 23);
      if (v22 < 0 && (v22 = v21[1], v22 > 127) || *a3 - v15 + 14 < v22)
      {
        v15 = sub_1957480(a3, 4, v21, v15);
      }

      else
      {
        *v15 = 34;
        v15[1] = v22;
        if (*(v21 + 23) < 0)
        {
          v21 = *v21;
        }

        v23 = v15 + 2;
        memcpy(v23, v21, v22);
        v15 = &v23[v22];
      }

      v20 += 8;
      --v19;
    }

    while (v19);
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v15;
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

  if (*a3 - v15 >= v27)
  {
    v29 = v27;
    memcpy(v15, v28, v27);
    v15 += v29;
    return v15;
  }

  return sub_1957130(a3, v28, v27, v15);
}

uint64_t sub_153E13C(_DWORD *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v4 = a1[12];
    if (v4 < 0)
    {
      result = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      result = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 2) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  v5 = a1[13];
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_12:
  if ((v2 & 4) != 0)
  {
    v7 = a1[14];
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

  return result;
}

uint64_t sub_153E1F4(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    v4 = sub_153E13C(a1);
  }

  else
  {
    v2 = *(a1 + 48);
    if (v2 < 0)
    {
      v3 = 13;
    }

    else
    {
      v3 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 3;
    }

    v5 = *(a1 + 52);
    if (v5 < 0)
    {
      v6 = 10;
    }

    else
    {
      v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    }

    v7 = *(a1 + 56);
    if (v7 < 0)
    {
      v8 = 10;
    }

    else
    {
      v8 = (9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6;
    }

    v4 = v3 + v6 + v8;
  }

  v9 = *(a1 + 32);
  result = v4 + v9;
  if (v9 >= 1)
  {
    v11 = (*(a1 + 40) + 8);
    do
    {
      v12 = *v11++;
      v13 = *(v12 + 23);
      v14 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v14 = v13;
      }

      result += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      --v9;
    }

    while (v9);
  }

  v15 = *(a1 + 8);
  if (v15)
  {
    v16 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    result += v17;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_153E358(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26ECF40;
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
    sub_156D90C((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v12 = *v12;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v12);
    v11 = *(a2 + 16);
  }

  *(a1 + 56) = &qword_278E990;
  if ((v11 & 2) != 0)
  {
    v13 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v13 = *v13;
    }

    sub_194EA1C((a1 + 56), (*(a2 + 56) & 0xFFFFFFFFFFFFFFFELL), v13);
  }

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

void sub_153E4B0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_153E4F4(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  sub_156CDA4((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_153E5B8(uint64_t a1)
{
  sub_153E4F4(a1);

  operator delete();
}

uint64_t sub_153E5F0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_153E5F0(v4);
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
      v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v5 & 2) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      *v6 = 0;
      *(v6 + 23) = 0;
    }

    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_10:
    v7 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
    }
  }

LABEL_15:
  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 56) = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

uint64_t sub_153E6DC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 > 4)
    {
      if (v10 != 5)
      {
        if (v10 == 6 && v7 == 50)
        {
          v14 = v6 - 1;
          while (1)
          {
            *v29 = v14 + 1;
            v15 = *(a1 + 40);
            if (v15 && (v16 = *(a1 + 32), v16 < *v15))
            {
              *(a1 + 32) = v16 + 1;
              v17 = *&v15[2 * v16 + 2];
            }

            else
            {
              v18 = sub_1551CBC(*(a1 + 24));
              v17 = sub_19593CC(a1 + 24, v18);
            }

            v14 = sub_221C078(a3, v17);
            *v29 = v14;
            if (!v14)
            {
              break;
            }

            if (*a3 <= v14 || *v14 != 50)
            {
              goto LABEL_46;
            }
          }

LABEL_54:
          *v29 = 0;
          return *v29;
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

          goto LABEL_54;
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

        v24 = sub_1952690(v7, v27, v6, a3);
        goto LABEL_45;
      }

      if (v7 != 42)
      {
        goto LABEL_38;
      }

      *(a1 + 16) |= 2u;
      v22 = *(a1 + 8);
      v12 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v12 = *v12;
      }

      v13 = (a1 + 56);
    }

    else
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v20 = v6 + 1;
          v19 = *v6;
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_30;
          }

          v21 = *v20;
          v19 = (v21 << 7) + v19 - 128;
          if (v21 < 0)
          {
            *v29 = sub_19587DC(v6, v19);
            if (!*v29)
            {
              goto LABEL_54;
            }
          }

          else
          {
            v20 = v6 + 2;
LABEL_30:
            *v29 = v20;
          }

          if (v19 > 3)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 64) = v19;
          }

          continue;
        }

        goto LABEL_38;
      }

      if (v10 != 4 || v7 != 34)
      {
        goto LABEL_38;
      }

      *(a1 + 16) |= 1u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v13 = (a1 + 48);
    }

    v23 = sub_194DB04(v13, v12);
    v24 = sub_1958890(v23, *v29, a3);
LABEL_45:
    *v29 = v24;
    if (!v24)
    {
      goto LABEL_54;
    }

LABEL_46:
    ;
  }

  return *v29;
}

char *sub_153E978(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 64);
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

  if (v5)
  {
    v6 = sub_128AEEC(a3, 4, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  if ((v5 & 2) != 0)
  {
    v6 = sub_128AEEC(a3, 5, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v6);
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
      *v6 = 50;
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

      v6 = sub_153E978(v13, v15, a3);
    }
  }

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

uint64_t sub_153EB7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    v4 = *(a1 + 64);
    if (v4 < 0)
    {
      v3 = 11;
    }

    else
    {
      v3 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *(a1 + 32);
  v6 = v3 + v5;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 8 * v5;
    do
    {
      v10 = *v8++;
      v11 = sub_153EB7C(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
    v2 = *(a1 + 16);
  }

  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v12 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v13 = *(v12 + 23);
      v14 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v14 = v13;
      }

      v6 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 2) != 0)
    {
      v15 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      v16 = *(v15 + 23);
      v17 = *(v15 + 8);
      if ((v16 & 0x80u) == 0)
      {
        v17 = v16;
      }

      v6 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v6 += v21;
  }

  *(a1 + 20) = v6;
  return v6;
}

std::string *sub_153ECF0(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_156D90C(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
        LODWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
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

BOOL sub_153EE5C(uint64_t a1)
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
    if ((*(v4 + 16) & 4) == 0)
    {
      break;
    }

    --v2;
  }

  while ((sub_153EE5C(v4 + 24) & 1) != 0);
  return v3 < 1;
}

double sub_153EECC(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26ECFC0;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0uLL;
  *(a1 + 40) = a2;
  result = 0.0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
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
  *(a1 + 200) = 0;
  *(a1 + 208) = a2;
  *(a1 + 216) = &qword_278E990;
  *(a1 + 224) = &qword_278E990;
  *(a1 + 232) = &qword_278E990;
  *(a1 + 240) = &qword_278E990;
  *(a1 + 248) = &qword_278E990;
  *(a1 + 256) = &qword_278E990;
  *(a1 + 264) = &qword_278E990;
  *(a1 + 272) = &qword_278E990;
  *(a1 + 280) = &qword_278E990;
  *(a1 + 288) = &qword_278E990;
  *(a1 + 520) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 528) = 10;
  return result;
}

uint64_t sub_153EF88(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26ECFC0;
  v6 = (a2 + 16);
  v5 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v5;
  *(a1 + 36) = 0;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  v7 = *(a2 + 32);
  if (v7)
  {
    sub_1959094((a1 + 32), v7);
    v8 = *(a1 + 40);
    *(a1 + 32) += *(a2 + 32);
    memcpy(v8, *(a2 + 40), 8 * *(a2 + 32));
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v9 = *(a2 + 48);
  if (v9)
  {
    sub_1959094((a1 + 48), v9);
    v10 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy(v10, *(a2 + 56), 8 * *(a2 + 48));
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v11 = *(a2 + 64);
  if (v11)
  {
    sub_1958E5C((a1 + 64), v11);
    v12 = *(a1 + 72);
    *(a1 + 64) += *(a2 + 64);
    memcpy(v12, *(a2 + 72), 4 * *(a2 + 64));
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v13 = *(a2 + 88);
  if (v13)
  {
    v14 = *(a2 + 96);
    v15 = sub_19592E8(a1 + 80, v13);
    sub_1201B48(a1 + 80, v15, (v14 + 8), v13, **(a1 + 96) - *(a1 + 88));
    v16 = *(a1 + 88) + v13;
    *(a1 + 88) = v16;
    v17 = *(a1 + 96);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v18 = *(a2 + 112);
  if (v18)
  {
    v19 = *(a2 + 120);
    v20 = sub_19592E8(a1 + 104, v18);
    sub_1201B48(a1 + 104, v20, (v19 + 8), v18, **(a1 + 120) - *(a1 + 112));
    v21 = *(a1 + 112) + v18;
    *(a1 + 112) = v21;
    v22 = *(a1 + 120);
    if (*v22 < v21)
    {
      *v22 = v21;
    }
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v23 = *(a2 + 136);
  if (v23)
  {
    v24 = *(a2 + 144);
    v25 = sub_19592E8(a1 + 128, *(a2 + 136));
    sub_1201B48(a1 + 128, v25, (v24 + 8), v23, **(a1 + 144) - *(a1 + 136));
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
    sub_156D998((a1 + 152), v30, (v29 + 8), v28, **(a1 + 168) - *(a1 + 160));
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
    sub_12E5E34((a1 + 176), v35, (v34 + 8), v33, **(a1 + 192) - *(a1 + 184));
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
  v38 = *(a2 + 200);
  if (v38)
  {
    sub_1958E5C((a1 + 200), v38);
    v39 = *(a1 + 208);
    *(a1 + 200) += *(a2 + 200);
    memcpy(v39, *(a2 + 208), 4 * *(a2 + 200));
  }

  v40 = *(a2 + 8);
  if (v40)
  {
    sub_1957EF4(v4, (v40 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 216) = &qword_278E990;
  v41 = *v6;
  if (*v6)
  {
    v42 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v42 = *v42;
    }

    sub_194EA1C((a1 + 216), (*(a2 + 216) & 0xFFFFFFFFFFFFFFFELL), v42);
    v41 = *v6;
  }

  *(a1 + 224) = &qword_278E990;
  if ((v41 & 2) != 0)
  {
    v43 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v43 = *v43;
    }

    sub_194EA1C((a1 + 224), (*(a2 + 224) & 0xFFFFFFFFFFFFFFFELL), v43);
    v41 = *v6;
  }

  *(a1 + 232) = &qword_278E990;
  if ((v41 & 4) != 0)
  {
    v44 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v44 = *v44;
    }

    sub_194EA1C((a1 + 232), (*(a2 + 232) & 0xFFFFFFFFFFFFFFFELL), v44);
    v41 = *v6;
  }

  *(a1 + 240) = &qword_278E990;
  if ((v41 & 8) != 0)
  {
    v45 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v45 = *v45;
    }

    sub_194EA1C((a1 + 240), (*(a2 + 240) & 0xFFFFFFFFFFFFFFFELL), v45);
    v41 = *v6;
  }

  *(a1 + 248) = &qword_278E990;
  if ((v41 & 0x10) != 0)
  {
    v46 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v46 = *v46;
    }

    sub_194EA1C((a1 + 248), (*(a2 + 248) & 0xFFFFFFFFFFFFFFFELL), v46);
    v41 = *v6;
  }

  *(a1 + 256) = &qword_278E990;
  if ((v41 & 0x20) != 0)
  {
    v47 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v47 = *v47;
    }

    sub_194EA1C((a1 + 256), (*(a2 + 256) & 0xFFFFFFFFFFFFFFFELL), v47);
    v41 = *v6;
  }

  *(a1 + 264) = &qword_278E990;
  if ((v41 & 0x40) != 0)
  {
    v48 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v48 = *v48;
    }

    sub_194EA1C((a1 + 264), (*(a2 + 264) & 0xFFFFFFFFFFFFFFFELL), v48);
    v41 = *v6;
  }

  *(a1 + 272) = &qword_278E990;
  if ((v41 & 0x80) != 0)
  {
    v49 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v49 = *v49;
    }

    sub_194EA1C((a1 + 272), (*(a2 + 272) & 0xFFFFFFFFFFFFFFFELL), v49);
    v41 = *v6;
  }

  *(a1 + 280) = &qword_278E990;
  if ((v41 & 0x100) != 0)
  {
    v50 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v50 = *v50;
    }

    sub_194EA1C((a1 + 280), (*(a2 + 280) & 0xFFFFFFFFFFFFFFFELL), v50);
    v41 = *v6;
  }

  *(a1 + 288) = &qword_278E990;
  if ((v41 & 0x200) != 0)
  {
    v51 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v51 = *v51;
    }

    sub_194EA1C((a1 + 288), (*(a2 + 288) & 0xFFFFFFFFFFFFFFFELL), v51);
    v41 = *v6;
  }

  if ((v41 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 296) = 0;
  if ((v41 & 0x800) != 0)
  {
    operator new();
  }

  *(a1 + 304) = 0;
  if ((v41 & 0x1000) != 0)
  {
    operator new();
  }

  *(a1 + 312) = 0;
  if ((v41 & 0x2000) != 0)
  {
    operator new();
  }

  *(a1 + 320) = 0;
  if ((v41 & 0x4000) != 0)
  {
    operator new();
  }

  *(a1 + 328) = 0;
  if ((v41 & 0x8000) != 0)
  {
    operator new();
  }

  *(a1 + 336) = 0;
  if ((v41 & 0x10000) != 0)
  {
    operator new();
  }

  *(a1 + 344) = 0;
  if ((v41 & 0x20000) != 0)
  {
    operator new();
  }

  *(a1 + 352) = 0;
  if ((v41 & 0x40000) != 0)
  {
    operator new();
  }

  *(a1 + 360) = 0;
  if ((v41 & 0x80000) != 0)
  {
    operator new();
  }

  *(a1 + 368) = 0;
  if ((v41 & 0x100000) != 0)
  {
    operator new();
  }

  *(a1 + 376) = 0;
  if ((v41 & 0x200000) != 0)
  {
    operator new();
  }

  *(a1 + 384) = 0;
  if ((v41 & 0x400000) != 0)
  {
    operator new();
  }

  *(a1 + 392) = 0;
  if ((v41 & 0x800000) != 0)
  {
    operator new();
  }

  *(a1 + 400) = 0;
  v52 = *(a2 + 408);
  v53 = *(a2 + 424);
  v54 = *(a2 + 456);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 456) = v54;
  *(a1 + 408) = v52;
  *(a1 + 424) = v53;
  v55 = *(a2 + 472);
  v56 = *(a2 + 488);
  v57 = *(a2 + 504);
  *(a1 + 516) = *(a2 + 516);
  *(a1 + 488) = v56;
  *(a1 + 504) = v57;
  *(a1 + 472) = v55;
  return a1;
}

void *sub_153F9F4(void *a1)
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

  sub_153FAC8(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956ABC((a1 + 25));
  sub_12E5CA0(a1 + 22);
  sub_156CE28(a1 + 19);
  sub_1956AFC(a1 + 16);
  sub_1956AFC(a1 + 13);
  sub_1956AFC(a1 + 10);
  sub_1956ABC((a1 + 8));
  sub_1956ABC((a1 + 6));
  sub_1956ABC((a1 + 4));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_153FAC8(uint64_t a1)
{
  v3 = *(a1 + 216);
  v2 = (a1 + 216);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
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

  result = (a1 + 248);
  if (*(a1 + 248) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (*(a1 + 256) != &qword_278E990)
  {
    sub_194E89C((a1 + 256));
  }

  if (*(a1 + 264) != &qword_278E990)
  {
    sub_194E89C((a1 + 264));
  }

  if (*(a1 + 272) != &qword_278E990)
  {
    sub_194E89C((a1 + 272));
  }

  if (*(a1 + 280) != &qword_278E990)
  {
    sub_194E89C((a1 + 280));
  }

  if (*(a1 + 288) != &qword_278E990)
  {
    sub_194E89C((a1 + 288));
  }

  if (a1 != &off_27769A8)
  {
    if (*(a1 + 296))
    {
      sub_16ED13C();
      operator delete();
    }

    if (*(a1 + 304))
    {
      sub_16E8374();
      operator delete();
    }

    v5 = *(a1 + 312);
    if (v5)
    {
      sub_16E5B34(v5);
      operator delete();
    }

    if (*(a1 + 320))
    {
      sub_16EE080();
      operator delete();
    }

    v6 = *(a1 + 328);
    if (v6)
    {
      sub_153CDA0(v6);
      operator delete();
    }

    if (*(a1 + 336))
    {
      sub_16E4E08();
      operator delete();
    }

    v7 = *(a1 + 344);
    if (v7)
    {
      sub_153875C(v7);
      operator delete();
    }

    v8 = *(a1 + 352);
    if (v8)
    {
      sub_153ABD0(v8);
      operator delete();
    }

    v9 = *(a1 + 360);
    if (v9)
    {
      sub_153D9DC(v9);
      operator delete();
    }

    if (*(a1 + 368))
    {
      sub_16ED13C();
      operator delete();
    }

    v10 = *(a1 + 376);
    if (v10)
    {
      sub_153E4F4(v10);
      operator delete();
    }

    if (*(a1 + 384))
    {
      sub_16E4E08();
      operator delete();
    }

    if (*(a1 + 392))
    {
      sub_16E4E08();
      operator delete();
    }

    result = *(a1 + 400);
    if (result)
    {
      sub_1550360(result);

      operator delete();
    }
  }

  return result;
}

void sub_153FD90(void *a1)
{
  sub_153F9F4(a1);

  operator delete();
}

uint64_t sub_153FDC8(uint64_t a1)
{
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  sub_12A41D0(a1 + 80);
  sub_12A41D0(a1 + 104);
  result = sub_12A41D0(a1 + 128);
  v3 = *(a1 + 160);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 168) + 8);
    do
    {
      v5 = *v4++;
      result = sub_153DA90(v5);
      --v3;
    }

    while (v3);
    *(a1 + 160) = 0;
  }

  v6 = *(a1 + 184);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 192) + 8);
    do
    {
      v8 = *v7++;
      result = sub_16EEC04(v8);
      --v6;
    }

    while (v6);
    *(a1 + 184) = 0;
  }

  v9 = *(a1 + 16);
  *(a1 + 200) = 0;
  if (v9)
  {
    if ((v9 & 1) == 0)
    {
      if ((v9 & 2) == 0)
      {
        goto LABEL_12;
      }

LABEL_23:
      v11 = *(a1 + 224) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v11 + 23) < 0)
      {
        **v11 = 0;
        *(v11 + 8) = 0;
        if ((v9 & 4) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *v11 = 0;
        *(v11 + 23) = 0;
        if ((v9 & 4) != 0)
        {
          goto LABEL_27;
        }
      }

LABEL_13:
      if ((v9 & 8) == 0)
      {
        goto LABEL_14;
      }

LABEL_31:
      v13 = *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v13 + 23) < 0)
      {
        **v13 = 0;
        *(v13 + 8) = 0;
        if ((v9 & 0x10) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *v13 = 0;
        *(v13 + 23) = 0;
        if ((v9 & 0x10) != 0)
        {
          goto LABEL_35;
        }
      }

LABEL_15:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_16;
      }

LABEL_39:
      v15 = *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v15 + 23) < 0)
      {
        **v15 = 0;
        *(v15 + 8) = 0;
        if ((v9 & 0x40) != 0)
        {
          goto LABEL_43;
        }
      }

      else
      {
        *v15 = 0;
        *(v15 + 23) = 0;
        if ((v9 & 0x40) != 0)
        {
          goto LABEL_43;
        }
      }

LABEL_17:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_50;
      }

LABEL_47:
      v17 = *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v17 + 23) < 0)
      {
        **v17 = 0;
        *(v17 + 8) = 0;
      }

      else
      {
        *v17 = 0;
        *(v17 + 23) = 0;
      }

      goto LABEL_50;
    }

    v10 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v9 & 2) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v9 & 2) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_12:
    if ((v9 & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_27:
    v12 = *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
      if ((v9 & 8) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
      if ((v9 & 8) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_14:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_35:
    v14 = *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v14 + 23) < 0)
    {
      **v14 = 0;
      *(v14 + 8) = 0;
      if ((v9 & 0x20) != 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      *v14 = 0;
      *(v14 + 23) = 0;
      if ((v9 & 0x20) != 0)
      {
        goto LABEL_39;
      }
    }

LABEL_16:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_17;
    }

LABEL_43:
    v16 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v16 + 23) < 0)
    {
      **v16 = 0;
      *(v16 + 8) = 0;
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      *v16 = 0;
      *(v16 + 23) = 0;
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_50;
      }
    }

    goto LABEL_47;
  }

LABEL_50:
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_60;
  }

  if ((v9 & 0x100) == 0)
  {
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_53;
    }

LABEL_98:
    v22 = *(a1 + 288) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v22 + 23) < 0)
    {
      **v22 = 0;
      *(v22 + 8) = 0;
      if ((v9 & 0x400) != 0)
      {
        goto LABEL_102;
      }
    }

    else
    {
      *v22 = 0;
      *(v22 + 23) = 0;
      if ((v9 & 0x400) != 0)
      {
        goto LABEL_102;
      }
    }

LABEL_54:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_103;
  }

  v21 = *(a1 + 280) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v21 + 23) < 0)
  {
    **v21 = 0;
    *(v21 + 8) = 0;
    if ((v9 & 0x200) != 0)
    {
      goto LABEL_98;
    }
  }

  else
  {
    *v21 = 0;
    *(v21 + 23) = 0;
    if ((v9 & 0x200) != 0)
    {
      goto LABEL_98;
    }
  }

LABEL_53:
  if ((v9 & 0x400) == 0)
  {
    goto LABEL_54;
  }

LABEL_102:
  result = sub_16ED178(*(a1 + 296));
  if ((v9 & 0x800) == 0)
  {
LABEL_55:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_104;
  }

LABEL_103:
  result = sub_16E48B0(*(a1 + 304));
  if ((v9 & 0x1000) == 0)
  {
LABEL_56:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_105;
  }

LABEL_104:
  result = sub_16E5B70(*(a1 + 312));
  if ((v9 & 0x2000) == 0)
  {
LABEL_57:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_106;
  }

LABEL_105:
  result = sub_16EE0BC(*(a1 + 320));
  if ((v9 & 0x4000) == 0)
  {
LABEL_58:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_106:
  result = sub_153CE60(*(a1 + 328));
  if ((v9 & 0x8000) != 0)
  {
LABEL_59:
    result = sub_16E4E44(*(a1 + 336));
  }

LABEL_60:
  if ((v9 & 0xFF0000) == 0)
  {
    goto LABEL_70;
  }

  if ((v9 & 0x10000) != 0)
  {
    result = sub_14C56B8(*(a1 + 344));
    if ((v9 & 0x20000) == 0)
    {
LABEL_63:
      if ((v9 & 0x40000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_91;
    }
  }

  else if ((v9 & 0x20000) == 0)
  {
    goto LABEL_63;
  }

  result = sub_153ACC8(*(a1 + 352));
  if ((v9 & 0x40000) == 0)
  {
LABEL_64:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_92;
  }

LABEL_91:
  result = sub_153DA90(*(a1 + 360));
  if ((v9 & 0x80000) == 0)
  {
LABEL_65:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_93;
  }

LABEL_92:
  result = sub_16ED178(*(a1 + 368));
  if ((v9 & 0x100000) == 0)
  {
LABEL_66:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_94;
  }

LABEL_93:
  result = sub_153E5F0(*(a1 + 376));
  if ((v9 & 0x200000) == 0)
  {
LABEL_67:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_95;
  }

LABEL_94:
  result = sub_16E4E44(*(a1 + 384));
  if ((v9 & 0x400000) == 0)
  {
LABEL_68:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_95:
  result = sub_16E4E44(*(a1 + 392));
  if ((v9 & 0x800000) != 0)
  {
LABEL_69:
    result = sub_14C5A04(*(a1 + 400));
  }

LABEL_70:
  if (HIBYTE(v9))
  {
    *(a1 + 408) = 0;
    *(a1 + 416) = 0;
    *(a1 + 424) = 0;
  }

  v18 = *(a1 + 20);
  if (v18)
  {
    *(a1 + 432) = 0;
    *(a1 + 440) = 0;
    *(a1 + 448) = 0;
  }

  if ((v18 & 0xFF00) != 0)
  {
    *(a1 + 456) = 0;
    *(a1 + 464) = 0;
    *(a1 + 480) = 0;
    *(a1 + 472) = 0;
  }

  if ((v18 & 0xFF0000) != 0)
  {
    *(a1 + 491) = 0;
    *(a1 + 484) = 0;
  }

  if (HIBYTE(v18))
  {
    *(a1 + 512) = 0;
    *(a1 + 507) = 0;
    *(a1 + 499) = 0;
  }

  if ((*(a1 + 24) & 0x1F) != 0)
  {
    *(a1 + 520) = 0;
    *(a1 + 528) = 10;
  }

  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  v20 = *(a1 + 8);
  v19 = (a1 + 8);
  if (v20)
  {

    return sub_1957EA8(v19);
  }

  return result;
}

char *sub_1540418(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 32);
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

      v7 = *(*(a1 + 40) + 8 * i);
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

  v12 = *(a1 + 48);
  if (v12 < 1)
  {
    v15 = v8;
  }

  else
  {
    for (j = 0; j != v12; ++j)
    {
      if (*a3 <= v8)
      {
        v8 = sub_225EB68(a3, v8);
      }

      v14 = *(*(a1 + 56) + 8 * j);
      *v8 = 16;
      v8[1] = v14;
      if (v14 > 0x7F)
      {
        v8[1] = v14 | 0x80;
        v16 = v14 >> 7;
        v8[2] = v14 >> 7;
        v15 = v8 + 3;
        if (v14 >= 0x4000)
        {
          LOBYTE(v8) = v8[2];
          do
          {
            *(v15 - 1) = v8 | 0x80;
            v8 = (v16 >> 7);
            *v15++ = v16 >> 7;
            v17 = v16 >> 14;
            v16 >>= 7;
          }

          while (v17);
        }
      }

      else
      {
        v15 = v8 + 2;
      }

      v8 = v15;
    }
  }

  v18 = *(a1 + 16);
  if ((v18 & 0x400) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v19 = *(a1 + 296);
    *v15 = 26;
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

    v15 = sub_16ED4B0(v19, v21, a3);
    if ((v18 & 0x800) == 0)
    {
LABEL_27:
      if ((v18 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_42;
    }
  }

  else if ((v18 & 0x800) == 0)
  {
    goto LABEL_27;
  }

  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v22 = *(a1 + 304);
  *v15 = 34;
  v23 = *(v22 + 44);
  v15[1] = v23;
  if (v23 > 0x7F)
  {
    v24 = sub_19575D0(v23, v15 + 1);
  }

  else
  {
    v24 = v15 + 2;
  }

  v15 = sub_16E886C(v22, v24, a3);
  if ((v18 & 1) == 0)
  {
LABEL_28:
    if ((v18 & 0x1000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_43;
  }

LABEL_42:
  v15 = sub_128AEEC(a3, 5, *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL, v15);
  if ((v18 & 0x1000) == 0)
  {
    goto LABEL_49;
  }

LABEL_43:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v25 = *(a1 + 312);
  *v15 = 50;
  v26 = *(v25 + 20);
  v15[1] = v26;
  if (v26 > 0x7F)
  {
    v27 = sub_19575D0(v26, v15 + 1);
  }

  else
  {
    v27 = v15 + 2;
  }

  v15 = sub_16E5FE0(v25, v27, a3);
LABEL_49:
  v28 = *(a1 + 64);
  if (v28 < 1)
  {
    v31 = v15;
  }

  else
  {
    for (k = 0; k != v28; ++k)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v30 = *(*(a1 + 72) + 4 * k);
      *v15 = 56;
      v15[1] = v30;
      if (v30 > 0x7F)
      {
        v15[1] = v30 | 0x80;
        v32 = v30 >> 7;
        v15[2] = v30 >> 7;
        v31 = v15 + 3;
        if (v30 >= 0x4000)
        {
          LOBYTE(v33) = v15[2];
          do
          {
            *(v31 - 1) = v33 | 0x80;
            v33 = v32 >> 7;
            *v31++ = v32 >> 7;
            v34 = v32 >> 14;
            v32 >>= 7;
          }

          while (v34);
        }
      }

      else
      {
        v31 = v15 + 2;
      }

      v15 = v31;
    }
  }

  if ((v18 & 0x8000000) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v35 = *(a1 + 420);
    *v31 = 64;
    v31[1] = v35;
    v31 += 2;
  }

  if ((*(a1 + 24) & 0x10) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v37 = *(a1 + 528);
    *v31 = 72;
    v31[1] = v37;
    if (v37 > 0x7F)
    {
      v31[1] = v37 | 0x80;
      v38 = v37 >> 7;
      v31[2] = v37 >> 7;
      v36 = v31 + 3;
      if (v37 >= 0x4000)
      {
        LOBYTE(v39) = v31[2];
        do
        {
          *(v36 - 1) = v39 | 0x80;
          v39 = v38 >> 7;
          *v36++ = v38 >> 7;
          v40 = v38 >> 14;
          v38 >>= 7;
        }

        while (v40);
      }
    }

    else
    {
      v36 = v31 + 2;
    }
  }

  else
  {
    v36 = v31;
  }

  v41 = *(a1 + 16);
  if ((v41 & 0x1000000) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v43 = *(a1 + 408);
    *v36 = 80;
    v36[1] = v43;
    if (v43 > 0x7F)
    {
      v36[1] = v43 | 0x80;
      v44 = v43 >> 7;
      v36[2] = v43 >> 7;
      v42 = v36 + 3;
      if (v43 >= 0x4000)
      {
        LOBYTE(v36) = v36[2];
        do
        {
          *(v42 - 1) = v36 | 0x80;
          v36 = (v44 >> 7);
          *v42++ = v44 >> 7;
          v45 = v44 >> 14;
          v44 >>= 7;
        }

        while (v45);
      }
    }

    else
    {
      v42 = v36 + 2;
    }
  }

  else
  {
    v42 = v36;
  }

  if ((v41 & 0x2000000) != 0)
  {
    if (*a3 <= v42)
    {
      v42 = sub_225EB68(a3, v42);
    }

    v47 = *(a1 + 412);
    *v42 = 88;
    v42[1] = v47;
    if (v47 > 0x7F)
    {
      v42[1] = v47 | 0x80;
      v48 = v47 >> 7;
      v42[2] = v47 >> 7;
      v46 = v42 + 3;
      if (v47 >= 0x4000)
      {
        LOBYTE(v49) = v42[2];
        do
        {
          *(v46 - 1) = v49 | 0x80;
          v49 = v48 >> 7;
          *v46++ = v48 >> 7;
          v50 = v48 >> 14;
          v48 >>= 7;
        }

        while (v50);
      }
    }

    else
    {
      v46 = v42 + 2;
    }
  }

  else
  {
    v46 = v42;
  }

  if ((v41 & 0x2000) != 0)
  {
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v51 = *(a1 + 320);
    *v46 = 98;
    v52 = *(v51 + 20);
    v46[1] = v52;
    if (v52 > 0x7F)
    {
      v53 = sub_19575D0(v52, v46 + 1);
    }

    else
    {
      v53 = v46 + 2;
    }

    v46 = sub_16EE2C4(v51, v53, a3);
  }

  if ((v41 & 0x4000000) != 0)
  {
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v55 = *(a1 + 416);
    *v46 = 104;
    v46[1] = v55;
    if (v55 > 0x7F)
    {
      v46[1] = v55 | 0x80;
      v56 = v55 >> 7;
      v46[2] = v55 >> 7;
      v54 = v46 + 3;
      if (v55 >= 0x4000)
      {
        LOBYTE(v46) = v46[2];
        do
        {
          *(v54 - 1) = v46 | 0x80;
          v46 = (v56 >> 7);
          *v54++ = v56 >> 7;
          v57 = v56 >> 14;
          v56 >>= 7;
        }

        while (v57);
      }
    }

    else
    {
      v54 = v46 + 2;
    }
  }

  else
  {
    v54 = v46;
  }

  if ((v41 & 0x10000000) != 0)
  {
    if (*a3 <= v54)
    {
      v54 = sub_225EB68(a3, v54);
    }

    v58 = *(a1 + 421);
    *v54 = 112;
    v54[1] = v58;
    v54 += 2;
  }

  if ((v41 & 0x20000000) != 0)
  {
    if (*a3 <= v54)
    {
      v54 = sub_225EB68(a3, v54);
    }

    v59 = *(a1 + 422);
    *v54 = 120;
    v54[1] = v59;
    v54 += 2;
  }

  if (*(a1 + 20))
  {
    if (*a3 <= v54)
    {
      v54 = sub_225EB68(a3, v54);
    }

    v61 = *(a1 + 432);
    *v54 = 384;
    v54[2] = v61;
    if (v61 > 0x7F)
    {
      v54[2] = v61 | 0x80;
      v62 = v61 >> 7;
      v54[3] = v61 >> 7;
      v60 = v54 + 4;
      if (v61 >= 0x4000)
      {
        LOBYTE(v63) = v54[3];
        do
        {
          *(v60 - 1) = v63 | 0x80;
          v63 = v62 >> 7;
          *v60++ = v62 >> 7;
          v64 = v62 >> 14;
          v62 >>= 7;
        }

        while (v64);
      }
    }

    else
    {
      v60 = v54 + 3;
    }
  }

  else
  {
    v60 = v54;
  }

  v65 = *(a1 + 88);
  if (v65 >= 1)
  {
    v66 = 8;
    do
    {
      v67 = *(*(a1 + 96) + v66);
      v68 = *(v67 + 23);
      if (v68 < 0 && (v68 = v67[1], v68 > 127) || *a3 - v60 + 13 < v68)
      {
        v60 = sub_1957480(a3, 17, v67, v60);
      }

      else
      {
        *v60 = 394;
        v60[2] = v68;
        if (*(v67 + 23) < 0)
        {
          v67 = *v67;
        }

        v69 = v60 + 3;
        memcpy(v60 + 3, v67, v68);
        v60 = &v69[v68];
      }

      v66 += 8;
      --v65;
    }

    while (v65);
  }

  v70 = *(a1 + 16);
  if ((v70 & 0x40000000) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v75 = *(a1 + 423);
    *v60 = 400;
    v60[2] = v75;
    v60 += 3;
    if ((v70 & 0x80000000) == 0)
    {
LABEL_138:
      if ((v70 & 2) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_139;
    }
  }

  else if ((v70 & 0x80000000) == 0)
  {
    goto LABEL_138;
  }

  if (*a3 <= v60)
  {
    v60 = sub_225EB68(a3, v60);
  }

  v76 = *(a1 + 424);
  *v60 = 409;
  *(v60 + 2) = v76;
  v60 += 10;
  if ((v70 & 2) != 0)
  {
LABEL_139:
    v60 = sub_128AEEC(a3, 20, *(a1 + 224) & 0xFFFFFFFFFFFFFFFELL, v60);
  }

LABEL_140:
  if ((*(a1 + 20) & 4) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v71 = *(a1 + 440);
    *v60 = 424;
    v60[2] = v71;
    v60 += 3;
  }

  if ((*(a1 + 17) & 0x40) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v72 = *(a1 + 328);
    *v60 = 434;
    v73 = *(v72 + 20);
    v60[2] = v73;
    if (v73 > 0x7F)
    {
      v74 = sub_19575D0(v73, v60 + 2);
    }

    else
    {
      v74 = v60 + 3;
    }

    v60 = sub_153D2E8(v72, v74, a3);
  }

  v77 = *(a1 + 20);
  if ((v77 & 2) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v79 = *(a1 + 436);
    *v60 = 440;
    v60[2] = v79;
    if (v79 > 0x7F)
    {
      v60[2] = v79 | 0x80;
      v80 = v79 >> 7;
      v60[3] = v79 >> 7;
      v78 = v60 + 4;
      if (v79 >= 0x4000)
      {
        LOBYTE(v81) = v60[3];
        do
        {
          *(v78 - 1) = v81 | 0x80;
          v81 = v80 >> 7;
          *v78++ = v80 >> 7;
          v82 = v80 >> 14;
          v80 >>= 7;
        }

        while (v82);
      }
    }

    else
    {
      v78 = v60 + 3;
    }
  }

  else
  {
    v78 = v60;
  }

  if ((v77 & 8) != 0)
  {
    if (*a3 <= v78)
    {
      v78 = sub_225EB68(a3, v78);
    }

    v83 = *(a1 + 441);
    *v78 = 448;
    v78[2] = v83;
    v78 += 3;
    if ((v77 & 0x10) == 0)
    {
LABEL_169:
      if ((v77 & 0x20) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_177;
    }
  }

  else if ((v77 & 0x10) == 0)
  {
    goto LABEL_169;
  }

  if (*a3 <= v78)
  {
    v78 = sub_225EB68(a3, v78);
  }

  v84 = *(a1 + 442);
  *v78 = 456;
  v78[2] = v84;
  v78 += 3;
  if ((v77 & 0x20) != 0)
  {
LABEL_177:
    if (*a3 <= v78)
    {
      v78 = sub_225EB68(a3, v78);
    }

    v85 = *(a1 + 443);
    *v78 = 464;
    v78[2] = v85;
    v78 += 3;
  }

LABEL_180:
  v86 = *(a1 + 16);
  if ((v86 & 4) != 0)
  {
    v78 = sub_128AEEC(a3, 27, *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL, v78);
    if ((v86 & 8) == 0)
    {
LABEL_182:
      if ((v86 & 0x8000) == 0)
      {
        goto LABEL_183;
      }

      goto LABEL_190;
    }
  }

  else if ((v86 & 8) == 0)
  {
    goto LABEL_182;
  }

  v78 = sub_128AEEC(a3, 28, *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL, v78);
  if ((v86 & 0x8000) == 0)
  {
LABEL_183:
    if ((v86 & 0x10) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_200;
  }

LABEL_190:
  if (*a3 <= v78)
  {
    v78 = sub_225EB68(a3, v78);
  }

  v89 = *(a1 + 336);
  *v78 = 490;
  v90 = *(v89 + 44);
  v78[2] = v90;
  if (v90 > 0x7F)
  {
    v91 = sub_19575D0(v90, v78 + 2);
  }

  else
  {
    v91 = v78 + 3;
  }

  v78 = sub_16E5070(v89, v91, a3);
  if ((v86 & 0x10) == 0)
  {
LABEL_184:
    if ((v86 & 0x20) == 0)
    {
      goto LABEL_186;
    }

    goto LABEL_185;
  }

LABEL_200:
  v78 = sub_128AEEC(a3, 30, *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL, v78);
  if ((v86 & 0x20) != 0)
  {
LABEL_185:
    v78 = sub_128AEEC(a3, 31, *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL, v78);
  }

LABEL_186:
  v87 = *(a1 + 20);
  if ((v87 & 0x40) != 0)
  {
    if (*a3 <= v78)
    {
      v78 = sub_225EB68(a3, v78);
    }

    v92 = *(a1 + 444);
    *v78 = 640;
    v78[2] = v92;
    if (v92 > 0x7F)
    {
      v78[2] = v92 | 0x80;
      v93 = v92 >> 7;
      v78[3] = v92 >> 7;
      v88 = v78 + 4;
      if (v92 >= 0x4000)
      {
        LOBYTE(v78) = v78[3];
        do
        {
          *(v88 - 1) = v78 | 0x80;
          v78 = (v93 >> 7);
          *v88++ = v93 >> 7;
          v94 = v93 >> 14;
          v93 >>= 7;
        }

        while (v94);
      }
    }

    else
    {
      v88 = v78 + 3;
    }
  }

  else
  {
    v88 = v78;
  }

  if ((v87 & 0x400) != 0)
  {
    if (*a3 <= v88)
    {
      v88 = sub_225EB68(a3, v88);
    }

    v95 = *(a1 + 472);
    *v88 = 648;
    v88[2] = v95;
    v88 += 3;
  }

  if ((v87 & 0x800) != 0)
  {
    if (*a3 <= v88)
    {
      v88 = sub_225EB68(a3, v88);
    }

    v96 = *(a1 + 473);
    *v88 = 656;
    v88[2] = v96;
    v88 += 3;
  }

  v97 = *(a1 + 112);
  if (v97 >= 1)
  {
    v98 = 8;
    do
    {
      v99 = *(*(a1 + 120) + v98);
      v100 = *(v99 + 23);
      if (v100 < 0 && (v100 = v99[1], v100 > 127) || *a3 - v88 + 13 < v100)
      {
        v88 = sub_1957480(a3, 35, v99, v88);
      }

      else
      {
        *v88 = 666;
        v88[2] = v100;
        if (*(v99 + 23) < 0)
        {
          v99 = *v99;
        }

        v101 = v88 + 3;
        memcpy(v88 + 3, v99, v100);
        v88 = &v101[v100];
      }

      v98 += 8;
      --v97;
    }

    while (v97);
  }

  if ((v87 & 0x80) != 0)
  {
    if (*a3 <= v88)
    {
      v88 = sub_225EB68(a3, v88);
    }

    v102 = *(a1 + 448);
    *v88 = 673;
    *(v88 + 2) = v102;
    v88 += 10;
    if ((v87 & 0x100) == 0)
    {
LABEL_226:
      if ((v87 & 0x200) == 0)
      {
        goto LABEL_227;
      }

      goto LABEL_235;
    }
  }

  else if ((v87 & 0x100) == 0)
  {
    goto LABEL_226;
  }

  if (*a3 <= v88)
  {
    v88 = sub_225EB68(a3, v88);
  }

  v103 = *(a1 + 456);
  *v88 = 681;
  *(v88 + 2) = v103;
  v88 += 10;
  if ((v87 & 0x200) == 0)
  {
LABEL_227:
    if ((v87 & 0x1000) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_238;
  }

LABEL_235:
  if (*a3 <= v88)
  {
    v88 = sub_225EB68(a3, v88);
  }

  v104 = *(a1 + 464);
  *v88 = 689;
  *(v88 + 2) = v104;
  v88 += 10;
  if ((v87 & 0x1000) != 0)
  {
LABEL_238:
    if (*a3 <= v88)
    {
      v88 = sub_225EB68(a3, v88);
    }

    v105 = *(a1 + 474);
    *v88 = 696;
    v88[2] = v105;
    v88 += 3;
  }

LABEL_241:
  v106 = *(a1 + 16);
  if ((v106 & 0x40) != 0)
  {
    v88 = sub_128AEEC(a3, 42, *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL, v88);
  }

  if ((v106 & 0x10000) != 0)
  {
    if (*a3 <= v88)
    {
      v88 = sub_225EB68(a3, v88);
    }

    v107 = *(a1 + 344);
    *v88 = 730;
    v108 = *(v107 + 24);
    v88[2] = v108;
    if (v108 > 0x7F)
    {
      v109 = sub_19575D0(v108, v88 + 2);
    }

    else
    {
      v109 = v88 + 3;
    }

    v88 = sub_1538BB4(v107, v109, a3);
  }

  v110 = *(a1 + 20);
  if ((v110 & 0x2000) != 0)
  {
    if (*a3 <= v88)
    {
      v88 = sub_225EB68(a3, v88);
    }

    v111 = *(a1 + 475);
    *v88 = 736;
    v88[2] = v111;
    v88 += 3;
  }

  if ((v110 & 0x4000) != 0)
  {
    if (*a3 <= v88)
    {
      v88 = sub_225EB68(a3, v88);
    }

    v113 = *(a1 + 476);
    *v88 = 744;
    v88[2] = v113;
    if (v113 > 0x7F)
    {
      v88[2] = v113 | 0x80;
      v114 = v113 >> 7;
      v88[3] = v113 >> 7;
      v112 = v88 + 4;
      if (v113 >= 0x4000)
      {
        LOBYTE(v115) = v88[3];
        do
        {
          *(v112 - 1) = v115 | 0x80;
          v115 = v114 >> 7;
          *v112++ = v114 >> 7;
          v116 = v114 >> 14;
          v114 >>= 7;
        }

        while (v116);
      }
    }

    else
    {
      v112 = v88 + 3;
    }
  }

  else
  {
    v112 = v88;
  }

  if ((*(a1 + 18) & 2) != 0)
  {
    if (*a3 <= v112)
    {
      v112 = sub_225EB68(a3, v112);
    }

    v117 = *(a1 + 352);
    *v112 = 754;
    v118 = *(v117 + 44);
    v112[2] = v118;
    if (v118 > 0x7F)
    {
      v119 = sub_19575D0(v118, v112 + 2);
    }

    else
    {
      v119 = v112 + 3;
    }

    v112 = sub_153B1D4(v117, v119, a3);
  }

  v120 = *(a1 + 20);
  if ((v120 & 0x8000) != 0)
  {
    if (*a3 <= v112)
    {
      v112 = sub_225EB68(a3, v112);
    }

    v122 = *(a1 + 480);
    *v112 = 760;
    v112[2] = v122;
    if (v122 > 0x7F)
    {
      v112[2] = v122 | 0x80;
      v123 = v122 >> 7;
      v112[3] = v122 >> 7;
      v121 = v112 + 4;
      if (v122 >= 0x4000)
      {
        LOBYTE(v112) = v112[3];
        do
        {
          *(v121 - 1) = v112 | 0x80;
          v112 = (v123 >> 7);
          *v121++ = v123 >> 7;
          v124 = v123 >> 14;
          v123 >>= 7;
        }

        while (v124);
      }
    }

    else
    {
      v121 = v112 + 3;
    }
  }

  else
  {
    v121 = v112;
  }

  if ((v120 & 0x10000) != 0)
  {
    if (*a3 <= v121)
    {
      v121 = sub_225EB68(a3, v121);
    }

    v125 = *(a1 + 484);
    *v121 = 896;
    v121[2] = v125;
    v121 += 3;
    if ((v120 & 0x20000) == 0)
    {
LABEL_281:
      if ((v120 & 0x40000) == 0)
      {
        goto LABEL_282;
      }

      goto LABEL_290;
    }
  }

  else if ((v120 & 0x20000) == 0)
  {
    goto LABEL_281;
  }

  if (*a3 <= v121)
  {
    v121 = sub_225EB68(a3, v121);
  }

  v126 = *(a1 + 485);
  *v121 = 904;
  v121[2] = v126;
  v121 += 3;
  if ((v120 & 0x40000) == 0)
  {
LABEL_282:
    if ((v120 & 0x80000) == 0)
    {
      goto LABEL_296;
    }

    goto LABEL_293;
  }

LABEL_290:
  if (*a3 <= v121)
  {
    v121 = sub_225EB68(a3, v121);
  }

  v127 = *(a1 + 486);
  *v121 = 912;
  v121[2] = v127;
  v121 += 3;
  if ((v120 & 0x80000) != 0)
  {
LABEL_293:
    if (*a3 <= v121)
    {
      v121 = sub_225EB68(a3, v121);
    }

    v128 = *(a1 + 487);
    *v121 = 920;
    v121[2] = v128;
    v121 += 3;
  }

LABEL_296:
  v129 = *(a1 + 136);
  if (v129 >= 1)
  {
    v130 = 8;
    do
    {
      v131 = *(*(a1 + 144) + v130);
      v132 = *(v131 + 23);
      if (v132 < 0 && (v132 = v131[1], v132 > 127) || *a3 - v121 + 13 < v132)
      {
        v121 = sub_1957480(a3, 52, v131, v121);
      }

      else
      {
        *v121 = 930;
        v121[2] = v132;
        if (*(v131 + 23) < 0)
        {
          v131 = *v131;
        }

        v133 = v121 + 3;
        memcpy(v121 + 3, v131, v132);
        v121 = &v133[v132];
      }

      v130 += 8;
      --v129;
    }

    while (v129);
  }

  if ((v120 & 0x200000) != 0)
  {
    if (*a3 <= v121)
    {
      v121 = sub_225EB68(a3, v121);
    }

    v134 = *(a1 + 496);
    *v121 = 936;
    v121[2] = v134;
    v121 += 3;
  }

  if ((v120 & 0x100000) != 0)
  {
    if (*a3 <= v121)
    {
      v121 = sub_225EB68(a3, v121);
    }

    v136 = *(a1 + 488);
    *v121 = 1696;
    v121[2] = v136;
    if (v136 > 0x7F)
    {
      v121[2] = v136 | 0x80;
      v137 = v136 >> 7;
      v121[3] = v136 >> 7;
      v135 = v121 + 4;
      if (v136 >= 0x4000)
      {
        LOBYTE(v121) = v121[3];
        do
        {
          *(v135 - 1) = v121 | 0x80;
          v121 = (v137 >> 7);
          *v135++ = v137 >> 7;
          v138 = v137 >> 14;
          v137 >>= 7;
        }

        while (v138);
      }
    }

    else
    {
      v135 = v121 + 3;
    }
  }

  else
  {
    v135 = v121;
  }

  if ((v120 & 0x400000) != 0)
  {
    if (*a3 <= v135)
    {
      v135 = sub_225EB68(a3, v135);
    }

    v139 = *(a1 + 497);
    *v135 = 1704;
    v135[2] = v139;
    v135 += 3;
  }

  if ((v120 & 0x800000) != 0)
  {
    if (*a3 <= v135)
    {
      v135 = sub_225EB68(a3, v135);
    }

    v140 = *(a1 + 498);
    *v135 = 1712;
    v135[2] = v140;
    v135 += 3;
  }

  v141 = *(a1 + 160);
  if (v141)
  {
    for (m = 0; m != v141; ++m)
    {
      if (*a3 <= v135)
      {
        v135 = sub_225EB68(a3, v135);
      }

      v143 = *(*(a1 + 168) + 8 * m + 8);
      *v135 = 1722;
      v144 = *(v143 + 20);
      v135[2] = v144;
      if (v144 > 0x7F)
      {
        v145 = sub_19575D0(v144, v135 + 2);
      }

      else
      {
        v145 = v135 + 3;
      }

      v135 = sub_153DE54(v143, v145, a3);
    }
  }

  if ((v120 & 0x1000000) != 0)
  {
    if (*a3 <= v135)
    {
      v135 = sub_225EB68(a3, v135);
    }

    v146 = *(a1 + 499);
    *v135 = 1728;
    v135[2] = v146;
    v135 += 3;
  }

  v147 = *(a1 + 16);
  if ((v147 & 0x80) != 0)
  {
    v135 = sub_128AEEC(a3, 105, *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL, v135);
  }

  if ((v147 & 0x40000) != 0)
  {
    if (*a3 <= v135)
    {
      v135 = sub_225EB68(a3, v135);
    }

    v148 = *(a1 + 360);
    *v135 = 1746;
    v149 = *(v148 + 20);
    v135[2] = v149;
    if (v149 > 0x7F)
    {
      v150 = sub_19575D0(v149, v135 + 2);
    }

    else
    {
      v150 = v135 + 3;
    }

    v135 = sub_153DE54(v148, v150, a3);
  }

  if ((*(a1 + 23) & 2) != 0)
  {
    if (*a3 <= v135)
    {
      v135 = sub_225EB68(a3, v135);
    }

    v151 = *(a1 + 500);
    *v135 = 1752;
    v135[2] = v151;
    v135 += 3;
  }

  if ((*(a1 + 18) & 8) != 0)
  {
    if (*a3 <= v135)
    {
      v135 = sub_225EB68(a3, v135);
    }

    v152 = *(a1 + 368);
    *v135 = 1762;
    v153 = *(v152 + 20);
    v135[2] = v153;
    if (v153 > 0x7F)
    {
      v154 = sub_19575D0(v153, v135 + 2);
    }

    else
    {
      v154 = v135 + 3;
    }

    v135 = sub_16ED4B0(v152, v154, a3);
  }

  if ((*(a1 + 23) & 4) != 0)
  {
    if (*a3 <= v135)
    {
      v135 = sub_225EB68(a3, v135);
    }

    v155 = *(a1 + 501);
    *v135 = 1768;
    v135[2] = v155;
    v135 += 3;
  }

  if ((*(a1 + 18) & 0x10) != 0)
  {
    if (*a3 <= v135)
    {
      v135 = sub_225EB68(a3, v135);
    }

    v156 = *(a1 + 376);
    *v135 = 1778;
    v157 = *(v156 + 20);
    v135[2] = v157;
    if (v157 > 0x7F)
    {
      v158 = sub_19575D0(v157, v135 + 2);
    }

    else
    {
      v158 = v135 + 3;
    }

    v135 = sub_153E978(v156, v158, a3);
  }

  v159 = *(a1 + 20);
  if ((v159 & 0x8000000) != 0)
  {
    if (*a3 <= v135)
    {
      v135 = sub_225EB68(a3, v135);
    }

    v160 = *(a1 + 502);
    *v135 = 1784;
    v135[2] = v160;
    v135 += 3;
  }

  v161 = *(a1 + 184);
  if (v161)
  {
    for (n = 0; n != v161; ++n)
    {
      if (*a3 <= v135)
      {
        v135 = sub_225EB68(a3, v135);
      }

      v163 = *(*(a1 + 192) + 8 * n + 8);
      *v135 = 1922;
      v164 = *(v163 + 20);
      v135[2] = v164;
      if (v164 > 0x7F)
      {
        v165 = sub_19575D0(v164, v135 + 2);
      }

      else
      {
        v165 = v135 + 3;
      }

      v135 = sub_16EEE1C(v163, v165, a3);
    }
  }

  if ((v159 & 0x20000000) != 0)
  {
    if (*a3 <= v135)
    {
      v135 = sub_225EB68(a3, v135);
    }

    v167 = *(a1 + 504);
    *v135 = 1928;
    v135[2] = v167;
    if (v167 > 0x7F)
    {
      v135[2] = v167 | 0x80;
      v168 = v167 >> 7;
      v135[3] = v167 >> 7;
      v166 = v135 + 4;
      if (v167 >= 0x4000)
      {
        LOBYTE(v169) = v135[3];
        do
        {
          *(v166 - 1) = v169 | 0x80;
          v169 = v168 >> 7;
          *v166++ = v168 >> 7;
          v170 = v168 >> 14;
          v168 >>= 7;
        }

        while (v170);
      }
    }

    else
    {
      v166 = v135 + 3;
    }
  }

  else
  {
    v166 = v135;
  }

  if ((*(a1 + 18) & 0x20) != 0)
  {
    if (*a3 <= v166)
    {
      v166 = sub_225EB68(a3, v166);
    }

    v171 = *(a1 + 384);
    *v166 = 1938;
    v172 = *(v171 + 44);
    v166[2] = v172;
    if (v172 > 0x7F)
    {
      v173 = sub_19575D0(v172, v166 + 2);
    }

    else
    {
      v173 = v166 + 3;
    }

    v166 = sub_16E5070(v171, v173, a3);
  }

  v174 = *(a1 + 20);
  if ((v174 & 0x40000000) != 0)
  {
    if (*a3 <= v166)
    {
      v166 = sub_225EB68(a3, v166);
    }

    v176 = *(a1 + 512);
    *v166 = 1944;
    v166[2] = v176;
    if (v176 > 0x7F)
    {
      v166[2] = v176 | 0x80;
      v177 = v176 >> 7;
      v166[3] = v176 >> 7;
      v175 = v166 + 4;
      if (v176 >= 0x4000)
      {
        LOBYTE(v166) = v166[3];
        do
        {
          *(v175 - 1) = v166 | 0x80;
          v166 = (v177 >> 7);
          *v175++ = v177 >> 7;
          v178 = v177 >> 14;
          v177 >>= 7;
        }

        while (v178);
      }
    }

    else
    {
      v175 = v166 + 3;
    }
  }

  else
  {
    v175 = v166;
  }

  if ((v174 & 0x10000000) != 0)
  {
    if (*a3 <= v175)
    {
      v175 = sub_225EB68(a3, v175);
    }

    v179 = *(a1 + 503);
    *v175 = 1952;
    v175[2] = v179;
    v175 += 3;
  }

  if (*(a1 + 24))
  {
    if (*a3 <= v175)
    {
      v175 = sub_225EB68(a3, v175);
    }

    v180 = *(a1 + 520);
    *v175 = 1960;
    v175[2] = v180;
    v175 += 3;
  }

  if ((*(a1 + 20) & 0x80000000) != 0)
  {
    if (*a3 <= v175)
    {
      v175 = sub_225EB68(a3, v175);
    }

    v182 = *(a1 + 516);
    *v175 = 1968;
    v175[2] = v182;
    if (v182 > 0x7F)
    {
      v175[2] = v182 | 0x80;
      v183 = v182 >> 7;
      v175[3] = v182 >> 7;
      v181 = v175 + 4;
      if (v182 >= 0x4000)
      {
        LOBYTE(v184) = v175[3];
        do
        {
          *(v181 - 1) = v184 | 0x80;
          v184 = v183 >> 7;
          *v181++ = v183 >> 7;
          v185 = v183 >> 14;
          v183 >>= 7;
        }

        while (v185);
      }
    }

    else
    {
      v181 = v175 + 3;
    }
  }

  else
  {
    v181 = v175;
  }

  v186 = *(a1 + 200);
  if (v186 < 1)
  {
    v189 = v181;
  }

  else
  {
    for (ii = 0; ii != v186; ++ii)
    {
      if (*a3 <= v181)
      {
        v181 = sub_225EB68(a3, v181);
      }

      v188 = *(*(a1 + 208) + 4 * ii);
      *v181 = 1976;
      v181[2] = v188;
      if (v188 > 0x7F)
      {
        v181[2] = v188 | 0x80;
        v190 = v188 >> 7;
        v181[3] = v188 >> 7;
        v189 = v181 + 4;
        if (v188 >= 0x4000)
        {
          LOBYTE(v181) = v181[3];
          do
          {
            *(v189 - 1) = v181 | 0x80;
            v181 = (v190 >> 7);
            *v189++ = v190 >> 7;
            v191 = v190 >> 14;
            v190 >>= 7;
          }

          while (v191);
        }
      }

      else
      {
        v189 = v181 + 3;
      }

      v181 = v189;
    }
  }

  if ((*(a1 + 18) & 0x40) != 0)
  {
    if (*a3 <= v189)
    {
      v189 = sub_225EB68(a3, v189);
    }

    v192 = *(a1 + 392);
    *v189 = 1986;
    v193 = *(v192 + 44);
    v189[2] = v193;
    if (v193 > 0x7F)
    {
      v194 = sub_19575D0(v193, v189 + 2);
    }

    else
    {
      v194 = v189 + 3;
    }

    v189 = sub_16E5070(v192, v194, a3);
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    if (*a3 <= v189)
    {
      v189 = sub_225EB68(a3, v189);
    }

    v195 = *(a1 + 521);
    *v189 = 1992;
    v189[2] = v195;
    v189 += 3;
  }

  if ((*(a1 + 18) & 0x80) != 0)
  {
    if (*a3 <= v189)
    {
      v189 = sub_225EB68(a3, v189);
    }

    v196 = *(a1 + 400);
    *v189 = 2002;
    v197 = *(v196 + 64);
    v189[2] = v197;
    if (v197 > 0x7F)
    {
      v198 = sub_19575D0(v197, v189 + 2);
    }

    else
    {
      v198 = v189 + 3;
    }

    v189 = sub_15506E0(v196, v198, a3);
  }

  v199 = *(a1 + 24);
  if ((v199 & 8) != 0)
  {
    if (*a3 <= v189)
    {
      v189 = sub_225EB68(a3, v189);
    }

    v201 = *(a1 + 524);
    *v189 = 2008;
    v189[2] = v201;
    if (v201 > 0x7F)
    {
      v189[2] = v201 | 0x80;
      v202 = v201 >> 7;
      v189[3] = v201 >> 7;
      v200 = v189 + 4;
      if (v201 >= 0x4000)
      {
        LOBYTE(v189) = v189[3];
        do
        {
          *(v200 - 1) = v189 | 0x80;
          v189 = (v202 >> 7);
          *v200++ = v202 >> 7;
          v203 = v202 >> 14;
          v202 >>= 7;
        }

        while (v203);
      }
    }

    else
    {
      v200 = v189 + 3;
    }
  }

  else
  {
    v200 = v189;
  }

  if ((v199 & 4) != 0)
  {
    if (*a3 <= v200)
    {
      v200 = sub_225EB68(a3, v200);
    }

    v204 = *(a1 + 522);
    *v200 = 2016;
    v200[2] = v204;
    v200 += 3;
  }

  v205 = *(a1 + 16);
  if ((v205 & 0x100) != 0)
  {
    v200 = sub_128AEEC(a3, 125, *(a1 + 280) & 0xFFFFFFFFFFFFFFFELL, v200);
  }

  if ((v205 & 0x200) != 0)
  {
    v200 = sub_128AEEC(a3, 126, *(a1 + 288) & 0xFFFFFFFFFFFFFFFELL, v200);
  }

  v206 = *(a1 + 8);
  if ((v206 & 1) == 0)
  {
    return v200;
  }

  v208 = v206 & 0xFFFFFFFFFFFFFFFCLL;
  v209 = *(v208 + 31);
  if (v209 < 0)
  {
    v210 = *(v208 + 8);
    v209 = *(v208 + 16);
  }

  else
  {
    v210 = (v208 + 8);
  }

  if (*a3 - v200 >= v209)
  {
    v211 = v209;
    memcpy(v200, v210, v209);
    v200 += v211;
    return v200;
  }

  return sub_1957130(a3, v210, v209, v200);
}