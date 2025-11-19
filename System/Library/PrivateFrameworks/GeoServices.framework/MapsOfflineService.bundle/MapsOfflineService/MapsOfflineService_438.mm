uint64_t sub_17CE578(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_16E51F0(*(a1 + 24));
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
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

uint64_t sub_17CE630(uint64_t a1)
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

uint64_t sub_17CE670(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_270D858;
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
    sub_193D224((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void sub_17CE760(_Unwind_Exception *a1)
{
  sub_193B040(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_17CE7A4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_193B040(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17CE824(void *a1)
{
  sub_17CE7A4(a1);

  operator delete();
}

unsigned __int8 *sub_17CE85C(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_17CE1B4(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v6 = v1[8];
  v5 = v1 + 8;
  *(v5 + 5) = 0;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_17CE8E0(uint64_t a1, char *a2, int32x2_t *a3)
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
      *(a1 + 48) = v15;
      v5 = 1;
      goto LABEL_33;
    }

    v24 = sub_19587DC(v7, v15);
    v26 = v24;
    *(a1 + 48) = v25;
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
        v23 = sub_1860290(*(a1 + 24));
        v22 = sub_19593CC(a1 + 24, v23);
        v19 = v26;
      }

      v18 = sub_22452CC(a3, v22, v19);
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

char *sub_17CEAF8(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_17CE3EC(v8, v10, a3);
    }
  }

  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v12 = *(a1 + 48);
    *__dst = 16;
    __dst[1] = v12;
    if (v12 > 0x7F)
    {
      __dst[1] = v12 | 0x80;
      v13 = v12 >> 7;
      __dst[2] = v12 >> 7;
      v11 = __dst + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(__dst) = __dst[2];
        do
        {
          *(v11 - 1) = __dst | 0x80;
          __dst = (v13 >> 7);
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = __dst + 2;
    }
  }

  else
  {
    v11 = __dst;
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

uint64_t sub_17CECB8(uint64_t a1)
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
      v7 = sub_17CE578(v6);
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
    v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

  *(a1 + 20) = v2;
  return v2;
}

void sub_17CED88(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_193D224((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

void *sub_17CEE78(void *a1)
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

void sub_17CEEEC(void *a1)
{
  sub_17CEE78(a1);

  operator delete();
}

uint64_t *sub_17CEF24(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_17CEF34(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_17CEFC8(uint64_t a1)
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

std::string *sub_17CEFF4(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_17CF028(void *a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  a1[1] = v4;
  *a1 = off_270D958;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = &qword_278E990;
  a1[7] = &qword_278E990;
  a1[8] = &qword_278E990;
  return a1;
}

void sub_17CF09C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17CF0CC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_270D958;
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
    v7 = *(a2 + 40);
  }

  *(a1 + 64) = &qword_278E990;
  if ((v7 & 4) != 0)
  {
    v10 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v10 = *v10;
    }

    sub_194EA1C((a1 + 64), (*(a2 + 64) & 0xFFFFFFFFFFFFFFFELL), v10);
  }

  return a1;
}

void sub_17CF1FC(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17CF23C(uint64_t a1)
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
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17CF310(uint64_t a1)
{
  sub_17CF23C(a1);

  operator delete();
}

unsigned __int8 *sub_17CF348(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
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
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 32) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_17CF440(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v22 = a2;
  if (sub_195ADC0(a3, v22, a3[11].i32[1]))
  {
    return *v22;
  }

  while (1)
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
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 40) |= 4u;
        v17 = *(a1 + 8);
        v15 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v15 = *v15;
        }

        v16 = (a1 + 64);
        goto LABEL_30;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 40) |= 2u;
        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v16 = (a1 + 56);
        goto LABEL_30;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 40) |= 1u;
      v18 = *(a1 + 8);
      v15 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v15 = *v15;
      }

      v16 = (a1 + 48);
LABEL_30:
      v19 = sub_194DB04(v16, v15);
      v13 = sub_1958890(v19, *v22, a3);
      goto LABEL_31;
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    if ((v7 - 8000) >> 6 > 0x7C)
    {
      v20 = *(a1 + 8);
      if (v20)
      {
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v21 = sub_11F1920((a1 + 8));
        v6 = *v22;
      }

      v13 = sub_1952690(v7, v21, v6, a3);
    }

    else
    {
      v13 = sub_19525AC((a1 + 16), v7, v6, &off_2783DE0, (a1 + 8), a3);
    }

LABEL_31:
    *v22 = v13;
    if (!v13)
    {
      goto LABEL_40;
    }

    if (sub_195ADC0(a3, v22, a3[11].i32[1]))
    {
      return *v22;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v22;
  }

LABEL_40:
  *v22 = 0;
  return *v22;
}

char *sub_17CF650(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, a2);
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

  v4 = sub_128AEEC(a3, 2, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) != 0)
  {
LABEL_4:
    v4 = sub_128AEEC(a3, 3, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_5:
  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 1000, 2000, v4, a3);
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

uint64_t sub_17CF788(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 7) == 0)
  {
    goto LABEL_8;
  }

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
        goto LABEL_8;
      }

      goto LABEL_5;
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
  if ((v3 & 4) != 0)
  {
LABEL_5:
    v4 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    result += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v7 = *(a1 + 8);
  if (v7)
  {
    v14 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    result += v15;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_17CF8BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 7) == 0)
  {
    goto LABEL_15;
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
        goto LABEL_15;
      }

      goto LABEL_12;
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
  if ((v4 & 4) != 0)
  {
LABEL_12:
    v11 = *(a2 + 64);
    *(a1 + 40) |= 4u;
    v12 = *(a1 + 8);
    v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    if (v12)
    {
      v13 = *v13;
    }

    sub_194EA1C((a1 + 64), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
  }

LABEL_15:
  sub_225EA0C(a1 + 16, a2 + 16);
  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_17CF9F4(void *a1)
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

void sub_17CFA68(void *a1)
{
  sub_17CF9F4(a1);

  operator delete();
}

uint64_t *sub_17CFAA0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_17CFAB0(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_17CFB44(uint64_t a1)
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

std::string *sub_17CFB70(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_17CFBA4(uint64_t result)
{
  v1 = *(result + 48);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = (*(result + 56) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E72AC(v4);
      --v1;
    }

    while (v1);
    *(v2 + 48) = 0;
  }

  return result;
}

uint64_t sub_17CFBF4(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_270DA58;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = a2;
  *(a1 + 64) = 0;
  return a1;
}

void sub_17CFC64(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17CFC94(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_270DA58;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v6 = *(a2 + 48);
  if (v6)
  {
    v7 = *(a2 + 56);
    v8 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_13B326C((a1 + 40), v8, (v7 + 8), v6, **(a1 + 56) - *(a1 + 48));
    v9 = *(a1 + 48) + v6;
    *(a1 + 48) = v9;
    v10 = *(a1 + 56);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 64) = 0;
  v11 = *(a2 + 8);
  if (v11)
  {
    sub_1957EF4(v4, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  return a1;
}

void sub_17CFD88(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_17CFDD8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13B31E8(a1 + 5);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17CFE60(void *a1)
{
  sub_17CFDD8(a1);

  operator delete();
}

uint64_t sub_17CFE98(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 48);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 56) + 8);
    do
    {
      v5 = *v4++;
      result = sub_16E72AC(v5);
      --v3;
    }

    while (v3);
    *(a1 + 48) = 0;
  }

  v7 = *(a1 + 8);
  v6 = (a1 + 8);
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_17CFF1C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  if ((sub_195ADC0(a3, &v20, a3[11].i32[1]) & 1) == 0)
  {
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
      if (v6 == 10)
      {
        v11 = v5 - 1;
        while (1)
        {
          v12 = (v11 + 1);
          v20 = v11 + 1;
          v13 = *(a1 + 56);
          if (v13 && (v14 = *(a1 + 48), v14 < *v13))
          {
            *(a1 + 48) = v14 + 1;
            v15 = *&v13[2 * v14 + 2];
          }

          else
          {
            v16 = sub_16F5A54(*(a1 + 40));
            v15 = sub_19593CC(a1 + 40, v16);
            v12 = v20;
          }

          v11 = sub_22002C0(a3, v15, v12);
          v20 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 10)
          {
            goto LABEL_26;
          }
        }
      }

      if (!v6 || (v6 & 7) == 4)
      {
        break;
      }

      if ((v6 - 8000) >> 6 > 0x7C)
      {
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

        v10 = sub_1952690(v6, v18, v5, a3);
      }

      else
      {
        v10 = sub_19525AC((a1 + 16), v6, v5, &off_2783E40, (a1 + 8), a3);
      }

      v20 = v10;
      if (!v10)
      {
        return 0;
      }

LABEL_26:
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

  return v20;
}

char *sub_17D00EC(uint64_t a1, char *a2, void *a3)
{
  v6 = *(a1 + 48);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 56) + 8 * i + 8);
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

  if (*(a1 + 26))
  {
    a2 = sub_1953428(a1 + 16, 1000, 2000, a2, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
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

  if (*a3 - a2 >= v14)
  {
    v16 = v14;
    memcpy(a2, v15, v14);
    a2 += v16;
    return a2;
  }

  return sub_1957130(a3, v15, v14, a2);
}

uint64_t sub_17D0250(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 48);
  v4 = v2 + v3;
  v5 = *(a1 + 56);
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
      v9 = sub_16E7590(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
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

  *(a1 + 64) = v4;
  return v4;
}

void sub_17D02FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_13B326C((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_17D03DC(void *a1)
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

void sub_17D0450(void *a1)
{
  sub_17D03DC(a1);

  operator delete();
}

uint64_t *sub_17D0488(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_17D0498(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_17D052C(uint64_t a1)
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

std::string *sub_17D0558(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_17D058C(void *a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  a1[1] = v5;
  *a1 = off_270DB58;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = a2;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = a2;
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = a2;
  a1[13] = 0;
  a1[14] = 0;
  a1[15] = &qword_278E990;
  a1[16] = &qword_278E990;
  a1[17] = &qword_278E990;
  a1[18] = &qword_278E990;
  return a1;
}

void sub_17D0618(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17D0648(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_270DB58;
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
    sub_13B326C((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
    v9 = *(a1 + 56) + v6;
    *(a1 + 56) = v9;
    v10 = *(a1 + 64);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v11 = *(a2 + 80);
  if (v11)
  {
    v12 = *(a2 + 88);
    v13 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_13B326C((a1 + 72), v13, (v12 + 8), v11, **(a1 + 88) - *(a1 + 80));
    v14 = *(a1 + 80) + v11;
    *(a1 + 80) = v14;
    v15 = *(a1 + 88);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v16 = *(a2 + 104);
  if (v16)
  {
    v17 = *(a2 + 112);
    v18 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_1201B48(a1 + 96, v18, (v17 + 8), v16, **(a1 + 112) - *(a1 + 104));
    v19 = *(a1 + 104) + v16;
    *(a1 + 104) = v19;
    v20 = *(a1 + 112);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 8);
  if (v21)
  {
    sub_1957EF4(v4, (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  *(a1 + 120) = &qword_278E990;
  v22 = *(a2 + 40);
  if (v22)
  {
    v23 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v23 = *v23;
    }

    sub_194EA1C((a1 + 120), (*(a2 + 120) & 0xFFFFFFFFFFFFFFFELL), v23);
    v22 = *(a2 + 40);
  }

  *(a1 + 128) = &qword_278E990;
  if ((v22 & 2) != 0)
  {
    v24 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v24 = *v24;
    }

    sub_194EA1C((a1 + 128), (*(a2 + 128) & 0xFFFFFFFFFFFFFFFELL), v24);
    v22 = *(a2 + 40);
  }

  *(a1 + 136) = &qword_278E990;
  if ((v22 & 4) != 0)
  {
    v25 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v25 = *v25;
    }

    sub_194EA1C((a1 + 136), (*(a2 + 136) & 0xFFFFFFFFFFFFFFFELL), v25);
    v22 = *(a2 + 40);
  }

  *(a1 + 144) = &qword_278E990;
  if ((v22 & 8) != 0)
  {
    v26 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v26 = *v26;
    }

    sub_194EA1C((a1 + 144), (*(a2 + 144) & 0xFFFFFFFFFFFFFFFELL), v26);
  }

  return a1;
}

void sub_17D08EC(_Unwind_Exception *a1)
{
  sub_13B31E8(v4);
  sub_13B31E8(v1 + 6);
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17D0960(uint64_t a1)
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

  v5 = (a1 + 120);
  if (*(a1 + 120) != &qword_278E990)
  {
    sub_194E89C(v5);
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

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_13:
  sub_1956AFC((a1 + 96));
  sub_13B31E8((a1 + 72));
  sub_13B31E8((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17D0A68(uint64_t a1)
{
  sub_17D0960(a1);

  operator delete();
}

uint64_t sub_17D0AA0(uint64_t a1)
{
  sub_1951124((a1 + 16));
  v2 = *(a1 + 56);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 64) + 8);
    do
    {
      v4 = *v3++;
      sub_16E72AC(v4);
      --v2;
    }

    while (v2);
    *(a1 + 56) = 0;
  }

  v5 = *(a1 + 80);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 88) + 8);
    do
    {
      v7 = *v6++;
      sub_16E72AC(v7);
      --v5;
    }

    while (v5);
    *(a1 + 80) = 0;
  }

  result = sub_12A41D0(a1 + 96);
  v9 = *(a1 + 40);
  if ((v9 & 0xF) != 0)
  {
    if ((v9 & 1) == 0)
    {
      if ((v9 & 2) == 0)
      {
        goto LABEL_12;
      }

LABEL_19:
      v11 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
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
      v13 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
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

    v10 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
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
    v12 = *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL;
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
  v15 = *(a1 + 8);
  v14 = a1 + 8;
  *(v14 + 32) = 0;
  if (v15)
  {

    return sub_1957EA8(v14);
  }

  return result;
}

uint64_t sub_17D0C30(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v43 = a2;
  if (sub_195ADC0(a3, v43, a3[11].i32[1]))
  {
    return *v43;
  }

  while (1)
  {
    v6 = (*v43 + 1);
    v7 = **v43;
    if (**v43 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v43, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v43 + 2);
      }
    }

    *v43 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 3)
    {
      if (v10 == 1)
      {
        if (v7 == 10)
        {
          *(a1 + 40) |= 1u;
          v22 = *(a1 + 8);
          v19 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v19 = *v19;
          }

          v20 = (a1 + 120);
          goto LABEL_67;
        }
      }

      else if (v10 == 2)
      {
        if (v7 == 18)
        {
          *(a1 + 40) |= 2u;
          v37 = *(a1 + 8);
          v19 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
          if (v37)
          {
            v19 = *v19;
          }

          v20 = (a1 + 128);
          goto LABEL_67;
        }
      }

      else if (v10 == 3 && v7 == 26)
      {
        *(a1 + 40) |= 4u;
        v18 = *(a1 + 8);
        v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v19 = *v19;
        }

        v20 = (a1 + 136);
        goto LABEL_67;
      }
    }

    else if (v7 >> 3 > 5)
    {
      if (v10 == 6)
      {
        if (v7 == 50)
        {
          v29 = v6 - 1;
          while (1)
          {
            v30 = (v29 + 1);
            *v43 = v29 + 1;
            v31 = *(a1 + 112);
            if (v31 && (v32 = *(a1 + 104), v32 < *v31))
            {
              *(a1 + 104) = v32 + 1;
              v33 = *&v31[2 * v32 + 2];
            }

            else
            {
              v34 = *(a1 + 96);
              if (!v34)
              {
                operator new();
              }

              *v36 = v35;
              v36[1] = sub_195A650;
              *v35 = 0;
              v35[1] = 0;
              v35[2] = 0;
              v33 = sub_19593CC(a1 + 96, v35);
              v30 = *v43;
            }

            v29 = sub_1958890(v33, v30, a3);
            *v43 = v29;
            if (!v29)
            {
              goto LABEL_83;
            }

            if (*a3 <= v29 || *v29 != 50)
            {
              goto LABEL_69;
            }
          }
        }
      }

      else if (v10 == 7 && v7 == 58)
      {
        *(a1 + 40) |= 8u;
        v21 = *(a1 + 8);
        v19 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v19 = *v19;
        }

        v20 = (a1 + 144);
LABEL_67:
        v38 = sub_194DB04(v20, v19);
        v39 = sub_1958890(v38, *v43, a3);
        goto LABEL_68;
      }
    }

    else if (v10 == 4)
    {
      if (v7 == 34)
      {
        v23 = v6 - 1;
        while (1)
        {
          v24 = v23 + 1;
          *v43 = v23 + 1;
          v25 = *(a1 + 64);
          if (v25 && (v26 = *(a1 + 56), v26 < *v25))
          {
            *(a1 + 56) = v26 + 1;
            v27 = *&v25[2 * v26 + 2];
          }

          else
          {
            v28 = sub_16F5A54(*(a1 + 48));
            v27 = sub_19593CC(a1 + 48, v28);
            v24 = *v43;
          }

          v23 = sub_22002C0(a3, v27, v24);
          *v43 = v23;
          if (!v23)
          {
            goto LABEL_83;
          }

          if (*a3 <= v23 || *v23 != 34)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else if (v10 == 5 && v7 == 42)
    {
      v11 = v6 - 1;
      while (1)
      {
        v12 = v11 + 1;
        *v43 = v11 + 1;
        v13 = *(a1 + 88);
        if (v13 && (v14 = *(a1 + 80), v14 < *v13))
        {
          *(a1 + 80) = v14 + 1;
          v15 = *&v13[2 * v14 + 2];
        }

        else
        {
          v16 = sub_16F5A54(*(a1 + 72));
          v15 = sub_19593CC(a1 + 72, v16);
          v12 = *v43;
        }

        v11 = sub_22002C0(a3, v15, v12);
        *v43 = v11;
        if (!v11)
        {
          goto LABEL_83;
        }

        if (*a3 <= v11 || *v11 != 42)
        {
          goto LABEL_69;
        }
      }
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    if ((v7 - 8000) >> 6 > 0x7C)
    {
      v41 = *(a1 + 8);
      if (v41)
      {
        v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v42 = sub_11F1920((a1 + 8));
        v6 = *v43;
      }

      v39 = sub_1952690(v7, v42, v6, a3);
    }

    else
    {
      v39 = sub_19525AC((a1 + 16), v7, v6, &off_2783EA0, (a1 + 8), a3);
    }

LABEL_68:
    *v43 = v39;
    if (!v39)
    {
      goto LABEL_83;
    }

LABEL_69:
    if (sub_195ADC0(a3, v43, a3[11].i32[1]))
    {
      return *v43;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v43;
  }

LABEL_83:
  *v43 = 0;
  return *v43;
}

char *sub_17D10A0(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL, a2);
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

  v4 = sub_128AEEC(a3, 2, *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) != 0)
  {
LABEL_4:
    v4 = sub_128AEEC(a3, 3, *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_5:
  v7 = *(a1 + 56);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v9 = *(*(a1 + 64) + 8 * i + 8);
      *v4 = 34;
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

      v4 = sub_16E74A8(v9, v11, a3);
    }
  }

  v12 = *(a1 + 80);
  if (v12)
  {
    for (j = 0; j != v12; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v14 = *(*(a1 + 88) + 8 * j + 8);
      *v4 = 42;
      v15 = *(v14 + 20);
      v4[1] = v15;
      if (v15 > 0x7F)
      {
        v16 = sub_19575D0(v15, v4 + 1);
      }

      else
      {
        v16 = v4 + 2;
      }

      v4 = sub_16E74A8(v14, v16, a3);
    }
  }

  v17 = *(a1 + 104);
  if (v17 >= 1)
  {
    v18 = 8;
    do
    {
      v19 = *(*(a1 + 112) + v18);
      v20 = *(v19 + 23);
      if (v20 < 0 && (v20 = v19[1], v20 > 127) || *a3 - v4 + 14 < v20)
      {
        v4 = sub_1957480(a3, 6, v19, v4);
      }

      else
      {
        *v4 = 50;
        v4[1] = v20;
        if (*(v19 + 23) < 0)
        {
          v19 = *v19;
        }

        v21 = v4 + 2;
        memcpy(v21, v19, v20);
        v4 = &v21[v20];
      }

      v18 += 8;
      --v17;
    }

    while (v17);
  }

  if ((v6 & 8) != 0)
  {
    v4 = sub_128AEEC(a3, 7, *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 1000, 2000, v4, a3);
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v25)
  {
    v27 = v25;
    memcpy(v4, v26, v25);
    v4 += v27;
    return v4;
  }

  return sub_1957130(a3, v26, v25, v4);
}

uint64_t sub_17D13B0(uint64_t a1)
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
      v9 = sub_16E7590(v8);
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
      v16 = sub_16E7590(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 104);
  result = v11 + v17;
  if (v17 >= 1)
  {
    v19 = (*(a1 + 112) + 8);
    do
    {
      v20 = *v19++;
      v21 = *(v20 + 23);
      v22 = *(v20 + 8);
      if ((v21 & 0x80u) == 0)
      {
        v22 = v21;
      }

      result += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      --v17;
    }

    while (v17);
  }

  v23 = *(a1 + 40);
  if ((v23 & 0xF) == 0)
  {
    goto LABEL_26;
  }

  if ((v23 & 1) == 0)
  {
    if ((v23 & 2) == 0)
    {
      goto LABEL_21;
    }

LABEL_31:
    v31 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
    v32 = *(v31 + 23);
    v33 = *(v31 + 8);
    if ((v32 & 0x80u) == 0)
    {
      v33 = v32;
    }

    result += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 4) == 0)
    {
LABEL_22:
      if ((v23 & 8) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    goto LABEL_34;
  }

  v28 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
  v29 = *(v28 + 23);
  v30 = *(v28 + 8);
  if ((v29 & 0x80u) == 0)
  {
    v30 = v29;
  }

  result += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v23 & 2) != 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  if ((v23 & 4) == 0)
  {
    goto LABEL_22;
  }

LABEL_34:
  v34 = *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(v34 + 23);
  v36 = *(v34 + 8);
  if ((v35 & 0x80u) == 0)
  {
    v36 = v35;
  }

  result += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v23 & 8) != 0)
  {
LABEL_23:
    v24 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
    v25 = *(v24 + 23);
    v26 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v26 = v25;
    }

    result += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_26:
  v27 = *(a1 + 8);
  if (v27)
  {
    v37 = v27 & 0xFFFFFFFFFFFFFFFCLL;
    v38 = *((v27 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v38 < 0)
    {
      v38 = *(v37 + 16);
    }

    result += v38;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_17D162C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13B326C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_13B326C((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
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
    sub_1201B48(a1 + 96, v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 40);
  if ((v19 & 0xF) == 0)
  {
    goto LABEL_28;
  }

  if ((v19 & 1) == 0)
  {
    if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    v23 = *(a2 + 128);
    *(a1 + 40) |= 2u;
    v24 = *(a1 + 8);
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v25 = *v25;
    }

    sub_194EA1C((a1 + 128), (v23 & 0xFFFFFFFFFFFFFFFELL), v25);
    if ((v19 & 4) == 0)
    {
LABEL_14:
      if ((v19 & 8) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v20 = *(a2 + 120);
  *(a1 + 40) |= 1u;
  v21 = *(a1 + 8);
  v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
  if (v21)
  {
    v22 = *v22;
  }

  sub_194EA1C((a1 + 120), (v20 & 0xFFFFFFFFFFFFFFFELL), v22);
  if ((v19 & 2) != 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  if ((v19 & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_22:
  v26 = *(a2 + 136);
  *(a1 + 40) |= 4u;
  v27 = *(a1 + 8);
  v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
  if (v27)
  {
    v28 = *v28;
  }

  sub_194EA1C((a1 + 136), (v26 & 0xFFFFFFFFFFFFFFFELL), v28);
  if ((v19 & 8) != 0)
  {
LABEL_25:
    v29 = *(a2 + 144);
    *(a1 + 40) |= 8u;
    v30 = *(a1 + 8);
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v31 = *v31;
    }

    sub_194EA1C((a1 + 144), (v29 & 0xFFFFFFFFFFFFFFFELL), v31);
  }

LABEL_28:
  sub_225EA0C(a1 + 16, a2 + 16);
  v32 = *(a2 + 8);
  if (v32)
  {

    sub_1957EF4((a1 + 8), (v32 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_17D18B0(void *a1)
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

void sub_17D1924(void *a1)
{
  sub_17D18B0(a1);

  operator delete();
}

uint64_t *sub_17D195C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_17D196C(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_17D1A00(uint64_t a1)
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

std::string *sub_17D1A2C(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_17D1A60(void *a1)
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

void sub_17D1AE0(void *a1)
{
  sub_17D1A60(a1);

  operator delete();
}

unsigned __int8 *sub_17D1B18(unsigned __int8 *result)
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

char *sub_17D1B94(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_17D1D24(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_17D1E64(uint64_t a1)
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

BOOL sub_17D1F0C(uint64_t a1)
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

uint64_t sub_17D1F74(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_270DCD8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_17D1FE4(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17D2014(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_270DCD8;
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
    sub_193D2B0((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
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

void sub_17D2120(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_17D2170(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_193B0C4(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17D21F8(void *a1)
{
  sub_17D2170(a1);

  operator delete();
}

unsigned __int8 *sub_17D2230(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_17D1B18(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 64) = 0;
  *(v6 + 32) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_17D22BC(uint64_t a1, char *a2, int32x2_t *a3)
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
      *(a1 + 72) = v14 != 0;
      v5 = 1;
      goto LABEL_36;
    }

    v25 = sub_19587DC(v7, v14);
    v27 = v25;
    *(a1 + 72) = v26 != 0;
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
        v22 = sub_186069C(*(a1 + 48));
        v21 = sub_19593CC(a1 + 48, v22);
        v18 = v27;
      }

      v17 = sub_224562C(a3, v21, v18);
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
    if ((v8 - 8000) >> 6 > 0x7C)
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
      v13 = sub_19525AC((a1 + 16), v8, v7, &off_2783F50, (a1 + 8), a3);
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

char *sub_17D2524(uint64_t a1, char *a2, _DWORD *a3)
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
      v9 = *(v8 + 40);
      a2[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, a2 + 1);
      }

      else
      {
        v10 = a2 + 2;
      }

      a2 = sub_17D1D24(v8, v10, a3);
    }
  }

  if (*(a1 + 40))
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v11 = *(a1 + 72);
    *a2 = 16;
    a2[1] = v11;
    a2 += 2;
  }

  if (*(a1 + 26))
  {
    a2 = sub_1953428(a1 + 16, 1000, 2000, a2, a3);
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return a2;
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

  if (*a3 - a2 >= v15)
  {
    v17 = v15;
    memcpy(a2, v16, v15);
    a2 += v17;
    return a2;
  }

  return sub_1957130(a3, v16, v15, a2);
}

uint64_t sub_17D26C4(uint64_t a1)
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
      v9 = sub_17D1E64(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  result = v4 + 2 * (*(a1 + 40) & 1);
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

  *(a1 + 44) = result;
  return result;
}

void sub_17D2778(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_193D2B0((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 40))
  {
    v9 = *(a2 + 72);
    *(a1 + 40) |= 1u;
    *(a1 + 72) = v9;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_17D285C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {

    return sub_160938C(a1 + 48);
  }

  return result;
}

void *sub_17D28B8(void *a1)
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

void sub_17D292C(void *a1)
{
  sub_17D28B8(a1);

  operator delete();
}

uint64_t *sub_17D2964(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_17D2974(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_17D2A08(uint64_t a1)
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

std::string *sub_17D2A34(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_17D2A68(void *a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  a1[1] = v5;
  *a1 = off_270DDD8;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = 0;
  a1[8] = 0;
  a1[9] = 0;
  a1[7] = a2;
  return a1;
}

void sub_17D2AD8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17D2B08(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_270DDD8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 60) = 0;
  *(a1 + 44) = 0;
  *(a1 + 52) = 0;
  v6 = *(a2 + 48);
  if (v6)
  {
    sub_1959094((a1 + 48), v6);
    v7 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy(v7, *(a2 + 56), 8 * *(a2 + 48));
  }

  v8 = *(a2 + 8);
  if (v8)
  {
    sub_1957EF4(v4, (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

void sub_17D2BE8(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_17D2C34(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 6));
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17D2CB8(void *a1)
{
  sub_17D2C34(a1);

  operator delete();
}

unsigned __int8 *sub_17D2CF0(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  *(a1 + 48) = 0;
  if ((*(a1 + 40) & 7) != 0)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 32) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_17D2D58(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 == 29)
        {
          v22 = *v7;
          v13 = v7 + 4;
          v5 |= 2u;
          *(a1 + 72) = v22;
          goto LABEL_35;
        }
      }

      else if (v11 == 4 && v8 == 37)
      {
        v15 = *v7;
        v13 = v7 + 4;
        v5 |= 4u;
        *(a1 + 76) = v15;
        goto LABEL_35;
      }
    }

    else if (v11 == 1)
    {
      if (v8 == 8)
      {
        v16 = v7 - 1;
        while (1)
        {
          v27 = v16 + 1;
          v17 = v16[1];
          if (v17 < 0)
          {
            v18 = (v16[2] << 7) + v17;
            v17 = (v18 - 128);
            if (v16[2] < 0)
            {
              v16 = sub_19587DC((v16 + 1), (v18 - 128));
              v17 = v19;
            }

            else
            {
              v16 += 3;
            }
          }

          else
          {
            v16 += 2;
          }

          v27 = v16;
          v20 = *(a1 + 48);
          if (v20 == *(a1 + 52))
          {
            v21 = v20 + 1;
            sub_1959094((a1 + 48), v20 + 1);
            *(*(a1 + 56) + 8 * v20) = v17;
            v16 = v27;
          }

          else
          {
            *(*(a1 + 56) + 8 * v20) = v17;
            v21 = v20 + 1;
          }

          *(a1 + 48) = v21;
          if (!v16)
          {
            goto LABEL_53;
          }

          if (*a3 <= v16 || *v16 != 8)
          {
            goto LABEL_48;
          }
        }
      }

      if (v8 == 10)
      {
        v23 = sub_1958938((a1 + 48), v7, a3);
        goto LABEL_47;
      }
    }

    else if (v11 == 2 && v8 == 17)
    {
      v14 = *v7;
      v13 = v7 + 8;
      v5 |= 1u;
      *(a1 + 64) = v14;
LABEL_35:
      v27 = v13;
      goto LABEL_48;
    }

    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    if ((v8 - 8000) >> 6 > 0x7C)
    {
      v25 = *(a1 + 8);
      if (v25)
      {
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v26 = sub_11F1920((a1 + 8));
        v7 = v27;
      }

      v23 = sub_1952690(v8, v26, v7, a3);
    }

    else
    {
      v23 = sub_19525AC((a1 + 16), v8, v7, &off_2783FB8, (a1 + 8), a3);
    }

LABEL_47:
    v27 = v23;
    if (!v23)
    {
      goto LABEL_53;
    }

LABEL_48:
    if (sub_195ADC0(a3, &v27, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_53:
  v27 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v27;
}

char *sub_17D3014(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 48);
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

      v7 = *(*(a1 + 56) + 8 * i);
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

  v12 = *(a1 + 40);
  if (v12)
  {
    if (*a3 <= v8)
    {
      v8 = sub_225EB68(a3, v8);
    }

    v13 = *(a1 + 64);
    *v8 = 17;
    *(v8 + 1) = v13;
    v8 += 9;
    if ((v12 & 2) == 0)
    {
LABEL_15:
      if ((v12 & 4) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }
  }

  else if ((v12 & 2) == 0)
  {
    goto LABEL_15;
  }

  if (*a3 <= v8)
  {
    v8 = sub_225EB68(a3, v8);
  }

  v14 = *(a1 + 72);
  *v8 = 29;
  *(v8 + 1) = v14;
  v8 += 5;
  if ((v12 & 4) != 0)
  {
LABEL_23:
    if (*a3 <= v8)
    {
      v8 = sub_225EB68(a3, v8);
    }

    v15 = *(a1 + 76);
    *v8 = 37;
    *(v8 + 1) = v15;
    v8 += 5;
  }

LABEL_26:
  if (*(a1 + 26))
  {
    v8 = sub_1953428(a1 + 16, 1000, 2000, v8, a3);
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v8;
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

  if (*a3 - v8 >= v19)
  {
    v21 = v19;
    memcpy(v8, v20, v19);
    v8 += v21;
    return v8;
  }

  return sub_1957130(a3, v20, v19, v8);
}

uint64_t sub_17D3240(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = sub_1959F14((a1 + 48));
  v4 = *(a1 + 40);
  v5 = v3 + v2 + *(a1 + 48) + 9;
  if ((v4 & 1) == 0)
  {
    v5 = v3 + v2 + *(a1 + 48);
  }

  if ((v4 & 2) != 0)
  {
    v5 += 5;
  }

  if ((v4 & 4) != 0)
  {
    v5 += 5;
  }

  if ((v4 & 7) != 0)
  {
    result = v5;
  }

  else
  {
    result = v3 + v2 + *(a1 + 48);
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

  *(a1 + 44) = result;
  return result;
}

void sub_17D32D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = (a1 + 48);
    v6 = *(a1 + 48);
    sub_1959094((a1 + 48), v6 + v4);
    v7 = *(a1 + 56);
    *v5 += *(a2 + 48);
    memcpy((v7 + 8 * v6), *(a2 + 56), 8 * *(a2 + 48));
  }

  v8 = *(a2 + 40);
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      *(a1 + 64) = *(a2 + 64);
      if ((v8 & 2) == 0)
      {
LABEL_6:
        if ((v8 & 4) == 0)
        {
LABEL_8:
          *(a1 + 40) |= v8;
          goto LABEL_9;
        }

LABEL_7:
        *(a1 + 76) = *(a2 + 76);
        goto LABEL_8;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 72) = *(a2 + 72);
    if ((v8 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_17D33E8(void *a1)
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

void sub_17D345C(void *a1)
{
  sub_17D33E8(a1);

  operator delete();
}

uint64_t *sub_17D3494(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_17D34A4(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_17D3538(uint64_t a1)
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

std::string *sub_17D3564(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_17D3598(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_270DED8;
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

void sub_17D3614(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_17D3644(void *a1)
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

void sub_17D36B8(void *a1)
{
  sub_17D3644(a1);

  operator delete();
}

uint64_t sub_17D36F0(uint64_t a1)
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

char *sub_17D3708(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_17D3870(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_17D3998(uint64_t a1)
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

uint64_t sub_17D3A1C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_270DF58;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &qword_278E990;
  *(a1 + 80) = &qword_278E990;
  *(a1 + 88) = &qword_278E990;
  *(a1 + 96) = &qword_278E990;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return a1;
}

void sub_17D3AAC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17D3AE0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_270DF58;
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
    sub_13B326C((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
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
  *(a1 + 72) = &qword_278E990;
  v12 = *(a2 + 40);
  if (v12)
  {
    v13 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v13 = *v13;
    }

    sub_194EA1C((a1 + 72), (*(a2 + 72) & 0xFFFFFFFFFFFFFFFELL), v13);
    v12 = *(a2 + 40);
  }

  *(a1 + 80) = &qword_278E990;
  if ((v12 & 2) != 0)
  {
    v14 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v14 = *v14;
    }

    sub_194EA1C((a1 + 80), (*(a2 + 80) & 0xFFFFFFFFFFFFFFFELL), v14);
    v12 = *(a2 + 40);
  }

  *(a1 + 88) = &qword_278E990;
  if ((v12 & 4) != 0)
  {
    v15 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v15 = *v15;
    }

    sub_194EA1C((a1 + 88), (*(a2 + 88) & 0xFFFFFFFFFFFFFFFELL), v15);
    v12 = *(a2 + 40);
  }

  *(a1 + 96) = &qword_278E990;
  if ((v12 & 8) != 0)
  {
    v16 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 96), (*(a2 + 96) & 0xFFFFFFFFFFFFFFFELL), v16);
    v12 = *(a2 + 40);
  }

  if ((v12 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 104) = 0;
  if ((v12 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 112) = 0;
  v17 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v17;
  return a1;
}

void *sub_17D3DB8(void *a1)
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

  sub_17D3E50(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_13B31E8(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_17D3E50(uint64_t a1)
{
  v3 = *(a1 + 72);
  v2 = (a1 + 72);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  if (*(a1 + 88) != &qword_278E990)
  {
    sub_194E89C((a1 + 88));
  }

  result = (a1 + 96);
  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2784040)
  {
    v5 = *(a1 + 104);
    if (v5)
    {
      sub_1917370(v5);
      operator delete();
    }

    result = *(a1 + 112);
    if (result)
    {
      sub_17D3644(result);

      operator delete();
    }
  }

  return result;
}

void sub_17D3F30(void *a1)
{
  sub_17D3DB8(a1);

  operator delete();
}

uint64_t sub_17D3F68(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_16E72AC(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 40);
  if ((v6 & 0x3F) != 0)
  {
    if ((v6 & 1) == 0)
    {
      if ((v6 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_17:
      v8 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v8 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
        if ((v6 & 4) != 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
        if ((v6 & 4) != 0)
        {
          goto LABEL_21;
        }
      }

LABEL_9:
      if ((v6 & 8) == 0)
      {
        goto LABEL_10;
      }

LABEL_25:
      v10 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        *v10 = 0;
        *(v10 + 23) = 0;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_29;
        }
      }

LABEL_11:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    v7 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_21:
    v9 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v6 & 8) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v6 & 8) != 0)
      {
        goto LABEL_25;
      }
    }

LABEL_10:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_29:
    result = sub_17A82BC(*(a1 + 104));
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_32;
    }

LABEL_30:
    v11 = *(a1 + 112);
    v12 = *(v11 + 8);
    result = v11 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v12)
    {
      result = sub_1957EA8(result);
    }
  }

LABEL_32:
  if ((v6 & 0xC0) != 0)
  {
    *(a1 + 128) = 0;
    *(a1 + 120) = 0;
  }

  if ((v6 & 0x300) != 0)
  {
    *(a1 + 136) = 0;
    *(a1 + 132) = 0;
  }

  v14 = *(a1 + 8);
  v13 = a1 + 8;
  *(v13 + 32) = 0;
  if (v14)
  {

    return sub_1957EA8(v13);
  }

  return result;
}

uint64_t sub_17D411C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v47 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v47, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v47 + 1);
    v8 = **v47;
    if (**v47 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v47, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v47 + 2);
      }
    }

    *v47 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 6)
    {
      if (v8 >> 3 <= 2)
      {
        if (v11 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_87;
          }

          *(a1 + 40) |= 1u;
          v26 = *(a1 + 8);
          v24 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v24 = *v24;
          }

          v25 = (a1 + 72);
        }

        else
        {
          if (v11 != 2 || v8 != 18)
          {
            goto LABEL_87;
          }

          *(a1 + 40) |= 2u;
          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          v25 = (a1 + 80);
        }

LABEL_70:
        v35 = sub_194DB04(v25, v24);
        v21 = sub_1958890(v35, *v47, a3);
        goto LABEL_71;
      }

      if (v11 == 3)
      {
        if (v8 == 25)
        {
          v5 |= 0x40u;
          *(a1 + 120) = *v7;
          *v47 = v7 + 8;
          goto LABEL_72;
        }

        goto LABEL_87;
      }

      if (v11 == 5)
      {
        if (v8 != 42)
        {
          goto LABEL_87;
        }

        *(a1 + 40) |= 4u;
        v27 = *(a1 + 8);
        v24 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v24 = *v24;
        }

        v25 = (a1 + 88);
        goto LABEL_70;
      }

      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_87;
      }

      v16 = (v7 + 1);
      v15 = *v7;
      if (v15 < 0)
      {
        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if (v17 < 0)
        {
          *v47 = sub_19587DC(v7, v15);
          if (!*v47)
          {
            goto LABEL_107;
          }

          goto LABEL_28;
        }

        v16 = (v7 + 2);
      }

      *v47 = v16;
LABEL_28:
      if (v15 > 8)
      {
        sub_12E84C8();
      }

      else
      {
        *(a1 + 40) |= 0x80u;
        *(a1 + 128) = v15;
      }

      goto LABEL_72;
    }

    if (v8 >> 3 <= 9)
    {
      if (v11 == 7)
      {
        if (v8 == 58)
        {
          *(a1 + 40) |= 0x10u;
          v36 = *(a1 + 104);
          if (!v36)
          {
            v37 = *(a1 + 8);
            v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
            if (v37)
            {
              v38 = *v38;
            }

            v36 = sub_191BA60(v38);
            *(a1 + 104) = v36;
            v7 = *v47;
          }

          v21 = sub_2201310(a3, v36, v7);
          goto LABEL_71;
        }
      }

      else if (v11 == 8)
      {
        if (v8 == 66)
        {
          v28 = v7 - 1;
          while (1)
          {
            v29 = v28 + 1;
            *v47 = v28 + 1;
            v30 = *(a1 + 64);
            if (v30 && (v31 = *(a1 + 56), v31 < *v30))
            {
              *(a1 + 56) = v31 + 1;
              v32 = *&v30[2 * v31 + 2];
            }

            else
            {
              v33 = sub_16F5A54(*(a1 + 48));
              v32 = sub_19593CC(a1 + 48, v33);
              v29 = *v47;
            }

            v28 = sub_22002C0(a3, v32, v29);
            *v47 = v28;
            if (!v28)
            {
              goto LABEL_107;
            }

            if (*a3 <= v28 || *v28 != 66)
            {
              goto LABEL_72;
            }
          }
        }
      }

      else if (v11 == 9 && v8 == 72)
      {
        v13 = (v7 + 1);
        v12 = *v7;
        if (v12 < 0)
        {
          v14 = *v13;
          v12 = (v14 << 7) + v12 - 128;
          if (v14 < 0)
          {
            *v47 = sub_19587DC(v7, v12);
            if (!*v47)
            {
              goto LABEL_107;
            }

            goto LABEL_17;
          }

          v13 = (v7 + 2);
        }

        *v47 = v13;
LABEL_17:
        if (v12 > 5)
        {
          sub_13B6774();
        }

        else
        {
          *(a1 + 40) |= 0x100u;
          *(a1 + 132) = v12;
        }

        goto LABEL_72;
      }

      goto LABEL_87;
    }

    if (v11 != 10)
    {
      break;
    }

    if (v8 != 80)
    {
      goto LABEL_87;
    }

    v5 |= 0x200u;
    v40 = (v7 + 1);
    v39 = *v7;
    if ((v39 & 0x8000000000000000) == 0)
    {
      goto LABEL_86;
    }

    v41 = *v40;
    v39 = (v41 << 7) + v39 - 128;
    if ((v41 & 0x80000000) == 0)
    {
      v40 = (v7 + 2);
LABEL_86:
      *v47 = v40;
      *(a1 + 136) = v39 != 0;
      goto LABEL_72;
    }

    v45 = sub_19587DC(v7, v39);
    *v47 = v45;
    *(a1 + 136) = v46 != 0;
    if (!v45)
    {
      goto LABEL_107;
    }

LABEL_72:
    if (sub_195ADC0(a3, v47, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 11)
  {
    if (v8 != 90)
    {
      goto LABEL_87;
    }

    *(a1 + 40) |= 8u;
    v34 = *(a1 + 8);
    v24 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
    if (v34)
    {
      v24 = *v24;
    }

    v25 = (a1 + 96);
    goto LABEL_70;
  }

  if (v11 == 12 && v8 == 98)
  {
    *(a1 + 40) |= 0x20u;
    v18 = *(a1 + 112);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_18608E4(v20);
      *(a1 + 112) = v18;
      v7 = *v47;
    }

    v21 = sub_2245824(a3, v18, v7);
LABEL_71:
    *v47 = v21;
    if (!v21)
    {
      goto LABEL_107;
    }

    goto LABEL_72;
  }

LABEL_87:
  if (v8)
  {
    v42 = (v8 & 7) == 4;
  }

  else
  {
    v42 = 1;
  }

  if (!v42)
  {
    if ((v8 - 8000) >> 6 > 0x7C)
    {
      v43 = *(a1 + 8);
      if (v43)
      {
        v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v44 = sub_11F1920((a1 + 8));
        v7 = *v47;
      }

      v21 = sub_1952690(v8, v44, v7, a3);
    }

    else
    {
      v21 = sub_19525AC((a1 + 16), v8, v7, &off_2784040, (a1 + 8), a3);
    }

    goto LABEL_71;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_107:
  *v47 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v47;
}

char *sub_17D4668(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x40) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    v4 = sub_128AEEC(a3, 5, *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_9:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 120);
  *v4 = 25;
  *(v4 + 1) = v8;
  v4 += 9;
  if ((v6 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v6 & 0x80) == 0)
  {
LABEL_6:
    v7 = v4;
    goto LABEL_20;
  }

LABEL_13:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 128);
  *v4 = 48;
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

LABEL_20:
  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 104);
    *v7 = 58;
    v14 = *(v13 + 44);
    v7[1] = v14;
    if (v14 > 0x7F)
    {
      v15 = sub_19575D0(v14, v7 + 1);
    }

    else
    {
      v15 = v7 + 2;
    }

    v7 = sub_1917694(v13, v15, a3);
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v18 = *(*(a1 + 64) + 8 * i + 8);
      *v7 = 66;
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

      v7 = sub_16E74A8(v18, v20, a3);
    }
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v22 = *(a1 + 132);
    *v7 = 72;
    v7[1] = v22;
    if (v22 > 0x7F)
    {
      v7[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v7[2] = v22 >> 7;
      v21 = v7 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v7) = v7[2];
        do
        {
          *(v21 - 1) = v7 | 0x80;
          v7 = (v23 >> 7);
          *v21++ = v23 >> 7;
          v24 = v23 >> 14;
          v23 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v21 = v7 + 2;
    }
  }

  else
  {
    v21 = v7;
  }

  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v25 = *(a1 + 136);
    *v21 = 80;
    v21[1] = v25;
    v21 += 2;
    if ((v6 & 8) == 0)
    {
LABEL_46:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_52;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_46;
  }

  v21 = sub_128AEEC(a3, 11, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, v21);
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_58;
  }

LABEL_52:
  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v26 = *(a1 + 112);
  *v21 = 98;
  v27 = *(v26 + 20);
  v21[1] = v27;
  if (v27 > 0x7F)
  {
    v28 = sub_19575D0(v27, v21 + 1);
  }

  else
  {
    v28 = v21 + 2;
  }

  v21 = sub_17D3870(v26, v28, a3);
LABEL_58:
  if (*(a1 + 26))
  {
    v21 = sub_1953428(a1 + 16, 1000, 2000, v21, a3);
  }

  v29 = *(a1 + 8);
  if ((v29 & 1) == 0)
  {
    return v21;
  }

  v31 = v29 & 0xFFFFFFFFFFFFFFFCLL;
  v32 = *(v31 + 31);
  if (v32 < 0)
  {
    v33 = *(v31 + 8);
    v32 = *(v31 + 16);
  }

  else
  {
    v33 = (v31 + 8);
  }

  if (*a3 - v21 >= v32)
  {
    v34 = v32;
    memcpy(v21, v33, v32);
    v21 += v34;
    return v21;
  }

  return sub_1957130(a3, v33, v32, v21);
}

uint64_t sub_17D4AA8(uint64_t a1)
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
      v9 = sub_16E7590(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if (*(a1 + 40))
  {
    if (v10)
    {
      v17 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(v17 + 23);
      v19 = *(v17 + 8);
      if ((v18 & 0x80u) == 0)
      {
        v19 = v18;
      }

      v4 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v10 & 2) == 0)
      {
LABEL_10:
        if ((v10 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_32;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_10;
    }

    v20 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v21 = *(v20 + 23);
    v22 = *(v20 + 8);
    if ((v21 & 0x80u) == 0)
    {
      v22 = v21;
    }

    v4 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 4) == 0)
    {
LABEL_11:
      if ((v10 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_35;
    }

LABEL_32:
    v23 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(v23 + 23);
    v25 = *(v23 + 8);
    if ((v24 & 0x80u) == 0)
    {
      v25 = v24;
    }

    v4 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 8) == 0)
    {
LABEL_12:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_38;
    }

LABEL_35:
    v26 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    v27 = *(v26 + 23);
    v28 = *(v26 + 8);
    if ((v27 & 0x80u) == 0)
    {
      v28 = v27;
    }

    v4 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 0x10) == 0)
    {
LABEL_13:
      if ((v10 & 0x20) == 0)
      {
LABEL_15:
        if ((v10 & 0x40) != 0)
        {
          v4 += 9;
        }

        if ((v10 & 0x80) != 0)
        {
          v12 = *(a1 + 128);
          v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
          if (v12 >= 0)
          {
            v14 = v13;
          }

          else
          {
            v14 = 11;
          }

          v4 += v14;
        }

        goto LABEL_22;
      }

LABEL_14:
      v11 = sub_17D3998(*(a1 + 112));
      v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_15;
    }

LABEL_38:
    v29 = sub_1917844(*(a1 + 104));
    v4 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_22:
  if ((v10 & 0x300) != 0)
  {
    if ((v10 & 0x100) != 0)
    {
      v15 = *(a1 + 132);
      if (v15 < 0)
      {
        v16 = 11;
      }

      else
      {
        v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v4 += v16;
    }

    v4 += (v10 >> 8) & 2;
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

    v4 += v33;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_17D4D70(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13B326C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if (v9)
  {
    if (v9)
    {
      v11 = *(a2 + 72);
      *(a1 + 40) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      sub_194EA1C((a1 + 72), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_31;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    v14 = *(a2 + 80);
    *(a1 + 40) |= 2u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 80), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_34;
    }

LABEL_31:
    v17 = *(a2 + 88);
    *(a1 + 40) |= 4u;
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    sub_194EA1C((a1 + 88), (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_37;
    }

LABEL_34:
    v20 = *(a2 + 96);
    *(a1 + 40) |= 8u;
    v21 = *(a1 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    sub_194EA1C((a1 + 96), (v20 & 0xFFFFFFFFFFFFFFFELL), v22);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_45;
    }

LABEL_37:
    *(a1 + 40) |= 0x10u;
    v23 = *(a1 + 104);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_191BA60(v25);
      *(a1 + 104) = v23;
    }

    if (*(a2 + 104))
    {
      v26 = *(a2 + 104);
    }

    else
    {
      v26 = &off_278B870;
    }

    sub_17A8DBC(v23, v26);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_53;
    }

LABEL_45:
    *(a1 + 40) |= 0x20u;
    v27 = *(a1 + 112);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v27 = sub_18608E4(v29);
      *(a1 + 112) = v27;
    }

    if (*(a2 + 112))
    {
      v30 = *(a2 + 112);
    }

    else
    {
      v30 = &off_2784020;
    }

    sub_12B9D50(v27, v30);
    if ((v9 & 0x40) == 0)
    {
LABEL_12:
      if ((v9 & 0x80) == 0)
      {
LABEL_14:
        *(a1 + 40) |= v9;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 128) = *(a2 + 128);
      goto LABEL_14;
    }

LABEL_53:
    *(a1 + 120) = *(a2 + 120);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  if ((v9 & 0x300) != 0)
  {
    if ((v9 & 0x100) != 0)
    {
      *(a1 + 132) = *(a2 + 132);
    }

    if ((v9 & 0x200) != 0)
    {
      *(a1 + 136) = *(a2 + 136);
    }

    *(a1 + 40) |= v9;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_17D501C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 40) & 0x10) == 0)
    {
      return 1;
    }

    result = sub_17A8EF8(*(a1 + 104));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_17D5070(void *a1)
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

void sub_17D50E4(void *a1)
{
  sub_17D5070(a1);

  operator delete();
}

uint64_t sub_17D511C(uint64_t a1)
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

char *sub_17D5134(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_17D52B8(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

uint64_t sub_17D5398(uint64_t a1)
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

uint64_t sub_17D53E8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_270E058;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v5 = *(a2 + 16);
  }

  *(a1 + 24) = &qword_278E990;
  if (v5)
  {
    v7 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v7);
    v5 = *(a2 + 16);
  }

  *(a1 + 32) = &qword_278E990;
  if ((v5 & 2) != 0)
  {
    v8 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v8 = *v8;
    }

    sub_194EA1C((a1 + 32), (*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL), v8);
    v5 = *(a2 + 16);
  }

  *(a1 + 40) = &qword_278E990;
  if ((v5 & 4) != 0)
  {
    v9 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v9 = *v9;
    }

    sub_194EA1C((a1 + 40), (*(a2 + 40) & 0xFFFFFFFFFFFFFFFELL), v9);
    v5 = *(a2 + 16);
  }

  *(a1 + 48) = &qword_278E990;
  if ((v5 & 8) != 0)
  {
    v10 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v10 = *v10;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v10);
    v5 = *(a2 + 16);
  }

  *(a1 + 56) = &qword_278E990;
  if ((v5 & 0x10) != 0)
  {
    v11 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 56), (*(a2 + 56) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

void sub_17D555C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17D558C(uint64_t a1)
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

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_15:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17D5680(uint64_t a1)
{
  sub_17D558C(a1);

  operator delete();
}

uint64_t sub_17D56B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) == 0)
  {
    goto LABEL_27;
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
        goto LABEL_12;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_6:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_27;
    }

LABEL_24:
    v6 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
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

    goto LABEL_27;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_12:
  v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v3 + 23) < 0)
  {
    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *v3 = 0;
    *(v3 + 23) = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_16;
    }
  }

LABEL_5:
  if ((v1 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_20:
  v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v1 & 0x10) != 0)
  {
    goto LABEL_24;
  }

LABEL_27:
  v8 = *(a1 + 8);
  result = a1 + 8;
  *(result + 56) = 0;
  *(result + 8) = 0;
  if (v8)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_17D57DC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 3)
    {
      if (v11 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v19 = *(a1 + 8);
          v14 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v14 = *v14;
          }

          v15 = (a1 + 24);
          goto LABEL_42;
        }
      }

      else if (v11 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 2u;
          v21 = *(a1 + 8);
          v14 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v14 = *v14;
          }

          v15 = (a1 + 32);
          goto LABEL_42;
        }
      }

      else if (v11 == 3 && v8 == 26)
      {
        *(a1 + 16) |= 4u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 40);
        goto LABEL_42;
      }

      goto LABEL_46;
    }

    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_46;
      }

      *(a1 + 16) |= 8u;
      v20 = *(a1 + 8);
      v14 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v14 = *v14;
      }

      v15 = (a1 + 48);
LABEL_42:
      v23 = sub_194DB04(v15, v14);
      v24 = sub_1958890(v23, *v30, a3);
LABEL_43:
      *v30 = v24;
      if (!v24)
      {
        goto LABEL_58;
      }

      goto LABEL_44;
    }

    if (v11 == 5)
    {
      break;
    }

    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_46;
    }

    v5 |= 0x20u;
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
      *v30 = v17;
      *(a1 + 64) = v16 != 0;
      goto LABEL_44;
    }

    v28 = sub_19587DC(v7, v16);
    *v30 = v28;
    *(a1 + 64) = v29 != 0;
    if (!v28)
    {
      goto LABEL_58;
    }

LABEL_44:
    if (sub_195ADC0(a3, v30, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 42)
  {
    *(a1 + 16) |= 0x10u;
    v22 = *(a1 + 8);
    v14 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v14 = *v14;
    }

    v15 = (a1 + 56);
    goto LABEL_42;
  }

LABEL_46:
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
      v7 = *v30;
    }

    v24 = sub_1952690(v8, v27, v7, a3);
    goto LABEL_43;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_58:
  *v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v30;
}

