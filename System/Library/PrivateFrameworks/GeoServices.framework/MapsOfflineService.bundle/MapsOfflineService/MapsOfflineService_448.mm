char *sub_182D8E4(uint64_t a1, char *a2, unint64_t *a3)
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

      a2 = sub_182C3A8(v8, v10, a3);
    }
  }

  v11 = *(a1 + 40);
  if ((v11 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v13 = *(a1 + 80);
    *a2 = 16;
    a2[1] = v13;
    if (v13 > 0x7F)
    {
      a2[1] = v13 | 0x80;
      v14 = v13 >> 7;
      a2[2] = v13 >> 7;
      v12 = a2 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(a2) = a2[2];
        do
        {
          *(v12 - 1) = a2 | 0x80;
          LODWORD(a2) = v14 >> 7;
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v12 = a2 + 2;
    }
  }

  else
  {
    v12 = a2;
  }

  if (v11)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v16 = *(a1 + 72);
    *v12 = 26;
    v17 = *(v16 + 20);
    v12[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v12 + 1);
    }

    else
    {
      v18 = v12 + 2;
    }

    v12 = sub_182D05C(v16, v18, a3);
  }

  if (*(a1 + 26))
  {
    v12 = sub_1953428(a1 + 16, 1000, 2000, v12, a3);
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v12;
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

  if ((*a3 - v12) >= v22)
  {
    v24 = v22;
    memcpy(v12, v23, v22);
    v12 += v24;
    return v12;
  }

  return sub_1957130(a3, v23, v22, v12);
}

uint64_t sub_182DB2C(uint64_t a1)
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
      v9 = sub_182C790(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      v11 = sub_182D20C(*(a1 + 72));
      v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v10 & 2) != 0)
    {
      v4 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  *(a1 + 44) = v4;
  return v4;
}

uint64_t sub_182DC4C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_27119D8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  return a1;
}

void sub_182DCB0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_182DCE0(void *a1)
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

void sub_182DD5C(void *a1)
{
  sub_182DCE0(a1);

  operator delete();
}

char *sub_182DD94(uint64_t a1, char *a2, int32x2_t *a3)
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

      if ((v6 - 8000) >> 6 > 0x7C)
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
        v10 = sub_19525AC((a1 + 16), v6, v5, &off_2786440, (a1 + 8), a3);
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

char *sub_182DEDC(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 1000, 2000, a2, a3);
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

uint64_t sub_182DFA4(uint64_t a1)
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

