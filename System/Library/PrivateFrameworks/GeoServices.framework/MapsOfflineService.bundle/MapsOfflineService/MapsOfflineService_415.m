char *sub_16E92C0(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_16E9CA0(v8, v10, a3);
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

uint64_t sub_16E9400(uint64_t a1)
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
      v7 = sub_16E9F88(v6);
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

void sub_16E94A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_156618C((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
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

BOOL sub_16E9564(uint64_t a1)
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
    v5 = sub_195228C(*(*(a1 + 32) + 8 * v2) + 16);
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_16E95D0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_2701708;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = &qword_278E990;
  *(a1 + 56) = &qword_278E990;
  *(a1 + 64) = &qword_278E990;
  *(a1 + 72) = &qword_278E990;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return a1;
}

void sub_16E964C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_16E967C(uint64_t a1)
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

  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C((a1 + 72));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_13:
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16E9764(uint64_t a1)
{
  sub_16E967C(a1);

  operator delete();
}

unsigned __int8 *sub_16E979C(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
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
      v5 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
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
      v7 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
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

    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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
    v6 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
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
  if ((v3 & 0x70) != 0)
  {
    *(a1 + 88) = 0;
    *(a1 + 80) = 0;
  }

  v9 = *(a1 + 8);
  v8 = a1 + 8;
  *(v8 + 32) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

uint64_t sub_16E98D8(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 3)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_57;
        }

        *(a1 + 40) |= 1u;
        v20 = *(a1 + 8);
        v17 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v17 = *v17;
        }

        v18 = (a1 + 48);
      }

      else if (v11 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_57;
        }

        *(a1 + 40) |= 2u;
        v26 = *(a1 + 8);
        v17 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v17 = *v17;
        }

        v18 = (a1 + 56);
      }

      else
      {
        if (v11 != 3 || v8 != 26)
        {
          goto LABEL_57;
        }

        *(a1 + 40) |= 4u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = (a1 + 64);
      }

      goto LABEL_53;
    }

    if (v8 >> 3 > 5)
    {
      if (v11 != 6)
      {
        if (v11 != 7 || v8 != 58)
        {
          goto LABEL_57;
        }

        *(a1 + 40) |= 8u;
        v19 = *(a1 + 8);
        v17 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v17 = *v17;
        }

        v18 = (a1 + 72);
LABEL_53:
        v27 = sub_194DB04(v18, v17);
        v28 = sub_1958890(v27, *v32, a3);
        goto LABEL_54;
      }

      if (v8 != 48)
      {
        goto LABEL_57;
      }

      v24 = v7 + 1;
      v23 = *v7;
      if (v23 < 0)
      {
        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if (v25 < 0)
        {
          *v32 = sub_19587DC(v7, v23);
          if (!*v32)
          {
            goto LABEL_78;
          }

          goto LABEL_47;
        }

        v24 = v7 + 2;
      }

      *v32 = v24;
LABEL_47:
      if (v23 > 3)
      {
        sub_12E84C8();
      }

      else
      {
        *(a1 + 40) |= 0x40u;
        *(a1 + 88) = v23;
      }

      goto LABEL_55;
    }

    if (v11 != 4)
    {
      break;
    }

    if (v8 != 32)
    {
      goto LABEL_57;
    }

    v21 = v7 + 1;
    v22 = *v7;
    if (v22 < 0)
    {
      v22 = (*v21 << 7) + v22 - 128;
      if (*v21 < 0)
      {
        v21 = sub_19587DC(v7, v22);
      }

      else
      {
        v21 = v7 + 2;
      }
    }

    v5 |= 0x10u;
    *v32 = v21;
    *(a1 + 80) = -(v22 & 1) ^ (v22 >> 1);
    if (!v21)
    {
      goto LABEL_78;
    }

LABEL_55:
    if (sub_195ADC0(a3, v32, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 5 && v8 == 40)
  {
    v13 = v7 + 1;
    v12 = *v7;
    if (v12 < 0)
    {
      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if (v14 < 0)
      {
        *v32 = sub_19587DC(v7, v12);
        if (!*v32)
        {
          goto LABEL_78;
        }

        goto LABEL_16;
      }

      v13 = v7 + 2;
    }

    *v32 = v13;
LABEL_16:
    if (v12 > 2)
    {
      sub_12E85B8();
    }

    else
    {
      *(a1 + 40) |= 0x20u;
      *(a1 + 84) = v12;
    }

    goto LABEL_55;
  }

LABEL_57:
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
    if (v8 - 7600 > 0x18F)
    {
      v30 = *(a1 + 8);
      if (v30)
      {
        v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v31 = sub_11F1920((a1 + 8));
        v7 = *v32;
      }

      v28 = sub_1952690(v8, v31, v7, a3);
    }

    else
    {
      v28 = sub_19525AC((a1 + 16), v8, v7, &off_277E7C0, (a1 + 8), a3);
    }

LABEL_54:
    *v32 = v28;
    if (!v28)
    {
      goto LABEL_78;
    }

    goto LABEL_55;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_78:
  *v32 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v32;
}

char *sub_16E9CA0(uint64_t a1, char *a2, void *a3)
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

LABEL_8:
      v4 = sub_128AEEC(a3, 3, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v4);
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    v7 = v4;
    goto LABEL_16;
  }

LABEL_9:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 80);
  *v4 = 32;
  v9 = (2 * v8) ^ (v8 >> 31);
  v4[1] = (2 * v8) ^ (v8 >> 31);
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
  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v14 = *(a1 + 84);
    *v7 = 40;
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

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v13)
    {
      v13 = sub_225EB68(a3, v13);
    }

    v18 = *(a1 + 88);
    *v13 = 48;
    v13[1] = v18;
    if (v18 > 0x7F)
    {
      v13[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v13[2] = v18 >> 7;
      v17 = v13 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v20) = v13[2];
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
      v17 = v13 + 2;
    }
  }

  else
  {
    v17 = v13;
  }

  if ((v6 & 8) != 0)
  {
    v17 = sub_128AEEC(a3, 7, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v17);
  }

  if (*(a1 + 26))
  {
    v17 = sub_1953428(a1 + 16, 950, 1000, v17, a3);
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

uint64_t sub_16E9F88(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 0x7F) == 0)
  {
    goto LABEL_31;
  }

  if (v3)
  {
    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    result += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  v7 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v8 = *(v7 + 23);
  v9 = *(v7 + 8);
  if ((v8 & 0x80u) == 0)
  {
    v9 = v8;
  }

  result += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_16:
  v10 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v11 = *(v10 + 23);
  v12 = *(v10 + 8);
  if ((v11 & 0x80u) == 0)
  {
    v12 = v11;
  }

  result += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_19:
  v13 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v14 = *(v13 + 23);
  v15 = *(v13 + 8);
  if ((v14 & 0x80u) == 0)
  {
    v15 = v14;
  }

  result += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  result += ((9 * (__clz((2 * *(a1 + 80)) ^ (*(a1 + 80) >> 31) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

LABEL_23:
  v16 = *(a1 + 84);
  if (v16 < 0)
  {
    v17 = 11;
  }

  else
  {
    v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v17;
  if ((v3 & 0x40) != 0)
  {
LABEL_27:
    v18 = *(a1 + 88);
    if (v18 < 0)
    {
      v19 = 11;
    }

    else
    {
      v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v19;
  }

LABEL_31:
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

  *(a1 + 44) = result;
  return result;
}

void sub_16EA1A8(uint64_t a1, uint64_t a2)
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

      goto LABEL_24;
    }

LABEL_21:
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

      goto LABEL_27;
    }

LABEL_24:
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

      goto LABEL_28;
    }

LABEL_27:
    *(a1 + 80) = *(a2 + 80);
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
      *(a1 + 88) = *(a2 + 88);
      goto LABEL_10;
    }

LABEL_28:
    *(a1 + 84) = *(a2 + 84);
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

uint64_t sub_16EA354(uint64_t a1)
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

void sub_16EA3F4(uint64_t a1)
{
  sub_16EA354(a1);

  operator delete();
}

uint64_t sub_16EA42C(uint64_t a1)
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

uint64_t sub_16EA474(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 != 2)
    {
      if (v7 >> 3 == 1 && v7 == 8)
      {
        v19 = v6 + 1;
        v18 = *v6;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if (v20 < 0)
        {
          *v22 = sub_19587DC(v6, v18);
          if (!*v22)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v19 = v6 + 2;
LABEL_28:
          *v22 = v19;
        }

        if (v18 > 3)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v18;
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

LABEL_39:
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
      goto LABEL_23;
    }

    if (v7 != 18)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = sub_194DB04((a1 + 24), v16);
    v14 = sub_1958890(v17, *v22, a3);
LABEL_23:
    *v22 = v14;
    if (!v14)
    {
      goto LABEL_39;
    }
  }

  return *v22;
}

char *sub_16EA634(uint64_t a1, char *__dst, void *a3)
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

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v14)
  {
    v16 = v14;
    memcpy(v6, v15, v14);
    v6 += v16;
    return v6;
  }

  return sub_1957130(a3, v15, v14, v6);
}

uint64_t sub_16EA77C(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    result = sub_15B0A58(a1);
  }

  else
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    v6 = *(a1 + 32);
    v7 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
    if (v6 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 10;
    }

    result = v4 + v5 + v8 + 2;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    result += v12;
  }

  *(a1 + 20) = result;
  return result;
}

void *sub_16EA86C(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_2701808;
  result[1] = v3;
  result[2] = 0;
  result[3] = a2;
  result[4] = 0;
  result[5] = 0;
  result[6] = a2;
  result[7] = 0;
  result[8] = 0;
  result[9] = a2;
  result[10] = 0;
  result[11] = 0;
  result[12] = 0;
  result[13] = a2;
  result[14] = &qword_278E990;
  result[15] = &qword_278E990;
  result[16] = &qword_278E990;
  result[17] = &qword_278E990;
  result[18] = &qword_278E990;
  result[19] = &qword_278E990;
  result[20] = &qword_278E990;
  result[21] = &qword_278E990;
  result[22] = &qword_278E990;
  result[23] = &qword_278E990;
  result[24] = &qword_278E990;
  result[25] = &qword_278E990;
  result[26] = &qword_278E990;
  result[27] = &qword_278E990;
  result[28] = &qword_278E990;
  result[29] = &qword_278E990;
  result[30] = &qword_278E990;
  return result;
}