char *sub_17D5AB0(uint64_t a1, char *__dst, void *a3)
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
      goto LABEL_16;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = sub_128AEEC(a3, 5, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 64);
  *v4 = 48;
  v4[1] = v7;
  v4 += 2;
LABEL_16:
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

uint64_t sub_17D5C48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_19;
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

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    v18 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(v18 + 23);
    v20 = *(v18 + 8);
    if ((v19 & 0x80u) == 0)
    {
      v20 = v19;
    }

    v2 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v15 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 23);
  v17 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v17 = v16;
  }

  v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 8) != 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  if ((v1 & 0x10) != 0)
  {
LABEL_15:
    v10 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_18:
  v3 = v2 + ((v1 >> 4) & 2);
LABEL_19:
  v13 = *(a1 + 8);
  if (v13)
  {
    v21 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v3 += v22;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_17D5E00(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) != 0)
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

      goto LABEL_23;
    }

LABEL_20:
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

      goto LABEL_26;
    }

LABEL_23:
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
LABEL_9:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_10;
      }

LABEL_8:
      v3[2].__r_.__value_.__s.__data_[16] = *(a2 + 64);
      goto LABEL_9;
    }

LABEL_26:
    v18 = *(a2 + 56);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
    v19 = v3->__r_.__value_.__l.__size_;
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    result = sub_194EA1C(&v3[2].__r_.__value_.__l.__size_, (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_17D5FB8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_270E0D8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = &qword_278E990;
  *(a1 + 56) = &qword_278E990;
  *(a1 + 64) = &qword_278E990;
  *(a1 + 72) = &qword_278E990;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  return a1;
}

void sub_17D6038(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17D6068(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_270E0D8;
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
    v7 = *(a2 + 40);
  }

  *(a1 + 64) = &qword_278E990;
  if ((v7 & 4) != 0)
  {
    v10 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v10 = *v10;
    }

    sub_194EA1C((a1 + 64), (*(a2 + 64) & 0xFFFFFFFFFFFFFFFELL), v10);
    v7 = *(a2 + 40);
  }

  *(a1 + 72) = &qword_278E990;
  if ((v7 & 8) != 0)
  {
    v11 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 72), (*(a2 + 72) & 0xFFFFFFFFFFFFFFFELL), v11);
    v7 = *(a2 + 40);
  }

  if ((v7 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  if ((v7 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 88) = 0;
  if ((v7 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

void *sub_17D62FC(void *a1)
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

  sub_17D6388(a1);
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

void ***sub_17D6388(uint64_t a1)
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

  if (a1 != &off_2784138)
  {
    v5 = *(a1 + 80);
    if (v5)
    {
      sub_17C497C(v5);
      operator delete();
    }

    v6 = *(a1 + 88);
    if (v6)
    {
      sub_17D558C(v6);
      operator delete();
    }

    result = *(a1 + 96);
    if (result)
    {
      sub_17F2ACC(result);

      operator delete();
    }
  }

  return result;
}

void sub_17D6488(void *a1)
{
  sub_17D62FC(a1);

  operator delete();
}

uint64_t sub_17D64C0(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if ((v3 & 0x7F) == 0)
  {
    goto LABEL_10;
  }

  if (v3)
  {
    v6 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_24:
    v8 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_28;
      }
    }

LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_32:
    result = sub_179A7D4(*(a1 + 80));
    if ((v3 & 0x20) == 0)
    {
LABEL_8:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_33;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_20:
  v7 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_24;
    }
  }

LABEL_5:
  if ((v3 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_28:
  v9 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_32;
    }
  }

LABEL_7:
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_33:
  result = sub_17D56B8(*(a1 + 88));
  if ((v3 & 0x40) != 0)
  {
LABEL_9:
    result = sub_17D6634(*(a1 + 96));
  }

LABEL_10:
  *(a1 + 104) = 0;
  if ((v3 & 0x3F00) != 0)
  {
    *(a1 + 112) = 0;
    *(a1 + 105) = 0;
  }

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 32) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_17D6634(uint64_t a1)
{
  sub_1951124((a1 + 16));
  result = sub_12A41D0(a1 + 48);
  v3 = *(a1 + 40);
  if ((v3 & 0xF) != 0)
  {
    if ((v3 & 1) == 0)
    {
      if ((v3 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v5 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v5 + 23) < 0)
      {
        **v5 = 0;
        *(v5 + 8) = 0;
        if ((v3 & 4) != 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *v5 = 0;
        *(v5 + 23) = 0;
        if ((v3 & 4) != 0)
        {
          goto LABEL_15;
        }
      }

LABEL_5:
      if ((v3 & 8) == 0)
      {
        goto LABEL_22;
      }

LABEL_19:
      v7 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
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

      goto LABEL_22;
    }

    v4 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_15:
    v6 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 8) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 8) == 0)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_19;
  }

LABEL_22:
  v9 = *(a1 + 8);
  v8 = a1 + 8;
  *(v8 + 32) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

uint64_t sub_17D6768(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v61 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v61, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v61 + 1);
    v8 = **v61;
    if (**v61 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v61, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v61 + 2);
      }
    }

    *v61 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_78;
        }

        *(a1 + 40) |= 1u;
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v13 = (a1 + 48);
        goto LABEL_48;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_78;
        }

        *(a1 + 40) |= 2u;
        v29 = *(a1 + 8);
        v12 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v12 = *v12;
        }

        v13 = (a1 + 56);
        goto LABEL_48;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_78;
        }

        *(a1 + 40) |= 4u;
        v24 = *(a1 + 8);
        v12 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v12 = *v12;
        }

        v13 = (a1 + 64);
        goto LABEL_48;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_78;
        }

        *(a1 + 40) |= 8u;
        v25 = *(a1 + 8);
        v12 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v12 = *v12;
        }

        v13 = (a1 + 72);
