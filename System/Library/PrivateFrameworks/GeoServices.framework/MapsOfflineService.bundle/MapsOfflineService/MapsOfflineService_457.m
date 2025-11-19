void sub_188BB4C(void *a1)
{
  sub_188BACC(a1);

  operator delete();
}

uint64_t sub_188BB84(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_188B038(v4);
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

char *sub_188BC00(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_1900C00(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_2252C94(a3, v16, v13);
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

char *sub_188BD90(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_188B3D0(v8, v10, a3);
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

uint64_t sub_188BED0(uint64_t a1)
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
      v7 = sub_188B61C(v6);
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

void sub_188BF78(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1944B98((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
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

BOOL sub_188C034(uint64_t a1)
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
    v5 = sub_188B94C(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_188C09C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2716558;
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

  *(a1 + 48) = &qword_278E990;
  if (*(a2 + 16))
  {
    v11 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

void sub_188C1C4(_Unwind_Exception *a1)
{
  sub_1956AFC(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_188C204(uint64_t a1)
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
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_188C2AC(uint64_t a1)
{
  sub_188C204(a1);

  operator delete();
}

uint64_t sub_188C2E4(uint64_t a1)
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
  *(v4 + 48) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_188C36C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v30 = a2;
  if (sub_195ADC0(a3, v30, a3[11].i32[1]))
  {
    return *v30;
  }

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
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        v19 = v6 - 1;
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
            v24 = *(a1 + 24);
            if (!v24)
            {
              operator new();
            }

            *v26 = v25;
            v26[1] = sub_195A650;
            *v25 = 0;
            v25[1] = 0;
            v25[2] = 0;
            v23 = sub_19593CC(a1 + 24, v25);
            v20 = *v30;
          }

          v19 = sub_1958890(v23, v20, a3);
          *v30 = v19;
          if (!v19)
          {
            goto LABEL_52;
          }

          if (*a3 <= v19 || *v19 != 26)
          {
            goto LABEL_44;
          }
        }
      }

      goto LABEL_13;
    }

    if (v10 != 2)
    {
      break;
    }

    if (v7 != 18)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 1u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v18 = sub_194DB04((a1 + 48), v17);
    v15 = sub_1958890(v18, *v30, a3);
LABEL_24:
    *v30 = v15;
    if (!v15)
    {
      goto LABEL_52;
    }

LABEL_44:
    if (sub_195ADC0(a3, v30, a3[11].i32[1]))
    {
      return *v30;
    }
  }

  if (v10 == 1 && v7 == 8)
  {
    v28 = v6 + 1;
    v27 = *v6;
    if ((v27 & 0x8000000000000000) == 0)
    {
      goto LABEL_41;
    }

    v29 = *v28;
    v27 = (v29 << 7) + v27 - 128;
    if (v29 < 0)
    {
      *v30 = sub_19587DC(v6, v27);
      if (!*v30)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v28 = v6 + 2;
LABEL_41:
      *v30 = v28;
    }

    if (v27 > 2)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 16) |= 2u;
      *(a1 + 56) = v27;
    }

    goto LABEL_44;
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
      v6 = *v30;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
    goto LABEL_24;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v30;
  }

LABEL_52:
  *v30 = 0;
  return *v30;
}

char *sub_188C62C(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 56);
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
        memcpy(v15, v13, v14);
        v6 = &v15[v14];
      }

      v12 += 8;
      --v11;
    }

    while (v11);
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

uint64_t sub_188C824(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 < 1)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v2 = (*(a1 + 40) + 8);
    v3 = *(a1 + 32);
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

  v7 = *(a1 + 16);
  if ((v7 & 3) != 0)
  {
    if (v7)
    {
      v8 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v7 & 2) != 0)
    {
      v11 = *(a1 + 56);
      if (v11 < 0)
      {
        v12 = 11;
      }

      else
      {
        v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v3 += v12;
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

    v3 += v16;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_188C950(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_27165D8;
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

void sub_188CAA0(_Unwind_Exception *a1)
{
  sub_1956AFC(v4);
  sub_1956AFC(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_188CAF0(void *a1)
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

void sub_188CB74(void *a1)
{
  sub_188CAF0(a1);

  operator delete();
}

uint64_t sub_188CBAC(uint64_t a1)
{
  sub_12A41D0(a1 + 16);
  result = sub_12A41D0(a1 + 40);
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_188CC04(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_188CEC8(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_188D0B4(uint64_t a1)
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

uint64_t sub_188D1B4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2716658;
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

  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 32) = 0;
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 40) = 0;
  if ((v5 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t sub_188D380(uint64_t a1)
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

  if (a1 != &off_2788910)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1869B9C(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_188C204(v7);
      operator delete();
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      sub_188CAF0(v8);
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

void sub_188D48C(uint64_t a1)
{
  sub_188D380(a1);

  operator delete();
}

uint64_t sub_188D4C4(uint64_t result)
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
    result = sub_1869C8C(*(result + 32));
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
  result = sub_188C2E4(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_188CBAC(*(v1 + 48));
  }

LABEL_7:
  if ((v2 & 0x30) != 0)
  {
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

uint64_t sub_188D58C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v35 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v35, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v35 + 1);
    v7 = **v35;
    if (**v35 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v35, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v35 + 2);
      }
    }

    *v35 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 3)
    {
      if (v10 == 4)
      {
        if (v7 == 32)
        {
          v23 = (v6 + 1);
          v22 = *v6;
          if ((v22 & 0x8000000000000000) == 0)
          {
            goto LABEL_40;
          }

          v24 = *v23;
          v22 = (v24 << 7) + v22 - 128;
          if (v24 < 0)
          {
            *v35 = sub_19587DC(v6, v22);
            if (!*v35)
            {
              goto LABEL_72;
            }
          }

          else
          {
            v23 = (v6 + 2);
LABEL_40:
            *v35 = v23;
          }

          if (v22 > 4)
          {
            sub_12E8500();
          }

          else
          {
            *(a1 + 16) |= 0x20u;
            *(a1 + 60) = v22;
          }

          continue;
        }

        goto LABEL_53;
      }

      if (v10 == 5)
      {
        if (v7 != 42)
        {
          goto LABEL_53;
        }

        *(a1 + 16) |= 4u;
        v28 = *(a1 + 40);
        if (!v28)
        {
          v29 = *(a1 + 8);
          v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v30 = *v30;
          }

          v28 = sub_1900D2C(v30);
          *(a1 + 40) = v28;
          v6 = *v35;
        }

        v15 = sub_2252D24(a3, v28, v6);
      }

      else
      {
        if (v10 != 6 || v7 != 50)
        {
          goto LABEL_53;
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

          v16 = sub_1900DD4(v18);
          *(a1 + 48) = v16;
          v6 = *v35;
        }

        v15 = sub_2252DB4(a3, v16, v6);
      }
    }

    else
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v20 = (v6 + 1);
          v19 = *v6;
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_33;
          }

          v21 = *v20;
          v19 = (v21 << 7) + v19 - 128;
          if (v21 < 0)
          {
            *v35 = sub_19587DC(v6, v19);
            if (!*v35)
            {
              goto LABEL_72;
            }
          }

          else
          {
            v20 = (v6 + 2);
LABEL_33:
            *v35 = v20;
          }

          if (v19 > 4)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 0x10u;
            *(a1 + 56) = v19;
          }

          continue;
        }

LABEL_53:
        if (v7)
        {
          v31 = (v7 & 7) == 4;
        }

        else
        {
          v31 = 1;
        }

        if (v31)
        {
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return *v35;
          }

LABEL_72:
          *v35 = 0;
          return *v35;
        }

        v32 = *(a1 + 8);
        if (v32)
        {
          v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v33 = sub_11F1920((a1 + 8));
          v6 = *v35;
        }

        v15 = sub_1952690(v7, v33, v6, a3);
        goto LABEL_60;
      }

      if (v10 == 2)
      {
        if (v7 != 18)
        {
          goto LABEL_53;
        }

        *(a1 + 16) |= 1u;
        v25 = *(a1 + 8);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        v27 = sub_194DB04((a1 + 24), v26);
        v15 = sub_1958890(v27, *v35, a3);
      }

      else
      {
        if (v10 != 3 || v7 != 26)
        {
          goto LABEL_53;
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

          v12 = sub_18FF354(v14);
          *(a1 + 32) = v12;
          v6 = *v35;
        }

        v15 = sub_2201670(a3, v12, v6);
      }
    }

LABEL_60:
    *v35 = v15;
    if (!v15)
    {
      goto LABEL_72;
    }
  }

  return *v35;
}

char *sub_188D8D8(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 56);
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

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 32);
    *v6 = 26;
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

    v6 = sub_1869F58(v12, v14, a3);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

  v6 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  if ((v5 & 0x20) == 0)
  {
LABEL_13:
    v11 = v6;
    goto LABEL_28;
  }

LABEL_21:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v15 = *(a1 + 60);
  *v6 = 32;
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

LABEL_28:
  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v19 = *(a1 + 40);
    *v11 = 42;
    v20 = *(v19 + 20);
    v11[1] = v20;
    if (v20 > 0x7F)
    {
      v21 = sub_19575D0(v20, v11 + 1);
    }

    else
    {
      v21 = v11 + 2;
    }

    v11 = sub_188C62C(v19, v21, a3);
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v22 = *(a1 + 48);
    *v11 = 50;
    v23 = *(v22 + 64);
    v11[1] = v23;
    if (v23 > 0x7F)
    {
      v24 = sub_19575D0(v23, v11 + 1);
    }

    else
    {
      v24 = v11 + 2;
    }

    v11 = sub_188CEC8(v22, v24, a3);
  }

  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return v11;
  }

  v27 = v25 & 0xFFFFFFFFFFFFFFFCLL;
  v28 = *(v27 + 31);
  if (v28 < 0)
  {
    v29 = *(v27 + 8);
    v28 = *(v27 + 16);
  }

  else
  {
    v29 = (v27 + 8);
  }

  if (*a3 - v11 >= v28)
  {
    v30 = v28;
    memcpy(v11, v29, v28);
    v11 += v30;
    return v11;
  }

  return sub_1957130(a3, v29, v28, v11);
}

uint64_t sub_188DBE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_25;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_186A16C(*(a1 + 32));
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
    v8 = sub_188C824(*(a1 + 40));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v9 = sub_188D0B4(*(a1 + 48));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

