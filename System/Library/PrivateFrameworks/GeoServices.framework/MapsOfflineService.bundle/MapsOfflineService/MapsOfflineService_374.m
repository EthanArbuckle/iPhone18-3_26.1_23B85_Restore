char *sub_154AD9C(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 48);
    *v4 = 10;
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
      *v4 = 18;
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

      v4 = sub_16EF7E0(v12, v14, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v15 = *(a1 + 56);
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

    v4 = sub_16E5FE0(v15, v17, a3);
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v21)
  {
    v23 = v21;
    memcpy(v4, v22, v21);
    v4 += v23;
    return v4;
  }

  return sub_1957130(a3, v22, v21, v4);
}

uint64_t sub_154AFA8(uint64_t a1)
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
      v7 = sub_16EFD54(v6);
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
      v9 = sub_16E51F0(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = sub_16E62F4(*(a1 + 56));
      v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

void sub_154B0BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13EC494((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

        v10 = sub_16F5828(v12);
        *(a1 + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_277E5E8;
      }

      sub_16E527C(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
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

        sub_16F58FC(v16);
        *(a1 + 56) = v14;
      }

      if (*(a2 + 56))
      {
        v17 = *(a2 + 56);
      }

      else
      {
        v17 = &off_277E650;
      }

      sub_16E645C(v14, v17);
    }
  }

  v18 = *(a2 + 8);
  if (v18)
  {

    sub_1957EF4((a1 + 8), (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_154B21C(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_16F0144(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    result = sub_16E5370(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 2) == 0)
  {
    return 1;
  }

  result = sub_16E6614(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_154B2A4(void *a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  a1[1] = v4;
  *a1 = off_26ED540;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = 0;
  return a1;
}

void sub_154B308(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_154B338(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a1 + 16;
  *a1 = off_26ED540;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v4, a2 + 16);
  if (*(a2 + 40))
  {
    operator new();
  }

  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_154B464(uint64_t a1)
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

  if (a1 != &off_2776F10 && *(a1 + 48))
  {
    sub_16E8374();
    operator delete();
  }

  if (*(a1 + 8))
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_154B524(uint64_t a1)
{
  sub_154B464(a1);

  operator delete();
}

uint64_t sub_154B55C(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  if (*(a1 + 40))
  {
    result = sub_16E48B0(*(a1 + 48));
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

char *sub_154B5C0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v17 = a2;
  if (sub_195ADC0(a3, &v17, a3[11].i32[1]))
  {
    return v17;
  }

  while (1)
  {
    v5 = v17 + 1;
    v6 = *v17;
    if (*v17 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        v5 = sub_1958824(v17, v7 - 128);
        v6 = v8;
      }

      else
      {
        v5 = v17 + 2;
      }
    }

    v17 = v5;
    if (v6 != 10)
    {
      break;
    }

    *(a1 + 40) |= 1u;
    v11 = *(a1 + 48);
    if (!v11)
    {
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_16F5BD8(v13);
      *(a1 + 48) = v11;
      v5 = v17;
    }

    v10 = sub_21F7188(a3, v11, v5);
LABEL_21:
    v17 = v10;
    if (!v10)
    {
      return 0;
    }

    if (sub_195ADC0(a3, &v17, a3[11].i32[1]))
    {
      return v17;
    }
  }

  if (v6)
  {
    v9 = (v6 & 7) == 4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    if (v6 - 800 > 0x31F)
    {
      v14 = *(a1 + 8);
      if (v14)
      {
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v15 = sub_11F1920((a1 + 8));
        v5 = v17;
      }

      v10 = sub_1952690(v6, v15, v5, a3);
    }

    else
    {
      v10 = sub_19525AC((a1 + 16), v6, v5, &off_2776F10, (a1 + 8), a3);
    }

    goto LABEL_21;
  }

  if (v5)
  {
    a3[10].i32[0] = v6 - 1;
    return v17;
  }

  return 0;
}

char *sub_154B744(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  if (*(a1 + 40))
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 48);
    *v4 = 10;
    v7 = *(v6 + 44);
    v4[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, v4 + 1);
    }

    else
    {
      v8 = v4 + 2;
    }

    v4 = sub_16E886C(v6, v8, a3);
  }

  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 100, 200, v4, a3);
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

uint64_t sub_154B874(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  if (*(a1 + 40))
  {
    v3 = sub_16E8DA4(*(a1 + 48));
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

  *(a1 + 44) = v2;
  return v2;
}

void sub_154B900(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v4 = *(a2 + 48);
    *(a1 + 40) |= 1u;
    v5 = *(a1 + 48);
    if (!v5)
    {
      v6 = *(a1 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      v5 = sub_16F5BD8(v7);
      *(a1 + 48) = v5;
      v4 = *(a2 + 48);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_277E738;
    }

    sub_16E4964(v5, v8);
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_154B9B4(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      return 1;
    }

    result = sub_16E4B4C(*(a1 + 48));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_154BA08(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26ED5C0;
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

void sub_154BA84(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_154BAB4(void *a1)
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

void sub_154BB28(void *a1)
{
  sub_154BAB4(a1);

  operator delete();
}

char *sub_154BB60(uint64_t a1, char *a2, int32x2_t *a3)
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
      *(a1 + 32) = v15;
      goto LABEL_29;
    }

    v21 = sub_19587DC(v7, v15);
    v25 = v21;
    *(a1 + 32) = v22;
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
      *(a1 + 24) = v18;
      goto LABEL_29;
    }

    v23 = sub_19587DC(v7, v18);
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

char *sub_154BD44(uint64_t a1, char *__dst, _DWORD *a3)
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

unint64_t sub_154BEF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_8;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
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
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

uint64_t sub_154BFA4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26ED640;
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

void sub_154C020(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_154C050(void *a1)
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

void sub_154C0C4(void *a1)
{
  sub_154C050(a1);

  operator delete();
}

char *sub_154C0FC(uint64_t a1, char *a2, int32x2_t *a3)
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
      *(a1 + 32) = v15;
      goto LABEL_29;
    }

    v21 = sub_19587DC(v7, v15);
    v25 = v21;
    *(a1 + 32) = v22;
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
      *(a1 + 24) = v18;
      goto LABEL_29;
    }

    v23 = sub_19587DC(v7, v18);
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

char *sub_154C2E0(uint64_t a1, char *__dst, _DWORD *a3)
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

unint64_t sub_154C490(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_8;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
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
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

uint64_t sub_154C540(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26ED6C0;
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

void sub_154C5BC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_154C5EC(void *a1)
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

void sub_154C660(void *a1)
{
  sub_154C5EC(a1);

  operator delete();
}

char *sub_154C698(uint64_t a1, char *a2, int32x2_t *a3)
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

      v5 |= 4u;
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
        v36 = v23;
        *(a1 + 26) = v22 != 0;
        goto LABEL_42;
      }

      v34 = sub_19587DC(v7, v22);
      v36 = v34;
      *(a1 + 26) = v35 != 0;
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

      v5 |= 8u;
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
        v36 = v17;
        *(a1 + 27) = v16 != 0;
        goto LABEL_42;
      }

      v28 = sub_19587DC(v7, v16);
      v36 = v28;
      *(a1 + 27) = v29 != 0;
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
      v36 = v20;
      *(a1 + 24) = v19 != 0;
      goto LABEL_42;
    }

    v32 = sub_19587DC(v7, v19);
    v36 = v32;
    *(a1 + 24) = v33 != 0;
    if (!v32)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
  }

  if (v11 == 2 && v8 == 16)
  {
    v5 |= 2u;
    v14 = v7 + 1;
    v13 = *v7;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_17:
      v36 = v14;
      *(a1 + 25) = v13 != 0;
      goto LABEL_42;
    }

    v30 = sub_19587DC(v7, v13);
    v36 = v30;
    *(a1 + 25) = v31 != 0;
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

char *sub_154C98C(uint64_t a1, unint64_t __dst, _DWORD *a3)
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
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
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

  v8 = *(a1 + 25);
  *v4 = 16;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 26);
  *v4 = 24;
  v4[1] = v9;
  v4 += 2;
  if ((v6 & 8) != 0)
  {
LABEL_15:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 27);
    *v4 = 32;
    v4[1] = v10;
    v4 += 2;
  }

LABEL_18:
  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v14)
  {
    v16 = v14;
    memcpy(v4, v15, v14);
    v4 += v16;
    return v4;
  }

  return sub_1957130(a3, v15, v14, v4);
}

uint64_t sub_154CB24(uint64_t a1)
{
  v1 = 2 * (*(a1 + 16) & 1) + (*(a1 + 16) & 2) + ((*(a1 + 16) >> 1) & 2) + ((*(a1 + 16) >> 2) & 2u);
  if ((*(a1 + 16) & 0xF) == 0)
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

double sub_154CB9C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26ED740;
  *(a1 + 8) = v3;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 2;
  return result;
}