LABEL_48:
        v30 = sub_194DB04(v13, v12);
        v17 = sub_1958890(v30, *v61, a3);
        goto LABEL_49;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_78;
        }

        *(a1 + 40) |= 0x10u;
        v18 = *(a1 + 80);
        if (!v18)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v18 = sub_185F924(v20);
          *(a1 + 80) = v18;
          v7 = *v61;
        }

        v17 = sub_22315E8(a3, v18, v7);
        goto LABEL_49;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_78;
        }

        v5 |= 0x80u;
        v32 = (v7 + 1);
        v31 = *v7;
        if ((v31 & 0x8000000000000000) == 0)
        {
          goto LABEL_56;
        }

        v33 = *v32;
        v31 = (v33 << 7) + v31 - 128;
        if (v33 < 0)
        {
          v53 = sub_19587DC(v7, v31);
          *v61 = v53;
          *(a1 + 104) = v54 != 0;
          if (!v53)
          {
            goto LABEL_102;
          }
        }

        else
        {
          v32 = (v7 + 2);
LABEL_56:
          *v61 = v32;
          *(a1 + 104) = v31 != 0;
        }

        goto LABEL_50;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_78;
        }

        v5 |= 0x100u;
        v38 = (v7 + 1);
        v37 = *v7;
        if ((v37 & 0x8000000000000000) == 0)
        {
          goto LABEL_66;
        }

        v39 = *v38;
        v37 = (v39 << 7) + v37 - 128;
        if (v39 < 0)
        {
          v57 = sub_19587DC(v7, v37);
          *v61 = v57;
          *(a1 + 105) = v58 != 0;
          if (!v57)
          {
            goto LABEL_102;
          }
        }

        else
        {
          v38 = (v7 + 2);
LABEL_66:
          *v61 = v38;
          *(a1 + 105) = v37 != 0;
        }

        goto LABEL_50;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_78;
        }

        v5 |= 0x200u;
        v27 = (v7 + 1);
        v26 = *v7;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_43;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if (v28 < 0)
        {
          v51 = sub_19587DC(v7, v26);
          *v61 = v51;
          *(a1 + 106) = v52 != 0;
          if (!v51)
          {
            goto LABEL_102;
          }
        }

        else
        {
          v27 = (v7 + 2);
LABEL_43:
          *v61 = v27;
          *(a1 + 106) = v26 != 0;
        }

        goto LABEL_50;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_78;
        }

        v5 |= 0x400u;
        v44 = (v7 + 1);
        v43 = *v7;
        if ((v43 & 0x8000000000000000) == 0)
        {
          goto LABEL_77;
        }

        v45 = *v44;
        v43 = (v45 << 7) + v43 - 128;
        if (v45 < 0)
        {
          v59 = sub_19587DC(v7, v43);
          *v61 = v59;
          *(a1 + 107) = v60 != 0;
          if (!v59)
          {
            goto LABEL_102;
          }
        }

        else
        {
          v44 = (v7 + 2);
LABEL_77:
          *v61 = v44;
          *(a1 + 107) = v43 != 0;
        }

        goto LABEL_50;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_78;
        }

        v5 |= 0x800u;
        v22 = (v7 + 1);
        v21 = *v7;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v23 = *v22;
        v21 = (v23 << 7) + v21 - 128;
        if (v23 < 0)
        {
          v49 = sub_19587DC(v7, v21);
          *v61 = v49;
          *(a1 + 108) = v50 != 0;
          if (!v49)
          {
            goto LABEL_102;
          }
        }

        else
        {
          v22 = (v7 + 2);
LABEL_30:
          *v61 = v22;
          *(a1 + 108) = v21 != 0;
        }

        goto LABEL_50;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_78;
        }

        *(a1 + 40) |= 0x20u;
        v40 = *(a1 + 88);
        if (!v40)
        {
          v41 = *(a1 + 8);
          v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
          if (v41)
          {
            v42 = *v42;
          }

          v40 = sub_1860A38(v42);
          *(a1 + 88) = v40;
          v7 = *v61;
        }

        v17 = sub_22458B4(a3, v40, v7);
        goto LABEL_49;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_78;
        }

        *(a1 + 40) |= 0x40u;
        v14 = *(a1 + 96);
        if (!v14)
        {
          v15 = *(a1 + 8);
          v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
          if (v15)
          {
            v16 = *v16;
          }

          v14 = sub_186280C(v16);
          *(a1 + 96) = v14;
          v7 = *v61;
        }

        v17 = sub_2245944(a3, v14, v7);
        goto LABEL_49;
      case 0xDu:
        if (v8 != 105)
        {
          goto LABEL_78;
        }

        v5 |= 0x2000u;
        *(a1 + 112) = *v7;
        *v61 = v7 + 8;
        goto LABEL_50;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_78;
        }

        v5 |= 0x1000u;
        v35 = (v7 + 1);
        v34 = *v7;
        if ((v34 & 0x8000000000000000) == 0)
        {
          goto LABEL_61;
        }

        v36 = *v35;
        v34 = (v36 << 7) + v34 - 128;
        if (v36 < 0)
        {
          v55 = sub_19587DC(v7, v34);
          *v61 = v55;
          *(a1 + 109) = v56 != 0;
          if (!v55)
          {
            goto LABEL_102;
          }
        }

        else
        {
          v35 = (v7 + 2);
LABEL_61:
          *v61 = v35;
          *(a1 + 109) = v34 != 0;
        }

        goto LABEL_50;
      default:
LABEL_78:
        if (v8)
        {
          v46 = (v8 & 7) == 4;
        }

        else
        {
          v46 = 1;
        }

        if (!v46)
        {
          if ((v8 - 8000) >> 6 > 0x7C)
          {
            v47 = *(a1 + 8);
            if (v47)
            {
              v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v48 = sub_11F1920((a1 + 8));
              v7 = *v61;
            }

            v17 = sub_1952690(v8, v48, v7, a3);
          }

          else
          {
            v17 = sub_19525AC((a1 + 16), v8, v7, &off_2784138, (a1 + 8), a3);
          }

LABEL_49:
          *v61 = v17;
          if (!v17)
          {
            goto LABEL_102;
          }

LABEL_50:
          if (sub_195ADC0(a3, v61, a3[11].i32[1]))
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
LABEL_102:
          *v61 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return *v61;
    }
  }
}

char *sub_17D6DA4(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v4 = sub_128AEEC(a3, 3, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4 = sub_128AEEC(a3, 4, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_20:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 80);
  *v4 = 42;
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

  v4 = sub_17C4C84(v7, v9, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_7:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_26:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 104);
  *v4 = 48;
  v4[1] = v10;
  v4 += 2;
  if ((v6 & 0x100) == 0)
  {
LABEL_8:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_29:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 105);
  *v4 = 56;
  v4[1] = v11;
  v4 += 2;
  if ((v6 & 0x200) == 0)
  {
LABEL_9:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_32:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v12 = *(a1 + 106);
  *v4 = 64;
  v4[1] = v12;
  v4 += 2;
  if ((v6 & 0x400) == 0)
  {
LABEL_10:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_35:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 107);
  *v4 = 72;
  v4[1] = v13;
  v4 += 2;
  if ((v6 & 0x800) == 0)
  {
LABEL_11:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_38:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 108);
  *v4 = 80;
  v4[1] = v14;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_12:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_47;
  }

LABEL_41:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v15 = *(a1 + 88);
  *v4 = 90;
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

  v4 = sub_17D5AB0(v15, v17, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_13:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_53;
  }

LABEL_47:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v18 = *(a1 + 96);
  *v4 = 98;
  v19 = *(v18 + 44);
  v4[1] = v19;
  if (v19 > 0x7F)
  {
    v20 = sub_19575D0(v19, v4 + 1);
  }

  else
  {
    v20 = v4 + 2;
  }

  v4 = sub_17F2F28(v18, v20, a3);
  if ((v6 & 0x2000) == 0)
  {
LABEL_14:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

LABEL_53:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v21 = *(a1 + 112);
  *v4 = 105;
  *(v4 + 1) = v21;
  v4 += 9;
  if ((v6 & 0x1000) != 0)
  {
LABEL_56:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v22 = *(a1 + 109);
    *v4 = 112;
    v4[1] = v22;
    v4 += 2;
  }

LABEL_59:
  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 1000, 2000, v4, a3);
  }

  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v4;
  }

  v25 = v23 & 0xFFFFFFFFFFFFFFFCLL;
  v26 = *(v25 + 31);
  if (v26 < 0)
  {
    v27 = *(v25 + 8);
    v26 = *(v25 + 16);
  }

  else
  {
    v27 = (v25 + 8);
  }

  if (*a3 - v4 >= v26)
  {
    v28 = v26;
    memcpy(v4, v27, v26);
    v4 += v28;
    return v4;
  }

  return sub_1957130(a3, v27, v26, v4);
}