uint64_t sub_182E004(uint64_t a1)
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

  if (a1 != &off_2786470 && *(a1 + 24))
  {
    sub_153BF18();
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

void sub_182E0BC(uint64_t a1)
{
  sub_182E004(a1);

  operator delete();
}

uint64_t sub_182E0F4(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_144E31C(*(result + 24));
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

char *sub_182E150(uint64_t a1, char *a2, int32x2_t *a3)
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

        v14 = sub_1551A70(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_22030E0(a3, v14, v6);
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

char *sub_182E294(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_153C1A4(v6, v8, a3);
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

uint64_t sub_182E3A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_153C388(*(a1 + 24));
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

void sub_182E420(uint64_t a1, uint64_t a2)
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

      v5 = sub_1551A70(v7);
      *(a1 + 24) = v5;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_2776880;
    }

    sub_144F404(v5, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_182E4C8(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_144F674(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_182E508(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_2711AD8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return a1;
}

void sub_182E57C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_182E5AC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_2711AD8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v6 = *(a2 + 48);
  if (v6)
  {
    v7 = *(a2 + 56);
    v8 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_193DF90((a1 + 40), v8, (v7 + 8), v6, **(a1 + 56) - *(a1 + 48));
    v9 = *(a1 + 48) + v6;
    *(a1 + 48) = v9;
    v10 = *(a1 + 56);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v11 = *(a2 + 72);
  if (v11)
  {
    v12 = *(a2 + 80);
    v13 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_1201B48(a1 + 64, v13, (v12 + 8), v11, **(a1 + 80) - *(a1 + 72));
    v14 = *(a1 + 72) + v11;
    *(a1 + 72) = v14;
    v15 = *(a1 + 80);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  *(a1 + 88) = 0;
  v16 = *(a2 + 8);
  if (v16)
  {
    sub_1957EF4(v4, (v16 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  return a1;
}

void sub_182E710(_Unwind_Exception *a1)
{
  sub_193BD24(v1 + 5);
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_182E770(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956AFC(a1 + 8);
  sub_193BD24(a1 + 5);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_182E800(void *a1)
{
  sub_182E770(a1);

  operator delete();
}

uint64_t sub_182E838(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v29 = a2;
  if ((sub_195ADC0(a3, v29, a3[11].i32[1]) & 1) == 0)
  {
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
      if (v7 >> 3 == 2)
      {
        if (v7 == 18)
        {
          v13 = v6 - 1;
          while (1)
          {
            v14 = (v13 + 1);
            *v29 = v13 + 1;
            v15 = *(a1 + 80);
            if (v15 && (v16 = *(a1 + 72), v16 < *v15))
            {
              *(a1 + 72) = v16 + 1;
              v17 = *&v15[2 * v16 + 2];
            }

            else
            {
              v18 = *(a1 + 64);
              if (!v18)
              {
                operator new();
              }

              *v20 = v19;
              v20[1] = sub_195A650;
              *v19 = 0;
              v19[1] = 0;
              v19[2] = 0;
              v17 = sub_19593CC(a1 + 64, v19);
              v14 = *v29;
            }

            v13 = sub_1958890(v17, v14, a3);
            *v29 = v13;
            if (!v13)
            {
              goto LABEL_48;
            }

            if (*a3 <= v13 || *v13 != 18)
            {
              goto LABEL_43;
            }
          }
        }
      }

      else if (v7 >> 3 == 1 && v7 == 10)
      {
        v21 = v6 - 1;
        while (1)
        {
          v22 = (v21 + 1);
          *v29 = v21 + 1;
          v23 = *(a1 + 56);
          if (v23 && (v24 = *(a1 + 48), v24 < *v23))
          {
            *(a1 + 48) = v24 + 1;
            v25 = *&v23[2 * v24 + 2];
          }

          else
          {
            v26 = sub_1863FD8(*(a1 + 40));
            v25 = sub_19593CC(a1 + 40, v26);
            v22 = *v29;
          }

          v21 = sub_224E218(a3, v25, v22);
          *v29 = v21;
          if (!v21)
          {
            goto LABEL_48;
          }

          if (*a3 <= v21 || *v21 != 10)
          {
            goto LABEL_43;
          }
        }
      }

      if (!v7 || (v7 & 7) == 4)
      {
        break;
      }

      if ((v7 - 8000) >> 6 > 0x7C)
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

        v12 = sub_1952690(v7, v28, v6, a3);
      }

      else
      {
        v12 = sub_19525AC((a1 + 16), v7, v6, &off_2786490, (a1 + 8), a3);
      }

      *v29 = v12;
      if (!v12)
      {
        goto LABEL_48;
      }

LABEL_43:
      if (sub_195ADC0(a3, v29, a3[11].i32[1]))
      {
        return *v29;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return *v29;
    }

LABEL_48:
    *v29 = 0;
  }

  return *v29;
}

char *sub_182EB04(uint64_t a1, char *a2, _DWORD *a3)
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

      a2 = sub_182E294(v8, v10, a3);
    }
  }

  v11 = *(a1 + 72);
  if (v11 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = *(*(a1 + 80) + v12);
      v14 = *(v13 + 23);
      if (v14 < 0 && (v14 = v13[1], v14 > 127) || *a3 - a2 + 14 < v14)
      {
        a2 = sub_1957480(a3, 2, v13, a2);
      }

      else
      {
        *a2 = 18;
        a2[1] = v14;
        if (*(v13 + 23) < 0)
        {
          v13 = *v13;
        }

        v15 = a2 + 2;
        memcpy(v15, v13, v14);
        a2 = &v15[v14];
      }

      v12 += 8;
      --v11;
    }

    while (v11);
  }

  if (*(a1 + 26))
  {
    a2 = sub_1953428(a1 + 16, 1000, 2000, a2, a3);
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return a2;
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

  if (*a3 - a2 >= v19)
  {
    v21 = v19;
    memcpy(a2, v20, v19);
    a2 += v21;
    return a2;
  }

  return sub_1957130(a3, v20, v19, a2);
}

uint64_t sub_182ED00(uint64_t a1)
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
      v9 = sub_182E3A0(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 72);
  result = v4 + v10;
  if (v10 >= 1)
  {
    v12 = (*(a1 + 80) + 8);
    do
    {
      v13 = *v12++;
      v14 = *(v13 + 23);
      v15 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v14;
      }

      result += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      --v10;
    }

    while (v10);
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

  *(a1 + 88) = result;
  return result;
}

uint64_t sub_182EE00(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if (*(v3 + 16))
    {
      result = sub_144F674(*(v3 + 24));
      if (!result)
      {
        break;
      }
    }

    if (v1-- <= 1)
    {
      return 1;
    }
  }

  return result;
}

void *sub_182EE6C(void *a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  a1[1] = v4;
  *a1 = off_2711B58;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  return a1;
}

void sub_182EED4(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_182EF04(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a1 + 16;
  *a1 = off_2711B58;
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
  v6 = *(a2 + 40);
  if (v6)
  {
    operator new();
  }

  *(a1 + 48) = 0;
  if ((v6 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  return a1;
}

uint64_t sub_182F078(uint64_t a1)
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

  if (a1 != &off_27864F0)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_1917370(v5);
      operator delete();
    }

    if (*(a1 + 56))
    {
      sub_145847C();
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_182F150(uint64_t a1)
{
  sub_182F078(a1);

  operator delete();
}

char *sub_182F188(uint64_t a1, char *a2, int32x2_t *a3)
{
  v22 = a2;
  if (sub_195ADC0(a3, &v22, a3[11].i32[1]))
  {
    return v22;
  }

  while (1)
  {
    v6 = v22 + 1;
    v7 = *v22;
    if (*v22 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v22, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v22 + 2;
      }
    }

    v22 = v6;
    if (v7 >> 3 != 2)
    {
      break;
    }

    if (v7 != 18)
    {
      goto LABEL_12;
    }

    *(a1 + 40) |= 2u;
    v13 = *(a1 + 56);
    if (!v13)
    {
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      sub_14BAE64(v15);
      v13 = v16;
      *(a1 + 56) = v16;
      v6 = v22;
    }

    v12 = sub_22095B8(a3, v13, v6);
LABEL_32:
    v22 = v12;
    if (!v12)
    {
      return 0;
    }

    if (sub_195ADC0(a3, &v22, a3[11].i32[1]))
    {
      return v22;
    }
  }

  if (v7 >> 3 == 1 && v7 == 10)
  {
    *(a1 + 40) |= 1u;
    v17 = *(a1 + 48);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_191BA60(v19);
      *(a1 + 48) = v17;
      v6 = v22;
    }

    v12 = sub_2201310(a3, v17, v6);
    goto LABEL_32;
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

  if (!v11)
  {
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
        v6 = v22;
      }

      v12 = sub_1952690(v7, v21, v6, a3);
    }

    else
    {
      v12 = sub_19525AC((a1 + 16), v7, v6, &off_27864F0, (a1 + 8), a3);
    }

    goto LABEL_32;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return v22;
  }

  return 0;
}

char *sub_182F384(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
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

    v4 = sub_1917694(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 56);
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

    v4 = sub_14589F4(v10, v12, a3);
  }

  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 1000, 2000, v4, a3);
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

uint64_t sub_182F524(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = sub_1917844(*(a1 + 48));
      v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 2) != 0)
    {
      v5 = sub_1458DB4(*(a1 + 56));
      v2 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  *(a1 + 44) = v2;
  return v2;
}

uint64_t sub_182F600(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_2711BD8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  return a1;
}

void sub_182F664(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_182F694(void *a1)
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

void sub_182F710(void *a1)
{
  sub_182F694(a1);

  operator delete();
}

char *sub_182F748(uint64_t a1, char *a2, int32x2_t *a3)
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

      if ((v6 - 8000) >> 6 > 0x7C)
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
        v10 = sub_19525AC((a1 + 16), v6, v5, &off_2786530, (a1 + 8), a3);
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

char *sub_182F890(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 1000, 2000, a2, a3);
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

uint64_t sub_182F958(uint64_t a1)
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

void *sub_182F9B8(void *a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  a1[1] = v4;
  *a1 = off_2711C58;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = 0;
  return a1;
}

void sub_182FA1C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_182FA4C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a1 + 16;
  *a1 = off_2711C58;
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

uint64_t sub_182FB78(uint64_t a1)
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
  if (a1 != &off_2786560)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_1917370(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_182FC38(uint64_t a1)
{
  sub_182FB78(a1);

  operator delete();
}

char *sub_182FC70(uint64_t a1, char *a2, int32x2_t *a3)
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

      v11 = sub_191BA60(v13);
      *(a1 + 48) = v11;
      v5 = v17;
    }

    v10 = sub_2201310(a3, v11, v5);
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
    if ((v6 - 8000) >> 6 > 0x7C)
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
      v10 = sub_19525AC((a1 + 16), v6, v5, &off_2786560, (a1 + 8), a3);
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

char *sub_182FE04(uint64_t a1, char *a2, _DWORD *a3)
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

    v4 = sub_1917694(v6, v8, a3);
  }

  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 1000, 2000, v4, a3);
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

uint64_t sub_182FF34(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  if (*(a1 + 40))
  {
    v3 = sub_1917844(*(a1 + 48));
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

uint64_t sub_182FFD0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_2711CD8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  return a1;
}

void sub_1830034(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1830064(void *a1)
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

void sub_18300E0(void *a1)
{
  sub_1830064(a1);

  operator delete();
}

char *sub_1830118(uint64_t a1, char *a2, int32x2_t *a3)
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

      if ((v6 - 8000) >> 6 > 0x7C)
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
        v10 = sub_19525AC((a1 + 16), v6, v5, &off_2786598, (a1 + 8), a3);
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

char *sub_1830260(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 1000, 2000, a2, a3);
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

uint64_t sub_1830328(uint64_t a1)
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

uint64_t sub_1830388(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2711D58;
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
  return a1;
}

uint64_t sub_1830550(uint64_t a1)
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

  if (a1 != &off_27865C8)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1917370(v6);
      operator delete();
    }

    if (*(a1 + 40))
    {
      sub_16E4E08();
      operator delete();
    }

    if (*(a1 + 48))
    {
      sub_153BF18();
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

void sub_183065C(uint64_t a1)
{
  sub_1830550(a1);

  operator delete();
}

uint64_t sub_1830694(uint64_t result)
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

LABEL_15:
    result = sub_17A82BC(*(result + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_16:
  result = sub_16E4E44(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_144E31C(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_1830750(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
        if (v7 == 26)
        {
          *(a1 + 16) |= 8u;
          v22 = *(a1 + 48);
          if (!v22)
          {
            v23 = *(a1 + 8);
            v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
            if (v23)
            {
              v24 = *v24;
            }

            v22 = sub_1551A70(v24);
            *(a1 + 48) = v22;
            v6 = *v29;
          }

          v15 = sub_22030E0(a3, v22, v6);
          goto LABEL_44;
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
        *(a1 + 16) |= 1u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = sub_194DB04((a1 + 24), v17);
        v15 = sub_1958890(v18, *v29, a3);
        goto LABEL_44;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
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

          v19 = sub_191BA60(v21);
          *(a1 + 32) = v19;
          v6 = *v29;
        }

        v15 = sub_2201310(a3, v19, v6);
        goto LABEL_44;
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 4u;
      v12 = *(a1 + 40);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_16F5828(v14);
        *(a1 + 40) = v12;
        v6 = *v29;
      }

      v15 = sub_21F4D60(a3, v12, v6);
      goto LABEL_44;
    }

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

LABEL_50:
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
LABEL_44:
    *v29 = v15;
    if (!v15)
    {
      goto LABEL_50;
    }
  }

  return *v29;
}

char *sub_18309A4(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v9 = *(a1 + 32);
    *v4 = 10;
    v10 = *(v9 + 44);
    v4[1] = v10;
    if (v10 > 0x7F)
    {
      v11 = sub_19575D0(v10, v4 + 1);
    }

    else
    {
      v11 = v4 + 2;
    }

    v4 = sub_1917694(v9, v11, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v12 = *(a1 + 40);
  *v4 = 18;
  v13 = *(v12 + 44);
  v4[1] = v13;
  if (v13 > 0x7F)
  {
    v14 = sub_19575D0(v13, v4 + 1);
  }

  else
  {
    v14 = v4 + 2;
  }

  v4 = sub_16E5070(v12, v14, a3);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_20:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v15 = *(a1 + 48);
  *v4 = 26;
  v16 = *(v15 + 44);
  v4[1] = v16;
  if (v16 > 0x7F)
  {
    v17 = sub_19575D0(v16, v4 + 1);
  }

  else
  {
    v17 = v4 + 2;
  }

  v4 = sub_153C1A4(v15, v17, a3);
  if (v6)
  {
LABEL_5:
    v4 = sub_128AEEC(a3, 4, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_6:
  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v18 = v7 & 0xFFFFFFFFFFFFFFFCLL;
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

  if (*a3 - v4 >= v19)
  {
    v21 = v19;
    memcpy(v4, v20, v19);
    v4 += v21;
    return v4;
  }

  return sub_1957130(a3, v20, v19, v4);
}

uint64_t sub_1830BB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_1917844(*(a1 + 32));
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
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = sub_16E51F0(*(a1 + 40));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_12:
    v8 = sub_153C388(*(a1 + 48));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  v9 = *(a1 + 8);
  if (v9)
  {
    v12 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v3 += v13;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_1830D00(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) == 0)
  {
    goto LABEL_34;
  }

  if (v4)
  {
    v5 = *(a2 + 24);
    *(a1 + 16) |= 1u;
    v6 = *(a1 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
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

  *(a1 + 16) |= 2u;
  v8 = *(a1 + 32);
  if (!v8)
  {
    v9 = *(a1 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    v8 = sub_191BA60(v10);
    *(a1 + 32) = v8;
  }

  if (*(a2 + 32))
  {
    v11 = *(a2 + 32);
  }

  else
  {
    v11 = &off_278B870;
  }

  sub_17A8DBC(v8, v11);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_26;
  }

LABEL_18:
  *(a1 + 16) |= 4u;
  v12 = *(a1 + 40);
  if (!v12)
  {
    v13 = *(a1 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    v12 = sub_16F5828(v14);
    *(a1 + 40) = v12;
  }

  if (*(a2 + 40))
  {
    v15 = *(a2 + 40);
  }

  else
  {
    v15 = &off_277E5E8;
  }

  sub_16E527C(v12, v15);
  if ((v4 & 8) != 0)
  {
LABEL_26:
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

      v16 = sub_1551A70(v18);
      *(a1 + 48) = v16;
    }

    if (*(a2 + 48))
    {
      v19 = *(a2 + 48);
    }

    else
    {
      v19 = &off_2776880;
    }

    sub_144F404(v16, v19);
  }

LABEL_34:
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1830E94(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_17A8EF8(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_16E5370(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = sub_144F674(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1830F04(uint64_t a1)
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

void sub_1830FD0(uint64_t a1)
{
  sub_1830F04(a1);

  operator delete();
}

uint64_t sub_1831008(uint64_t a1)
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

uint64_t sub_18310C0(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_183127C(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1831390(uint64_t a1)
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

void *sub_18314C0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_193BDA8(a1 + 6);
  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1831548(void *a1)
{
  sub_18314C0(a1);

  operator delete();
}

uint64_t sub_1831580(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_1831008(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  if ((*(a1 + 16) & 0x1F) != 0)
  {
    *(a1 + 79) = 0;
    *(a1 + 72) = 0;
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_183161C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v55 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v55, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v55 + 1);
    v8 = **v55;
    if (**v55 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v55, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v55 + 2);
      }
    }

    *v55 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v8 >> 3 > 5)
    {
      if (v11 != 6)
      {
        if (v11 == 7 && v8 == 58)
        {
          v19 = v7 - 1;
          while (1)
          {
            v20 = v19 + 1;
            *v55 = v19 + 1;
            v21 = *(a1 + 64);
            if (v21 && (v22 = *(a1 + 56), v22 < *v21))
            {
              *(a1 + 56) = v22 + 1;
              v23 = *&v21[2 * v22 + 2];
            }

            else
            {
              v24 = sub_18642A4(*(a1 + 48));
              v23 = sub_19593CC(a1 + 48, v24);
              v20 = *v55;
            }

            v19 = sub_224E2A8(a3, v23, v20);
            *v55 = v19;
            if (!v19)
            {
              goto LABEL_88;
            }

            if (*a3 <= v19 || *v19 != 58)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_66;
      }

      if (v8 != 48)
      {
        goto LABEL_66;
      }

      v5 |= 0x10u;
      v37 = v7 + 1;
      v36 = *v7;
      if ((v36 & 0x8000000000000000) == 0)
      {
        goto LABEL_60;
      }

      v38 = *v37;
      v36 = (v38 << 7) + v36 - 128;
      if ((v38 & 0x80000000) == 0)
      {
        v37 = v7 + 2;
LABEL_60:
        *v55 = v37;
        *(a1 + 82) = v36 != 0;
        goto LABEL_73;
      }

      v47 = sub_19587DC(v7, v36);
      *v55 = v47;
      *(a1 + 82) = v48 != 0;
      if (!v47)
      {
        goto LABEL_88;
      }
    }

    else if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_66;
      }

      v5 |= 4u;
      v34 = v7 + 1;
      v33 = *v7;
      if ((v33 & 0x8000000000000000) == 0)
      {
        goto LABEL_55;
      }

      v35 = *v34;
      v33 = (v35 << 7) + v33 - 128;
      if ((v35 & 0x80000000) == 0)
      {
        v34 = v7 + 2;
LABEL_55:
        *v55 = v34;
        *(a1 + 80) = v33 != 0;
        goto LABEL_73;
      }

      v45 = sub_19587DC(v7, v33);
      *v55 = v45;
      *(a1 + 80) = v46 != 0;
      if (!v45)
      {
        goto LABEL_88;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_66;
      }

      v5 |= 8u;
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
        *v55 = v13;
        *(a1 + 81) = v12 != 0;
        goto LABEL_73;
      }

      v49 = sub_19587DC(v7, v12);
      *v55 = v49;
      *(a1 + 81) = v50 != 0;
      if (!v49)
      {
        goto LABEL_88;
      }
    }

LABEL_73:
    if (sub_195ADC0(a3, v55, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 1)
  {
    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_66;
      }

      v5 |= 1u;
      v39 = v7 + 1;
      v40 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_65;
      }

      v41 = *v39;
      v40 = v40 + (v41 << 7) - 128;
      if ((v41 & 0x80000000) == 0)
      {
        v39 = v7 + 2;
LABEL_65:
        *v55 = v39;
        *(a1 + 72) = v40;
        goto LABEL_73;
      }

      v53 = sub_1958770(v7, v40);
      *v55 = v53;
      *(a1 + 72) = v54;
      if (!v53)
      {
        goto LABEL_88;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_66;
      }

      v5 |= 2u;
      v16 = v7 + 1;
      v17 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      v18 = *v16;
      v17 = v17 + (v18 << 7) - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v16 = v7 + 2;
LABEL_26:
        *v55 = v16;
        *(a1 + 76) = v17;
        goto LABEL_73;
      }

      v51 = sub_1958770(v7, v17);
      *v55 = v51;
      *(a1 + 76) = v52;
      if (!v51)
      {
        goto LABEL_88;
      }
    }

    goto LABEL_73;
  }

  if (v8 == 10)
  {
    v25 = v7 - 1;
    while (1)
    {
      v26 = (v25 + 1);
      *v55 = v25 + 1;
      v27 = *(a1 + 40);
      if (v27 && (v28 = *(a1 + 32), v28 < *v27))
      {
        *(a1 + 32) = v28 + 1;
        v29 = *&v27[2 * v28 + 2];
      }

      else
      {
        v30 = *(a1 + 24);
        if (!v30)
        {
          operator new();
        }

        *v32 = v31;
        v32[1] = sub_195A650;
        *v31 = 0;
        v31[1] = 0;
        v31[2] = 0;
        v29 = sub_19593CC(a1 + 24, v31);
        v26 = *v55;
      }

      v25 = sub_1958890(v29, v26, a3);
      *v55 = v25;
      if (!v25)
      {
        goto LABEL_88;
      }

      if (*a3 <= v25 || *v25 != 10)
      {
        goto LABEL_73;
      }
    }
  }

LABEL_66:
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
    v43 = *(a1 + 8);
    if (v43)
    {
      v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v44 = sub_11F1920((a1 + 8));
      v7 = *v55;
    }

    *v55 = sub_1952690(v8, v44, v7, a3);
    if (!*v55)
    {
      goto LABEL_88;
    }

    goto LABEL_73;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_88:
  *v55 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v55;
}

char *sub_1831AEC(uint64_t a1, char *__dst, _DWORD *a3)
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

    v13 = *(a1 + 72);
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
        LOBYTE(v15) = __dst[2];
        do
        {
          *(v12 - 1) = v15 | 0x80;
          v15 = v14 >> 7;
          *v12++ = v14 >> 7;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
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

  if ((v11 & 2) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v18 = *(a1 + 76);
    *v12 = 24;
    v12[1] = v18;
    if (v18 > 0x7F)
    {
      v12[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v12[2] = v18 >> 7;
      v17 = v12 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v20) = v12[2];
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
      v17 = v12 + 2;
    }
  }

  else
  {
    v17 = v12;
  }

  if ((v11 & 4) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v22 = *(a1 + 80);
    *v17 = 32;
    v17[1] = v22;
    v17 += 2;
    if ((v11 & 8) == 0)
    {
LABEL_32:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }
  }

  else if ((v11 & 8) == 0)
  {
    goto LABEL_32;
  }

  if (*a3 <= v17)
  {
    v17 = sub_225EB68(a3, v17);
  }

  v23 = *(a1 + 81);
  *v17 = 40;
  v17[1] = v23;
  v17 += 2;
  if ((v11 & 0x10) != 0)
  {
LABEL_40:
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v24 = *(a1 + 82);
    *v17 = 48;
    v17[1] = v24;
    v17 += 2;
  }

LABEL_43:
  v25 = *(a1 + 56);
  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if (*a3 <= v17)
      {
        v17 = sub_225EB68(a3, v17);
      }

      v27 = *(*(a1 + 64) + 8 * i + 8);
      *v17 = 58;
      v28 = *(v27 + 20);
      v17[1] = v28;
      if (v28 > 0x7F)
      {
        v29 = sub_19575D0(v28, v17 + 1);
      }

      else
      {
        v29 = v17 + 2;
      }

      v17 = sub_183127C(v27, v29, a3);
    }
  }

  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return v17;
  }

  v32 = v30 & 0xFFFFFFFFFFFFFFFCLL;
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

  if (*a3 - v17 >= v33)
  {
    v35 = v33;
    memcpy(v17, v34, v33);
    v17 += v35;
    return v17;
  }

  return sub_1957130(a3, v34, v33, v17);
}

uint64_t sub_1831E84(uint64_t a1)
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
      v14 = sub_1831390(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 0x1F) != 0)
  {
    if (v15)
    {
      v9 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v15 & 2) != 0)
    {
      v9 += ((9 * (__clz(*(a1 + 76) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v9 += ((v15 >> 2) & 2) + ((v15 >> 1) & 2) + ((v15 >> 3) & 2);
  }

  v16 = *(a1 + 8);
  if (v16)
  {
    v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v9 += v19;
  }

  *(a1 + 20) = v9;
  return v9;
}

std::string *sub_1832008(std::string *result, uint64_t a2)
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
    result = sub_193E01C(v3 + 2, v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
    v12 = LODWORD(v3[2].__r_.__value_.__r.__words[1]) + v9;
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = v12;
    v13 = v3[2].__r_.__value_.__r.__words[2];
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if ((v14 & 0x1F) != 0)
  {
    if (v14)
    {
      LODWORD(v3[3].__r_.__value_.__l.__data_) = *(a2 + 72);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_21;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    HIDWORD(v3[3].__r_.__value_.__r.__words[0]) = *(a2 + 76);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }

LABEL_21:
    v3[3].__r_.__value_.__s.__data_[8] = *(a2 + 80);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
LABEL_14:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v14;
        goto LABEL_15;
      }

LABEL_13:
      v3[3].__r_.__value_.__s.__data_[10] = *(a2 + 82);
      goto LABEL_14;
    }

LABEL_22:
    v3[3].__r_.__value_.__s.__data_[9] = *(a2 + 81);
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  v15 = *(a2 + 8);
  if (v15)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_18321A0(void *a1)
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

void sub_183221C(void *a1)
{
  sub_18321A0(a1);

  operator delete();
}

uint64_t sub_1832254(uint64_t a1)
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

char *sub_1832268(uint64_t a1, char *a2, int32x2_t *a3)
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
          if (v10 < 0)
          {
            v11 = (v9[2] << 7) + v10;
            v10 = (v11 - 128);
            if (v9[2] < 0)
            {
              v9 = sub_19587DC((v9 + 1), (v11 - 128));
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
            sub_1959094((a1 + 16), v13 + 1);
            *(*(a1 + 24) + 8 * v13) = v10;
            v9 = v20;
          }

          else
          {
            *(*(a1 + 24) + 8 * v13) = v10;
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
        v15 = sub_1958938((a1 + 16), v5, a3);
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

char *sub_1832458(uint64_t a1, char *a2, _DWORD *a3)
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

      v7 = *(*(a1 + 24) + 8 * i);
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

uint64_t sub_18325A8(uint64_t a1)
{
  result = sub_1959F14((a1 + 16)) + *(a1 + 16);
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

void *sub_1832618(void *a1)
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

  sub_18326A8(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_13B31E8(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_18326A8(uint64_t a1)
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

  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C((a1 + 72));
  }

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  result = (a1 + 88);
  if (*(a1 + 88) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2786680)
  {
    v5 = *(a1 + 96);
    if (v5)
    {
      sub_18314C0(v5);
      operator delete();
    }

    result = *(a1 + 104);
    if (result)
    {
      sub_18321A0(result);

      operator delete();
    }
  }

  return result;
}

void sub_18327B0(void *a1)
{
  sub_1832618(a1);

  operator delete();
}

uint64_t sub_18327E8(uint64_t result)
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

  v5 = *(v1 + 16);
  if (v5)
  {
    if ((v5 & 1) == 0)
    {
      if ((v5 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_19:
      v7 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v5 & 4) != 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
        if ((v5 & 4) != 0)
        {
          goto LABEL_23;
        }
      }

LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

LABEL_27:
      v9 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v9 + 23) < 0)
      {
        **v9 = 0;
        *(v9 + 8) = 0;
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        *v9 = 0;
        *(v9 + 23) = 0;
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_31;
        }
      }

LABEL_11:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_12;
      }

LABEL_35:
      v11 = *(v1 + 88) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v11 + 23) < 0)
      {
        **v11 = 0;
        *(v11 + 8) = 0;
        if ((v5 & 0x40) != 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        *v11 = 0;
        *(v11 + 23) = 0;
        if ((v5 & 0x40) != 0)
        {
          goto LABEL_39;
        }
      }

LABEL_13:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v8 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v5 & 8) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v5 & 8) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_31:
    v10 = *(v1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_12:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_13;
    }

LABEL_39:
    result = sub_1831580(*(v1 + 96));
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_42;
    }

LABEL_40:
    v12 = *(v1 + 104);
    v13 = *(v12 + 8);
    result = v12 + 8;
    *(result + 8) = 0;
    if (v13)
    {
      result = sub_1957EA8(result);
    }
  }

LABEL_42:
  if ((v5 & 0x700) != 0)
  {
    *(v1 + 112) = 0;
  }

  v15 = *(v1 + 8);
  v14 = v1 + 8;
  *(v14 + 8) = 0;
  if (v15)
  {

    return sub_1957EA8(v14);
  }

  return result;
}

uint64_t sub_18329E4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v51 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v51, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v51 + 1);
    v8 = **v51;
    if (**v51 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v51, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v51 + 2);
      }
    }

    *v51 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 6)
    {
      if (v8 >> 3 > 3)
      {
        if (v11 == 4)
        {
          if (v8 == 34)
          {
            *(a1 + 16) |= 4u;
            v29 = *(a1 + 8);
            v14 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
            if (v29)
            {
              v14 = *v14;
            }

            v15 = (a1 + 64);
            goto LABEL_83;
          }
        }

        else if (v11 == 5)
        {
          if (v8 == 42)
          {
            *(a1 + 16) |= 8u;
            v39 = *(a1 + 8);
            v14 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
            if (v39)
            {
              v14 = *v14;
            }

            v15 = (a1 + 72);
            goto LABEL_83;
          }
        }

        else if (v11 == 6 && v8 == 50)
        {
          v20 = v7 - 1;
          while (1)
          {
            v21 = v20 + 1;
            *v51 = v20 + 1;
            v22 = *(a1 + 40);
            if (v22 && (v23 = *(a1 + 32), v23 < *v22))
            {
              *(a1 + 32) = v23 + 1;
              v24 = *&v22[2 * v23 + 2];
            }

            else
            {
              v25 = sub_16F5A54(*(a1 + 24));
              v24 = sub_19593CC(a1 + 24, v25);
              v21 = *v51;
            }

            v20 = sub_22002C0(a3, v24, v21);
            *v51 = v20;
            if (!v20)
            {
              goto LABEL_109;
            }

            if (*a3 <= v20 || *v20 != 50)
            {
              goto LABEL_85;
            }
          }
        }

        goto LABEL_92;
      }

      if (v11 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v27 = *(a1 + 8);
          v14 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
          if (v27)
          {
            v14 = *v14;
          }

          v15 = (a1 + 48);
          goto LABEL_83;
        }

        goto LABEL_92;
      }

      if (v11 != 2)
      {
        if (v11 == 3 && v8 == 26)
        {
          *(a1 + 16) |= 2u;
          v13 = *(a1 + 8);
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
          if (v13)
          {
            v14 = *v14;
          }

          v15 = (a1 + 56);
          goto LABEL_83;
        }

        goto LABEL_92;
      }

      if (v8 != 16)
      {
        goto LABEL_92;
      }

      v5 |= 0x100u;
      v34 = (v7 + 1);
      v33 = *v7;
      if ((v33 & 0x8000000000000000) == 0)
      {
        goto LABEL_71;
      }

      v35 = *v34;
      v33 = (v35 << 7) + v33 - 128;
      if ((v35 & 0x80000000) == 0)
      {
        v34 = (v7 + 2);
LABEL_71:
        *v51 = v34;
        *(a1 + 112) = v33 != 0;
        goto LABEL_85;
      }

      v47 = sub_19587DC(v7, v33);
      *v51 = v47;
      *(a1 + 112) = v48 != 0;
      if (!v47)
      {
        goto LABEL_109;
      }

      goto LABEL_85;
    }

    if (v8 >> 3 <= 9)
    {
      if (v11 == 7)
      {
        if (v8 == 58)
        {
          *(a1 + 16) |= 0x10u;
          v28 = *(a1 + 8);
          v14 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v14 = *v14;
          }

          v15 = (a1 + 80);
          goto LABEL_83;
        }

        goto LABEL_92;
      }

      if (v11 != 8)
      {
        if (v11 == 9 && v8 == 74)
        {
          *(a1 + 16) |= 0x40u;
          v16 = *(a1 + 96);
          if (!v16)
          {
            v17 = *(a1 + 8);
            v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
            if (v17)
            {
              v18 = *v18;
            }

            v16 = sub_186432C(v18);
            *(a1 + 96) = v16;
            v7 = *v51;
          }

          v19 = sub_224E338(a3, v16, v7);
          goto LABEL_84;
        }

        goto LABEL_92;
      }

      if (v8 != 64)
      {
        goto LABEL_92;
      }

      v37 = (v7 + 1);
      v36 = *v7;
      if (v36 < 0)
      {
        v38 = *v37;
        v36 = (v38 << 7) + v36 - 128;
        if (v38 < 0)
        {
          *v51 = sub_19587DC(v7, v36);
          if (!*v51)
          {
            goto LABEL_109;
          }

          goto LABEL_77;
        }

        v37 = (v7 + 2);
      }

      *v51 = v37;