uint64_t sub_154CBDC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26ED740;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    operator new();
  }

  *(a1 + 24) = 0;
  if ((v4 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 32) = 0;
  if ((v4 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 40) = 0;
  if ((v4 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 48) = 0;
  if ((v4 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  v6 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v6;
  return a1;
}

uint64_t sub_154CE10(uint64_t a1)
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

  sub_154CE94(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_154CE94(uint64_t (***result)()))()
{
  if (result != &off_2776FB8)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      sub_154979C(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_154A9A8(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_154B464(v4);
      operator delete();
    }

    v5 = v1[6];
    if (v5)
    {
      sub_154C5EC(v5);
      operator delete();
    }

    result = v1[7];
    if (result)
    {
      sub_154BAB4(result);

      operator delete();
    }
  }

  return result;
}

void sub_154CF80(uint64_t a1)
{
  sub_154CE10(a1);

  operator delete();
}

char *sub_154CFB8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v54 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v54, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v54 + 1;
    v8 = *v54;
    if (*v54 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v54, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v54 + 2;
      }
    }

    v54 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      break;
    }

    if (v8 >> 3 > 8)
    {
      if (v11 == 9)
      {
        if (v8 == 74)
        {
          *(a1 + 16) |= 0x10u;
          v44 = *(a1 + 56);
          if (!v44)
          {
            v45 = *(a1 + 8);
            v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
            if (v45)
            {
              v46 = *v46;
            }

            v44 = sub_1552410(v46);
            *(a1 + 56) = v44;
            v7 = v54;
          }

          v15 = sub_220DF68(a3, v44, v7);
          goto LABEL_99;
        }

        goto LABEL_92;
      }

      if (v11 != 10)
      {
        if (v11 != 11 || v8 != 88)
        {
          goto LABEL_92;
        }

        v20 = v7 + 1;
        v19 = *v7;
        if (v19 < 0)
        {
          v21 = *v20;
          v19 = (v21 << 7) + v19 - 128;
          if ((v21 & 0x80000000) == 0)
          {
            v20 = v7 + 2;
            goto LABEL_34;
          }

          v54 = sub_19587DC(v7, v19);
          if (!v54)
          {
            goto LABEL_121;
          }
        }

        else
        {
LABEL_34:
          v54 = v20;
        }

        if (v19 > 4)
        {
          sub_156E7E0();
        }

        else
        {
          *(a1 + 16) |= 0x200u;
          *(a1 + 76) = v19;
        }

        goto LABEL_100;
      }

      if (v8 != 80)
      {
        goto LABEL_92;
      }

      v36 = v7 + 1;
      v35 = *v7;
      if (v35 < 0)
      {
        v37 = *v36;
        v35 = (v37 << 7) + v35 - 128;
        if ((v37 & 0x80000000) == 0)
        {
          v36 = v7 + 2;
          goto LABEL_72;
        }

        v54 = sub_19587DC(v7, v35);
        if (!v54)
        {
          goto LABEL_121;
        }
      }

      else
      {
LABEL_72:
        v54 = v36;
      }

      if (v35 > 1)
      {
        sub_156E728();
      }

      else
      {
        *(a1 + 16) |= 0x100u;
        *(a1 + 72) = v35;
      }

      goto LABEL_100;
    }

    if (v11 != 6)
    {
      if (v11 != 7)
      {
        if (v11 == 8 && v8 == 66)
        {
          *(a1 + 16) |= 8u;
          v12 = *(a1 + 48);
          if (!v12)
          {
            v13 = *(a1 + 8);
            v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
            if (v13)
            {
              v14 = *v14;
            }

            v12 = sub_1552508(v14);
            *(a1 + 48) = v12;
            v7 = v54;
          }

          v15 = sub_2210F70(a3, v12, v7);
          goto LABEL_99;
        }

        goto LABEL_92;
      }

      if (v8 != 56)
      {
        goto LABEL_92;
      }

      v33 = v7 + 1;
      v32 = *v7;
      if (v32 < 0)
      {
        v34 = *v33;
        v32 = (v34 << 7) + v32 - 128;
        if (v34 < 0)
        {
          v54 = sub_19587DC(v7, v32);
          if (!v54)
          {
            goto LABEL_121;
          }

          goto LABEL_66;
        }

        v33 = v7 + 2;
      }

      v54 = v33;
LABEL_66:
      if (v32 > 3)
      {
        sub_13ED178();
      }

      else
      {
        *(a1 + 16) |= 0x80u;
        *(a1 + 68) = v32;
      }

      goto LABEL_100;
    }

    if (v8 != 48)
    {
      goto LABEL_92;
    }

    v5 |= 0x40u;
    v42 = v7 + 1;
    v41 = *v7;
    if ((v41 & 0x8000000000000000) == 0)
    {
      goto LABEL_85;
    }

    v43 = *v42;
    v41 = (v43 << 7) + v41 - 128;
    if ((v43 & 0x80000000) == 0)
    {
      v42 = v7 + 2;
LABEL_85:
      v54 = v42;
      *(a1 + 65) = v41 != 0;
      goto LABEL_100;
    }

    v52 = sub_19587DC(v7, v41);
    v54 = v52;
    *(a1 + 65) = v53 != 0;
    if (!v52)
    {
      goto LABEL_121;
    }

LABEL_100:
    if (sub_195ADC0(a3, &v54, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 2)
  {
    if (v11 != 1)
    {
      if (v11 != 2 || v8 != 18)
      {
        goto LABEL_92;
      }

      *(a1 + 16) |= 1u;
      v23 = *(a1 + 24);
      if (!v23)
      {
        v24 = *(a1 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        v23 = sub_15522BC(v25);
        *(a1 + 24) = v23;
        v7 = v54;
      }

      v15 = sub_221DF7C(a3, v23, v7);
LABEL_99:
      v54 = v15;
      if (!v15)
      {
        goto LABEL_121;
      }

      goto LABEL_100;
    }

    if (v8 != 8)
    {
      goto LABEL_92;
    }

    v27 = v7 + 1;
    v26 = *v7;
    if (v26 < 0)
    {
      v28 = *v27;
      v26 = (v28 << 7) + v26 - 128;
      if (v28 < 0)
      {
        v54 = sub_19587DC(v7, v26);
        if (!v54)
        {
          goto LABEL_121;
        }

        goto LABEL_53;
      }

      v27 = v7 + 2;
    }

    v54 = v27;
LABEL_53:
    if ((v26 - 2) > 2)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 16) |= 0x400u;
      *(a1 + 80) = v26;
    }

    goto LABEL_100;
  }

  if (v11 == 3)
  {
    if (v8 != 26)
    {
      goto LABEL_92;
    }

    *(a1 + 16) |= 2u;
    v38 = *(a1 + 32);
    if (!v38)
    {
      v39 = *(a1 + 8);
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
      if (v39)
      {
        v40 = *v40;
      }

      v38 = sub_1552318(v40);
      *(a1 + 32) = v38;
      v7 = v54;
    }

    v15 = sub_221E00C(a3, v38, v7);
    goto LABEL_99;
  }

  if (v11 != 4)
  {
    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_92;
    }

    v5 |= 0x20u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_26;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_26:
      v54 = v17;
      *(a1 + 64) = v16 != 0;
      goto LABEL_100;
    }

    v50 = sub_19587DC(v7, v16);
    v54 = v50;
    *(a1 + 64) = v51 != 0;
    if (!v50)
    {
      goto LABEL_121;
    }

    goto LABEL_100;
  }

  if (v8 == 34)
  {
    *(a1 + 16) |= 4u;
    v29 = *(a1 + 40);
    if (!v29)
    {
      v30 = *(a1 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      v29 = sub_15523B4(v31);
      *(a1 + 40) = v29;
      v7 = v54;
    }

    v15 = sub_221E09C(a3, v29, v7);
    goto LABEL_99;
  }

LABEL_92:
  if (v8)
  {
    v47 = (v8 & 7) == 4;
  }

  else
  {
    v47 = 1;
  }

  if (!v47)
  {
    v48 = *(a1 + 8);
    if (v48)
    {
      v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v49 = sub_11F1920((a1 + 8));
      v7 = v54;
    }

    v15 = sub_1952690(v8, v49, v7, a3);
    goto LABEL_99;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_121:
  v54 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v54;
}

char *sub_154D580(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x400) != 0)
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

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 24);
    *v6 = 18;
    v13 = *(v12 + 44);
    v6[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, v6 + 1);
    }

    else
    {
      v14 = v6 + 2;
    }

    v6 = sub_1549ED0(v12, v14, a3);
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_29;
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

  v15 = *(a1 + 32);
  *v6 = 26;
  v16 = *(v15 + 20);
  v6[1] = v16;
  if (v16 > 0x7F)
  {
    v17 = sub_19575D0(v16, v6 + 1);
  }

  else
  {
    v17 = v6 + 2;
  }

  v6 = sub_154AD9C(v15, v17, a3);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_29:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v18 = *(a1 + 40);
  *v6 = 34;
  v19 = *(v18 + 44);
  v6[1] = v19;
  if (v19 > 0x7F)
  {
    v20 = sub_19575D0(v19, v6 + 1);
  }

  else
  {
    v20 = v6 + 2;
  }

  v6 = sub_154B744(v18, v20, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_14:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_15;
    }

LABEL_38:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v22 = *(a1 + 65);
    *v6 = 48;
    v6[1] = v22;
    v6 += 2;
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_35:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v21 = *(a1 + 64);
  *v6 = 40;
  v6[1] = v21;
  v6 += 2;
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_38;
  }

LABEL_15:
  if ((v5 & 0x80) == 0)
  {
LABEL_16:
    v11 = v6;
    goto LABEL_48;
  }

LABEL_41:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v23 = *(a1 + 68);
  *v6 = 56;
  v6[1] = v23;
  if (v23 > 0x7F)
  {
    v6[1] = v23 | 0x80;
    v24 = v23 >> 7;
    v6[2] = v23 >> 7;
    v11 = v6 + 3;
    if (v23 >= 0x4000)
    {
      LOBYTE(v6) = v6[2];
      do
      {
        *(v11 - 1) = v6 | 0x80;
        v6 = (v24 >> 7);
        *v11++ = v24 >> 7;
        v25 = v24 >> 14;
        v24 >>= 7;
      }

      while (v25);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

LABEL_48:
  if ((v5 & 8) == 0)
  {
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_50;
    }

LABEL_58:
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v30 = *(a1 + 56);
    *v11 = 74;
    v31 = *(v30 + 20);
    v11[1] = v31;
    if (v31 > 0x7F)
    {
      v32 = sub_19575D0(v31, v11 + 1);
    }

    else
    {
      v32 = v11 + 2;
    }

    v11 = sub_154BD44(v30, v32, a3);
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_64;
  }

  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v27 = *(a1 + 48);
  *v11 = 66;
  v28 = *(v27 + 20);
  v11[1] = v28;
  if (v28 > 0x7F)
  {
    v29 = sub_19575D0(v28, v11 + 1);
  }

  else
  {
    v29 = v11 + 2;
  }

  v11 = sub_154C98C(v27, v29, a3);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_58;
  }

LABEL_50:
  if ((v5 & 0x100) == 0)
  {
LABEL_51:
    v26 = v11;
    goto LABEL_71;
  }

LABEL_64:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v33 = *(a1 + 72);
  *v11 = 80;
  v11[1] = v33;
  if (v33 > 0x7F)
  {
    v11[1] = v33 | 0x80;
    v34 = v33 >> 7;
    v11[2] = v33 >> 7;
    v26 = v11 + 3;
    if (v33 >= 0x4000)
    {
      LOBYTE(v11) = v11[2];
      do
      {
        *(v26 - 1) = v11 | 0x80;
        v11 = (v34 >> 7);
        *v26++ = v34 >> 7;
        v35 = v34 >> 14;
        v34 >>= 7;
      }

      while (v35);
    }
  }

  else
  {
    v26 = v11 + 2;
  }

LABEL_71:
  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v37 = *(a1 + 76);
    *v26 = 88;
    v26[1] = v37;
    if (v37 > 0x7F)
    {
      v26[1] = v37 | 0x80;
      v38 = v37 >> 7;
      v26[2] = v37 >> 7;
      v36 = v26 + 3;
      if (v37 >= 0x4000)
      {
        LOBYTE(v39) = v26[2];
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
      v36 = v26 + 2;
    }
  }

  else
  {
    v36 = v26;
  }

  v41 = *(a1 + 8);
  if ((v41 & 1) == 0)
  {
    return v36;
  }

  v43 = v41 & 0xFFFFFFFFFFFFFFFCLL;
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

  if (*a3 - v36 >= v44)
  {
    v46 = v44;
    memcpy(v36, v45, v44);
    v36 += v46;
    return v36;
  }

  return sub_1957130(a3, v45, v44, v36);
}