uint64_t sub_17D71E8(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = v2;
  v4 = *(a1 + 40);
  if (*(a1 + 40))
  {
    if (v4)
    {
      v10 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v11 = *(v10 + 23);
      v12 = *(v10 + 8);
      if ((v11 & 0x80u) == 0)
      {
        v12 = v11;
      }

      v3 = v2 + v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_23;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v13 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_26;
    }

LABEL_23:
    v16 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    v17 = *(v16 + 23);
    v18 = *(v16 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v18 = v17;
    }

    v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_29;
    }

LABEL_26:
    v19 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v20 = *(v19 + 23);
    v21 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v21 = v20;
    }

    v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

LABEL_29:
    v22 = sub_17C4E0C(*(a1 + 80));
    v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
LABEL_10:
        v3 += (v4 >> 6) & 2;
        goto LABEL_11;
      }

LABEL_9:
      v5 = sub_17F3130(*(a1 + 96));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_10;
    }

LABEL_30:
    v23 = sub_17D5C48(*(a1 + 88));
    v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
  if ((v4 & 0x3F00) != 0)
  {
    v6.i64[0] = 0x200000002;
    v6.i64[1] = 0x200000002;
    v7 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v4), xmmword_232B880), v6));
    if ((v4 & 0x2000) != 0)
    {
      v3 += v7 + ((v4 >> 11) & 2) + 9;
    }

    else
    {
      v3 += v7 + ((v4 >> 11) & 2);
    }
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v24 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v25 < 0)
    {
      v25 = *(v24 + 16);
    }

    v3 += v25;
  }

  *(a1 + 44) = v3;
  return v3;
}