uint64_t sub_16EA8DC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2701808;
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

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = *(a2 + 88);
    v17 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1762460((a1 + 72), v17, (v16 + 8), v15, **(a1 + 88) - *(a1 + 80));
    v18 = *(a1 + 80) + v15;
    *(a1 + 80) = v18;
    v19 = *(a1 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v20 = *(a2 + 96);
  if (v20)
  {
    sub_1959094((a1 + 96), v20);
    v21 = *(a1 + 104);
    *(a1 + 96) += *(a2 + 96);
    memcpy(v21, *(a2 + 104), 8 * *(a2 + 96));
  }

  v22 = *(a2 + 8);
  if (v22)
  {
    sub_1957EF4(v4, (v22 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 112) = &qword_278E990;
  v23 = *(a2 + 16);
  if (v23)
  {
    v24 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v24 = *v24;
    }

    sub_194EA1C((a1 + 112), (*(a2 + 112) & 0xFFFFFFFFFFFFFFFELL), v24);
    v23 = *(a2 + 16);
  }

  *(a1 + 120) = &qword_278E990;
  if ((v23 & 2) != 0)
  {
    v25 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v25 = *v25;
    }

    sub_194EA1C((a1 + 120), (*(a2 + 120) & 0xFFFFFFFFFFFFFFFELL), v25);
    v23 = *(a2 + 16);
  }

  *(a1 + 128) = &qword_278E990;
  if ((v23 & 4) != 0)
  {
    v26 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v26 = *v26;
    }

    sub_194EA1C((a1 + 128), (*(a2 + 128) & 0xFFFFFFFFFFFFFFFELL), v26);
    v23 = *(a2 + 16);
  }

  *(a1 + 136) = &qword_278E990;
  if ((v23 & 8) != 0)
  {
    v27 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v27 = *v27;
    }

    sub_194EA1C((a1 + 136), (*(a2 + 136) & 0xFFFFFFFFFFFFFFFELL), v27);
    v23 = *(a2 + 16);
  }

  *(a1 + 144) = &qword_278E990;
  if ((v23 & 0x10) != 0)
  {
    v28 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v28 = *v28;
    }

    sub_194EA1C((a1 + 144), (*(a2 + 144) & 0xFFFFFFFFFFFFFFFELL), v28);
    v23 = *(a2 + 16);
  }

  *(a1 + 152) = &qword_278E990;
  if ((v23 & 0x20) != 0)
  {
    v29 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v29 = *v29;
    }

    sub_194EA1C((a1 + 152), (*(a2 + 152) & 0xFFFFFFFFFFFFFFFELL), v29);
    v23 = *(a2 + 16);
  }

  *(a1 + 160) = &qword_278E990;
  if ((v23 & 0x40) != 0)
  {
    v30 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v30 = *v30;
    }

    sub_194EA1C((a1 + 160), (*(a2 + 160) & 0xFFFFFFFFFFFFFFFELL), v30);
    v23 = *(a2 + 16);
  }

  *(a1 + 168) = &qword_278E990;
  if ((v23 & 0x80) != 0)
  {
    v31 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v31 = *v31;
    }

    sub_194EA1C((a1 + 168), (*(a2 + 168) & 0xFFFFFFFFFFFFFFFELL), v31);
    v23 = *(a2 + 16);
  }

  *(a1 + 176) = &qword_278E990;
  if ((v23 & 0x100) != 0)
  {
    v32 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v32 = *v32;
    }

    sub_194EA1C((a1 + 176), (*(a2 + 176) & 0xFFFFFFFFFFFFFFFELL), v32);
    v23 = *(a2 + 16);
  }

  *(a1 + 184) = &qword_278E990;
  if ((v23 & 0x200) != 0)
  {
    v33 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v33 = *v33;
    }

    sub_194EA1C((a1 + 184), (*(a2 + 184) & 0xFFFFFFFFFFFFFFFELL), v33);
    v23 = *(a2 + 16);
  }

  *(a1 + 192) = &qword_278E990;
  if ((v23 & 0x400) != 0)
  {
    v34 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v34 = *v34;
    }

    sub_194EA1C((a1 + 192), (*(a2 + 192) & 0xFFFFFFFFFFFFFFFELL), v34);
    v23 = *(a2 + 16);
  }

  *(a1 + 200) = &qword_278E990;
  if ((v23 & 0x800) != 0)
  {
    v35 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v35 = *v35;
    }

    sub_194EA1C((a1 + 200), (*(a2 + 200) & 0xFFFFFFFFFFFFFFFELL), v35);
    v23 = *(a2 + 16);
  }

  *(a1 + 208) = &qword_278E990;
  if ((v23 & 0x1000) != 0)
  {
    v36 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v36 = *v36;
    }

    sub_194EA1C((a1 + 208), (*(a2 + 208) & 0xFFFFFFFFFFFFFFFELL), v36);
    v23 = *(a2 + 16);
  }

  *(a1 + 216) = &qword_278E990;
  if ((v23 & 0x2000) != 0)
  {
    v37 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v37 = *v37;
    }

    sub_194EA1C((a1 + 216), (*(a2 + 216) & 0xFFFFFFFFFFFFFFFELL), v37);
    v23 = *(a2 + 16);
  }

  *(a1 + 224) = &qword_278E990;
  if ((v23 & 0x4000) != 0)
  {
    v38 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v38 = *v38;
    }

    sub_194EA1C((a1 + 224), (*(a2 + 224) & 0xFFFFFFFFFFFFFFFELL), v38);
    v23 = *(a2 + 16);
  }

  *(a1 + 232) = &qword_278E990;
  if ((v23 & 0x8000) != 0)
  {
    v39 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v39 = *v39;
    }

    sub_194EA1C((a1 + 232), (*(a2 + 232) & 0xFFFFFFFFFFFFFFFELL), v39);
    v23 = *(a2 + 16);
  }

  *(a1 + 240) = &qword_278E990;
  if ((v23 & 0x10000) != 0)
  {
    v40 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v40 = *v40;
    }

    sub_194EA1C((a1 + 240), (*(a2 + 240) & 0xFFFFFFFFFFFFFFFELL), v40);
  }

  return a1;
}

void sub_16EAE10(_Unwind_Exception *a1)
{
  sub_17623DC(v4);
  sub_1956AFC(v3);
  sub_1956AFC(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_16EAE88(void *a1)
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

  sub_16EAF30(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956ABC((a1 + 12));
  sub_17623DC(a1 + 9);
  sub_1956AFC(a1 + 6);
  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_16EAF30(uint64_t a1)
{
  v3 = *(a1 + 112);
  v2 = (a1 + 112);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
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

  if (*(a1 + 168) != &qword_278E990)
  {
    sub_194E89C((a1 + 168));
  }

  if (*(a1 + 176) != &qword_278E990)
  {
    sub_194E89C((a1 + 176));
  }

  if (*(a1 + 184) != &qword_278E990)
  {
    sub_194E89C((a1 + 184));
  }

  if (*(a1 + 192) != &qword_278E990)
  {
    sub_194E89C((a1 + 192));
  }

  if (*(a1 + 200) != &qword_278E990)
  {
    sub_194E89C((a1 + 200));
  }

  if (*(a1 + 208) != &qword_278E990)
  {
    sub_194E89C((a1 + 208));
  }

  if (*(a1 + 216) != &qword_278E990)
  {
    sub_194E89C((a1 + 216));
  }

  if (*(a1 + 224) != &qword_278E990)
  {
    sub_194E89C((a1 + 224));
  }

  result = (a1 + 232);
  if (*(a1 + 232) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  v6 = *(a1 + 240);
  v5 = (a1 + 240);
  if (v6 != &qword_278E990)
  {

    sub_194E89C(v5);
  }

  return result;
}

void sub_16EB0C4(void *a1)
{
  sub_16EAE88(a1);

  operator delete();
}

uint64_t sub_16EB0FC(uint64_t a1)
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
      result = sub_16EA42C(v5);
      --v3;
    }

    while (v3);
    *(a1 + 80) = 0;
  }

  *(a1 + 96) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    if ((v6 & 1) == 0)
    {
      if ((v6 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_19:
      v8 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v8 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
        if ((v6 & 4) != 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
        if ((v6 & 4) != 0)
        {
          goto LABEL_23;
        }
      }

LABEL_9:
      if ((v6 & 8) == 0)
      {
        goto LABEL_10;
      }

LABEL_27:
      v10 = *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        *v10 = 0;
        *(v10 + 23) = 0;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_31;
        }
      }

LABEL_11:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_12;
      }

LABEL_35:
      v12 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v12 + 23) < 0)
      {
        **v12 = 0;
        *(v12 + 8) = 0;
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        *v12 = 0;
        *(v12 + 23) = 0;
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_39;
        }
      }

LABEL_13:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_46;
      }

LABEL_43:
      v14 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v14 + 23) < 0)
      {
        **v14 = 0;
        *(v14 + 8) = 0;
      }

      else
      {
        *v14 = 0;
        *(v14 + 23) = 0;
      }

      goto LABEL_46;
    }

    v7 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
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

LABEL_23:
    v9 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v6 & 8) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v6 & 8) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_10:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_31:
    v11 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_12:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_13;
    }

LABEL_39:
    v13 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v13 + 23) < 0)
    {
      **v13 = 0;
      *(v13 + 8) = 0;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      *v13 = 0;
      *(v13 + 23) = 0;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_43;
  }

LABEL_46:
  if ((v6 & 0xFF00) == 0)
  {
    goto LABEL_86;
  }

  if ((v6 & 0x100) == 0)
  {
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_49;
    }

LABEL_60:
    v16 = *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v16 + 23) < 0)
    {
      **v16 = 0;
      *(v16 + 8) = 0;
      if ((v6 & 0x400) != 0)
      {
        goto LABEL_64;
      }
    }

    else
    {
      *v16 = 0;
      *(v16 + 23) = 0;
      if ((v6 & 0x400) != 0)
      {
        goto LABEL_64;
      }
    }

LABEL_50:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_51;
    }

LABEL_68:
    v18 = *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v18 + 23) < 0)
    {
      **v18 = 0;
      *(v18 + 8) = 0;
      if ((v6 & 0x1000) != 0)
      {
        goto LABEL_72;
      }
    }

    else
    {
      *v18 = 0;
      *(v18 + 23) = 0;
      if ((v6 & 0x1000) != 0)
      {
        goto LABEL_72;
      }
    }

LABEL_52:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_53;
    }

LABEL_76:
    v20 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v20 + 23) < 0)
    {
      **v20 = 0;
      *(v20 + 8) = 0;
      if ((v6 & 0x4000) != 0)
      {
        goto LABEL_80;
      }
    }

    else
    {
      *v20 = 0;
      *(v20 + 23) = 0;
      if ((v6 & 0x4000) != 0)
      {
        goto LABEL_80;
      }
    }

LABEL_54:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_84;
  }

  v15 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v15 + 23) < 0)
  {
    **v15 = 0;
    *(v15 + 8) = 0;
    if ((v6 & 0x200) != 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    *v15 = 0;
    *(v15 + 23) = 0;
    if ((v6 & 0x200) != 0)
    {
      goto LABEL_60;
    }
  }

LABEL_49:
  if ((v6 & 0x400) == 0)
  {
    goto LABEL_50;
  }

LABEL_64:
  v17 = *(a1 + 192) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v17 + 23) < 0)
  {
    **v17 = 0;
    *(v17 + 8) = 0;
    if ((v6 & 0x800) != 0)
    {
      goto LABEL_68;
    }
  }

  else
  {
    *v17 = 0;
    *(v17 + 23) = 0;
    if ((v6 & 0x800) != 0)
    {
      goto LABEL_68;
    }
  }

LABEL_51:
  if ((v6 & 0x1000) == 0)
  {
    goto LABEL_52;
  }

LABEL_72:
  v19 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v19 + 23) < 0)
  {
    **v19 = 0;
    *(v19 + 8) = 0;
    if ((v6 & 0x2000) != 0)
    {
      goto LABEL_76;
    }
  }

  else
  {
    *v19 = 0;
    *(v19 + 23) = 0;
    if ((v6 & 0x2000) != 0)
    {
      goto LABEL_76;
    }
  }

LABEL_53:
  if ((v6 & 0x4000) == 0)
  {
    goto LABEL_54;
  }

LABEL_80:
  v21 = *(a1 + 224) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v21 + 23) < 0)
  {
    **v21 = 0;
    *(v21 + 8) = 0;
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_86;
    }
  }

  else
  {
    *v21 = 0;
    *(v21 + 23) = 0;
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_86;
    }
  }

LABEL_84:
  v22 = *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v22 + 23) < 0)
  {
    **v22 = 0;
    *(v22 + 8) = 0;
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_87;
  }

  *v22 = 0;
  *(v22 + 23) = 0;
LABEL_86:
  if ((v6 & 0x10000) == 0)
  {
    goto LABEL_91;
  }

LABEL_87:
  v23 = *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v23 + 23) < 0)
  {
    **v23 = 0;
    *(v23 + 8) = 0;
  }

  else
  {
    *v23 = 0;
    *(v23 + 23) = 0;
  }

LABEL_91:
  v25 = *(a1 + 8);
  v24 = a1 + 8;
  *(v24 + 8) = 0;
  if (v25)
  {

    return sub_1957EA8(v24);
  }

  return result;
}