LABEL_77:
      if (v36 > 1)
      {
        sub_12E85F0();
      }

      else
      {
        *(a1 + 16) |= 0x400u;
        *(a1 + 116) = v36;
      }

      goto LABEL_85;
    }

    if (v11 == 10)
    {
      break;
    }

    if (v11 != 11)
    {
      if (v11 == 12 && v8 == 98)
      {
        *(a1 + 16) |= 0x20u;
        v26 = *(a1 + 8);
        v14 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v14 = *v14;
        }

        v15 = (a1 + 88);
LABEL_83:
        v40 = sub_194DB04(v15, v14);
        v19 = sub_1958890(v40, *v51, a3);
LABEL_84:
        *v51 = v19;
        if (!v19)
        {
          goto LABEL_109;
        }

        goto LABEL_85;
      }

      goto LABEL_92;
    }

    if (v8 != 88)
    {
      goto LABEL_92;
    }

    v5 |= 0x200u;
    v42 = (v7 + 1);
    v41 = *v7;
    if ((v41 & 0x8000000000000000) == 0)
    {
      goto LABEL_91;
    }

    v43 = *v42;
    v41 = (v43 << 7) + v41 - 128;
    if ((v43 & 0x80000000) == 0)
    {
      v42 = (v7 + 2);
LABEL_91:
      *v51 = v42;
      *(a1 + 113) = v41 != 0;
      goto LABEL_85;
    }

    v49 = sub_19587DC(v7, v41);
    *v51 = v49;
    *(a1 + 113) = v50 != 0;
    if (!v49)
    {
      goto LABEL_109;
    }