void sub_17D7460(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
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

        goto LABEL_31;
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

      goto LABEL_34;
    }

LABEL_31:
    v12 = *(a2 + 64);
    *(a1 + 40) |= 4u;
    v13 = *(a1 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    sub_194EA1C((a1 + 64), (v12 & 0xFFFFFFFFFFFFFFFELL), v14);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_37;
    }

LABEL_34:
    v15 = *(a2 + 72);
    *(a1 + 40) |= 8u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    sub_194EA1C((a1 + 72), (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_45;
    }

LABEL_37:
    *(a1 + 40) |= 0x10u;
    v18 = *(a1 + 80);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_185F924(v20);
      *(a1 + 80) = v18;
    }

    if (*(a2 + 80))
    {
      v21 = *(a2 + 80);
    }

    else
    {
      v21 = &off_27838B0;
    }

    sub_179AFF4(v18, v21);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_53;
    }

LABEL_45:
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

      v22 = sub_1860A38(v24);
      *(a1 + 88) = v22;
    }

    if (*(a2 + 88))
    {
      v25 = *(a2 + 88);
    }

    else
    {
      v25 = &off_27840F0;
    }

    sub_17D5E00(v22, v25);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        *(a1 + 40) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      *(a1 + 104) = *(a2 + 104);
      goto LABEL_11;
    }