LABEL_17:
  v10 = *(a1 + 56);
  if (v10 < 0)
  {
    v11 = 11;
  }

  else
  {
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v11;
  if ((v2 & 0x20) != 0)
  {
LABEL_21:
    v12 = *(a1 + 60);
    if (v12 < 0)
    {
      v13 = 11;
    }

    else
    {
      v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v13;
  }

LABEL_25:
  v14 = *(a1 + 8);
  if (v14)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v3 += v17;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_188DDA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_194EA1C((a1 + 24), (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
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

      v9 = sub_18FF354(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_2787BC0;
    }

    sub_186A25C(v9, v12);
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

      v13 = sub_1900D2C(v15);
      *(a1 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_2788888;
    }

    sub_15337B8(v13, v16);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_41;
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

      v17 = sub_1900DD4(v19);
      *(a1 + 48) = v17;
    }

    if (*(a2 + 48))
    {
      v20 = *(a2 + 48);
    }

    else
    {
      v20 = &off_27888C8;
    }

    sub_14C99B8(v17, v20);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
LABEL_9:
        *(a1 + 16) |= v4;
        goto LABEL_10;
      }

LABEL_8:
      *(a1 + 60) = *(a2 + 60);
      goto LABEL_9;
    }

LABEL_41:
    *(a1 + 56) = *(a2 + 56);
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

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_188DF60(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v1 = *(a1 + 32);
  if ((*(v1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E6614(*(v1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_188DFAC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_27166D8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  return a1;
}

void sub_188E010(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_188E040(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_188E0BC(void *a1)
{
  sub_188E040(a1);

  operator delete();
}

unsigned __int8 *sub_188E0F4(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_188E144(uint64_t a1, char *a2, int32x2_t *a3)
{
  v14 = a2;
  if ((sub_195ADC0(a3, &v14, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v14 + 1;
      v6 = *v14;
      if (*v14 < 0)
      {
        v7 = v6 + (*v5 << 7);
        v6 = v7 - 128;
        if (*v5 < 0)
        {
          v5 = sub_1958824(v14, v7 - 128);
          v6 = v8;
        }

        else
        {
          v5 = v14 + 2;
        }
      }

      v14 = v5;
      if (!v6 || (v6 & 7) == 4)
      {
        break;
      }

      if (v6 - 800 > 0x31F)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v12 = sub_11F1920((a1 + 8));
          v5 = v14;
        }

        v10 = sub_1952690(v6, v12, v5, a3);
      }

      else
      {
        v10 = sub_19525AC((a1 + 16), v6, v5, &off_2788950, (a1 + 8), a3);
      }

      v14 = v10;
      if (!v10)
      {
        return 0;
      }

      if (sub_195ADC0(a3, &v14, a3[11].i32[1]))
      {
        return v14;
      }
    }

    if (v5)
    {
      a3[10].i32[0] = v6 - 1;
      return v14;
    }

    return 0;
  }

  return v14;
}

char *sub_188E27C(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 100, 200, a2, a3);
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

uint64_t sub_188E344(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
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

  *(a1 + 40) = result;
  return result;
}

void *sub_188E3AC(void *a1)
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

void sub_188E420(void *a1)
{
  sub_188E3AC(a1);

  operator delete();
}

uint64_t sub_188E458(uint64_t a1)
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

char *sub_188E47C(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_188E5E0(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

uint64_t sub_188E6F8(uint64_t a1)
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

uint64_t sub_188E764(uint64_t a1)
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
  if (a1 != &off_27889A8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_155431C(v6);
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

void sub_188E81C(uint64_t a1)
{
  sub_188E764(a1);

  operator delete();
}

uint64_t sub_188E854(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_14F37E0(*(result + 24));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_188E8B4(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 8)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
    v20 = v7 + 1;
    v21 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    v22 = *v20;
    v21 = v21 + (v22 << 7) - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_30:
      v25 = v20;
      *(a1 + 32) = v21;
      goto LABEL_31;
    }

    v23 = sub_1958770(v7, v21);
    v25 = v23;
    *(a1 + 32) = v24;
    if (!v23)
    {
      goto LABEL_38;
    }

LABEL_31:
    if (sub_195ADC0(a3, &v25, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
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

      sub_155A500(v18);
      v16 = v19;
      *(a1 + 24) = v19;
      v7 = v25;
    }

    v15 = sub_22179F8(a3, v16, v7);
LABEL_25:
    v25 = v15;
    if (!v15)
    {
      goto LABEL_38;
    }

    goto LABEL_31;
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

    v15 = sub_1952690(v8, v14, v7, a3);
    goto LABEL_25;
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

char *sub_188EA8C(uint64_t a1, char *__dst, _DWORD *a3)
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
    *v6 = 18;
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

    v6 = sub_15544E4(v11, v13, a3);
  }

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

uint64_t sub_188EC18(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_1554640(*(a1 + 24));
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

std::string *sub_188ECD4(std::string *result, uint64_t a2)
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

        sub_155A500(v7);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2777198;
      }

      result = sub_14F406C(data, v8);
    }

    if ((v4 & 2) != 0)
    {
      LODWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_188EDBC(uint64_t a1)
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

  sub_188EE40(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_188EE40(uint64_t (***result)()))()
{
  if (result != &off_27889D0)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      sub_188E3AC(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_188E3AC(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_188E764(v4);
      operator delete();
    }

    v5 = v1[6];
    if (v5)
    {
      sub_188E3AC(v5);
      operator delete();
    }

    result = v1[7];
    if (result)
    {
      sub_188E3AC(result);

      operator delete();
    }
  }

  return result;
}

void sub_188EF0C(uint64_t a1)
{
  sub_188EDBC(a1);

  operator delete();
}

uint64_t sub_188EF44(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    result = sub_188E458(*(result + 24));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      result = sub_188E854(*(v1 + 40));
      if ((v2 & 8) == 0)
      {
LABEL_6:
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_188E458(*(v1 + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:
  result = sub_188E458(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = sub_188E458(*(v1 + 56));
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 64) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 68) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_188F000(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 4)
    {
      if (v8 >> 3 > 6)
      {
        if (v11 == 7)
        {
          if (v8 == 58)
          {
            *(a1 + 16) |= 8u;
            v16 = *(a1 + 48);
            if (!v16)
            {
              v30 = *(a1 + 8);
              v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
              if (v30)
              {
                v31 = *v31;
              }

              v16 = sub_1900F5C(v31);
              *(a1 + 48) = v16;
              goto LABEL_70;
            }

            goto LABEL_71;
          }

          goto LABEL_75;
        }

        if (v11 == 8)
        {
          if (v8 == 66)
          {
            *(a1 + 16) |= 0x10u;
            v16 = *(a1 + 56);
            if (!v16)
            {
              v36 = *(a1 + 8);
              v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
              if (v36)
              {
                v37 = *v37;
              }

              v16 = sub_1900F5C(v37);
              *(a1 + 56) = v16;
              goto LABEL_70;
            }

            goto LABEL_71;
          }

          goto LABEL_75;
        }

        if (v11 != 9 || v8 != 72)
        {
          goto LABEL_75;
        }

        v5 |= 0x100u;
        v13 = v7 + 1;
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = v7 + 2;
LABEL_16:
          v47 = v13;
          *(a1 + 76) = v12 != 0;
          goto LABEL_73;
        }

        v45 = sub_19587DC(v7, v12);
        v47 = v45;
        *(a1 + 76) = v46 != 0;
        if (!v45)
        {
          goto LABEL_94;
        }

        goto LABEL_73;
      }

      if (v11 == 5)
      {
        if (v8 == 42)
        {
          *(a1 + 16) |= 4u;
          v32 = *(a1 + 40);
          if (!v32)
          {
            v33 = *(a1 + 8);
            v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
            if (v33)
            {
              v34 = *v34;
            }

            v32 = sub_1900FD8(v34);
            *(a1 + 40) = v32;
            v7 = v47;
          }

          v35 = sub_2252ED4(a3, v32, v7);
          goto LABEL_72;
        }

        goto LABEL_75;
      }

      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_75;
      }

      v22 = v7 + 1;
      v21 = *v7;
      if (v21 < 0)
      {
        v23 = *v22;
        v21 = (v23 << 7) + v21 - 128;
        if (v23 < 0)
        {
          v47 = sub_19587DC(v7, v21);
          if (!v47)
          {
            goto LABEL_94;
          }

          goto LABEL_42;
        }

        v22 = v7 + 2;
      }

      v47 = v22;
LABEL_42:
      if (v21 > 4)
      {
        sub_12E84C8();
      }

      else
      {
        *(a1 + 16) |= 0x80u;
        *(a1 + 72) = v21;
      }

      goto LABEL_73;
    }

    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 == 2 && v8 == 18)
      {
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

          v16 = sub_1900F5C(v18);
          *(a1 + 24) = v16;
          goto LABEL_70;
        }

        goto LABEL_71;
      }

      goto LABEL_75;
    }

    if (v8 != 8)
    {
      goto LABEL_75;
    }

    v5 |= 0x20u;
    v24 = v7 + 1;
    v25 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    v26 = *v24;
    v25 = v25 + (v26 << 7) - 128;
    if ((v26 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_48:
      v47 = v24;
      *(a1 + 64) = v25;
      goto LABEL_73;
    }

    v41 = sub_1958770(v7, v25);
    v47 = v41;
    *(a1 + 64) = v42;
    if (!v41)
    {
      goto LABEL_94;
    }

LABEL_73:
    if (sub_195ADC0(a3, &v47, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_75;
    }

    v5 |= 0x40u;
    v27 = v7 + 1;
    v28 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    v29 = *v27;
    v28 = v28 + (v29 << 7) - 128;
    if ((v29 & 0x80000000) == 0)
    {
      v27 = v7 + 2;
LABEL_53:
      v47 = v27;
      *(a1 + 68) = v28;
      goto LABEL_73;
    }

    v43 = sub_1958770(v7, v28);
    v47 = v43;
    *(a1 + 68) = v44;
    if (!v43)
    {
      goto LABEL_94;
    }

    goto LABEL_73;
  }

  if (v11 == 4 && v8 == 34)
  {
    *(a1 + 16) |= 2u;
    v16 = *(a1 + 32);
    if (!v16)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v16 = sub_1900F5C(v20);
      *(a1 + 32) = v16;
LABEL_70:
      v7 = v47;
    }

LABEL_71:
    v35 = sub_2252E44(a3, v16, v7);
LABEL_72:
    v47 = v35;
    if (!v35)
    {
      goto LABEL_94;
    }

    goto LABEL_73;
  }

LABEL_75:
  if (v8)
  {
    v38 = (v8 & 7) == 4;
  }

  else
  {
    v38 = 1;
  }

  if (!v38)
  {
    v39 = *(a1 + 8);
    if (v39)
    {
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v40 = sub_11F1920((a1 + 8));
      v7 = v47;
    }

    v35 = sub_1952690(v8, v40, v7, a3);
    goto LABEL_72;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_94:
  v47 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v47;
}

char *sub_188F480(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 64);
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
    *v6 = 18;
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

    v6 = sub_188E5E0(v11, v13, a3);
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v15 = *(a1 + 68);
    *v6 = 24;
    v6[1] = v15;
    if (v15 > 0x7F)
    {
      v6[1] = v15 | 0x80;
      v16 = v15 >> 7;
      v6[2] = v15 >> 7;
      v14 = v6 + 3;
      if (v15 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v14 - 1) = v6 | 0x80;
          LODWORD(v6) = v16 >> 7;
          *v14++ = v16 >> 7;
          v17 = v16 >> 14;
          v16 >>= 7;
        }

        while (v17);
      }
    }

    else
    {
      v14 = v6 + 2;
    }
  }

  else
  {
    v14 = v6;
  }

  if ((v5 & 2) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_28;
    }

LABEL_36:
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v22 = *(a1 + 40);
    *v14 = 42;
    v23 = *(v22 + 20);
    v14[1] = v23;
    if (v23 > 0x7F)
    {
      v24 = sub_19575D0(v23, v14 + 1);
    }

    else
    {
      v24 = v14 + 2;
    }

    v14 = sub_188EA8C(v22, v24, a3);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_42;
  }

  if (*a3 <= v14)
  {
    v14 = sub_225EB68(a3, v14);
  }

  v19 = *(a1 + 32);
  *v14 = 34;
  v20 = *(v19 + 20);
  v14[1] = v20;
  if (v20 > 0x7F)
  {
    v21 = sub_19575D0(v20, v14 + 1);
  }

  else
  {
    v21 = v14 + 2;
  }

  v14 = sub_188E5E0(v19, v21, a3);
  if ((v5 & 4) != 0)
  {
    goto LABEL_36;
  }

LABEL_28:
  if ((v5 & 0x80) == 0)
  {
LABEL_29:
    v18 = v14;
    goto LABEL_49;
  }

LABEL_42:
  if (*a3 <= v14)
  {
    v14 = sub_225EB68(a3, v14);
  }

  v25 = *(a1 + 72);
  *v14 = 48;
  v14[1] = v25;
  if (v25 > 0x7F)
  {
    v14[1] = v25 | 0x80;
    v26 = v25 >> 7;
    v14[2] = v25 >> 7;
    v18 = v14 + 3;
    if (v25 >= 0x4000)
    {
      LOBYTE(v14) = v14[2];
      do
      {
        *(v18 - 1) = v14 | 0x80;
        v14 = (v26 >> 7);
        *v18++ = v26 >> 7;
        v27 = v26 >> 14;
        v26 >>= 7;
      }

      while (v27);
    }
  }

  else
  {
    v18 = v14 + 2;
  }

LABEL_49:
  if ((v5 & 8) != 0)
  {
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v28 = *(a1 + 48);
    *v18 = 58;
    v29 = *(v28 + 20);
    v18[1] = v29;
    if (v29 > 0x7F)
    {
      v30 = sub_19575D0(v29, v18 + 1);
    }

    else
    {
      v30 = v18 + 2;
    }

    v18 = sub_188E5E0(v28, v30, a3);
    if ((v5 & 0x10) == 0)
    {
LABEL_51:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_65;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_51;
  }

  if (*a3 <= v18)
  {
    v18 = sub_225EB68(a3, v18);
  }

  v31 = *(a1 + 56);
  *v18 = 66;
  v32 = *(v31 + 20);
  v18[1] = v32;
  if (v32 > 0x7F)
  {
    v33 = sub_19575D0(v32, v18 + 1);
  }

  else
  {
    v33 = v18 + 2;
  }

  v18 = sub_188E5E0(v31, v33, a3);
  if ((v5 & 0x100) != 0)
  {
LABEL_65:
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v34 = *(a1 + 76);
    *v18 = 72;
    v18[1] = v34;
    v18 += 2;
  }

LABEL_68:
  v35 = *(a1 + 8);
  if ((v35 & 1) == 0)
  {
    return v18;
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

  if (*a3 - v18 >= v38)
  {
    v40 = v38;
    memcpy(v18, v39, v38);
    v18 += v40;
    return v18;
  }

  return sub_1957130(a3, v39, v38, v18);
}

uint64_t sub_188F904(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v3 = 0;
    goto LABEL_24;
  }

  if (v2)
  {
    v4 = sub_188E6F8(*(a1 + 24));
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
    v5 = sub_188E6F8(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = sub_188EC18(*(a1 + 40));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v7 = sub_188E6F8(*(a1 + 48));
  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = sub_188E6F8(*(a1 + 56));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

LABEL_18:
  v3 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

LABEL_19:
  v3 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v9 = *(a1 + 72);
  if (v9 < 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v10;
LABEL_24:
  result = v3 + ((v2 >> 7) & 2);
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    result += v14;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_188FB08(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      data = result[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v9 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v9 = *v9;
        }

        data = sub_1900F5C(v9);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v10 = *(a2 + 24);
      }

      else
      {
        v10 = &off_2788980;
      }

      result = sub_1336380(data, v10);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_34;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v11 = v3[1].__r_.__value_.__l.__size_;
    if (!v11)
    {
      v12 = v3->__r_.__value_.__l.__size_;
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_1900F5C(v13);
      v3[1].__r_.__value_.__l.__size_ = v11;
    }

    if (*(a2 + 32))
    {
      v14 = *(a2 + 32);
    }

    else
    {
      v14 = &off_2788980;
    }

    result = sub_1336380(v11, v14);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_42;
    }

LABEL_34:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v15 = v3[1].__r_.__value_.__r.__words[2];
    if (!v15)
    {
      v16 = v3->__r_.__value_.__l.__size_;
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_1900FD8(v17);
      v3[1].__r_.__value_.__r.__words[2] = v15;
    }

    if (*(a2 + 40))
    {
      v18 = *(a2 + 40);
    }

    else
    {
      v18 = &off_27889A8;
    }

    result = sub_188ECD4(v15, v18);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_50;
    }

LABEL_42:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    v19 = v3[2].__r_.__value_.__l.__data_;
    if (!v19)
    {
      v20 = v3->__r_.__value_.__l.__size_;
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_1900F5C(v21);
      v3[2].__r_.__value_.__r.__words[0] = v19;
    }

    if (*(a2 + 48))
    {
      v22 = *(a2 + 48);
    }

    else
    {
      v22 = &off_2788980;
    }

    result = sub_1336380(v19, v22);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_58;
    }

LABEL_50:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
    v23 = v3[2].__r_.__value_.__l.__size_;
    if (!v23)
    {
      v24 = v3->__r_.__value_.__l.__size_;
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_1900F5C(v25);
      v3[2].__r_.__value_.__l.__size_ = v23;
    }

    if (*(a2 + 56))
    {
      v26 = *(a2 + 56);
    }

    else
    {
      v26 = &off_2788980;
    }

    result = sub_1336380(v23, v26);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_59;
    }

LABEL_58:
    LODWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
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
      LODWORD(v3[3].__r_.__value_.__l.__data_) = *(a2 + 72);
      goto LABEL_11;
    }

LABEL_59:
    HIDWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 68);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x100) != 0)
  {
    v5 = *(a2 + 76);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x100u;
    v3[3].__r_.__value_.__s.__data_[4] = v5;
  }

  v6 = *(a2 + 8);
  if (v6)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_188FD58(void *a1)
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

void sub_188FDCC(void *a1)
{
  sub_188FD58(a1);

  operator delete();
}

uint64_t sub_188FE04(uint64_t a1)
{
  if ((*(a1 + 16) & 0x3F) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0xFFFFFFF700000000;
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

char *sub_188FE34(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 0xA)
    {
      if (v11 == 11)
      {
        if (v8 == 93)
        {
          v21 = *v7;
          v12 = v7 + 4;
          v5 |= 0x10u;
          *(a1 + 40) = v21;
          goto LABEL_38;
        }
      }

      else if (v11 == 12)
      {
        if (v8 == 101)
        {
          v23 = *v7;
          v12 = v7 + 4;
          v5 |= 4u;
          *(a1 + 32) = v23;
          goto LABEL_38;
        }
      }

      else if (v11 == 99 && v8 == 24)
      {
        v15 = v7 + 1;
        v16 = *v7;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v17 = *v15;
        v18 = (v17 << 7) + v16;
        v16 = (v18 - 128);
        if (v17 < 0)
        {
          v30 = sub_19587DC(v7, (v18 - 128));
          if (!v30)
          {
            goto LABEL_58;
          }

          v16 = v27;
        }

        else
        {
          v15 = v7 + 2;
LABEL_23:
          v30 = v15;
        }

        if ((v16 + 3) < 7 || v16 == -9)
        {
          *(a1 + 16) |= 0x20u;
          *(a1 + 44) = v16;
        }

        else
        {
          v28 = *(a1 + 8);
          if (v28)
          {
            v29 = ((v28 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }

          else
          {
            v29 = sub_11F1920((a1 + 8));
          }

          sub_19586BC(99, v16, v29);
        }

        goto LABEL_39;
      }
    }

    else if (v11 == 1)
    {
      if (v8 == 13)
      {
        v20 = *v7;
        v12 = v7 + 4;
        v5 |= 1u;
        *(a1 + 24) = v20;
        goto LABEL_38;
      }
    }

    else if (v11 == 2)
    {
      if (v8 == 21)
      {
        v22 = *v7;
        v12 = v7 + 4;
        v5 |= 2u;
        *(a1 + 28) = v22;
        goto LABEL_38;
      }
    }

    else if (v11 == 10 && v8 == 85)
    {
      v13 = *v7;
      v12 = v7 + 4;
      v5 |= 8u;
      *(a1 + 36) = v13;
LABEL_38:
      v30 = v12;
      goto LABEL_39;
    }

    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v25 = *(a1 + 8);
    if (v25)
    {
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v26 = sub_11F1920((a1 + 8));
      v7 = v30;
    }

    v30 = sub_1952690(v8, v26, v7, a3);
    if (!v30)
    {
      goto LABEL_58;
    }

LABEL_39:
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

LABEL_58:
  v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

char *sub_18900C0(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *__dst = 13;
    *(__dst + 1) = v7;
    __dst += 5;
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
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

  v8 = *(a1 + 28);
  *__dst = 21;
  *(__dst + 1) = v8;
  __dst += 5;
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_14:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v9 = *(a1 + 36);
  *__dst = 85;
  *(__dst + 1) = v9;
  __dst += 5;
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_20:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v11 = *(a1 + 32);
    *__dst = 101;
    *(__dst + 1) = v11;
    __dst += 5;
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_17:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v10 = *(a1 + 40);
  *__dst = 93;
  *(__dst + 1) = v10;
  __dst += 5;
  if ((v5 & 4) != 0)
  {
    goto LABEL_20;
  }

LABEL_6:
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    v6 = __dst;
    goto LABEL_30;
  }

LABEL_23:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v12 = *(a1 + 44);
  *__dst = 1688;
  __dst[2] = v12;
  if (v12 > 0x7F)
  {
    __dst[2] = v12 | 0x80;
    v13 = v12 >> 7;
    __dst[3] = v12 >> 7;
    v6 = __dst + 4;
    if (v12 >= 0x4000)
    {
      LOBYTE(v14) = __dst[3];
      do
      {
        *(v6 - 1) = v14 | 0x80;
        v14 = v13 >> 7;
        *v6++ = v13 >> 7;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
    }
  }

  else
  {
    v6 = __dst + 3;
  }

LABEL_30:
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

uint64_t sub_1890300(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) != 0)
  {
    v2 = 5;
    if ((v1 & 1) == 0)
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 8) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 0x10) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 0x20) != 0)
    {
      v3 = *(a1 + 44);
      v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v3 >= 0)
      {
        v5 = v4;
      }

      else
      {
        v5 = 12;
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

uint64_t sub_18903CC(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  if (*(a1 + 88) != &qword_278E990)
  {
    sub_194E89C((a1 + 88));
  }

  if (a1 != &off_2788A20)
  {
    v6 = *(a1 + 96);
    if (v6)
    {
      sub_188EDBC(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_194341C((a1 + 48));
  sub_194341C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18904E0(uint64_t a1)
{
  sub_18903CC(a1);

  operator delete();
}

uint64_t sub_1890518(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_188FE04(v4);
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
      result = sub_188FE04(v7);
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

  if (v8)
  {
    v11 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
      if ((v8 & 2) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
      if ((v8 & 2) != 0)
      {
        goto LABEL_25;
      }
    }

LABEL_12:
    if ((v8 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

  if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_25:
  v12 = *(v1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v12 + 23) & 0x80000000) == 0)
  {
    *v12 = 0;
    *(v12 + 23) = 0;
    if ((v8 & 4) != 0)
    {
      goto LABEL_29;
    }

LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  **v12 = 0;
  *(v12 + 8) = 0;
  if ((v8 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_29:
  v13 = *(v1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v13 + 23) & 0x80000000) == 0)
  {
    *v13 = 0;
    *(v13 + 23) = 0;
    if ((v8 & 8) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    result = sub_188EF44(*(v1 + 96));
    goto LABEL_15;
  }

  **v13 = 0;
  *(v13 + 8) = 0;
  if ((v8 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  if ((v8 & 0xF0) != 0)
  {
    *(v1 + 108) = 0;
    *(v1 + 104) = 0;
    *(v1 + 112) = -9;
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

uint64_t sub_1890690(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v62 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v62, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v62 + 1);
    v8 = **v62;
    if (**v62 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v62, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v62 + 2);
      }
    }

    *v62 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      if (v8 >> 3 <= 7)
      {
        if (v11 == 6)
        {
          if (v8 == 50)
          {
            v33 = (v7 - 1);
            while (1)
            {
              v34 = (v33 + 1);
              *v62 = v33 + 1;
              v35 = *(a1 + 40);
              if (v35 && (v36 = *(a1 + 32), v36 < *v35))
              {
                *(a1 + 32) = v36 + 1;
                v37 = *&v35[2 * v36 + 2];
              }

              else
              {
                v38 = sub_19010D8(*(a1 + 24));
                v37 = sub_19593CC(a1 + 24, v38);
                v34 = *v62;
              }

              v33 = sub_2252F64(a3, v37, v34);
              *v62 = v33;
              if (!v33)
              {
                goto LABEL_113;
              }

              if (*a3 <= v33 || *v33 != 50)
              {
                goto LABEL_96;
              }
            }
          }
        }

        else if (v11 == 7 && v8 == 58)
        {
          v24 = (v7 - 1);
          while (1)
          {
            v25 = (v24 + 1);
            *v62 = v24 + 1;
            v26 = *(a1 + 64);
            if (v26 && (v27 = *(a1 + 56), v27 < *v26))
            {
              *(a1 + 56) = v27 + 1;
              v28 = *&v26[2 * v27 + 2];
            }

            else
            {
              v29 = sub_19010D8(*(a1 + 48));
              v28 = sub_19593CC(a1 + 48, v29);
              v25 = *v62;
            }

            v24 = sub_2252F64(a3, v28, v25);
            *v62 = v24;
            if (!v24)
            {
              goto LABEL_113;
            }

            if (*a3 <= v24 || *v24 != 58)
            {
              goto LABEL_96;
            }
          }
        }

        goto LABEL_88;
      }

      if (v11 == 8)
      {
        if (v8 != 66)
        {
          goto LABEL_88;
        }

        *(a1 + 16) |= 4u;
        v42 = *(a1 + 8);
        v31 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
        if (v42)
        {
          v31 = *v31;
        }

        v32 = (a1 + 88);
LABEL_81:
        v44 = sub_194DB04(v32, v31);
        v45 = sub_1958890(v44, *v62, a3);
        goto LABEL_95;
      }

      if (v11 == 9)
      {
        if (v8 != 74)
        {
          goto LABEL_88;
        }

        *(a1 + 16) |= 8u;
        v46 = *(a1 + 96);
        if (!v46)
        {
          v47 = *(a1 + 8);
          v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
          if (v47)
          {
            v48 = *v48;
          }

          sub_1901054(v48);
          v46 = v49;
          *(a1 + 96) = v49;
          v7 = *v62;
        }

        v45 = sub_2252FF4(a3, v46, v7);
LABEL_95:
        *v62 = v45;
        if (!v45)
        {
          goto LABEL_113;
        }

        goto LABEL_96;
      }

      if (v11 != 10 || v8 != 80)
      {
        goto LABEL_88;
      }

      v5 |= 0x40u;
      v18 = (v7 + 1);
      v17 = *v7;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      v19 = *v18;
      v17 = (v19 << 7) + v17 - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v18 = (v7 + 2);
LABEL_31:
        *v62 = v18;
        *(a1 + 109) = v17 != 0;
        goto LABEL_96;
      }

      v58 = sub_19587DC(v7, v17);
      *v62 = v58;
      *(a1 + 109) = v59 != 0;
      if (!v58)
      {
        goto LABEL_113;
      }

      goto LABEL_96;
    }

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
          v43 = *(a1 + 8);
          v31 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
          if (v43)
          {
            v31 = *v31;
          }

          v32 = (a1 + 80);
          goto LABEL_81;
        }
      }

      else if (v11 == 5 && v8 == 40)
      {
        v12 = (v7 + 1);
        v13 = *v7;
        if ((v13 & 0x8000000000000000) != 0)
        {
          v14 = *v12;
          v15 = (v14 << 7) + v13;
          v13 = (v15 - 128);
          if (v14 < 0)
          {
            *v62 = sub_19587DC(v7, (v15 - 128));
            if (!*v62)
            {
              goto LABEL_113;
            }

            v13 = v57;
            goto LABEL_17;
          }

          v12 = (v7 + 2);
        }

        *v62 = v12;
LABEL_17:
        if ((v13 + 3) < 7 || v13 == -9)
        {
          *(a1 + 16) |= 0x80u;
          *(a1 + 112) = v13;
        }

        else
        {
          v60 = *(a1 + 8);
          if (v60)
          {
            v61 = ((v60 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }

          else
          {
            v61 = sub_11F1920((a1 + 8));
          }

          sub_19586BC(5, v13, v61);
        }

        goto LABEL_96;
      }

      goto LABEL_88;
    }

    if (v8 != 24)
    {
      goto LABEL_88;
    }

    v5 |= 0x20u;
    v40 = (v7 + 1);
    v39 = *v7;
    if ((v39 & 0x8000000000000000) == 0)
    {
      goto LABEL_72;
    }

    v41 = *v40;
    v39 = (v41 << 7) + v39 - 128;
    if ((v41 & 0x80000000) == 0)
    {
      v40 = (v7 + 2);
LABEL_72:
      *v62 = v40;
      *(a1 + 108) = v39 != 0;
      goto LABEL_96;
    }

    v55 = sub_19587DC(v7, v39);
    *v62 = v55;
    *(a1 + 108) = v56 != 0;
    if (!v55)
    {
      goto LABEL_113;
    }

LABEL_96:
    if (sub_195ADC0(a3, v62, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 1)
  {
    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_88;
    }

    v5 |= 0x10u;
    v21 = (v7 + 1);
    v22 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    v23 = *v21;
    v22 = v22 + (v23 << 7) - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v21 = (v7 + 2);
LABEL_41:
      *v62 = v21;
      *(a1 + 104) = v22;
      goto LABEL_96;
    }

    v53 = sub_1958770(v7, v22);
    *v62 = v53;
    *(a1 + 104) = v54;
    if (!v53)
    {
      goto LABEL_113;
    }

    goto LABEL_96;
  }

  if (v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v30 = *(a1 + 8);
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v31 = *v31;
    }

    v32 = (a1 + 72);
    goto LABEL_81;
  }

LABEL_88:
  if (v8)
  {
    v50 = (v8 & 7) == 4;
  }

  else
  {
    v50 = 1;
  }

  if (!v50)
  {
    v51 = *(a1 + 8);
    if (v51)
    {
      v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v52 = sub_11F1920((a1 + 8));
      v7 = *v62;
    }

    v45 = sub_1952690(v8, v52, v7, a3);
    goto LABEL_95;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_113:
  *v62 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v62;
}

char *sub_1890C04(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 104);
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
        LOBYTE(v4) = v4[2];
        do
        {
          *(v7 - 1) = v4 | 0x80;
          LODWORD(v4) = v9 >> 7;
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

  if ((v6 & 0x20) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_19:
    v7 = sub_128AEEC(a3, 4, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v7);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v12 = *(a1 + 108);
  *v7 = 24;
  v7[1] = v12;
  v7 += 2;
  if ((v6 & 2) != 0)
  {
    goto LABEL_19;
  }

LABEL_14:
  if ((v6 & 0x80) == 0)
  {
LABEL_15:
    v11 = v7;
    goto LABEL_27;
  }

LABEL_20:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v13 = *(a1 + 112);
  *v7 = 40;
  v7[1] = v13;
  if (v13 > 0x7F)
  {
    v7[1] = v13 | 0x80;
    v14 = v13 >> 7;
    v7[2] = v13 >> 7;
    v11 = v7 + 3;
    if (v13 >= 0x4000)
    {
      LOBYTE(v15) = v7[2];
      do
      {
        *(v11 - 1) = v15 | 0x80;
        v15 = v14 >> 7;
        *v11++ = v14 >> 7;
        v16 = v14 >> 14;
        v14 >>= 7;
      }

      while (v16);
    }
  }

  else
  {
    v11 = v7 + 2;
  }

LABEL_27:
  v17 = *(a1 + 32);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v19 = *(*(a1 + 40) + 8 * i + 8);
      *v11 = 50;
      v20 = *(v19 + 20);
      v11[1] = v20;
      if (v20 > 0x7F)
      {
        v21 = sub_19575D0(v20, v11 + 1);
      }

      else
      {
        v21 = v11 + 2;
      }

      v11 = sub_18900C0(v19, v21, a3);
    }
  }

  v22 = *(a1 + 56);
  if (v22)
  {
    for (j = 0; j != v22; ++j)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v24 = *(*(a1 + 64) + 8 * j + 8);
      *v11 = 58;
      v25 = *(v24 + 20);
      v11[1] = v25;
      if (v25 > 0x7F)
      {
        v26 = sub_19575D0(v25, v11 + 1);
      }

      else
      {
        v26 = v11 + 2;
      }

      v11 = sub_18900C0(v24, v26, a3);
    }
  }

  if ((v6 & 4) != 0)
  {
    v11 = sub_128AEEC(a3, 8, *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL, v11);
    if ((v6 & 8) == 0)
    {
LABEL_45:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_45;
  }

  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v27 = *(a1 + 96);
  *v11 = 74;
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

  v11 = sub_188F480(v27, v29, a3);
  if ((v6 & 0x40) != 0)
  {
LABEL_54:
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v30 = *(a1 + 109);
    *v11 = 80;
    v11[1] = v30;
    v11 += 2;
  }

LABEL_57:
  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return v11;
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

  if (*a3 - v11 >= v34)
  {
    v36 = v34;
    memcpy(v11, v35, v34);
    v11 += v36;
    return v11;
  }

  return sub_1957130(a3, v35, v34, v11);
}

uint64_t sub_1891020(uint64_t a1)
{
  if ((*(a1 + 16) & 0x10) != 0)
  {
    v2 = ((9 * (__clz(*(a1 + 104) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 32);
  v4 = v2 + v3;
  v5 = *(a1 + 40);
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
      v9 = sub_1890300(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 56);
  v11 = v4 + v10;
  v12 = *(a1 + 64);
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
      v16 = sub_1890300(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 16);
  if ((v17 & 0xF) == 0)
  {
    goto LABEL_22;
  }

  if (v17)
  {
    v24 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v25 = *(v24 + 23);
    v26 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v26 = v25;
    }

    v11 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v17 & 2) == 0)
    {
LABEL_19:
      if ((v17 & 4) == 0)
      {
        goto LABEL_20;
      }

LABEL_36:
      v30 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
      v31 = *(v30 + 23);
      v32 = *(v30 + 8);
      if ((v31 & 0x80u) == 0)
      {
        v32 = v31;
      }

      v11 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v17 & 8) != 0)
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }
  }

  else if ((v17 & 2) == 0)
  {
    goto LABEL_19;
  }

  v27 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v28 = *(v27 + 23);
  v29 = *(v27 + 8);
  if ((v28 & 0x80u) == 0)
  {
    v29 = v28;
  }

  v11 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v17 & 4) != 0)
  {
    goto LABEL_36;
  }

LABEL_20:
  if ((v17 & 8) != 0)
  {
LABEL_21:
    v18 = sub_188F904(*(a1 + 96));
    v11 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_22:
  if ((v17 & 0xE0) != 0)
  {
    v11 += ((v17 >> 5) & 2) + ((v17 >> 4) & 2);
    if ((v17 & 0x80) != 0)
    {
      v19 = *(a1 + 112);
      v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v19 >= 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = 11;
      }

      v11 += v21;
    }
  }

  v22 = *(a1 + 8);
  if (v22)
  {
    v33 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v34 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v34 < 0)
    {
      v34 = *(v33 + 16);
    }

    v11 += v34;
  }

  *(a1 + 20) = v11;
  return v11;
}

std::string *sub_18912B0(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_1944C24(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
    result = sub_1944C24(v3 + 2, v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
    v12 = LODWORD(v3[2].__r_.__value_.__r.__words[1]) + v9;
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = v12;
    v13 = v3[2].__r_.__value_.__r.__words[2];
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
          goto LABEL_11;
        }

        goto LABEL_28;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    v19 = *(a2 + 80);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v20 = v3->__r_.__value_.__l.__size_;
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    result = sub_194EA1C(&v3[3].__r_.__value_.__l.__size_, (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_31;
    }

LABEL_28:
    v22 = *(a2 + 88);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v23 = v3->__r_.__value_.__l.__size_;
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    result = sub_194EA1C(&v3[3].__r_.__value_.__r.__words[2], (v22 & 0xFFFFFFFFFFFFFFFELL), v24);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_39;
    }

LABEL_31:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    data = v3[4].__r_.__value_.__l.__data_;
    if (!data)
    {
      v26 = v3->__r_.__value_.__l.__size_;
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      sub_1901054(v27);
      v3[4].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 96))
    {
      v28 = *(a2 + 96);
    }

    else
    {
      v28 = &off_27889D0;
    }

    result = sub_188FB08(data, v28);
    if ((v14 & 0x10) == 0)
    {
LABEL_13:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_40;
    }

LABEL_39:
    LODWORD(v3[4].__r_.__value_.__r.__words[1]) = *(a2 + 104);
    if ((v14 & 0x20) == 0)
    {
LABEL_14:
      if ((v14 & 0x40) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_41;
    }

LABEL_40:
    v3[4].__r_.__value_.__s.__data_[12] = *(a2 + 108);
    if ((v14 & 0x40) == 0)
    {
LABEL_15:
      if ((v14 & 0x80) == 0)
      {
LABEL_17:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v14;
        goto LABEL_18;
      }

LABEL_16:
      LODWORD(v3[4].__r_.__value_.__r.__words[2]) = *(a2 + 112);
      goto LABEL_17;
    }

LABEL_41:
    v3[4].__r_.__value_.__s.__data_[13] = *(a2 + 109);
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  v15 = *(a2 + 8);
  if (v15)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1891534(uint64_t a1)
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

void sub_18915EC(uint64_t a1)
{
  sub_1891534(a1);

  operator delete();
}

uint64_t sub_1891624(uint64_t a1)
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

uint64_t sub_18916A0(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1891820(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1891908(uint64_t a1)
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

void *sub_18919F4(void *a1)
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

  sub_1891AA8(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956AFC(a1 + 15);
  sub_19434A0(a1 + 12);
  sub_1956AFC(a1 + 9);
  sub_19434A0(a1 + 6);
  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1891AA8(uint64_t a1)
{
  v3 = *(a1 + 144);
  v2 = (a1 + 144);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
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

  result = (a1 + 176);
  if (*(a1 + 176) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2788AC0)
  {
    if (*(a1 + 184))
    {
      sub_16E7270();
      operator delete();
    }

    v5 = *(a1 + 192);
    if (v5)
    {
      sub_186A3D0(v5);
      operator delete();
    }

    v6 = *(a1 + 200);
    if (v6)
    {
      sub_186A3D0(v6);
      operator delete();
    }

    result = *(a1 + 208);
    if (result)
    {
      sub_1891534(result);

      operator delete();
    }
  }

  return result;
}

void sub_1891BD8(void *a1)
{
  sub_18919F4(a1);

  operator delete();
}

uint64_t sub_1891C10(uint64_t a1)
{
  sub_12A41D0(a1 + 24);
  v2 = *(a1 + 56);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 64) + 8);
    do
    {
      v4 = *v3++;
      sub_1890518(v4);
      --v2;
    }

    while (v2);
    *(a1 + 56) = 0;
  }

  sub_12A41D0(a1 + 72);
  v5 = *(a1 + 104);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 112) + 8);
    do
    {
      v7 = *v6++;
      sub_1890518(v7);
      --v5;
    }

    while (v5);
    *(a1 + 104) = 0;
  }

  result = sub_12A41D0(a1 + 120);
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_19;
  }

  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_31:
    v13 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v13 + 23) < 0)
    {
      **v13 = 0;
      *(v13 + 8) = 0;
      if ((v9 & 4) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *v13 = 0;
      *(v13 + 23) = 0;
      if ((v9 & 4) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_13:
    if ((v9 & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_39:
    v15 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v15 + 23) < 0)
    {
      **v15 = 0;
      *(v15 + 8) = 0;
      if ((v9 & 0x10) != 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      *v15 = 0;
      *(v15 + 23) = 0;
      if ((v9 & 0x10) != 0)
      {
        goto LABEL_43;
      }
    }

LABEL_15:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_47:
    result = sub_16E72AC(*(a1 + 184));
    if ((v9 & 0x40) == 0)
    {
LABEL_17:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_48;
  }

  v12 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v12 + 23) < 0)
  {
    **v12 = 0;
    *(v12 + 8) = 0;
    if ((v9 & 2) != 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *v12 = 0;
    *(v12 + 23) = 0;
    if ((v9 & 2) != 0)
    {
      goto LABEL_31;
    }
  }

LABEL_12:
  if ((v9 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_35:
  v14 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v14 + 23) < 0)
  {
    **v14 = 0;
    *(v14 + 8) = 0;
    if ((v9 & 8) != 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    *v14 = 0;
    *(v14 + 23) = 0;
    if ((v9 & 8) != 0)
    {
      goto LABEL_39;
    }
  }

LABEL_14:
  if ((v9 & 0x10) == 0)
  {
    goto LABEL_15;
  }

LABEL_43:
  v16 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v16 + 23) < 0)
  {
    **v16 = 0;
    *(v16 + 8) = 0;
    if ((v9 & 0x20) != 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    *v16 = 0;
    *(v16 + 23) = 0;
    if ((v9 & 0x20) != 0)
    {
      goto LABEL_47;
    }
  }

LABEL_16:
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_48:
  result = sub_186A488(*(a1 + 192));
  if ((v9 & 0x80) != 0)
  {
LABEL_18:
    result = sub_186A488(*(a1 + 200));
  }

LABEL_19:
  if ((v9 & 0x100) != 0)
  {
    result = sub_1891624(*(a1 + 208));
  }

  if ((v9 & 0xE00) != 0)
  {
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
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

uint64_t sub_1891E2C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v85 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v85, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v85 + 1);
    v8 = **v85;
    if (**v85 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v85, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v85 + 2);
      }
    }

    *v85 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_127;
        }

        v5 |= 0x200u;
        v12 = (v7 + 1);
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_12:
          *v85 = v12;
          *(a1 + 216) = v11;
          goto LABEL_125;
        }

        v81 = sub_19587DC(v7, v11);
        *v85 = v81;
        *(a1 + 216) = v82;
        if (v81)
        {
          goto LABEL_125;
        }

        goto LABEL_143;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_127;
        }

        *(a1 + 16) |= 1u;
        v57 = *(a1 + 8);
        v38 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
        if (v57)
        {
          v38 = *v38;
        }

        v39 = (a1 + 144);
        goto LABEL_123;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_127;
        }

        *(a1 + 16) |= 2u;
        v42 = *(a1 + 8);
        v38 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
        if (v42)
        {
          v38 = *v38;
        }

        v39 = (a1 + 152);
        goto LABEL_123;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_127;
        }

        *(a1 + 16) |= 0x20u;
        v51 = *(a1 + 184);
        if (!v51)
        {
          v52 = *(a1 + 8);
          v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
          if (v52)
          {
            v53 = *v53;
          }

          v51 = sub_16F5A54(v53);
          *(a1 + 184) = v51;
          v7 = *v85;
        }

        v17 = sub_22002C0(a3, v51, v7);
        goto LABEL_124;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_127;
        }

        v29 = (v7 - 1);
        while (1)
        {
          v30 = (v29 + 1);
          *v85 = v29 + 1;
          v31 = *(a1 + 40);
          if (v31 && (v32 = *(a1 + 32), v32 < *v31))
          {
            *(a1 + 32) = v32 + 1;
            v33 = *&v31[2 * v32 + 2];
          }

          else
          {
            v34 = *(a1 + 24);
            if (!v34)
            {
              operator new();
            }

            *v36 = v35;
            v36[1] = sub_195A650;
            *v35 = 0;
            v35[1] = 0;
            v35[2] = 0;
            v33 = sub_19593CC(a1 + 24, v35);
            v30 = *v85;
          }

          v29 = sub_1958890(v33, v30, a3);
          *v85 = v29;
          if (!v29)
          {
            goto LABEL_143;
          }

          if (*a3 <= v29 || *v29 != 42)
          {
            goto LABEL_125;
          }
        }

      case 6u:
        if (v8 != 50)
        {
          goto LABEL_127;
        }

        *(a1 + 16) |= 4u;
        v58 = *(a1 + 8);
        v38 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
        if (v58)
        {
          v38 = *v38;
        }

        v39 = (a1 + 160);
        goto LABEL_123;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_127;
        }

        v5 |= 0x800u;
        v66 = (v7 + 1);
        v65 = *v7;
        if ((v65 & 0x8000000000000000) == 0)
        {
          goto LABEL_108;
        }

        v67 = *v66;
        v65 = (v67 << 7) + v65 - 128;
        if (v67 < 0)
        {
          v83 = sub_19587DC(v7, v65);
          *v85 = v83;
          *(a1 + 232) = v84 != 0;
          if (!v83)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v66 = (v7 + 2);
LABEL_108:
          *v85 = v66;
          *(a1 + 232) = v65 != 0;
        }

        goto LABEL_125;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_127;
        }

        v5 |= 0x400u;
        v55 = (v7 + 1);
        v54 = *v7;
        if ((v54 & 0x8000000000000000) == 0)
        {
          goto LABEL_85;
        }

        v56 = *v55;
        v54 = (v56 << 7) + v54 - 128;
        if (v56 < 0)
        {
          v79 = sub_19587DC(v7, v54);
          *v85 = v79;
          *(a1 + 224) = v80;
          if (!v79)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v55 = (v7 + 2);
LABEL_85:
          *v85 = v55;
          *(a1 + 224) = v54;
        }

        goto LABEL_125;
      case 9u:
        if (v8 != 74)
        {
          goto LABEL_127;
        }

        *(a1 + 16) |= 8u;
        v74 = *(a1 + 8);
        v38 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
        if (v74)
        {
          v38 = *v38;
        }

        v39 = (a1 + 168);
        goto LABEL_123;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_127;
        }

        *(a1 + 16) |= 0x40u;
        v18 = *(a1 + 192);
        if (v18)
        {
          goto LABEL_58;
        }

        v40 = *(a1 + 8);
        v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
        if (v40)
        {
          v41 = *v41;
        }

        v18 = sub_18FF3D0(v41);
        *(a1 + 192) = v18;
        goto LABEL_57;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_127;
        }

        v68 = v7 - 1;
        while (1)
        {
          v69 = v68 + 1;
          *v85 = v68 + 1;
          v70 = *(a1 + 64);
          if (v70 && (v71 = *(a1 + 56), v71 < *v70))
          {
            *(a1 + 56) = v71 + 1;
            v72 = *&v70[2 * v71 + 2];
          }

          else
          {
            v73 = sub_190115C(*(a1 + 48));
            v72 = sub_19593CC(a1 + 48, v73);
            v69 = *v85;
          }

          v68 = sub_2253084(a3, v72, v69);
          *v85 = v68;
          if (!v68)
          {
            goto LABEL_143;
          }

          if (*a3 <= v68 || *v68 != 90)
          {
            goto LABEL_125;
          }
        }

      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_127;
        }

        v21 = (v7 - 1);
        while (1)
        {
          v22 = (v21 + 1);
          *v85 = v21 + 1;
          v23 = *(a1 + 88);
          if (v23 && (v24 = *(a1 + 80), v24 < *v23))
          {
            *(a1 + 80) = v24 + 1;
            v25 = *&v23[2 * v24 + 2];
          }

          else
          {
            v26 = *(a1 + 72);
            if (!v26)
            {
              operator new();
            }

            *v28 = v27;
            v28[1] = sub_195A650;
            *v27 = 0;
            v27[1] = 0;
            v27[2] = 0;
            v25 = sub_19593CC(a1 + 72, v27);
            v22 = *v85;
          }

          v21 = sub_1958890(v25, v22, a3);
          *v85 = v21;
          if (!v21)
          {
            goto LABEL_143;
          }

          if (*a3 <= v21 || *v21 != 98)
          {
            goto LABEL_125;
          }
        }

      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_127;
        }

        *(a1 + 16) |= 0x10u;
        v37 = *(a1 + 8);
        v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
        if (v37)
        {
          v38 = *v38;
        }

        v39 = (a1 + 176);