LABEL_85:
    if (sub_195ADC0(a3, v51, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 82)
  {
    *(a1 + 16) |= 0x80u;
    v30 = *(a1 + 104);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_18643D4(v32);
      *(a1 + 104) = v30;
      v7 = *v51;
    }

    v19 = sub_224E3C8(a3, v30, v7);
    goto LABEL_84;
  }

LABEL_92:
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
      v7 = *v51;
    }

    v19 = sub_1952690(v8, v46, v7, a3);
    goto LABEL_84;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_109:
  *v51 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v51;
}

char *sub_1832F38(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 0x100) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 112);
  *v4 = 16;
  v4[1] = v13;
  v4 += 2;
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  v4 = sub_128AEEC(a3, 3, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_24:
  v4 = sub_128AEEC(a3, 4, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) != 0)
  {
LABEL_6:
    v4 = sub_128AEEC(a3, 5, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_7:
  v7 = *(a1 + 32);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v9 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 50;
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

  if ((v6 & 0x10) != 0)
  {
    v4 = sub_128AEEC(a3, 7, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v14 = *(a1 + 116);
    *v4 = 64;
    v4[1] = v14;
    if (v14 > 0x7F)
    {
      v4[1] = v14 | 0x80;
      v15 = v14 >> 7;
      v4[2] = v14 >> 7;
      v12 = v4 + 3;
      if (v14 >= 0x4000)
      {
        LOBYTE(v16) = v4[2];
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
      v12 = v4 + 2;
    }
  }

  else
  {
    v12 = v4;
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v20 = *(a1 + 96);
    *v12 = 74;
    v21 = *(v20 + 20);
    v12[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, v12 + 1);
    }

    else
    {
      v22 = v12 + 2;
    }

    v12 = sub_1831AEC(v20, v22, a3);
    if ((v6 & 0x80) == 0)
    {
LABEL_35:
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_52;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_35;
  }

  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v23 = *(a1 + 104);
  *v12 = 82;
  v24 = *(v23 + 32);
  v12[1] = v24;
  if (v24 > 0x7F)
  {
    v25 = sub_19575D0(v24, v12 + 1);
  }

  else
  {
    v25 = v12 + 2;
  }

  v12 = sub_1832458(v23, v25, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_36:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_52:
  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v26 = *(a1 + 113);
  *v12 = 88;
  v12[1] = v26;
  v12 += 2;
  if ((v6 & 0x20) != 0)
  {
LABEL_37:
    v12 = sub_128AEEC(a3, 12, *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL, v12);
  }

LABEL_38:
  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v12;
  }

  v27 = v18 & 0xFFFFFFFFFFFFFFFCLL;
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

  if (*a3 - v12 >= v28)
  {
    v30 = v28;
    memcpy(v12, v29, v28);
    v12 += v30;
    return v12;
  }

  return sub_1957130(a3, v29, v28, v12);
}

uint64_t sub_183330C(uint64_t a1)
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

  v8 = *(a1 + 16);
  if (!v8)
  {
    goto LABEL_19;
  }

  if (v8)
  {
    v15 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_33;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v18 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 23);
  v20 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v20 = v19;
  }

  v2 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_33:
  v21 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v21 + 23);
  v23 = *(v21 + 8);
  if ((v22 & 0x80u) == 0)
  {
    v23 = v22;
  }

  v2 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_36:
  v24 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v25 = *(v24 + 23);
  v26 = *(v24 + 8);
  if ((v25 & 0x80u) == 0)
  {
    v26 = v25;
  }

  v2 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_39:
  v27 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v28 = *(v27 + 23);
  v29 = *(v27 + 8);
  if ((v28 & 0x80u) == 0)
  {
    v29 = v28;
  }

  v2 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x20) == 0)
  {
LABEL_16:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_17;
    }

LABEL_45:
    v33 = sub_1831E84(*(a1 + 96));
    v2 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_42:
  v30 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  v31 = *(v30 + 23);
  v32 = *(v30 + 8);
  if ((v31 & 0x80u) == 0)
  {
    v32 = v31;
  }

  v2 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x40) != 0)
  {
    goto LABEL_45;
  }

LABEL_17:
  if ((v8 & 0x80) != 0)
  {
LABEL_18:
    v9 = sub_18325A8(*(a1 + 104));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v8 & 0x700) != 0)
  {
    v2 += ((v8 >> 8) & 2) + ((v8 >> 7) & 2);
    if ((v8 & 0x400) != 0)
    {
      v10 = *(a1 + 116);
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v10 >= 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 11;
      }

      v2 += v12;
    }
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    v34 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v35 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v35 < 0)
    {
      v35 = *(v34 + 16);
    }

    v2 += v35;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_183362C(std::string *result, uint64_t a2)
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

  v9 = *(a2 + 16);
  if (!v9)
  {
    goto LABEL_48;
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
        goto LABEL_48;
      }

      goto LABEL_40;
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
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x40u;
  data = v3[4].__r_.__value_.__l.__data_;
  if (!data)
  {
    v29 = v3->__r_.__value_.__l.__size_;
    v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
    if (v29)
    {
      v30 = *v30;
    }

    data = sub_186432C(v30);
    v3[4].__r_.__value_.__r.__words[0] = data;
  }

  if (*(a2 + 96))
  {
    v31 = *(a2 + 96);
  }

  else
  {
    v31 = &off_2786600;
  }

  result = sub_1832008(data, v31);
  if ((v9 & 0x80) != 0)
  {
LABEL_40:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x80u;
    v32 = v3[4].__r_.__value_.__l.__size_;
    if (!v32)
    {
      v33 = v3->__r_.__value_.__l.__size_;
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      if (v33)
      {
        v34 = *v34;
      }

      v32 = sub_18643D4(v34);
      v3[4].__r_.__value_.__l.__size_ = v32;
    }

    if (*(a2 + 104))
    {
      v35 = *(a2 + 104);
    }

    else
    {
      v35 = &off_2786658;
    }

    result = sub_1326DC0(v32, v35);
  }