uint64_t sub_154DABC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    result = 0;
    goto LABEL_17;
  }

  if (v2)
  {
    v5 = sub_154A34C(*(a1 + 24));
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    v6 = sub_154AFA8(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v11 = sub_154B874(*(a1 + 40));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v12 = sub_154CB24(*(a1 + 48));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
LABEL_11:
    v7 = sub_154BEF4(*(a1 + 56));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  result = v3 + ((v2 >> 5) & 2) + ((v2 >> 4) & 2);
  if ((v2 & 0x80) != 0)
  {
    v8 = *(a1 + 68);
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v8 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 11;
    }

    result += v10;
  }

LABEL_17:
  if ((v2 & 0x700) == 0)
  {
    goto LABEL_37;
  }

  if ((v2 & 0x100) != 0)
  {
    v13 = *(a1 + 72);
    if (v13 < 0)
    {
      v14 = 11;
    }

    else
    {
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v14;
    if ((v2 & 0x200) == 0)
    {
LABEL_20:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  v15 = *(a1 + 76);
  if (v15 < 0)
  {
    v16 = 11;
  }

  else
  {
    v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v16;
  if ((v2 & 0x400) != 0)
  {
LABEL_33:
    v17 = *(a1 + 80);
    if (v17 < 0)
    {
      v18 = 11;
    }

    else
    {
      v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v18;
  }

LABEL_37:
  v19 = *(a1 + 8);
  if (v19)
  {
    v20 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    result += v21;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_154DD20(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_14CC674(a1);

    sub_14D0028(a1, a2);
  }
}

__n128 sub_154DD6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  v10 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v10;
  LODWORD(v10) = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v10;
  return result;
}

void *sub_154DDF0(void *a1)
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

void sub_154DE64(void *a1)
{
  sub_154DDF0(a1);

  operator delete();
}

uint64_t sub_154DE9C(uint64_t a1)
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

char *sub_154DEC4(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_154E10C(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_154E344(uint64_t a1)
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

void *sub_154E420(void *a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  a1[1] = v5;
  *a1 = off_26ED840;
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
  a1[15] = a2;
  a1[16] = 0;
  a1[17] = 0;
  a1[18] = &qword_278E990;
  a1[19] = &qword_278E990;
  a1[20] = &qword_278E990;
  a1[21] = &qword_278E990;
  a1[22] = 0;
  return a1;
}

void sub_154E4B4(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_154E4E4(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_16;
    }
  }

  else if (v4)
  {
    goto LABEL_16;
  }

  v5 = (a1 + 144);
  if (*(a1 + 144) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 152) != &qword_278E990)
  {
    sub_194E89C((a1 + 152));
  }

  if (*(a1 + 160) != &qword_278E990)
  {
    sub_194E89C((a1 + 160));
  }

  if (*(a1 + 168) != &qword_278E990)
  {
    sub_194E89C((a1 + 168));
  }

  if (a1 != &off_2777010 && *(a1 + 176))
  {
    sub_16E4E08();
    operator delete();
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_16:
  sub_1311F6C((a1 + 120));
  sub_156D0BC((a1 + 96));
  sub_156D1C4((a1 + 72));
  sub_1956AFC((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_154E628(uint64_t a1)
{
  sub_154E4E4(a1);

  operator delete();
}

uint64_t sub_154E660(uint64_t a1)
{
  sub_1951124((a1 + 16));
  result = sub_12A41D0(a1 + 48);
  v3 = *(a1 + 80);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 88) + 8);
    do
    {
      v5 = *v4++;
      result = sub_154DE9C(v5);
      --v3;
    }

    while (v3);
    *(a1 + 80) = 0;
  }

  v6 = *(a1 + 104);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 112) + 8);
    do
    {
      v8 = *v7++;
      result = sub_14EB434(v8);
      --v6;
    }

    while (v6);
    *(a1 + 104) = 0;
  }

  v9 = *(a1 + 128);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 136) + 8);
    do
    {
      v11 = *v10++;
      result = sub_1543CB4(v11);
      --v9;
    }

    while (v9);
    *(a1 + 128) = 0;
  }

  v12 = *(a1 + 40);
  if ((v12 & 0x1F) == 0)
  {
    goto LABEL_20;
  }

  if ((v12 & 1) == 0)
  {
    if ((v12 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_28:
    v16 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v16 + 23) < 0)
    {
      **v16 = 0;
      *(v16 + 8) = 0;
      if ((v12 & 4) != 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      *v16 = 0;
      *(v16 + 23) = 0;
      if ((v12 & 4) != 0)
      {
        goto LABEL_32;
      }
    }

LABEL_17:
    if ((v12 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

  v15 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v15 + 23) < 0)
  {
    **v15 = 0;
    *(v15 + 8) = 0;
    if ((v12 & 2) != 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    *v15 = 0;
    *(v15 + 23) = 0;
    if ((v12 & 2) != 0)
    {
      goto LABEL_28;
    }
  }

LABEL_16:
  if ((v12 & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_32:
  v17 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v17 + 23) & 0x80000000) == 0)
  {
    *v17 = 0;
    *(v17 + 23) = 0;
    if ((v12 & 8) != 0)
    {
      goto LABEL_36;
    }

LABEL_18:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  **v17 = 0;
  *(v17 + 8) = 0;
  if ((v12 & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_36:
  v18 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v18 + 23) & 0x80000000) == 0)
  {
    *v18 = 0;
    *(v18 + 23) = 0;
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    result = sub_16E4E44(*(a1 + 176));
    goto LABEL_20;
  }

  **v18 = 0;
  *(v18 + 8) = 0;
  if ((v12 & 0x10) != 0)
  {
    goto LABEL_19;
  }

LABEL_20:
  v14 = *(a1 + 8);
  v13 = a1 + 8;
  *(v13 + 32) = 0;
  if (v14)
  {

    return sub_1957EA8(v13);
  }

  return result;
}

uint64_t sub_154E82C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v52 = a2;
  if (sub_195ADC0(a3, v52, a3[11].i32[1]))
  {
    return *v52;
  }

  while (1)
  {
    v6 = (*v52 + 1);
    v7 = **v52;
    if (**v52 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v52, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v52 + 2);
      }
    }

    *v52 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 4)
    {
      if (v7 >> 3 <= 6)
      {
        if (v10 == 5)
        {
          if (v7 != 42)
          {
            goto LABEL_90;
          }

          *(a1 + 40) |= 2u;
          v41 = *(a1 + 8);
          v29 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
          if (v41)
          {
            v29 = *v29;
          }

          v30 = (a1 + 152);
        }

        else
        {
          if (v10 != 6 || v7 != 50)
          {
            goto LABEL_90;
          }

          *(a1 + 40) |= 4u;
          v28 = *(a1 + 8);
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          v30 = (a1 + 160);
        }
      }

      else
      {
        if (v10 != 7)
        {
          if (v10 == 8)
          {
            if (v7 == 66)
            {
              v43 = v6 - 1;
              while (1)
              {
                v44 = v43 + 1;
                *v52 = v43 + 1;
                v45 = *(a1 + 112);
                if (v45 && (v46 = *(a1 + 104), v46 < *v45))
                {
                  *(a1 + 104) = v46 + 1;
                  v47 = *&v45[2 * v46 + 2];
                }

                else
                {
                  sub_15520A4(*(a1 + 96));
                  v47 = sub_19593CC(a1 + 96, v48);
                  v44 = *v52;
                }

                v43 = sub_2204D90(a3, v47, v44);
                *v52 = v43;
                if (!v43)
                {
                  goto LABEL_102;
                }

                if (*a3 <= v43 || *v43 != 66)
                {
                  goto LABEL_78;
                }
              }
            }
          }

          else if (v10 == 9 && v7 == 74)
          {
            v11 = v6 - 1;
            while (1)
            {
              v12 = v11 + 1;
              *v52 = v11 + 1;
              v13 = *(a1 + 136);
              if (v13 && (v14 = *(a1 + 128), v14 < *v13))
              {
                *(a1 + 128) = v14 + 1;
                v15 = *&v13[2 * v14 + 2];
              }

              else
              {
                v16 = sub_1551DC4(*(a1 + 120));
                v15 = sub_19593CC(a1 + 120, v16);
                v12 = *v52;
              }

              v11 = sub_21F8E38(a3, v15, v12);
              *v52 = v11;
              if (!v11)
              {
                goto LABEL_102;
              }

              if (*a3 <= v11 || *v11 != 74)
              {
                goto LABEL_78;
              }
            }
          }

          goto LABEL_90;
        }

        if (v7 != 58)
        {
          goto LABEL_90;
        }

        *(a1 + 40) |= 8u;
        v40 = *(a1 + 8);
        v29 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
        if (v40)
        {
          v29 = *v29;
        }

        v30 = (a1 + 168);
      }

LABEL_76:
      v42 = sub_194DB04(v30, v29);
      v27 = sub_1958890(v42, *v52, a3);
      goto LABEL_77;
    }

    if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 == 10)
        {
          v31 = (v6 - 1);
          while (1)
          {
            v32 = (v31 + 1);
            *v52 = v31 + 1;
            v33 = *(a1 + 64);
            if (v33 && (v34 = *(a1 + 56), v34 < *v33))
            {
              *(a1 + 56) = v34 + 1;
              v35 = *&v33[2 * v34 + 2];
            }

            else
            {
              v36 = *(a1 + 48);
              if (!v36)
              {
                operator new();
              }

              *v38 = v37;
              v38[1] = sub_195A650;
              *v37 = 0;
              v37[1] = 0;
              v37[2] = 0;
              v35 = sub_19593CC(a1 + 48, v37);
              v32 = *v52;
            }

            v31 = sub_1958890(v35, v32, a3);
            *v52 = v31;
            if (!v31)
            {
              goto LABEL_102;
            }

            if (*a3 <= v31 || *v31 != 10)
            {
              goto LABEL_78;
            }
          }
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        v18 = (v6 - 1);
        while (1)
        {
          v19 = (v18 + 1);
          *v52 = v18 + 1;
          v20 = *(a1 + 88);
          if (v20 && (v21 = *(a1 + 80), v21 < *v20))
          {
            *(a1 + 80) = v21 + 1;
            v22 = *&v20[2 * v21 + 2];
          }

          else
          {
            v23 = sub_155260C(*(a1 + 72));
            v22 = sub_19593CC(a1 + 72, v23);
            v19 = *v52;
          }

          v18 = sub_221E12C(a3, v22, v19);
          *v52 = v18;
          if (!v18)
          {
            goto LABEL_102;
          }

          if (*a3 <= v18 || *v18 != 18)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_90;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 != 4 || v7 != 34)
    {
      goto LABEL_90;
    }

    *(a1 + 40) |= 0x10u;
    v24 = *(a1 + 176);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_16F5828(v26);
      *(a1 + 176) = v24;
      v6 = *v52;
    }

    v27 = sub_21F4D60(a3, v24, v6);
LABEL_77:
    *v52 = v27;
    if (!v27)
    {
      goto LABEL_102;
    }

LABEL_78:
    if (sub_195ADC0(a3, v52, a3[11].i32[1]))
    {
      return *v52;
    }
  }

  if (v7 == 26)
  {
    *(a1 + 40) |= 1u;
    v39 = *(a1 + 8);
    v29 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
    if (v39)
    {
      v29 = *v29;
    }

    v30 = (a1 + 144);
    goto LABEL_76;
  }