LABEL_123:
        v75 = sub_194DB04(v39, v38);
        v17 = sub_1958890(v75, *v85, a3);
        goto LABEL_124;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_127;
        }

        v59 = v7 - 1;
        while (1)
        {
          v60 = v59 + 1;
          *v85 = v59 + 1;
          v61 = *(a1 + 112);
          if (v61 && (v62 = *(a1 + 104), v62 < *v61))
          {
            *(a1 + 104) = v62 + 1;
            v63 = *&v61[2 * v62 + 2];
          }

          else
          {
            v64 = sub_190115C(*(a1 + 96));
            v63 = sub_19593CC(a1 + 96, v64);
            v60 = *v85;
          }

          v59 = sub_2253084(a3, v63, v60);
          *v85 = v59;
          if (!v59)
          {
            goto LABEL_143;
          }

          if (*a3 <= v59 || *v59 != 114)
          {
            goto LABEL_125;
          }
        }

      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_127;
        }

        *(a1 + 16) |= 0x80u;
        v18 = *(a1 + 200);
        if (v18)
        {
          goto LABEL_58;
        }

        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v18 = sub_18FF3D0(v20);
        *(a1 + 200) = v18;
LABEL_57:
        v7 = *v85;
LABEL_58:
        v17 = sub_2251A94(a3, v18, v7);
        goto LABEL_124;
      case 0x10u:
        if (v8 != 130)
        {
          goto LABEL_127;
        }

        v43 = (v7 - 2);
        while (1)
        {
          v44 = (v43 + 2);
          *v85 = v43 + 2;
          v45 = *(a1 + 136);
          if (v45 && (v46 = *(a1 + 128), v46 < *v45))
          {
            *(a1 + 128) = v46 + 1;
            v47 = *&v45[2 * v46 + 2];
          }

          else
          {
            v48 = *(a1 + 120);
            if (!v48)
            {
              operator new();
            }

            *v50 = v49;
            v50[1] = sub_195A650;
            *v49 = 0;
            v49[1] = 0;
            v49[2] = 0;
            v47 = sub_19593CC(a1 + 120, v49);
            v44 = *v85;
          }

          v43 = sub_1958890(v47, v44, a3);
          *v85 = v43;
          if (!v43)
          {
            goto LABEL_143;
          }

          if (*a3 <= v43 || *v43 != 386)
          {
            goto LABEL_125;
          }
        }

      case 0x11u:
        if (v8 != 138)
        {
          goto LABEL_127;
        }

        *(a1 + 16) |= 0x100u;
        v14 = *(a1 + 208);
        if (!v14)
        {
          v15 = *(a1 + 8);
          v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
          if (v15)
          {
            v16 = *v16;
          }

          v14 = sub_190121C(v16);
          *(a1 + 208) = v14;
          v7 = *v85;
        }

        v17 = sub_2253114(a3, v14, v7);
        goto LABEL_124;
      default:
LABEL_127:
        if (v8)
        {
          v76 = (v8 & 7) == 4;
        }

        else
        {
          v76 = 1;
        }

        if (!v76)
        {
          v77 = *(a1 + 8);
          if (v77)
          {
            v78 = (v77 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v78 = sub_11F1920((a1 + 8));
            v7 = *v85;
          }

          v17 = sub_1952690(v8, v78, v7, a3);
LABEL_124:
          *v85 = v17;
          if (!v17)
          {
            goto LABEL_143;
          }

LABEL_125:
          if (sub_195ADC0(a3, v85, a3[11].i32[1]))
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
LABEL_143:
          *v85 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v85;
    }
  }
}

char *sub_18926AC(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 216);
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
    v6 = sub_128AEEC(a3, 2, *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL, v6);
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_12;
  }

  v6 = sub_128AEEC(a3, 3, *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_22;
  }

LABEL_16:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v11 = *(a1 + 184);
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

  v6 = sub_16E74A8(v11, v13, a3);
LABEL_22:
  v14 = *(a1 + 32);
  if (v14 >= 1)
  {
    v15 = 8;
    do
    {
      v16 = *(*(a1 + 40) + v15);
      v17 = *(v16 + 23);
      if (v17 < 0 && (v17 = v16[1], v17 > 127) || *a3 - v6 + 14 < v17)
      {
        v6 = sub_1957480(a3, 5, v16, v6);
      }

      else
      {
        *v6 = 42;
        v6[1] = v17;
        if (*(v16 + 23) < 0)
        {
          v16 = *v16;
        }

        v18 = v6 + 2;
        memcpy(v6 + 2, v16, v17);
        v6 = &v18[v17];
      }

      v15 += 8;
      --v14;
    }

    while (v14);
  }

  if ((v5 & 4) == 0)
  {
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v20 = *(a1 + 232);
    *v6 = 56;
    v6[1] = v20;
    v6 += 2;
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_41;
  }

  v6 = sub_128AEEC(a3, 6, *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 0x800) != 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if ((v5 & 0x400) == 0)
  {
LABEL_36:
    v19 = v6;
    goto LABEL_48;
  }