LABEL_48:
  if ((v9 & 0x700) == 0)
  {
    goto LABEL_54;
  }

  if ((v9 & 0x100) == 0)
  {
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_51;
    }

LABEL_59:
    v3[4].__r_.__value_.__s.__data_[17] = *(a2 + 113);
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v3[4].__r_.__value_.__s.__data_[16] = *(a2 + 112);
  if ((v9 & 0x200) != 0)
  {
    goto LABEL_59;
  }

LABEL_51:
  if ((v9 & 0x400) != 0)
  {
LABEL_52:
    HIDWORD(v3[4].__r_.__value_.__r.__words[2]) = *(a2 + 116);
  }

LABEL_53:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
LABEL_54:
  v36 = *(a2 + 8);
  if (v36)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1833940(uint64_t a1)
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

  v5 = (a1 + 64);
  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C((a1 + 72));
  }

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_11:
  sub_13B31E8((a1 + 40));
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1833A20(uint64_t a1)
{
  sub_1833940(a1);

  operator delete();
}

uint64_t sub_1833A58(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 48);
  if (v2 >= 1)
  {
    v3 = (*(result + 56) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E72AC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 48) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 7) != 0)
  {
    if ((v5 & 1) == 0)
    {
      if ((v5 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v7 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v5 & 4) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
        if ((v5 & 4) == 0)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_18;
    }

    v6 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_21;
    }

LABEL_18:
    v8 = *(v1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
    }
  }

LABEL_21:
  if ((v5 & 0xF8) != 0)
  {
    *(v1 + 88) = 0;
  }

  if ((v5 & 0x3F00) != 0)
  {
    *(v1 + 104) = 0;
    *(v1 + 96) = 0;
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

uint64_t sub_1833B9C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v89 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v89, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (2)
  {
    v8 = (*v89 + 1);
    v9 = **v89;
    if (**v89 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(*v89, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = (*v89 + 2);
      }
    }

    *v89 = v8;
    switch(v9 >> 3)
    {
      case 1u:
        if (v9 != 10)
        {
          goto LABEL_132;
        }

        *(a1 + 16) |= 1u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 64);
        goto LABEL_28;
      case 2u:
        if (v9 != 16)
        {
          goto LABEL_132;
        }

        v5 |= 8u;
        v51 = v8 + 1;
        v50 = *v8;
        if ((v50 & 0x8000000000000000) == 0)
        {
          goto LABEL_82;
        }

        v52 = *v51;
        v50 = (v52 << 7) + v50 - 128;
        if (v52 < 0)
        {
          v75 = sub_19587DC(v8, v50);
          *v89 = v75;
          *(a1 + 88) = v76 != 0;
          if (!v75)
          {
            goto LABEL_147;
          }
        }

        else
        {
          v51 = v8 + 2;
LABEL_82:
          *v89 = v51;
          *(a1 + 88) = v50 != 0;
        }

        goto LABEL_140;
      case 3u:
        if (v9 != 24)
        {
          goto LABEL_132;
        }

        v5 |= 0x10u;
        v31 = v8 + 1;
        v30 = *v8;
        if ((v30 & 0x8000000000000000) == 0)
        {
          goto LABEL_43;
        }

        v32 = *v31;
        v30 = (v32 << 7) + v30 - 128;
        if (v32 < 0)
        {
          v73 = sub_19587DC(v8, v30);
          *v89 = v73;
          *(a1 + 89) = v74 != 0;
          if (!v73)
          {
            goto LABEL_147;
          }
        }

        else
        {
          v31 = v8 + 2;
LABEL_43:
          *v89 = v31;
          *(a1 + 89) = v30 != 0;
        }

        goto LABEL_140;
      case 4u:
        if (v9 == 32)
        {
          v36 = (v8 - 1);
          while (1)
          {
            *v89 = v36 + 1;
            v37 = *(v36 + 1);
            v38 = (v36 + 2);
            if (v37 < 0)
            {
              v39 = *v38;
              v40 = (v39 << 7) + v37;
              LODWORD(v37) = v40 - 128;
              if (v39 < 0)
              {
                *v89 = sub_19587DC(v36 + 1, (v40 - 128));
                if (!*v89)
                {
                  goto LABEL_147;
                }

                LODWORD(v37) = v43;
                goto LABEL_57;
              }

              v38 = (v36 + 3);
            }

            *v89 = v38;
LABEL_57:
            if (v37 > 4)
            {
              sub_12E8500();
            }

            else
            {
              v41 = *(a1 + 24);
              if (v41 == *(a1 + 28))
              {
                v42 = v41 + 1;
                sub_1958E5C((a1 + 24), v41 + 1);
                *(*(a1 + 32) + 4 * v41) = v37;
              }

              else
              {
                *(*(a1 + 32) + 4 * v41) = v37;
                v42 = v41 + 1;
              }

              *(a1 + 24) = v42;
            }

            v36 = *v89;
            if (*a3 <= *v89 || **v89 != 32)
            {
              goto LABEL_140;
            }
          }
        }

        if (v9 == 34)
        {
          *&v90 = a1 + 24;
          *(&v90 + 1) = sub_1792CF8;
          v91 = a1 + 8;
          v92 = 4;
          v23 = sub_1216588(a3, v8, &v90);
LABEL_139:
          *v89 = v23;
          if (!v23)
          {
            goto LABEL_147;
          }

LABEL_140:
          if (sub_195ADC0(a3, v89, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_132:
        if (v9)
        {
          v87 = (v9 & 7) == 4;
        }

        else
        {
          v87 = 1;
        }

        if (!v87)
        {
          if (*v7)
          {
            v88 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v88 = sub_11F1920((a1 + 8));
            v8 = *v89;
          }

          v23 = sub_1952690(v9, v88, v8, a3);
          goto LABEL_139;
        }

        if (v8)
        {
          a3[10].i32[0] = v9 - 1;
        }

        else
        {
LABEL_147:
          *v89 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v89;
      case 5u:
        if (v9 != 42)
        {
          goto LABEL_132;
        }

        *(a1 + 16) |= 2u;
        v21 = *(a1 + 8);
        v14 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v14 = *v14;
        }

        v15 = (a1 + 72);
        goto LABEL_28;
      case 6u:
        if (v9 != 48)
        {
          goto LABEL_132;
        }

        v5 |= 0x20u;
        v54 = v8 + 1;
        v53 = *v8;
        if ((v53 & 0x8000000000000000) == 0)
        {
          goto LABEL_87;
        }

        v55 = *v54;
        v53 = (v55 << 7) + v53 - 128;
        if (v55 < 0)
        {
          v77 = sub_19587DC(v8, v53);
          *v89 = v77;
          *(a1 + 90) = v78 != 0;
          if (!v77)
          {
            goto LABEL_147;
          }
        }

        else
        {
          v54 = v8 + 2;
LABEL_87:
          *v89 = v54;
          *(a1 + 90) = v53 != 0;
        }

        goto LABEL_140;
      case 7u:
        if (v9 != 56)
        {
          goto LABEL_132;
        }

        v5 |= 0x40u;
        v60 = v8 + 1;
        v59 = *v8;
        if ((v59 & 0x8000000000000000) == 0)
        {
          goto LABEL_97;
        }

        v61 = *v60;
        v59 = (v61 << 7) + v59 - 128;
        if (v61 < 0)
        {
          v81 = sub_19587DC(v8, v59);
          *v89 = v81;
          *(a1 + 91) = v82 != 0;
          if (!v81)
          {
            goto LABEL_147;
          }
        }

        else
        {
          v60 = v8 + 2;
LABEL_97:
          *v89 = v60;
          *(a1 + 91) = v59 != 0;
        }

        goto LABEL_140;
      case 8u:
        if (v9 != 66)
        {
          goto LABEL_132;
        }

        v44 = v8 - 1;
        while (1)
        {
          v45 = (v44 + 1);
          *v89 = v44 + 1;
          v46 = *(a1 + 56);
          if (v46 && (v47 = *(a1 + 48), v47 < *v46))
          {
            *(a1 + 48) = v47 + 1;
            v48 = *&v46[2 * v47 + 2];
          }

          else
          {
            v49 = sub_16F5A54(*(a1 + 40));
            v48 = sub_19593CC(a1 + 40, v49);
            v45 = *v89;
          }

          v44 = sub_22002C0(a3, v48, v45);
          *v89 = v44;
          if (!v44)
          {
            goto LABEL_147;
          }

          if (*a3 <= v44 || *v44 != 66)
          {
            goto LABEL_140;
          }
        }

      case 9u:
        if (v9 != 72)
        {
          goto LABEL_132;
        }

        v5 |= 0x80u;
        v65 = v8 + 1;
        v66 = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_107;
        }

        v67 = *v65;
        v66 = v66 + (v67 << 7) - 128;
        if (v67 < 0)
        {
          v85 = sub_1958770(v8, v66);
          *v89 = v85;
          *(a1 + 92) = v86;
          if (!v85)
          {
            goto LABEL_147;
          }
        }

        else
        {
          v65 = v8 + 2;
LABEL_107:
          *v89 = v65;
          *(a1 + 92) = v66;
        }

        goto LABEL_140;
      case 0xAu:
        if (v9 != 80)
        {
          goto LABEL_132;
        }

        v5 |= 0x200u;
        v28 = v8 + 1;
        v27 = *v8;
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_38;
        }

        v29 = *v28;
        v27 = (v29 << 7) + v27 - 128;
        if (v29 < 0)
        {
          v71 = sub_19587DC(v8, v27);
          *v89 = v71;
          *(a1 + 100) = v72 != 0;
          if (!v71)
          {
            goto LABEL_147;
          }
        }

        else
        {
          v28 = v8 + 2;
LABEL_38:
          *v89 = v28;
          *(a1 + 100) = v27 != 0;
        }

        goto LABEL_140;
      case 0xBu:
        if (v9 != 88)
        {
          goto LABEL_132;
        }

        v5 |= 0x400u;
        v63 = v8 + 1;
        v62 = *v8;
        if ((v62 & 0x8000000000000000) == 0)
        {
          goto LABEL_102;
        }

        v64 = *v63;
        v62 = (v64 << 7) + v62 - 128;
        if (v64 < 0)
        {
          v83 = sub_19587DC(v8, v62);
          *v89 = v83;
          *(a1 + 101) = v84 != 0;
          if (!v83)
          {
            goto LABEL_147;
          }
        }

        else
        {
          v63 = v8 + 2;
LABEL_102:
          *v89 = v63;
          *(a1 + 101) = v62 != 0;
        }

        goto LABEL_140;
      case 0xCu:
        if (v9 != 96)
        {
          goto LABEL_132;
        }

        v17 = v8 + 1;
        v18 = *v8;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }

        v19 = *v17;
        v20 = (v19 << 7) + v18;
        LODWORD(v18) = v20 - 128;
        if (v19 < 0)
        {
          *v89 = sub_19587DC(v8, (v20 - 128));
          if (!*v89)
          {
            goto LABEL_147;
          }

          LODWORD(v18) = v68;
        }

        else
        {
          v17 = v8 + 2;
LABEL_21:
          *v89 = v17;
        }

        if (sub_144E2E8(v18))
        {
          *(a1 + 16) |= 0x100u;
          *(a1 + 96) = v18;
        }

        else
        {
          sub_19481DC();
        }

        goto LABEL_140;
      case 0xDu:
        if (v9 != 104)
        {
          goto LABEL_132;
        }

        v5 |= 0x800u;
        v25 = v8 + 1;
        v24 = *v8;
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v26 = *v25;
        v24 = (v26 << 7) + v24 - 128;
        if (v26 < 0)
        {
          v69 = sub_19587DC(v8, v24);
          *v89 = v69;
          *(a1 + 102) = v70 != 0;
          if (!v69)
          {
            goto LABEL_147;
          }
        }

        else
        {
          v25 = v8 + 2;
LABEL_33:
          *v89 = v25;
          *(a1 + 102) = v24 != 0;
        }

        goto LABEL_140;
      case 0xEu:
        if (v9 != 112)
        {
          goto LABEL_132;
        }

        v5 |= 0x1000u;
        v57 = v8 + 1;
        v56 = *v8;
        if ((v56 & 0x8000000000000000) == 0)
        {
          goto LABEL_92;
        }

        v58 = *v57;
        v56 = (v58 << 7) + v56 - 128;
        if (v58 < 0)
        {
          v79 = sub_19587DC(v8, v56);
          *v89 = v79;
          *(a1 + 103) = v80 != 0;
          if (!v79)
          {
            goto LABEL_147;
          }
        }

        else
        {
          v57 = v8 + 2;
LABEL_92:
          *v89 = v57;
          *(a1 + 103) = v56 != 0;
        }

        goto LABEL_140;
      case 0xFu:
        if (v9 != 122)
        {
          goto LABEL_132;
        }

        *(a1 + 16) |= 4u;
        v16 = *(a1 + 8);
        v14 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v14 = *v14;
        }

        v15 = (a1 + 80);
LABEL_28:
        v22 = sub_194DB04(v15, v14);
        v23 = sub_1958890(v22, *v89, a3);
        goto LABEL_139;
      case 0x10u:
        if (v9 != 128)
        {
          goto LABEL_132;
        }

        v34 = v8 + 1;
        v33 = *v8;
        if ((v33 & 0x8000000000000000) == 0)
        {
          goto LABEL_48;
        }

        v35 = *v34;
        v33 = (v35 << 7) + v33 - 128;
        if (v35 < 0)
        {
          *v89 = sub_19587DC(v8, v33);
          if (!*v89)
          {
            goto LABEL_147;
          }
        }

        else
        {
          v34 = v8 + 2;
LABEL_48:
          *v89 = v34;
        }

        if (v33 > 1)
        {
          sub_144E0FC();
        }

        else
        {
          *(a1 + 16) |= 0x2000u;
          *(a1 + 104) = v33;
        }

        goto LABEL_140;
      default:
        goto LABEL_132;
    }
  }
}