LABEL_90:
  if (v7)
  {
    v49 = (v7 & 7) == 4;
  }

  else
  {
    v49 = 1;
  }

  if (!v49)
  {
    if (v7 - 4000 > 0x63F)
    {
      v50 = *(a1 + 8);
      if (v50)
      {
        v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v51 = sub_11F1920((a1 + 8));
        v6 = *v52;
      }

      v27 = sub_1952690(v7, v51, v6, a3);
    }

    else
    {
      v27 = sub_19525AC((a1 + 16), v7, v6, &off_2777010, (a1 + 8), a3);
    }

    goto LABEL_77;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v52;
  }

LABEL_102:
  *v52 = 0;
  return *v52;
}

char *sub_154ED80(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 56);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 64) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || (*a3 - a2 + 14) < v9)
      {
        a2 = sub_1957480(a3, 1, v8, a2);
      }

      else
      {
        *a2 = 10;
        a2[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v10 = a2 + 2;
        memcpy(v10, v8, v9);
        a2 = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v13 = *(*(a1 + 88) + 8 * i + 8);
      *a2 = 18;
      v14 = *(v13 + 20);
      a2[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, a2 + 1);
      }

      else
      {
        v15 = a2 + 2;
      }

      a2 = sub_154E10C(v13, v15, a3);
    }
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    a2 = sub_128AEEC(a3, 3, *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL, a2);
    if ((v16 & 0x10) == 0)
    {
LABEL_22:
      if ((v16 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_53;
    }
  }

  else if ((v16 & 0x10) == 0)
  {
    goto LABEL_22;
  }

  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v29 = *(a1 + 176);
  *a2 = 34;
  v30 = *(v29 + 44);
  a2[1] = v30;
  if (v30 > 0x7F)
  {
    v31 = sub_19575D0(v30, a2 + 1);
  }

  else
  {
    v31 = a2 + 2;
  }

  a2 = sub_16E5070(v29, v31, a3);
  if ((v16 & 2) == 0)
  {
LABEL_23:
    if ((v16 & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  a2 = sub_128AEEC(a3, 5, *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL, a2);
  if ((v16 & 4) == 0)
  {
LABEL_24:
    if ((v16 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_54:
  a2 = sub_128AEEC(a3, 6, *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL, a2);
  if ((v16 & 8) != 0)
  {
LABEL_25:
    a2 = sub_128AEEC(a3, 7, *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL, a2);
  }

LABEL_26:
  v17 = *(a1 + 104);
  if (v17)
  {
    for (j = 0; j != v17; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v19 = *(*(a1 + 112) + 8 * j + 8);
      *a2 = 66;
      v20 = *(v19 + 20);
      a2[1] = v20;
      if (v20 > 0x7F)
      {
        v21 = sub_19575D0(v20, a2 + 1);
      }

      else
      {
        v21 = a2 + 2;
      }

      a2 = sub_1546828(v19, v21, a3);
    }
  }

  v22 = *(a1 + 128);
  if (v22)
  {
    for (k = 0; k != v22; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v24 = *(*(a1 + 136) + 8 * k + 8);
      *a2 = 74;
      v25 = *(v24 + 20);
      a2[1] = v25;
      if (v25 > 0x7F)
      {
        v26 = sub_19575D0(v25, a2 + 1);
      }

      else
      {
        v26 = a2 + 2;
      }

      a2 = sub_1543E88(v24, v26, a3);
    }
  }

  if (*(a1 + 26))
  {
    a2 = sub_1953428(a1 + 16, 500, 700, a2, a3);
  }

  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return a2;
  }

  v32 = v27 & 0xFFFFFFFFFFFFFFFCLL;
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

  if ((*a3 - a2) >= v33)
  {
    v35 = v33;
    memcpy(a2, v34, v33);
    a2 += v35;
    return a2;
  }

  return sub_1957130(a3, v34, v33, a2);
}

uint64_t sub_154F180(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 56);
  v4 = v2 + v3;
  if (v3 >= 1)
  {
    v5 = (*(a1 + 64) + 8);
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

  v9 = *(a1 + 80);
  v10 = v4 + v9;
  v11 = *(a1 + 88);
  if (v11)
  {
    v12 = (v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = 8 * v9;
    do
    {
      v14 = *v12++;
      v15 = sub_154E344(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = *(a1 + 104);
  v17 = v10 + v16;
  v18 = *(a1 + 112);
  if (v18)
  {
    v19 = (v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  if (v16)
  {
    v20 = 8 * v16;
    do
    {
      v21 = *v19++;
      v22 = sub_1546FC4(v21);
      v17 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      v20 -= 8;
    }

    while (v20);
  }

  v23 = *(a1 + 128);
  v24 = v17 + v23;
  v25 = *(a1 + 136);
  if (v25)
  {
    v26 = (v25 + 8);
  }

  else
  {
    v26 = 0;
  }

  if (v23)
  {
    v27 = 8 * v23;
    do
    {
      v28 = *v26++;
      v29 = sub_1543FE4(v28);
      v24 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6);
      v27 -= 8;
    }

    while (v27);
  }

  v30 = *(a1 + 40);
  if ((v30 & 0x1F) == 0)
  {
    goto LABEL_31;
  }

  if (v30)
  {
    v34 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
    v35 = *(v34 + 23);
    v36 = *(v34 + 8);
    if ((v35 & 0x80u) == 0)
    {
      v36 = v35;
    }

    v24 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v30 & 2) == 0)
    {
LABEL_27:
      if ((v30 & 4) == 0)
      {
        goto LABEL_28;
      }

LABEL_39:
      v40 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
      v41 = *(v40 + 23);
      v42 = *(v40 + 8);
      if ((v41 & 0x80u) == 0)
      {
        v42 = v41;
      }

      v24 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v30 & 8) == 0)
      {
LABEL_29:
        if ((v30 & 0x10) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      goto LABEL_42;
    }
  }

  else if ((v30 & 2) == 0)
  {
    goto LABEL_27;
  }

  v37 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
  v38 = *(v37 + 23);
  v39 = *(v37 + 8);
  if ((v38 & 0x80u) == 0)
  {
    v39 = v38;
  }

  v24 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v30 & 4) != 0)
  {
    goto LABEL_39;
  }

LABEL_28:
  if ((v30 & 8) == 0)
  {
    goto LABEL_29;
  }

LABEL_42:
  v43 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
  v44 = *(v43 + 23);
  v45 = *(v43 + 8);
  if ((v44 & 0x80u) == 0)
  {
    v45 = v44;
  }

  v24 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v30 & 0x10) != 0)
  {
LABEL_30:
    v31 = sub_16E51F0(*(a1 + 176));
    v24 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_31:
  v32 = *(a1 + 8);
  if (v32)
  {
    v46 = v32 & 0xFFFFFFFFFFFFFFFCLL;
    v47 = *((v32 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v47 < 0)
    {
      v47 = *(v46 + 16);
    }

    v24 += v47;
  }

  *(a1 + 44) = v24;
  return v24;
}

void sub_154F484(uint64_t a1, uint64_t a2)
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

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_156DD4C((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
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
    sub_156DC34((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
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
    sub_131206C((a1 + 120), v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
    v22 = *(a1 + 128) + v19;
    *(a1 + 128) = v22;
    v23 = *(a1 + 136);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 40);
  if ((v24 & 0x1F) == 0)
  {
    goto LABEL_40;
  }

  if (v24)
  {
    v25 = *(a2 + 144);
    *(a1 + 40) |= 1u;
    v26 = *(a1 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    sub_194EA1C((a1 + 144), (v25 & 0xFFFFFFFFFFFFFFFELL), v27);
    if ((v24 & 2) == 0)
    {
LABEL_16:
      if ((v24 & 4) == 0)
      {
        goto LABEL_17;
      }

LABEL_26:
      v31 = *(a2 + 160);
      *(a1 + 40) |= 4u;
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      sub_194EA1C((a1 + 160), (v31 & 0xFFFFFFFFFFFFFFFELL), v33);
      if ((v24 & 8) == 0)
      {
LABEL_18:
        if ((v24 & 0x10) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_32;
      }

      goto LABEL_29;
    }
  }

  else if ((v24 & 2) == 0)
  {
    goto LABEL_16;
  }

  v28 = *(a2 + 152);
  *(a1 + 40) |= 2u;
  v29 = *(a1 + 8);
  v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
  if (v29)
  {
    v30 = *v30;
  }

  sub_194EA1C((a1 + 152), (v28 & 0xFFFFFFFFFFFFFFFELL), v30);
  if ((v24 & 4) != 0)
  {
    goto LABEL_26;
  }

LABEL_17:
  if ((v24 & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_29:
  v34 = *(a2 + 168);
  *(a1 + 40) |= 8u;
  v35 = *(a1 + 8);
  v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
  if (v35)
  {
    v36 = *v36;
  }

  sub_194EA1C((a1 + 168), (v34 & 0xFFFFFFFFFFFFFFFELL), v36);
  if ((v24 & 0x10) != 0)
  {
LABEL_32:
    *(a1 + 40) |= 0x10u;
    v37 = *(a1 + 176);
    if (!v37)
    {
      v38 = *(a1 + 8);
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
      if (v38)
      {
        v39 = *v39;
      }

      v37 = sub_16F5828(v39);
      *(a1 + 176) = v37;
    }

    if (*(a2 + 176))
    {
      v40 = *(a2 + 176);
    }

    else
    {
      v40 = &off_277E5E8;
    }

    sub_16E527C(v37, v40);
  }

LABEL_40:
  sub_225EA0C(a1 + 16, a2 + 16);
  v41 = *(a2 + 8);
  if (v41)
  {

    sub_1957EF4((a1 + 8), (v41 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_154F79C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 104);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_14EC4F4(*(*(a1 + 112) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 128);
    while (v6 >= 1)
    {
      v7 = *(*(a1 + 136) + 8 * v6--);
      if ((~*(v7 + 16) & 3) != 0)
      {
        return 0;
      }
    }

    if ((*(a1 + 40) & 0x10) == 0)
    {
      return 1;
    }

    result = sub_16E5370(*(a1 + 176));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_154F848(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_156D248((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_154F8F4(uint64_t a1)
{
  sub_154F848(a1);

  operator delete();
}

uint64_t sub_154F92C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_154E660(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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

  if ((v5 & 6) != 0)
  {
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_154F9E8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v34 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v34, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v34 + 1);
    v8 = **v34;
    if (**v34 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v34, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v34 + 2);
      }
    }

    *v34 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 == 10)
        {
          v20 = v7 - 1;
          while (1)
          {
            v21 = v20 + 1;
            *v34 = v20 + 1;
            v22 = *(a1 + 40);
            if (v22 && (v23 = *(a1 + 32), v23 < *v22))
            {
              *(a1 + 32) = v23 + 1;
              v24 = *&v22[2 * v23 + 2];
            }

            else
            {
              v25 = sub_1552688(*(a1 + 24));
              v24 = sub_19593CC(a1 + 24, v25);
              v21 = *v34;
            }

            v20 = sub_221E1BC(a3, v24, v21);
            *v34 = v20;
            if (!v20)
            {
              goto LABEL_59;
            }

            if (*a3 <= v20 || *v20 != 10)
            {
              goto LABEL_49;
            }
          }
        }

        goto LABEL_41;
      }

      if (v11 != 2 || v8 != 18)
      {
        goto LABEL_41;
      }

      *(a1 + 16) |= 1u;
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v15 = sub_194DB04((a1 + 48), v14);
      v16 = sub_1958890(v15, *v34, a3);
LABEL_48:
      *v34 = v16;
      if (!v16)
      {
        goto LABEL_59;
      }

      goto LABEL_49;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_41;
    }

    v5 |= 2u;
    v27 = v7 + 1;
    v26 = *v7;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_40;
    }

    v28 = *v27;
    v26 = (v28 << 7) + v26 - 128;
    if ((v28 & 0x80000000) == 0)
    {
      v27 = v7 + 2;
LABEL_40:
      *v34 = v27;
      *(a1 + 56) = v26 != 0;
      goto LABEL_49;
    }

    v32 = sub_19587DC(v7, v26);
    *v34 = v32;
    *(a1 + 56) = v33 != 0;
    if (!v32)
    {
      goto LABEL_59;
    }

LABEL_49:
    if (sub_195ADC0(a3, v34, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4 && v8 == 32)
  {
    v18 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_23;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if (v19 < 0)
    {
      *v34 = sub_19587DC(v7, v17);
      if (!*v34)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v18 = v7 + 2;
LABEL_23:
      *v34 = v18;
    }

    if (v17 > 3)
    {
      sub_12E8500();
    }

    else
    {
      *(a1 + 16) |= 4u;
      *(a1 + 60) = v17;
    }

    goto LABEL_49;
  }

LABEL_41:
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
      v7 = *v34;
    }

    v16 = sub_1952690(v8, v31, v7, a3);
    goto LABEL_48;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_59:
  *v34 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v34;
}

char *sub_154FCDC(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_154ED80(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if ((v11 & 1) == 0)
  {
    if ((v11 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v13 = *(a1 + 56);
    *__dst = 24;
    __dst[1] = v13;
    __dst += 2;
    if ((v11 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  __dst = sub_128AEEC(a3, 2, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
  if ((v11 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if ((v11 & 4) == 0)
  {
LABEL_12:
    v12 = __dst;
    goto LABEL_24;
  }

LABEL_17:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v14 = *(a1 + 60);
  *__dst = 32;
  __dst[1] = v14;
  if (v14 > 0x7F)
  {
    __dst[1] = v14 | 0x80;
    v15 = v14 >> 7;
    __dst[2] = v14 >> 7;
    v12 = __dst + 3;
    if (v14 >= 0x4000)
    {
      LOBYTE(v16) = __dst[2];
      do
      {
        *(v12 - 1) = v16 | 0x80;
        v16 = v15 >> 7;
        *v12++ = v15 >> 7;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
    }
  }

  else
  {
    v12 = __dst + 2;
  }

LABEL_24:
  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v12;
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

  if ((*a3 - v12) >= v21)
  {
    v23 = v21;
    memcpy(v12, v22, v21);
    v12 += v23;
    return v12;
  }

  return sub_1957130(a3, v22, v21, v12);
}

uint64_t sub_154FEF8(uint64_t a1)
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
      v7 = sub_154F180(v6);
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
      v9 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v8 & 2;
    if ((v8 & 4) != 0)
    {
      v12 = *(a1 + 60);
      if (v12 < 0)
      {
        v13 = 11;
      }

      else
      {
        v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v13;
    }
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v2 += v17;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_155002C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_156DDC8((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
        *(a1 + 60) = *(a2 + 60);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 56) = *(a2 + 56);
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

BOOL sub_1550158(uint64_t a1)
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
    v5 = sub_154F79C(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_15501C0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_26ED940;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1201B48(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
    v9 = *(a1 + 24) + v6;
    *(a1 + 24) = v9;
    v10 = *(a1 + 32);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v11 = *(a2 + 48);
  if (v11)
  {
    v12 = *(a2 + 56);
    v13 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_1201B48(a1 + 40, v13, (v12 + 8), v11, **(a1 + 56) - *(a1 + 48));
    v14 = *(a1 + 48) + v11;
    *(a1 + 48) = v14;
    v15 = *(a1 + 56);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  *(a1 + 64) = 0;
  v16 = *(a2 + 8);
  if (v16)
  {
    sub_1957EF4(v4, (v16 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_1550310(_Unwind_Exception *a1)
{
  sub_1956AFC(v4);
  sub_1956AFC(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1550360(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956AFC(a1 + 5);
  sub_1956AFC(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15503E4(void *a1)
{
  sub_1550360(a1);

  operator delete();
}

uint64_t sub_155041C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v30 = a2;
  if ((sub_195ADC0(a3, v30, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
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
      if (v7 >> 3 == 2)
      {
        if (v7 == 18)
        {
          v14 = v6 - 1;
          while (1)
          {
            v15 = (v14 + 1);
            *v30 = v14 + 1;
            v16 = *(a1 + 56);
            if (v16 && (v17 = *(a1 + 48), v17 < *v16))
            {
              *(a1 + 48) = v17 + 1;
              v18 = *&v16[2 * v17 + 2];
            }

            else
            {
              v19 = *(a1 + 40);
              if (!v19)
              {
                operator new();
              }

              *v21 = v20;
              v21[1] = sub_195A650;
              *v20 = 0;
              v20[1] = 0;
              v20[2] = 0;
              v18 = sub_19593CC(a1 + 40, v20);
              v15 = *v30;
            }

            v14 = sub_1958890(v18, v15, a3);
            *v30 = v14;
            if (!v14)
            {
              goto LABEL_47;
            }

            if (*a3 <= v14 || *v14 != 18)
            {
              goto LABEL_42;
            }
          }
        }
      }

      else if (v7 >> 3 == 1 && v7 == 10)
      {
        v22 = v6 - 1;
        while (1)
        {
          v23 = (v22 + 1);
          *v30 = v22 + 1;
          v24 = *(a1 + 32);
          if (v24 && (v25 = *(a1 + 24), v25 < *v24))
          {
            *(a1 + 24) = v25 + 1;
            v26 = *&v24[2 * v25 + 2];
          }

          else
          {
            v27 = *(a1 + 16);
            if (!v27)
            {
              operator new();
            }

            *v29 = v28;
            v29[1] = sub_195A650;
            *v28 = 0;
            v28[1] = 0;
            v28[2] = 0;
            v26 = sub_19593CC(a1 + 16, v28);
            v23 = *v30;
          }

          v22 = sub_1958890(v26, v23, a3);
          *v30 = v22;
          if (!v22)
          {
            goto LABEL_47;
          }

          if (*a3 <= v22 || *v22 != 10)
          {
            goto LABEL_42;
          }
        }
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
        v6 = *v30;
      }

      *v30 = sub_1952690(v7, v13, v6, a3);
      if (!*v30)
      {
        goto LABEL_47;
      }

LABEL_42:
      if (sub_195ADC0(a3, v30, a3[11].i32[1]))
      {
        return *v30;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return *v30;
    }

LABEL_47:
    *v30 = 0;
  }

  return *v30;
}

char *sub_15506E0(uint64_t a1, char *__dst, _DWORD *a3)
{
  v6 = *(a1 + 24);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 32) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || *a3 - __dst + 14 < v9)
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
        memcpy(v15, v13, v14);
        __dst = &v15[v14];
      }

      v12 += 8;
      --v11;
    }

    while (v11);
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return __dst;
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

  if (*a3 - __dst >= v19)
  {
    v21 = v19;
    memcpy(__dst, v20, v19);
    __dst += v21;
    return __dst;
  }

  return sub_1957130(a3, v20, v19, __dst);
}

uint64_t sub_15508CC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 < 1)
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v2 = (*(a1 + 32) + 8);
    v3 = *(a1 + 24);
    do
    {
      v4 = *v2++;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
      --v1;
    }

    while (v1);
  }

  v7 = *(a1 + 48);
  v8 = v3 + v7;
  if (v7 >= 1)
  {
    v9 = (*(a1 + 56) + 8);
    do
    {
      v10 = *v9++;
      v11 = *(v10 + 23);
      v12 = *(v10 + 8);
      if ((v11 & 0x80u) == 0)
      {
        v12 = v11;
      }

      v8 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      --v7;
    }

    while (v7);
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

    v8 += v16;
  }

  *(a1 + 64) = v8;
  return v8;
}

std::string *sub_15509B4(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_14C5A04(result);

    return sub_14C99B8(v4, a2);
  }

  return result;
}

uint64_t sub_1550A18(uint64_t a1)
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

void sub_1550AB8(uint64_t a1)
{
  sub_1550A18(a1);

  operator delete();
}

uint64_t sub_1550AF0(uint64_t a1)
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

uint64_t sub_1550B38(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

        if (v15 > 3)
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

char *sub_1550CF8(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1550E44(uint64_t a1)
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

uint64_t sub_1550F20(uint64_t a1)
{
  if (!a1)
  {

    sub_156DE54();
  }

  return sub_152B774(v3, a1, 0);
}

double sub_1550F7C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26EC2C0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

void *sub_1550FF8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26EC340;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

uint64_t sub_155107C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26EC3C0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = &qword_278E990;
  *(result + 48) = &qword_278E990;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 56) = 0;
  *(result + 80) = 0;
  return result;
}

void *sub_1551110(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26EC440;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  result[8] = &qword_278E990;
  result[9] = 0;
  result[10] = 0;
  result[11] = 0x4014000000000000;
  return result;
}

uint64_t sub_15511C0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26EC4C0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1551248(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26EC540;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_15512F0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26EC5C0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_155136C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26EC640;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

void *sub_1551410(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26EC6C0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = &qword_278E990;
  result[7] = 0;
  return result;
}

uint64_t sub_155149C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26EC740;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_1551544(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26EC7C0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  return result;
}

void *sub_15515EC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26EC840;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  return result;
}

uint64_t sub_1551674(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26EC8C0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_15516F0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_1534238(v2, a1, 0);
}

void *sub_1551750(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26EC9C0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_15517C8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26ECA40;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1551844(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26ECAC0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_15518C0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26ECB40;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

double sub_155193C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_15380BC(v2, a1, 0);
}

uint64_t sub_155199C(uint64_t a1)
{
  if (!a1)
  {

    sub_156DEC0();
  }

  return sub_153A9E0(v3, a1, 0);
}

void *sub_15519F8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26ECCC0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_1551A70(uint64_t a1)
{
  if (!a1)
  {

    sub_156DF2C();
  }

  return sub_153BC98(v3, a1, 0);
}

void *sub_1551ACC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26ECDC0;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = 0;
  return result;
}

uint64_t sub_1551B64(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26ECE40;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 76) = 1;
  return result;
}

uint64_t sub_1551C18(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26ECEC0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_1551CBC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26ECF40;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 64) = 0;
  return result;
}

double sub_1551D64(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_153EECC(v2, a1, 0);
}

void *sub_1551DC4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26ED040;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

uint64_t sub_1551E48(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26ED0C0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = &qword_278E990;
  *(result + 48) = 0;
  return result;
}

void *sub_1551EF0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26ED140;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_1551F74(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26ED1C0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

void *sub_1552000(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26ED240;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

double sub_15520A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26ED2C0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = a1;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = a1;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = a1;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = &qword_278E990;
  *(v2 + 176) = &qword_278E990;
  result = 0.0;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0;
  return result;
}

double sub_155218C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26ED340;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = a1;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = &qword_278E990;
  *(v2 + 128) = &qword_278E990;
  result = 0.0;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 1;
  return result;
}

uint64_t sub_1552260(uint64_t a1)
{
  if (!a1)
  {

    sub_156DF98();
  }

  return sub_1548B24(v3, a1, 0);
}

uint64_t sub_15522BC(uint64_t a1)
{
  if (!a1)
  {

    sub_156E004();
  }

  return sub_15494B0(v3, a1, 0);
}

uint64_t sub_1552318(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26ED4C0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  return result;
}

void *sub_15523B4(uint64_t a1)
{
  if (!a1)
  {

    sub_156E070();
  }

  return sub_154B2A4(v3, a1, 0);
}

void *sub_1552410(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26ED5C0;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_155248C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26ED640;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_1552508(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26ED6C0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

double sub_1552584(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26ED740;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 2;
  return result;
}

uint64_t sub_155260C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26ED7C0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_1552688(uint64_t a1)
{
  if (!a1)
  {

    sub_156E0DC();
  }

  return sub_154E420(v3, a1, 0);
}

void *sub_15526E4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26ED8C0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = 0;
  return result;
}

uint64_t sub_1552788(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26ED940;
  *(result + 8) = a1;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_155282C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26ED9C0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_15528CC(uint64_t a1)
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

void sub_155296C(uint64_t a1)
{
  sub_15528CC(a1);

  operator delete();
}

uint64_t sub_15529A4(uint64_t a1)
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
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_15529E8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v18 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v18, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v18 + 1);
    v7 = **v18;
    if (**v18 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v18, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v18 + 2);
      }
    }

    *v18 = v6;
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v16 = sub_194DB04((a1 + 24), v15);
      v13 = sub_1958890(v16, *v18, a3);
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
          return *v18;
        }

LABEL_24:
        *v18 = 0;
        return *v18;
      }

      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v12 = sub_11F1920((a1 + 8));
        v6 = *v18;
      }

      v13 = sub_1952690(v7, v12, v6, a3);
    }

    *v18 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }
  }

  return *v18;
}

char *sub_1552B20(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v6 = *(a1 + 8);
  if ((v6 & 1) == 0)
  {
    return v4;
  }

  v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *(v8 + 31);
  if (v9 < 0)
  {
    v10 = *(v8 + 8);
    v9 = *(v8 + 16);
  }

  else
  {
    v10 = (v8 + 8);
  }

  if (*a3 - v4 >= v9)
  {
    v11 = v9;
    memcpy(v4, v10, v9);
    v4 += v11;
    return v4;
  }

  return sub_1957130(a3, v10, v9, v4);
}

uint64_t sub_1552BE8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v1 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v1 = 0;
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

    v1 += v8;
  }

  *(a1 + 20) = v1;
  return v1;
}

void *sub_1552C7C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26EDB18;
  result[2] = 0;
  result[3] = &qword_278E990;
  return result;
}

uint64_t sub_1552D10(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26EDB98;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  v5 = *(a2 + 24);
  if (v5)
  {
    sub_1958E5C((a1 + 24), v5);
    v6 = *(a1 + 32);
    *(a1 + 24) += *(a2 + 24);
    memcpy(v6, *(a2 + 32), 4 * *(a2 + 24));
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v7 = *(a2 + 40);
  if (v7)
  {
    sub_1958E5C((a1 + 40), v7);
    v8 = *(a1 + 48);
    *(a1 + 40) += *(a2 + 40);
    memcpy(v8, *(a2 + 48), 4 * *(a2 + 40));
  }

  v9 = *(a2 + 8);
  if (v9)
  {
    sub_1957EF4(v4, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 56) = &qword_278E990;
  if (*(a2 + 16))
  {
    v10 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v10 = *v10;
    }

    sub_194EA1C((a1 + 56), (*(a2 + 56) & 0xFFFFFFFFFFFFFFFELL), v10);
  }

  v11 = *(a2 + 64);
  v12 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v11;
  *(a1 + 80) = v12;
  return a1;
}

void sub_1552E48(_Unwind_Exception *a1)
{
  sub_1956ABC((v1 + 3));
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1552E98(uint64_t a1)
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

  v5 = (a1 + 56);
  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_1956ABC(a1 + 40);
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1552F48(uint64_t a1)
{
  sub_1552E98(a1);

  operator delete();
}

uint64_t sub_1552F80(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
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
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 88) = 0;
    *(a1 + 80) = 0;
  }

  if ((v1 & 0x300) != 0)
  {
    *(a1 + 92) = 0x100000000;
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

uint64_t sub_1552FF4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v71 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, v71, a3[11].i32[1]) & 1) == 0)
  {
    v7 = (a1 + 8);
    do
    {
      v8 = (*v71 + 1);
      v9 = **v71;
      if (**v71 < 0)
      {
        v10 = *v8;
        v11 = v9 + (v10 << 7);
        v9 = v11 - 128;
        if (v10 < 0)
        {
          v8 = sub_1958824(*v71, v11 - 128);
          v9 = v12;
        }

        else
        {
          v8 = (*v71 + 2);
        }
      }

      *v71 = v8;
      v13 = v9 >> 3;
      if (v9 >> 3 > 6)
      {
        if (v9 >> 3 > 9)
        {
          if (v13 == 10)
          {
            if (v9 == 80)
            {
              v33 = v8 - 1;
              while (1)
              {
                *v71 = v33 + 1;
                v34 = v33[1];
                if (v33[1] < 0)
                {
                  v35 = v34 + (v33[2] << 7);
                  v34 = v35 - 128;
                  if (v33[2] < 0)
                  {
                    v33 = sub_1958770((v33 + 1), v35 - 128);
                    v34 = v36;
                  }

                  else
                  {
                    v33 += 3;
                  }
                }

                else
                {
                  v33 += 2;
                }

                *v71 = v33;
                v37 = *(a1 + 40);
                if (v37 == *(a1 + 44))
                {
                  v38 = v37 + 1;
                  sub_1958E5C((a1 + 40), v37 + 1);
                  *(*(a1 + 48) + 4 * v37) = v34;
                  v33 = *v71;
                }

                else
                {
                  *(*(a1 + 48) + 4 * v37) = v34;
                  v38 = v37 + 1;
                }

                *(a1 + 40) = v38;
                if (!v33)
                {
                  goto LABEL_142;
                }

                if (*a3 <= v33 || *v33 != 80)
                {
                  goto LABEL_135;
                }
              }
            }

            if (v9 == 82)
            {
              v42 = sub_1958918((a1 + 40), v8, a3);
              goto LABEL_134;
            }

LABEL_127:
            if (v9)
            {
              v69 = (v9 & 7) == 4;
            }

            else
            {
              v69 = 1;
            }

            if (v69)
            {
              if (v8)
              {
                a3[10].i32[0] = v9 - 1;
                break;
              }

LABEL_142:
              *v71 = 0;
              break;
            }

            if (*v7)
            {
              v70 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v70 = sub_11F1920((a1 + 8));
              v8 = *v71;
            }

            v42 = sub_1952690(v9, v70, v8, a3);
            goto LABEL_134;
          }

          if (v13 == 11)
          {
            if (v9 != 88)
            {
              goto LABEL_127;
            }

            v5 |= 0x80u;
            v54 = v8 + 1;
            v55 = *v8;
            if (*v8 < 0)
            {
              v56 = *v54;
              v55 = v55 + (v56 << 7) - 128;
              if (v56 < 0)
              {
                v67 = sub_1958770(v8, v55);
                *v71 = v67;
                *(a1 + 88) = v68;
                if (!v67)
                {
                  goto LABEL_142;
                }

                continue;
              }

              v54 = v8 + 2;
            }

            *v71 = v54;
            *(a1 + 88) = v55;
          }

          else
          {
            if (v13 != 12 || v9 != 96)
            {
              goto LABEL_127;
            }

            v5 |= 0x100u;
            v24 = v8 + 1;
            v25 = *v8;
            if (*v8 < 0)
            {
              v26 = *v24;
              v25 = v25 + (v26 << 7) - 128;
              if (v26 < 0)
              {
                v61 = sub_1958770(v8, v25);
                *v71 = v61;
                *(a1 + 92) = v62;
                if (!v61)
                {
                  goto LABEL_142;
                }

                continue;
              }

              v24 = v8 + 2;
            }

            *v71 = v24;
            *(a1 + 92) = v25;
          }
        }

        else
        {
          if (v13 == 7)
          {
            if (v9 != 61)
            {
              goto LABEL_127;
            }

            v5 |= 0x20u;
            *(a1 + 80) = *v8;
            *v71 = v8 + 4;
            continue;
          }

          if (v13 == 8)
          {
            if (v9 != 64)
            {
              if (v9 != 66)
              {
                goto LABEL_127;
              }

              *&v72 = a1 + 24;
              *(&v72 + 1) = sub_1552D00;
              v73 = a1 + 8;
              v74 = 8;
              v42 = sub_1216588(a3, v8, &v72);
              goto LABEL_134;
            }

            v43 = (v8 - 1);
LABEL_82:
            *v71 = v43 + 1;
            v44 = *(v43 + 1);
            v45 = (v43 + 2);
            if (v44 < 0)
            {
              v46 = *v45;
              v47 = (v46 << 7) + v44;
              LODWORD(v44) = v47 - 128;
              if ((v46 & 0x80000000) == 0)
              {
                v45 = (v43 + 3);
                goto LABEL_85;
              }

              *v71 = sub_19587DC(v43 + 1, (v47 - 128));
              if (!*v71)
              {
                goto LABEL_142;
              }

              LODWORD(v44) = v50;
            }

            else
            {
LABEL_85:
              *v71 = v45;
            }

            if ((v44 - 1) > 1)
            {
              sub_13B67EC();
            }

            else
            {
              v48 = *(a1 + 24);
              if (v48 == *(a1 + 28))
              {
                v49 = v48 + 1;
                sub_1958E5C((a1 + 24), v48 + 1);
                *(*(a1 + 32) + 4 * v48) = v44;
              }

              else
              {
                *(*(a1 + 32) + 4 * v48) = v44;
                v49 = v48 + 1;
              }

              *(a1 + 24) = v49;
            }

            v43 = *v71;
            if (*a3 <= *v71 || **v71 != 64)
            {
              continue;
            }

            goto LABEL_82;
          }

          if (v13 != 9 || v9 != 72)
          {
            goto LABEL_127;
          }

          v5 |= 0x40u;
          v18 = v8 + 1;
          v19 = *v8;
          if (*v8 < 0)
          {
            v20 = *v18;
            v19 = v19 + (v20 << 7) - 128;
            if (v20 < 0)
            {
              v59 = sub_1958770(v8, v19);
              *v71 = v59;
              *(a1 + 84) = v60;
              if (!v59)
              {
                goto LABEL_142;
              }

              continue;
            }

            v18 = v8 + 2;
          }

          *v71 = v18;
          *(a1 + 84) = v19;
        }
      }

      else if (v9 >> 3 > 3)
      {
        if (v13 == 4)
        {
          if (v9 != 32)
          {
            goto LABEL_127;
          }

          v31 = v8 + 1;
          v30 = *v8;
          if (v30 < 0)
          {
            v32 = *v31;
            v30 = (v32 << 7) + v30 - 128;
            if ((v32 & 0x80000000) == 0)
            {
              v31 = v8 + 2;
              goto LABEL_59;
            }

            *v71 = sub_19587DC(v8, v30);
            if (!*v71)
            {
              goto LABEL_142;
            }
          }

          else
          {
LABEL_59:
            *v71 = v31;
          }

          if (v30 > 1)
          {
            sub_12E8500();
          }

          else
          {
            *(a1 + 16) |= 8u;
            *(a1 + 72) = v30;
          }

          continue;
        }

        if (v13 != 5)
        {
          if (v13 != 6 || v9 != 48)
          {
            goto LABEL_127;
          }

          v22 = v8 + 1;
          v21 = *v8;
          if (v21 < 0)
          {
            v23 = *v22;
            v21 = (v23 << 7) + v21 - 128;
            if ((v23 & 0x80000000) == 0)
            {
              v22 = v8 + 2;
              goto LABEL_37;
            }

            *v71 = sub_19587DC(v8, v21);
            if (!*v71)
            {
              goto LABEL_142;
            }
          }

          else
          {
LABEL_37:
            *v71 = v22;
          }

          if ((v21 - 1) > 2)
          {
            sub_12E84C8();
          }

          else
          {
            *(a1 + 16) |= 0x200u;
            *(a1 + 96) = v21;
          }

          continue;
        }

        if (v9 != 40)
        {
          goto LABEL_127;
        }

        v5 |= 0x10u;
        v51 = v8 + 1;
        v52 = *v8;
        if (*v8 < 0)
        {
          v53 = *v51;
          v52 = v52 + (v53 << 7) - 128;
          if (v53 < 0)
          {
            v65 = sub_1958770(v8, v52);
            *v71 = v65;
            *(a1 + 76) = v66;
            if (!v65)
            {
              goto LABEL_142;
            }

            continue;
          }

          v51 = v8 + 2;
        }

        *v71 = v51;
        *(a1 + 76) = v52;
      }

      else
      {
        if (v13 == 1)
        {
          if (v9 != 8)
          {
            goto LABEL_127;
          }

          v5 |= 2u;
          v27 = v8 + 1;
          v28 = *v8;
          if (*v8 < 0)
          {
            v29 = *v27;
            v28 = v28 + (v29 << 7) - 128;
            if (v29 < 0)
            {
              v63 = sub_1958770(v8, v28);
              *v71 = v63;
              *(a1 + 64) = v64;
              if (!v63)
              {
                goto LABEL_142;
              }

              continue;
            }

            v27 = v8 + 2;
          }

          *v71 = v27;
          *(a1 + 64) = v28;
          continue;
        }

        if (v13 == 2)
        {
          if (v9 != 18)
          {
            goto LABEL_127;
          }

          *(a1 + 16) |= 1u;
          v39 = *(a1 + 8);
          v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
          if (v39)
          {
            v40 = *v40;
          }

          v41 = sub_194DB04((a1 + 56), v40);
          v42 = sub_1958890(v41, *v71, a3);
LABEL_134:
          *v71 = v42;
          if (!v42)
          {
            goto LABEL_142;
          }

          continue;
        }

        if (v13 != 3 || v9 != 24)
        {
          goto LABEL_127;
        }

        v5 |= 4u;
        v15 = v8 + 1;
        v16 = *v8;
        if (*v8 < 0)
        {
          v17 = *v15;
          v16 = v16 + (v17 << 7) - 128;
          if (v17 < 0)
          {
            v57 = sub_1958770(v8, v16);
            *v71 = v57;
            *(a1 + 68) = v58;
            if (!v57)
            {
              goto LABEL_142;
            }

            continue;
          }

          v15 = v8 + 2;
        }

        *v71 = v15;
        *(a1 + 68) = v16;
      }

LABEL_135:
      ;
    }

    while ((sub_195ADC0(a3, v71, a3[11].i32[1]) & 1) == 0);
  }

  *(a1 + 16) |= v5;
  return *v71;
}

char *sub_1553704(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
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
    v6 = sub_128AEEC(a3, 2, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 68);
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
        LOBYTE(v14) = v6[2];
        do
        {
          *(v11 - 1) = v14 | 0x80;
          v14 = v13 >> 7;
          *v11++ = v13 >> 7;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v17 = *(a1 + 72);
    *v11 = 32;
    v11[1] = v17;
    if (v17 > 0x7F)
    {
      v11[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v11[2] = v17 >> 7;
      v16 = v11 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v19) = v11[2];
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
      v16 = v11 + 2;
    }
  }

  else
  {
    v16 = v11;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v22 = *(a1 + 76);
    *v16 = 40;
    v16[1] = v22;
    if (v22 > 0x7F)
    {
      v16[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v16[2] = v22 >> 7;
      v21 = v16 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v16) = v16[2];
        do
        {
          *(v21 - 1) = v16 | 0x80;
          LODWORD(v16) = v23 >> 7;
          *v21++ = v23 >> 7;
          v24 = v23 >> 14;
          v23 >>= 7;
        }

        while (v24);
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

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v26 = *(a1 + 96);
    *v21 = 48;
    v21[1] = v26;
    if (v26 > 0x7F)
    {
      v21[1] = v26 | 0x80;
      v27 = v26 >> 7;
      v21[2] = v26 >> 7;
      v25 = v21 + 3;
      if (v26 >= 0x4000)
      {
        LOBYTE(v21) = v21[2];
        do
        {
          *(v25 - 1) = v21 | 0x80;
          v21 = (v27 >> 7);
          *v25++ = v27 >> 7;
          v28 = v27 >> 14;
          v27 >>= 7;
        }

        while (v28);
      }
    }

    else
    {
      v25 = v21 + 2;
    }
  }

  else
  {
    v25 = v21;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v29 = *(a1 + 80);
    *v25 = 61;
    *(v25 + 1) = v29;
    v25 += 5;
  }

  v30 = *(a1 + 24);
  if (v30 < 1)
  {
    v33 = v25;
  }

  else
  {
    for (i = 0; i != v30; ++i)
    {
      if (*a3 <= v25)
      {
        v25 = sub_225EB68(a3, v25);
      }

      v32 = *(*(a1 + 32) + 4 * i);
      *v25 = 64;
      v25[1] = v32;
      if (v32 > 0x7F)
      {
        v25[1] = v32 | 0x80;
        v34 = v32 >> 7;
        v25[2] = v32 >> 7;
        v33 = v25 + 3;
        if (v32 >= 0x4000)
        {
          LOBYTE(v35) = v25[2];
          do
          {
            *(v33 - 1) = v35 | 0x80;
            v35 = v34 >> 7;
            *v33++ = v34 >> 7;
            v36 = v34 >> 14;
            v34 >>= 7;
          }

          while (v36);
        }
      }

      else
      {
        v33 = v25 + 2;
      }

      v25 = v33;
    }
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v38 = *(a1 + 84);
    *v33 = 72;
    v33[1] = v38;
    if (v38 > 0x7F)
    {
      v33[1] = v38 | 0x80;
      v39 = v38 >> 7;
      v33[2] = v38 >> 7;
      v37 = v33 + 3;
      if (v38 >= 0x4000)
      {
        LOBYTE(v33) = v33[2];
        do
        {
          *(v37 - 1) = v33 | 0x80;
          LODWORD(v33) = v39 >> 7;
          *v37++ = v39 >> 7;
          v40 = v39 >> 14;
          v39 >>= 7;
        }

        while (v40);
      }
    }

    else
    {
      v37 = v33 + 2;
    }
  }

  else
  {
    v37 = v33;
  }

  v41 = *(a1 + 40);
  if (v41 < 1)
  {
    v44 = v37;
  }

  else
  {
    for (j = 0; j != v41; ++j)
    {
      if (*a3 <= v37)
      {
        v37 = sub_225EB68(a3, v37);
      }

      v43 = *(*(a1 + 48) + 4 * j);
      *v37 = 80;
      v37[1] = v43;
      if (v43 > 0x7F)
      {
        v37[1] = v43 | 0x80;
        v45 = v43 >> 7;
        v37[2] = v43 >> 7;
        v44 = v37 + 3;
        if (v43 >= 0x4000)
        {
          LOBYTE(v46) = v37[2];
          do
          {
            *(v44 - 1) = v46 | 0x80;
            v46 = v45 >> 7;
            *v44++ = v45 >> 7;
            v47 = v45 >> 14;
            v45 >>= 7;
          }

          while (v47);
        }
      }

      else
      {
        v44 = v37 + 2;
      }

      v37 = v44;
    }
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v44)
    {
      v44 = sub_225EB68(a3, v44);
    }

    v49 = *(a1 + 88);
    *v44 = 88;
    v44[1] = v49;
    if (v49 > 0x7F)
    {
      v44[1] = v49 | 0x80;
      v50 = v49 >> 7;
      v44[2] = v49 >> 7;
      v48 = v44 + 3;
      if (v49 >= 0x4000)
      {
        LOBYTE(v44) = v44[2];
        do
        {
          *(v48 - 1) = v44 | 0x80;
          LODWORD(v44) = v50 >> 7;
          *v48++ = v50 >> 7;
          v51 = v50 >> 14;
          v50 >>= 7;
        }

        while (v51);
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

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v48)
    {
      v48 = sub_225EB68(a3, v48);
    }

    v53 = *(a1 + 92);
    *v48 = 96;
    v48[1] = v53;
    if (v53 > 0x7F)
    {
      v48[1] = v53 | 0x80;
      v54 = v53 >> 7;
      v48[2] = v53 >> 7;
      v52 = v48 + 3;
      if (v53 >= 0x4000)
      {
        LOBYTE(v55) = v48[2];
        do
        {
          *(v52 - 1) = v55 | 0x80;
          v55 = v54 >> 7;
          *v52++ = v54 >> 7;
          v56 = v54 >> 14;
          v54 >>= 7;
        }

        while (v56);
      }
    }

    else
    {
      v52 = v48 + 2;
    }
  }

  else
  {
    v52 = v48;
  }

  v57 = *(a1 + 8);
  if ((v57 & 1) == 0)
  {
    return v52;
  }

  v59 = v57 & 0xFFFFFFFFFFFFFFFCLL;
  v60 = *(v59 + 31);
  if (v60 < 0)
  {
    v61 = *(v59 + 8);
    v60 = *(v59 + 16);
  }

  else
  {
    v61 = (v59 + 8);
  }

  if (*a3 - v52 >= v60)
  {
    v62 = v60;
    memcpy(v52, v61, v60);
    v52 += v62;
    return v52;
  }

  return sub_1957130(a3, v61, v60, v52);
}

uint64_t sub_1553D80(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 32) + 4 * v3);
      if (v5 < 0)
      {
        v6 = 10;
      }

      else
      {
        v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
      }

      v4 += v6;
      ++v3;
    }

    while (v2 != v3);
  }

  else
  {
    v4 = 0;
  }

  result = v4 + sub_1959E5C((a1 + 40)) + v2 + *(a1 + 40);
  v8 = *(a1 + 16);
  if (!v8)
  {
    goto LABEL_22;
  }

  if (v8)
  {
    v11 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    result += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_32;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  result += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_33:
    v14 = *(a1 + 72);
    if (v14 < 0)
    {
      v15 = 11;
    }

    else
    {
      v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v15;
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_32:
  result += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) != 0)
  {
    goto LABEL_33;
  }

LABEL_14:
  if ((v8 & 0x10) != 0)
  {
LABEL_15:
    result += ((9 * (__clz(*(a1 + 76) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  if ((v8 & 0x20) != 0)
  {
    result += 5;
  }

  if ((v8 & 0x40) != 0)
  {
    result += ((9 * (__clz(*(a1 + 84) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v8 & 0x80) != 0)
  {
    result += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_22:
  if ((v8 & 0x300) != 0)
  {
    if ((v8 & 0x100) != 0)
    {
      result += ((9 * (__clz(*(a1 + 92) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 0x200) != 0)
    {
      v9 = *(a1 + 96);
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

  v16 = *(a1 + 8);
  if (v16)
  {
    v17 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    result += v18;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_155400C(std::string *result, uint64_t a2)
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

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = SLODWORD(v3[1].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[1].__r_.__value_.__r.__words[2], v9 + v8);
    data = v3[2].__r_.__value_.__l.__data_;
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) += *(a2 + 40);
    result = memcpy(&data[4 * v9], *(a2 + 48), 4 * *(a2 + 40));
  }

  v11 = *(a2 + 16);
  if (v11)
  {
    if (v11)
    {
      v13 = *(a2 + 56);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v14 = v3->__r_.__value_.__l.__size_;
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      result = sub_194EA1C(&v3[2].__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
      if ((v11 & 2) == 0)
      {
LABEL_8:
        if ((v11 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_30;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_8;
    }

    LODWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
    if ((v11 & 4) == 0)
    {
LABEL_9:
      if ((v11 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_31;
    }

LABEL_30:
    HIDWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 68);
    if ((v11 & 8) == 0)
    {
LABEL_10:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_32;
    }

LABEL_31:
    LODWORD(v3[3].__r_.__value_.__l.__data_) = *(a2 + 72);
    if ((v11 & 0x10) == 0)
    {
LABEL_11:
      if ((v11 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_33;
    }

LABEL_32:
    HIDWORD(v3[3].__r_.__value_.__r.__words[0]) = *(a2 + 76);
    if ((v11 & 0x20) == 0)
    {
LABEL_12:
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_34;
    }

LABEL_33:
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 80);
    if ((v11 & 0x40) == 0)
    {
LABEL_13:
      if ((v11 & 0x80) == 0)
      {
LABEL_15:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v11;
        goto LABEL_16;
      }

LABEL_14:
      LODWORD(v3[3].__r_.__value_.__r.__words[2]) = *(a2 + 88);
      goto LABEL_15;
    }

LABEL_34:
    HIDWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 84);
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
  if ((v11 & 0x300) != 0)
  {
    if ((v11 & 0x100) != 0)
    {
      HIDWORD(v3[3].__r_.__value_.__r.__words[2]) = *(a2 + 92);
    }

    if ((v11 & 0x200) != 0)
    {
      LODWORD(v3[4].__r_.__value_.__l.__data_) = *(a2 + 96);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v11;
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_15541F8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26EDC18;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_1957EF4((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  return a1;
}

void sub_155427C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_15542AC(void *a1)
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

void sub_1554320(void *a1)
{
  sub_15542AC(a1);

  operator delete();
}

char *sub_1554358(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v20, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v20 + 1;
    v8 = *v20;
    if (*v20 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v20, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v20 + 2;
      }
    }

    v20 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      if (v8 != 25)
      {
        goto LABEL_13;
      }

      v18 = *v7;
      v16 = v7 + 8;
      v5 |= 4u;
      *(a1 + 40) = v18;
LABEL_26:
      v20 = v16;
      goto LABEL_27;
    }

    if (v11 == 2)
    {
      if (v8 != 17)
      {
        goto LABEL_13;
      }

      v17 = *v7;
      v16 = v7 + 8;
      v5 |= 2u;
      *(a1 + 32) = v17;
      goto LABEL_26;
    }

    if (v11 == 1 && v8 == 9)
    {
      v19 = *v7;
      v16 = v7 + 8;
      v5 |= 1u;
      *(a1 + 24) = v19;
      goto LABEL_26;
    }

LABEL_13:
    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v7 = v20;
    }

    v20 = sub_1952690(v8, v15, v7, a3);
    if (!v20)
    {
      goto LABEL_32;
    }

LABEL_27:
    if (sub_195ADC0(a3, &v20, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_32:
  v20 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v20;
}

char *sub_15544E4(uint64_t a1, unint64_t __dst, _DWORD *a3)
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
        goto LABEL_14;
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
  *v4 = 17;
  *(v4 + 1) = v8;
  v4 += 9;
  if ((v6 & 4) != 0)
  {
LABEL_11:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v9 = *(a1 + 40);
    *v4 = 25;
    *(v4 + 1) = v9;
    v4 += 9;
  }

LABEL_14:
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

uint64_t sub_1554640(uint64_t a1)
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

  if ((v1 & 4) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 7) != 0)
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

uint64_t sub_15546B8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26EDC98;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_1957EF4((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  return a1;
}

void sub_1554744(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1554778(void *a1)
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

void sub_15547EC(void *a1)
{
  sub_1554778(a1);

  operator delete();
}

uint64_t sub_1554824(uint64_t a1)
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

char *sub_1554854(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_1554A54(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

uint64_t sub_1554C64(uint64_t a1)
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

std::string *sub_1554CF0(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_10;
  }

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

      goto LABEL_14;
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

    goto LABEL_15;
  }

LABEL_14:
  result[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    result[2].__r_.__value_.__l.__size_ = *(a2 + 56);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_15:
  result[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v2 & 0x20) != 0)
  {
LABEL_8:
    result[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
  }

LABEL_9:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_10:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1554D9C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26EDD18;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_1957EF4((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  return a1;
}

void sub_1554E20(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1554E50(void *a1)
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

void sub_1554EC4(void *a1)
{
  sub_1554E50(a1);

  operator delete();
}

uint64_t sub_1554EFC(uint64_t a1)
{
  if ((*(a1 + 16) & 0x3F) != 0)
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

char *sub_1554F24(uint64_t a1, char *a2, int32x2_t *a3)
{
  v45 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v45, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v45 + 1;
    v8 = *v45;
    if (*v45 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v45, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v45 + 2;
      }
    }

    v45 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_45;
      }

      v5 |= 8u;
      v21 = v7 + 1;
      v22 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      v23 = *v21;
      v22 = v22 + (v23 << 7) - 128;
      if ((v23 & 0x80000000) == 0)
      {
        v21 = v7 + 2;
LABEL_34:
        v45 = v21;
        *(a1 + 36) = v22;
        goto LABEL_56;
      }

      v35 = sub_1958770(v7, v22);
      v45 = v35;
      *(a1 + 36) = v36;
      if (!v35)
      {
        goto LABEL_73;
      }
    }

    else if (v11 == 5)
    {
      if (v8 != 40)
      {
        goto LABEL_45;
      }

      v5 |= 0x10u;
      v27 = v7 + 1;
      v28 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      v29 = *v27;
      v28 = v28 + (v29 << 7) - 128;
      if ((v29 & 0x80000000) == 0)
      {
        v27 = v7 + 2;
LABEL_44:
        v45 = v27;
        *(a1 + 40) = v28;
        goto LABEL_56;
      }

      v43 = sub_1958770(v7, v28);
      v45 = v43;
      *(a1 + 40) = v44;
      if (!v43)
      {
        goto LABEL_73;
      }
    }

    else
    {
      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_45;
      }

      v5 |= 0x20u;
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
        v45 = v15;
        *(a1 + 44) = v16;
        goto LABEL_56;
      }

      v37 = sub_1958770(v7, v16);
      v45 = v37;
      *(a1 + 44) = v38;
      if (!v37)
      {
        goto LABEL_73;
      }
    }

LABEL_56:
    if (sub_195ADC0(a3, &v45, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_45;
    }

    v5 |= 1u;
    v18 = v7 + 1;
    v19 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    v20 = *v18;
    v19 = v19 + (v20 << 7) - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_29:
      v45 = v18;
      *(a1 + 24) = v19;
      goto LABEL_56;
    }

    v33 = sub_1958770(v7, v19);
    v45 = v33;
    *(a1 + 24) = v34;
    if (!v33)
    {
      goto LABEL_73;
    }

    goto LABEL_56;
  }

  if (v11 == 2)
  {
    if (v8 != 16)
    {
      goto LABEL_45;
    }

    v5 |= 2u;
    v24 = v7 + 1;
    v25 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    v26 = *v24;
    v25 = v25 + (v26 << 7) - 128;
    if ((v26 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_39:
      v45 = v24;
      *(a1 + 28) = v25;
      goto LABEL_56;
    }

    v41 = sub_1958770(v7, v25);
    v45 = v41;
    *(a1 + 28) = v42;
    if (!v41)
    {
      goto LABEL_73;
    }

    goto LABEL_56;
  }

  if (v11 == 3 && v8 == 24)
  {
    v5 |= 4u;
    LODWORD(v13) = *v7;
    if ((v13 & 0x80000000) != 0)
    {
      v13 = (v7[1] << 7) + v13 - 128;
      if (v7[1] < 0)
      {
        v39 = sub_19587DC(v7, v13);
        v45 = v39;
        *(a1 + 32) = v40;
        if (!v39)
        {
          goto LABEL_73;
        }

        goto LABEL_56;
      }

      v14 = v7 + 2;
    }

    else
    {
      v14 = v7 + 1;
    }

    v45 = v14;
    *(a1 + 32) = v13;
    goto LABEL_56;
  }

LABEL_45:
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
      v7 = v45;
    }

    v45 = sub_1952690(v8, v32, v7, a3);
    if (!v45)
    {
      goto LABEL_73;
    }

    goto LABEL_56;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_73:
  v45 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v45;
}