LABEL_41:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v21 = *(a1 + 224);
  *v6 = 64;
  v6[1] = v21;
  if (v21 > 0x7F)
  {
    v6[1] = v21 | 0x80;
    v22 = v21 >> 7;
    v6[2] = v21 >> 7;
    v19 = v6 + 3;
    if (v21 >= 0x4000)
    {
      LOBYTE(v23) = v6[2];
      do
      {
        *(v19 - 1) = v23 | 0x80;
        v23 = v22 >> 7;
        *v19++ = v22 >> 7;
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
    }
  }

  else
  {
    v19 = v6 + 2;
  }

LABEL_48:
  if ((v5 & 8) != 0)
  {
    v19 = sub_128AEEC(a3, 9, *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL, v19);
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 192);
    *v19 = 82;
    v26 = *(v25 + 40);
    v19[1] = v26;
    if (v26 > 0x7F)
    {
      v27 = sub_19575D0(v26, v19 + 1);
    }

    else
    {
      v27 = v19 + 2;
    }

    v19 = sub_186A694(v25, v27, a3);
  }

  v28 = *(a1 + 56);
  if (v28)
  {
    for (i = 0; i != v28; ++i)
    {
      if (*a3 <= v19)
      {
        v19 = sub_225EB68(a3, v19);
      }

      v30 = *(*(a1 + 64) + 8 * i + 8);
      *v19 = 90;
      v31 = *(v30 + 20);
      v19[1] = v31;
      if (v31 > 0x7F)
      {
        v32 = sub_19575D0(v31, v19 + 1);
      }

      else
      {
        v32 = v19 + 2;
      }

      v19 = sub_1890C04(v30, v32, a3);
    }
  }

  v33 = *(a1 + 80);
  if (v33 >= 1)
  {
    v34 = 8;
    do
    {
      v35 = *(*(a1 + 88) + v34);
      v36 = *(v35 + 23);
      if (v36 < 0 && (v36 = v35[1], v36 > 127) || *a3 - v19 + 14 < v36)
      {
        v19 = sub_1957480(a3, 12, v35, v19);
      }

      else
      {
        *v19 = 98;
        v19[1] = v36;
        if (*(v35 + 23) < 0)
        {
          v35 = *v35;
        }

        v37 = v19 + 2;
        memcpy(v37, v35, v36);
        v19 = &v37[v36];
      }

      v34 += 8;
      --v33;
    }

    while (v33);
  }

  if ((v5 & 0x10) != 0)
  {
    v19 = sub_128AEEC(a3, 13, *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL, v19);
  }

  v38 = *(a1 + 104);
  if (v38)
  {
    for (j = 0; j != v38; ++j)
    {
      if (*a3 <= v19)
      {
        v19 = sub_225EB68(a3, v19);
      }

      v40 = *(*(a1 + 112) + 8 * j + 8);
      *v19 = 114;
      v41 = *(v40 + 20);
      v19[1] = v41;
      if (v41 > 0x7F)
      {
        v42 = sub_19575D0(v41, v19 + 1);
      }

      else
      {
        v42 = v19 + 2;
      }

      v19 = sub_1890C04(v40, v42, a3);
    }
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v43 = *(a1 + 200);
    *v19 = 122;
    v44 = *(v43 + 40);
    v19[1] = v44;
    if (v44 > 0x7F)
    {
      v45 = sub_19575D0(v44, v19 + 1);
    }

    else
    {
      v45 = v19 + 2;
    }

    v19 = sub_186A694(v43, v45, a3);
  }

  v46 = *(a1 + 128);
  if (v46 >= 1)
  {
    v47 = 8;
    do
    {
      v48 = *(*(a1 + 136) + v47);
      v49 = *(v48 + 23);
      if (v49 < 0 && (v49 = v48[1], v49 > 127) || *a3 - v19 + 13 < v49)
      {
        v19 = sub_1957480(a3, 16, v48, v19);
      }

      else
      {
        *v19 = 386;
        v19[2] = v49;
        if (*(v48 + 23) < 0)
        {
          v48 = *v48;
        }

        v50 = v19 + 3;
        memcpy(v50, v48, v49);
        v19 = &v50[v49];
      }

      v47 += 8;
      --v46;
    }

    while (v46);
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v51 = *(a1 + 208);
    *v19 = 394;
    v52 = *(v51 + 20);
    v19[2] = v52;
    if (v52 > 0x7F)
    {
      v53 = sub_19575D0(v52, v19 + 2);
    }

    else
    {
      v53 = v19 + 3;
    }

    v19 = sub_1891820(v51, v53, a3);
  }

  v54 = *(a1 + 8);
  if ((v54 & 1) == 0)
  {
    return v19;
  }

  v56 = v54 & 0xFFFFFFFFFFFFFFFCLL;
  v57 = *(v56 + 31);
  if (v57 < 0)
  {
    v58 = *(v56 + 8);
    v57 = *(v56 + 16);
  }

  else
  {
    v58 = (v56 + 8);
  }

  if (*a3 - v19 >= v57)
  {
    v59 = v57;
    memcpy(v19, v58, v57);
    v19 += v59;
    return v19;
  }

  return sub_1957130(a3, v58, v57, v19);
}