char *sub_183443C(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, a2);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 88);
  *v4 = 16;
  v4[1] = v7;
  v4 += 2;
  if ((v6 & 0x10) != 0)
  {
LABEL_9:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 89);
    *v4 = 24;
    v4[1] = v8;
    v4 += 2;
  }

LABEL_12:
  v9 = *(a1 + 24);
  if (v9 < 1)
  {
    v12 = v4;
  }

  else
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v11 = *(*(a1 + 32) + 4 * i);
      *v4 = 32;
      v4[1] = v11;
      if (v11 > 0x7F)
      {
        v4[1] = v11 | 0x80;
        v13 = v11 >> 7;
        v4[2] = v11 >> 7;
        v12 = v4 + 3;
        if (v11 >= 0x4000)
        {
          LOBYTE(v4) = v4[2];
          do
          {
            *(v12 - 1) = v4 | 0x80;
            v4 = (v13 >> 7);
            *v12++ = v13 >> 7;
            v14 = v13 >> 14;
            v13 >>= 7;
          }

          while (v14);
        }
      }

      else
      {
        v12 = v4 + 2;
      }

      v4 = v12;
    }
  }

  if ((v6 & 2) != 0)
  {
    v12 = sub_128AEEC(a3, 5, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v12);
    if ((v6 & 0x20) == 0)
    {
LABEL_26:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_32;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_26;
  }

  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v15 = *(a1 + 90);
  *v12 = 48;
  v12[1] = v15;
  v12 += 2;
  if ((v6 & 0x40) != 0)
  {
LABEL_32:
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v16 = *(a1 + 91);
    *v12 = 56;
    v12[1] = v16;
    v12 += 2;
  }

LABEL_35:
  v17 = *(a1 + 48);
  if (v17)
  {
    for (j = 0; j != v17; ++j)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v19 = *(*(a1 + 56) + 8 * j + 8);
      *v12 = 66;
      v20 = *(v19 + 20);
      v12[1] = v20;
      if (v20 > 0x7F)
      {
        v21 = sub_19575D0(v20, v12 + 1);
      }

      else
      {
        v21 = v12 + 2;
      }

      v12 = sub_16E74A8(v19, v21, a3);
    }
  }

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v23 = *(a1 + 92);
    *v12 = 72;
    v12[1] = v23;
    if (v23 > 0x7F)
    {
      v12[1] = v23 | 0x80;
      v24 = v23 >> 7;
      v12[2] = v23 >> 7;
      v22 = v12 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v25) = v12[2];
        do
        {
          *(v22 - 1) = v25 | 0x80;
          v25 = v24 >> 7;
          *v22++ = v24 >> 7;
          v26 = v24 >> 14;
          v24 >>= 7;
        }

        while (v26);
      }
    }

    else
    {
      v22 = v12 + 2;
    }
  }

  else
  {
    v22 = v12;
  }

  if ((v6 & 0x200) == 0)
  {
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_54;
    }

LABEL_59:
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v29 = *(a1 + 101);
    *v22 = 88;
    v22[1] = v29;
    v22 += 2;
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_62;
  }

  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v28 = *(a1 + 100);
  *v22 = 80;
  v22[1] = v28;
  v22 += 2;
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_59;
  }

LABEL_54:
  if ((v6 & 0x100) == 0)
  {
LABEL_55:
    v27 = v22;
    goto LABEL_69;
  }

LABEL_62:
  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v30 = *(a1 + 96);
  *v22 = 96;
  v22[1] = v30;
  if (v30 > 0x7F)
  {
    v22[1] = v30 | 0x80;
    v31 = v30 >> 7;
    v22[2] = v30 >> 7;
    v27 = v22 + 3;
    if (v30 >= 0x4000)
    {
      LOBYTE(v32) = v22[2];
      do
      {
        *(v27 - 1) = v32 | 0x80;
        v32 = v31 >> 7;
        *v27++ = v31 >> 7;
        v33 = v31 >> 14;
        v31 >>= 7;
      }

      while (v33);
    }
  }

  else
  {
    v27 = v22 + 2;
  }

LABEL_69:
  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= v27)
    {
      v27 = sub_225EB68(a3, v27);
    }

    v35 = *(a1 + 102);
    *v27 = 104;
    v27[1] = v35;
    v27 += 2;
    if ((v6 & 0x1000) == 0)
    {
LABEL_71:
      if ((v6 & 4) == 0)
      {
        goto LABEL_72;
      }

LABEL_80:
      v27 = sub_128AEEC(a3, 15, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v27);
      if ((v6 & 0x2000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_81;
    }
  }

  else if ((v6 & 0x1000) == 0)
  {
    goto LABEL_71;
  }

  if (*a3 <= v27)
  {
    v27 = sub_225EB68(a3, v27);
  }

  v36 = *(a1 + 103);
  *v27 = 112;
  v27[1] = v36;
  v27 += 2;
  if ((v6 & 4) != 0)
  {
    goto LABEL_80;
  }

LABEL_72:
  if ((v6 & 0x2000) == 0)
  {
LABEL_73:
    v34 = v27;
    goto LABEL_88;
  }

LABEL_81:
  if (*a3 <= v27)
  {
    v27 = sub_225EB68(a3, v27);
  }

  v37 = *(a1 + 104);
  *v27 = 384;
  v27[2] = v37;
  if (v37 > 0x7F)
  {
    v27[2] = v37 | 0x80;
    v38 = v37 >> 7;
    v27[3] = v37 >> 7;
    v34 = v27 + 4;
    if (v37 >= 0x4000)
    {
      LOBYTE(v39) = v27[3];
      do
      {
        *(v34 - 1) = v39 | 0x80;
        v39 = v38 >> 7;
        *v34++ = v38 >> 7;
        v40 = v38 >> 14;
        v38 >>= 7;
      }

      while (v40);
    }
  }

  else
  {
    v34 = v27 + 3;
  }

LABEL_88:
  v41 = *(a1 + 8);
  if ((v41 & 1) == 0)
  {
    return v34;
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

  if (*a3 - v34 >= v44)
  {
    v46 = v44;
    memcpy(v34, v45, v44);
    v34 += v46;
    return v34;
  }

  return sub_1957130(a3, v45, v44, v34);
}

uint64_t sub_18349F8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 32) + 4 * v4);
      if (v5 < 0)
      {
        v6 = 10;
      }

      else
      {
        v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
      }

      v3 += v6;
      ++v4;
    }

    while (v2 != v4);
  }

  else
  {
    v3 = 0;
  }

  v7 = v3 + v2;
  v8 = *(a1 + 48);
  v9 = v7 + v8;
  v10 = *(a1 + 56);
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

  v15 = *(a1 + 16);
  v16 = vdupq_n_s32(v15);
  if (v15)
  {
    if (v15)
    {
      v30 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
      v31 = *(v30 + 23);
      v32 = *(v30 + 8);
      if ((v31 & 0x80u) == 0)
      {
        v32 = v31;
      }

      v9 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v15 & 2) == 0)
      {
LABEL_18:
        if ((v15 & 4) == 0)
        {
LABEL_22:
          v20.i64[0] = 0x200000002;
          v20.i64[1] = 0x200000002;
          v9 += vaddvq_s32(vandq_s8(vshlq_u32(v16, xmmword_232F5A0), v20));
          if ((v15 & 0x80) != 0)
          {
            v9 += ((9 * (__clz(*(a1 + 92) | 1) ^ 0x1F) + 73) >> 6) + 1;
          }

          goto LABEL_24;
        }

LABEL_19:
        v17 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
        v18 = *(v17 + 23);
        v19 = *(v17 + 8);
        if ((v18 & 0x80u) == 0)
        {
          v19 = v18;
        }

        v9 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
        goto LABEL_22;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_18;
    }

    v33 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v34 = *(v33 + 23);
    v35 = *(v33 + 8);
    if ((v34 & 0x80u) == 0)
    {
      v35 = v34;
    }

    v9 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_24:
  if ((v15 & 0x3F00) != 0)
  {
    if ((v15 & 0x100) != 0)
    {
      v21 = *(a1 + 96);
      v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v21 >= 0)
      {
        v23 = v22;
      }

      else
      {
        v23 = 11;
      }

      v9 += v23;
    }

    v24.i64[0] = 0x200000002;
    v24.i64[1] = 0x200000002;
    v9 += vaddvq_s32(vandq_s8(vshlq_u32(v16, xmmword_23342A0), v24));
    if ((v15 & 0x2000) != 0)
    {
      v25 = *(a1 + 104);
      v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v25 >= 0)
      {
        v27 = v26;
      }

      else
      {
        v27 = 12;
      }

      v9 += v27;
    }
  }

  v28 = *(a1 + 8);
  if (v28)
  {
    v36 = v28 & 0xFFFFFFFFFFFFFFFCLL;
    v37 = *((v28 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v37 < 0)
    {
      v37 = *(v36 + 16);
    }

    v9 += v37;
  }

  *(a1 + 20) = v9;
  return v9;
}