uint64_t sub_16EB50C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v62 = a2;
  if (sub_195ADC0(a3, v62, a3[11].i32[1]))
  {
    return *v62;
  }

  while (2)
  {
    v6 = (*v62 + 1);
    v7 = **v62;
    if (**v62 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v62, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v62 + 2);
      }
    }

    *v62 = v6;
    switch(v7 >> 3)
    {
      case 1u:
        if (v7 != 10)
        {
          goto LABEL_131;
        }

        *(a1 + 16) |= 1u;
        v10 = *(a1 + 8);
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        v12 = (a1 + 112);
        goto LABEL_125;
      case 2u:
        if (v7 != 18)
        {
          goto LABEL_131;
        }

        *(a1 + 16) |= 2u;
        v36 = *(a1 + 8);
        v11 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
        if (v36)
        {
          v11 = *v11;
        }

        v12 = (a1 + 120);
        goto LABEL_125;
      case 3u:
        if (v7 != 26)
        {
          goto LABEL_131;
        }

        *(a1 + 16) |= 4u;
        v32 = *(a1 + 8);
        v11 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
        if (v32)
        {
          v11 = *v11;
        }

        v12 = (a1 + 128);
        goto LABEL_125;
      case 4u:
        if (v7 != 34)
        {
          goto LABEL_131;
        }

        *(a1 + 16) |= 8u;
        v34 = *(a1 + 8);
        v11 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
        if (v34)
        {
          v11 = *v11;
        }

        v12 = (a1 + 136);
        goto LABEL_125;
      case 5u:
        if (v7 != 42)
        {
          goto LABEL_131;
        }

        *(a1 + 16) |= 0x10u;
        v29 = *(a1 + 8);
        v11 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v11 = *v11;
        }

        v12 = (a1 + 144);
        goto LABEL_125;
      case 6u:
        if (v7 != 50)
        {
          goto LABEL_131;
        }

        *(a1 + 16) |= 0x20u;
        v38 = *(a1 + 8);
        v11 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        if (v38)
        {
          v11 = *v11;
        }

        v12 = (a1 + 152);
        goto LABEL_125;
      case 7u:
        if (v7 != 58)
        {
          goto LABEL_131;
        }

        *(a1 + 16) |= 0x40u;
        v47 = *(a1 + 8);
        v11 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
        if (v47)
        {
          v11 = *v11;
        }

        v12 = (a1 + 160);
        goto LABEL_125;
      case 8u:
        if (v7 != 66)
        {
          goto LABEL_131;
        }

        *(a1 + 16) |= 0x80u;
        v35 = *(a1 + 8);
        v11 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
        if (v35)
        {
          v11 = *v11;
        }

        v12 = (a1 + 168);
        goto LABEL_125;
      case 9u:
        if (v7 != 74)
        {
          goto LABEL_131;
        }

        *(a1 + 16) |= 0x100u;
        v55 = *(a1 + 8);
        v11 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
        if (v55)
        {
          v11 = *v11;
        }

        v12 = (a1 + 176);
        goto LABEL_125;
      case 0xAu:
        if (v7 != 82)
        {
          goto LABEL_131;
        }

        *(a1 + 16) |= 0x200u;
        v31 = *(a1 + 8);
        v11 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v11 = *v11;
        }

        v12 = (a1 + 184);
        goto LABEL_125;
      case 0xBu:
        if (v7 != 90)
        {
          goto LABEL_131;
        }

        *(a1 + 16) |= 0x400u;
        v54 = *(a1 + 8);
        v11 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
        if (v54)
        {
          v11 = *v11;
        }

        v12 = (a1 + 192);
        goto LABEL_125;
      case 0xCu:
        if (v7 != 98)
        {
          goto LABEL_131;
        }

        *(a1 + 16) |= 0x800u;
        v28 = *(a1 + 8);
        v11 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (v28)
        {
          v11 = *v11;
        }

        v12 = (a1 + 200);
        goto LABEL_125;
      case 0xDu:
        if (v7 != 106)
        {
          goto LABEL_131;
        }

        *(a1 + 16) |= 0x1000u;
        v30 = *(a1 + 8);
        v11 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
        if (v30)
        {
          v11 = *v11;
        }

        v12 = (a1 + 208);
        goto LABEL_125;
      case 0xEu:
        if (v7 != 114)
        {
          goto LABEL_131;
        }

        v39 = v6 - 1;
        while (1)
        {
          v40 = (v39 + 1);
          *v62 = v39 + 1;
          v41 = *(a1 + 40);
          if (v41 && (v42 = *(a1 + 32), v42 < *v41))
          {
            *(a1 + 32) = v42 + 1;
            v43 = *&v41[2 * v42 + 2];
          }

          else
          {
            v44 = *(a1 + 24);
            if (!v44)
            {
              operator new();
            }

            *v46 = v45;
            v46[1] = sub_195A650;
            *v45 = 0;
            v45[1] = 0;
            v45[2] = 0;
            v43 = sub_19593CC(a1 + 24, v45);
            v40 = *v62;
          }

          v39 = sub_1958890(v43, v40, a3);
          *v62 = v39;
          if (!v39)
          {
            goto LABEL_141;
          }

          if (*a3 <= v39 || *v39 != 114)
          {
            goto LABEL_127;
          }
        }

      case 0xFu:
        if (v7 != 122)
        {
          goto LABEL_131;
        }

        *(a1 + 16) |= 0x2000u;
        v27 = *(a1 + 8);
        v11 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v11 = *v11;
        }

        v12 = (a1 + 216);
        goto LABEL_125;
      case 0x10u:
        if (v7 != 130)
        {
          goto LABEL_131;
        }

        *(a1 + 16) |= 0x4000u;
        v33 = *(a1 + 8);
        v11 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        if (v33)
        {
          v11 = *v11;
        }

        v12 = (a1 + 224);
        goto LABEL_125;
      case 0x11u:
        if (v7 != 138)
        {
          goto LABEL_131;
        }

        v19 = v6 - 2;
        while (1)
        {
          v20 = (v19 + 2);
          *v62 = v19 + 2;
          v21 = *(a1 + 64);
          if (v21 && (v22 = *(a1 + 56), v22 < *v21))
          {
            *(a1 + 56) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = *(a1 + 48);
            if (!v24)
            {
              operator new();
            }

            *v26 = v25;
            v26[1] = sub_195A650;
            *v25 = 0;
            v25[1] = 0;
            v25[2] = 0;
            v23 = sub_19593CC(a1 + 48, v25);
            v20 = *v62;
          }

          v19 = sub_1958890(v23, v20, a3);
          *v62 = v19;
          if (!v19)
          {
            goto LABEL_141;
          }

          if (*a3 <= v19 || *v19 != 394)
          {
            goto LABEL_127;
          }
        }

      case 0x12u:
        if (v7 != 146)
        {
          goto LABEL_131;
        }

        *(a1 + 16) |= 0x8000u;
        v37 = *(a1 + 8);
        v11 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
        if (v37)
        {
          v11 = *v11;
        }

        v12 = (a1 + 232);
        goto LABEL_125;
      case 0x13u:
        if (v7 != 154)
        {
          goto LABEL_131;
        }

        v48 = v6 - 2;
        while (1)
        {
          v49 = (v48 + 2);
          *v62 = v48 + 2;
          v50 = *(a1 + 88);
          if (v50 && (v51 = *(a1 + 80), v51 < *v50))
          {
            *(a1 + 80) = v51 + 1;
            v52 = *&v50[2 * v51 + 2];
          }

          else
          {
            v53 = sub_16F5D30(*(a1 + 72));
            v52 = sub_19593CC(a1 + 72, v53);
            v49 = *v62;
          }

          v48 = sub_2235EA4(a3, v52, v49);
          *v62 = v48;
          if (!v48)
          {
            goto LABEL_141;
          }

          if (*a3 <= v48 || *v48 != 410)
          {
            goto LABEL_127;
          }
        }

      case 0x14u:
        if (v7 != 162)
        {
          goto LABEL_131;
        }

        *(a1 + 16) |= 0x10000u;
        v56 = *(a1 + 8);
        v11 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
        if (v56)
        {
          v11 = *v11;
        }

        v12 = (a1 + 240);
LABEL_125:
        v57 = sub_194DB04(v12, v11);
        v58 = sub_1958890(v57, *v62, a3);
        goto LABEL_126;
      default:
        if (v7 >> 3 != 100)
        {
          goto LABEL_131;
        }

        if (v7 == 32)
        {
          v13 = (v6 - 2);
          while (1)
          {
            *v62 = v13 + 2;
            v14 = *(v13 + 2);
            if (v14 < 0)
            {
              v15 = (*(v13 + 3) << 7) + v14;
              v14 = (v15 - 128);
              if (*(v13 + 3) < 0)
              {
                v13 = sub_19587DC(v13 + 2, (v15 - 128));
                v14 = v16;
              }

              else
              {
                v13 += 4;
              }
            }

            else
            {
              v13 += 3;
            }

            *v62 = v13;
            v17 = *(a1 + 96);
            if (v17 == *(a1 + 100))
            {
              v18 = v17 + 1;
              sub_1959094((a1 + 96), v17 + 1);
              *(*(a1 + 104) + 8 * v17) = v14;
              v13 = *v62;
            }

            else
            {
              *(*(a1 + 104) + 8 * v17) = v14;
              v18 = v17 + 1;
            }

            *(a1 + 96) = v18;
            if (!v13)
            {
              break;
            }

            if (*a3 <= v13 || *v13 != 1696)
            {
              goto LABEL_127;
            }
          }

LABEL_141:
          *v62 = 0;
          return *v62;
        }

        if (v7 == 34)
        {
          v58 = sub_1958928((a1 + 96), v6, a3);
LABEL_126:
          *v62 = v58;
          if (!v58)
          {
            goto LABEL_141;
          }

LABEL_127:
          if (sub_195ADC0(a3, v62, a3[11].i32[1]))
          {
            return *v62;
          }

          continue;
        }

LABEL_131:
        if (v7)
        {
          v59 = (v7 & 7) == 4;
        }

        else
        {
          v59 = 1;
        }

        if (!v59)
        {
          v60 = *(a1 + 8);
          if (v60)
          {
            v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v61 = sub_11F1920((a1 + 8));
            v6 = *v62;
          }

          v58 = sub_1952690(v7, v61, v6, a3);
          goto LABEL_126;
        }

        if (!v6)
        {
          goto LABEL_141;
        }

        a3[10].i32[0] = v7 - 1;
        return *v62;
    }
  }
}

char *sub_16EBD38(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL, a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_66;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_67;
  }

LABEL_66:
  v4 = sub_128AEEC(a3, 3, *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_68;
  }

LABEL_67:
  v4 = sub_128AEEC(a3, 4, *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_69;
  }

LABEL_68:
  v4 = sub_128AEEC(a3, 5, *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_70;
  }

LABEL_69:
  v4 = sub_128AEEC(a3, 6, *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_71;
  }

LABEL_70:
  v4 = sub_128AEEC(a3, 7, *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_72;
  }

LABEL_71:
  v4 = sub_128AEEC(a3, 8, *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_73;
  }

LABEL_72:
  v4 = sub_128AEEC(a3, 9, *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_74;
  }

LABEL_73:
  v4 = sub_128AEEC(a3, 10, *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_75;
  }