uint64_t sub_1892DB0(uint64_t a1)
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
      v14 = sub_1891020(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 80);
  v16 = v9 + v15;
  if (v15 >= 1)
  {
    v17 = (*(a1 + 88) + 8);
    do
    {
      v18 = *v17++;
      v19 = *(v18 + 23);
      v20 = *(v18 + 8);
      if ((v19 & 0x80u) == 0)
      {
        v20 = v19;
      }

      v16 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      --v15;
    }

    while (v15);
  }

  v21 = *(a1 + 104);
  v22 = v16 + v21;
  v23 = *(a1 + 112);
  if (v23)
  {
    v24 = (v23 + 8);
  }

  else
  {
    v24 = 0;
  }

  if (v21)
  {
    v25 = 8 * v21;
    do
    {
      v26 = *v24++;
      v27 = sub_1891020(v26);
      v22 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6);
      v25 -= 8;
    }

    while (v25);
  }

  v28 = *(a1 + 128);
  v29 = v22 + 2 * v28;
  if (v28 >= 1)
  {
    v30 = (*(a1 + 136) + 8);
    do
    {
      v31 = *v30++;
      v32 = *(v31 + 23);
      v33 = *(v31 + 8);
      if ((v32 & 0x80u) == 0)
      {
        v33 = v32;
      }

      v29 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6);
      --v28;
    }

    while (v28);
  }

  v34 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    goto LABEL_40;
  }

  if (v34)
  {
    v38 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
    v39 = *(v38 + 23);
    v40 = *(v38 + 8);
    if ((v39 & 0x80u) == 0)
    {
      v40 = v39;
    }

    v29 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v34 & 2) == 0)
    {
LABEL_33:
      if ((v34 & 4) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_54;
    }
  }

  else if ((v34 & 2) == 0)
  {
    goto LABEL_33;
  }

  v41 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
  v42 = *(v41 + 23);
  v43 = *(v41 + 8);
  if ((v42 & 0x80u) == 0)
  {
    v43 = v42;
  }

  v29 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v34 & 4) == 0)
  {
LABEL_34:
    if ((v34 & 8) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_57;
  }

LABEL_54:
  v44 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
  v45 = *(v44 + 23);
  v46 = *(v44 + 8);
  if ((v45 & 0x80u) == 0)
  {
    v46 = v45;
  }

  v29 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v34 & 8) == 0)
  {
LABEL_35:
    if ((v34 & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_60;
  }

LABEL_57:
  v47 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
  v48 = *(v47 + 23);
  v49 = *(v47 + 8);
  if ((v48 & 0x80u) == 0)
  {
    v49 = v48;
  }

  v29 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v34 & 0x10) == 0)
  {
LABEL_36:
    if ((v34 & 0x20) == 0)
    {
      goto LABEL_37;
    }

LABEL_63:
    v53 = sub_16E7590(*(a1 + 184));
    v29 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v34 & 0x40) == 0)
    {
LABEL_38:
      if ((v34 & 0x80) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    goto LABEL_64;
  }

LABEL_60:
  v50 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
  v51 = *(v50 + 23);
  v52 = *(v50 + 8);
  if ((v51 & 0x80u) == 0)
  {
    v52 = v51;
  }

  v29 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v34 & 0x20) != 0)
  {
    goto LABEL_63;
  }