LABEL_53:
    *(a1 + 40) |= 0x40u;
    v26 = *(a1 + 96);
    if (!v26)
    {
      v27 = *(a1 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      v26 = sub_186280C(v28);
      *(a1 + 96) = v26;
    }

    if (*(a2 + 96))
    {
      v29 = *(a2 + 96);
    }

    else
    {
      v29 = &off_2784D98;
    }

    sub_17D7738(v26, v29);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x3F00) == 0)
  {
    goto LABEL_21;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 105) = *(a2 + 105);
    if ((v4 & 0x200) == 0)
    {
LABEL_15:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_64;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  *(a1 + 106) = *(a2 + 106);
  if ((v4 & 0x400) == 0)
  {
LABEL_16:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(a1 + 107) = *(a2 + 107);
  if ((v4 & 0x800) == 0)
  {
LABEL_17:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

LABEL_66:
    *(a1 + 109) = *(a2 + 109);
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_65:
  *(a1 + 108) = *(a2 + 108);
  if ((v4 & 0x1000) != 0)
  {
    goto LABEL_66;
  }

LABEL_18:
  if ((v4 & 0x2000) != 0)
  {
LABEL_19:
    *(a1 + 112) = *(a2 + 112);
  }

LABEL_20:
  *(a1 + 40) |= v4;
LABEL_21:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_17D7738(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1201B48(a1 + 48, v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 0xF) == 0)
  {
    goto LABEL_22;
  }

  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v13 = *(a2 + 80);
    *(a1 + 40) |= 2u;
    v14 = *(a1 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    sub_194EA1C((a1 + 80), (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v10 = *(a2 + 72);
  *(a1 + 40) |= 1u;
  v11 = *(a1 + 8);
  v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
  if (v11)
  {
    v12 = *v12;
  }

  sub_194EA1C((a1 + 72), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
  if ((v9 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((v9 & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_16:
  v16 = *(a2 + 88);
  *(a1 + 40) |= 4u;
  v17 = *(a1 + 8);
  v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
  if (v17)
  {
    v18 = *v18;
  }

  sub_194EA1C((a1 + 88), (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
  if ((v9 & 8) != 0)
  {
LABEL_19:
    v19 = *(a2 + 96);
    *(a1 + 40) |= 8u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    sub_194EA1C((a1 + 96), (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
  }

LABEL_22:
  sub_225EA0C(a1 + 16, a2 + 16);
  v22 = *(a2 + 8);
  if (v22)
  {

    sub_1957EF4((a1 + 8), (v22 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_17D78EC(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if ((v3 & 0x10) != 0)
    {
      result = sub_195228C(*(a1 + 80) + 16);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x40) == 0)
    {
      return 1;
    }

    result = sub_195228C(*(a1 + 96) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_17D7964(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_270E158;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = &qword_278E990;
  *(a1 + 104) = 0;
  return a1;
}

void sub_17D79E8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17D7A18(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_270E158;
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
    sub_13B326C((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
    v9 = *(a1 + 56) + v6;
    *(a1 + 56) = v9;
    v10 = *(a1 + 64);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v11 = *(a2 + 80);
  if (v11)
  {
    v12 = *(a2 + 88);
    v13 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_166F898((a1 + 72), v13, (v12 + 8), v11, **(a1 + 88) - *(a1 + 80));
    v14 = *(a1 + 80) + v11;
    *(a1 + 80) = v14;
    v15 = *(a1 + 88);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  v16 = *(a2 + 8);
  if (v16)
  {
    sub_1957EF4(v4, (v16 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  *(a1 + 96) = &qword_278E990;
  if (*(a2 + 40))
  {
    v17 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v17 = *v17;
    }

    sub_194EA1C((a1 + 96), (*(a2 + 96) & 0xFFFFFFFFFFFFFFFELL), v17);
  }

  *(a1 + 104) = *(a2 + 104);
  return a1;
}

void sub_17D7BCC(_Unwind_Exception *a1)
{
  sub_13B31E8(v1 + 6);
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17D7C30(uint64_t a1)
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

  v5 = (a1 + 96);
  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_166F360((a1 + 72));
  sub_13B31E8((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17D7CF0(uint64_t a1)
{
  sub_17D7C30(a1);

  operator delete();
}

uint64_t sub_17D7D28(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_16E72AC(v5);
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
      result = sub_17D64C0(v8);
      --v6;
    }

    while (v6);
    *(a1 + 80) = 0;
  }

  if (*(a1 + 40))
  {
    v9 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
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

  v11 = *(a1 + 8);
  v10 = a1 + 8;
  *(v10 + 96) = 0;
  *(v10 + 32) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_17D7E0C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v36 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v36, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v36 + 1);
    v8 = **v36;
    if (**v36 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v36, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v36 + 2);
      }
    }

    *v36 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 18)
        {
          v13 = v7 - 1;
          while (1)
          {
            v14 = v13 + 1;
            *v36 = v13 + 1;
            v15 = *(a1 + 64);
            if (v15 && (v16 = *(a1 + 56), v16 < *v15))
            {
              *(a1 + 56) = v16 + 1;
              v17 = *&v15[2 * v16 + 2];
            }

            else
            {
              v18 = sub_16F5A54(*(a1 + 48));
              v17 = sub_19593CC(a1 + 48, v18);
              v14 = *v36;
            }

            v13 = sub_22002C0(a3, v17, v14);
            *v36 = v13;
            if (!v13)
            {
              goto LABEL_63;
            }

            if (*a3 <= v13 || *v13 != 18)
            {
              goto LABEL_56;
            }
          }
        }

        goto LABEL_42;
      }

      if (v8 != 10)
      {
        goto LABEL_42;
      }

      *(a1 + 40) |= 1u;
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v23 = sub_194DB04((a1 + 96), v22);
      v24 = sub_1958890(v23, *v36, a3);
LABEL_51:
      *v36 = v24;
      if (!v24)
      {
        goto LABEL_63;
      }

      goto LABEL_56;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 != 4 || v8 != 32)
    {
      goto LABEL_42;
    }

    v5 |= 2u;
    LODWORD(v19) = *v7;
    if ((v19 & 0x80000000) == 0)
    {
      v20 = v7 + 1;
LABEL_55:
      *v36 = v20;
      *(a1 + 104) = v19;
      goto LABEL_56;
    }

    v19 = (*(v7 + 1) << 7) + v19 - 128;
    if ((*(v7 + 1) & 0x80000000) == 0)
    {
      v20 = v7 + 2;
      goto LABEL_55;
    }

    v34 = sub_19587DC(v7, v19);
    *v36 = v34;
    *(a1 + 104) = v35;
    if (!v34)
    {
      goto LABEL_63;
    }

LABEL_56:
    if (sub_195ADC0(a3, v36, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    v25 = v7 - 1;
    while (1)
    {
      v26 = v25 + 1;
      *v36 = v25 + 1;
      v27 = *(a1 + 88);
      if (v27 && (v28 = *(a1 + 80), v28 < *v27))
      {
        *(a1 + 80) = v28 + 1;
        v29 = *&v27[2 * v28 + 2];
      }

      else
      {
        v30 = sub_1860AC8(*(a1 + 72));
        v29 = sub_19593CC(a1 + 72, v30);
        v26 = *v36;
      }

      v25 = sub_222F330(a3, v29, v26);
      *v36 = v25;
      if (!v25)
      {
        goto LABEL_63;
      }

      if (*a3 <= v25 || *v25 != 26)
      {
        goto LABEL_56;
      }
    }
  }

LABEL_42:
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
    if ((v8 - 8000) >> 6 > 0x7C)
    {
      v32 = *(a1 + 8);
      if (v32)
      {
        v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v33 = sub_11F1920((a1 + 8));
        v7 = *v36;
      }

      v24 = sub_1952690(v8, v33, v7, a3);
    }

    else
    {
      v24 = sub_19525AC((a1 + 16), v8, v7, &off_27841B0, (a1 + 8), a3);
    }

    goto LABEL_51;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_63:
  *v36 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v36;
}

char *sub_17D814C(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, a2);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v9 = *(*(a1 + 64) + 8 * i + 8);
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

      v4 = sub_16E74A8(v9, v11, a3);
    }
  }

  v12 = *(a1 + 80);
  if (v12)
  {
    for (j = 0; j != v12; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v14 = *(*(a1 + 88) + 8 * j + 8);
      *v4 = 26;
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

      v4 = sub_17D6DA4(v14, v16, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v18 = *(a1 + 104);
    *v4 = 32;
    v4[1] = v18;
    if (v18 > 0x7F)
    {
      v4[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v4[2] = v18 >> 7;
      v17 = v4 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v20) = v4[2];
        do
        {
          *(v17 - 1) = v20 | 0x80;
          v20 = v19 >> 7;
          *v17++ = v19 >> 7;
          v21 = v19 >> 14;
          v19 >>= 7;
        }

        while (v21);
      }
    }

    else
    {
      v17 = v4 + 2;
    }
  }

  else
  {
    v17 = v4;
  }

  if (*(a1 + 26))
  {
    v17 = sub_1953428(a1 + 16, 1000, 2000, v17, a3);
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v17;
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

  if (*a3 - v17 >= v25)
  {
    v27 = v25;
    memcpy(v17, v26, v25);
    v17 += v27;
    return v17;
  }

  return sub_1957130(a3, v26, v25, v17);
}