LABEL_74:
  v4 = sub_128AEEC(a3, 11, *(a1 + 192) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_75:
  v4 = sub_128AEEC(a3, 12, *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x1000) != 0)
  {
LABEL_14:
    v4 = sub_128AEEC(a3, 13, *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_15:
  v7 = *(a1 + 32);
  if (v7 >= 1)
  {
    v8 = 8;
    do
    {
      v9 = *(*(a1 + 40) + v8);
      v10 = *(v9 + 23);
      if (v10 < 0 && (v10 = v9[1], v10 > 127) || *a3 - v4 + 14 < v10)
      {
        v4 = sub_1957480(a3, 14, v9, v4);
      }

      else
      {
        *v4 = 114;
        v4[1] = v10;
        if (*(v9 + 23) < 0)
        {
          v9 = *v9;
        }

        v11 = v4 + 2;
        memcpy(v4 + 2, v9, v10);
        v4 = &v11[v10];
      }

      v8 += 8;
      --v7;
    }

    while (v7);
  }

  if ((v6 & 0x2000) != 0)
  {
    v4 = sub_128AEEC(a3, 15, *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  if ((v6 & 0x4000) != 0)
  {
    v4 = sub_128AEEC(a3, 16, *(a1 + 224) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  v12 = *(a1 + 56);
  if (v12 >= 1)
  {
    v13 = 8;
    do
    {
      v14 = *(*(a1 + 64) + v13);
      v15 = *(v14 + 23);
      if (v15 < 0 && (v15 = v14[1], v15 > 127) || *a3 - v4 + 13 < v15)
      {
        v4 = sub_1957480(a3, 17, v14, v4);
      }

      else
      {
        *v4 = 394;
        v4[2] = v15;
        if (*(v14 + 23) < 0)
        {
          v14 = *v14;
        }

        v16 = v4 + 3;
        memcpy(v4 + 3, v14, v15);
        v4 = &v16[v15];
      }

      v13 += 8;
      --v12;
    }

    while (v12);
  }

  if ((v6 & 0x8000) != 0)
  {
    v4 = sub_128AEEC(a3, 18, *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  v17 = *(a1 + 80);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v19 = *(*(a1 + 88) + 8 * i + 8);
      *v4 = 410;
      v20 = *(v19 + 20);
      v4[2] = v20;
      if (v20 > 0x7F)
      {
        v21 = sub_19575D0(v20, v4 + 2);
      }

      else
      {
        v21 = v4 + 3;
      }

      v4 = sub_16EA634(v19, v21, a3);
    }
  }

  if ((v6 & 0x10000) != 0)
  {
    v4 = sub_128AEEC(a3, 20, *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  v22 = *(a1 + 96);
  if (v22 < 1)
  {
    v25 = v4;
  }

  else
  {
    for (j = 0; j != v22; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v24 = *(*(a1 + 104) + 8 * j);
      *v4 = 1696;
      v4[2] = v24;
      if (v24 > 0x7F)
      {
        v4[2] = v24 | 0x80;
        v26 = v24 >> 7;
        v4[3] = v24 >> 7;
        v25 = v4 + 4;
        if (v24 >= 0x4000)
        {
          LOBYTE(v27) = v4[3];
          do
          {
            *(v25 - 1) = v27 | 0x80;
            v27 = v26 >> 7;
            *v25++ = v26 >> 7;
            v28 = v26 >> 14;
            v26 >>= 7;
          }

          while (v28);
        }
      }

      else
      {
        v25 = v4 + 3;
      }

      v4 = v25;
    }
  }

  v29 = *(a1 + 8);
  if ((v29 & 1) == 0)
  {
    return v25;
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

  if (*a3 - v25 >= v32)
  {
    v34 = v32;
    memcpy(v25, v33, v32);
    v25 += v34;
    return v25;
  }

  return sub_1957130(a3, v33, v32, v25);
}

uint64_t sub_16EC25C(uint64_t a1)
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
  v9 = v4 + 2 * v8;
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
      v20 = sub_16EA77C(v19);
      v15 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      v18 -= 8;
    }

    while (v18);
  }

  result = sub_1959F14((a1 + 96)) + v15 + 2 * *(a1 + 96);
  v22 = *(a1 + 16);
  if (!v22)
  {
    goto LABEL_31;
  }

  if (v22)
  {
    v33 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    v34 = *(v33 + 23);
    v35 = *(v33 + 8);
    if ((v34 & 0x80u) == 0)
    {
      v35 = v34;
    }

    result += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 2) == 0)
    {
LABEL_22:
      if ((v22 & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_55;
    }
  }

  else if ((v22 & 2) == 0)
  {
    goto LABEL_22;
  }

  v36 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
  v37 = *(v36 + 23);
  v38 = *(v36 + 8);
  if ((v37 & 0x80u) == 0)
  {
    v38 = v37;
  }

  result += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 4) == 0)
  {
LABEL_23:
    if ((v22 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_58;
  }

LABEL_55:
  v39 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
  v40 = *(v39 + 23);
  v41 = *(v39 + 8);
  if ((v40 & 0x80u) == 0)
  {
    v41 = v40;
  }

  result += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 8) == 0)
  {
LABEL_24:
    if ((v22 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_61;
  }

LABEL_58:
  v42 = *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL;
  v43 = *(v42 + 23);
  v44 = *(v42 + 8);
  if ((v43 & 0x80u) == 0)
  {
    v44 = v43;
  }

  result += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 0x10) == 0)
  {
LABEL_25:
    if ((v22 & 0x20) == 0)
    {
      goto LABEL_26;
    }

LABEL_64:
    v48 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
    v49 = *(v48 + 23);
    v50 = *(v48 + 8);
    if ((v49 & 0x80u) == 0)
    {
      v50 = v49;
    }

    result += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 0x40) == 0)
    {
LABEL_27:
      if ((v22 & 0x80) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    goto LABEL_67;
  }

LABEL_61:
  v45 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
  v46 = *(v45 + 23);
  v47 = *(v45 + 8);
  if ((v46 & 0x80u) == 0)
  {
    v47 = v46;
  }

  result += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 0x20) != 0)
  {
    goto LABEL_64;
  }

LABEL_26:
  if ((v22 & 0x40) == 0)
  {
    goto LABEL_27;
  }

LABEL_67:
  v51 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
  v52 = *(v51 + 23);
  v53 = *(v51 + 8);
  if ((v52 & 0x80u) == 0)
  {
    v53 = v52;
  }

  result += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 0x80) != 0)
  {
LABEL_28:
    v23 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(v23 + 23);
    v25 = *(v23 + 8);
    if ((v24 & 0x80u) == 0)
    {
      v25 = v24;
    }

    result += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_31:
  if ((v22 & 0xFF00) == 0)
  {
    goto LABEL_43;
  }

  if ((v22 & 0x100) != 0)
  {
    v54 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
    v55 = *(v54 + 23);
    v56 = *(v54 + 8);
    if ((v55 & 0x80u) == 0)
    {
      v56 = v55;
    }

    result += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 0x200) == 0)
    {
LABEL_34:
      if ((v22 & 0x400) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_77;
    }
  }

  else if ((v22 & 0x200) == 0)
  {
    goto LABEL_34;
  }

  v57 = *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL;
  v58 = *(v57 + 23);
  v59 = *(v57 + 8);
  if ((v58 & 0x80u) == 0)
  {
    v59 = v58;
  }

  result += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 0x400) == 0)
  {
LABEL_35:
    if ((v22 & 0x800) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_80;
  }

LABEL_77:
  v60 = *(a1 + 192) & 0xFFFFFFFFFFFFFFFELL;
  v61 = *(v60 + 23);
  v62 = *(v60 + 8);
  if ((v61 & 0x80u) == 0)
  {
    v62 = v61;
  }

  result += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 0x800) == 0)
  {
LABEL_36:
    if ((v22 & 0x1000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_83;
  }

LABEL_80:
  v63 = *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL;
  v64 = *(v63 + 23);
  v65 = *(v63 + 8);
  if ((v64 & 0x80u) == 0)
  {
    v65 = v64;
  }

  result += v65 + ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 0x1000) == 0)
  {
LABEL_37:
    if ((v22 & 0x2000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_86;
  }

LABEL_83:
  v66 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
  v67 = *(v66 + 23);
  v68 = *(v66 + 8);
  if ((v67 & 0x80u) == 0)
  {
    v68 = v67;
  }

  result += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 0x2000) == 0)
  {
LABEL_38:
    if ((v22 & 0x4000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_89;
  }

LABEL_86:
  v69 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
  v70 = *(v69 + 23);
  v71 = *(v69 + 8);
  if ((v70 & 0x80u) == 0)
  {
    v71 = v70;
  }

  result += v71 + ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 0x4000) == 0)
  {
LABEL_39:
    if ((v22 & 0x8000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

LABEL_89:
  v72 = *(a1 + 224) & 0xFFFFFFFFFFFFFFFELL;
  v73 = *(v72 + 23);
  v74 = *(v72 + 8);
  if ((v73 & 0x80u) == 0)
  {
    v74 = v73;
  }

  result += v74 + ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v22 & 0x8000) != 0)
  {
LABEL_40:
    v26 = *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL;
    v27 = *(v26 + 23);
    v28 = *(v26 + 8);
    if ((v27 & 0x80u) == 0)
    {
      v28 = v27;
    }

    result += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_43:
  if ((v22 & 0x10000) != 0)
  {
    v29 = *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL;
    v30 = *(v29 + 23);
    v31 = *(v29 + 8);
    if ((v30 & 0x80u) == 0)
    {
      v31 = v30;
    }

    result += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v32 = *(a1 + 8);
  if (v32)
  {
    v75 = v32 & 0xFFFFFFFFFFFFFFFCLL;
    v76 = *((v32 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v76 < 0)
    {
      v76 = *(v75 + 16);
    }

    result += v76;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_16EC8A0(std::string *result, uint64_t a2)
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
    result = sub_1762460(&v3[3], v16, (v15 + 8), v14, *v3[3].__r_.__value_.__r.__words[2] - LODWORD(v3[3].__r_.__value_.__r.__words[1]));
    v17 = LODWORD(v3[3].__r_.__value_.__r.__words[1]) + v14;
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = v17;
    v18 = v3[3].__r_.__value_.__r.__words[2];
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 96);
  if (v19)
  {
    data_low = SLODWORD(v3[4].__r_.__value_.__l.__data_);
    sub_1959094(&v3[4], data_low + v19);
    size = v3[4].__r_.__value_.__l.__size_;
    LODWORD(v3[4].__r_.__value_.__l.__data_) += *(a2 + 96);
    result = memcpy((size + 8 * data_low), *(a2 + 104), 8 * *(a2 + 96));
  }

  v22 = *(a2 + 16);
  if (!v22)
  {
    goto LABEL_46;
  }

  if (v22)
  {
    v23 = *(a2 + 112);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    v24 = v3->__r_.__value_.__l.__size_;
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v25 = *v25;
    }

    result = sub_194EA1C(&v3[4].__r_.__value_.__r.__words[2], (v23 & 0xFFFFFFFFFFFFFFFELL), v25);
    if ((v22 & 2) == 0)
    {
LABEL_15:
      if ((v22 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_28;
    }
  }

  else if ((v22 & 2) == 0)
  {
    goto LABEL_15;
  }

  v26 = *(a2 + 120);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
  v27 = v3->__r_.__value_.__l.__size_;
  v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
  if (v27)
  {
    v28 = *v28;
  }

  result = sub_194EA1C(&v3[5], (v26 & 0xFFFFFFFFFFFFFFFELL), v28);
  if ((v22 & 4) == 0)
  {
LABEL_16:
    if ((v22 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_28:
  v29 = *(a2 + 128);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
  v30 = v3->__r_.__value_.__l.__size_;
  v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
  if (v30)
  {
    v31 = *v31;
  }

  result = sub_194EA1C(&v3[5].__r_.__value_.__l.__size_, (v29 & 0xFFFFFFFFFFFFFFFELL), v31);
  if ((v22 & 8) == 0)
  {
LABEL_17:
    if ((v22 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_31:
  v32 = *(a2 + 136);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
  v33 = v3->__r_.__value_.__l.__size_;
  v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
  if (v33)
  {
    v34 = *v34;
  }

  result = sub_194EA1C(&v3[5].__r_.__value_.__r.__words[2], (v32 & 0xFFFFFFFFFFFFFFFELL), v34);
  if ((v22 & 0x10) == 0)
  {
LABEL_18:
    if ((v22 & 0x20) == 0)
    {
      goto LABEL_19;
    }

LABEL_37:
    v38 = *(a2 + 152);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x20u;
    v39 = v3->__r_.__value_.__l.__size_;
    v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
    if (v39)
    {
      v40 = *v40;
    }

    result = sub_194EA1C(&v3[6].__r_.__value_.__l.__size_, (v38 & 0xFFFFFFFFFFFFFFFELL), v40);
    if ((v22 & 0x40) == 0)
    {
LABEL_20:
      if ((v22 & 0x80) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    }

    goto LABEL_40;
  }

LABEL_34:
  v35 = *(a2 + 144);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
  v36 = v3->__r_.__value_.__l.__size_;
  v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
  if (v36)
  {
    v37 = *v37;
  }

  result = sub_194EA1C(&v3[6], (v35 & 0xFFFFFFFFFFFFFFFELL), v37);
  if ((v22 & 0x20) != 0)
  {
    goto LABEL_37;
  }

LABEL_19:
  if ((v22 & 0x40) == 0)
  {
    goto LABEL_20;
  }

LABEL_40:
  v41 = *(a2 + 160);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x40u;
  v42 = v3->__r_.__value_.__l.__size_;
  v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
  if (v42)
  {
    v43 = *v43;
  }

  result = sub_194EA1C(&v3[6].__r_.__value_.__r.__words[2], (v41 & 0xFFFFFFFFFFFFFFFELL), v43);
  if ((v22 & 0x80) != 0)
  {
LABEL_43:
    v44 = *(a2 + 168);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x80u;
    v45 = v3->__r_.__value_.__l.__size_;
    v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
    if (v45)
    {
      v46 = *v46;
    }

    result = sub_194EA1C(&v3[7], (v44 & 0xFFFFFFFFFFFFFFFELL), v46);
  }

LABEL_46:
  if ((v22 & 0xFF00) == 0)
  {
    goto LABEL_55;
  }

  if ((v22 & 0x100) != 0)
  {
    v47 = *(a2 + 176);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x100u;
    v48 = v3->__r_.__value_.__l.__size_;
    v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
    if (v48)
    {
      v49 = *v49;
    }

    result = sub_194EA1C(&v3[7].__r_.__value_.__l.__size_, (v47 & 0xFFFFFFFFFFFFFFFELL), v49);
    if ((v22 & 0x200) == 0)
    {
LABEL_49:
      if ((v22 & 0x400) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_63;
    }
  }

  else if ((v22 & 0x200) == 0)
  {
    goto LABEL_49;
  }

  v50 = *(a2 + 184);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x200u;
  v51 = v3->__r_.__value_.__l.__size_;
  v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
  if (v51)
  {
    v52 = *v52;
  }

  result = sub_194EA1C(&v3[7].__r_.__value_.__r.__words[2], (v50 & 0xFFFFFFFFFFFFFFFELL), v52);
  if ((v22 & 0x400) == 0)
  {
LABEL_50:
    if ((v22 & 0x800) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_66;
  }

LABEL_63:
  v53 = *(a2 + 192);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x400u;
  v54 = v3->__r_.__value_.__l.__size_;
  v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
  if (v54)
  {
    v55 = *v55;
  }

  result = sub_194EA1C(&v3[8], (v53 & 0xFFFFFFFFFFFFFFFELL), v55);
  if ((v22 & 0x800) == 0)
  {
LABEL_51:
    if ((v22 & 0x1000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_69;
  }

LABEL_66:
  v56 = *(a2 + 200);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x800u;
  v57 = v3->__r_.__value_.__l.__size_;
  v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
  if (v57)
  {
    v58 = *v58;
  }

  result = sub_194EA1C(&v3[8].__r_.__value_.__l.__size_, (v56 & 0xFFFFFFFFFFFFFFFELL), v58);
  if ((v22 & 0x1000) == 0)
  {
LABEL_52:
    if ((v22 & 0x2000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_72;
  }

LABEL_69:
  v59 = *(a2 + 208);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x1000u;
  v60 = v3->__r_.__value_.__l.__size_;
  v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
  if (v60)
  {
    v61 = *v61;
  }

  result = sub_194EA1C(&v3[8].__r_.__value_.__r.__words[2], (v59 & 0xFFFFFFFFFFFFFFFELL), v61);
  if ((v22 & 0x2000) == 0)
  {
LABEL_53:
    if ((v22 & 0x4000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_75;
  }

LABEL_72:
  v62 = *(a2 + 216);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x2000u;
  v63 = v3->__r_.__value_.__l.__size_;
  v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
  if (v63)
  {
    v64 = *v64;
  }

  result = sub_194EA1C(&v3[9], (v62 & 0xFFFFFFFFFFFFFFFELL), v64);
  if ((v22 & 0x4000) == 0)
  {
LABEL_54:
    if ((v22 & 0x8000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_78;
  }

LABEL_75:
  v65 = *(a2 + 224);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x4000u;
  v66 = v3->__r_.__value_.__l.__size_;
  v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL);
  if (v66)
  {
    v67 = *v67;
  }

  result = sub_194EA1C(&v3[9].__r_.__value_.__l.__size_, (v65 & 0xFFFFFFFFFFFFFFFELL), v67);
  if ((v22 & 0x8000) == 0)
  {
LABEL_55:
    if ((v22 & 0x10000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_81;
  }

LABEL_78:
  v68 = *(a2 + 232);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x8000u;
  v69 = v3->__r_.__value_.__l.__size_;
  v70 = (v69 & 0xFFFFFFFFFFFFFFFCLL);
  if (v69)
  {
    v70 = *v70;
  }

  result = sub_194EA1C(&v3[9].__r_.__value_.__r.__words[2], (v68 & 0xFFFFFFFFFFFFFFFELL), v70);
  if ((v22 & 0x10000) != 0)
  {
LABEL_81:
    v71 = *(a2 + 240);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10000u;
    v72 = v3->__r_.__value_.__l.__size_;
    v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
    if (v72)
    {
      v73 = *v73;
    }

    result = sub_194EA1C(&v3[10], (v71 & 0xFFFFFFFFFFFFFFFELL), v73);
  }

LABEL_84:
  v74 = *(a2 + 8);
  if (v74)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v74 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_16ECE24(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_16EB0FC(result);

    return sub_16EC8A0(v4, a2);
  }

  return result;
}

BOOL sub_16ECE70(uint64_t a1)
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

uint64_t sub_16ECEB8(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_2701888;
  *(result + 8) = v3;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_16ECEF4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2701888;
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

  if (*(a2 + 16))
  {
    operator new();
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t sub_16ED080(uint64_t a1)
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
  if (a1 != &off_277E918)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_16EAE88(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16ED140(uint64_t a1)
{
  sub_16ED080(a1);

  operator delete();
}

uint64_t sub_16ED178(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  if (*(a1 + 16))
  {
    result = sub_16EB0FC(*(a1 + 48));
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 48) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_16ED1E0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v29 = a2;
  if (sub_195ADC0(a3, v29, a3[11].i32[1]))
  {
    return *v29;
  }

  while (1)
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
    if (v7 >> 3 == 16)
    {
      if (v7 != 128)
      {
        goto LABEL_35;
      }

      v24 = (v6 + 1);
      v23 = *v6;
      if (v23 < 0)
      {
        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if (v25 < 0)
        {
          *v29 = sub_19587DC(v6, v23);
          if (!*v29)
          {
            goto LABEL_51;
          }

          goto LABEL_33;
        }

        v24 = (v6 + 2);
      }

      *v29 = v24;
LABEL_33:
      if (v23 > 2)
      {
        sub_144E0FC();
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 56) = v23;
      }

      goto LABEL_43;
    }

    if (v10 != 15)
    {
      break;
    }

    if (v7 != 122)
    {
      goto LABEL_35;
    }

    *(a1 + 16) |= 1u;
    v19 = *(a1 + 48);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_16F5DB8(v21);
      *(a1 + 48) = v19;
      v6 = *v29;
    }

    v22 = sub_21F8D18(a3, v19, v6);
LABEL_42:
    *v29 = v22;
    if (!v22)
    {
      goto LABEL_51;
    }

LABEL_43:
    if (sub_195ADC0(a3, v29, a3[11].i32[1]))
    {
      return *v29;
    }
  }

  if (v10 == 11 && v7 == 90)
  {
    v11 = (v6 - 1);
    while (1)
    {
      v12 = (v11 + 1);
      *v29 = v11 + 1;
      v13 = *(a1 + 40);
      if (v13 && (v14 = *(a1 + 32), v14 < *v13))
      {
        *(a1 + 32) = v14 + 1;
        v15 = *&v13[2 * v14 + 2];
      }

      else
      {
        v16 = *(a1 + 24);
        if (!v16)
        {
          operator new();
        }

        *v18 = v17;
        v18[1] = sub_195A650;
        *v17 = 0;
        v17[1] = 0;
        v17[2] = 0;
        v15 = sub_19593CC(a1 + 24, v17);
        v12 = *v29;
      }

      v11 = sub_1958890(v15, v12, a3);
      *v29 = v11;
      if (!v11)
      {
        goto LABEL_51;
      }

      if (*a3 <= v11 || *v11 != 90)
      {
        goto LABEL_43;
      }
    }
  }

LABEL_35:
  if (v7)
  {
    v26 = (v7 & 7) == 4;
  }

  else
  {
    v26 = 1;
  }

  if (!v26)
  {
    v27 = *(a1 + 8);
    if (v27)
    {
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v28 = sub_11F1920((a1 + 8));
      v6 = *v29;
    }

    v22 = sub_1952690(v7, v28, v6, a3);
    goto LABEL_42;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v29;
  }

LABEL_51:
  *v29 = 0;
  return *v29;
}

char *sub_16ED4B0(uint64_t a1, char *__dst, _DWORD *a3)
{
  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 40) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || *a3 - __dst + 14 < v9)
      {
        __dst = sub_1957480(a3, 11, v8, __dst);
      }

      else
      {
        *__dst = 90;
        __dst[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v10 = __dst + 2;
        memcpy(__dst + 2, v8, v9);
        __dst = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v12 = *(a1 + 48);
    *__dst = 122;
    v13 = *(v12 + 20);
    __dst[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, __dst + 1);
    }

    else
    {
      v14 = __dst + 2;
    }

    __dst = sub_16EBD38(v12, v14, a3);
  }

  if ((v11 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v16 = *(a1 + 56);
    *__dst = 384;
    __dst[2] = v16;
    if (v16 > 0x7F)
    {
      __dst[2] = v16 | 0x80;
      v17 = v16 >> 7;
      __dst[3] = v16 >> 7;
      v15 = __dst + 4;
      if (v16 >= 0x4000)
      {
        LOBYTE(v18) = __dst[3];
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
      v15 = __dst + 3;
    }
  }

  else
  {
    v15 = __dst;
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

uint64_t sub_16ED6F0(uint64_t a1)
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
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = sub_16EC25C(*(a1 + 48));
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = *(a1 + 56);
      if (v10 < 0)
      {
        v11 = 12;
      }

      else
      {
        v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v4 += v11;
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

    v4 += v15;
  }

  *(a1 + 20) = v4;
  return v4;
}

std::string *sub_16ED814(std::string *result, uint64_t a2)
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
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      data = v3[2].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v12 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v12 = *v12;
        }

        data = sub_16F5DB8(v12);
        v3[2].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_277E820;
      }

      result = sub_16EC8A0(data, v13);
    }

    if ((v9 & 2) != 0)
    {
      LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_16ED940(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_16ED178(result);

    return sub_16ED814(v4, a2);
  }

  return result;
}

BOOL sub_16ED98C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 48);
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

__n128 sub_16ED9D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  v6 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v6;
  v7 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v7;
  LODWORD(v7) = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v7;
  return result;
}

uint64_t sub_16EDA44(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_2701908;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_1957EF4((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  v5 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v5;
  return a1;
}

void sub_16EDAC8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_16EDAFC(void *a1)
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

void sub_16EDB70(void *a1)
{
  sub_16EDAFC(a1);

  operator delete();
}

uint64_t sub_16EDBA8(uint64_t a1)
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

char *sub_16EDBD0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v20, a3[11].i32[1]))
  {
    goto LABEL_32;
  }

  while (1)
  {
    v6 = v20 + 1;
    v7 = *v20;
    if (*v20 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v20, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v20 + 2;
      }
    }

    v20 = v6;
    if (v7 >> 3 != 2)
    {
      break;
    }

    if (v7 != 16)
    {
      goto LABEL_11;
    }

    v5 |= 2u;
    v14 = v6 + 1;
    v15 = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    v16 = *v14;
    v15 = v15 + (v16 << 7) - 128;
    if ((v16 & 0x80000000) == 0)
    {
      v14 = v6 + 2;
LABEL_23:
      v20 = v14;
      *(a1 + 32) = v15;
      goto LABEL_25;
    }

    v17 = sub_1958770(v6, v15);
    v20 = v17;
    *(a1 + 32) = v18;
    if (!v17)
    {
      goto LABEL_33;
    }

LABEL_25:
    if (sub_195ADC0(a3, &v20, a3[11].i32[1]))
    {
      goto LABEL_32;
    }
  }

  if (v7 >> 3 == 1 && v7 == 9)
  {
    v5 |= 1u;
    *(a1 + 24) = *v6;
    v20 = v6 + 8;
    goto LABEL_25;
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
      v6 = v20;
    }

    v20 = sub_1952690(v7, v13, v6, a3);
    if (!v20)
    {
      goto LABEL_33;
    }

    goto LABEL_25;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_32;
  }

LABEL_33:
  v20 = 0;
LABEL_32:
  *(a1 + 16) |= v5;
  return v20;
}

char *sub_16EDD74(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *__dst = 9;
    *(__dst + 1) = v6;
    __dst += 9;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 32);
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

uint64_t sub_16EDED0(uint64_t a1)
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
      v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v2 = 0;
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

    v2 += v6;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_16EDF60(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_2701988;
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

void sub_16EDFDC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_16EE010(void *a1)
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

void sub_16EE084(void *a1)
{
  sub_16EE010(a1);

  operator delete();
}

uint64_t sub_16EE0BC(uint64_t a1)
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

char *sub_16EE0E0(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_16EE2C4(uint64_t a1, char *__dst, _DWORD *a3)
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

unint64_t sub_16EE474(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    result = sub_16AE558(a1);
  }

  else
  {
    result = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 2;
  }

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

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_16EE534(uint64_t a1)
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

void sub_16EE5EC(uint64_t a1)
{
  sub_16EE534(a1);

  operator delete();
}

uint64_t sub_16EE624(uint64_t a1)
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

uint64_t sub_16EE6A0(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_16EE820(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_16EE908(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    result = sub_132CD7C(a1);
  }

  else
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    result = v4 + v8 + v5 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    result += v12;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_16EEA04(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_2701A88;
  *(result + 8) = v3;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_16EEA44(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2701A88;
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
  }

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void sub_16EEAF8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_16EEB2C(uint64_t a1)
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

void sub_16EEBCC(uint64_t a1)
{
  sub_16EEB2C(a1);

  operator delete();
}

uint64_t sub_16EEC04(uint64_t a1)
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

uint64_t sub_16EEC4C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v24 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v24, i) & 1) == 0; i = a3[11].i32[1])
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
    if (v7 >> 3 != 2)
    {
      if (v7 >> 3 == 1 && v7 == 8)
      {
        v18 = v6 + 1;
        v19 = *v6;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v20 = *v18;
        v21 = (v20 << 7) + v19;
        LODWORD(v19) = v21 - 128;
        if (v20 < 0)
        {
          *v24 = sub_19587DC(v6, (v21 - 128));
          if (!*v24)
          {
            goto LABEL_39;
          }

          LODWORD(v19) = v22;
        }

        else
        {
          v18 = v6 + 2;
LABEL_28:
          *v24 = v18;
        }

        if (sub_152B64C(v19))
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v19;
        }

        else
        {
          sub_12E8450();
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
          return *v24;
        }

LABEL_39:
        *v24 = 0;
        return *v24;
      }

      v12 = *(a1 + 8);
      if (v12)
      {
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v13 = sub_11F1920((a1 + 8));
        v6 = *v24;
      }

      v14 = sub_1952690(v7, v13, v6, a3);
      goto LABEL_23;
    }

    if (v7 != 18)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = sub_194DB04((a1 + 24), v16);
    v14 = sub_1958890(v17, *v24, a3);
LABEL_23:
    *v24 = v14;
    if (!v14)
    {
      goto LABEL_39;
    }
  }

  return *v24;
}

char *sub_16EEE1C(uint64_t a1, char *__dst, void *a3)
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

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v14)
  {
    v16 = v14;
    memcpy(v6, v15, v14);
    v6 += v16;
    return v6;
  }

  return sub_1957130(a3, v15, v14, v6);
}

uint64_t sub_16EEF64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
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

    v2 += v7;
  }

LABEL_11:
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

std::string *sub_16EF018(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_16EEC04(result);

    return sub_12B0A14(v4, a2);
  }

  return result;
}

uint64_t sub_16EF070(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a2 + 24);
  *(a2 + 24) = *(result + 24);
  *(result + 24) = v3;
  LODWORD(v3) = *(result + 32);
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_16EF0C4(uint64_t a1)
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
  if (a1 != &off_277E9D0)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_16E4D90(v6);
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

void sub_16EF17C(uint64_t a1)
{
  sub_16EF0C4(a1);

  operator delete();
}

unsigned __int8 *sub_16EF1B4(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2)
  {
    result = sub_16E4E44(*(result + 3));
  }

  if ((v2 & 0xFE) != 0)
  {
    *(v1 + 4) = 0;
    *(v1 + 5) = 0;
    *(v1 + 14) = 0;
    *(v1 + 6) = 0;
  }

  if ((v2 & 0x300) != 0)
  {
    *(v1 + 60) = 0;
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

char *sub_16EF230(uint64_t a1, char *a2, int32x2_t *a3)
{
  v53 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v53, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v53 + 1;
    v8 = *v53;
    if (*v53 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v53, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v53 + 2;
      }
    }

    v53 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 0xA)
    {
      if (v8 >> 3 > 0xC)
      {
        if (v11 != 13)
        {
          if (v11 != 14)
          {
            if (v11 != 15 || v8 != 120)
            {
              goto LABEL_86;
            }

            v5 |= 0x20u;
            v15 = v7 + 1;
            v16 = *v7;
            if ((*v7 & 0x80000000) == 0)
            {
              goto LABEL_25;
            }

            v17 = *v15;
            v16 = v16 + (v17 << 7) - 128;
            if ((v17 & 0x80000000) == 0)
            {
              v15 = v7 + 2;
LABEL_25:
              v53 = v15;
              *(a1 + 48) = v16;
              goto LABEL_94;
            }

            v51 = sub_1958770(v7, v16);
            v53 = v51;
            *(a1 + 48) = v52;
            if (!v51)
            {
              goto LABEL_123;
            }

            goto LABEL_94;
          }

          if (v8 != 112)
          {
            goto LABEL_86;
          }

          v42 = v7 + 1;
          v41 = *v7;
          if (v41 < 0)
          {
            v43 = *v42;
            v41 = (v43 << 7) + v41 - 128;
            if (v43 < 0)
            {
              v53 = sub_19587DC(v7, v41);
              if (!v53)
              {
                goto LABEL_123;
              }

              goto LABEL_84;
            }

            v42 = v7 + 2;
          }

          v53 = v42;
LABEL_84:
          if (v41 > 4)
          {
            sub_1313778();
          }

          else
          {
            *(a1 + 16) |= 0x200u;
            *(a1 + 64) = v41;
          }

          goto LABEL_94;
        }

        if (v8 != 104)
        {
          goto LABEL_86;
        }

        v36 = v7 + 1;
        v35 = *v7;
        if (v35 < 0)
        {
          v37 = *v36;
          v35 = (v37 << 7) + v35 - 128;
          if (v37 < 0)
          {
            v53 = sub_19587DC(v7, v35);
            if (!v53)
            {
              goto LABEL_123;
            }

            goto LABEL_70;
          }

          v36 = v7 + 2;
        }

        v53 = v36;
LABEL_70:
        if (v35 > 4)
        {
          sub_144E0C4();
        }

        else
        {
          *(a1 + 16) |= 0x100u;
          *(a1 + 60) = v35;
        }

        goto LABEL_94;
      }

      if (v11 != 11)
      {
        if (v11 != 12 || v8 != 96)
        {
          goto LABEL_86;
        }

        v23 = v7 + 1;
        v22 = *v7;
        if (v22 < 0)
        {
          v24 = *v23;
          v22 = (v24 << 7) + v22 - 128;
          if (v24 < 0)
          {
            v53 = sub_19587DC(v7, v22);
            if (!v53)
            {
              goto LABEL_123;
            }

            goto LABEL_43;
          }

          v23 = v7 + 2;
        }

        v53 = v23;
LABEL_43:
        if (v22 > 4)
        {
          sub_1348EB8();
        }

        else
        {
          *(a1 + 16) |= 0x80u;
          *(a1 + 56) = v22;
        }

        goto LABEL_94;
      }

      if (v8 != 88)
      {
        goto LABEL_86;
      }

      v30 = v7 + 1;
      v29 = *v7;
      if (v29 < 0)
      {
        v31 = *v30;
        v29 = (v31 << 7) + v29 - 128;
        if (v31 < 0)
        {
          v53 = sub_19587DC(v7, v29);
          if (!v53)
          {
            goto LABEL_123;
          }

          goto LABEL_56;
        }

        v30 = v7 + 2;
      }

      v53 = v30;
LABEL_56:
      if (v29 > 4)
      {
        sub_1313680();
      }

      else
      {
        *(a1 + 16) |= 0x40u;
        *(a1 + 52) = v29;
      }

      goto LABEL_94;
    }

    if (v8 >> 3 > 2)
    {
      if (v11 != 3)
      {
        if (v11 != 4)
        {
          if (v11 != 5 || v8 != 40)
          {
            goto LABEL_86;
          }

          v5 |= 0x10u;
          v12 = v7 + 1;
          v13 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_16;
          }

          v14 = *v12;
          v13 = v13 + (v14 << 7) - 128;
          if ((v14 & 0x80000000) == 0)
          {
            v12 = v7 + 2;
LABEL_16:
            v53 = v12;
            *(a1 + 44) = v13;
            goto LABEL_94;
          }

          v49 = sub_1958770(v7, v13);
          v53 = v49;
          *(a1 + 44) = v50;
          if (!v49)
          {
            goto LABEL_123;
          }

          goto LABEL_94;
        }

        if (v8 != 32)
        {
          goto LABEL_86;
        }

        v39 = v7 + 1;
        v38 = *v7;
        if (v38 < 0)
        {
          v40 = *v39;
          v38 = (v40 << 7) + v38 - 128;
          if (v40 < 0)
          {
            v53 = sub_19587DC(v7, v38);
            if (!v53)
            {
              goto LABEL_123;
            }

            goto LABEL_77;
          }

          v39 = v7 + 2;
        }

        v53 = v39;
LABEL_77:
        if (v38 > 4)
        {
          sub_12E8500();
        }

        else
        {
          *(a1 + 16) |= 8u;
          *(a1 + 40) = v38;
        }

        goto LABEL_94;
      }

      if (v8 != 24)
      {
        goto LABEL_86;
      }

      v33 = v7 + 1;
      v32 = *v7;
      if (v32 < 0)
      {
        v34 = *v33;
        v32 = (v34 << 7) + v32 - 128;
        if (v34 < 0)
        {
          v53 = sub_19587DC(v7, v32);
          if (!v53)
          {
            goto LABEL_123;
          }

          goto LABEL_63;
        }

        v33 = v7 + 2;
      }

      v53 = v33;
LABEL_63:
      if (v32 > 4)
      {
        sub_1313740();
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 36) = v32;
      }

      goto LABEL_94;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_86;
    }

    v5 |= 2u;
    v20 = v7 + 1;
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_35;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_35:
      v53 = v20;
      *(a1 + 32) = v19 != 0;
      goto LABEL_94;
    }

    v47 = sub_19587DC(v7, v19);
    v53 = v47;
    *(a1 + 32) = v48 != 0;
    if (!v47)
    {
      goto LABEL_123;
    }

LABEL_94:
    if (sub_195ADC0(a3, &v53, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v25 = *(a1 + 24);
    if (!v25)
    {
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_16F5828(v27);
      *(a1 + 24) = v25;
      v7 = v53;
    }

    v28 = sub_21F4D60(a3, v25, v7);
LABEL_93:
    v53 = v28;
    if (!v28)
    {
      goto LABEL_123;
    }

    goto LABEL_94;
  }

LABEL_86:
  if (v8)
  {
    v44 = (v8 & 7) == 4;
  }

  else
  {
    v44 = 1;
  }

  if (!v44)
  {
    v45 = *(a1 + 8);
    if (v45)
    {
      v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v46 = sub_11F1920((a1 + 8));
      v7 = v53;
    }

    v28 = sub_1952690(v8, v46, v7, a3);
    goto LABEL_93;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_123:
  v53 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v53;
}

char *sub_16EF7E0(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 32);
    *__dst = 16;
    __dst[1] = v10;
    __dst += 2;
    if ((v5 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v7 = *(a1 + 24);
  *__dst = 10;
  v8 = *(v7 + 44);
  __dst[1] = v8;
  if (v8 > 0x7F)
  {
    v9 = sub_19575D0(v8, __dst + 1);
  }

  else
  {
    v9 = __dst + 2;
  }

  __dst = sub_16E5070(v7, v9, a3);
  if ((v5 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v5 & 4) == 0)
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

  v11 = *(a1 + 36);
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
  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v16 = *(a1 + 40);
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

    v20 = *(a1 + 44);
    *v15 = 40;
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

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 52);
    *v19 = 88;
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

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 56);
    *v24 = 96;
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

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v34 = *(a1 + 60);
    *v28 = 104;
    v28[1] = v34;
    if (v34 > 0x7F)
    {
      v28[1] = v34 | 0x80;
      v35 = v34 >> 7;
      v28[2] = v34 >> 7;
      v33 = v28 + 3;
      if (v34 >= 0x4000)
      {
        LOBYTE(v28) = v28[2];
        do
        {
          *(v33 - 1) = v28 | 0x80;
          v28 = (v35 >> 7);
          *v33++ = v35 >> 7;
          v36 = v35 >> 14;
          v35 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v33 = v28 + 2;
    }
  }

  else
  {
    v33 = v28;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v38 = *(a1 + 64);
    *v33 = 112;
    v33[1] = v38;
    if (v38 > 0x7F)
    {
      v33[1] = v38 | 0x80;
      v39 = v38 >> 7;
      v33[2] = v38 >> 7;
      v37 = v33 + 3;
      if (v38 >= 0x4000)
      {
        LOBYTE(v40) = v33[2];
        do
        {
          *(v37 - 1) = v40 | 0x80;
          v40 = v39 >> 7;
          *v37++ = v39 >> 7;
          v41 = v39 >> 14;
          v39 >>= 7;
        }

        while (v41);
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

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v37)
    {
      v37 = sub_225EB68(a3, v37);
    }

    v43 = *(a1 + 48);
    *v37 = 120;
    v37[1] = v43;
    if (v43 > 0x7F)
    {
      v37[1] = v43 | 0x80;
      v44 = v43 >> 7;
      v37[2] = v43 >> 7;
      v42 = v37 + 3;
      if (v43 >= 0x4000)
      {
        LOBYTE(v37) = v37[2];
        do
        {
          *(v42 - 1) = v37 | 0x80;
          LODWORD(v37) = v44 >> 7;
          *v42++ = v44 >> 7;
          v45 = v44 >> 14;
          v44 >>= 7;
        }

        while (v45);
      }
    }

    else
    {
      v42 = v37 + 2;
    }
  }

  else
  {
    v42 = v37;
  }

  v46 = *(a1 + 8);
  if ((v46 & 1) == 0)
  {
    return v42;
  }

  v48 = v46 & 0xFFFFFFFFFFFFFFFCLL;
  v49 = *(v48 + 31);
  if (v49 < 0)
  {
    v50 = *(v48 + 8);
    v49 = *(v48 + 16);
  }

  else
  {
    v50 = (v48 + 8);
  }

  if (*a3 - v42 >= v49)
  {
    v51 = v49;
    memcpy(v42, v50, v49);
    v42 += v51;
    return v42;
  }

  return sub_1957130(a3, v50, v49, v42);
}

uint64_t sub_16EFD54(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    result = 0;
    goto LABEL_31;
  }

  if (v2)
  {
    v5 = sub_16E51F0(*(a1 + 24));
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v3 = 0;
  }

  result = v3 + (v2 & 2);
  if ((v2 & 4) != 0)
  {
    v6 = *(a1 + 36);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v7;
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v8 = *(a1 + 40);
  if (v8 < 0)
  {
    v9 = 11;
  }

  else
  {
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v9;
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  result += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  result += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

LABEL_23:
  v10 = *(a1 + 52);
  if (v10 < 0)
  {
    v11 = 11;
  }

  else
  {
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v11;
  if ((v2 & 0x80) != 0)
  {
LABEL_27:
    v12 = *(a1 + 56);
    if (v12 < 0)
    {
      v13 = 11;
    }

    else
    {
      v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v13;
  }

LABEL_31:
  if ((v2 & 0x300) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v14 = *(a1 + 60);
      if (v14 < 0)
      {
        v15 = 11;
      }

      else
      {
        v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      result += v15;
    }

    if ((v2 & 0x200) != 0)
    {
      v16 = *(a1 + 64);
      if (v16 < 0)
      {
        v17 = 11;
      }

      else
      {
        v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

void sub_16EFF94(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
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

        goto LABEL_31;
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

      goto LABEL_32;
    }

LABEL_31:
    *(a1 + 36) = *(a2 + 36);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_33;
    }

LABEL_32:
    *(a1 + 40) = *(a2 + 40);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_34;
    }

LABEL_33:
    *(a1 + 44) = *(a2 + 44);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_35;
    }

LABEL_34:
    *(a1 + 48) = *(a2 + 48);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        *(a1 + 16) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      *(a1 + 56) = *(a2 + 56);
      goto LABEL_11;
    }

LABEL_35:
    *(a1 + 52) = *(a2 + 52);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x300) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      *(a1 + 60) = *(a2 + 60);
    }

    if ((v4 & 0x200) != 0)
    {
      *(a1 + 64) = *(a2 + 64);
    }

    *(a1 + 16) |= v4;
  }

  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_16F00F8(unsigned __int8 *a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_16EF1B4(a1);

    sub_16EFF94(a1, a2);
  }
}

uint64_t sub_16F0144(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 24);
  result = sub_195228C(v2 + 16);
  if (result)
  {
    return (~*(v2 + 40) & 3) == 0;
  }

  return result;
}

uint64_t sub_16F01A4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2701B88;
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
  }

  return a1;
}

void sub_16F0250(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_16F0284(uint64_t a1)
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

void sub_16F0324(uint64_t a1)
{
  sub_16F0284(a1);

  operator delete();
}

uint64_t sub_16F035C(uint64_t a1)
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

uint64_t sub_16F03A0(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_16F04D8(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_16F05A0(uint64_t a1)
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

void *sub_16F0638(void *a1)
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

void sub_16F06AC(void *a1)
{
  sub_16F0638(a1);

  operator delete();
}

uint64_t sub_16F06E4(uint64_t a1)
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

char *sub_16F0708(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_16F086C(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

uint64_t sub_16F0984(uint64_t a1)
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

void *sub_16F09F0(void *a1)
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

void sub_16F0A64(void *a1)
{
  sub_16F09F0(a1);

  operator delete();
}

uint64_t sub_16F0A9C(uint64_t a1)
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

char *sub_16F0AC0(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_16F0C24(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

uint64_t sub_16F0D3C(uint64_t a1)
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

uint64_t sub_16F0DA8(uint64_t a1)
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

  v5 = (a1 + 56);
  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C((a1 + 64));
  }

  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C((a1 + 72));
  }

  if (a1 != &off_277EA88)
  {
    v6 = *(a1 + 80);
    if (v6)
    {
      sub_16F0638(v6);
      operator delete();
    }

    v7 = *(a1 + 88);
    if (v7)
    {
      sub_16F09F0(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_16:
  sub_1956ABC(a1 + 40);
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16F0ECC(uint64_t a1)
{
  sub_16F0DA8(a1);

  operator delete();
}

uint64_t sub_16F0F04(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  *(result + 40) = 0;
  v2 = *(result + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_20:
    v6 = *(result + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_24;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

  v5 = *(result + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_20;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_24:
  v7 = *(result + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_28;
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *v7 = 0;
  *(v7 + 23) = 0;
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_28:
  result = sub_16F06E4(*(result + 80));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = sub_16F0A9C(*(v1 + 88));
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 104) = 0;
    *(v1 + 96) = 0;
  }

  if ((v2 & 0x3F00) != 0)
  {
    *(v1 + 108) = 0;
    *(v1 + 116) = 1;
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

uint64_t sub_16F1044(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v81 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v81, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (2)
  {
    v8 = (*v81 + 1);
    v9 = **v81;
    if (**v81 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(*v81, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = (*v81 + 2);
      }
    }

    *v81 = v8;
    switch(v9 >> 3)
    {
      case 1u:
        if (v9 != 8)
        {
          goto LABEL_142;
        }

        v14 = (v8 + 1);
        v13 = *v8;
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }

        v15 = *v14;
        v13 = (v15 << 7) + v13 - 128;
        if (v15 < 0)
        {
          *v81 = sub_19587DC(v8, v13);
          if (!*v81)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v14 = (v8 + 2);
LABEL_13:
          *v81 = v14;
        }

        if ((v13 - 1) > 2)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 16) |= 0x2000u;
          *(a1 + 116) = v13;
        }

        goto LABEL_150;
      case 2u:
        if (v9 != 18)
        {
          goto LABEL_142;
        }

        *(a1 + 16) |= 1u;
        v52 = *(a1 + 8);
        v37 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
        if (v52)
        {
          v37 = *v37;
        }

        v38 = (a1 + 56);
        goto LABEL_118;
      case 3u:
        if (v9 != 26)
        {
          goto LABEL_142;
        }

        *(a1 + 16) |= 2u;
        v36 = *(a1 + 8);
        v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
        if (v36)
        {
          v37 = *v37;
        }

        v38 = (a1 + 64);
        goto LABEL_118;
      case 4u:
        if (v9 != 34)
        {
          goto LABEL_142;
        }

        *(a1 + 16) |= 8u;
        v42 = *(a1 + 80);
        if (!v42)
        {
          v43 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v43 = *v43;
          }

          v42 = sub_16F61C8(v43);
          *(a1 + 80) = v42;
          v8 = *v81;
        }

        v35 = sub_2235F34(a3, v42, v8);
        goto LABEL_149;
      case 5u:
        if (v9 != 40)
        {
          goto LABEL_142;
        }

        v23 = (v8 + 1);
        v22 = *v8;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if (v24 < 0)
        {
          *v81 = sub_19587DC(v8, v22);
          if (!*v81)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v23 = (v8 + 2);
LABEL_30:
          *v81 = v23;
        }

        if (v22 > 2)
        {
          sub_12E85B8();
        }

        else
        {
          *(a1 + 16) |= 0x20u;
          *(a1 + 96) = v22;
        }

        goto LABEL_150;
      case 6u:
        if (v9 != 48)
        {
          goto LABEL_142;
        }

        v5 |= 0x200u;
        v54 = (v8 + 1);
        v53 = *v8;
        if ((v53 & 0x8000000000000000) == 0)
        {
          goto LABEL_96;
        }

        v55 = *v54;
        v53 = (v55 << 7) + v53 - 128;
        if (v55 < 0)
        {
          v73 = sub_19587DC(v8, v53);
          *v81 = v73;
          *(a1 + 112) = v74 != 0;
          if (!v73)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v54 = (v8 + 2);
LABEL_96:
          *v81 = v54;
          *(a1 + 112) = v53 != 0;
        }

        goto LABEL_150;
      case 7u:
        if (v9 != 56)
        {
          goto LABEL_142;
        }

        v60 = (v8 + 1);
        v59 = *v8;
        if ((v59 & 0x8000000000000000) == 0)
        {
          goto LABEL_106;
        }

        v61 = *v60;
        v59 = (v61 << 7) + v59 - 128;
        if (v61 < 0)
        {
          *v81 = sub_19587DC(v8, v59);
          if (!*v81)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v60 = (v8 + 2);
LABEL_106:
          *v81 = v60;
        }

        if (v59 > 3)
        {
          sub_13137F8();
        }

        else
        {
          *(a1 + 16) |= 0x40u;
          *(a1 + 100) = v59;
        }

        goto LABEL_150;
      case 8u:
        if (v9 == 64)
        {
          v44 = (v8 - 1);
          while (1)
          {
            *v81 = v44 + 1;
            v45 = *(v44 + 1);
            v46 = (v44 + 2);
            if (v45 < 0)
            {
              v47 = *v46;
              v48 = (v47 << 7) + v45;
              LODWORD(v45) = v48 - 128;
              if (v47 < 0)
              {
                *v81 = sub_19587DC(v44 + 1, (v48 - 128));
                if (!*v81)
                {
                  goto LABEL_158;
                }

                LODWORD(v45) = v51;
                goto LABEL_77;
              }

              v46 = (v44 + 3);
            }

            *v81 = v46;
LABEL_77:
            if (v45 > 4)
            {
              sub_12E85F0();
            }

            else
            {
              v49 = *(a1 + 24);
              if (v49 == *(a1 + 28))
              {
                v50 = v49 + 1;
                sub_1958E5C((a1 + 24), v49 + 1);
                *(*(a1 + 32) + 4 * v49) = v45;
              }

              else
              {
                *(*(a1 + 32) + 4 * v49) = v45;
                v50 = v49 + 1;
              }

              *(a1 + 24) = v50;
            }

            v44 = *v81;
            if (*a3 <= *v81 || **v81 != 64)
            {
              goto LABEL_150;
            }
          }
        }

        if (v9 != 66)
        {
          goto LABEL_142;
        }

        *&v82 = a1 + 24;
        *(&v82 + 1) = sub_16E4BD8;
        v83 = a1 + 8;
        v84 = 8;
        goto LABEL_141;
      case 9u:
        if (v9 != 74)
        {
          goto LABEL_142;
        }

        *(a1 + 16) |= 4u;
        v65 = *(a1 + 8);
        v37 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
        if (v65)
        {
          v37 = *v37;
        }

        v38 = (a1 + 72);
LABEL_118:
        v66 = sub_194DB04(v38, v37);
        v35 = sub_1958890(v66, *v81, a3);
        goto LABEL_149;
      case 0xAu:
        if (v9 != 82)
        {
          goto LABEL_142;
        }

        *(a1 + 16) |= 0x10u;
        v33 = *(a1 + 88);
        if (!v33)
        {
          v34 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v34 = *v34;
          }

          v33 = sub_16F6244(v34);
          *(a1 + 88) = v33;
          v8 = *v81;
        }

        v35 = sub_2235FC4(a3, v33, v8);
        goto LABEL_149;
      case 0xBu:
        if (v9 != 88)
        {
          goto LABEL_142;
        }

        v5 |= 0x80u;
        v63 = (v8 + 1);
        LODWORD(v62) = *v8;
        if ((v62 & 0x80) == 0)
        {
          goto LABEL_113;
        }

        v64 = *v63;
        v62 = v62 + (v64 << 7) - 128;
        if (v64 < 0)
        {
          v77 = sub_19587DC(v8, v62);
          *v81 = v77;
          *(a1 + 104) = v78;
          if (!v77)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v63 = (v8 + 2);
LABEL_113:
          *v81 = v63;
          *(a1 + 104) = v62;
        }

        goto LABEL_150;
      case 0xCu:
        if (v9 != 96)
        {
          goto LABEL_142;
        }

        v5 |= 0x100u;
        v20 = (v8 + 1);
        LODWORD(v19) = *v8;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_25;
        }

        v21 = *v20;
        v19 = v19 + (v21 << 7) - 128;
        if (v21 < 0)
        {
          v69 = sub_19587DC(v8, v19);
          *v81 = v69;
          *(a1 + 108) = v70;
          if (!v69)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v20 = (v8 + 2);
LABEL_25:
          *v81 = v20;
          *(a1 + 108) = v19;
        }

        goto LABEL_150;
      case 0xDu:
        if (v9 == 104)
        {
          v25 = (v8 - 1);
          while (1)
          {
            *v81 = v25 + 1;
            v26 = *(v25 + 1);
            v27 = (v25 + 2);
            if (v26 < 0)
            {
              v28 = *v27;
              v29 = (v28 << 7) + v26;
              LODWORD(v26) = v29 - 128;
              if (v28 < 0)
              {
                *v81 = sub_19587DC(v25 + 1, (v29 - 128));
                if (!*v81)
                {
                  goto LABEL_158;
                }

                LODWORD(v26) = v32;
                goto LABEL_39;
              }

              v27 = (v25 + 3);
            }

            *v81 = v27;
LABEL_39:
            if (v26 > 4)
            {
              sub_144E0C4();
            }

            else
            {
              v30 = *(a1 + 40);
              if (v30 == *(a1 + 44))
              {
                v31 = v30 + 1;
                sub_1958E5C((a1 + 40), v30 + 1);
                *(*(a1 + 48) + 4 * v30) = v26;
              }

              else
              {
                *(*(a1 + 48) + 4 * v30) = v26;
                v31 = v30 + 1;
              }

              *(a1 + 40) = v31;
            }

            v25 = *v81;
            if (*a3 <= *v81 || **v81 != 104)
            {
              goto LABEL_150;
            }
          }
        }

        if (v9 == 106)
        {
          *&v82 = a1 + 40;
          *(&v82 + 1) = sub_16E4BCC;
          v83 = a1 + 8;
          v84 = 13;
LABEL_141:
          v35 = sub_1216588(a3, v8, &v82);
LABEL_149:
          *v81 = v35;
          if (!v35)
          {
            goto LABEL_158;
          }

LABEL_150:
          if (sub_195ADC0(a3, v81, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_142:
        if (v9)
        {
          v79 = (v9 & 7) == 4;
        }

        else
        {
          v79 = 1;
        }

        if (!v79)
        {
          if (*v7)
          {
            v80 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v80 = sub_11F1920((a1 + 8));
            v8 = *v81;
          }

          v35 = sub_1952690(v9, v80, v8, a3);
          goto LABEL_149;
        }

        if (v8)
        {
          a3[10].i32[0] = v9 - 1;
        }

        else
        {
LABEL_158:
          *v81 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v81;
      case 0xEu:
        if (v9 != 112)
        {
          goto LABEL_142;
        }

        v5 |= 0x400u;
        v57 = (v8 + 1);
        v56 = *v8;
        if ((v56 & 0x8000000000000000) == 0)
        {
          goto LABEL_101;
        }

        v58 = *v57;
        v56 = (v58 << 7) + v56 - 128;
        if (v58 < 0)
        {
          v75 = sub_19587DC(v8, v56);
          *v81 = v75;
          *(a1 + 113) = v76 != 0;
          if (!v75)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v57 = (v8 + 2);
LABEL_101:
          *v81 = v57;
          *(a1 + 113) = v56 != 0;
        }

        goto LABEL_150;
      case 0xFu:
        if (v9 != 120)
        {
          goto LABEL_142;
        }

        v5 |= 0x800u;
        v17 = (v8 + 1);
        v16 = *v8;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_20;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if (v18 < 0)
        {
          v67 = sub_19587DC(v8, v16);
          *v81 = v67;
          *(a1 + 114) = v68 != 0;
          if (!v67)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v17 = (v8 + 2);
LABEL_20:
          *v81 = v17;
          *(a1 + 114) = v16 != 0;
        }

        goto LABEL_150;
      case 0x10u:
        if (v9 != 128)
        {
          goto LABEL_142;
        }

        v5 |= 0x1000u;
        v40 = (v8 + 1);
        v39 = *v8;
        if ((v39 & 0x8000000000000000) == 0)
        {
          goto LABEL_64;
        }

        v41 = *v40;
        v39 = (v41 << 7) + v39 - 128;
        if (v41 < 0)
        {
          v71 = sub_19587DC(v8, v39);
          *v81 = v71;
          *(a1 + 115) = v72 != 0;
          if (!v71)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v40 = (v8 + 2);
LABEL_64:
          *v81 = v40;
          *(a1 + 115) = v39 != 0;
        }

        goto LABEL_150;
      default:
        goto LABEL_142;
    }
  }
}

char *sub_16F1904(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 116);
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
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 8) == 0)
      {
        goto LABEL_13;
      }

LABEL_17:
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v12 = *(a1 + 80);
      *v6 = 34;
      v13 = *(v12 + 20);
      v6[1] = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, v6 + 1);
      }

      else
      {
        v14 = v6 + 2;
      }

      v6 = sub_16F086C(v12, v14, a3);
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_12;
  }

  v6 = sub_128AEEC(a3, 3, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  if ((v5 & 0x20) == 0)
  {
LABEL_14:
    v11 = v6;
    goto LABEL_30;
  }

LABEL_23:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v15 = *(a1 + 96);
  *v6 = 40;
  v6[1] = v15;
  if (v15 > 0x7F)
  {
    v6[1] = v15 | 0x80;
    v16 = v15 >> 7;
    v6[2] = v15 >> 7;
    v11 = v6 + 3;
    if (v15 >= 0x4000)
    {
      LOBYTE(v17) = v6[2];
      do
      {
        *(v11 - 1) = v17 | 0x80;
        v17 = v16 >> 7;
        *v11++ = v16 >> 7;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

LABEL_30:
  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v19 = *(a1 + 112);
    *v11 = 48;
    v11[1] = v19;
    v11 += 2;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v21 = *(a1 + 100);
    *v11 = 56;
    v11[1] = v21;
    if (v21 > 0x7F)
    {
      v11[1] = v21 | 0x80;
      v22 = v21 >> 7;
      v11[2] = v21 >> 7;
      v20 = v11 + 3;
      if (v21 >= 0x4000)
      {
        LOBYTE(v23) = v11[2];
        do
        {
          *(v20 - 1) = v23 | 0x80;
          v23 = v22 >> 7;
          *v20++ = v22 >> 7;
          v24 = v22 >> 14;
          v22 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v20 = v11 + 2;
    }
  }

  else
  {
    v20 = v11;
  }

  v25 = *(a1 + 24);
  if (v25 < 1)
  {
    v28 = v20;
  }

  else
  {
    for (i = 0; i != v25; ++i)
    {
      if (*a3 <= v20)
      {
        v20 = sub_225EB68(a3, v20);
      }

      v27 = *(*(a1 + 32) + 4 * i);
      *v20 = 64;
      v20[1] = v27;
      if (v27 > 0x7F)
      {
        v20[1] = v27 | 0x80;
        v29 = v27 >> 7;
        v20[2] = v27 >> 7;
        v28 = v20 + 3;
        if (v27 >= 0x4000)
        {
          LOBYTE(v20) = v20[2];
          do
          {
            *(v28 - 1) = v20 | 0x80;
            v20 = (v29 >> 7);
            *v28++ = v29 >> 7;
            v30 = v29 >> 14;
            v29 >>= 7;
          }

          while (v30);
        }
      }

      else
      {
        v28 = v20 + 2;
      }

      v20 = v28;
    }
  }

  if ((v5 & 4) == 0)
  {
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_57;
    }

LABEL_60:
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v32 = *(a1 + 88);
    *v28 = 82;
    v33 = *(v32 + 20);
    v28[1] = v33;
    if (v33 > 0x7F)
    {
      v34 = sub_19575D0(v33, v28 + 1);
    }

    else
    {
      v34 = v28 + 2;
    }

    v28 = sub_16F0C24(v32, v34, a3);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_66;
  }

  v28 = sub_128AEEC(a3, 9, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v28);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_60;
  }

LABEL_57:
  if ((v5 & 0x80) == 0)
  {
LABEL_58:
    v31 = v28;
    goto LABEL_73;
  }

LABEL_66:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v35 = *(a1 + 104);
  *v28 = 88;
  v28[1] = v35;
  if (v35 > 0x7F)
  {
    v28[1] = v35 | 0x80;
    v36 = v35 >> 7;
    v28[2] = v35 >> 7;
    v31 = v28 + 3;
    if (v35 >= 0x4000)
    {
      LOBYTE(v37) = v28[2];
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
    v31 = v28 + 2;
  }

LABEL_73:
  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v40 = *(a1 + 108);
    *v31 = 96;
    v31[1] = v40;
    if (v40 > 0x7F)
    {
      v31[1] = v40 | 0x80;
      v41 = v40 >> 7;
      v31[2] = v40 >> 7;
      v39 = v31 + 3;
      if (v40 >= 0x4000)
      {
        LOBYTE(v31) = v31[2];
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
      v39 = v31 + 2;
    }
  }

  else
  {
    v39 = v31;
  }

  v43 = *(a1 + 40);
  if (v43 < 1)
  {
    v46 = v39;
  }

  else
  {
    for (j = 0; j != v43; ++j)
    {
      if (*a3 <= v39)
      {
        v39 = sub_225EB68(a3, v39);
      }

      v45 = *(*(a1 + 48) + 4 * j);
      *v39 = 104;
      v39[1] = v45;
      if (v45 > 0x7F)
      {
        v39[1] = v45 | 0x80;
        v47 = v45 >> 7;
        v39[2] = v45 >> 7;
        v46 = v39 + 3;
        if (v45 >= 0x4000)
        {
          LOBYTE(v48) = v39[2];
          do
          {
            *(v46 - 1) = v48 | 0x80;
            v48 = v47 >> 7;
            *v46++ = v47 >> 7;
            v49 = v47 >> 14;
            v47 >>= 7;
          }

          while (v49);
        }
      }

      else
      {
        v46 = v39 + 2;
      }

      v39 = v46;
    }
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v50 = *(a1 + 113);
    *v46 = 112;
    v46[1] = v50;
    v46 += 2;
    if ((v5 & 0x800) == 0)
    {
LABEL_96:
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_104;
    }
  }

  else if ((v5 & 0x800) == 0)
  {
    goto LABEL_96;
  }

  if (*a3 <= v46)
  {
    v46 = sub_225EB68(a3, v46);
  }

  v51 = *(a1 + 114);
  *v46 = 120;
  v46[1] = v51;
  v46 += 2;
  if ((v5 & 0x1000) != 0)
  {
LABEL_104:
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v52 = *(a1 + 115);
    *v46 = 384;
    v46[2] = v52;
    v46 += 3;
  }

LABEL_107:
  v53 = *(a1 + 8);
  if ((v53 & 1) == 0)
  {
    return v46;
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

  if (*a3 - v46 >= v56)
  {
    v58 = v56;
    memcpy(v46, v57, v56);
    v46 += v58;
    return v46;
  }

  return sub_1957130(a3, v57, v56, v46);
}