std::string *sub_1834CB4(std::string *result, uint64_t a2)
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

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 56);
    v10 = sub_19592E8(&v3[1].__r_.__value_.__r.__words[2], *(a2 + 48));
    result = sub_13B326C((v3 + 40), v10, (v9 + 8), v8, *v3[2].__r_.__value_.__l.__size_ - LODWORD(v3[2].__r_.__value_.__l.__data_));
    v11 = LODWORD(v3[2].__r_.__value_.__l.__data_) + v8;
    LODWORD(v3[2].__r_.__value_.__l.__data_) = v11;
    v12 = v3[2].__r_.__value_.__l.__size_;
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 16);
  if (v13)
  {
    if (v13)
    {
      v15 = *(a2 + 64);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v16 = v3->__r_.__value_.__l.__size_;
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      result = sub_194EA1C(&v3[2].__r_.__value_.__r.__words[2], (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
      if ((v13 & 2) == 0)
      {
LABEL_9:
        if ((v13 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_36;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_9;
    }

    v18 = *(a2 + 72);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v19 = v3->__r_.__value_.__l.__size_;
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    result = sub_194EA1C(&v3[3], (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
    if ((v13 & 4) == 0)
    {
LABEL_10:
      if ((v13 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_39;
    }

LABEL_36:
    v21 = *(a2 + 80);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v22 = v3->__r_.__value_.__l.__size_;
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    result = sub_194EA1C(&v3[3].__r_.__value_.__l.__size_, (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
    if ((v13 & 8) == 0)
    {
LABEL_11:
      if ((v13 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_40;
    }

LABEL_39:
    v3[3].__r_.__value_.__s.__data_[16] = *(a2 + 88);
    if ((v13 & 0x10) == 0)
    {
LABEL_12:
      if ((v13 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_41;
    }

LABEL_40:
    v3[3].__r_.__value_.__s.__data_[17] = *(a2 + 89);
    if ((v13 & 0x20) == 0)
    {
LABEL_13:
      if ((v13 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_42;
    }

LABEL_41:
    v3[3].__r_.__value_.__s.__data_[18] = *(a2 + 90);
    if ((v13 & 0x40) == 0)
    {
LABEL_14:
      if ((v13 & 0x80) == 0)
      {
LABEL_16:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v13;
        goto LABEL_17;
      }

LABEL_15:
      HIDWORD(v3[3].__r_.__value_.__r.__words[2]) = *(a2 + 92);
      goto LABEL_16;
    }

LABEL_42:
    v3[3].__r_.__value_.__s.__data_[19] = *(a2 + 91);
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  if ((v13 & 0x3F00) == 0)
  {
    goto LABEL_26;
  }

  if ((v13 & 0x100) != 0)
  {
    LODWORD(v3[4].__r_.__value_.__l.__data_) = *(a2 + 96);
    if ((v13 & 0x200) == 0)
    {
LABEL_20:
      if ((v13 & 0x400) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_46;
    }
  }

  else if ((v13 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  v3[4].__r_.__value_.__s.__data_[4] = *(a2 + 100);
  if ((v13 & 0x400) == 0)
  {
LABEL_21:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  v3[4].__r_.__value_.__s.__data_[5] = *(a2 + 101);
  if ((v13 & 0x800) == 0)
  {
LABEL_22:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

LABEL_48:
    v3[4].__r_.__value_.__s.__data_[7] = *(a2 + 103);
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_47:
  v3[4].__r_.__value_.__s.__data_[6] = *(a2 + 102);
  if ((v13 & 0x1000) != 0)
  {
    goto LABEL_48;
  }

LABEL_23:
  if ((v13 & 0x2000) != 0)
  {
LABEL_24:
    LODWORD(v3[4].__r_.__value_.__r.__words[1]) = *(a2 + 104);
  }

LABEL_25:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= v13;
LABEL_26:
  v14 = *(a2 + 8);
  if (v14)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1834F50(uint64_t a1)
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

  if (a1 != &off_2786768)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_1832618(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1833940(v6);
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

void sub_1835020(uint64_t a1)
{
  sub_1834F50(a1);

  operator delete();
}

uint64_t sub_1835058(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_18327E8(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_1833A58(*(v1 + 32));
    }
  }

  if ((v2 & 0xC) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 40) = 0;
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

char *sub_18350D8(uint64_t a1, char *a2, int32x2_t *a3)
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
      if (v11 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_39;
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

          v23 = sub_1864468(v25);
          *(a1 + 24) = v23;
          v7 = v31;
        }

        v19 = sub_224E458(a3, v23, v7);
      }

      else
      {
        if (v11 != 4 || v8 != 34)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 2u;
        v16 = *(a1 + 32);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_186451C(v18);
          *(a1 + 32) = v16;
          v7 = v31;
        }

        v19 = sub_224E4E8(a3, v16, v7);
      }

LABEL_46:
      v31 = v19;
      if (!v19)
      {
        goto LABEL_57;
      }

      goto LABEL_47;
    }

    if (v11 != 1)
    {
      break;
    }

    if (v8 != 8)
    {
      goto LABEL_39;
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
      v31 = v21;
      *(a1 + 40) = v20;
      goto LABEL_47;
    }

    v29 = sub_19587DC(v7, v20);
    v31 = v29;
    *(a1 + 40) = v30;
    if (!v29)
    {
      goto LABEL_57;
    }

LABEL_47:
    if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2 && v8 == 16)
  {
    v14 = v7 + 1;
    v13 = *v7;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if (v15 < 0)
    {
      v31 = sub_19587DC(v7, v13);
      if (!v31)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v14 = v7 + 2;
LABEL_17:
      v31 = v14;
    }

    if (v13 > 2)
    {
      sub_12E8418();
    }

    else
    {
      *(a1 + 16) |= 8u;
      *(a1 + 48) = v13;
    }

    goto LABEL_47;
  }

LABEL_39:
  if (v8)
  {
    v26 = (v8 & 7) == 4;
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
      v7 = v31;
    }

    v19 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_46;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_57:
  v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

char *sub_183538C(uint64_t a1, char *__dst, void *a3)
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 48);
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

    v11 = sub_1832F38(v15, v17, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v18 = *(a1 + 32);
    *v11 = 34;
    v19 = *(v18 + 20);
    v11[1] = v19;
    if (v19 > 0x7F)
    {
      v20 = sub_19575D0(v19, v11 + 1);
    }

    else
    {
      v20 = v11 + 2;
    }

    v11 = sub_183443C(v18, v20, a3);
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v11;
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

  if (*a3 - v11 >= v24)
  {
    v26 = v24;
    memcpy(v11, v25, v24);
    v11 += v26;
    return v11;
  }

  return sub_1957130(a3, v25, v24, v11);
}

uint64_t sub_1835610(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if (v2)
  {
    v4 = sub_183330C(*(a1 + 24));
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
    v5 = sub_18349F8(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_16;
  }

  v6 = *(a1 + 48);
  if (v6 < 0)
  {
    v7 = 11;
  }

  else
  {
    v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v7;
LABEL_16:
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

std::string *sub_1835740(std::string *result, uint64_t a2)
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

        data = sub_1864468(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2786680;
      }

      result = sub_183362C(data, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_28;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v10 = v3[1].__r_.__value_.__l.__size_;
    if (!v10)
    {
      v11 = v3->__r_.__value_.__l.__size_;
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_186451C(v12);
      v3[1].__r_.__value_.__l.__size_ = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_27866F8;
    }

    result = sub_1834CB4(v10, v13);
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
      LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_28:
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

void *sub_1835894(void *a1)
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

  sub_1835918(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_1835918(uint64_t result)
{
  if (result != &off_27867A0)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2)
    {
      sub_18384E0(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_1836EB0(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_183756C(v4);
      operator delete();
    }

    v5 = v1[6];
    if (v5)
    {
      sub_174B578(v5);
      operator delete();
    }

    result = v1[7];
    if (result)
    {
      sub_1837C28(result);

      operator delete();
    }
  }

  return result;
}

void sub_18359FC(void *a1)
{
  sub_1835894(a1);

  operator delete();
}

uint64_t sub_1835A34(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    result = sub_1835AE0(*(result + 24));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_14:
      result = sub_1835C4C(*(v1 + 40));
      if ((v2 & 8) == 0)
      {
LABEL_6:
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_1835BB8(*(v1 + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  result = sub_174B5B4(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = sub_1835CE0(*(v1 + 56));
  }

LABEL_8:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 56) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_1835AE0(uint64_t a1)
{
  sub_1951124((a1 + 16));
  v2 = *(a1 + 56);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 64) + 8);
    do
    {
      v4 = *v3++;
      sub_1813018(v4);
      --v2;
    }

    while (v2);
    *(a1 + 56) = 0;
  }

  result = sub_12A41D0(a1 + 72);
  v6 = *(a1 + 40);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      result = sub_17A82BC(*(a1 + 96));
    }

    if ((v6 & 2) != 0)
    {
      result = sub_1838604(*(a1 + 104));
    }
  }

  if ((v6 & 0xFC) != 0)
  {
    *(a1 + 144) = 0;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
  }

  if ((v6 & 0x700) != 0)
  {
    *(a1 + 160) = 0;
    *(a1 + 152) = 0;
  }

  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 32) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_1835BB8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1813018(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_17A82BC(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 48) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

uint64_t sub_1835C4C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1813018(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_17A82BC(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 48) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

uint64_t sub_1835CE0(uint64_t result)
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

  if (*(v1 + 16))
  {
    result = sub_1835AE0(*(v1 + 48));
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

char *sub_1835D70(uint64_t a1, char *a2, int32x2_t *a3)
{
  v37 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v37, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v37 + 1;
    v7 = *v37;
    if (*v37 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v37, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v37 + 2;
      }
    }

    v37 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 3)
    {
      if (v10 == 4)
      {
        if (v7 != 34)
        {
          goto LABEL_54;
        }

        *(a1 + 16) |= 4u;
        v23 = *(a1 + 40);
        if (!v23)
        {
          v24 = *(a1 + 8);
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v25 = *v25;
          }

          v23 = sub_186477C(v25);
          *(a1 + 40) = v23;
          v6 = v37;
        }

        v15 = sub_224E608(a3, v23, v6);
      }

      else if (v10 == 100)
      {
        if (v7 != 34)
        {
          goto LABEL_54;
        }

        *(a1 + 16) |= 8u;
        v29 = *(a1 + 48);
        if (!v29)
        {
          v30 = *(a1 + 8);
          v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
          if (v30)
          {
            v31 = *v31;
          }

          v29 = sub_174DF14(v31);
          *(a1 + 48) = v29;
          v6 = v37;
        }

        v15 = sub_2231318(a3, v29, v6);
      }

      else
      {
        if (v10 != 101 || v7 != 42)
        {
          goto LABEL_54;
        }

        *(a1 + 16) |= 0x10u;
        v16 = *(a1 + 56);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_1864820(v18);
          *(a1 + 56) = v16;
          v6 = v37;
        }

        v15 = sub_224E698(a3, v16, v6);
      }
    }

    else
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v19 = v6 + 1;
          v20 = *v6;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_33;
          }

          v21 = *v19;
          v22 = (v21 << 7) + v20;
          LODWORD(v20) = v22 - 128;
          if (v21 < 0)
          {
            v37 = sub_19587DC(v6, (v22 - 128));
            if (!v37)
            {
              return 0;
            }

            LODWORD(v20) = v35;
          }

          else
          {
            v19 = v6 + 2;
LABEL_33:
            v37 = v19;
          }

          if (sub_15528B4(v20))
          {
            *(a1 + 16) |= 0x20u;
            *(a1 + 64) = v20;
          }

          else
          {
            sub_12E8450();
          }

          continue;
        }

LABEL_54:
        if (v7)
        {
          v32 = (v7 & 7) == 4;
        }

        else
        {
          v32 = 1;
        }

        if (v32)
        {
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return v37;
          }

          return 0;
        }

        v33 = *(a1 + 8);
        if (v33)
        {
          v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v34 = sub_11F1920((a1 + 8));
          v6 = v37;
        }

        v15 = sub_1952690(v7, v34, v6, a3);
        goto LABEL_61;
      }

      if (v10 == 2)
      {
        if (v7 != 18)
        {
          goto LABEL_54;
        }

        *(a1 + 16) |= 1u;
        v26 = *(a1 + 24);
        if (!v26)
        {
          v27 = *(a1 + 8);
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
          if (v27)
          {
            v28 = *v28;
          }

          v26 = sub_18648BC(v28);
          *(a1 + 24) = v26;
          v6 = v37;
        }

        v15 = sub_2200230(a3, v26, v6);
      }

      else
      {
        if (v10 != 3 || v7 != 26)
        {
          goto LABEL_54;
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

          v12 = sub_18646D8(v14);
          *(a1 + 32) = v12;
          v6 = v37;
        }

        v15 = sub_224E578(a3, v12, v6);
      }
    }

LABEL_61:
    v37 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return v37;
}

char *sub_18360B4(uint64_t a1, char *__dst, unint64_t *a3)
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
    v12 = *(v11 + 44);
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v6 + 1);
    }

    else
    {
      v13 = v6 + 2;
    }

    v6 = sub_1838E28(v11, v13, a3);
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_28;
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

  v14 = *(a1 + 32);
  *v6 = 26;
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

  v6 = sub_183721C(v14, v16, a3);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_28:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v17 = *(a1 + 40);
  *v6 = 34;
  v18 = *(v17 + 20);
  v6[1] = v18;
  if (v18 > 0x7F)
  {
    v19 = sub_19575D0(v18, v6 + 1);
  }

  else
  {
    v19 = v6 + 2;
  }

  v6 = sub_18378D8(v17, v19, a3);
  if ((v5 & 8) == 0)
  {
LABEL_14:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_40;
  }

LABEL_34:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v20 = *(a1 + 48);
  *v6 = 1698;
  v21 = *(v20 + 20);
  v6[2] = v21;
  if (v21 > 0x7F)
  {
    v22 = sub_19575D0(v21, v6 + 2);
  }

  else
  {
    v22 = v6 + 3;
  }

  v6 = sub_174BCCC(v20, v22, a3);
  if ((v5 & 0x10) != 0)
  {
LABEL_40:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v23 = *(a1 + 56);
    *v6 = 1706;
    v24 = *(v23 + 20);
    v6[2] = v24;
    if (v24 > 0x7F)
    {
      v25 = sub_19575D0(v24, v6 + 2);
    }

    else
    {
      v25 = v6 + 3;
    }

    v6 = sub_1837F08(v23, v25, a3);
  }

LABEL_46:
  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return v6;
  }

  v28 = v26 & 0xFFFFFFFFFFFFFFFCLL;
  v29 = *(v28 + 31);
  if (v29 < 0)
  {
    v30 = *(v28 + 8);
    v29 = *(v28 + 16);
  }

  else
  {
    v30 = (v28 + 8);
  }

  if ((*a3 - v6) >= v29)
  {
    v31 = v29;
    memcpy(v6, v30, v29);
    v6 += v31;
    return v6;
  }

  return sub_1957130(a3, v30, v29, v6);
}

uint64_t sub_18363F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_20;
  }

  if (v2)
  {
    v4 = sub_1839564(*(a1 + 24));
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
    v5 = sub_1837444(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = sub_1837B00(*(a1 + 40));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v7 = sub_174C0B8(*(a1 + 48));
  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = sub_18380B0(*(a1 + 56));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v9 = *(a1 + 64);
  if (v9 < 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v10;
LABEL_20:
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

void sub_1836594(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) != 0)
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

        v6 = sub_18648BC(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_27868A0;
      }

      sub_18367AC(v6, v9);
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

      v10 = sub_18646D8(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_27867E8;
    }

    sub_1836A2C(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_38;
    }

LABEL_30:
    *(a1 + 16) |= 4u;
    v14 = *(a1 + 40);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_186477C(v16);
      *(a1 + 40) = v14;
    }

    if (*(a2 + 40))
    {
      v17 = *(a2 + 40);
    }

    else
    {
      v17 = &off_2786828;
    }

    sub_1836A2C(v14, v17);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_46;
    }

LABEL_38:
    *(a1 + 16) |= 8u;
    v18 = *(a1 + 48);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_174DF14(v20);
      *(a1 + 48) = v18;
    }

    if (*(a2 + 48))
    {
      v21 = *(a2 + 48);
    }

    else
    {
      v21 = &off_2780C98;
    }

    sub_174C264(v18, v21);
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
      *(a1 + 64) = *(a2 + 64);
      goto LABEL_9;
    }

LABEL_46:
    *(a1 + 16) |= 0x10u;
    v22 = *(a1 + 56);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_1864820(v24);
      *(a1 + 56) = v22;
    }

    if (*(a2 + 56))
    {
      v25 = *(a2 + 56);
    }

    else
    {
      v25 = &off_2786868;
    }

    sub_1836B58(v22, v25);
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

void sub_18367AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_134817C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_1201B48(a1 + 72, v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 40);
  if (v14)
  {
    if (v14)
    {
      *(a1 + 40) |= 1u;
      v16 = *(a1 + 96);
      if (!v16)
      {
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v16 = sub_191BA60(v18);
        *(a1 + 96) = v16;
      }

      if (*(a2 + 96))
      {
        v19 = *(a2 + 96);
      }

      else
      {
        v19 = &off_278B870;
      }

      sub_17A8DBC(v16, v19);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_44;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(a1 + 40) |= 2u;
    v20 = *(a1 + 104);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_1864C74(v22);
      *(a1 + 104) = v20;
    }

    if (*(a2 + 104))
    {
      v23 = *(a2 + 104);
    }

    else
    {
      v23 = &off_2786AC0;
    }

    sub_1839868(v20, v23);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_45;
    }

LABEL_44:
    *(a1 + 112) = *(a2 + 112);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_46;
    }

LABEL_45:
    *(a1 + 120) = *(a2 + 120);
    if ((v14 & 0x10) == 0)
    {
LABEL_13:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_47;
    }

LABEL_46:
    *(a1 + 128) = *(a2 + 128);
    if ((v14 & 0x20) == 0)
    {
LABEL_14:
      if ((v14 & 0x40) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_48;
    }

LABEL_47:
    *(a1 + 132) = *(a2 + 132);
    if ((v14 & 0x40) == 0)
    {
LABEL_15:
      if ((v14 & 0x80) == 0)
      {
LABEL_17:
        *(a1 + 40) |= v14;
        goto LABEL_18;
      }

LABEL_16:
      *(a1 + 144) = *(a2 + 144);
      goto LABEL_17;
    }

LABEL_48:
    *(a1 + 136) = *(a2 + 136);
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  if ((v14 & 0x700) == 0)
  {
    goto LABEL_24;
  }

  if ((v14 & 0x100) == 0)
  {
    if ((v14 & 0x200) == 0)
    {
      goto LABEL_21;
    }

LABEL_51:
    *(a1 + 156) = *(a2 + 156);
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  *(a1 + 152) = *(a2 + 152);
  if ((v14 & 0x200) != 0)
  {
    goto LABEL_51;
  }

LABEL_21:
  if ((v14 & 0x400) != 0)
  {
LABEL_22:
    *(a1 + 160) = *(a2 + 160);
  }

LABEL_23:
  *(a1 + 40) |= v14;
LABEL_24:
  sub_225EA0C(a1 + 16, a2 + 16);
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1836A2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_134817C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

        v10 = sub_191BA60(v12);
        *(a1 + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_278B870;
      }

      sub_17A8DBC(v10, v13);
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

void sub_1836B58(uint64_t a1, uint64_t a2)
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

      v10 = sub_18648BC(v12);
      *(a1 + 48) = v10;
      v9 = *(a2 + 48);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_27868A0;
    }

    sub_18367AC(v10, v13);
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1836C68(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_1836CF0(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_1836D74(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_1836DD8(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_174C680(*(a1 + 48));
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

  result = sub_1836E3C(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1836CF0(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_181489C(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      result = sub_17A8EF8(*(a1 + 96));
      if (!result)
      {
        return result;
      }

      v6 = *(a1 + 40);
    }

    if ((v6 & 2) == 0)
    {
      return 1;
    }

    result = sub_18399C4(*(a1 + 104));
    if (result)
    {
      return 1;
    }
  }

  return result;
}