LABEL_37:
  if ((v34 & 0x40) == 0)
  {
    goto LABEL_38;
  }

LABEL_64:
  v54 = sub_186A7D4(*(a1 + 192));
  v29 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v34 & 0x80) != 0)
  {
LABEL_39:
    v35 = sub_186A7D4(*(a1 + 200));
    v29 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_40:
  if ((v34 & 0xF00) == 0)
  {
    goto LABEL_46;
  }

  if ((v34 & 0x100) == 0)
  {
    if ((v34 & 0x200) == 0)
    {
      goto LABEL_43;
    }

LABEL_67:
    v29 += ((9 * (__clz(*(a1 + 216) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v34 & 0x400) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v55 = sub_1891908(*(a1 + 208));
  v29 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v34 & 0x200) != 0)
  {
    goto LABEL_67;
  }

LABEL_43:
  if ((v34 & 0x400) != 0)
  {
LABEL_44:
    v29 += ((9 * (__clz(*(a1 + 224) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_45:
  v29 += (v34 >> 10) & 2;
LABEL_46:
  v36 = *(a1 + 8);
  if (v36)
  {
    v56 = v36 & 0xFFFFFFFFFFFFFFFCLL;
    v57 = *((v36 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v57 < 0)
    {
      v57 = *(v56 + 16);
    }

    v29 += v57;
  }

  *(a1 + 20) = v29;
  return v29;
}

std::string *sub_189325C(std::string *result, uint64_t a2)
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
    result = sub_1944CA0(&v3[2], v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
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
    result = sub_1201B48(&v3[3], v16, (v15 + 8), v14, *v3[3].__r_.__value_.__r.__words[2] - LODWORD(v3[3].__r_.__value_.__r.__words[1]));
    v17 = LODWORD(v3[3].__r_.__value_.__r.__words[1]) + v14;
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = v17;
    v18 = v3[3].__r_.__value_.__r.__words[2];
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 104);
  if (v19)
  {
    v20 = *(a2 + 112);
    v21 = sub_19592E8(&v3[4], *(a2 + 104));
    result = sub_1944CA0(&v3[4], v21, (v20 + 8), v19, *v3[4].__r_.__value_.__r.__words[2] - LODWORD(v3[4].__r_.__value_.__r.__words[1]));
    v22 = LODWORD(v3[4].__r_.__value_.__r.__words[1]) + v19;
    LODWORD(v3[4].__r_.__value_.__r.__words[1]) = v22;
    v23 = v3[4].__r_.__value_.__r.__words[2];
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 128);
  if (v24)
  {
    v25 = *(a2 + 136);
    v26 = sub_19592E8(&v3[5], *(a2 + 128));
    result = sub_1201B48(&v3[5], v26, (v25 + 8), v24, *v3[5].__r_.__value_.__r.__words[2] - LODWORD(v3[5].__r_.__value_.__r.__words[1]));
    v27 = LODWORD(v3[5].__r_.__value_.__r.__words[1]) + v24;
    LODWORD(v3[5].__r_.__value_.__r.__words[1]) = v27;
    v28 = v3[5].__r_.__value_.__r.__words[2];
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 16);
  if (v29)
  {
    if (v29)
    {
      v30 = *(a2 + 144);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      size = v3->__r_.__value_.__l.__size_;
      v32 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v32 = *v32;
      }

      result = sub_194EA1C(&v3[6], (v30 & 0xFFFFFFFFFFFFFFFELL), v32);
      if ((v29 & 2) == 0)
      {
LABEL_19:
        if ((v29 & 4) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_30;
      }
    }

    else if ((v29 & 2) == 0)
    {
      goto LABEL_19;
    }

    v33 = *(a2 + 152);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v34 = v3->__r_.__value_.__l.__size_;
    v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
    if (v34)
    {
      v35 = *v35;
    }

    result = sub_194EA1C(&v3[6].__r_.__value_.__l.__size_, (v33 & 0xFFFFFFFFFFFFFFFELL), v35);
    if ((v29 & 4) == 0)
    {
LABEL_20:
      if ((v29 & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_33;
    }

LABEL_30:
    v36 = *(a2 + 160);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v37 = v3->__r_.__value_.__l.__size_;
    v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
    if (v37)
    {
      v38 = *v38;
    }

    result = sub_194EA1C(&v3[6].__r_.__value_.__r.__words[2], (v36 & 0xFFFFFFFFFFFFFFFELL), v38);
    if ((v29 & 8) == 0)
    {
LABEL_21:
      if ((v29 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_36;
    }

LABEL_33:
    v39 = *(a2 + 168);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    v40 = v3->__r_.__value_.__l.__size_;
    v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
    if (v40)
    {
      v41 = *v41;
    }

    result = sub_194EA1C(&v3[7], (v39 & 0xFFFFFFFFFFFFFFFELL), v41);
    if ((v29 & 0x10) == 0)
    {
LABEL_22:
      if ((v29 & 0x20) == 0)
      {
LABEL_47:
        if ((v29 & 0x40) != 0)
        {
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x40u;
          data = v3[8].__r_.__value_.__l.__data_;
          if (!data)
          {
            v50 = v3->__r_.__value_.__l.__size_;
            v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
            if (v50)
            {
              v51 = *v51;
            }

            data = sub_18FF3D0(v51);
            v3[8].__r_.__value_.__r.__words[0] = data;
          }

          if (*(a2 + 192))
          {
            v52 = *(a2 + 192);
          }

          else
          {
            v52 = &off_2787BE8;
          }

          result = sub_1659F1C(data, v52);
        }

        if ((v29 & 0x80) != 0)
        {
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x80u;
          v53 = v3[8].__r_.__value_.__l.__size_;
          if (!v53)
          {
            v54 = v3->__r_.__value_.__l.__size_;
            v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
            if (v54)
            {
              v55 = *v55;
            }

            v53 = sub_18FF3D0(v55);
            v3[8].__r_.__value_.__l.__size_ = v53;
          }

          if (*(a2 + 200))
          {
            v56 = *(a2 + 200);
          }

          else
          {
            v56 = &off_2787BE8;
          }

          result = sub_1659F1C(v53, v56);
        }

        goto LABEL_65;
      }

LABEL_39:
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x20u;
      v45 = v3[7].__r_.__value_.__r.__words[2];
      if (!v45)
      {
        v46 = v3->__r_.__value_.__l.__size_;
        v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
        if (v46)
        {
          v47 = *v47;
        }

        v45 = sub_16F5A54(v47);
        v3[7].__r_.__value_.__r.__words[2] = v45;
      }

      if (*(a2 + 184))
      {
        v48 = *(a2 + 184);
      }

      else
      {
        v48 = &off_277E6F0;
      }

      result = sub_12F5A34(v45, v48);
      goto LABEL_47;
    }

LABEL_36:
    v42 = *(a2 + 176);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
    v43 = v3->__r_.__value_.__l.__size_;
    v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
    if (v43)
    {
      v44 = *v44;
    }

    result = sub_194EA1C(&v3[7].__r_.__value_.__l.__size_, (v42 & 0xFFFFFFFFFFFFFFFELL), v44);
    if ((v29 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_39;
  }

LABEL_65:
  if ((v29 & 0xF00) == 0)
  {
    goto LABEL_72;
  }

  if ((v29 & 0x100) != 0)
  {
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x100u;
    v58 = v3[8].__r_.__value_.__r.__words[2];
    if (!v58)
    {
      v59 = v3->__r_.__value_.__l.__size_;
      v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
      if (v59)
      {
        v60 = *v60;
      }

      v58 = sub_190121C(v60);
      v3[8].__r_.__value_.__r.__words[2] = v58;
    }

    if (*(a2 + 208))
    {
      v61 = *(a2 + 208);
    }

    else
    {
      v61 = &off_2788A98;
    }

    result = sub_12F5A34(v58, v61);
    if ((v29 & 0x200) == 0)
    {
LABEL_68:
      if ((v29 & 0x400) == 0)
      {
        goto LABEL_69;
      }

LABEL_85:
      v3[9].__r_.__value_.__l.__size_ = *(a2 + 224);
      if ((v29 & 0x800) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }
  }

  else if ((v29 & 0x200) == 0)
  {
    goto LABEL_68;
  }

  v3[9].__r_.__value_.__r.__words[0] = *(a2 + 216);
  if ((v29 & 0x400) != 0)
  {
    goto LABEL_85;
  }

LABEL_69:
  if ((v29 & 0x800) != 0)
  {
LABEL_70:
    v3[9].__r_.__value_.__s.__data_[16] = *(a2 + 232);
  }

LABEL_71:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= v29;
LABEL_72:
  v57 = *(a2 + 8);
  if (v57)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v57 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_1893720(uint64_t a1)
{
  v1 = *(a1 + 56);
  while (v1 >= 1)
  {
    v2 = *(*(a1 + 64) + 8 * v1--);
    if ((*(v2 + 16) & 0x10) == 0)
    {
      return 0;
    }
  }

  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  do
  {
    result = v4 < 1;
    if (v4 < 1)
    {
      break;
    }

    v6 = *(v5 + 8 * v4--);
  }

  while ((*(v6 + 16) & 0x10) != 0);
  return result;
}

void *sub_1893780(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1943524(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1893800(void *a1)
{
  sub_1893780(a1);

  operator delete();
}

uint64_t sub_1893838(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1891C10(v4);
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

char *sub_18938B4(uint64_t a1, char *a2, int32x2_t *a3)
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
            sub_19012A0(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_22531A4(a3, v16, v13);
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

char *sub_1893A44(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_18926AC(v8, v10, a3);
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

uint64_t sub_1893B84(uint64_t a1)
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
      v7 = sub_1892DB0(v6);
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

void sub_1893C2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1944D2C((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
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

BOOL sub_1893CE8(uint64_t a1)
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
    v5 = sub_1893720(*(v2 + 8 * v1));
    v1 = v4;
  }

  while (v5);
  return v3 < 1;
}

uint64_t sub_1893D4C(uint64_t a1)
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

  if (a1 != &off_2788BE0)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_188E040(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1893780(v6);
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

void sub_1893E1C(uint64_t a1)
{
  sub_1893D4C(a1);

  operator delete();
}

uint64_t sub_1893E54(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_188E0F4(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_1893838(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 32) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_1893EC8(uint64_t a1, char *a2, int32x2_t *a3)
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
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v19 = *(a1 + 32);
      if (!v19)
      {
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_1901384(v21);
        *(a1 + 32) = v19;
        v6 = v26;
      }

      v15 = sub_22532C4(a3, v19, v6);
    }

    else
    {
      if (v10 != 2)
      {
        if (v10 == 1 && v7 == 8)
        {
          v23 = v6 + 1;
          v22 = *v6;
          if ((v22 & 0x8000000000000000) == 0)
          {
            goto LABEL_37;
          }

          v24 = *v23;
          v22 = (v24 << 7) + v22 - 128;
          if (v24 < 0)
          {
            v26 = sub_19587DC(v6, v22);
            if (!v26)
            {
              return 0;
            }
          }

          else
          {
            v23 = v6 + 2;
LABEL_37:
            v26 = v23;
          }

          if (v22 > 2)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 40) = v22;
          }

          continue;
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
            return v26;
          }

          return 0;
        }

        v13 = *(a1 + 8);
        if (v13)
        {
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v14 = sub_11F1920((a1 + 8));
          v6 = v26;
        }

        v15 = sub_1952690(v7, v14, v6, a3);
        goto LABEL_32;
      }

      if (v7 != 18)
      {
        goto LABEL_13;
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

        v16 = sub_1900F00(v18);
        *(a1 + 24) = v16;
        v6 = v26;
      }

      v15 = sub_2253234(a3, v16, v6);
    }

LABEL_32:
    v26 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return v26;
}

char *sub_18940EC(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 40);
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
    *v6 = 18;
    v12 = *(v11 + 40);
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v6 + 1);
    }

    else
    {
      v13 = v6 + 2;
    }

    v6 = sub_188E27C(v11, v13, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v14 = *(a1 + 32);
    *v6 = 26;
    v15 = *(v14 + 40);
    v6[1] = v15;
    if (v15 > 0x7F)
    {
      v16 = sub_19575D0(v15, v6 + 1);
    }

    else
    {
      v16 = v6 + 2;
    }

    v6 = sub_1893A44(v14, v16, a3);
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v20)
  {
    v22 = v20;
    memcpy(v6, v21, v20);
    v6 += v22;
    return v6;
  }

  return sub_1957130(a3, v21, v20, v6);
}

uint64_t sub_18942E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v4 = sub_188E344(*(a1 + 24));
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
    v5 = sub_1893B84(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = *(a1 + 40);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v7;
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

    v3 += v11;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_18943EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
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

        v6 = sub_1900F00(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2788950;
      }

      sub_138F72C(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          *(a1 + 16) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        *(a1 + 40) = *(a2 + 40);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 16) |= 2u;
    v10 = *(a1 + 32);
    if (!v10)
    {
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_1901384(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_2788BB0;
    }

    sub_1893C2C(v10, v13);
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

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1894514(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!sub_195228C(*(a1 + 24) + 16))
    {
      return 0;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  do
  {
    v3 = v5 < 1;
    if (v5 < 1)
    {
      break;
    }

    v7 = v5 - 1;
    v8 = sub_1893720(*(v6 + 8 * v5));
    v5 = v7;
  }

  while (v8);
  return v3;
}

uint64_t sub_18945AC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = off_2716BD8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1944DB8(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
    v9 = *(a1 + 24) + v6;
    *(a1 + 24) = v9;
    v10 = *(a1 + 32);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 40) = 0;
  v11 = *(a2 + 8);
  if (v11)
  {
    sub_1957EF4(v4, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_189468C(_Unwind_Exception *a1)
{
  sub_19435A8(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18946D0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_19435A8(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1894750(void *a1)
{
  sub_18946D0(a1);

  operator delete();
}

uint64_t sub_1894788(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1893E54(v4);
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

char *sub_1894804(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_1901424(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_2253354(a3, v16, v13);
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

char *sub_1894994(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_18940EC(v8, v10, a3);
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

uint64_t sub_1894AD4(uint64_t a1)
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
      v7 = sub_18942E8(v6);
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

void sub_1894B7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1944DB8((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
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

BOOL sub_1894C38(uint64_t a1)
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
    v5 = sub_1894514(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_1894CA0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2716C58;
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
    sub_16E2D3C((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
  return a1;
}

uint64_t sub_1894E24(uint64_t a1)
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
  if (a1 != &off_2788C40)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_18946D0(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_16E2BB0((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1894EE8(uint64_t a1)
{
  sub_1894E24(a1);

  operator delete();
}

uint64_t sub_1894F20(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15AB2B4(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_1894788(*(v1 + 48));
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