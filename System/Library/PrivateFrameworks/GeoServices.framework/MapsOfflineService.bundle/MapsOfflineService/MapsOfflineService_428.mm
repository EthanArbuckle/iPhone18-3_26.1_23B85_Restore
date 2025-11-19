uint64_t sub_1768730(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    while (v4 >= 1)
    {
      v5 = v4 - 1;
      v6 = sub_16E4B4C(*(*(v3 + 32) + 8 * v4));
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
  v9 = *(v8 + 48);
  do
  {
    v7 = v9 < 1;
    if (v9 < 1)
    {
      break;
    }

    v10 = v9 - 1;
    v11 = sub_16E5370(*(*(v8 + 56) + 8 * v9));
    v9 = v10;
  }

  while ((v11 & 1) != 0);
  return v7;
}

BOOL sub_17687D0(uint64_t a1)
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
    v5 = sub_16E4B4C(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

BOOL sub_1768828(uint64_t a1)
{
  v2 = *(a1 + 48);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_16E5370(*(*(a1 + 56) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_1768890(uint64_t a1)
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

void sub_176895C(uint64_t a1)
{
  sub_1768890(a1);

  operator delete();
}

uint64_t sub_1768994(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1768B50(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1768C64(uint64_t a1)
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

void *sub_1768D94(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_140996C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1768E14(void *a1)
{
  sub_1768D94(a1);

  operator delete();
}

char *sub_1768E4C(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_16F5BD8(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_21F7188(a3, v16, v13);
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

char *sub_1768FDC(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_16E886C(v8, v10, a3);
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

uint64_t sub_176911C(uint64_t a1)
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
      v7 = sub_16E8DA4(v6);
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

void *sub_17691D4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_176B51C(a1 + 8);
  sub_12E6204(a1 + 5);
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1769268(void *a1)
{
  sub_17691D4(a1);

  operator delete();
}

char *sub_17692A0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v40 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v40, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v40 + 1;
    v8 = *v40;
    if (*v40 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v40, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v40 + 2;
      }
    }

    v40 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      if (v11 == 1)
      {
        if (v8 == 8)
        {
          v22 = v7 - 1;
          while (1)
          {
            v40 = v22 + 1;
            v23 = v22[1];
            if (v23 < 0)
            {
              v24 = (v22[2] << 7) + v23;
              v23 = (v24 - 128);
              if (v22[2] < 0)
              {
                v22 = sub_19587DC((v22 + 1), (v24 - 128));
                v23 = v25;
              }

              else
              {
                v22 += 3;
              }
            }

            else
            {
              v22 += 2;
            }

            v40 = v22;
            v26 = *(a1 + 24);
            if (v26 == *(a1 + 28))
            {
              v27 = v26 + 1;
              sub_1959094((a1 + 24), v26 + 1);
              *(*(a1 + 32) + 8 * v26) = v23;
              v22 = v40;
            }

            else
            {
              *(*(a1 + 32) + 8 * v26) = v23;
              v27 = v26 + 1;
            }

            *(a1 + 24) = v27;
            if (!v22)
            {
              goto LABEL_78;
            }

            if (*a3 <= v22 || *v22 != 8)
            {
              goto LABEL_52;
            }
          }
        }

        if (v8 == 10)
        {
          v36 = sub_1958928((a1 + 24), v7, a3);
          goto LABEL_73;
        }
      }

      else if (v11 == 2)
      {
        if (v8 == 18)
        {
          v30 = v7 - 1;
          while (1)
          {
            v31 = (v30 + 1);
            v40 = v30 + 1;
            v32 = *(a1 + 56);
            if (v32 && (v33 = *(a1 + 48), v33 < *v32))
            {
              *(a1 + 48) = v33 + 1;
              v34 = *&v32[2 * v33 + 2];
            }

            else
            {
              v35 = sub_16F5828(*(a1 + 40));
              v34 = sub_19593CC(a1 + 40, v35);
              v31 = v40;
            }

            v30 = sub_21F4D60(a3, v34, v31);
            v40 = v30;
            if (!v30)
            {
              goto LABEL_78;
            }

            if (*a3 <= v30 || *v30 != 18)
            {
              goto LABEL_52;
            }
          }
        }
      }

      else if (v11 == 3 && v8 == 26)
      {
        v15 = v7 - 1;
        while (1)
        {
          v16 = (v15 + 1);
          v40 = v15 + 1;
          v17 = *(a1 + 80);
          if (v17 && (v18 = *(a1 + 72), v18 < *v17))
          {
            *(a1 + 72) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            sub_176ADB8(*(a1 + 64));
            v19 = sub_19593CC(a1 + 64, v20);
            v16 = v40;
          }

          v15 = sub_223ED58(a3, v19, v16);
          v40 = v15;
          if (!v15)
          {
            goto LABEL_78;
          }

          if (*a3 <= v15 || *v15 != 26)
          {
            goto LABEL_52;
          }
        }
      }
    }

    else if (v8 >> 3 > 5)
    {
      if (v11 == 6)
      {
        if (v8 == 49)
        {
          v29 = *v7;
          v12 = v7 + 8;
          v5 |= 4u;
          *(a1 + 104) = v29;
          goto LABEL_51;
        }
      }

      else if (v11 == 7 && v8 == 57)
      {
        v21 = *v7;
        v12 = v7 + 8;
        v5 |= 8u;
        *(a1 + 112) = v21;
        goto LABEL_51;
      }
    }

    else if (v11 == 4)
    {
      if (v8 == 33)
      {
        v28 = *v7;
        v12 = v7 + 8;
        v5 |= 1u;
        *(a1 + 88) = v28;
        goto LABEL_51;
      }
    }

    else if (v11 == 5 && v8 == 41)
    {
      v13 = *v7;
      v12 = v7 + 8;
      v5 |= 2u;
      *(a1 + 96) = v13;
LABEL_51:
      v40 = v12;
      goto LABEL_52;
    }

    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v38 = *(a1 + 8);
    if (v38)
    {
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v39 = sub_11F1920((a1 + 8));
      v7 = v40;
    }

    v36 = sub_1952690(v8, v39, v7, a3);
LABEL_73:
    v40 = v36;
    if (!v36)
    {
      goto LABEL_78;
    }

LABEL_52:
    if (sub_195ADC0(a3, &v40, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_78:
  v40 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v40;
}

char *sub_1769670(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 24);
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

      v7 = *(*(a1 + 32) + 8 * i);
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
  if (v12)
  {
    for (j = 0; j != v12; ++j)
    {
      if (*a3 <= v8)
      {
        v8 = sub_225EB68(a3, v8);
      }

      v14 = *(*(a1 + 56) + 8 * j + 8);
      *v8 = 18;
      v15 = *(v14 + 44);
      v8[1] = v15;
      if (v15 > 0x7F)
      {
        v16 = sub_19575D0(v15, v8 + 1);
      }

      else
      {
        v16 = v8 + 2;
      }

      v8 = sub_16E5070(v14, v16, a3);
    }
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    for (k = 0; k != v17; ++k)
    {
      if (*a3 <= v8)
      {
        v8 = sub_225EB68(a3, v8);
      }

      v19 = *(*(a1 + 80) + 8 * k + 8);
      *v8 = 26;
      v20 = *(v19 + 20);
      v8[1] = v20;
      if (v20 > 0x7F)
      {
        v21 = sub_19575D0(v20, v8 + 1);
      }

      else
      {
        v21 = v8 + 2;
      }

      v8 = sub_176A624(v19, v21, a3);
    }
  }

  v22 = *(a1 + 16);
  if (v22)
  {
    if (*a3 <= v8)
    {
      v8 = sub_225EB68(a3, v8);
    }

    v23 = *(a1 + 88);
    *v8 = 33;
    *(v8 + 1) = v23;
    v8 += 9;
    if ((v22 & 2) == 0)
    {
LABEL_31:
      if ((v22 & 4) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_40;
    }
  }

  else if ((v22 & 2) == 0)
  {
    goto LABEL_31;
  }

  if (*a3 <= v8)
  {
    v8 = sub_225EB68(a3, v8);
  }

  v24 = *(a1 + 96);
  *v8 = 41;
  *(v8 + 1) = v24;
  v8 += 9;
  if ((v22 & 4) == 0)
  {
LABEL_32:
    if ((v22 & 8) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

LABEL_40:
  if (*a3 <= v8)
  {
    v8 = sub_225EB68(a3, v8);
  }

  v25 = *(a1 + 104);
  *v8 = 49;
  *(v8 + 1) = v25;
  v8 += 9;
  if ((v22 & 8) != 0)
  {
LABEL_43:
    if (*a3 <= v8)
    {
      v8 = sub_225EB68(a3, v8);
    }

    v26 = *(a1 + 112);
    *v8 = 57;
    *(v8 + 1) = v26;
    v8 += 9;
  }

LABEL_46:
  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return v8;
  }

  v29 = v27 & 0xFFFFFFFFFFFFFFFCLL;
  v30 = *(v29 + 31);
  if (v30 < 0)
  {
    v31 = *(v29 + 8);
    v30 = *(v29 + 16);
  }

  else
  {
    v31 = (v29 + 8);
  }

  if (*a3 - v8 >= v30)
  {
    v32 = v30;
    memcpy(v8, v31, v30);
    v8 += v32;
    return v8;
  }

  return sub_1957130(a3, v31, v30, v8);
}

uint64_t sub_17699C8(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24));
  v3 = *(a1 + 48);
  v4 = v2 + *(a1 + 24) + v3;
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
      v9 = sub_16E51F0(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 72);
  v11 = v4 + v10;
  v12 = *(a1 + 80);
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
      v16 = sub_176A884(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 16);
  if ((v17 & 0xF) != 0)
  {
    v18 = v11 + 9;
    if ((v17 & 1) == 0)
    {
      v18 = v11;
    }

    if ((v17 & 2) != 0)
    {
      v18 += 9;
    }

    if ((v17 & 4) != 0)
    {
      v18 += 9;
    }

    if ((v17 & 8) != 0)
    {
      v11 = v18 + 9;
    }

    else
    {
      v11 = v18;
    }
  }

  v19 = *(a1 + 8);
  if (v19)
  {
    v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v11 += v22;
  }

  *(a1 + 20) = v11;
  return v11;
}

uint64_t sub_1769B18(uint64_t a1)
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

void sub_1769BD0(uint64_t a1)
{
  sub_1769B18(a1);

  operator delete();
}

uint64_t sub_1769C08(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1769D88(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1769E70(uint64_t a1)
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

void *sub_1769F5C(void *a1)
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

void sub_1769FD0(void *a1)
{
  sub_1769F5C(a1);

  operator delete();
}

char *sub_176A008(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_176A16C(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

uint64_t sub_176A284(uint64_t a1)
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

void *sub_176A2F0(void *a1)
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

void sub_176A364(void *a1)
{
  sub_176A2F0(a1);

  operator delete();
}

uint64_t sub_176A39C(uint64_t a1)
{
  if ((*(a1 + 16) & 0x1F) != 0)
  {
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

char *sub_176A3C8(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 == 29)
      {
        v16 = *v7;
        v12 = v7 + 4;
        v5 |= 8u;
        *(a1 + 48) = v16;
        goto LABEL_22;
      }

      goto LABEL_33;
    }

    if (v11 != 4)
    {
      if (v11 == 5 && v8 == 45)
      {
        v13 = *v7;
        v12 = v7 + 4;
        v5 |= 0x10u;
        *(a1 + 52) = v13;
LABEL_22:
        v30 = v12;
        goto LABEL_40;
      }

      goto LABEL_33;
    }

    if (v8 != 32)
    {
      goto LABEL_33;
    }

    v5 |= 4u;
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
      v30 = v18;
      *(a1 + 40) = v17;
      goto LABEL_40;
    }

    v26 = sub_19587DC(v7, v17);
    v30 = v26;
    *(a1 + 40) = v27;
    if (!v26)
    {
      goto LABEL_49;
    }

LABEL_40:
    if (sub_195ADC0(a3, &v30, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_33;
    }

    v5 |= 1u;
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
      v30 = v21;
      *(a1 + 24) = v20;
      goto LABEL_40;
    }

    v28 = sub_19587DC(v7, v20);
    v30 = v28;
    *(a1 + 24) = v29;
    if (!v28)
    {
      goto LABEL_49;
    }

    goto LABEL_40;
  }

  if (v11 == 2 && v8 == 17)
  {
    v15 = *v7;
    v12 = v7 + 8;
    v5 |= 2u;
    *(a1 + 32) = v15;
    goto LABEL_22;
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
      v7 = v30;
    }

    v30 = sub_1952690(v8, v25, v7, a3);
    if (!v30)
    {
      goto LABEL_49;
    }

    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_49:
  v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

char *sub_176A624(uint64_t a1, char *__dst, _DWORD *a3)
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

  if ((v5 & 2) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_17:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v13 = *(a1 + 48);
    *v6 = 29;
    *(v6 + 1) = v13;
    v6 += 5;
    if ((v5 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v12 = *(a1 + 32);
  *v6 = 17;
  *(v6 + 1) = v12;
  v6 += 9;
  if ((v5 & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  if ((v5 & 4) == 0)
  {
LABEL_13:
    v11 = v6;
    goto LABEL_27;
  }

LABEL_20:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v14 = *(a1 + 40);
  *v6 = 32;
  v6[1] = v14;
  if (v14 > 0x7F)
  {
    v6[1] = v14 | 0x80;
    v15 = v14 >> 7;
    v6[2] = v14 >> 7;
    v11 = v6 + 3;
    if (v14 >= 0x4000)
    {
      LOBYTE(v6) = v6[2];
      do
      {
        *(v11 - 1) = v6 | 0x80;
        v6 = (v15 >> 7);
        *v11++ = v15 >> 7;
        v16 = v15 >> 14;
        v15 >>= 7;
      }

      while (v16);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

LABEL_27:
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v17 = *(a1 + 52);
    *v11 = 45;
    *(v11 + 1) = v17;
    v11 += 5;
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

unint64_t sub_176A884(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) != 0)
  {
    if (v1)
    {
      v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v1 & 8) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 0x10) != 0)
    {
      v3 = v2 + 5;
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

std::string *sub_176A93C(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_9;
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

      goto LABEL_13;
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

LABEL_14:
    LODWORD(result[2].__r_.__value_.__l.__data_) = *(a2 + 48);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  result[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
  if ((v2 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    HIDWORD(result[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
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

uint64_t sub_176A9D8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2708738;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

double sub_176AA54(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_27087B8;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  return result;
}

void *sub_176AAD4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2708838;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  return result;
}

uint64_t sub_176AB5C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_27088B8;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_176ABFC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_2708938;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = a1;
  *(v2 + 40) = a1;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = a1;
  result = 0.0;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  return result;
}

void *sub_176ACB8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_27089B8;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

void *sub_176AD3C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2708A38;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_176ADB8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_2708AB8;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

void sub_176B2A0(void *a1)
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
          sub_17653F4(*v3);
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

void sub_176B324(void *a1)
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
          sub_147A260(*v3);
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

uint64_t *sub_176B3A8(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_17671E4(v9);
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
      result = sub_12E6D64(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_176B424(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      sub_14BC9E8(v9);
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
      sub_176B4A0(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_176B51C(void *a1)
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
          sub_176A2F0(*v3);
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

void sub_176B5A0(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
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
      sub_176ADB8(v9);
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
      sub_176B61C(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_176B664()
{
  dword_278E7B0 = 1000;
  qword_278E7B8 = &off_27815A0;
  sub_194F72C(&off_276FCC8, 1000, 11, 0, 0, &off_27815A0);
  dword_278E7C0 = 1000;
  qword_278E7C8 = &off_27815C0;

  sub_194F72C(&off_276FD30, 1000, 11, 0, 0, &off_27815C0);
}

uint64_t sub_176B6F8()
{
  qword_27DD318 = "GUIDE_SUMMARY_CELL_WITH_COVER_PHOTOGUIDE_SUMMARY_CELL_WITH_THUMBNAIL";
  unk_27DD320 = 35;
  dword_27DD328 = 1;
  qword_27DD330 = "GUIDE_SUMMARY_CELL_WITH_THUMBNAIL";
  unk_27DD338 = 33;
  dword_27DD340 = 0;
  qword_27DD348 = "TARGETCHARTYPE_ALPHABETTARGETCHARTYPE_ANYTARGETCHARTYPE_NUMERIC";
  unk_27DD350 = 23;
  dword_27DD358 = 2;
  qword_27DD360 = "TARGETCHARTYPE_ANYTARGETCHARTYPE_NUMERIC";
  unk_27DD368 = 18;
  dword_27DD370 = 1;
  qword_27DD378 = "TARGETCHARTYPE_NUMERIC";
  unk_27DD380 = 22;
  dword_27DD388 = 3;
  qword_27DD390 = "FRIDAYMONDAYSATURDAYSUNDAYTHURSDAYTUESDAYWEDNESDAY";
  *algn_27DD398 = 6;
  dword_27DD3A0 = 6;
  qword_27DD3A8 = "MONDAYSATURDAYSUNDAYTHURSDAYTUESDAYWEDNESDAY";
  unk_27DD3B0 = 6;
  dword_27DD3B8 = 2;
  qword_27DD3C0 = "SATURDAYSUNDAYTHURSDAYTUESDAYWEDNESDAY";
  unk_27DD3C8 = 8;
  dword_27DD3D0 = 7;
  qword_27DD3D8 = "SUNDAYTHURSDAYTUESDAYWEDNESDAY";
  unk_27DD3E0 = 6;
  dword_27DD3E8 = 1;
  qword_27DD3F0 = "THURSDAYTUESDAYWEDNESDAY";
  unk_27DD3F8 = 8;
  dword_27DD400 = 5;
  qword_27DD408 = "TUESDAYWEDNESDAY";
  unk_27DD410 = 7;
  dword_27DD418 = 3;
  qword_27DD420 = "WEDNESDAY";
  unk_27DD428 = 9;
  dword_27DD430 = 4;
  qword_27DD438 = "FILLTYPE_ALPHABETFILLTYPE_ALPHABET_OR_NUMERICFILLTYPE_NUMERIC";
  unk_27DD440 = 17;
  dword_27DD448 = 2;
  qword_27DD450 = "FILLTYPE_ALPHABET_OR_NUMERICFILLTYPE_NUMERIC";
  unk_27DD458 = 28;
  dword_27DD460 = 1;
  qword_27DD468 = "FILLTYPE_NUMERIC";
  unk_27DD470 = 16;
  dword_27DD478 = 3;
  qword_27DD480 = "LIST_TYPE_ACLIST_TYPE_BROWSE_CATEGORY_SEARCHLIST_TYPE_DIRECTIONS_NAV_FROMLIST_TYPE_DIRECTIONS_NAV_TOLIST_TYPE_DIRECTIONS_NO_TYPINGLIST_TYPE_FAVORITESLIST_TYPE_NORMAL_SEARCHLIST_TYPE_NO_TYPINGLIST_TYPE_POPULAR_NEARBYLIST_TYPE_SEARCH_ALONG_ROUTELIST_TYPE_SIRI_DISAMBIGUATIONLIST_TYPE_SIRI_SEARCHLIST_TYPE_UNKNOWN";
  *algn_27DD488 = 12;
  dword_27DD490 = 4;
  qword_27DD498 = "LIST_TYPE_BROWSE_CATEGORY_SEARCHLIST_TYPE_DIRECTIONS_NAV_FROMLIST_TYPE_DIRECTIONS_NAV_TOLIST_TYPE_DIRECTIONS_NO_TYPINGLIST_TYPE_FAVORITESLIST_TYPE_NORMAL_SEARCHLIST_TYPE_NO_TYPINGLIST_TYPE_POPULAR_NEARBYLIST_TYPE_SEARCH_ALONG_ROUTELIST_TYPE_SIRI_DISAMBIGUATIONLIST_TYPE_SIRI_SEARCHLIST_TYPE_UNKNOWN";
  unk_27DD4A0 = 32;
  dword_27DD4A8 = 3;
  qword_27DD4B0 = "LIST_TYPE_DIRECTIONS_NAV_FROMLIST_TYPE_DIRECTIONS_NAV_TOLIST_TYPE_DIRECTIONS_NO_TYPINGLIST_TYPE_FAVORITESLIST_TYPE_NORMAL_SEARCHLIST_TYPE_NO_TYPINGLIST_TYPE_POPULAR_NEARBYLIST_TYPE_SEARCH_ALONG_ROUTELIST_TYPE_SIRI_DISAMBIGUATIONLIST_TYPE_SIRI_SEARCHLIST_TYPE_UNKNOWN";
  unk_27DD4B8 = 29;
  dword_27DD4C0 = 11;
  qword_27DD4C8 = "LIST_TYPE_DIRECTIONS_NAV_TOLIST_TYPE_DIRECTIONS_NO_TYPINGLIST_TYPE_FAVORITESLIST_TYPE_NORMAL_SEARCHLIST_TYPE_NO_TYPINGLIST_TYPE_POPULAR_NEARBYLIST_TYPE_SEARCH_ALONG_ROUTELIST_TYPE_SIRI_DISAMBIGUATIONLIST_TYPE_SIRI_SEARCHLIST_TYPE_UNKNOWN";
  unk_27DD4D0 = 27;
  dword_27DD4D8 = 12;
  qword_27DD4E0 = "LIST_TYPE_DIRECTIONS_NO_TYPINGLIST_TYPE_FAVORITESLIST_TYPE_NORMAL_SEARCHLIST_TYPE_NO_TYPINGLIST_TYPE_POPULAR_NEARBYLIST_TYPE_SEARCH_ALONG_ROUTELIST_TYPE_SIRI_DISAMBIGUATIONLIST_TYPE_SIRI_SEARCHLIST_TYPE_UNKNOWN";
  unk_27DD4E8 = 30;
  dword_27DD4F0 = 10;
  qword_27DD4F8 = "LIST_TYPE_FAVORITESLIST_TYPE_NORMAL_SEARCHLIST_TYPE_NO_TYPINGLIST_TYPE_POPULAR_NEARBYLIST_TYPE_SEARCH_ALONG_ROUTELIST_TYPE_SIRI_DISAMBIGUATIONLIST_TYPE_SIRI_SEARCHLIST_TYPE_UNKNOWN";
  unk_27DD500 = 19;
  dword_27DD508 = 7;
  qword_27DD510 = "LIST_TYPE_NORMAL_SEARCHLIST_TYPE_NO_TYPINGLIST_TYPE_POPULAR_NEARBYLIST_TYPE_SEARCH_ALONG_ROUTELIST_TYPE_SIRI_DISAMBIGUATIONLIST_TYPE_SIRI_SEARCHLIST_TYPE_UNKNOWN";
  unk_27DD518 = 23;
  dword_27DD520 = 5;
  qword_27DD528 = "LIST_TYPE_NO_TYPINGLIST_TYPE_POPULAR_NEARBYLIST_TYPE_SEARCH_ALONG_ROUTELIST_TYPE_SIRI_DISAMBIGUATIONLIST_TYPE_SIRI_SEARCHLIST_TYPE_UNKNOWN";
  unk_27DD530 = 19;
  dword_27DD538 = 1;
  qword_27DD540 = "LIST_TYPE_POPULAR_NEARBYLIST_TYPE_SEARCH_ALONG_ROUTELIST_TYPE_SIRI_DISAMBIGUATIONLIST_TYPE_SIRI_SEARCHLIST_TYPE_UNKNOWN";
  unk_27DD548 = 24;
  dword_27DD550 = 2;
  qword_27DD558 = "LIST_TYPE_SEARCH_ALONG_ROUTELIST_TYPE_SIRI_DISAMBIGUATIONLIST_TYPE_SIRI_SEARCHLIST_TYPE_UNKNOWN";
  unk_27DD560 = 28;
  dword_27DD568 = 6;
  qword_27DD570 = "LIST_TYPE_SIRI_DISAMBIGUATIONLIST_TYPE_SIRI_SEARCHLIST_TYPE_UNKNOWN";
  unk_27DD578 = 29;
  dword_27DD580 = 9;
  qword_27DD588 = "LIST_TYPE_SIRI_SEARCHLIST_TYPE_UNKNOWN";
  unk_27DD590 = 21;
  dword_27DD598 = 8;
  qword_27DD5A0 = "LIST_TYPE_UNKNOWN";
  unk_27DD5A8 = 17;
  dword_27DD5B0 = 0;
  qword_27DD5B8 = "RESULT_TYPE_CLIENTRESULT_TYPE_PROACTIVERESULT_TYPE_SERVERRESULT_TYPE_UNKNOWN";
  unk_27DD5C0 = 18;
  dword_27DD5C8 = 2;
  qword_27DD5D0 = "RESULT_TYPE_PROACTIVERESULT_TYPE_SERVERRESULT_TYPE_UNKNOWN";
  unk_27DD5D8 = 21;
  dword_27DD5E0 = 3;
  qword_27DD5E8 = "RESULT_TYPE_SERVERRESULT_TYPE_UNKNOWN";
  unk_27DD5F0 = 18;
  dword_27DD5F8 = 1;
  qword_27DD600 = "RESULT_TYPE_UNKNOWN";
  unk_27DD608 = 19;
  dword_27DD610 = 0;
  qword_27DD618 = "FAILURELOCATION_NO_SHIFTLOCATION_SHIFT";
  unk_27DD620 = 7;
  dword_27DD628 = 2;
  qword_27DD630 = "LOCATION_NO_SHIFTLOCATION_SHIFT";
  unk_27DD638 = 17;
  dword_27DD640 = 1;
  qword_27DD648 = "LOCATION_SHIFT";
  unk_27DD650 = 14;
  dword_27DD658 = 0;
  qword_27DD678 = "AC_TYPE_CLIENT_CONTACTSAC_TYPE_CLIENT_CORERECENT_MAILAC_TYPE_CLIENT_CORERECENT_MESSAGESAC_TYPE_CLIENT_COREROUTINEAC_TYPE_CLIENT_FAVORITEAC_TYPE_CLIENT_MAPSRECENT_DIRECTIONSAC_TYPE_CLIENT_MAPSRECENT_PLACEAC_TYPE_CLIENT_MAPSRECENT_QUERYAC_TYPE_SERVERAC_TYPE_UNKNOWN";
  qword_27DD690 = "AC_TYPE_CLIENT_CORERECENT_MAILAC_TYPE_CLIENT_CORERECENT_MESSAGESAC_TYPE_CLIENT_COREROUTINEAC_TYPE_CLIENT_FAVORITEAC_TYPE_CLIENT_MAPSRECENT_DIRECTIONSAC_TYPE_CLIENT_MAPSRECENT_PLACEAC_TYPE_CLIENT_MAPSRECENT_QUERYAC_TYPE_SERVERAC_TYPE_UNKNOWN";
  qword_27DD6A8 = "AC_TYPE_CLIENT_CORERECENT_MESSAGESAC_TYPE_CLIENT_COREROUTINEAC_TYPE_CLIENT_FAVORITEAC_TYPE_CLIENT_MAPSRECENT_DIRECTIONSAC_TYPE_CLIENT_MAPSRECENT_PLACEAC_TYPE_CLIENT_MAPSRECENT_QUERYAC_TYPE_SERVERAC_TYPE_UNKNOWN";
  qword_27DD6C0 = "AC_TYPE_CLIENT_COREROUTINEAC_TYPE_CLIENT_FAVORITEAC_TYPE_CLIENT_MAPSRECENT_DIRECTIONSAC_TYPE_CLIENT_MAPSRECENT_PLACEAC_TYPE_CLIENT_MAPSRECENT_QUERYAC_TYPE_SERVERAC_TYPE_UNKNOWN";
  qword_27DD6D8 = "AC_TYPE_CLIENT_FAVORITEAC_TYPE_CLIENT_MAPSRECENT_DIRECTIONSAC_TYPE_CLIENT_MAPSRECENT_PLACEAC_TYPE_CLIENT_MAPSRECENT_QUERYAC_TYPE_SERVERAC_TYPE_UNKNOWN";
  qword_27DD6F0 = "AC_TYPE_CLIENT_MAPSRECENT_DIRECTIONSAC_TYPE_CLIENT_MAPSRECENT_PLACEAC_TYPE_CLIENT_MAPSRECENT_QUERYAC_TYPE_SERVERAC_TYPE_UNKNOWN";
  qword_27DD708 = "AC_TYPE_CLIENT_MAPSRECENT_PLACEAC_TYPE_CLIENT_MAPSRECENT_QUERYAC_TYPE_SERVERAC_TYPE_UNKNOWN";
  qword_27DD720 = "AC_TYPE_CLIENT_MAPSRECENT_QUERYAC_TYPE_SERVERAC_TYPE_UNKNOWN";
  qword_27DD738 = "AC_TYPE_SERVERAC_TYPE_UNKNOWN";
  qword_27DD750 = "AC_TYPE_UNKNOWN";
  qword_27DD660 = "AC_TYPE_CLIENTAC_TYPE_CLIENT_CONTACTSAC_TYPE_CLIENT_CORERECENT_MAILAC_TYPE_CLIENT_CORERECENT_MESSAGESAC_TYPE_CLIENT_COREROUTINEAC_TYPE_CLIENT_FAVORITEAC_TYPE_CLIENT_MAPSRECENT_DIRECTIONSAC_TYPE_CLIENT_MAPSRECENT_PLACEAC_TYPE_CLIENT_MAPSRECENT_QUERYAC_TYPE_SERVERAC_TYPE_UNKNOWN";
  *algn_27DD668 = 14;
  dword_27DD670 = 10;
  qword_27DD680 = 23;
  dword_27DD688 = 7;
  qword_27DD698 = 30;
  dword_27DD6A0 = 3;
  qword_27DD6B0 = 34;
  dword_27DD6B8 = 2;
  qword_27DD6C8 = 26;
  dword_27DD6D0 = 1;
  qword_27DD6E0 = 23;
  dword_27DD6E8 = 8;
  qword_27DD6F8 = 36;
  dword_27DD700 = 5;
  qword_27DD710 = 31;
  dword_27DD718 = 6;
  qword_27DD728 = 31;
  dword_27DD730 = 4;
  qword_27DD740 = 14;
  dword_27DD748 = 9;
  qword_27DD758 = 15;
  dword_27DD760 = 0;
  qword_27DD780 = "SEARCH_FIELD_TYPE_DIRECTIONS_STARTSEARCH_FIELD_TYPE_NORMALSEARCH_FIELD_TYPE_UNKNOWN";
  unk_27DD788 = 34;
  qword_27DD798 = "SEARCH_FIELD_TYPE_NORMALSEARCH_FIELD_TYPE_UNKNOWN";
  unk_27DD7A0 = 24;
  qword_27DD7B0 = "SEARCH_FIELD_TYPE_UNKNOWN";
  unk_27DD7B8 = 25;
  qword_27DD768 = "SEARCH_FIELD_TYPE_DIRECTIONS_ENDSEARCH_FIELD_TYPE_DIRECTIONS_STARTSEARCH_FIELD_TYPE_NORMALSEARCH_FIELD_TYPE_UNKNOWN";
  unk_27DD770 = 32;
  dword_27DD778 = 3;
  dword_27DD790 = 2;
  dword_27DD7A8 = 1;
  dword_27DD7C0 = 0;
  qword_27DD7E0 = "TILE_LOADED_COVERAGE_CHANGEDTILE_SET_STATE_TYPE_UNKNOWN";
  unk_27DD7E8 = 28;
  qword_27DD7F8 = "TILE_SET_STATE_TYPE_UNKNOWN";
  unk_27DD800 = 27;
  qword_27DD7C8 = "TILE_GRID_COVERAGE_CHANGEDTILE_LOADED_COVERAGE_CHANGEDTILE_SET_STATE_TYPE_UNKNOWN";
  unk_27DD7D0 = 26;
  dword_27DD7D8 = 1;
  dword_27DD7F0 = 2;
  dword_27DD808 = 0;
  qword_27DD828 = "ADDRESS_CORRECTION_UPDATEBATCH_REVGEODIRECTIONSFORWARD_GEOCODERLOCATION_SHIFTLOG_MESSAGE_USAGEMAP_MATCHNETWORK_SERVICE_UNKNOWNPLACE_DATARESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSTILETRAFFIC_ETA";
  qword_27DD840 = "BATCH_REVGEODIRECTIONSFORWARD_GEOCODERLOCATION_SHIFTLOG_MESSAGE_USAGEMAP_MATCHNETWORK_SERVICE_UNKNOWNPLACE_DATARESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSTILETRAFFIC_ETA";
  qword_27DD858 = "DIRECTIONSFORWARD_GEOCODERLOCATION_SHIFTLOG_MESSAGE_USAGEMAP_MATCHNETWORK_SERVICE_UNKNOWNPLACE_DATARESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSTILETRAFFIC_ETA";
  qword_27DD870 = "FORWARD_GEOCODERLOCATION_SHIFTLOG_MESSAGE_USAGEMAP_MATCHNETWORK_SERVICE_UNKNOWNPLACE_DATARESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSTILETRAFFIC_ETA";
  qword_27DD888 = "LOCATION_SHIFTLOG_MESSAGE_USAGEMAP_MATCHNETWORK_SERVICE_UNKNOWNPLACE_DATARESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSTILETRAFFIC_ETA";
  qword_27DD8A0 = "LOG_MESSAGE_USAGEMAP_MATCHNETWORK_SERVICE_UNKNOWNPLACE_DATARESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSTILETRAFFIC_ETA";
  qword_27DD8B8 = "MAP_MATCHNETWORK_SERVICE_UNKNOWNPLACE_DATARESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSTILETRAFFIC_ETA";
  qword_27DD8D0 = "NETWORK_SERVICE_UNKNOWNPLACE_DATARESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSTILETRAFFIC_ETA";
  qword_27DD8E8 = "PLACE_DATARESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSTILETRAFFIC_ETA";
  qword_27DD900 = "RESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSTILETRAFFIC_ETA";
  qword_27DD918 = "REVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSTILETRAFFIC_ETA";
  qword_27DD930 = "SEARCHSIMPLE_ETASUGGESTIONSTILETRAFFIC_ETA";
  qword_27DD948 = "SIMPLE_ETASUGGESTIONSTILETRAFFIC_ETA";
  qword_27DD960 = "SUGGESTIONSTILETRAFFIC_ETA";
  qword_27DD978 = "TILETRAFFIC_ETA";
  qword_27DD990 = "TRAFFIC_ETA";
  qword_27DD810 = "ADDRESS_CORRECTION_INITADDRESS_CORRECTION_UPDATEBATCH_REVGEODIRECTIONSFORWARD_GEOCODERLOCATION_SHIFTLOG_MESSAGE_USAGEMAP_MATCHNETWORK_SERVICE_UNKNOWNPLACE_DATARESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSTILETRAFFIC_ETA";
  *algn_27DD818 = 23;
  dword_27DD820 = 11;
  qword_27DD830 = 25;
  dword_27DD838 = 12;
  qword_27DD848 = 12;
  dword_27DD850 = 9;
  qword_27DD860 = 10;
  dword_27DD868 = 4;
  qword_27DD878 = 16;
  dword_27DD880 = 2;
  qword_27DD890 = 14;
  dword_27DD898 = 17;
  qword_27DD8A8 = 17;
  dword_27DD8B0 = 16;
  qword_27DD8C0 = 9;
  dword_27DD8C8 = 10;
  qword_27DD8D8 = 23;
  dword_27DD8E0 = 0;
  qword_27DD8F0 = 10;
  dword_27DD8F8 = 13;
  qword_27DD908 = 15;
  dword_27DD910 = 14;
  qword_27DD920 = 16;
  dword_27DD928 = 1;
  qword_27DD938 = 6;
  dword_27DD940 = 3;
  qword_27DD950 = 10;
  dword_27DD958 = 7;
  qword_27DD968 = 11;
  dword_27DD970 = 8;
  qword_27DD980 = 4;
  dword_27DD988 = 5;
  qword_27DD998 = 11;
  dword_27DD9A0 = 6;
  qword_27DD9C0 = "FORCE_PURGE_METRICNETWORK_METRICPURGE_METRICUNKNOWN_METRIC_TYPE";
  qword_27DD9D8 = "NETWORK_METRICPURGE_METRICUNKNOWN_METRIC_TYPE";
  unk_27DD9E0 = 14;
  qword_27DD9F0 = "PURGE_METRICUNKNOWN_METRIC_TYPE";
  unk_27DD9F8 = 12;
  qword_27DDA08 = "UNKNOWN_METRIC_TYPE";
  unk_27DDA10 = 19;
  qword_27DD9A8 = "FAILED_MSG_METRICFORCE_PURGE_METRICNETWORK_METRICPURGE_METRICUNKNOWN_METRIC_TYPE";
  unk_27DD9B0 = 17;
  dword_27DD9B8 = 4;
  qword_27DD9C8 = 18;
  dword_27DD9D0 = 3;
  dword_27DD9E8 = 1;
  dword_27DDA00 = 2;
  dword_27DDA18 = 0;
  qword_27DDA38 = "FAILED_STATESUCCESS_STATEUNKNOWN_METRIC_STATE";
  unk_27DDA40 = 12;
  qword_27DDA50 = "SUCCESS_STATEUNKNOWN_METRIC_STATE";
  unk_27DDA58 = 13;
  qword_27DDA68 = "UNKNOWN_METRIC_STATE";
  unk_27DDA70 = 20;
  qword_27DDA20 = "CANCELLED_STATEFAILED_STATESUCCESS_STATEUNKNOWN_METRIC_STATE";
  *algn_27DDA28 = 15;
  dword_27DDA30 = 4;
  dword_27DDA48 = 3;
  dword_27DDA60 = 2;
  dword_27DDA78 = 0;
  qword_27DDA98 = "TILE_CACHEUNKNOWN_CACHE_TYPE";
  unk_27DDAA0 = 10;
  qword_27DDAB0 = "UNKNOWN_CACHE_TYPE";
  unk_27DDAB8 = 18;
  qword_27DDA80 = "LOCATION_SHIFT_CACHETILE_CACHEUNKNOWN_CACHE_TYPE";
  *algn_27DDA88 = 20;
  dword_27DDA90 = 2;
  dword_27DDAA8 = 1;
  dword_27DDAC0 = 0;
  qword_27DDAE0 = "DID_NOT_DEPARTEARLIER_THAN_22MEARLIER_THAN_7MLATER_THAN_22MLATER_THAN_7MON_TIMETIME_TO_LEAVE_BUCKET_UNKNOWN";
  qword_27DDAF8 = "EARLIER_THAN_22MEARLIER_THAN_7MLATER_THAN_22MLATER_THAN_7MON_TIMETIME_TO_LEAVE_BUCKET_UNKNOWN";
  unk_27DDB00 = 16;
  qword_27DDB10 = "EARLIER_THAN_7MLATER_THAN_22MLATER_THAN_7MON_TIMETIME_TO_LEAVE_BUCKET_UNKNOWN";
  unk_27DDB18 = 15;
  qword_27DDB28 = "LATER_THAN_22MLATER_THAN_7MON_TIMETIME_TO_LEAVE_BUCKET_UNKNOWN";
  qword_27DDB40 = "LATER_THAN_7MON_TIMETIME_TO_LEAVE_BUCKET_UNKNOWN";
  unk_27DDB48 = 13;
  qword_27DDB58 = "ON_TIMETIME_TO_LEAVE_BUCKET_UNKNOWN";
  unk_27DDB60 = 7;
  qword_27DDB70 = "TIME_TO_LEAVE_BUCKET_UNKNOWN";
  unk_27DDB78 = 28;
  qword_27DDAC8 = "DID_NOT_ARRIVEDID_NOT_DEPARTEARLIER_THAN_22MEARLIER_THAN_7MLATER_THAN_22MLATER_THAN_7MON_TIMETIME_TO_LEAVE_BUCKET_UNKNOWN";
  qword_27DDAD0 = 14;
  dword_27DDAD8 = 6;
  qword_27DDAE8 = 14;
  dword_27DDAF0 = 7;
  dword_27DDB08 = 1;
  dword_27DDB20 = 2;
  qword_27DDB30 = 14;
  dword_27DDB38 = 5;
  dword_27DDB50 = 4;
  dword_27DDB68 = 3;
  dword_27DDB80 = 0;
  qword_27DDBA0 = "EARLY_SHOWNON_TIME_SHOWNTTL_UI_NOTIFICATION_NONE_SHOWN";
  qword_27DDBB8 = "ON_TIME_SHOWNTTL_UI_NOTIFICATION_NONE_SHOWN";
  qword_27DDBD0 = "TTL_UI_NOTIFICATION_NONE_SHOWN";
  qword_27DE370 = 34;
  qword_27DF280 = "PROTOCOL_TYPE_HTTP_2_TLSPROTOCOL_TYPE_OTHERPROTOCOL_TYPE_SPDY_1PROTOCOL_TYPE_SPDY_2PROTOCOL_TYPE_SPDY_3";
  dword_27DF2C0 = 4;
  qword_27DF2C8 = "PROTOCOL_TYPE_SPDY_2PROTOCOL_TYPE_SPDY_3";
  unk_27DF2D0 = 20;
  dword_27DF2D8 = 5;
  qword_27DF2B0 = "PROTOCOL_TYPE_SPDY_1PROTOCOL_TYPE_SPDY_2PROTOCOL_TYPE_SPDY_3";
  unk_27DF2B8 = 20;
  qword_27DF298 = "PROTOCOL_TYPE_OTHERPROTOCOL_TYPE_SPDY_1PROTOCOL_TYPE_SPDY_2PROTOCOL_TYPE_SPDY_3";
  unk_27DF2A0 = 19;
  dword_27DF2A8 = 0;
  dword_27DF260 = 1;
  qword_27DF268 = "PROTOCOL_TYPE_HTTP_2_TCPPROTOCOL_TYPE_HTTP_2_TLSPROTOCOL_TYPE_OTHERPROTOCOL_TYPE_SPDY_1PROTOCOL_TYPE_SPDY_2PROTOCOL_TYPE_SPDY_3";
  unk_27DF270 = 24;
  qword_27DF288 = 24;
  dword_27DF290 = 2;
  dword_27DF278 = 3;
  qword_27DF238 = "NONE";
  unk_27DF240 = 4;
  dword_27DF248 = 0;
  qword_27DF250 = "PROTOCOL_TYPE_HTTP_1_1PROTOCOL_TYPE_HTTP_2_TCPPROTOCOL_TYPE_HTTP_2_TLSPROTOCOL_TYPE_OTHERPROTOCOL_TYPE_SPDY_1PROTOCOL_TYPE_SPDY_2PROTOCOL_TYPE_SPDY_3";
  *algn_27DF258 = 22;
  qword_27DF220 = "INTERACTIVENONE";
  unk_27DF228 = 11;
  qword_27DF208 = "HANDOVERINTERACTIVENONE";
  unk_27DF210 = 8;
  dword_27DF230 = 2;
  dword_27DF218 = 1;
  qword_27DEF68 = "ADDRESS_CORRECTION_INITADDRESS_CORRECTION_UPDATEBATCH_REVGEOBATCH_TRAFFIC_PROBEDIRECTIONSFORWARD_GEOCODERINCIDENTJUNCTION_VIEWLOCATION_SHIFTLOG_MESSAGE_USAGEMANIFESTMAP_MATCHMUNIN_RESOURCENETWORK_DEFAULTSNETWORK_SERVICE_UNKNOWNPLACE_DATAREALTIME_TRAFFIC_PROBERESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSSYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  qword_27DF1F0 = "AGGREGATEHANDOVERINTERACTIVENONE";
  *algn_27DF1F8 = 9;
  dword_27DF200 = 3;
  dword_27DF1E8 = 27;
  qword_27DF1C0 = "WIFI_QUALITYWIFI_TILE";
  qword_27DF1D8 = "WIFI_TILE";
  qword_27DF1C8 = 12;
  dword_27DF1D0 = 23;
  qword_27DF1E0 = 9;
  qword_27DF1A8 = "TRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  dword_27DF1A0 = 5;
  qword_27DF1B0 = 11;
  dword_27DF1B8 = 6;
  qword_27DF178 = "SYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  qword_27DF190 = "TILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  qword_27DF180 = 4;
  dword_27DF188 = 22;
  qword_27DF198 = 4;
  qword_27DF160 = "SUGGESTIONSSYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  dword_27DF158 = 7;
  qword_27DF168 = 11;
  dword_27DF170 = 8;
  qword_27DF130 = "SEARCHSIMPLE_ETASUGGESTIONSSYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  unk_27DF138 = 6;
  dword_27DF140 = 3;
  qword_27DF148 = "SIMPLE_ETASUGGESTIONSSYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  unk_27DF150 = 10;
  dword_27DF110 = 14;
  qword_27DF118 = "REVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSSYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  unk_27DF120 = 16;
  dword_27DF128 = 1;
  qword_27DF100 = "RESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSSYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  unk_27DF108 = 15;
  qword_27DF0E8 = "REALTIME_TRAFFIC_PROBERESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSSYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  unk_27DF0F0 = 22;
  dword_27DF0F8 = 20;
  qword_27DF0D0 = "PLACE_DATAREALTIME_TRAFFIC_PROBERESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSSYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  unk_27DF0D8 = 10;
  dword_27DF0C8 = 0;
  dword_27DF0E0 = 13;
  qword_27DF0B8 = "NETWORK_SERVICE_UNKNOWNPLACE_DATAREALTIME_TRAFFIC_PROBERESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSSYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  unk_27DF0C0 = 23;
  qword_27DF0A0 = "NETWORK_DEFAULTSNETWORK_SERVICE_UNKNOWNPLACE_DATAREALTIME_TRAFFIC_PROBERESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSSYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  unk_27DF0A8 = 16;
  dword_27DF0B0 = 24;
  qword_27DF088 = "MUNIN_RESOURCENETWORK_DEFAULTSNETWORK_SERVICE_UNKNOWNPLACE_DATAREALTIME_TRAFFIC_PROBERESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSSYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  unk_27DF090 = 14;
  dword_27DF080 = 10;
  dword_27DF098 = 25;
  qword_27DF070 = "MAP_MATCHMUNIN_RESOURCENETWORK_DEFAULTSNETWORK_SERVICE_UNKNOWNPLACE_DATAREALTIME_TRAFFIC_PROBERESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSSYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  unk_27DF078 = 9;
  qword_27DF058 = "MANIFESTMAP_MATCHMUNIN_RESOURCENETWORK_DEFAULTSNETWORK_SERVICE_UNKNOWNPLACE_DATAREALTIME_TRAFFIC_PROBERESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSSYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  unk_27DF060 = 8;
  dword_27DF068 = 19;
  dword_27DF038 = 17;
  qword_27DF040 = "LOG_MESSAGE_USAGEMANIFESTMAP_MATCHMUNIN_RESOURCENETWORK_DEFAULTSNETWORK_SERVICE_UNKNOWNPLACE_DATAREALTIME_TRAFFIC_PROBERESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSSYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  unk_27DF048 = 17;
  dword_27DF050 = 16;
  qword_27DF028 = "LOCATION_SHIFTLOG_MESSAGE_USAGEMANIFESTMAP_MATCHMUNIN_RESOURCENETWORK_DEFAULTSNETWORK_SERVICE_UNKNOWNPLACE_DATAREALTIME_TRAFFIC_PROBERESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSSYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  unk_27DF030 = 14;
  qword_27DF010 = "JUNCTION_VIEWLOCATION_SHIFTLOG_MESSAGE_USAGEMANIFESTMAP_MATCHMUNIN_RESOURCENETWORK_DEFAULTSNETWORK_SERVICE_UNKNOWNPLACE_DATAREALTIME_TRAFFIC_PROBERESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSSYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  unk_27DF018 = 13;
  dword_27DF020 = 26;
  qword_27DEFF8 = "INCIDENTJUNCTION_VIEWLOCATION_SHIFTLOG_MESSAGE_USAGEMANIFESTMAP_MATCHMUNIN_RESOURCENETWORK_DEFAULTSNETWORK_SERVICE_UNKNOWNPLACE_DATAREALTIME_TRAFFIC_PROBERESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSSYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  unk_27DF000 = 8;
  dword_27DEFF0 = 2;
  dword_27DF008 = 28;
  qword_27DEFE0 = "FORWARD_GEOCODERINCIDENTJUNCTION_VIEWLOCATION_SHIFTLOG_MESSAGE_USAGEMANIFESTMAP_MATCHMUNIN_RESOURCENETWORK_DEFAULTSNETWORK_SERVICE_UNKNOWNPLACE_DATAREALTIME_TRAFFIC_PROBERESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSSYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  unk_27DEFE8 = 16;
  qword_27DEFC8 = "DIRECTIONSFORWARD_GEOCODERINCIDENTJUNCTION_VIEWLOCATION_SHIFTLOG_MESSAGE_USAGEMANIFESTMAP_MATCHMUNIN_RESOURCENETWORK_DEFAULTSNETWORK_SERVICE_UNKNOWNPLACE_DATAREALTIME_TRAFFIC_PROBERESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSSYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  unk_27DEFD0 = 10;
  dword_27DEFD8 = 4;
  qword_27DEFB0 = "BATCH_TRAFFIC_PROBEDIRECTIONSFORWARD_GEOCODERINCIDENTJUNCTION_VIEWLOCATION_SHIFTLOG_MESSAGE_USAGEMANIFESTMAP_MATCHMUNIN_RESOURCENETWORK_DEFAULTSNETWORK_SERVICE_UNKNOWNPLACE_DATAREALTIME_TRAFFIC_PROBERESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSSYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  unk_27DEFB8 = 19;
  dword_27DEFA8 = 9;
  dword_27DEFC0 = 21;
  qword_27DEF80 = "ADDRESS_CORRECTION_UPDATEBATCH_REVGEOBATCH_TRAFFIC_PROBEDIRECTIONSFORWARD_GEOCODERINCIDENTJUNCTION_VIEWLOCATION_SHIFTLOG_MESSAGE_USAGEMANIFESTMAP_MATCHMUNIN_RESOURCENETWORK_DEFAULTSNETWORK_SERVICE_UNKNOWNPLACE_DATAREALTIME_TRAFFIC_PROBERESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSSYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  unk_27DEF88 = 25;
  dword_27DEF90 = 12;
  qword_27DEF98 = "BATCH_REVGEOBATCH_TRAFFIC_PROBEDIRECTIONSFORWARD_GEOCODERINCIDENTJUNCTION_VIEWLOCATION_SHIFTLOG_MESSAGE_USAGEMANIFESTMAP_MATCHMUNIN_RESOURCENETWORK_DEFAULTSNETWORK_SERVICE_UNKNOWNPLACE_DATAREALTIME_TRAFFIC_PROBERESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSSYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  unk_27DEFA0 = 12;
  qword_27DEF70 = 23;
  dword_27DEF78 = 11;
  qword_27DEF50 = "AB_ASSIGNADDRESS_CORRECTION_INITADDRESS_CORRECTION_UPDATEBATCH_REVGEOBATCH_TRAFFIC_PROBEDIRECTIONSFORWARD_GEOCODERINCIDENTJUNCTION_VIEWLOCATION_SHIFTLOG_MESSAGE_USAGEMANIFESTMAP_MATCHMUNIN_RESOURCENETWORK_DEFAULTSNETWORK_SERVICE_UNKNOWNPLACE_DATAREALTIME_TRAFFIC_PROBERESOURCE_LOADERREVERSE_GEOCODERSEARCHSIMPLE_ETASUGGESTIONSSYNCTILETRAFFIC_ETAWIFI_QUALITYWIFI_TILE";
  *algn_27DEF58 = 9;
  dword_27DEF60 = 18;
  dword_27DEF48 = 0;
  qword_27DEF08 = "TILE_GRID_COVERAGE_CHANGEDTILE_LOADED_COVERAGE_CHANGEDTILE_SET_STATE_TYPE_UNKNOWN";
  qword_27DEF20 = "TILE_LOADED_COVERAGE_CHANGEDTILE_SET_STATE_TYPE_UNKNOWN";
  unk_27DEF28 = 28;
  dword_27DEF30 = 2;
  qword_27DEF38 = "TILE_SET_STATE_TYPE_UNKNOWN";
  unk_27DEF40 = 27;
  qword_27DEF10 = 26;
  dword_27DEF18 = 1;
  qword_27DEEF0 = "RevealedPlaceCardModuleTitleElement_VERIFIED_BADGE";
  unk_27DEEF8 = 50;
  dword_27DEF00 = 3;
  qword_27DEED8 = "RevealedPlaceCardModuleTitleElement_UNKNOWNRevealedPlaceCardModuleTitleElement_VERIFIED_BADGE";
  unk_27DEEE0 = 43;
  dword_27DEEE8 = 0;
  qword_27DEEC0 = "RevealedPlaceCardModuleTitleElement_CUSTOM_LOGORevealedPlaceCardModuleTitleElement_UNKNOWNRevealedPlaceCardModuleTitleElement_VERIFIED_BADGE";
  unk_27DEEC8 = 47;
  qword_27DEEA8 = "RevealedPlaceCardModuleTitleElement_CUSTOM_COVERRevealedPlaceCardModuleTitleElement_CUSTOM_LOGORevealedPlaceCardModuleTitleElement_UNKNOWNRevealedPlaceCardModuleTitleElement_VERIFIED_BADGE";
  unk_27DEEB0 = 48;
  dword_27DEED0 = 2;
  dword_27DEEB8 = 1;
  qword_27DEE78 = "MODULE_BUTTON_TYPE_UNKNOWNMODULE_BUTTON_TYPE_WEBSITE";
  unk_27DEE80 = 26;
  qword_27DEE90 = "MODULE_BUTTON_TYPE_WEBSITE";
  unk_27DEE98 = 26;
  dword_27DEE88 = 0;
  dword_27DEEA0 = 6;
  qword_27DEE60 = "MODULE_BUTTON_TYPE_SHAREMODULE_BUTTON_TYPE_UNKNOWNMODULE_BUTTON_TYPE_WEBSITE";
  unk_27DEE68 = 24;
  dword_27DEE70 = 3;
  qword_27DEDD0 = "MODULE_BUTTON_TYPE_FLYOVERMODULE_BUTTON_TYPE_GROUPMODULE_BUTTON_TYPE_LOCATIONMODULE_BUTTON_TYPE_MESSAGEMODULE_BUTTON_TYPE_QUICK_LINKMODULE_BUTTON_TYPE_REPORT_AN_ISSUEMODULE_BUTTON_TYPE_SHAREMODULE_BUTTON_TYPE_UNKNOWNMODULE_BUTTON_TYPE_WEBSITE";
  qword_27DEE48 = "MODULE_BUTTON_TYPE_REPORT_AN_ISSUEMODULE_BUTTON_TYPE_SHAREMODULE_BUTTON_TYPE_UNKNOWNMODULE_BUTTON_TYPE_WEBSITE";
  unk_27DEE50 = 34;
  dword_27DEE58 = 2;
  qword_27DEE18 = "MODULE_BUTTON_TYPE_MESSAGEMODULE_BUTTON_TYPE_QUICK_LINKMODULE_BUTTON_TYPE_REPORT_AN_ISSUEMODULE_BUTTON_TYPE_SHAREMODULE_BUTTON_TYPE_UNKNOWNMODULE_BUTTON_TYPE_WEBSITE";
  unk_27DEE20 = 26;
  dword_27DEE28 = 5;
  qword_27DEE30 = "MODULE_BUTTON_TYPE_QUICK_LINKMODULE_BUTTON_TYPE_REPORT_AN_ISSUEMODULE_BUTTON_TYPE_SHAREMODULE_BUTTON_TYPE_UNKNOWNMODULE_BUTTON_TYPE_WEBSITE";
  unk_27DEE38 = 29;
  dword_27DEE40 = 7;
  qword_27DEE00 = "MODULE_BUTTON_TYPE_LOCATIONMODULE_BUTTON_TYPE_MESSAGEMODULE_BUTTON_TYPE_QUICK_LINKMODULE_BUTTON_TYPE_REPORT_AN_ISSUEMODULE_BUTTON_TYPE_SHAREMODULE_BUTTON_TYPE_UNKNOWNMODULE_BUTTON_TYPE_WEBSITE";
  unk_27DEE08 = 27;
  dword_27DEE10 = 58;
  qword_27DEDE8 = "MODULE_BUTTON_TYPE_GROUPMODULE_BUTTON_TYPE_LOCATIONMODULE_BUTTON_TYPE_MESSAGEMODULE_BUTTON_TYPE_QUICK_LINKMODULE_BUTTON_TYPE_REPORT_AN_ISSUEMODULE_BUTTON_TYPE_SHAREMODULE_BUTTON_TYPE_UNKNOWNMODULE_BUTTON_TYPE_WEBSITE";
  unk_27DEDF0 = 24;
  dword_27DEDE0 = 10;
  dword_27DEDF8 = 8;
  qword_27DEDB8 = "MODULE_BUTTON_TYPE_FINDMYMODULE_BUTTON_TYPE_FLYOVERMODULE_BUTTON_TYPE_GROUPMODULE_BUTTON_TYPE_LOCATIONMODULE_BUTTON_TYPE_MESSAGEMODULE_BUTTON_TYPE_QUICK_LINKMODULE_BUTTON_TYPE_REPORT_AN_ISSUEMODULE_BUTTON_TYPE_SHAREMODULE_BUTTON_TYPE_UNKNOWNMODULE_BUTTON_TYPE_WEBSITE";
  unk_27DEDC0 = 25;
  dword_27DEDC8 = 57;
  qword_27DEDD8 = 26;
  qword_27DEDA0 = "MODULE_BUTTON_TYPE_DIRECTIONSMODULE_BUTTON_TYPE_FINDMYMODULE_BUTTON_TYPE_FLYOVERMODULE_BUTTON_TYPE_GROUPMODULE_BUTTON_TYPE_LOCATIONMODULE_BUTTON_TYPE_MESSAGEMODULE_BUTTON_TYPE_QUICK_LINKMODULE_BUTTON_TYPE_REPORT_AN_ISSUEMODULE_BUTTON_TYPE_SHAREMODULE_BUTTON_TYPE_UNKNOWNMODULE_BUTTON_TYPE_WEBSITE";
  unk_27DEDA8 = 29;
  qword_27DED88 = "MODULE_BUTTON_TYPE_CLAIM_PLACEMODULE_BUTTON_TYPE_DIRECTIONSMODULE_BUTTON_TYPE_FINDMYMODULE_BUTTON_TYPE_FLYOVERMODULE_BUTTON_TYPE_GROUPMODULE_BUTTON_TYPE_LOCATIONMODULE_BUTTON_TYPE_MESSAGEMODULE_BUTTON_TYPE_QUICK_LINKMODULE_BUTTON_TYPE_REPORT_AN_ISSUEMODULE_BUTTON_TYPE_SHAREMODULE_BUTTON_TYPE_UNKNOWNMODULE_BUTTON_TYPE_WEBSITE";
  unk_27DED90 = 30;
  dword_27DEDB0 = 9;
  dword_27DED98 = 50;
  qword_27DEC98 = "LOCATION_CADENCE_ONCELOCATION_CADENCE_UNKNOWN";
  qword_27DED70 = "MODULE_BUTTON_TYPE_CALLMODULE_BUTTON_TYPE_CLAIM_PLACEMODULE_BUTTON_TYPE_DIRECTIONSMODULE_BUTTON_TYPE_FINDMYMODULE_BUTTON_TYPE_FLYOVERMODULE_BUTTON_TYPE_GROUPMODULE_BUTTON_TYPE_LOCATIONMODULE_BUTTON_TYPE_MESSAGEMODULE_BUTTON_TYPE_QUICK_LINKMODULE_BUTTON_TYPE_REPORT_AN_ISSUEMODULE_BUTTON_TYPE_SHAREMODULE_BUTTON_TYPE_UNKNOWNMODULE_BUTTON_TYPE_WEBSITE";
  unk_27DED78 = 23;
  dword_27DED80 = 4;
  qword_27DED28 = "MODULE_BUTTON_TYPE_ADD_PHOTOSMODULE_BUTTON_TYPE_ADD_TO_GUIDESMODULE_BUTTON_TYPE_ADD_WEBSITEMODULE_BUTTON_TYPE_CALLMODULE_BUTTON_TYPE_CLAIM_PLACEMODULE_BUTTON_TYPE_DIRECTIONSMODULE_BUTTON_TYPE_FINDMYMODULE_BUTTON_TYPE_FLYOVERMODULE_BUTTON_TYPE_GROUPMODULE_BUTTON_TYPE_LOCATIONMODULE_BUTTON_TYPE_MESSAGEMODULE_BUTTON_TYPE_QUICK_LINKMODULE_BUTTON_TYPE_REPORT_AN_ISSUEMODULE_BUTTON_TYPE_SHAREMODULE_BUTTON_TYPE_UNKNOWNMODULE_BUTTON_TYPE_WEBSITE";
  unk_27DED30 = 29;
  qword_27DED58 = "MODULE_BUTTON_TYPE_ADD_WEBSITEMODULE_BUTTON_TYPE_CALLMODULE_BUTTON_TYPE_CLAIM_PLACEMODULE_BUTTON_TYPE_DIRECTIONSMODULE_BUTTON_TYPE_FINDMYMODULE_BUTTON_TYPE_FLYOVERMODULE_BUTTON_TYPE_GROUPMODULE_BUTTON_TYPE_LOCATIONMODULE_BUTTON_TYPE_MESSAGEMODULE_BUTTON_TYPE_QUICK_LINKMODULE_BUTTON_TYPE_REPORT_AN_ISSUEMODULE_BUTTON_TYPE_SHAREMODULE_BUTTON_TYPE_UNKNOWNMODULE_BUTTON_TYPE_WEBSITE";
  unk_27DED60 = 30;
  dword_27DED68 = 56;
  dword_27DED38 = 51;
  qword_27DED40 = "MODULE_BUTTON_TYPE_ADD_TO_GUIDESMODULE_BUTTON_TYPE_ADD_WEBSITEMODULE_BUTTON_TYPE_CALLMODULE_BUTTON_TYPE_CLAIM_PLACEMODULE_BUTTON_TYPE_DIRECTIONSMODULE_BUTTON_TYPE_FINDMYMODULE_BUTTON_TYPE_FLYOVERMODULE_BUTTON_TYPE_GROUPMODULE_BUTTON_TYPE_LOCATIONMODULE_BUTTON_TYPE_MESSAGEMODULE_BUTTON_TYPE_QUICK_LINKMODULE_BUTTON_TYPE_REPORT_AN_ISSUEMODULE_BUTTON_TYPE_SHAREMODULE_BUTTON_TYPE_UNKNOWNMODULE_BUTTON_TYPE_WEBSITE";
  unk_27DED48 = 32;
  dword_27DED50 = 1;
  qword_27DED10 = "MODULE_BUTTON_TYPE_ADD_PHONEMODULE_BUTTON_TYPE_ADD_PHOTOSMODULE_BUTTON_TYPE_ADD_TO_GUIDESMODULE_BUTTON_TYPE_ADD_WEBSITEMODULE_BUTTON_TYPE_CALLMODULE_BUTTON_TYPE_CLAIM_PLACEMODULE_BUTTON_TYPE_DIRECTIONSMODULE_BUTTON_TYPE_FINDMYMODULE_BUTTON_TYPE_FLYOVERMODULE_BUTTON_TYPE_GROUPMODULE_BUTTON_TYPE_LOCATIONMODULE_BUTTON_TYPE_MESSAGEMODULE_BUTTON_TYPE_QUICK_LINKMODULE_BUTTON_TYPE_REPORT_AN_ISSUEMODULE_BUTTON_TYPE_SHAREMODULE_BUTTON_TYPE_UNKNOWNMODULE_BUTTON_TYPE_WEBSITE";
  unk_27DED18 = 28;
  dword_27DED20 = 55;
  qword_27DECF8 = "MODULE_BUTTON_TYPE_ADD_HOURSMODULE_BUTTON_TYPE_ADD_PHONEMODULE_BUTTON_TYPE_ADD_PHOTOSMODULE_BUTTON_TYPE_ADD_TO_GUIDESMODULE_BUTTON_TYPE_ADD_WEBSITEMODULE_BUTTON_TYPE_CALLMODULE_BUTTON_TYPE_CLAIM_PLACEMODULE_BUTTON_TYPE_DIRECTIONSMODULE_BUTTON_TYPE_FINDMYMODULE_BUTTON_TYPE_FLYOVERMODULE_BUTTON_TYPE_GROUPMODULE_BUTTON_TYPE_LOCATIONMODULE_BUTTON_TYPE_MESSAGEMODULE_BUTTON_TYPE_QUICK_LINKMODULE_BUTTON_TYPE_REPORT_AN_ISSUEMODULE_BUTTON_TYPE_SHAREMODULE_BUTTON_TYPE_UNKNOWNMODULE_BUTTON_TYPE_WEBSITE";
  unk_27DED00 = 28;
  dword_27DED08 = 53;
  qword_27DECE0 = "MODULE_BUTTON_TYPE_ADD_FAVORITESMODULE_BUTTON_TYPE_ADD_HOURSMODULE_BUTTON_TYPE_ADD_PHONEMODULE_BUTTON_TYPE_ADD_PHOTOSMODULE_BUTTON_TYPE_ADD_TO_GUIDESMODULE_BUTTON_TYPE_ADD_WEBSITEMODULE_BUTTON_TYPE_CALLMODULE_BUTTON_TYPE_CLAIM_PLACEMODULE_BUTTON_TYPE_DIRECTIONSMODULE_BUTTON_TYPE_FINDMYMODULE_BUTTON_TYPE_FLYOVERMODULE_BUTTON_TYPE_GROUPMODULE_BUTTON_TYPE_LOCATIONMODULE_BUTTON_TYPE_MESSAGEMODULE_BUTTON_TYPE_QUICK_LINKMODULE_BUTTON_TYPE_REPORT_AN_ISSUEMODULE_BUTTON_TYPE_SHAREMODULE_BUTTON_TYPE_UNKNOWNMODULE_BUTTON_TYPE_WEBSITE";
  unk_27DECE8 = 32;
  dword_27DECD8 = 54;
  dword_27DECF0 = 52;
  qword_27DECC8 = "MODULE_BUTTON_TYPE_ADD_DETAILSMODULE_BUTTON_TYPE_ADD_FAVORITESMODULE_BUTTON_TYPE_ADD_HOURSMODULE_BUTTON_TYPE_ADD_PHONEMODULE_BUTTON_TYPE_ADD_PHOTOSMODULE_BUTTON_TYPE_ADD_TO_GUIDESMODULE_BUTTON_TYPE_ADD_WEBSITEMODULE_BUTTON_TYPE_CALLMODULE_BUTTON_TYPE_CLAIM_PLACEMODULE_BUTTON_TYPE_DIRECTIONSMODULE_BUTTON_TYPE_FINDMYMODULE_BUTTON_TYPE_FLYOVERMODULE_BUTTON_TYPE_GROUPMODULE_BUTTON_TYPE_LOCATIONMODULE_BUTTON_TYPE_MESSAGEMODULE_BUTTON_TYPE_QUICK_LINKMODULE_BUTTON_TYPE_REPORT_AN_ISSUEMODULE_BUTTON_TYPE_SHAREMODULE_BUTTON_TYPE_UNKNOWNMODULE_BUTTON_TYPE_WEBSITE";
  unk_27DECD0 = 30;
  qword_27DECB0 = "LOCATION_CADENCE_UNKNOWN";
  unk_27DECB8 = 24;
  dword_27DECC0 = 0;
  qword_27DEC80 = "LOCATION_CADENCE_NEVERLOCATION_CADENCE_ONCELOCATION_CADENCE_UNKNOWN";
  unk_27DEC88 = 22;
  dword_27DEC90 = 1;
  qword_27DECA0 = 21;
  dword_27DECA8 = 2;
  qword_27DEC50 = "LOCATION_CADENCE_ALWAYSLOCATION_CADENCE_IN_APPLOCATION_CADENCE_NEVERLOCATION_CADENCE_ONCELOCATION_CADENCE_UNKNOWN";
  *algn_27DEC58 = 23;
  qword_27DEC68 = "LOCATION_CADENCE_IN_APPLOCATION_CADENCE_NEVERLOCATION_CADENCE_ONCELOCATION_CADENCE_UNKNOWN";
  unk_27DEC70 = 23;
  dword_27DEC78 = 3;
  dword_27DEC60 = 4;
  qword_27DEC38 = "LOCATION_TYPE_UNKNOWN";
  unk_27DEC40 = 21;
  dword_27DEC48 = 0;
  qword_27DE158 = "ElementType_MODULE_TYPE_MINI_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  qword_27DEC08 = "LOCATION_TYPE_COURSELOCATION_TYPE_PRECISELOCATION_TYPE_UNKNOWN";
  unk_27DEC10 = 20;
  qword_27DEC20 = "LOCATION_TYPE_PRECISELOCATION_TYPE_UNKNOWN";
  unk_27DEC28 = 21;
  dword_27DEC30 = 1;
  dword_27DEC18 = 2;
  qword_27DEBC0 = "LIBRARYTAKENUNKNOWN";
  dword_27DEBE8 = 2;
  qword_27DEBF0 = "UNKNOWN";
  unk_27DEBF8 = 7;
  dword_27DEC00 = 0;
  qword_27DEBD8 = "TAKENUNKNOWN";
  unk_27DEBE0 = 5;
  dword_27DEBD0 = 1;
  qword_27DEBC8 = 7;
  qword_27DEBB0 = 29;
  dword_27DEBB8 = 33;
  qword_27DEB60 = "MapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DEBA8 = "MapLaunchAction_ZoomMapAction";
  qword_27DEB98 = 23;
  dword_27DEBA0 = 0;
  qword_27DEB78 = "MapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DEB90 = "MapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DEB80 = 36;
  dword_27DEB88 = 39;
  dword_27DEB58 = 41;
  qword_27DEB68 = 37;
  dword_27DEB70 = 40;
  qword_27DE350 = "ElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  qword_27DE358 = 36;
  dword_27DE360 = 16;
  qword_27DEB50 = 24;
  qword_27DE338 = "ElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  dword_27DE330 = 39;
  qword_27DE340 = 42;
  dword_27DE348 = 41;
  qword_27DE320 = "ElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  qword_27DE310 = 41;
  dword_27DE318 = 7;
  qword_27DE328 = 38;
  qword_27DE2F0 = "ElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  qword_27DE308 = "ElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  dword_27DE2E8 = 2;
  qword_27DE2F8 = 43;
  dword_27DE300 = 8;
  qword_27DE2D8 = "ElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  qword_27DE2C8 = 38;
  dword_27DE2D0 = 38;
  qword_27DE2E0 = 29;
  qword_27DE2A8 = "ElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  qword_27DE2C0 = "ElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  dword_27DE2A0 = 36;
  qword_27DE2B0 = 37;
  dword_27DE2B8 = 27;
  qword_27DE290 = "ElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  qword_27DE280 = 31;
  dword_27DE288 = 12;
  qword_27DE298 = 41;
  qword_27DE260 = "ElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  qword_27DE278 = "ElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  dword_27DE258 = 26;
  qword_27DE268 = 36;
  dword_27DE270 = 14;
  qword_27DE248 = "ElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  qword_27DE238 = 35;
  dword_27DE240 = 28;
  qword_27DE250 = 42;
  qword_27DE218 = "ElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  qword_27DE230 = "ElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  dword_27DE210 = 35;
  qword_27DE220 = 48;
  dword_27DE228 = 42;
  qword_27DE200 = "ElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  qword_27DE1F0 = 43;
  dword_27DE1F8 = 33;
  qword_27DE208 = 36;
  qword_27DE1D0 = "ElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  qword_27DE1E8 = "ElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  qword_27DE1D8 = 47;
  dword_27DE1E0 = 30;
  qword_27DE1B8 = "ElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  dword_27DE1B0 = 5;
  qword_27DE1C0 = 44;
  dword_27DE1C8 = 40;
  qword_27DE170 = "ElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  qword_27DE1A0 = "ElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  qword_27DE190 = 37;
  dword_27DE198 = 15;
  qword_27DE1A8 = 30;
  qword_27DE188 = "ElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  dword_27DE168 = 31;
  qword_27DE178 = 28;
  dword_27DE180 = 45;
  qword_27DE140 = "ElementType_MODULE_TYPE_MESSAGE_HOURSElementType_MODULE_TYPE_MINI_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  unk_27DE148 = 37;
  dword_27DE150 = 22;
  qword_27DE160 = 52;
  qword_27DE110 = "ElementType_MODULE_TYPE_INLINE_MAPElementType_MODULE_TYPE_MESSAGEElementType_MODULE_TYPE_MESSAGE_HOURSElementType_MODULE_TYPE_MINI_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  qword_27DE128 = "ElementType_MODULE_TYPE_MESSAGEElementType_MODULE_TYPE_MESSAGE_HOURSElementType_MODULE_TYPE_MINI_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  unk_27DE130 = 31;
  dword_27DE120 = 4;
  dword_27DE138 = 21;
  qword_27DE0F8 = "ElementType_MODULE_TYPE_INFO_PARENTElementType_MODULE_TYPE_INLINE_MAPElementType_MODULE_TYPE_MESSAGEElementType_MODULE_TYPE_MESSAGE_HOURSElementType_MODULE_TYPE_MINI_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  unk_27DE100 = 35;
  dword_27DE108 = 18;
  qword_27DE118 = 34;
  qword_27DDF60 = "ElementType_MODULE_TYPE_ABOUTElementType_MODULE_TYPE_ACTIONS_ROWElementType_MODULE_TYPE_ACTION_FOOTERElementType_MODULE_TYPE_ANNOTATED_LISTElementType_MODULE_TYPE_ANNOTATED_PICTUREElementType_MODULE_TYPE_APPLE_RATINGSElementType_MODULE_TYPE_ATTRIBUTIONElementType_MODULE_TYPE_BUSINESS_INFOSElementType_MODULE_TYPE_BUTTONSElementType_MODULE_TYPE_COLLECTIONSElementType_MODULE_TYPE_CURATED_COLLECTIONSElementType_MODULE_TYPE_ENCYCLOPEDICElementType_MODULE_TYPE_EV_CHARGERElementType_MODULE_TYPE_HIKING_ASSOCIATIONElementType_MODULE_TYPE_HIKING_SUGGESTIONElementType_MODULE_TYPE_HOURSElementType_MODULE_TYPE_INFOSElementType_MODULE_TYPE_INFO_PARENTElementType_MODULE_TYPE_INLINE_MAPElementType_MODULE_TYPE_MESSAGEElementType_MODULE_TYPE_MESSAGE_HOURSElementType_MODULE_TYPE_MINI_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  qword_27DE0E0 = "ElementType_MODULE_TYPE_INFOSElementType_MODULE_TYPE_INFO_PARENTElementType_MODULE_TYPE_INLINE_MAPElementType_MODULE_TYPE_MESSAGEElementType_MODULE_TYPE_MESSAGE_HOURSElementType_MODULE_TYPE_MINI_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  unk_27DE0E8 = 29;
  dword_27DE0F0 = 6;
  qword_27DE0C8 = "ElementType_MODULE_TYPE_HOURSElementType_MODULE_TYPE_INFOSElementType_MODULE_TYPE_INFO_PARENTElementType_MODULE_TYPE_INLINE_MAPElementType_MODULE_TYPE_MESSAGEElementType_MODULE_TYPE_MESSAGE_HOURSElementType_MODULE_TYPE_MINI_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  unk_27DE0D0 = 29;
  dword_27DE0C0 = 46;
  dword_27DE0D8 = 10;
  qword_27DE0B0 = "ElementType_MODULE_TYPE_HIKING_SUGGESTIONElementType_MODULE_TYPE_HOURSElementType_MODULE_TYPE_INFOSElementType_MODULE_TYPE_INFO_PARENTElementType_MODULE_TYPE_INLINE_MAPElementType_MODULE_TYPE_MESSAGEElementType_MODULE_TYPE_MESSAGE_HOURSElementType_MODULE_TYPE_MINI_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  unk_27DE0B8 = 41;
  qword_27DE098 = "ElementType_MODULE_TYPE_HIKING_ASSOCIATIONElementType_MODULE_TYPE_HIKING_SUGGESTIONElementType_MODULE_TYPE_HOURSElementType_MODULE_TYPE_INFOSElementType_MODULE_TYPE_INFO_PARENTElementType_MODULE_TYPE_INLINE_MAPElementType_MODULE_TYPE_MESSAGEElementType_MODULE_TYPE_MESSAGE_HOURSElementType_MODULE_TYPE_MINI_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  unk_27DE0A0 = 42;
  dword_27DE0A8 = 44;
  qword_27DE080 = "ElementType_MODULE_TYPE_EV_CHARGERElementType_MODULE_TYPE_HIKING_ASSOCIATIONElementType_MODULE_TYPE_HIKING_SUGGESTIONElementType_MODULE_TYPE_HOURSElementType_MODULE_TYPE_INFOSElementType_MODULE_TYPE_INFO_PARENTElementType_MODULE_TYPE_INLINE_MAPElementType_MODULE_TYPE_MESSAGEElementType_MODULE_TYPE_MESSAGE_HOURSElementType_MODULE_TYPE_MINI_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  unk_27DE088 = 34;
  dword_27DE078 = 9;
  dword_27DE090 = 43;
  qword_27DE068 = "ElementType_MODULE_TYPE_ENCYCLOPEDICElementType_MODULE_TYPE_EV_CHARGERElementType_MODULE_TYPE_HIKING_ASSOCIATIONElementType_MODULE_TYPE_HIKING_SUGGESTIONElementType_MODULE_TYPE_HOURSElementType_MODULE_TYPE_INFOSElementType_MODULE_TYPE_INFO_PARENTElementType_MODULE_TYPE_INLINE_MAPElementType_MODULE_TYPE_MESSAGEElementType_MODULE_TYPE_MESSAGE_HOURSElementType_MODULE_TYPE_MINI_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  unk_27DE070 = 36;
  qword_27DE050 = "ElementType_MODULE_TYPE_CURATED_COLLECTIONSElementType_MODULE_TYPE_ENCYCLOPEDICElementType_MODULE_TYPE_EV_CHARGERElementType_MODULE_TYPE_HIKING_ASSOCIATIONElementType_MODULE_TYPE_HIKING_SUGGESTIONElementType_MODULE_TYPE_HOURSElementType_MODULE_TYPE_INFOSElementType_MODULE_TYPE_INFO_PARENTElementType_MODULE_TYPE_INLINE_MAPElementType_MODULE_TYPE_MESSAGEElementType_MODULE_TYPE_MESSAGE_HOURSElementType_MODULE_TYPE_MINI_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  unk_27DE058 = 43;
  dword_27DE060 = 32;
  qword_27DE038 = "ElementType_MODULE_TYPE_COLLECTIONSElementType_MODULE_TYPE_CURATED_COLLECTIONSElementType_MODULE_TYPE_ENCYCLOPEDICElementType_MODULE_TYPE_EV_CHARGERElementType_MODULE_TYPE_HIKING_ASSOCIATIONElementType_MODULE_TYPE_HIKING_SUGGESTIONElementType_MODULE_TYPE_HOURSElementType_MODULE_TYPE_INFOSElementType_MODULE_TYPE_INFO_PARENTElementType_MODULE_TYPE_INLINE_MAPElementType_MODULE_TYPE_MESSAGEElementType_MODULE_TYPE_MESSAGE_HOURSElementType_MODULE_TYPE_MINI_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  unk_27DE040 = 35;
  dword_27DE030 = 3;
  dword_27DE048 = 29;
  qword_27DE020 = "ElementType_MODULE_TYPE_BUTTONSElementType_MODULE_TYPE_COLLECTIONSElementType_MODULE_TYPE_CURATED_COLLECTIONSElementType_MODULE_TYPE_ENCYCLOPEDICElementType_MODULE_TYPE_EV_CHARGERElementType_MODULE_TYPE_HIKING_ASSOCIATIONElementType_MODULE_TYPE_HIKING_SUGGESTIONElementType_MODULE_TYPE_HOURSElementType_MODULE_TYPE_INFOSElementType_MODULE_TYPE_INFO_PARENTElementType_MODULE_TYPE_INLINE_MAPElementType_MODULE_TYPE_MESSAGEElementType_MODULE_TYPE_MESSAGE_HOURSElementType_MODULE_TYPE_MINI_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  unk_27DE028 = 31;
  qword_27DE008 = "ElementType_MODULE_TYPE_BUSINESS_INFOSElementType_MODULE_TYPE_BUTTONSElementType_MODULE_TYPE_COLLECTIONSElementType_MODULE_TYPE_CURATED_COLLECTIONSElementType_MODULE_TYPE_ENCYCLOPEDICElementType_MODULE_TYPE_EV_CHARGERElementType_MODULE_TYPE_HIKING_ASSOCIATIONElementType_MODULE_TYPE_HIKING_SUGGESTIONElementType_MODULE_TYPE_HOURSElementType_MODULE_TYPE_INFOSElementType_MODULE_TYPE_INFO_PARENTElementType_MODULE_TYPE_INLINE_MAPElementType_MODULE_TYPE_MESSAGEElementType_MODULE_TYPE_MESSAGE_HOURSElementType_MODULE_TYPE_MINI_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  unk_27DE010 = 38;
  dword_27DE018 = 11;
  qword_27DDFF0 = "ElementType_MODULE_TYPE_ATTRIBUTIONElementType_MODULE_TYPE_BUSINESS_INFOSElementType_MODULE_TYPE_BUTTONSElementType_MODULE_TYPE_COLLECTIONSElementType_MODULE_TYPE_CURATED_COLLECTIONSElementType_MODULE_TYPE_ENCYCLOPEDICElementType_MODULE_TYPE_EV_CHARGERElementType_MODULE_TYPE_HIKING_ASSOCIATIONElementType_MODULE_TYPE_HIKING_SUGGESTIONElementType_MODULE_TYPE_HOURSElementType_MODULE_TYPE_INFOSElementType_MODULE_TYPE_INFO_PARENTElementType_MODULE_TYPE_INLINE_MAPElementType_MODULE_TYPE_MESSAGEElementType_MODULE_TYPE_MESSAGE_HOURSElementType_MODULE_TYPE_MINI_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  unk_27DDFF8 = 35;
  dword_27DDFE8 = 34;
  dword_27DE000 = 24;
  qword_27DDFD8 = "ElementType_MODULE_TYPE_APPLE_RATINGSElementType_MODULE_TYPE_ATTRIBUTIONElementType_MODULE_TYPE_BUSINESS_INFOSElementType_MODULE_TYPE_BUTTONSElementType_MODULE_TYPE_COLLECTIONSElementType_MODULE_TYPE_CURATED_COLLECTIONSElementType_MODULE_TYPE_ENCYCLOPEDICElementType_MODULE_TYPE_EV_CHARGERElementType_MODULE_TYPE_HIKING_ASSOCIATIONElementType_MODULE_TYPE_HIKING_SUGGESTIONElementType_MODULE_TYPE_HOURSElementType_MODULE_TYPE_INFOSElementType_MODULE_TYPE_INFO_PARENTElementType_MODULE_TYPE_INLINE_MAPElementType_MODULE_TYPE_MESSAGEElementType_MODULE_TYPE_MESSAGE_HOURSElementType_MODULE_TYPE_MINI_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  unk_27DDFE0 = 37;
  qword_27DDFC0 = "ElementType_MODULE_TYPE_ANNOTATED_PICTUREElementType_MODULE_TYPE_APPLE_RATINGSElementType_MODULE_TYPE_ATTRIBUTIONElementType_MODULE_TYPE_BUSINESS_INFOSElementType_MODULE_TYPE_BUTTONSElementType_MODULE_TYPE_COLLECTIONSElementType_MODULE_TYPE_CURATED_COLLECTIONSElementType_MODULE_TYPE_ENCYCLOPEDICElementType_MODULE_TYPE_EV_CHARGERElementType_MODULE_TYPE_HIKING_ASSOCIATIONElementType_MODULE_TYPE_HIKING_SUGGESTIONElementType_MODULE_TYPE_HOURSElementType_MODULE_TYPE_INFOSElementType_MODULE_TYPE_INFO_PARENTElementType_MODULE_TYPE_INLINE_MAPElementType_MODULE_TYPE_MESSAGEElementType_MODULE_TYPE_MESSAGE_HOURSElementType_MODULE_TYPE_MINI_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  unk_27DDFC8 = 41;
  dword_27DDFD0 = 20;
  qword_27DDFA8 = "ElementType_MODULE_TYPE_ANNOTATED_LISTElementType_MODULE_TYPE_ANNOTATED_PICTUREElementType_MODULE_TYPE_APPLE_RATINGSElementType_MODULE_TYPE_ATTRIBUTIONElementType_MODULE_TYPE_BUSINESS_INFOSElementType_MODULE_TYPE_BUTTONSElementType_MODULE_TYPE_COLLECTIONSElementType_MODULE_TYPE_CURATED_COLLECTIONSElementType_MODULE_TYPE_ENCYCLOPEDICElementType_MODULE_TYPE_EV_CHARGERElementType_MODULE_TYPE_HIKING_ASSOCIATIONElementType_MODULE_TYPE_HIKING_SUGGESTIONElementType_MODULE_TYPE_HOURSElementType_MODULE_TYPE_INFOSElementType_MODULE_TYPE_INFO_PARENTElementType_MODULE_TYPE_INLINE_MAPElementType_MODULE_TYPE_MESSAGEElementType_MODULE_TYPE_MESSAGE_HOURSElementType_MODULE_TYPE_MINI_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  unk_27DDFB0 = 38;
  dword_27DDFA0 = 23;
  dword_27DDFB8 = 19;
  qword_27DDF90 = "ElementType_MODULE_TYPE_ACTION_FOOTERElementType_MODULE_TYPE_ANNOTATED_LISTElementType_MODULE_TYPE_ANNOTATED_PICTUREElementType_MODULE_TYPE_APPLE_RATINGSElementType_MODULE_TYPE_ATTRIBUTIONElementType_MODULE_TYPE_BUSINESS_INFOSElementType_MODULE_TYPE_BUTTONSElementType_MODULE_TYPE_COLLECTIONSElementType_MODULE_TYPE_CURATED_COLLECTIONSElementType_MODULE_TYPE_ENCYCLOPEDICElementType_MODULE_TYPE_EV_CHARGERElementType_MODULE_TYPE_HIKING_ASSOCIATIONElementType_MODULE_TYPE_HIKING_SUGGESTIONElementType_MODULE_TYPE_HOURSElementType_MODULE_TYPE_INFOSElementType_MODULE_TYPE_INFO_PARENTElementType_MODULE_TYPE_INLINE_MAPElementType_MODULE_TYPE_MESSAGEElementType_MODULE_TYPE_MESSAGE_HOURSElementType_MODULE_TYPE_MINI_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  unk_27DDF98 = 37;
  qword_27DDF78 = "ElementType_MODULE_TYPE_ACTIONS_ROWElementType_MODULE_TYPE_ACTION_FOOTERElementType_MODULE_TYPE_ANNOTATED_LISTElementType_MODULE_TYPE_ANNOTATED_PICTUREElementType_MODULE_TYPE_APPLE_RATINGSElementType_MODULE_TYPE_ATTRIBUTIONElementType_MODULE_TYPE_BUSINESS_INFOSElementType_MODULE_TYPE_BUTTONSElementType_MODULE_TYPE_COLLECTIONSElementType_MODULE_TYPE_CURATED_COLLECTIONSElementType_MODULE_TYPE_ENCYCLOPEDICElementType_MODULE_TYPE_EV_CHARGERElementType_MODULE_TYPE_HIKING_ASSOCIATIONElementType_MODULE_TYPE_HIKING_SUGGESTIONElementType_MODULE_TYPE_HOURSElementType_MODULE_TYPE_INFOSElementType_MODULE_TYPE_INFO_PARENTElementType_MODULE_TYPE_INLINE_MAPElementType_MODULE_TYPE_MESSAGEElementType_MODULE_TYPE_MESSAGE_HOURSElementType_MODULE_TYPE_MINI_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  unk_27DDF80 = 35;
  dword_27DDF88 = 13;
  qword_27DDF68 = 29;
  dword_27DDF70 = 37;
  qword_27DDF30 = "SEARCH_RESULTS_RESULT_TYPE_UNKNOWN";
  unk_27DDF38 = 34;
  qword_27DDF48 = "ElementType_MAPS_SEARCH_RESULTElementType_MODULE_TYPE_ABOUTElementType_MODULE_TYPE_ACTIONS_ROWElementType_MODULE_TYPE_ACTION_FOOTERElementType_MODULE_TYPE_ANNOTATED_LISTElementType_MODULE_TYPE_ANNOTATED_PICTUREElementType_MODULE_TYPE_APPLE_RATINGSElementType_MODULE_TYPE_ATTRIBUTIONElementType_MODULE_TYPE_BUSINESS_INFOSElementType_MODULE_TYPE_BUTTONSElementType_MODULE_TYPE_COLLECTIONSElementType_MODULE_TYPE_CURATED_COLLECTIONSElementType_MODULE_TYPE_ENCYCLOPEDICElementType_MODULE_TYPE_EV_CHARGERElementType_MODULE_TYPE_HIKING_ASSOCIATIONElementType_MODULE_TYPE_HIKING_SUGGESTIONElementType_MODULE_TYPE_HOURSElementType_MODULE_TYPE_INFOSElementType_MODULE_TYPE_INFO_PARENTElementType_MODULE_TYPE_INLINE_MAPElementType_MODULE_TYPE_MESSAGEElementType_MODULE_TYPE_MESSAGE_HOURSElementType_MODULE_TYPE_MINI_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_NOTEElementType_MODULE_TYPE_OFFICIAL_APPSElementType_MODULE_TYPE_PHOTOSElementType_MODULE_TYPE_PLACECARD_ENRICHMENTElementType_MODULE_TYPE_PLACE_BROWSE_CATEGORIESElementType_MODULE_TYPE_PLACE_QUESTIONNAIREElementType_MODULE_TYPE_PLACE_RIBBONElementType_MODULE_TYPE_QUESTIONNAIRE_SUGGESTIONElementType_MODULE_TYPE_QUICK_LINKSElementType_MODULE_TYPE_RELATED_PLACE_LISTElementType_MODULE_TYPE_RESERVATIONSElementType_MODULE_TYPE_REVIEWSElementType_MODULE_TYPE_REVIEW_AND_RATINGElementType_MODULE_TYPE_SERVICE_HOURSElementType_MODULE_TYPE_TEMPLATE_PLACEElementType_MODULE_TYPE_TITLEElementType_MODULE_TYPE_TRANSIT_ATTRIBUTIONElementType_MODULE_TYPE_TRANSIT_DEPARTUREElementType_MODULE_TYPE_TRANSIT_LABELSElementType_MODULE_TYPE_UNIFIED_ACTION_ROWElementType_MODULE_TYPE_VENUE_BROWSEElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  unk_27DDF50 = 30;
  dword_27DDF58 = 1;
  dword_27DDF40 = 0;
  qword_27DDE10 = "NETWORK_USAGEPLACE_DATA_CACHESTATE_TIMING_USAGESUGGESTIONS_USAGETILE_SET_STATE_USAGETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHUSER_ACTION_USAGE";
  qword_27DDF18 = "SEARCH_RESULTS_RESULT_TYPE_MAPS_RESULTSEARCH_RESULTS_RESULT_TYPE_UNKNOWN";
  unk_27DDF20 = 38;
  dword_27DDF10 = 3;
  dword_27DDF28 = 2;
  qword_27DDF00 = "SEARCH_RESULTS_RESULT_TYPE_GUIDESEARCH_RESULTS_RESULT_TYPE_MAPS_RESULTSEARCH_RESULTS_RESULT_TYPE_UNKNOWN";
  unk_27DDF08 = 32;
  qword_27DDEE8 = "SEARCH_RESULTS_RESULT_TYPE_ENRICHEDSEARCH_RESULTS_RESULT_TYPE_GUIDESEARCH_RESULTS_RESULT_TYPE_MAPS_RESULTSEARCH_RESULTS_RESULT_TYPE_UNKNOWN";
  unk_27DDEF0 = 35;
  dword_27DDEF8 = 1;
  qword_27DDED0 = "USER_ACTION_USAGE";
  unk_27DDED8 = 17;
  dword_27DDEE0 = 100;
  qword_27DDE70 = "TILE_SET_STATE_USAGETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHUSER_ACTION_USAGE";
  qword_27DDEB8 = "TRANSIT_APP_LAUNCHUSER_ACTION_USAGE";
  unk_27DDEC0 = 18;
  dword_27DDEC8 = 301;
  dword_27DDEB0 = 303;
  qword_27DDEA0 = "TIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHUSER_ACTION_USAGE";
  unk_27DDEA8 = 33;
  dword_27DDE98 = 302;
  qword_27DDE88 = "TIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHUSER_ACTION_USAGE";
  unk_27DDE90 = 24;
  dword_27DDE80 = 103;
  qword_27DDE58 = "SUGGESTIONS_USAGETILE_SET_STATE_USAGETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHUSER_ACTION_USAGE";
  unk_27DDE60 = 17;
  dword_27DDE68 = 102;
  qword_27DDE78 = 20;
  qword_27DDE40 = "STATE_TIMING_USAGESUGGESTIONS_USAGETILE_SET_STATE_USAGETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHUSER_ACTION_USAGE";
  unk_27DDE48 = 18;
  dword_27DDE50 = 101;
  dword_27DDE20 = 200;
  qword_27DDE28 = "PLACE_DATA_CACHESTATE_TIMING_USAGESUGGESTIONS_USAGETILE_SET_STATE_USAGETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHUSER_ACTION_USAGE";
  unk_27DDE30 = 16;
  dword_27DDE38 = 104;
  qword_27DDDF8 = "LOG_WARNINGNETWORK_USAGEPLACE_DATA_CACHESTATE_TIMING_USAGESUGGESTIONS_USAGETILE_SET_STATE_USAGETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHUSER_ACTION_USAGE";
  unk_27DDE00 = 11;
  dword_27DDE08 = 5;
  qword_27DDE18 = 13;
  qword_27DDD68 = "LOG_ERRORLOG_FRAMEWORK_METRIC_USAGELOG_FRAMEWORK_NETWORK_USAGELOG_INFOLOG_MESSAGE_SUB_TYPE_UNKNOWNLOG_NOTICELOG_WARNINGNETWORK_USAGEPLACE_DATA_CACHESTATE_TIMING_USAGESUGGESTIONS_USAGETILE_SET_STATE_USAGETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHUSER_ACTION_USAGE";
  qword_27DDDE0 = "LOG_NOTICELOG_WARNINGNETWORK_USAGEPLACE_DATA_CACHESTATE_TIMING_USAGESUGGESTIONS_USAGETILE_SET_STATE_USAGETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHUSER_ACTION_USAGE";
  unk_27DDDE8 = 10;
  dword_27DDDF0 = 6;
  qword_27DDDB0 = "LOG_INFOLOG_MESSAGE_SUB_TYPE_UNKNOWNLOG_NOTICELOG_WARNINGNETWORK_USAGEPLACE_DATA_CACHESTATE_TIMING_USAGESUGGESTIONS_USAGETILE_SET_STATE_USAGETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHUSER_ACTION_USAGE";
  qword_27DDDC8 = "LOG_MESSAGE_SUB_TYPE_UNKNOWNLOG_NOTICELOG_WARNINGNETWORK_USAGEPLACE_DATA_CACHESTATE_TIMING_USAGESUGGESTIONS_USAGETILE_SET_STATE_USAGETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHUSER_ACTION_USAGE";
  unk_27DDDD0 = 28;
  dword_27DDDC0 = 7;
  dword_27DDDD8 = 0;
  qword_27DDD98 = "LOG_FRAMEWORK_NETWORK_USAGELOG_INFOLOG_MESSAGE_SUB_TYPE_UNKNOWNLOG_NOTICELOG_WARNINGNETWORK_USAGEPLACE_DATA_CACHESTATE_TIMING_USAGESUGGESTIONS_USAGETILE_SET_STATE_USAGETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHUSER_ACTION_USAGE";
  unk_27DDDA0 = 27;
  dword_27DDDA8 = 400;
  qword_27DDDB8 = 8;
  qword_27DDD80 = "LOG_FRAMEWORK_METRIC_USAGELOG_FRAMEWORK_NETWORK_USAGELOG_INFOLOG_MESSAGE_SUB_TYPE_UNKNOWNLOG_NOTICELOG_WARNINGNETWORK_USAGEPLACE_DATA_CACHESTATE_TIMING_USAGESUGGESTIONS_USAGETILE_SET_STATE_USAGETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHUSER_ACTION_USAGE";
  dword_27DDD78 = 4;
  qword_27DDD88 = 26;
  dword_27DDD90 = 401;
  qword_27DDD50 = "LOG_EMERGENCYLOG_ERRORLOG_FRAMEWORK_METRIC_USAGELOG_FRAMEWORK_NETWORK_USAGELOG_INFOLOG_MESSAGE_SUB_TYPE_UNKNOWNLOG_NOTICELOG_WARNINGNETWORK_USAGEPLACE_DATA_CACHESTATE_TIMING_USAGESUGGESTIONS_USAGETILE_SET_STATE_USAGETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHUSER_ACTION_USAGE";
  unk_27DDD58 = 13;
  dword_27DDD60 = 1;
  qword_27DDD70 = 9;
  qword_27DDD38 = "LOG_DEBUGLOG_EMERGENCYLOG_ERRORLOG_FRAMEWORK_METRIC_USAGELOG_FRAMEWORK_NETWORK_USAGELOG_INFOLOG_MESSAGE_SUB_TYPE_UNKNOWNLOG_NOTICELOG_WARNINGNETWORK_USAGEPLACE_DATA_CACHESTATE_TIMING_USAGESUGGESTIONS_USAGETILE_SET_STATE_USAGETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHUSER_ACTION_USAGE";
  unk_27DDD40 = 9;
  qword_27DDD20 = "LOG_CRITICALLOG_DEBUGLOG_EMERGENCYLOG_ERRORLOG_FRAMEWORK_METRIC_USAGELOG_FRAMEWORK_NETWORK_USAGELOG_INFOLOG_MESSAGE_SUB_TYPE_UNKNOWNLOG_NOTICELOG_WARNINGNETWORK_USAGEPLACE_DATA_CACHESTATE_TIMING_USAGESUGGESTIONS_USAGETILE_SET_STATE_USAGETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHUSER_ACTION_USAGE";
  unk_27DDD28 = 12;
  dword_27DDD48 = 8;
  dword_27DDD30 = 3;
  qword_27DDCA8 = "DEVICE_CONNECTIVITY_UNKNOWNDEVICE_CONNECTVIITY_WIFI";
  unk_27DDCB0 = 27;
  qword_27DDD08 = "LOG_ALERTLOG_CRITICALLOG_DEBUGLOG_EMERGENCYLOG_ERRORLOG_FRAMEWORK_METRIC_USAGELOG_FRAMEWORK_NETWORK_USAGELOG_INFOLOG_MESSAGE_SUB_TYPE_UNKNOWNLOG_NOTICELOG_WARNINGNETWORK_USAGEPLACE_DATA_CACHESTATE_TIMING_USAGESUGGESTIONS_USAGETILE_SET_STATE_USAGETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHUSER_ACTION_USAGE";
  unk_27DDD10 = 9;
  dword_27DDD18 = 2;
  dword_27DDCE8 = 201;
  qword_27DDCF0 = "DIRECTIONS_FEEDBACKLOG_ALERTLOG_CRITICALLOG_DEBUGLOG_EMERGENCYLOG_ERRORLOG_FRAMEWORK_METRIC_USAGELOG_FRAMEWORK_NETWORK_USAGELOG_INFOLOG_MESSAGE_SUB_TYPE_UNKNOWNLOG_NOTICELOG_WARNINGNETWORK_USAGEPLACE_DATA_CACHESTATE_TIMING_USAGESUGGESTIONS_USAGETILE_SET_STATE_USAGETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHUSER_ACTION_USAGE";
  unk_27DDCF8 = 19;
  dword_27DDD00 = 300;
  qword_27DDCD8 = "CACHE_HIT_USAGEDIRECTIONS_FEEDBACKLOG_ALERTLOG_CRITICALLOG_DEBUGLOG_EMERGENCYLOG_ERRORLOG_FRAMEWORK_METRIC_USAGELOG_FRAMEWORK_NETWORK_USAGELOG_INFOLOG_MESSAGE_SUB_TYPE_UNKNOWNLOG_NOTICELOG_WARNINGNETWORK_USAGEPLACE_DATA_CACHESTATE_TIMING_USAGESUGGESTIONS_USAGETILE_SET_STATE_USAGETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHUSER_ACTION_USAGE";
  unk_27DDCE0 = 15;
  qword_27DDCC0 = "DEVICE_CONNECTVIITY_WIFI";
  unk_27DDCC8 = 24;
  dword_27DDCD0 = 2;
  dword_27DDCB8 = 0;
  qword_27DDC78 = "TTL_INITIAL_TRAVEL_TIME_BUCKET_UNKNOWN";
  unk_27DDC80 = 38;
  qword_27DDC90 = "DEVICE_CONNECTIVITY_CELLULARDEVICE_CONNECTIVITY_UNKNOWNDEVICE_CONNECTVIITY_WIFI";
  *algn_27DDC98 = 28;
  dword_27DDCA0 = 1;
  dword_27DDC88 = 0;
  qword_27DDC60 = "MORE_THAN_4HTTL_INITIAL_TRAVEL_TIME_BUCKET_UNKNOWN";
  unk_27DDC68 = 12;
  dword_27DDC70 = 6;
  qword_27DDC48 = "LESS_THAN_4HMORE_THAN_4HTTL_INITIAL_TRAVEL_TIME_BUCKET_UNKNOWN";
  unk_27DDC50 = 12;
  dword_27DDC40 = 2;
  dword_27DDC58 = 5;
  qword_27DDC18 = "LESS_THAN_2HLESS_THAN_30MLESS_THAN_4HMORE_THAN_4HTTL_INITIAL_TRAVEL_TIME_BUCKET_UNKNOWN";
  unk_27DDC20 = 12;
  dword_27DDC28 = 4;
  qword_27DDC30 = "LESS_THAN_30MLESS_THAN_4HMORE_THAN_4HTTL_INITIAL_TRAVEL_TIME_BUCKET_UNKNOWN";
  unk_27DDC38 = 13;
  qword_27DDC00 = "LESS_THAN_1HLESS_THAN_2HLESS_THAN_30MLESS_THAN_4HMORE_THAN_4HTTL_INITIAL_TRAVEL_TIME_BUCKET_UNKNOWN";
  unk_27DDC08 = 12;
  qword_27DDBE8 = "LESS_THAN_15MLESS_THAN_1HLESS_THAN_2HLESS_THAN_30MLESS_THAN_4HMORE_THAN_4HTTL_INITIAL_TRAVEL_TIME_BUCKET_UNKNOWN";
  unk_27DDBF0 = 13;
  dword_27DDBF8 = 1;
  dword_27DDC10 = 3;
  qword_27DDB88 = "BOTH_SHOWNEARLY_SHOWNON_TIME_SHOWNTTL_UI_NOTIFICATION_NONE_SHOWN";
  unk_27DDB90 = 10;
  qword_27DDBC0 = 13;
  dword_27DDBC8 = 2;
  qword_27DDBD8 = 30;
  dword_27DDBE0 = 0;
  dword_27DDB98 = 3;
  qword_27DDBA8 = 11;
  dword_27DDBB0 = 1;
  qword_27DE368 = "ElementType_MODULE_TYPE_VENUE_INFOElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  qword_27DE380 = "ElementType_MODULE_TYPE_WEB_CONTENTElementType_UNKNOWN";
  qword_27DE398 = "ElementType_UNKNOWN";
  dword_27DE378 = 17;
  qword_27DE388 = 35;
  dword_27DE390 = 25;
  qword_27DE3A0 = 19;
  dword_27DE3A8 = 0;
  qword_27DE3B0 = "ImpressionEventType_NONVISIBLEImpressionEventType_UNKNOWNImpressionEventType_VISIBLE";
  *algn_27DE3B8 = 30;
  dword_27DE3C0 = 2;
  qword_27DE3C8 = "ImpressionEventType_UNKNOWNImpressionEventType_VISIBLE";
  unk_27DE3D0 = 27;
  dword_27DE3D8 = 0;
  qword_27DE3E0 = "ImpressionEventType_VISIBLE";
  unk_27DE3E8 = 27;
  dword_27DE3F0 = 1;
  qword_27DE410 = "ElementSource_PLACECARD_TRAYElementSource_UNKNOWN";
  unk_27DE418 = 28;
  qword_27DE3F8 = "ElementSource_MAPS_SEARCHElementSource_PLACECARD_TRAYElementSource_UNKNOWN";
  unk_27DE400 = 25;
  dword_27DE408 = 1;
  dword_27DE420 = 2;
  qword_27DE428 = "ElementSource_UNKNOWN";
  unk_27DE430 = 21;
  dword_27DE438 = 0;
  qword_27DE458 = "CLUSTERED_POIENRICHED_POISTANDARD_POI";
  qword_27DE470 = "ENRICHED_POISTANDARD_POI";
  qword_27DE440 = "CLUSTERED_ENRICHED_POICLUSTERED_POIENRICHED_POISTANDARD_POI";
  *algn_27DE448 = 22;
  dword_27DE450 = 3;
  qword_27DE460 = 13;
  dword_27DE468 = 1;
  qword_27DE478 = 12;
  dword_27DE480 = 2;
  qword_27DE488 = "STANDARD_POI";
  unk_27DE490 = 12;
  dword_27DE498 = 0;
  qword_27DE4B8 = "LINK_TYPE_APP_EXTENSIONLINK_TYPE_QUICK_LINKLINK_TYPE_UNKNOWN";
  qword_27DE4D0 = "LINK_TYPE_QUICK_LINKLINK_TYPE_UNKNOWN";
  qword_27DE4E8 = "LINK_TYPE_UNKNOWN";
  unk_27DE4F0 = 17;
  qword_27DE4A0 = "LINK_TYPE_APP_CLIP_LINKLINK_TYPE_APP_EXTENSIONLINK_TYPE_QUICK_LINKLINK_TYPE_UNKNOWN";
  *algn_27DE4A8 = 23;
  dword_27DE4B0 = 2;
  qword_27DE4C0 = 23;
  dword_27DE4C8 = 3;
  qword_27DE4D8 = 20;
  dword_27DE4E0 = 1;
  dword_27DE4F8 = 0;
  qword_27DE518 = "CELLULAR_DATA_STATE_DISABLED_FOR_MAPSCELLULAR_DATA_STATE_DISABLED_GLOBALLYCELLULAR_DATA_STATE_NOT_SUPPORTEDCELLULAR_DATA_STATE_UNKNOWN";
  qword_27DE530 = "CELLULAR_DATA_STATE_DISABLED_GLOBALLYCELLULAR_DATA_STATE_NOT_SUPPORTEDCELLULAR_DATA_STATE_UNKNOWN";
  qword_27DE548 = "CELLULAR_DATA_STATE_NOT_SUPPORTEDCELLULAR_DATA_STATE_UNKNOWN";
  unk_27DE550 = 33;
  qword_27DE560 = "CELLULAR_DATA_STATE_UNKNOWN";
  unk_27DE568 = 27;
  qword_27DE500 = "CELLULAR_DATA_STATE_ALLOWEDCELLULAR_DATA_STATE_DISABLED_FOR_MAPSCELLULAR_DATA_STATE_DISABLED_GLOBALLYCELLULAR_DATA_STATE_NOT_SUPPORTEDCELLULAR_DATA_STATE_UNKNOWN";
  *algn_27DE508 = 27;
  dword_27DE510 = 1;
  qword_27DE520 = 37;
  dword_27DE528 = 2;
  qword_27DE538 = 37;
  dword_27DE540 = 3;
  dword_27DE558 = 4;
  dword_27DE570 = 0;
  qword_27DE590 = "NO_AUTHPRECISEUNKNOWN";
  qword_27DE5A8 = "PRECISEUNKNOWN";
  qword_27DE5C0 = "UNKNOWN";
  qword_27DE578 = "COARSENO_AUTHPRECISEUNKNOWN";
  unk_27DE580 = 6;
  dword_27DE588 = 3;
  qword_27DE598 = 7;
  dword_27DE5A0 = 1;
  qword_27DE5B0 = 7;
  dword_27DE5B8 = 2;
  qword_27DE5C8 = 7;
  dword_27DE5D0 = 0;
  qword_27DE5F0 = "LEVEL_INCIDENTSLEVEL_NONELEVEL_UNKNOWN";
  qword_27DE608 = "LEVEL_NONELEVEL_UNKNOWN";
  qword_27DE620 = "LEVEL_UNKNOWN";
  unk_27DE628 = 13;
  qword_27DE5D8 = "LEVEL_FULLLEVEL_INCIDENTSLEVEL_NONELEVEL_UNKNOWN";
  qword_27DE5E0 = 10;
  dword_27DE5E8 = 3;
  qword_27DE5F8 = 15;
  dword_27DE600 = 2;
  qword_27DE610 = 10;
  dword_27DE618 = 1;
  dword_27DE630 = 0;
  qword_27DE650 = "VISITED_PLACES_SETTING_OPTED_OUTVISITED_PLACES_SETTING_UNKNOWNVISITED_PLACES_SETTING_UNQUALIFIED";
  qword_27DE668 = "VISITED_PLACES_SETTING_UNKNOWNVISITED_PLACES_SETTING_UNQUALIFIED";
  unk_27DE670 = 30;
  qword_27DE680 = "VISITED_PLACES_SETTING_UNQUALIFIED";
  qword_27DE638 = "VISITED_PLACES_SETTING_OPTED_INVISITED_PLACES_SETTING_OPTED_OUTVISITED_PLACES_SETTING_UNKNOWNVISITED_PLACES_SETTING_UNQUALIFIED";
  qword_27DE640 = 31;
  dword_27DE648 = 3;
  qword_27DE658 = 32;
  dword_27DE660 = 2;
  dword_27DE678 = 0;
  qword_27DE688 = 34;
  dword_27DE690 = 1;
  qword_27DE6B0 = "FULLMODERATESMALL";
  qword_27DE6C8 = "MODERATESMALL";
  qword_27DE698 = "DEFAULTFULLMODERATESMALL";
  unk_27DE6A0 = 7;
  dword_27DE6A8 = 2;
  qword_27DE6B8 = 4;
  dword_27DE6C0 = 1;
  qword_27DE6D0 = 8;
  dword_27DE6D8 = 3;
  qword_27DE6E0 = "SMALL";
  unk_27DE6E8 = 5;
  dword_27DE6F0 = 4;
  qword_27DE710 = "MAP_TYPE_HYBRIDMAP_TYPE_HYBRID_FLYOVERMAP_TYPE_NONEMAP_TYPE_SATELLITEMAP_TYPE_SATELLITE_FLYOVERMAP_TYPE_STANDARDMAP_TYPE_TERRAINMAP_TYPE_TRANSIT";
  unk_27DE718 = 15;
  qword_27DE728 = "MAP_TYPE_HYBRID_FLYOVERMAP_TYPE_NONEMAP_TYPE_SATELLITEMAP_TYPE_SATELLITE_FLYOVERMAP_TYPE_STANDARDMAP_TYPE_TERRAINMAP_TYPE_TRANSIT";
  unk_27DE730 = 23;
  qword_27DE740 = "MAP_TYPE_NONEMAP_TYPE_SATELLITEMAP_TYPE_SATELLITE_FLYOVERMAP_TYPE_STANDARDMAP_TYPE_TERRAINMAP_TYPE_TRANSIT";
  unk_27DE748 = 13;
  qword_27DE770 = "MAP_TYPE_SATELLITE_FLYOVERMAP_TYPE_STANDARDMAP_TYPE_TERRAINMAP_TYPE_TRANSIT";
  qword_27DE788 = "MAP_TYPE_STANDARDMAP_TYPE_TERRAINMAP_TYPE_TRANSIT";
  qword_27DE7A0 = "MAP_TYPE_TERRAINMAP_TYPE_TRANSIT";
  qword_27DE7B8 = "MAP_TYPE_TRANSIT";
  qword_27DE6F8 = "MAP_TYPE_DRIVINGMAP_TYPE_HYBRIDMAP_TYPE_HYBRID_FLYOVERMAP_TYPE_NONEMAP_TYPE_SATELLITEMAP_TYPE_SATELLITE_FLYOVERMAP_TYPE_STANDARDMAP_TYPE_TERRAINMAP_TYPE_TRANSIT";
  qword_27DE700 = 16;
  dword_27DE708 = 8;
  dword_27DE720 = 3;
  dword_27DE738 = 6;
  dword_27DE750 = 0;
  qword_27DE758 = "MAP_TYPE_SATELLITEMAP_TYPE_SATELLITE_FLYOVERMAP_TYPE_STANDARDMAP_TYPE_TERRAINMAP_TYPE_TRANSIT";
  unk_27DE760 = 18;
  dword_27DE768 = 2;
  qword_27DE778 = 26;
  dword_27DE780 = 7;
  qword_27DE790 = 17;
  dword_27DE798 = 1;
  qword_27DE7A8 = 16;
  dword_27DE7B0 = 5;
  qword_27DE7C0 = 16;
  dword_27DE7C8 = 4;
  qword_27DE7E8 = "MapLaunchAction_DirectionActionMapLaunchAction_DisplayModeNavActionMapLaunchAction_ErrorActionMapLaunchAction_ForwardGeocodeActionMapLaunchAction_LowFuelActionMapLaunchAction_MarkUserLocationActionMapLaunchAction_NewWindowActionMapLaunchAction_NotificationRestorationActionMapLaunchAction_OpenLookAroundActionMapLaunchAction_PlaceRefinementActionMapLaunchAction_PresentAnnouncementActionMapLaunchAction_PresentFlyoverActionMapLaunchAction_PresentNavShareETAActionMapLaunchAction_PresentNearbySearchActionMapLaunchAction_PresentParkedCarActionMapLaunchAction_PresentPhotoThumbnailGalleryActionMapLaunchAction_PresentRAPActionMapLaunchAction_PresentTableBookingActionMapLaunchAction_RefineMapItemActionMapLaunchAction_ReportIncidentActionMapLaunchAction_ResetActionMapLaunchAction_ResolveMUIDActionMapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DE800 = "MapLaunchAction_DisplayModeNavActionMapLaunchAction_ErrorActionMapLaunchAction_ForwardGeocodeActionMapLaunchAction_LowFuelActionMapLaunchAction_MarkUserLocationActionMapLaunchAction_NewWindowActionMapLaunchAction_NotificationRestorationActionMapLaunchAction_OpenLookAroundActionMapLaunchAction_PlaceRefinementActionMapLaunchAction_PresentAnnouncementActionMapLaunchAction_PresentFlyoverActionMapLaunchAction_PresentNavShareETAActionMapLaunchAction_PresentNearbySearchActionMapLaunchAction_PresentParkedCarActionMapLaunchAction_PresentPhotoThumbnailGalleryActionMapLaunchAction_PresentRAPActionMapLaunchAction_PresentTableBookingActionMapLaunchAction_RefineMapItemActionMapLaunchAction_ReportIncidentActionMapLaunchAction_ResetActionMapLaunchAction_ResolveMUIDActionMapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DE818 = "MapLaunchAction_ErrorActionMapLaunchAction_ForwardGeocodeActionMapLaunchAction_LowFuelActionMapLaunchAction_MarkUserLocationActionMapLaunchAction_NewWindowActionMapLaunchAction_NotificationRestorationActionMapLaunchAction_OpenLookAroundActionMapLaunchAction_PlaceRefinementActionMapLaunchAction_PresentAnnouncementActionMapLaunchAction_PresentFlyoverActionMapLaunchAction_PresentNavShareETAActionMapLaunchAction_PresentNearbySearchActionMapLaunchAction_PresentParkedCarActionMapLaunchAction_PresentPhotoThumbnailGalleryActionMapLaunchAction_PresentRAPActionMapLaunchAction_PresentTableBookingActionMapLaunchAction_RefineMapItemActionMapLaunchAction_ReportIncidentActionMapLaunchAction_ResetActionMapLaunchAction_ResolveMUIDActionMapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DE830 = "MapLaunchAction_ForwardGeocodeActionMapLaunchAction_LowFuelActionMapLaunchAction_MarkUserLocationActionMapLaunchAction_NewWindowActionMapLaunchAction_NotificationRestorationActionMapLaunchAction_OpenLookAroundActionMapLaunchAction_PlaceRefinementActionMapLaunchAction_PresentAnnouncementActionMapLaunchAction_PresentFlyoverActionMapLaunchAction_PresentNavShareETAActionMapLaunchAction_PresentNearbySearchActionMapLaunchAction_PresentParkedCarActionMapLaunchAction_PresentPhotoThumbnailGalleryActionMapLaunchAction_PresentRAPActionMapLaunchAction_PresentTableBookingActionMapLaunchAction_RefineMapItemActionMapLaunchAction_ReportIncidentActionMapLaunchAction_ResetActionMapLaunchAction_ResolveMUIDActionMapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DE848 = "MapLaunchAction_LowFuelActionMapLaunchAction_MarkUserLocationActionMapLaunchAction_NewWindowActionMapLaunchAction_NotificationRestorationActionMapLaunchAction_OpenLookAroundActionMapLaunchAction_PlaceRefinementActionMapLaunchAction_PresentAnnouncementActionMapLaunchAction_PresentFlyoverActionMapLaunchAction_PresentNavShareETAActionMapLaunchAction_PresentNearbySearchActionMapLaunchAction_PresentParkedCarActionMapLaunchAction_PresentPhotoThumbnailGalleryActionMapLaunchAction_PresentRAPActionMapLaunchAction_PresentTableBookingActionMapLaunchAction_RefineMapItemActionMapLaunchAction_ReportIncidentActionMapLaunchAction_ResetActionMapLaunchAction_ResolveMUIDActionMapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DE860 = "MapLaunchAction_MarkUserLocationActionMapLaunchAction_NewWindowActionMapLaunchAction_NotificationRestorationActionMapLaunchAction_OpenLookAroundActionMapLaunchAction_PlaceRefinementActionMapLaunchAction_PresentAnnouncementActionMapLaunchAction_PresentFlyoverActionMapLaunchAction_PresentNavShareETAActionMapLaunchAction_PresentNearbySearchActionMapLaunchAction_PresentParkedCarActionMapLaunchAction_PresentPhotoThumbnailGalleryActionMapLaunchAction_PresentRAPActionMapLaunchAction_PresentTableBookingActionMapLaunchAction_RefineMapItemActionMapLaunchAction_ReportIncidentActionMapLaunchAction_ResetActionMapLaunchAction_ResolveMUIDActionMapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DE878 = "MapLaunchAction_NewWindowActionMapLaunchAction_NotificationRestorationActionMapLaunchAction_OpenLookAroundActionMapLaunchAction_PlaceRefinementActionMapLaunchAction_PresentAnnouncementActionMapLaunchAction_PresentFlyoverActionMapLaunchAction_PresentNavShareETAActionMapLaunchAction_PresentNearbySearchActionMapLaunchAction_PresentParkedCarActionMapLaunchAction_PresentPhotoThumbnailGalleryActionMapLaunchAction_PresentRAPActionMapLaunchAction_PresentTableBookingActionMapLaunchAction_RefineMapItemActionMapLaunchAction_ReportIncidentActionMapLaunchAction_ResetActionMapLaunchAction_ResolveMUIDActionMapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DE890 = "MapLaunchAction_NotificationRestorationActionMapLaunchAction_OpenLookAroundActionMapLaunchAction_PlaceRefinementActionMapLaunchAction_PresentAnnouncementActionMapLaunchAction_PresentFlyoverActionMapLaunchAction_PresentNavShareETAActionMapLaunchAction_PresentNearbySearchActionMapLaunchAction_PresentParkedCarActionMapLaunchAction_PresentPhotoThumbnailGalleryActionMapLaunchAction_PresentRAPActionMapLaunchAction_PresentTableBookingActionMapLaunchAction_RefineMapItemActionMapLaunchAction_ReportIncidentActionMapLaunchAction_ResetActionMapLaunchAction_ResolveMUIDActionMapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DE8A8 = "MapLaunchAction_OpenLookAroundActionMapLaunchAction_PlaceRefinementActionMapLaunchAction_PresentAnnouncementActionMapLaunchAction_PresentFlyoverActionMapLaunchAction_PresentNavShareETAActionMapLaunchAction_PresentNearbySearchActionMapLaunchAction_PresentParkedCarActionMapLaunchAction_PresentPhotoThumbnailGalleryActionMapLaunchAction_PresentRAPActionMapLaunchAction_PresentTableBookingActionMapLaunchAction_RefineMapItemActionMapLaunchAction_ReportIncidentActionMapLaunchAction_ResetActionMapLaunchAction_ResolveMUIDActionMapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DE8C0 = "MapLaunchAction_PlaceRefinementActionMapLaunchAction_PresentAnnouncementActionMapLaunchAction_PresentFlyoverActionMapLaunchAction_PresentNavShareETAActionMapLaunchAction_PresentNearbySearchActionMapLaunchAction_PresentParkedCarActionMapLaunchAction_PresentPhotoThumbnailGalleryActionMapLaunchAction_PresentRAPActionMapLaunchAction_PresentTableBookingActionMapLaunchAction_RefineMapItemActionMapLaunchAction_ReportIncidentActionMapLaunchAction_ResetActionMapLaunchAction_ResolveMUIDActionMapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DE8D8 = "MapLaunchAction_PresentAnnouncementActionMapLaunchAction_PresentFlyoverActionMapLaunchAction_PresentNavShareETAActionMapLaunchAction_PresentNearbySearchActionMapLaunchAction_PresentParkedCarActionMapLaunchAction_PresentPhotoThumbnailGalleryActionMapLaunchAction_PresentRAPActionMapLaunchAction_PresentTableBookingActionMapLaunchAction_RefineMapItemActionMapLaunchAction_ReportIncidentActionMapLaunchAction_ResetActionMapLaunchAction_ResolveMUIDActionMapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DE8F0 = "MapLaunchAction_PresentFlyoverActionMapLaunchAction_PresentNavShareETAActionMapLaunchAction_PresentNearbySearchActionMapLaunchAction_PresentParkedCarActionMapLaunchAction_PresentPhotoThumbnailGalleryActionMapLaunchAction_PresentRAPActionMapLaunchAction_PresentTableBookingActionMapLaunchAction_RefineMapItemActionMapLaunchAction_ReportIncidentActionMapLaunchAction_ResetActionMapLaunchAction_ResolveMUIDActionMapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DE908 = "MapLaunchAction_PresentNavShareETAActionMapLaunchAction_PresentNearbySearchActionMapLaunchAction_PresentParkedCarActionMapLaunchAction_PresentPhotoThumbnailGalleryActionMapLaunchAction_PresentRAPActionMapLaunchAction_PresentTableBookingActionMapLaunchAction_RefineMapItemActionMapLaunchAction_ReportIncidentActionMapLaunchAction_ResetActionMapLaunchAction_ResolveMUIDActionMapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DE920 = "MapLaunchAction_PresentNearbySearchActionMapLaunchAction_PresentParkedCarActionMapLaunchAction_PresentPhotoThumbnailGalleryActionMapLaunchAction_PresentRAPActionMapLaunchAction_PresentTableBookingActionMapLaunchAction_RefineMapItemActionMapLaunchAction_ReportIncidentActionMapLaunchAction_ResetActionMapLaunchAction_ResolveMUIDActionMapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DE938 = "MapLaunchAction_PresentParkedCarActionMapLaunchAction_PresentPhotoThumbnailGalleryActionMapLaunchAction_PresentRAPActionMapLaunchAction_PresentTableBookingActionMapLaunchAction_RefineMapItemActionMapLaunchAction_ReportIncidentActionMapLaunchAction_ResetActionMapLaunchAction_ResolveMUIDActionMapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DE950 = "MapLaunchAction_PresentPhotoThumbnailGalleryActionMapLaunchAction_PresentRAPActionMapLaunchAction_PresentTableBookingActionMapLaunchAction_RefineMapItemActionMapLaunchAction_ReportIncidentActionMapLaunchAction_ResetActionMapLaunchAction_ResolveMUIDActionMapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DE968 = "MapLaunchAction_PresentRAPActionMapLaunchAction_PresentTableBookingActionMapLaunchAction_RefineMapItemActionMapLaunchAction_ReportIncidentActionMapLaunchAction_ResetActionMapLaunchAction_ResolveMUIDActionMapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DE980 = "MapLaunchAction_PresentTableBookingActionMapLaunchAction_RefineMapItemActionMapLaunchAction_ReportIncidentActionMapLaunchAction_ResetActionMapLaunchAction_ResolveMUIDActionMapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DE998 = "MapLaunchAction_RefineMapItemActionMapLaunchAction_ReportIncidentActionMapLaunchAction_ResetActionMapLaunchAction_ResolveMUIDActionMapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DE9B0 = "MapLaunchAction_ReportIncidentActionMapLaunchAction_ResetActionMapLaunchAction_ResolveMUIDActionMapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DE9C8 = "MapLaunchAction_ResetActionMapLaunchAction_ResolveMUIDActionMapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DE9E0 = "MapLaunchAction_ResolveMUIDActionMapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DE9F8 = "MapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DEA10 = "MapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DEA28 = "MapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DEA40 = "MapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DEA58 = "MapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DEA70 = "MapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DEA88 = "MapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DEAA0 = "MapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DEAB8 = "MapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DEAD0 = "MapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DEAE8 = "MapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DEB00 = "MapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DEB18 = "MapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DEB30 = "MapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DEB48 = "MapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  qword_27DE7D0 = "MapLaunchAction_BrandActionMapLaunchAction_DirectionActionMapLaunchAction_DisplayModeNavActionMapLaunchAction_ErrorActionMapLaunchAction_ForwardGeocodeActionMapLaunchAction_LowFuelActionMapLaunchAction_MarkUserLocationActionMapLaunchAction_NewWindowActionMapLaunchAction_NotificationRestorationActionMapLaunchAction_OpenLookAroundActionMapLaunchAction_PlaceRefinementActionMapLaunchAction_PresentAnnouncementActionMapLaunchAction_PresentFlyoverActionMapLaunchAction_PresentNavShareETAActionMapLaunchAction_PresentNearbySearchActionMapLaunchAction_PresentParkedCarActionMapLaunchAction_PresentPhotoThumbnailGalleryActionMapLaunchAction_PresentRAPActionMapLaunchAction_PresentTableBookingActionMapLaunchAction_RefineMapItemActionMapLaunchAction_ReportIncidentActionMapLaunchAction_ResetActionMapLaunchAction_ResolveMUIDActionMapLaunchAction_RestorationActionMapLaunchAction_ReverseGeocodeActionMapLaunchAction_SearchActionMapLaunchAction_SearchSelectionActionMapLaunchAction_ShareUserLocationActionMapLaunchAction_SharedTripActionMapLaunchAction_ShowAllCuratedCollectionsActionMapLaunchAction_ShowCarDestinationsActionMapLaunchAction_ShowCollectionActionMapLaunchAction_ShowCuratedCollectionActionMapLaunchAction_ShowKeyboardActionMapLaunchAction_ShowLPROnboardingActionMapLaunchAction_ShowPublisherActionMapLaunchAction_ShowSearchInfoActionMapLaunchAction_ShowcaseMapLaunchAction_SiriRestorationActionMapLaunchAction_URLRestorationActionMapLaunchAction_UnknownMapLaunchAction_ZoomMapAction";
  *algn_27DE7D8 = 27;
  dword_27DE7E0 = 5;
  qword_27DE7F0 = 31;
  dword_27DE7F8 = 6;
  qword_27DE808 = 36;
  dword_27DE810 = 7;
  qword_27DE820 = 27;
  dword_27DE828 = 8;
  qword_27DE838 = 36;
  dword_27DE840 = 9;
  qword_27DE850 = 29;
  dword_27DE858 = 10;
  qword_27DE868 = 38;
  dword_27DE870 = 11;
  qword_27DE880 = 31;
  dword_27DE888 = 36;
  qword_27DE898 = 45;
  dword_27DE8A0 = 12;
  qword_27DE8B0 = 36;
  dword_27DE8B8 = 13;
  qword_27DE8C8 = 37;
  dword_27DE8D0 = 14;
  qword_27DE8E0 = 41;
  dword_27DE8E8 = 15;
  qword_27DE8F8 = 36;
  dword_27DE900 = 16;
  qword_27DE910 = 40;
  dword_27DE918 = 17;
  qword_27DE928 = 41;
  dword_27DE930 = 18;
  qword_27DE940 = 38;
  dword_27DE948 = 19;
  qword_27DE958 = 50;
  dword_27DE960 = 21;
  qword_27DE970 = 32;
  dword_27DE978 = 20;
  qword_27DE988 = 41;
  dword_27DE990 = 22;
  qword_27DE9A0 = 35;
  dword_27DE9A8 = 23;
  qword_27DE9B8 = 36;
  dword_27DE9C0 = 38;
  qword_27DE9D0 = 27;
  dword_27DE9D8 = 24;
  qword_27DE9E8 = 33;
  dword_27DE9F0 = 25;
  qword_27DEA00 = 33;
  dword_27DEA08 = 26;
  qword_27DEA18 = 36;
  dword_27DEA20 = 27;
  qword_27DEA30 = 28;
  dword_27DEA38 = 28;
  qword_27DEA48 = 37;
  dword_27DEA50 = 29;
  qword_27DEA60 = 39;
  dword_27DEA68 = 30;
  qword_27DEA78 = 32;
  dword_27DEA80 = 3;
  qword_27DEA90 = 47;
  dword_27DEA98 = 37;
  qword_27DEAA8 = 41;
  dword_27DEAB0 = 2;
  qword_27DEAC0 = 36;
  dword_27DEAC8 = 4;
  qword_27DEAD8 = 43;
  dword_27DEAE0 = 34;
  qword_27DEAF0 = 34;
  dword_27DEAF8 = 31;
  qword_27DEB08 = 39;
  dword_27DEB10 = 1;
  qword_27DEB20 = 35;
  dword_27DEB28 = 35;
  qword_27DEB38 = 36;
  dword_27DEB40 = 32;
  qword_27DF2E0 = "PROTOCOL_TYPE_SPDY_3";
  unk_27DF2E8 = 20;
  dword_27DF2F0 = 6;
  qword_27DF310 = "RESOURCE_FETCH_TYPE_NETWORK_LOADRESOURCE_FETCH_TYPE_SERVER_PUSHRESOURCE_FETCH_TYPE_UNKNOWN";
  unk_27DF318 = 32;
  qword_27DF340 = "RESOURCE_FETCH_TYPE_UNKNOWN";
  unk_27DF348 = 27;
  qword_27DF2F8 = "RESOURCE_FETCH_TYPE_LOCAL_CACHERESOURCE_FETCH_TYPE_NETWORK_LOADRESOURCE_FETCH_TYPE_SERVER_PUSHRESOURCE_FETCH_TYPE_UNKNOWN";
  qword_27DF300 = 31;
  dword_27DF308 = 3;
  dword_27DF320 = 1;
  qword_27DF328 = "RESOURCE_FETCH_TYPE_SERVER_PUSHRESOURCE_FETCH_TYPE_UNKNOWN";
  unk_27DF330 = 31;
  dword_27DF338 = 2;
  dword_27DF350 = 0;
  qword_27DF370 = "TILE_CACHEUNKNOWN_CACHE_TYPE";
  unk_27DF378 = 10;
  qword_27DF388 = "UNKNOWN_CACHE_TYPE";
  unk_27DF390 = 18;
  qword_27DF358 = "LOCATION_SHIFT_CACHETILE_CACHEUNKNOWN_CACHE_TYPE";
  unk_27DF360 = 20;
  dword_27DF368 = 2;
  dword_27DF380 = 1;
  dword_27DF398 = 0;
  qword_27DF3B8 = "STALE_USABLEUNAVAILABLEUNKNOWN";
  unk_27DF3C0 = 12;
  qword_27DF3D0 = "UNAVAILABLEUNKNOWN";
  qword_27DF3A0 = "STALE_UNUSABLESTALE_USABLEUNAVAILABLEUNKNOWN";
  *algn_27DF3A8 = 14;
  dword_27DF3B0 = 2;
  dword_27DF3C8 = 3;
  qword_27DF3D8 = 11;
  dword_27DF3E0 = 1;
  qword_27DF3E8 = "UNKNOWN";
  unk_27DF3F0 = 7;
  dword_27DF3F8 = 0;
  qword_27DF418 = "NAVPROACTIVEPROACTIVE_REFRESHPROACTIVE_REGIONPROACTIVE_REGION_AND_REFRESHUNKNOWN";
  qword_27DF430 = "PROACTIVEPROACTIVE_REFRESHPROACTIVE_REGIONPROACTIVE_REGION_AND_REFRESHUNKNOWN";
  unk_27DF438 = 9;
  qword_27DF448 = "PROACTIVE_REFRESHPROACTIVE_REGIONPROACTIVE_REGION_AND_REFRESHUNKNOWN";
  unk_27DF450 = 17;
  qword_27DF460 = "PROACTIVE_REGIONPROACTIVE_REGION_AND_REFRESHUNKNOWN";
  qword_27DF478 = "PROACTIVE_REGION_AND_REFRESHUNKNOWN";
  qword_27DF490 = "UNKNOWN";
  qword_27DF400 = "INTERACTIVENAVPROACTIVEPROACTIVE_REFRESHPROACTIVE_REGIONPROACTIVE_REGION_AND_REFRESHUNKNOWN";
  *algn_27DF408 = 11;
  dword_27DF410 = 1;
  qword_27DF420 = 3;
  dword_27DF428 = 2;
  dword_27DF440 = 3;
  dword_27DF458 = 5;
  qword_27DF468 = 16;
  dword_27DF470 = 4;
  qword_27DF480 = 28;
  dword_27DF488 = 6;
  qword_27DF498 = 7;
  dword_27DF4A0 = 0;
  qword_27DF4C0 = "ERROR_TYPE_NO_NETWORKERROR_TYPE_TIMEOUTERROR_TYPE_UNKNOWN";
  qword_27DF4D8 = "ERROR_TYPE_TIMEOUTERROR_TYPE_UNKNOWN";
  qword_27DF4A8 = "ERROR_TYPE_LOST_CONNECTIVITYERROR_TYPE_NO_NETWORKERROR_TYPE_TIMEOUTERROR_TYPE_UNKNOWN";
  unk_27DF4B0 = 28;
  dword_27DF4B8 = 4;
  qword_27DF4C8 = 21;
  dword_27DF4D0 = 2;
  qword_27DF4E0 = 18;
  dword_27DF4E8 = 3;
  qword_27DF4F0 = "ERROR_TYPE_UNKNOWN";
  unk_27DF4F8 = 18;
  dword_27DF500 = 1;
  qword_27DF538 = "GRID_END_STATE_ERRORGRID_END_STATE_UNKNOWN";
  qword_27DF508 = "GRID_END_STATE_CANCELEDGRID_END_STATE_COMPLETEGRID_END_STATE_ERRORGRID_END_STATE_UNKNOWN";
  qword_27DF510 = 23;
  dword_27DF518 = 3;
  qword_27DF520 = "GRID_END_STATE_COMPLETEGRID_END_STATE_ERRORGRID_END_STATE_UNKNOWN";
  unk_27DF528 = 23;
  dword_27DF530 = 1;
  qword_27DF540 = 20;
  dword_27DF548 = 2;
  qword_27DF550 = "GRID_END_STATE_UNKNOWN";
  unk_27DF558 = 22;
  dword_27DF560 = 0;
  qword_27DF580 = "PREVIOUS_STATE_MAPPREVIOUS_STATE_NONE";
  unk_27DF588 = 18;
  qword_27DF568 = "PREVIOUS_STATE_GRIDPREVIOUS_STATE_MAPPREVIOUS_STATE_NONE";
  qword_27DF570 = 19;
  dword_27DF578 = 2;
  dword_27DF590 = 3;
  qword_27DF598 = "PREVIOUS_STATE_NONE";
  unk_27DF5A0 = 19;
  dword_27DF5A8 = 1;
  qword_27DF5C8 = "DISPLAY_TYPE_NAVIGATION";
  unk_27DF5D0 = 23;
  qword_27DF5B0 = "DISPLAY_TYPE_MAPDISPLAY_TYPE_NAVIGATION";
  *algn_27DF5B8 = 16;
  dword_27DF5C0 = 1;
  dword_27DF5D8 = 2;
  qword_27DF5F8 = "MUNIN_MOVE_LOCATION";
  unk_27DF600 = 19;
  qword_27DF5E0 = "MUNIN_ENTER_LOCATIONMUNIN_MOVE_LOCATION";
  *algn_27DF5E8 = 20;
  dword_27DF5F0 = 0;
  dword_27DF608 = 1;
  qword_27DF628 = "ThrottleType_SPECIFICThrottleType_UNDEFINED";
  unk_27DF630 = 21;
  qword_27DF640 = "ThrottleType_UNDEFINED";
  unk_27DF648 = 22;
  qword_27DF610 = "ThrottleType_ALLThrottleType_SPECIFICThrottleType_UNDEFINED";
  *algn_27DF618 = 16;
  dword_27DF620 = 1;
  dword_27DF638 = 2;
  dword_27DF650 = 0;
  qword_27DF670 = "ThrottleMode_SHORT_INTERVALThrottleMode_UNDEFINED";
  unk_27DF678 = 27;
  qword_27DF688 = "ThrottleMode_UNDEFINED";
  unk_27DF690 = 22;
  qword_27DF658 = "ThrottleMode_LONG_INTERVALThrottleMode_SHORT_INTERVALThrottleMode_UNDEFINED";
  unk_27DF660 = 26;
  dword_27DF668 = 2;
  dword_27DF680 = 1;
  dword_27DF698 = 0;
  qword_27DF6B8 = "MAP_KIT_COUNT_TYPE_MAP_VIEW_FOREGROUNDEDMAP_KIT_COUNT_TYPE_PLACECARD_SHOWNMAP_KIT_COUNT_TYPE_SNAPSHOTTER_USED";
  unk_27DF6C0 = 40;
  qword_27DF6D0 = "MAP_KIT_COUNT_TYPE_PLACECARD_SHOWNMAP_KIT_COUNT_TYPE_SNAPSHOTTER_USED";
  unk_27DF6D8 = 34;
  qword_27DF6E8 = "MAP_KIT_COUNT_TYPE_SNAPSHOTTER_USED";
  unk_27DF6F0 = 35;
  qword_27DF6A0 = "MAP_KIT_COUNT_TYPE_END_SENTINELMAP_KIT_COUNT_TYPE_MAP_VIEW_FOREGROUNDEDMAP_KIT_COUNT_TYPE_PLACECARD_SHOWNMAP_KIT_COUNT_TYPE_SNAPSHOTTER_USED";
  *algn_27DF6A8 = 31;
  dword_27DF6B0 = 3;
  dword_27DF6C8 = 0;
  dword_27DF6E0 = 2;
  dword_27DF6F8 = 1;
  qword_27DF718 = "MAP_KIT_COUNTS_APP_TYPE_END_SENTINELMAP_KIT_COUNTS_APP_TYPE_FIRST_PARTYMAP_KIT_COUNTS_APP_TYPE_SECOND_PARTYMAP_KIT_COUNTS_APP_TYPE_THIRD_PARTY";
  qword_27DF730 = "MAP_KIT_COUNTS_APP_TYPE_FIRST_PARTYMAP_KIT_COUNTS_APP_TYPE_SECOND_PARTYMAP_KIT_COUNTS_APP_TYPE_THIRD_PARTY";
  qword_27DF748 = "MAP_KIT_COUNTS_APP_TYPE_SECOND_PARTYMAP_KIT_COUNTS_APP_TYPE_THIRD_PARTY";
  qword_27DF760 = "MAP_KIT_COUNTS_APP_TYPE_THIRD_PARTY";
  qword_27DF700 = "MAP_KIT_COUNTS_APP_TYPE_DAEMONSMAP_KIT_COUNTS_APP_TYPE_END_SENTINELMAP_KIT_COUNTS_APP_TYPE_FIRST_PARTYMAP_KIT_COUNTS_APP_TYPE_SECOND_PARTYMAP_KIT_COUNTS_APP_TYPE_THIRD_PARTY";
  *algn_27DF708 = 31;
  dword_27DF710 = 3;
  qword_27DF720 = 36;
  dword_27DF728 = 4;
  qword_27DF738 = 35;
  dword_27DF740 = 0;
  qword_27DF750 = 36;
  dword_27DF758 = 1;
  qword_27DF768 = 35;
  dword_27DF770 = 2;
  qword_27DF790 = "MSG_ENTRY_TYPE_CALENDAR_EVENTMSG_ENTRY_TYPE_CARPLAY_LOW_ENERGYMSG_ENTRY_TYPE_CAR_RENTALMSG_ENTRY_TYPE_FAVORITE_PLACEMSG_ENTRY_TYPE_FREQUENT_LOCATIONMSG_ENTRY_TYPE_HOMEMSG_ENTRY_TYPE_HOTELMSG_ENTRY_TYPE_PARKED_CARMSG_ENTRY_TYPE_PORTRAITMSG_ENTRY_TYPE_RECENT_HISTORYMSG_ENTRY_TYPE_RESTAURANT_RESERVATIONMSG_ENTRY_TYPE_RESUME_ROUTEMSG_ENTRY_TYPE_RIDESHARINGMSG_ENTRY_TYPE_TICKETED_EVENTMSG_ENTRY_TYPE_TRAVEL_FLIGHTMSG_ENTRY_TYPE_UNKNOWNMSG_ENTRY_TYPE_USER_PLACEMSG_ENTRY_TYPE_WORK";
  qword_27DF7A8 = "MSG_ENTRY_TYPE_CARPLAY_LOW_ENERGYMSG_ENTRY_TYPE_CAR_RENTALMSG_ENTRY_TYPE_FAVORITE_PLACEMSG_ENTRY_TYPE_FREQUENT_LOCATIONMSG_ENTRY_TYPE_HOMEMSG_ENTRY_TYPE_HOTELMSG_ENTRY_TYPE_PARKED_CARMSG_ENTRY_TYPE_PORTRAITMSG_ENTRY_TYPE_RECENT_HISTORYMSG_ENTRY_TYPE_RESTAURANT_RESERVATIONMSG_ENTRY_TYPE_RESUME_ROUTEMSG_ENTRY_TYPE_RIDESHARINGMSG_ENTRY_TYPE_TICKETED_EVENTMSG_ENTRY_TYPE_TRAVEL_FLIGHTMSG_ENTRY_TYPE_UNKNOWNMSG_ENTRY_TYPE_USER_PLACEMSG_ENTRY_TYPE_WORK";
  qword_27DF7C0 = "MSG_ENTRY_TYPE_CAR_RENTALMSG_ENTRY_TYPE_FAVORITE_PLACEMSG_ENTRY_TYPE_FREQUENT_LOCATIONMSG_ENTRY_TYPE_HOMEMSG_ENTRY_TYPE_HOTELMSG_ENTRY_TYPE_PARKED_CARMSG_ENTRY_TYPE_PORTRAITMSG_ENTRY_TYPE_RECENT_HISTORYMSG_ENTRY_TYPE_RESTAURANT_RESERVATIONMSG_ENTRY_TYPE_RESUME_ROUTEMSG_ENTRY_TYPE_RIDESHARINGMSG_ENTRY_TYPE_TICKETED_EVENTMSG_ENTRY_TYPE_TRAVEL_FLIGHTMSG_ENTRY_TYPE_UNKNOWNMSG_ENTRY_TYPE_USER_PLACEMSG_ENTRY_TYPE_WORK";
  qword_27DF7D8 = "MSG_ENTRY_TYPE_FAVORITE_PLACEMSG_ENTRY_TYPE_FREQUENT_LOCATIONMSG_ENTRY_TYPE_HOMEMSG_ENTRY_TYPE_HOTELMSG_ENTRY_TYPE_PARKED_CARMSG_ENTRY_TYPE_PORTRAITMSG_ENTRY_TYPE_RECENT_HISTORYMSG_ENTRY_TYPE_RESTAURANT_RESERVATIONMSG_ENTRY_TYPE_RESUME_ROUTEMSG_ENTRY_TYPE_RIDESHARINGMSG_ENTRY_TYPE_TICKETED_EVENTMSG_ENTRY_TYPE_TRAVEL_FLIGHTMSG_ENTRY_TYPE_UNKNOWNMSG_ENTRY_TYPE_USER_PLACEMSG_ENTRY_TYPE_WORK";
  qword_27DF7F0 = "MSG_ENTRY_TYPE_FREQUENT_LOCATIONMSG_ENTRY_TYPE_HOMEMSG_ENTRY_TYPE_HOTELMSG_ENTRY_TYPE_PARKED_CARMSG_ENTRY_TYPE_PORTRAITMSG_ENTRY_TYPE_RECENT_HISTORYMSG_ENTRY_TYPE_RESTAURANT_RESERVATIONMSG_ENTRY_TYPE_RESUME_ROUTEMSG_ENTRY_TYPE_RIDESHARINGMSG_ENTRY_TYPE_TICKETED_EVENTMSG_ENTRY_TYPE_TRAVEL_FLIGHTMSG_ENTRY_TYPE_UNKNOWNMSG_ENTRY_TYPE_USER_PLACEMSG_ENTRY_TYPE_WORK";
  qword_27DF808 = "MSG_ENTRY_TYPE_HOMEMSG_ENTRY_TYPE_HOTELMSG_ENTRY_TYPE_PARKED_CARMSG_ENTRY_TYPE_PORTRAITMSG_ENTRY_TYPE_RECENT_HISTORYMSG_ENTRY_TYPE_RESTAURANT_RESERVATIONMSG_ENTRY_TYPE_RESUME_ROUTEMSG_ENTRY_TYPE_RIDESHARINGMSG_ENTRY_TYPE_TICKETED_EVENTMSG_ENTRY_TYPE_TRAVEL_FLIGHTMSG_ENTRY_TYPE_UNKNOWNMSG_ENTRY_TYPE_USER_PLACEMSG_ENTRY_TYPE_WORK";
  qword_27DF820 = "MSG_ENTRY_TYPE_HOTELMSG_ENTRY_TYPE_PARKED_CARMSG_ENTRY_TYPE_PORTRAITMSG_ENTRY_TYPE_RECENT_HISTORYMSG_ENTRY_TYPE_RESTAURANT_RESERVATIONMSG_ENTRY_TYPE_RESUME_ROUTEMSG_ENTRY_TYPE_RIDESHARINGMSG_ENTRY_TYPE_TICKETED_EVENTMSG_ENTRY_TYPE_TRAVEL_FLIGHTMSG_ENTRY_TYPE_UNKNOWNMSG_ENTRY_TYPE_USER_PLACEMSG_ENTRY_TYPE_WORK";
  qword_27DF838 = "MSG_ENTRY_TYPE_PARKED_CARMSG_ENTRY_TYPE_PORTRAITMSG_ENTRY_TYPE_RECENT_HISTORYMSG_ENTRY_TYPE_RESTAURANT_RESERVATIONMSG_ENTRY_TYPE_RESUME_ROUTEMSG_ENTRY_TYPE_RIDESHARINGMSG_ENTRY_TYPE_TICKETED_EVENTMSG_ENTRY_TYPE_TRAVEL_FLIGHTMSG_ENTRY_TYPE_UNKNOWNMSG_ENTRY_TYPE_USER_PLACEMSG_ENTRY_TYPE_WORK";
  qword_27DF850 = "MSG_ENTRY_TYPE_PORTRAITMSG_ENTRY_TYPE_RECENT_HISTORYMSG_ENTRY_TYPE_RESTAURANT_RESERVATIONMSG_ENTRY_TYPE_RESUME_ROUTEMSG_ENTRY_TYPE_RIDESHARINGMSG_ENTRY_TYPE_TICKETED_EVENTMSG_ENTRY_TYPE_TRAVEL_FLIGHTMSG_ENTRY_TYPE_UNKNOWNMSG_ENTRY_TYPE_USER_PLACEMSG_ENTRY_TYPE_WORK";
  qword_27DF868 = "MSG_ENTRY_TYPE_RECENT_HISTORYMSG_ENTRY_TYPE_RESTAURANT_RESERVATIONMSG_ENTRY_TYPE_RESUME_ROUTEMSG_ENTRY_TYPE_RIDESHARINGMSG_ENTRY_TYPE_TICKETED_EVENTMSG_ENTRY_TYPE_TRAVEL_FLIGHTMSG_ENTRY_TYPE_UNKNOWNMSG_ENTRY_TYPE_USER_PLACEMSG_ENTRY_TYPE_WORK";
  qword_27DF880 = "MSG_ENTRY_TYPE_RESTAURANT_RESERVATIONMSG_ENTRY_TYPE_RESUME_ROUTEMSG_ENTRY_TYPE_RIDESHARINGMSG_ENTRY_TYPE_TICKETED_EVENTMSG_ENTRY_TYPE_TRAVEL_FLIGHTMSG_ENTRY_TYPE_UNKNOWNMSG_ENTRY_TYPE_USER_PLACEMSG_ENTRY_TYPE_WORK";
  qword_27DF898 = "MSG_ENTRY_TYPE_RESUME_ROUTEMSG_ENTRY_TYPE_RIDESHARINGMSG_ENTRY_TYPE_TICKETED_EVENTMSG_ENTRY_TYPE_TRAVEL_FLIGHTMSG_ENTRY_TYPE_UNKNOWNMSG_ENTRY_TYPE_USER_PLACEMSG_ENTRY_TYPE_WORK";
  qword_27DF8B0 = "MSG_ENTRY_TYPE_RIDESHARINGMSG_ENTRY_TYPE_TICKETED_EVENTMSG_ENTRY_TYPE_TRAVEL_FLIGHTMSG_ENTRY_TYPE_UNKNOWNMSG_ENTRY_TYPE_USER_PLACEMSG_ENTRY_TYPE_WORK";
  qword_27DF8C8 = "MSG_ENTRY_TYPE_TICKETED_EVENTMSG_ENTRY_TYPE_TRAVEL_FLIGHTMSG_ENTRY_TYPE_UNKNOWNMSG_ENTRY_TYPE_USER_PLACEMSG_ENTRY_TYPE_WORK";
  qword_27DF8E0 = "MSG_ENTRY_TYPE_TRAVEL_FLIGHTMSG_ENTRY_TYPE_UNKNOWNMSG_ENTRY_TYPE_USER_PLACEMSG_ENTRY_TYPE_WORK";
  qword_27DF8F8 = "MSG_ENTRY_TYPE_UNKNOWNMSG_ENTRY_TYPE_USER_PLACEMSG_ENTRY_TYPE_WORK";
  qword_27DF910 = "MSG_ENTRY_TYPE_USER_PLACEMSG_ENTRY_TYPE_WORK";
  qword_27DF928 = "MSG_ENTRY_TYPE_WORK";
  qword_27DF778 = "MSG_ENTRY_TYPE_APP_CONNECTIONMSG_ENTRY_TYPE_CALENDAR_EVENTMSG_ENTRY_TYPE_CARPLAY_LOW_ENERGYMSG_ENTRY_TYPE_CAR_RENTALMSG_ENTRY_TYPE_FAVORITE_PLACEMSG_ENTRY_TYPE_FREQUENT_LOCATIONMSG_ENTRY_TYPE_HOMEMSG_ENTRY_TYPE_HOTELMSG_ENTRY_TYPE_PARKED_CARMSG_ENTRY_TYPE_PORTRAITMSG_ENTRY_TYPE_RECENT_HISTORYMSG_ENTRY_TYPE_RESTAURANT_RESERVATIONMSG_ENTRY_TYPE_RESUME_ROUTEMSG_ENTRY_TYPE_RIDESHARINGMSG_ENTRY_TYPE_TICKETED_EVENTMSG_ENTRY_TYPE_TRAVEL_FLIGHTMSG_ENTRY_TYPE_UNKNOWNMSG_ENTRY_TYPE_USER_PLACEMSG_ENTRY_TYPE_WORK";
  qword_27DF780 = 29;
  dword_27DF788 = 12;
  qword_27DF798 = 29;
  dword_27DF7A0 = 3;
  qword_27DF7B0 = 33;
  dword_27DF7B8 = 10;
  qword_27DF7C8 = 25;
  dword_27DF7D0 = 14;
  qword_27DF7E0 = 29;
  dword_27DF7E8 = 6;
  qword_27DF7F8 = 32;
  dword_27DF800 = 4;
  qword_27DF810 = 19;
  dword_27DF818 = 1;
  qword_27DF828 = 20;
  dword_27DF830 = 13;
  qword_27DF840 = 25;
  dword_27DF848 = 7;
  qword_27DF858 = 23;
  dword_27DF860 = 17;
  qword_27DF870 = 29;
  dword_27DF878 = 5;
  qword_27DF888 = 37;
  dword_27DF890 = 8;
  qword_27DF8A0 = 27;
  dword_27DF8A8 = 11;
  qword_27DF8B8 = 26;
  dword_27DF8C0 = 9;
  qword_27DF8D0 = 29;
  dword_27DF8D8 = 16;
  qword_27DF8E8 = 28;
  dword_27DF8F0 = 15;
  qword_27DF900 = 22;
  dword_27DF908 = 0;
  qword_27DF918 = 25;
  dword_27DF920 = 18;
  qword_27DF930 = 19;
  dword_27DF938 = 2;
  qword_27DF958 = "MSG_DISTANCE_BUCKET_UNKNOWNMSG_DISTANCE_BUCKET_VERY_NEARMSG_DISTANCE_BUCKET_WALKING_DISTANCE";
  unk_27DF960 = 27;
  qword_27DF970 = "MSG_DISTANCE_BUCKET_VERY_NEARMSG_DISTANCE_BUCKET_WALKING_DISTANCE";
  unk_27DF978 = 29;
  qword_27DF988 = "MSG_DISTANCE_BUCKET_WALKING_DISTANCE";
  unk_27DF990 = 36;
  qword_27DF940 = "MSG_DISTANCE_BUCKET_FARMSG_DISTANCE_BUCKET_UNKNOWNMSG_DISTANCE_BUCKET_VERY_NEARMSG_DISTANCE_BUCKET_WALKING_DISTANCE";
  *algn_27DF948 = 23;
  dword_27DF950 = 3;
  dword_27DF968 = 0;
  dword_27DF980 = 1;
  dword_27DF998 = 2;
  qword_27DF9B8 = "MSG_WEATHER_TYPE_CONDITION_BLOWING_SNOWMSG_WEATHER_TYPE_CONDITION_BLUSTERYMSG_WEATHER_TYPE_CONDITION_CLEARMSG_WEATHER_TYPE_CONDITION_CLOUDYMSG_WEATHER_TYPE_CONDITION_COLDMSG_WEATHER_TYPE_CONDITION_DRIZZLEMSG_WEATHER_TYPE_CONDITION_DUSTMSG_WEATHER_TYPE_CONDITION_FOGGYMSG_WEATHER_TYPE_CONDITION_FREEZING_DRIZZLEMSG_WEATHER_TYPE_CONDITION_FREEZING_RAINMSG_WEATHER_TYPE_CONDITION_HAILMSG_WEATHER_TYPE_CONDITION_HAZEMSG_WEATHER_TYPE_CONDITION_HEAVY_RAINMSG_WEATHER_TYPE_CONDITION_HEAVY_SNOWMSG_WEATHER_TYPE_CONDITION_HOTMSG_WEATHER_TYPE_CONDITION_HURRICANEMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSHOWERSMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_LIGHT_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_HAILMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SNOWMSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DF9D0 = "MSG_WEATHER_TYPE_CONDITION_BLUSTERYMSG_WEATHER_TYPE_CONDITION_CLEARMSG_WEATHER_TYPE_CONDITION_CLOUDYMSG_WEATHER_TYPE_CONDITION_COLDMSG_WEATHER_TYPE_CONDITION_DRIZZLEMSG_WEATHER_TYPE_CONDITION_DUSTMSG_WEATHER_TYPE_CONDITION_FOGGYMSG_WEATHER_TYPE_CONDITION_FREEZING_DRIZZLEMSG_WEATHER_TYPE_CONDITION_FREEZING_RAINMSG_WEATHER_TYPE_CONDITION_HAILMSG_WEATHER_TYPE_CONDITION_HAZEMSG_WEATHER_TYPE_CONDITION_HEAVY_RAINMSG_WEATHER_TYPE_CONDITION_HEAVY_SNOWMSG_WEATHER_TYPE_CONDITION_HOTMSG_WEATHER_TYPE_CONDITION_HURRICANEMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSHOWERSMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_LIGHT_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_HAILMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SNOWMSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DF9E8 = "MSG_WEATHER_TYPE_CONDITION_CLEARMSG_WEATHER_TYPE_CONDITION_CLOUDYMSG_WEATHER_TYPE_CONDITION_COLDMSG_WEATHER_TYPE_CONDITION_DRIZZLEMSG_WEATHER_TYPE_CONDITION_DUSTMSG_WEATHER_TYPE_CONDITION_FOGGYMSG_WEATHER_TYPE_CONDITION_FREEZING_DRIZZLEMSG_WEATHER_TYPE_CONDITION_FREEZING_RAINMSG_WEATHER_TYPE_CONDITION_HAILMSG_WEATHER_TYPE_CONDITION_HAZEMSG_WEATHER_TYPE_CONDITION_HEAVY_RAINMSG_WEATHER_TYPE_CONDITION_HEAVY_SNOWMSG_WEATHER_TYPE_CONDITION_HOTMSG_WEATHER_TYPE_CONDITION_HURRICANEMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSHOWERSMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_LIGHT_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_HAILMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SNOWMSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFA00 = "MSG_WEATHER_TYPE_CONDITION_CLOUDYMSG_WEATHER_TYPE_CONDITION_COLDMSG_WEATHER_TYPE_CONDITION_DRIZZLEMSG_WEATHER_TYPE_CONDITION_DUSTMSG_WEATHER_TYPE_CONDITION_FOGGYMSG_WEATHER_TYPE_CONDITION_FREEZING_DRIZZLEMSG_WEATHER_TYPE_CONDITION_FREEZING_RAINMSG_WEATHER_TYPE_CONDITION_HAILMSG_WEATHER_TYPE_CONDITION_HAZEMSG_WEATHER_TYPE_CONDITION_HEAVY_RAINMSG_WEATHER_TYPE_CONDITION_HEAVY_SNOWMSG_WEATHER_TYPE_CONDITION_HOTMSG_WEATHER_TYPE_CONDITION_HURRICANEMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSHOWERSMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_LIGHT_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_HAILMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SNOWMSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFA18 = "MSG_WEATHER_TYPE_CONDITION_COLDMSG_WEATHER_TYPE_CONDITION_DRIZZLEMSG_WEATHER_TYPE_CONDITION_DUSTMSG_WEATHER_TYPE_CONDITION_FOGGYMSG_WEATHER_TYPE_CONDITION_FREEZING_DRIZZLEMSG_WEATHER_TYPE_CONDITION_FREEZING_RAINMSG_WEATHER_TYPE_CONDITION_HAILMSG_WEATHER_TYPE_CONDITION_HAZEMSG_WEATHER_TYPE_CONDITION_HEAVY_RAINMSG_WEATHER_TYPE_CONDITION_HEAVY_SNOWMSG_WEATHER_TYPE_CONDITION_HOTMSG_WEATHER_TYPE_CONDITION_HURRICANEMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSHOWERSMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_LIGHT_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_HAILMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SNOWMSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFA30 = "MSG_WEATHER_TYPE_CONDITION_DRIZZLEMSG_WEATHER_TYPE_CONDITION_DUSTMSG_WEATHER_TYPE_CONDITION_FOGGYMSG_WEATHER_TYPE_CONDITION_FREEZING_DRIZZLEMSG_WEATHER_TYPE_CONDITION_FREEZING_RAINMSG_WEATHER_TYPE_CONDITION_HAILMSG_WEATHER_TYPE_CONDITION_HAZEMSG_WEATHER_TYPE_CONDITION_HEAVY_RAINMSG_WEATHER_TYPE_CONDITION_HEAVY_SNOWMSG_WEATHER_TYPE_CONDITION_HOTMSG_WEATHER_TYPE_CONDITION_HURRICANEMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSHOWERSMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_LIGHT_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_HAILMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SNOWMSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFA48 = "MSG_WEATHER_TYPE_CONDITION_DUSTMSG_WEATHER_TYPE_CONDITION_FOGGYMSG_WEATHER_TYPE_CONDITION_FREEZING_DRIZZLEMSG_WEATHER_TYPE_CONDITION_FREEZING_RAINMSG_WEATHER_TYPE_CONDITION_HAILMSG_WEATHER_TYPE_CONDITION_HAZEMSG_WEATHER_TYPE_CONDITION_HEAVY_RAINMSG_WEATHER_TYPE_CONDITION_HEAVY_SNOWMSG_WEATHER_TYPE_CONDITION_HOTMSG_WEATHER_TYPE_CONDITION_HURRICANEMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSHOWERSMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_LIGHT_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_HAILMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SNOWMSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFA60 = "MSG_WEATHER_TYPE_CONDITION_FOGGYMSG_WEATHER_TYPE_CONDITION_FREEZING_DRIZZLEMSG_WEATHER_TYPE_CONDITION_FREEZING_RAINMSG_WEATHER_TYPE_CONDITION_HAILMSG_WEATHER_TYPE_CONDITION_HAZEMSG_WEATHER_TYPE_CONDITION_HEAVY_RAINMSG_WEATHER_TYPE_CONDITION_HEAVY_SNOWMSG_WEATHER_TYPE_CONDITION_HOTMSG_WEATHER_TYPE_CONDITION_HURRICANEMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSHOWERSMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_LIGHT_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_HAILMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SNOWMSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFA78 = "MSG_WEATHER_TYPE_CONDITION_FREEZING_DRIZZLEMSG_WEATHER_TYPE_CONDITION_FREEZING_RAINMSG_WEATHER_TYPE_CONDITION_HAILMSG_WEATHER_TYPE_CONDITION_HAZEMSG_WEATHER_TYPE_CONDITION_HEAVY_RAINMSG_WEATHER_TYPE_CONDITION_HEAVY_SNOWMSG_WEATHER_TYPE_CONDITION_HOTMSG_WEATHER_TYPE_CONDITION_HURRICANEMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSHOWERSMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_LIGHT_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_HAILMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SNOWMSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFA90 = "MSG_WEATHER_TYPE_CONDITION_FREEZING_RAINMSG_WEATHER_TYPE_CONDITION_HAILMSG_WEATHER_TYPE_CONDITION_HAZEMSG_WEATHER_TYPE_CONDITION_HEAVY_RAINMSG_WEATHER_TYPE_CONDITION_HEAVY_SNOWMSG_WEATHER_TYPE_CONDITION_HOTMSG_WEATHER_TYPE_CONDITION_HURRICANEMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSHOWERSMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_LIGHT_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_HAILMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SNOWMSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFAA8 = "MSG_WEATHER_TYPE_CONDITION_HAILMSG_WEATHER_TYPE_CONDITION_HAZEMSG_WEATHER_TYPE_CONDITION_HEAVY_RAINMSG_WEATHER_TYPE_CONDITION_HEAVY_SNOWMSG_WEATHER_TYPE_CONDITION_HOTMSG_WEATHER_TYPE_CONDITION_HURRICANEMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSHOWERSMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_LIGHT_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_HAILMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SNOWMSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFAC0 = "MSG_WEATHER_TYPE_CONDITION_HAZEMSG_WEATHER_TYPE_CONDITION_HEAVY_RAINMSG_WEATHER_TYPE_CONDITION_HEAVY_SNOWMSG_WEATHER_TYPE_CONDITION_HOTMSG_WEATHER_TYPE_CONDITION_HURRICANEMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSHOWERSMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_LIGHT_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_HAILMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SNOWMSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFAD8 = "MSG_WEATHER_TYPE_CONDITION_HEAVY_RAINMSG_WEATHER_TYPE_CONDITION_HEAVY_SNOWMSG_WEATHER_TYPE_CONDITION_HOTMSG_WEATHER_TYPE_CONDITION_HURRICANEMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSHOWERSMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_LIGHT_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_HAILMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SNOWMSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFAF0 = "MSG_WEATHER_TYPE_CONDITION_HEAVY_SNOWMSG_WEATHER_TYPE_CONDITION_HOTMSG_WEATHER_TYPE_CONDITION_HURRICANEMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSHOWERSMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_LIGHT_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_HAILMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SNOWMSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFB08 = "MSG_WEATHER_TYPE_CONDITION_HOTMSG_WEATHER_TYPE_CONDITION_HURRICANEMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSHOWERSMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_LIGHT_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_HAILMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SNOWMSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFB20 = "MSG_WEATHER_TYPE_CONDITION_HURRICANEMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSHOWERSMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_LIGHT_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_HAILMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SNOWMSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFB38 = "MSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSHOWERSMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_LIGHT_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_HAILMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SNOWMSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFB50 = "MSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_LIGHT_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_HAILMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SNOWMSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFB68 = "MSG_WEATHER_TYPE_CONDITION_LIGHT_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_HAILMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SNOWMSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFB80 = "MSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_HAILMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SNOWMSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFB98 = "MSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SNOWMSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFBB0 = "MSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SNOWMSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFBC8 = "MSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFBE0 = "MSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFBF8 = "MSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFC10 = "MSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFC28 = "MSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFC40 = "MSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFC58 = "MSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFC70 = "MSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFC88 = "MSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFCA0 = "MSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFCB8 = "MSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFCD0 = "MSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFCE8 = "MSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFD00 = "MSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFD18 = "MSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFD30 = "MSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFD48 = "MSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFD60 = "MSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFD78 = "MSG_WEATHER_TYPE_CONDITION_WINDY";
  dword_27E02B0 = 6;
  qword_27E0F30 = &aAccidentConfir[580];
  dword_27E1210 = 215;
  qword_27E1218 = &aAccidentConfir[1343];
  qword_27E1200 = &aAccidentConfir[1325];
  qword_27E11F0 = 24;
  dword_27E11F8 = 33;
  qword_27E1208 = 18;
  qword_27E11D0 = &aAccidentConfir[1276];
  qword_27E11E8 = &aAccidentConfir[1301];
  dword_27E11C8 = 31;
  qword_27E11D8 = 25;
  dword_27E11E0 = 32;
  qword_27E11B8 = &aAccidentConfir[1252];
  qword_27E11A8 = 26;
  dword_27E11B0 = 30;
  qword_27E11C0 = 24;
  dword_27E1150 = 225;
  qword_27E11A0 = &aAccidentConfir[1226];
  qword_27E1190 = 30;
  dword_27E1198 = 29;
  qword_27E1170 = &aAccidentConfir[1166];
  dword_27E1180 = 121;
  qword_27E1188 = &aAccidentConfir[1196];
  qword_27E1178 = 30;
  qword_27E1158 = &aAccidentConfir[1126];
  dword_27E1168 = 122;
  qword_27E1160 = 40;
  qword_27E1128 = &aAccidentConfir[1080];
  qword_27E1140 = &aAccidentConfir[1096];
  qword_27E1130 = 16;
  dword_27E1138 = 28;
  qword_27E1148 = 30;
  qword_27E1110 = &aAccidentConfir[1063];
  dword_27E1108 = 26;
  qword_27E1118 = 17;
  dword_27E1120 = 27;
  qword_27E1068 = &aAccidentConfir[898];
  qword_27E10F8 = &aAccidentConfir[1041];
  qword_27E10E8 = 18;
  dword_27E10F0 = 25;
  qword_27E1100 = 22;
  qword_27E10C8 = &aAccidentConfir[1003];
  qword_27E10E0 = &aAccidentConfir[1023];
  qword_27E10D0 = 20;
  dword_27E10D8 = 24;
  qword_27E10B0 = &aAccidentConfir[968];
  dword_27E10C0 = 230;
  dword_27E10A8 = 200;
  qword_27E10B8 = 35;
  dword_27E1090 = 199;
  qword_27E1098 = &aAccidentConfir[946];
  qword_27E1088 = 23;
  qword_27E10A0 = 22;
  dword_27E1078 = 229;
  qword_27E1080 = &aAccidentConfir[923];
  qword_27E1070 = 25;
  dword_27E1048 = 228;
  qword_27E1050 = &aAccidentConfir[881];
  qword_27E1058 = 17;
  dword_27E1060 = 23;
  qword_27E0F90 = &aAccidentConfir[673];
  qword_27E1038 = &aAccidentConfir[847];
  qword_27E1028 = 26;
  dword_27E1030 = 22;
  qword_27E1040 = 34;
  dword_27E1018 = 120;
  qword_27E1020 = &aAccidentConfir[821];
  qword_27E1010 = 31;
  qword_27E0FF0 = &aAccidentConfir[760];
  dword_27E1000 = 119;
  qword_27E1008 = &aAccidentConfir[790];
  qword_27E0FF8 = 30;
  qword_27E0FD8 = &aAccidentConfir[727];
  dword_27E0FE8 = 118;
  dword_27E0FD0 = 21;
  qword_27E0FE0 = 33;
  dword_27E0FB8 = 193;
  qword_27E0FC0 = &aAccidentConfir[714];
  qword_27E0FB0 = 21;
  qword_27E0FC8 = 13;
  dword_27E0FA0 = 192;
  qword_27E0FA8 = &aAccidentConfir[693];
  dword_27E0F88 = 20;
  qword_27E0F98 = 20;
  qword_27E0F78 = &aAccidentConfir[660];
  qword_27E0F68 = 26;
  dword_27E0F70 = 19;
  qword_27E0F80 = 13;
  qword_27E0F48 = &aAccidentConfir[607];
  qword_27E0F60 = &aAccidentConfir[634];
  dword_27E0F40 = 17;
  qword_27E0F50 = 27;
  dword_27E0F58 = 18;
  qword_27E0F18 = &aAccidentConfir[549];
  unk_27E0F20 = 31;
  dword_27E0F28 = 16;
  qword_27E0F38 = 27;
  qword_27E0F00 = &aAccidentConfir[516];
  unk_27E0F08 = 33;
  qword_27E0EE8 = &aAccidentConfir[489];
  unk_27E0EF0 = 27;
  dword_27E0F10 = 15;
  dword_27E0EF8 = 14;
  qword_27E0C78 = "VLFFinalState_FAILED_TO_INITIALIZEVLFFinalState_SUCCEEDEDVLFFinalState_UNKNOWNVLFFinalState_USER_ABANDONED";
  qword_27E0ED0 = &aAccidentConfir[462];
  unk_27E0ED8 = 27;
  dword_27E0EE0 = 13;
  dword_27E0EB0 = 202;
  qword_27E0EB8 = &aAccidentConfir[427];
  unk_27E0EC0 = 35;
  dword_27E0EC8 = 12;
  qword_27E0EA0 = &aAccidentConfir[408];
  unk_27E0EA8 = 19;
  qword_27E0E88 = &aAccidentConfir[379];
  unk_27E0E90 = 29;
  dword_27E0E98 = 11;
  qword_27E0E70 = &aAccidentConfir[349];
  unk_27E0E78 = 30;
  dword_27E0E68 = 9;
  dword_27E0E80 = 10;
  qword_27E0E58 = &aAccidentConfir[319];
  unk_27E0E60 = 30;
  qword_27E0E40 = &aAccidentConfir[285];
  unk_27E0E48 = 34;
  dword_27E0E50 = 8;
  dword_27E0E20 = 6;
  qword_27E0E28 = &aAccidentConfir[249];
  unk_27E0E30 = 36;
  dword_27E0E38 = 7;
  qword_27E0E10 = &aAccidentConfir[219];
  qword_27E0DF8 = &aAccidentConfir[189];
  unk_27E0E00 = 30;
  dword_27E0E08 = 5;
  qword_27E0E18 = 30;
  dword_27E0DA8 = 179;
  qword_27E0DE0 = &aAccidentConfir[151];
  unk_27E0DE8 = 38;
  dword_27E0DF0 = 4;
  dword_27E0DC0 = 180;
  qword_27E0DC8 = &aAccidentConfir[129];
  unk_27E0DD0 = 22;
  dword_27E0DD8 = 201;
  qword_27E0DB0 = &aAccidentConfir[109];
  unk_27E0DB8 = 20;
  qword_27E0D98 = &aAccidentConfir[94];
  unk_27E0DA0 = 15;
  dword_27E0D90 = 178;
  qword_27E0D80 = &aAccidentConfir[73];
  unk_27E0D88 = 21;
  dword_27E0D78 = 177;
  qword_27E0D68 = &aAccidentConfir[57];
  unk_27E0D70 = 16;
  dword_27E0D60 = 3;
  qword_27E0D50 = &aAccidentConfir[40];
  unk_27E0D58 = 17;
  qword_27E0D38 = &aAccidentConfir[21];
  unk_27E0D40 = 19;
  dword_27E0D48 = 2;
  qword_27E0D20 = aAccidentConfir;
  *algn_27E0D28 = 21;
  dword_27E0D30 = 1;
  qword_27E0D08 = "LOG_DISCARD_TRIGGER_UNSPECIFIED";
  unk_27E0D10 = 31;
  dword_27E0D00 = 2;
  dword_27E0D18 = 0;
  qword_27E0CD8 = "LOG_DISCARD_TRIGGER_POI_ENRICHMENTLOG_DISCARD_TRIGGER_RAPLOG_DISCARD_TRIGGER_UNSPECIFIED";
  unk_27E0CE0 = 34;
  dword_27E0CE8 = 1;
  qword_27E0CF0 = "LOG_DISCARD_TRIGGER_RAPLOG_DISCARD_TRIGGER_UNSPECIFIED";
  unk_27E0CF8 = 23;
  qword_27E0CC0 = "VLFFinalState_USER_ABANDONED";
  unk_27E0CC8 = 28;
  dword_27E0CB8 = 0;
  dword_27E0CD0 = 2;
  qword_27E0CA8 = "VLFFinalState_UNKNOWNVLFFinalState_USER_ABANDONED";
  unk_27E0CB0 = 21;
  qword_27E0C90 = "VLFFinalState_SUCCEEDEDVLFFinalState_UNKNOWNVLFFinalState_USER_ABANDONED";
  unk_27E0C98 = 23;
  dword_27E0CA0 = 4;
  qword_27E0C80 = 34;
  dword_27E0C88 = 1;
  qword_27E0C48 = "VLFDeviceOrientationType_UNKNOWN";
  unk_27E0C50 = 32;
  qword_27E0C60 = "VLFFinalState_FAILEDVLFFinalState_FAILED_TO_INITIALIZEVLFFinalState_SUCCEEDEDVLFFinalState_UNKNOWNVLFFinalState_USER_ABANDONED";
  *algn_27E0C68 = 20;
  dword_27E0C70 = 3;
  dword_27E0C58 = 0;
  qword_27E0C30 = "VLFDeviceOrientationType_OUT_OF_POCKETVLFDeviceOrientationType_UNKNOWN";
  unk_27E0C38 = 38;
  dword_27E0C40 = 1;
  qword_27E0C18 = "VLFDeviceOrientationType_IN_POCKETVLFDeviceOrientationType_OUT_OF_POCKETVLFDeviceOrientationType_UNKNOWN";
  unk_27E0C20 = 34;
  qword_27E0C00 = "VLFDeviceOrientationType_FACE_DOWN_ON_TABLEVLFDeviceOrientationType_IN_POCKETVLFDeviceOrientationType_OUT_OF_POCKETVLFDeviceOrientationType_UNKNOWN";
  unk_27E0C08 = 43;
  dword_27E0C28 = 2;
  dword_27E0C10 = 4;
  qword_27E0B10 = "VLFARGeoTrackingStateReason_GEO_DATA_NOT_LOADEDVLFARGeoTrackingStateReason_NEED_LOCATION_PERMISSIONSVLFARGeoTrackingStateReason_NONEVLFARGeoTrackingStateReason_NOT_AVAILABLE_AT_LOCATIONVLFARGeoTrackingStateReason_UNKNOWNVLFARGeoTrackingStateReason_VISUAL_LOCALIZATION_FAILEDVLFARGeoTrackingStateReason_WAITING_FOR_AVAILABILITY_CHECKVLFARGeoTrackingStateReason_WAITING_FOR_LOCATIONVLFARGeoTrackingStateReason_WORLD_TRACKING_UNSTABLE";
  qword_27E0BE8 = "VLFDeviceOrientationType_FACE_DOWNVLFDeviceOrientationType_FACE_DOWN_ON_TABLEVLFDeviceOrientationType_IN_POCKETVLFDeviceOrientationType_OUT_OF_POCKETVLFDeviceOrientationType_UNKNOWN";
  unk_27E0BF0 = 34;
  dword_27E0BF8 = 3;
  dword_27E0BE0 = 4;
  qword_27E0BB8 = "VLFARGeoTrackingStateReason_WAITING_FOR_LOCATIONVLFARGeoTrackingStateReason_WORLD_TRACKING_UNSTABLE";
  unk_27E0BC0 = 48;
  dword_27E0BC8 = 5;
  qword_27E0BD0 = "VLFARGeoTrackingStateReason_WORLD_TRACKING_UNSTABLE";
  unk_27E0BD8 = 51;
  dword_27E0B98 = 9;
  qword_27E0BA0 = "VLFARGeoTrackingStateReason_WAITING_FOR_AVAILABILITY_CHECKVLFARGeoTrackingStateReason_WAITING_FOR_LOCATIONVLFARGeoTrackingStateReason_WORLD_TRACKING_UNSTABLE";
  unk_27E0BA8 = 58;
  dword_27E0BB0 = 6;
  qword_27E0B70 = "VLFARGeoTrackingStateReason_UNKNOWNVLFARGeoTrackingStateReason_VISUAL_LOCALIZATION_FAILEDVLFARGeoTrackingStateReason_WAITING_FOR_AVAILABILITY_CHECKVLFARGeoTrackingStateReason_WAITING_FOR_LOCATIONVLFARGeoTrackingStateReason_WORLD_TRACKING_UNSTABLE";
  unk_27E0B78 = 35;
  dword_27E0B80 = 0;
  qword_27E0B88 = "VLFARGeoTrackingStateReason_VISUAL_LOCALIZATION_FAILEDVLFARGeoTrackingStateReason_WAITING_FOR_AVAILABILITY_CHECKVLFARGeoTrackingStateReason_WAITING_FOR_LOCATIONVLFARGeoTrackingStateReason_WORLD_TRACKING_UNSTABLE";
  unk_27E0B90 = 54;
  dword_27E0B50 = 1;
  qword_27E0B58 = "VLFARGeoTrackingStateReason_NOT_AVAILABLE_AT_LOCATIONVLFARGeoTrackingStateReason_UNKNOWNVLFARGeoTrackingStateReason_VISUAL_LOCALIZATION_FAILEDVLFARGeoTrackingStateReason_WAITING_FOR_AVAILABILITY_CHECKVLFARGeoTrackingStateReason_WAITING_FOR_LOCATIONVLFARGeoTrackingStateReason_WORLD_TRACKING_UNSTABLE";
  unk_27E0B60 = 53;
  dword_27E0B68 = 2;
  qword_27E0B28 = "VLFARGeoTrackingStateReason_NEED_LOCATION_PERMISSIONSVLFARGeoTrackingStateReason_NONEVLFARGeoTrackingStateReason_NOT_AVAILABLE_AT_LOCATIONVLFARGeoTrackingStateReason_UNKNOWNVLFARGeoTrackingStateReason_VISUAL_LOCALIZATION_FAILEDVLFARGeoTrackingStateReason_WAITING_FOR_AVAILABILITY_CHECKVLFARGeoTrackingStateReason_WAITING_FOR_LOCATIONVLFARGeoTrackingStateReason_WORLD_TRACKING_UNSTABLE";
  unk_27E0B30 = 53;
  dword_27E0B38 = 3;
  qword_27E0B40 = "VLFARGeoTrackingStateReason_NONEVLFARGeoTrackingStateReason_NOT_AVAILABLE_AT_LOCATIONVLFARGeoTrackingStateReason_UNKNOWNVLFARGeoTrackingStateReason_VISUAL_LOCALIZATION_FAILEDVLFARGeoTrackingStateReason_WAITING_FOR_AVAILABILITY_CHECKVLFARGeoTrackingStateReason_WAITING_FOR_LOCATIONVLFARGeoTrackingStateReason_WORLD_TRACKING_UNSTABLE";
  unk_27E0B48 = 32;
  qword_27E0B18 = 47;
  dword_27E0B20 = 7;
  qword_27E0AB0 = "VLFARGeoTrackingState_LOCALIZINGVLFARGeoTrackingState_NOT_AVAILABLEVLFARGeoTrackingState_UNKNOWN";
  unk_27E0AB8 = 32;
  qword_27E0AF8 = "VLFARGeoTrackingStateReason_DEVICE_POINTED_TOO_LOWVLFARGeoTrackingStateReason_GEO_DATA_NOT_LOADEDVLFARGeoTrackingStateReason_NEED_LOCATION_PERMISSIONSVLFARGeoTrackingStateReason_NONEVLFARGeoTrackingStateReason_NOT_AVAILABLE_AT_LOCATIONVLFARGeoTrackingStateReason_UNKNOWNVLFARGeoTrackingStateReason_VISUAL_LOCALIZATION_FAILEDVLFARGeoTrackingStateReason_WAITING_FOR_AVAILABILITY_CHECKVLFARGeoTrackingStateReason_WAITING_FOR_LOCATIONVLFARGeoTrackingStateReason_WORLD_TRACKING_UNSTABLE";
  unk_27E0B00 = 50;
  dword_27E0B08 = 8;
  qword_27E0AC8 = "VLFARGeoTrackingState_NOT_AVAILABLEVLFARGeoTrackingState_UNKNOWN";
  unk_27E0AD0 = 35;
  qword_27E0AE0 = "VLFARGeoTrackingState_UNKNOWN";
  unk_27E0AE8 = 29;
  dword_27E0AD8 = 1;
  dword_27E0AF0 = 0;
  dword_27E0AC0 = 3;
  qword_27E0240 = "LESS_THAN_1HLESS_THAN_2HLESS_THAN_30MLESS_THAN_4HMORE_THAN_4HTTL_INITIAL_TRAVEL_TIME_BUCKET_UNKNOWN";
  qword_27E0A98 = "VLFARGeoTrackingState_LOCALIZEDVLFARGeoTrackingState_LOCALIZINGVLFARGeoTrackingState_NOT_AVAILABLEVLFARGeoTrackingState_UNKNOWN";
  unk_27E0AA0 = 31;
  dword_27E0A90 = 2;
  dword_27E0AA8 = 4;
  dword_27E0280 = 2;
  qword_27E0288 = "LESS_THAN_4HMORE_THAN_4HTTL_INITIAL_TRAVEL_TIME_BUCKET_UNKNOWN";
  unk_27E0290 = 12;
  dword_27E0298 = 5;
  qword_27E0270 = "LESS_THAN_30MLESS_THAN_4HMORE_THAN_4HTTL_INITIAL_TRAVEL_TIME_BUCKET_UNKNOWN";
  qword_27E0258 = "LESS_THAN_2HLESS_THAN_30MLESS_THAN_4HMORE_THAN_4HTTL_INITIAL_TRAVEL_TIME_BUCKET_UNKNOWN";
  unk_27E0260 = 12;
  dword_27E0268 = 4;
  qword_27E0278 = 13;
  qword_27E0248 = 12;
  dword_27E0250 = 3;
  qword_27E0210 = "TTL_UI_NOTIFICATION_NONE_SHOWN";
  unk_27E0218 = 30;
  qword_27E0228 = "LESS_THAN_15MLESS_THAN_1HLESS_THAN_2HLESS_THAN_30MLESS_THAN_4HMORE_THAN_4HTTL_INITIAL_TRAVEL_TIME_BUCKET_UNKNOWN";
  unk_27E0230 = 13;
  dword_27E0238 = 1;
  dword_27E0220 = 0;
  qword_27E0120 = "DID_NOT_DEPARTEARLIER_THAN_22MEARLIER_THAN_7MLATER_THAN_22MLATER_THAN_7MON_TIMETIME_TO_LEAVE_BUCKET_UNKNOWN";
  dword_27E01F0 = 1;
  qword_27E01F8 = "ON_TIME_SHOWNTTL_UI_NOTIFICATION_NONE_SHOWN";
  unk_27E0200 = 13;
  dword_27E0208 = 2;
  qword_27E01C8 = "BOTH_SHOWNEARLY_SHOWNON_TIME_SHOWNTTL_UI_NOTIFICATION_NONE_SHOWN";
  unk_27E01D0 = 10;
  dword_27E01D8 = 3;
  qword_27E01E0 = "EARLY_SHOWNON_TIME_SHOWNTTL_UI_NOTIFICATION_NONE_SHOWN";
  unk_27E01E8 = 11;
  dword_27E01A8 = 3;
  qword_27E01B0 = "TIME_TO_LEAVE_BUCKET_UNKNOWN";
  unk_27E01B8 = 28;
  dword_27E01C0 = 0;
  qword_27E0180 = "LATER_THAN_7MON_TIMETIME_TO_LEAVE_BUCKET_UNKNOWN";
  unk_27E0188 = 13;
  dword_27E0190 = 4;
  qword_27E0198 = "ON_TIMETIME_TO_LEAVE_BUCKET_UNKNOWN";
  unk_27E01A0 = 7;
  dword_27E0160 = 2;
  qword_27E0168 = "LATER_THAN_22MLATER_THAN_7MON_TIMETIME_TO_LEAVE_BUCKET_UNKNOWN";
  unk_27E0170 = 14;
  dword_27E0178 = 5;
  qword_27E0138 = "EARLIER_THAN_22MEARLIER_THAN_7MLATER_THAN_22MLATER_THAN_7MON_TIMETIME_TO_LEAVE_BUCKET_UNKNOWN";
  unk_27E0140 = 16;
  dword_27E0148 = 1;
  qword_27E0150 = "EARLIER_THAN_7MLATER_THAN_22MLATER_THAN_7MON_TIMETIME_TO_LEAVE_BUCKET_UNKNOWN";
  unk_27E0158 = 15;
  qword_27E0128 = 14;
  dword_27E0130 = 7;
  qword_27E0108 = "DID_NOT_ARRIVEDID_NOT_DEPARTEARLIER_THAN_22MEARLIER_THAN_7MLATER_THAN_22MLATER_THAN_7MON_TIMETIME_TO_LEAVE_BUCKET_UNKNOWN";
  unk_27E0110 = 14;
  dword_27E0118 = 6;
  dword_27E0100 = 0;
  qword_27E00D8 = "NAV_MODE_TYPE_LIGHT_GUIDANCENAV_MODE_TYPE_UNKNOWN";
  unk_27E00E0 = 28;
  dword_27E00E8 = 1;
  qword_27E00F0 = "NAV_MODE_TYPE_UNKNOWN";
  unk_27E00F8 = 21;
  qword_27E00C0 = "NAV_MODE_TYPE_FULL_GUIDANCENAV_MODE_TYPE_LIGHT_GUIDANCENAV_MODE_TYPE_UNKNOWN";
  *algn_27E00C8 = 27;
  dword_27E00D0 = 2;
  qword_27E0090 = "MARCO_LITE_TRIGGEREDTREADSTONE_TRIGGERED";
  *algn_27E0098 = 20;
  qword_27E00A8 = "TREADSTONE_TRIGGERED";
  unk_27E00B0 = 20;
  dword_27E00B8 = 1;
  dword_27E00A0 = 0;
  qword_27E0018 = "MARCO_DISABLED_REASON_MANUALLY_DISABLEDMARCO_DISABLED_REASON_NIGHTMARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  qword_27E0078 = "MARCO_DISABLED_REASON_VLF";
  dword_27E0070 = 19;
  qword_27E0080 = 25;
  dword_27E0088 = 18;
  qword_27E0060 = "MARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  qword_27E0050 = 37;
  dword_27E0058 = 22;
  qword_27E0068 = 38;
  qword_27E0030 = "MARCO_DISABLED_REASON_NIGHTMARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  qword_27E0048 = "MARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  dword_27E0028 = 5;
  qword_27E0038 = 27;
  dword_27E0040 = 17;
  qword_27E0000 = "MARCO_DISABLED_REASON_LOCATION_ACCURACYMARCO_DISABLED_REASON_MANUALLY_DISABLEDMARCO_DISABLED_REASON_NIGHTMARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  qword_27E0008 = 39;
  dword_27E0010 = 20;
  qword_27E0020 = 39;
  qword_27DFFD0 = "MARCO_DISABLED_REASON_FUSED_LOCATIONMARCO_DISABLED_REASON_HORIZONTAL_DISTANCE_TRAVELEDMARCO_DISABLED_REASON_LOCATION_ACCURACYMARCO_DISABLED_REASON_MANUALLY_DISABLEDMARCO_DISABLED_REASON_NIGHTMARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  qword_27DFFE8 = "MARCO_DISABLED_REASON_HORIZONTAL_DISTANCE_TRAVELEDMARCO_DISABLED_REASON_LOCATION_ACCURACYMARCO_DISABLED_REASON_MANUALLY_DISABLEDMARCO_DISABLED_REASON_NIGHTMARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  unk_27DFFF0 = 50;
  dword_27DFFE0 = 21;
  dword_27DFFF8 = 23;
  qword_27DFFB8 = "MARCO_DISABLED_REASON_DEVICE_STATIONARYMARCO_DISABLED_REASON_FUSED_LOCATIONMARCO_DISABLED_REASON_HORIZONTAL_DISTANCE_TRAVELEDMARCO_DISABLED_REASON_LOCATION_ACCURACYMARCO_DISABLED_REASON_MANUALLY_DISABLEDMARCO_DISABLED_REASON_NIGHTMARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  unk_27DFFC0 = 39;
  dword_27DFFC8 = 1;
  qword_27DFFD8 = 36;
  qword_27DFF88 = "MARCO_DISABLED_REASON_DEVICE_BATTERY_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DEVICE_LOW_POWER_MODEMARCO_DISABLED_REASON_DEVICE_STATIONARYMARCO_DISABLED_REASON_FUSED_LOCATIONMARCO_DISABLED_REASON_HORIZONTAL_DISTANCE_TRAVELEDMARCO_DISABLED_REASON_LOCATION_ACCURACYMARCO_DISABLED_REASON_MANUALLY_DISABLEDMARCO_DISABLED_REASON_NIGHTMARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  unk_27DFF90 = 54;
  dword_27DFF98 = 3;
  qword_27DFFA0 = "MARCO_DISABLED_REASON_DEVICE_LOW_POWER_MODEMARCO_DISABLED_REASON_DEVICE_STATIONARYMARCO_DISABLED_REASON_FUSED_LOCATIONMARCO_DISABLED_REASON_HORIZONTAL_DISTANCE_TRAVELEDMARCO_DISABLED_REASON_LOCATION_ACCURACYMARCO_DISABLED_REASON_MANUALLY_DISABLEDMARCO_DISABLED_REASON_NIGHTMARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  unk_27DFFA8 = 43;
  dword_27DFFB0 = 0;
  qword_27DFF70 = "MARCO_DISABLED_REASON_DAILY_USAGE_LIMIT_REACHEDMARCO_DISABLED_REASON_DEVICE_BATTERY_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DEVICE_LOW_POWER_MODEMARCO_DISABLED_REASON_DEVICE_STATIONARYMARCO_DISABLED_REASON_FUSED_LOCATIONMARCO_DISABLED_REASON_HORIZONTAL_DISTANCE_TRAVELEDMARCO_DISABLED_REASON_LOCATION_ACCURACYMARCO_DISABLED_REASON_MANUALLY_DISABLEDMARCO_DISABLED_REASON_NIGHTMARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  unk_27DFF78 = 47;
  dword_27DFF80 = 4;
  qword_27DFF40 = "MARCO_DISABLED_REASON_APP_BACKGROUNDMARCO_DISABLED_REASON_ARTRACKINGSTATE_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DAILY_USAGE_LIMIT_REACHEDMARCO_DISABLED_REASON_DEVICE_BATTERY_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DEVICE_LOW_POWER_MODEMARCO_DISABLED_REASON_DEVICE_STATIONARYMARCO_DISABLED_REASON_FUSED_LOCATIONMARCO_DISABLED_REASON_HORIZONTAL_DISTANCE_TRAVELEDMARCO_DISABLED_REASON_LOCATION_ACCURACYMARCO_DISABLED_REASON_MANUALLY_DISABLEDMARCO_DISABLED_REASON_NIGHTMARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  qword_27DFF58 = "MARCO_DISABLED_REASON_ARTRACKINGSTATE_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DAILY_USAGE_LIMIT_REACHEDMARCO_DISABLED_REASON_DEVICE_BATTERY_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DEVICE_LOW_POWER_MODEMARCO_DISABLED_REASON_DEVICE_STATIONARYMARCO_DISABLED_REASON_FUSED_LOCATIONMARCO_DISABLED_REASON_HORIZONTAL_DISTANCE_TRAVELEDMARCO_DISABLED_REASON_LOCATION_ACCURACYMARCO_DISABLED_REASON_MANUALLY_DISABLEDMARCO_DISABLED_REASON_NIGHTMARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  dword_27DFF50 = 24;
  qword_27DFF60 = 55;
  dword_27DFF68 = 2;
  qword_27DFF28 = "MARCO_DISABLED_INITIALIZATION_FAILEDMARCO_DISABLED_REASON_APP_BACKGROUNDMARCO_DISABLED_REASON_ARTRACKINGSTATE_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DAILY_USAGE_LIMIT_REACHEDMARCO_DISABLED_REASON_DEVICE_BATTERY_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DEVICE_LOW_POWER_MODEMARCO_DISABLED_REASON_DEVICE_STATIONARYMARCO_DISABLED_REASON_FUSED_LOCATIONMARCO_DISABLED_REASON_HORIZONTAL_DISTANCE_TRAVELEDMARCO_DISABLED_REASON_LOCATION_ACCURACYMARCO_DISABLED_REASON_MANUALLY_DISABLEDMARCO_DISABLED_REASON_NIGHTMARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  qword_27DFF30 = 36;
  dword_27DFF38 = 16;
  qword_27DFF48 = 36;
  qword_27DFEF8 = "MARCO_AR_TRACKING_NOT_AVAILABLEMARCO_DISABLED_END_NAVMARCO_DISABLED_INITIALIZATION_FAILEDMARCO_DISABLED_REASON_APP_BACKGROUNDMARCO_DISABLED_REASON_ARTRACKINGSTATE_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DAILY_USAGE_LIMIT_REACHEDMARCO_DISABLED_REASON_DEVICE_BATTERY_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DEVICE_LOW_POWER_MODEMARCO_DISABLED_REASON_DEVICE_STATIONARYMARCO_DISABLED_REASON_FUSED_LOCATIONMARCO_DISABLED_REASON_HORIZONTAL_DISTANCE_TRAVELEDMARCO_DISABLED_REASON_LOCATION_ACCURACYMARCO_DISABLED_REASON_MANUALLY_DISABLEDMARCO_DISABLED_REASON_NIGHTMARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  qword_27DFF10 = "MARCO_DISABLED_END_NAVMARCO_DISABLED_INITIALIZATION_FAILEDMARCO_DISABLED_REASON_APP_BACKGROUNDMARCO_DISABLED_REASON_ARTRACKINGSTATE_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DAILY_USAGE_LIMIT_REACHEDMARCO_DISABLED_REASON_DEVICE_BATTERY_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DEVICE_LOW_POWER_MODEMARCO_DISABLED_REASON_DEVICE_STATIONARYMARCO_DISABLED_REASON_FUSED_LOCATIONMARCO_DISABLED_REASON_HORIZONTAL_DISTANCE_TRAVELEDMARCO_DISABLED_REASON_LOCATION_ACCURACYMARCO_DISABLED_REASON_MANUALLY_DISABLEDMARCO_DISABLED_REASON_NIGHTMARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  unk_27DFF18 = 22;
  dword_27DFF08 = 11;
  dword_27DFF20 = 15;
  qword_27DFEE0 = "MARCO_AR_TRACKING_NORMALMARCO_AR_TRACKING_NOT_AVAILABLEMARCO_DISABLED_END_NAVMARCO_DISABLED_INITIALIZATION_FAILEDMARCO_DISABLED_REASON_APP_BACKGROUNDMARCO_DISABLED_REASON_ARTRACKINGSTATE_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DAILY_USAGE_LIMIT_REACHEDMARCO_DISABLED_REASON_DEVICE_BATTERY_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DEVICE_LOW_POWER_MODEMARCO_DISABLED_REASON_DEVICE_STATIONARYMARCO_DISABLED_REASON_FUSED_LOCATIONMARCO_DISABLED_REASON_HORIZONTAL_DISTANCE_TRAVELEDMARCO_DISABLED_REASON_LOCATION_ACCURACYMARCO_DISABLED_REASON_MANUALLY_DISABLEDMARCO_DISABLED_REASON_NIGHTMARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  unk_27DFEE8 = 24;
  dword_27DFEF0 = 6;
  qword_27DFF00 = 31;
  qword_27DFEC8 = "MARCO_AR_TRACKING_LIMITED_RELOCALIZINGMARCO_AR_TRACKING_NORMALMARCO_AR_TRACKING_NOT_AVAILABLEMARCO_DISABLED_END_NAVMARCO_DISABLED_INITIALIZATION_FAILEDMARCO_DISABLED_REASON_APP_BACKGROUNDMARCO_DISABLED_REASON_ARTRACKINGSTATE_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DAILY_USAGE_LIMIT_REACHEDMARCO_DISABLED_REASON_DEVICE_BATTERY_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DEVICE_LOW_POWER_MODEMARCO_DISABLED_REASON_DEVICE_STATIONARYMARCO_DISABLED_REASON_FUSED_LOCATIONMARCO_DISABLED_REASON_HORIZONTAL_DISTANCE_TRAVELEDMARCO_DISABLED_REASON_LOCATION_ACCURACYMARCO_DISABLED_REASON_MANUALLY_DISABLEDMARCO_DISABLED_REASON_NIGHTMARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  unk_27DFED0 = 38;
  dword_27DFEC0 = 25;
  dword_27DFED8 = 10;
  qword_27DFE98 = "MARCO_AR_TRACKING_LIMITED_INSUFFICIENT_FEATURESMARCO_AR_TRACKING_LIMITED_LOW_LIGHTMARCO_AR_TRACKING_LIMITED_RELOCALIZINGMARCO_AR_TRACKING_NORMALMARCO_AR_TRACKING_NOT_AVAILABLEMARCO_DISABLED_END_NAVMARCO_DISABLED_INITIALIZATION_FAILEDMARCO_DISABLED_REASON_APP_BACKGROUNDMARCO_DISABLED_REASON_ARTRACKINGSTATE_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DAILY_USAGE_LIMIT_REACHEDMARCO_DISABLED_REASON_DEVICE_BATTERY_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DEVICE_LOW_POWER_MODEMARCO_DISABLED_REASON_DEVICE_STATIONARYMARCO_DISABLED_REASON_FUSED_LOCATIONMARCO_DISABLED_REASON_HORIZONTAL_DISTANCE_TRAVELEDMARCO_DISABLED_REASON_LOCATION_ACCURACYMARCO_DISABLED_REASON_MANUALLY_DISABLEDMARCO_DISABLED_REASON_NIGHTMARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  unk_27DFEA0 = 47;
  dword_27DFEA8 = 9;
  qword_27DFEB0 = "MARCO_AR_TRACKING_LIMITED_LOW_LIGHTMARCO_AR_TRACKING_LIMITED_RELOCALIZINGMARCO_AR_TRACKING_NORMALMARCO_AR_TRACKING_NOT_AVAILABLEMARCO_DISABLED_END_NAVMARCO_DISABLED_INITIALIZATION_FAILEDMARCO_DISABLED_REASON_APP_BACKGROUNDMARCO_DISABLED_REASON_ARTRACKINGSTATE_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DAILY_USAGE_LIMIT_REACHEDMARCO_DISABLED_REASON_DEVICE_BATTERY_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DEVICE_LOW_POWER_MODEMARCO_DISABLED_REASON_DEVICE_STATIONARYMARCO_DISABLED_REASON_FUSED_LOCATIONMARCO_DISABLED_REASON_HORIZONTAL_DISTANCE_TRAVELEDMARCO_DISABLED_REASON_LOCATION_ACCURACYMARCO_DISABLED_REASON_MANUALLY_DISABLEDMARCO_DISABLED_REASON_NIGHTMARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  unk_27DFEB8 = 35;
  qword_27DFE80 = "MARCO_AR_TRACKING_LIMITED_INITIALIZINGMARCO_AR_TRACKING_LIMITED_INSUFFICIENT_FEATURESMARCO_AR_TRACKING_LIMITED_LOW_LIGHTMARCO_AR_TRACKING_LIMITED_RELOCALIZINGMARCO_AR_TRACKING_NORMALMARCO_AR_TRACKING_NOT_AVAILABLEMARCO_DISABLED_END_NAVMARCO_DISABLED_INITIALIZATION_FAILEDMARCO_DISABLED_REASON_APP_BACKGROUNDMARCO_DISABLED_REASON_ARTRACKINGSTATE_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DAILY_USAGE_LIMIT_REACHEDMARCO_DISABLED_REASON_DEVICE_BATTERY_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DEVICE_LOW_POWER_MODEMARCO_DISABLED_REASON_DEVICE_STATIONARYMARCO_DISABLED_REASON_FUSED_LOCATIONMARCO_DISABLED_REASON_HORIZONTAL_DISTANCE_TRAVELEDMARCO_DISABLED_REASON_LOCATION_ACCURACYMARCO_DISABLED_REASON_MANUALLY_DISABLEDMARCO_DISABLED_REASON_NIGHTMARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  unk_27DFE88 = 38;
  qword_27DFE68 = "MARCO_AR_TRACKING_LIMITED_EXCESSIVE_MOTIONMARCO_AR_TRACKING_LIMITED_INITIALIZINGMARCO_AR_TRACKING_LIMITED_INSUFFICIENT_FEATURESMARCO_AR_TRACKING_LIMITED_LOW_LIGHTMARCO_AR_TRACKING_LIMITED_RELOCALIZINGMARCO_AR_TRACKING_NORMALMARCO_AR_TRACKING_NOT_AVAILABLEMARCO_DISABLED_END_NAVMARCO_DISABLED_INITIALIZATION_FAILEDMARCO_DISABLED_REASON_APP_BACKGROUNDMARCO_DISABLED_REASON_ARTRACKINGSTATE_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DAILY_USAGE_LIMIT_REACHEDMARCO_DISABLED_REASON_DEVICE_BATTERY_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DEVICE_LOW_POWER_MODEMARCO_DISABLED_REASON_DEVICE_STATIONARYMARCO_DISABLED_REASON_FUSED_LOCATIONMARCO_DISABLED_REASON_HORIZONTAL_DISTANCE_TRAVELEDMARCO_DISABLED_REASON_LOCATION_ACCURACYMARCO_DISABLED_REASON_MANUALLY_DISABLEDMARCO_DISABLED_REASON_NIGHTMARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  unk_27DFE70 = 42;
  dword_27DFE90 = 7;
  dword_27DFE78 = 8;
  qword_27DFDC0 = "MSG_MODEL_NAME_TRANSPORT_MODEL_PRED_PFLMSG_MODEL_NAME_TRANSPORT_MODEL_PRED_TransferLearningMSG_MODEL_NAME_TRANSPORT_MODEL_PRED_XGBoostMSG_MODEL_NAME_UNSPECIFIED";
  dword_27DFE48 = 13;
  qword_27DFE50 = "MARCO_AR_SESSION_INTERRUPTEDMARCO_AR_TRACKING_LIMITED_EXCESSIVE_MOTIONMARCO_AR_TRACKING_LIMITED_INITIALIZINGMARCO_AR_TRACKING_LIMITED_INSUFFICIENT_FEATURESMARCO_AR_TRACKING_LIMITED_LOW_LIGHTMARCO_AR_TRACKING_LIMITED_RELOCALIZINGMARCO_AR_TRACKING_NORMALMARCO_AR_TRACKING_NOT_AVAILABLEMARCO_DISABLED_END_NAVMARCO_DISABLED_INITIALIZATION_FAILEDMARCO_DISABLED_REASON_APP_BACKGROUNDMARCO_DISABLED_REASON_ARTRACKINGSTATE_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DAILY_USAGE_LIMIT_REACHEDMARCO_DISABLED_REASON_DEVICE_BATTERY_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DEVICE_LOW_POWER_MODEMARCO_DISABLED_REASON_DEVICE_STATIONARYMARCO_DISABLED_REASON_FUSED_LOCATIONMARCO_DISABLED_REASON_HORIZONTAL_DISTANCE_TRAVELEDMARCO_DISABLED_REASON_LOCATION_ACCURACYMARCO_DISABLED_REASON_MANUALLY_DISABLEDMARCO_DISABLED_REASON_NIGHTMARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  unk_27DFE58 = 28;
  dword_27DFE60 = 12;
  qword_27DFE20 = "MARCO_AR_INITIALIZATION_SUCCESSMARCO_AR_INITIALIZINGMARCO_AR_SESSION_INTERRUPTEDMARCO_AR_TRACKING_LIMITED_EXCESSIVE_MOTIONMARCO_AR_TRACKING_LIMITED_INITIALIZINGMARCO_AR_TRACKING_LIMITED_INSUFFICIENT_FEATURESMARCO_AR_TRACKING_LIMITED_LOW_LIGHTMARCO_AR_TRACKING_LIMITED_RELOCALIZINGMARCO_AR_TRACKING_NORMALMARCO_AR_TRACKING_NOT_AVAILABLEMARCO_DISABLED_END_NAVMARCO_DISABLED_INITIALIZATION_FAILEDMARCO_DISABLED_REASON_APP_BACKGROUNDMARCO_DISABLED_REASON_ARTRACKINGSTATE_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DAILY_USAGE_LIMIT_REACHEDMARCO_DISABLED_REASON_DEVICE_BATTERY_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DEVICE_LOW_POWER_MODEMARCO_DISABLED_REASON_DEVICE_STATIONARYMARCO_DISABLED_REASON_FUSED_LOCATIONMARCO_DISABLED_REASON_HORIZONTAL_DISTANCE_TRAVELEDMARCO_DISABLED_REASON_LOCATION_ACCURACYMARCO_DISABLED_REASON_MANUALLY_DISABLEDMARCO_DISABLED_REASON_NIGHTMARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  *algn_27DFE28 = 31;
  dword_27DFE30 = 14;
  qword_27DFE38 = "MARCO_AR_INITIALIZINGMARCO_AR_SESSION_INTERRUPTEDMARCO_AR_TRACKING_LIMITED_EXCESSIVE_MOTIONMARCO_AR_TRACKING_LIMITED_INITIALIZINGMARCO_AR_TRACKING_LIMITED_INSUFFICIENT_FEATURESMARCO_AR_TRACKING_LIMITED_LOW_LIGHTMARCO_AR_TRACKING_LIMITED_RELOCALIZINGMARCO_AR_TRACKING_NORMALMARCO_AR_TRACKING_NOT_AVAILABLEMARCO_DISABLED_END_NAVMARCO_DISABLED_INITIALIZATION_FAILEDMARCO_DISABLED_REASON_APP_BACKGROUNDMARCO_DISABLED_REASON_ARTRACKINGSTATE_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DAILY_USAGE_LIMIT_REACHEDMARCO_DISABLED_REASON_DEVICE_BATTERY_THRESHOLD_REACHEDMARCO_DISABLED_REASON_DEVICE_LOW_POWER_MODEMARCO_DISABLED_REASON_DEVICE_STATIONARYMARCO_DISABLED_REASON_FUSED_LOCATIONMARCO_DISABLED_REASON_HORIZONTAL_DISTANCE_TRAVELEDMARCO_DISABLED_REASON_LOCATION_ACCURACYMARCO_DISABLED_REASON_MANUALLY_DISABLEDMARCO_DISABLED_REASON_NIGHTMARCO_DISABLED_REASON_SESSION_TIMEOUTMARCO_DISABLED_REASON_THERMAL_PRESSUREMARCO_DISABLED_REASON_VLF";
  unk_27DFE40 = 21;
  dword_27DFE00 = 2;
  qword_27DFE08 = "MSG_MODEL_NAME_UNSPECIFIED";
  unk_27DFE10 = 26;
  dword_27DFE18 = 0;
  qword_27DFDF0 = "MSG_MODEL_NAME_TRANSPORT_MODEL_PRED_XGBoostMSG_MODEL_NAME_UNSPECIFIED";
  unk_27DFDF8 = 43;
  qword_27DFDD8 = "MSG_MODEL_NAME_TRANSPORT_MODEL_PRED_TransferLearningMSG_MODEL_NAME_TRANSPORT_MODEL_PRED_XGBoostMSG_MODEL_NAME_UNSPECIFIED";
  unk_27DFDE0 = 52;
  dword_27DFDE8 = 4;
  qword_27DFDA8 = "MSG_MODEL_NAME_TRANSPORT_MODEL_PRED_DeepLearningMSG_MODEL_NAME_TRANSPORT_MODEL_PRED_PFLMSG_MODEL_NAME_TRANSPORT_MODEL_PRED_TransferLearningMSG_MODEL_NAME_TRANSPORT_MODEL_PRED_XGBoostMSG_MODEL_NAME_UNSPECIFIED";
  unk_27DFDB0 = 48;
  dword_27DFDB8 = 3;
  qword_27DFDC8 = 39;
  dword_27DFDD0 = 5;
  qword_27DFD90 = "MSG_MODEL_NAME_RULES_ALGORITHMMSG_MODEL_NAME_TRANSPORT_MODEL_PRED_DeepLearningMSG_MODEL_NAME_TRANSPORT_MODEL_PRED_PFLMSG_MODEL_NAME_TRANSPORT_MODEL_PRED_TransferLearningMSG_MODEL_NAME_TRANSPORT_MODEL_PRED_XGBoostMSG_MODEL_NAME_UNSPECIFIED";
  *algn_27DFD98 = 30;
  dword_27DFDA0 = 1;
  qword_27DF9A0 = "MSG_WEATHER_TYPE_CONDITION_BLIZZARDMSG_WEATHER_TYPE_CONDITION_BLOWING_SNOWMSG_WEATHER_TYPE_CONDITION_BLUSTERYMSG_WEATHER_TYPE_CONDITION_CLEARMSG_WEATHER_TYPE_CONDITION_CLOUDYMSG_WEATHER_TYPE_CONDITION_COLDMSG_WEATHER_TYPE_CONDITION_DRIZZLEMSG_WEATHER_TYPE_CONDITION_DUSTMSG_WEATHER_TYPE_CONDITION_FOGGYMSG_WEATHER_TYPE_CONDITION_FREEZING_DRIZZLEMSG_WEATHER_TYPE_CONDITION_FREEZING_RAINMSG_WEATHER_TYPE_CONDITION_HAILMSG_WEATHER_TYPE_CONDITION_HAZEMSG_WEATHER_TYPE_CONDITION_HEAVY_RAINMSG_WEATHER_TYPE_CONDITION_HEAVY_SNOWMSG_WEATHER_TYPE_CONDITION_HOTMSG_WEATHER_TYPE_CONDITION_HURRICANEMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSHOWERSMSG_WEATHER_TYPE_CONDITION_ISOLATED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_LIGHT_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_HAILMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MIXED_RAIN_AND_SNOWMSG_WEATHER_TYPE_CONDITION_MIXED_SNOW_AND_SLEETMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLEARMSG_WEATHER_TYPE_CONDITION_MOSTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_NOT_AVAILABLEMSG_WEATHER_TYPE_CONDITION_PARTLY_CLOUDYMSG_WEATHER_TYPE_CONDITION_RAINMSG_WEATHER_TYPE_CONDITION_SCATTERED_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_SNOW_SHOWERSMSG_WEATHER_TYPE_CONDITION_SCATTERED_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SEVERE_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_SHOWERSMSG_WEATHER_TYPE_CONDITION_SLEETMSG_WEATHER_TYPE_CONDITION_SMOKYMSG_WEATHER_TYPE_CONDITION_SNOWMSG_WEATHER_TYPE_CONDITION_SNOW_FLURRIESMSG_WEATHER_TYPE_CONDITION_THUNDERSTORMSMSG_WEATHER_TYPE_CONDITION_TORNADOMSG_WEATHER_TYPE_CONDITION_TROPICAL_STORMMSG_WEATHER_TYPE_CONDITION_WINDY";
  qword_27DFD80 = 32;
  dword_27DFD88 = 25;
  qword_27DF9A8 = 35;
  dword_27DF9B0 = 44;
  qword_27DFD50 = 34;
  dword_27DFD58 = 1;
  qword_27DFD68 = 41;
  dword_27DFD70 = 2;
  qword_27DF9C0 = 39;
  dword_27DF9C8 = 16;
  qword_27DFD20 = 40;
  dword_27DFD28 = 14;
  qword_27DFD38 = 40;
  dword_27DFD40 = 5;
  qword_27DF9D8 = 35;
  dword_27DF9E0 = 24;
  qword_27DFCF0 = 32;
  dword_27DFCF8 = 23;
  qword_27DFD08 = 31;
  dword_27DFD10 = 17;
  qword_27DF9F0 = 32;
  dword_27DF9F8 = 33;
  qword_27DFCC0 = 34;
  dword_27DFCC8 = 12;
  qword_27DFCD8 = 32;
  dword_27DFCE0 = 19;
  qword_27DFA08 = 33;
  dword_27DFA10 = 27;
  qword_27DFC90 = 50;
  dword_27DFC98 = 39;
  qword_27DFCA8 = 47;
  dword_27DFCB0 = 4;
  qword_27DFA20 = 31;
  dword_27DFA28 = 26;
  qword_27DFC60 = 44;
  dword_27DFC68 = 40;
  qword_27DFC78 = 49;
  dword_27DFC80 = 42;
  qword_27DFA38 = 34;
  dword_27DFA40 = 10;
  qword_27DFC30 = 40;
  dword_27DFC38 = 31;
  qword_27DFC48 = 31;
  dword_27DFC50 = 13;
  qword_27DFA50 = 31;
  dword_27DFA58 = 20;
  qword_27DFC00 = 40;
  dword_27DFC08 = 29;
  qword_27DFC18 = 40;
  dword_27DFC20 = 0;
  qword_27DFA68 = 32;
  dword_27DFA70 = 21;
  qword_27DFBD0 = 47;
  dword_27DFBD8 = 8;
  qword_27DFBE8 = 39;
  dword_27DFBF0 = 35;
  qword_27DFA80 = 43;
  dword_27DFA88 = 9;
  qword_27DFBA0 = 47;
  dword_27DFBA8 = 7;
  qword_27DFBB8 = 46;
  dword_27DFBC0 = 6;
  qword_27DFA98 = 40;
  dword_27DFAA0 = 11;
  qword_27DFB70 = 45;
  dword_27DFB78 = 15;
  qword_27DFB88 = 46;
  dword_27DFB90 = 36;
  qword_27DFAB0 = 31;
  dword_27DFAB8 = 18;
  qword_27DFB40 = 50;
  dword_27DFB48 = 45;
  qword_27DFB58 = 49;
  dword_27DFB60 = 38;
  qword_27DFAC8 = 31;
  dword_27DFAD0 = 22;
  qword_27DFB10 = 30;
  dword_27DFB18 = 37;
  qword_27DFB28 = 36;
  dword_27DFB30 = 3;
  qword_27DFAE0 = 37;
  dword_27DFAE8 = 41;
  qword_27DFAF8 = 37;
  dword_27DFB00 = 43;
  qword_27E02B8 = "TTL_INITIAL_TRAVEL_TIME_BUCKET_UNKNOWN";
  unk_27E02C0 = 38;
  qword_27E02A0 = "MORE_THAN_4HTTL_INITIAL_TRAVEL_TIME_BUCKET_UNKNOWN";
  unk_27E02A8 = 12;
  dword_27E02C8 = 0;
  qword_27E02E8 = "FORCE_PURGE_METRICNETWORK_METRICPURGE_METRICUNKNOWN_METRIC_TYPE";
  unk_27E02F0 = 18;
  qword_27E0300 = "NETWORK_METRICPURGE_METRICUNKNOWN_METRIC_TYPE";
  qword_27E0318 = "PURGE_METRICUNKNOWN_METRIC_TYPE";
  unk_27E0320 = 12;
  qword_27E02D0 = "FAILED_MSG_METRICFORCE_PURGE_METRICNETWORK_METRICPURGE_METRICUNKNOWN_METRIC_TYPE";
  *algn_27E02D8 = 17;
  dword_27E02E0 = 4;
  dword_27E02F8 = 3;
  qword_27E0308 = 14;
  dword_27E0310 = 1;
  dword_27E0328 = 2;
  qword_27E0330 = "UNKNOWN_METRIC_TYPE";
  unk_27E0338 = 19;
  dword_27E0340 = 0;
  qword_27E0360 = "FAILED_STATESUCCESS_STATEUNKNOWN_METRIC_STATE";
  unk_27E0368 = 12;
  qword_27E0378 = "SUCCESS_STATEUNKNOWN_METRIC_STATE";
  unk_27E0380 = 13;
  qword_27E0348 = "CANCELLED_STATEFAILED_STATESUCCESS_STATEUNKNOWN_METRIC_STATE";
  unk_27E0350 = 15;
  dword_27E0358 = 3;
  dword_27E0370 = 2;
  dword_27E0388 = 1;
  qword_27E0390 = "UNKNOWN_METRIC_STATE";
  unk_27E0398 = 20;
  dword_27E03A0 = 0;
  qword_27E03C0 = "PURGE_REASON_FORCE_PURGEPURGE_REASON_FRAMEWORK_BUDGETPURGE_REASON_SOURCE_BUDGETPURGE_REASON_UNKNOWN";
  unk_27E03C8 = 24;
  qword_27E03D8 = "PURGE_REASON_FRAMEWORK_BUDGETPURGE_REASON_SOURCE_BUDGETPURGE_REASON_UNKNOWN";
  unk_27E03E0 = 29;
  qword_27E0408 = "PURGE_REASON_UNKNOWN";
  unk_27E0410 = 20;
  qword_27E03A8 = "PURGE_REASON_EXPIRED_TIMEPURGE_REASON_FORCE_PURGEPURGE_REASON_FRAMEWORK_BUDGETPURGE_REASON_SOURCE_BUDGETPURGE_REASON_UNKNOWN";
  unk_27E03B0 = 25;
  dword_27E03B8 = 1;
  dword_27E03D0 = 4;
  dword_27E03E8 = 2;
  qword_27E03F0 = "PURGE_REASON_SOURCE_BUDGETPURGE_REASON_UNKNOWN";
  unk_27E03F8 = 26;
  dword_27E0400 = 3;
  dword_27E0418 = 0;
  qword_27E0450 = "STILLUNKNOWN_SPEED_BUCKET";
  qword_27E0468 = "UNKNOWN_SPEED_BUCKET";
  unk_27E0470 = 20;
  qword_27E0420 = "FASTSLOWSTILLUNKNOWN_SPEED_BUCKET";
  qword_27E0428 = 4;
  dword_27E0430 = 3;
  qword_27E0438 = "SLOWSTILLUNKNOWN_SPEED_BUCKET";
  unk_27E0440 = 4;
  dword_27E0448 = 2;
  qword_27E0458 = 5;
  dword_27E0460 = 1;
  dword_27E0478 = 0;
  qword_27E0498 = "OFFLINE_SERVICE_ETAOFFLINE_SERVICE_PLACEOFFLINE_SERVICE_TYPE_UNKNOWN";
  unk_27E04A0 = 19;
  qword_27E04B0 = "OFFLINE_SERVICE_PLACEOFFLINE_SERVICE_TYPE_UNKNOWN";
  unk_27E04B8 = 21;
  qword_27E0480 = "OFFLINE_SERVICE_DIRECTIONSOFFLINE_SERVICE_ETAOFFLINE_SERVICE_PLACEOFFLINE_SERVICE_TYPE_UNKNOWN";
  *algn_27E0488 = 26;
  dword_27E0490 = 2;
  dword_27E04A8 = 3;
  dword_27E04C0 = 1;
  qword_27E04C8 = "OFFLINE_SERVICE_TYPE_UNKNOWN";
  unk_27E04D0 = 28;
  dword_27E04D8 = 0;
  qword_27E04F8 = "OFFLINE_REASON_NO_CONNECTIONOFFLINE_REASON_TIMEOUTOFFLINE_REASON_UNKNOWN";
  qword_27E0510 = "OFFLINE_REASON_TIMEOUTOFFLINE_REASON_UNKNOWN";
  qword_27E04E0 = "OFFLINE_REASON_NETWORK_ERROROFFLINE_REASON_NO_CONNECTIONOFFLINE_REASON_TIMEOUTOFFLINE_REASON_UNKNOWN";
  qword_27E04E8 = 28;
  dword_27E04F0 = 3;
  qword_27E0500 = 28;
  dword_27E0508 = 2;
  qword_27E0518 = 22;
  dword_27E0520 = 1;
  qword_27E0528 = "OFFLINE_REASON_UNKNOWN";
  unk_27E0530 = 22;
  dword_27E0538 = 0;
  qword_27E0558 = "COMMUTE_WINDOW_LOCATION_OTHERCOMMUTE_WINDOW_LOCATION_SCHOOLCOMMUTE_WINDOW_LOCATION_WORKUNKNOWN_COMMUTE_LOCATION_TYPE";
  qword_27E0570 = "COMMUTE_WINDOW_LOCATION_SCHOOLCOMMUTE_WINDOW_LOCATION_WORKUNKNOWN_COMMUTE_LOCATION_TYPE";
  unk_27E0578 = 30;
  qword_27E0588 = "COMMUTE_WINDOW_LOCATION_WORKUNKNOWN_COMMUTE_LOCATION_TYPE";
  qword_27E05A0 = "UNKNOWN_COMMUTE_LOCATION_TYPE";
  qword_27E0540 = "COMMUTE_WINDOW_LOCATION_HOMECOMMUTE_WINDOW_LOCATION_OTHERCOMMUTE_WINDOW_LOCATION_SCHOOLCOMMUTE_WINDOW_LOCATION_WORKUNKNOWN_COMMUTE_LOCATION_TYPE";
  qword_27E0548 = 28;
  dword_27E0550 = 2;
  qword_27E0560 = 29;
  dword_27E0568 = 1;
  dword_27E0580 = 4;
  qword_27E0590 = 28;
  dword_27E0598 = 3;
  qword_27E05A8 = 29;
  dword_27E05B0 = 0;
  qword_27E05D0 = "COMMUTE_WINDOW_TIMED_OUTUNKNOWN_REASON";
  qword_27E05E8 = "UNKNOWN_REASON";
  unk_27E05F0 = 14;
  qword_27E05B8 = "COMMUTE_MISSION_COMPLETECOMMUTE_WINDOW_TIMED_OUTUNKNOWN_REASON";
  qword_27E05C0 = 24;
  dword_27E05C8 = 2;
  qword_27E05D8 = 24;
  dword_27E05E0 = 1;
  dword_27E05F8 = 0;
  qword_27E0618 = "PURPOSE_ETAPURPOSE_LAUNCH_AND_GOPURPOSE_QUICK_ETAPURPOSE_REROUTEPURPOSE_ROUTEPURPOSE_ROUTE_GENIUSPURPOSE_SEARCH_ALONG_ROUTEPURPOSE_TEST_OR_DEBUGPURPOSE_TIME_TO_LEAVEPURPOSE_UNKNOWN";
  qword_27E0630 = "PURPOSE_LAUNCH_AND_GOPURPOSE_QUICK_ETAPURPOSE_REROUTEPURPOSE_ROUTEPURPOSE_ROUTE_GENIUSPURPOSE_SEARCH_ALONG_ROUTEPURPOSE_TEST_OR_DEBUGPURPOSE_TIME_TO_LEAVEPURPOSE_UNKNOWN";
  qword_27E0648 = "PURPOSE_QUICK_ETAPURPOSE_REROUTEPURPOSE_ROUTEPURPOSE_ROUTE_GENIUSPURPOSE_SEARCH_ALONG_ROUTEPURPOSE_TEST_OR_DEBUGPURPOSE_TIME_TO_LEAVEPURPOSE_UNKNOWN";
  qword_27E0660 = "PURPOSE_REROUTEPURPOSE_ROUTEPURPOSE_ROUTE_GENIUSPURPOSE_SEARCH_ALONG_ROUTEPURPOSE_TEST_OR_DEBUGPURPOSE_TIME_TO_LEAVEPURPOSE_UNKNOWN";
  qword_27E0678 = "PURPOSE_ROUTEPURPOSE_ROUTE_GENIUSPURPOSE_SEARCH_ALONG_ROUTEPURPOSE_TEST_OR_DEBUGPURPOSE_TIME_TO_LEAVEPURPOSE_UNKNOWN";
  qword_27E0690 = "PURPOSE_ROUTE_GENIUSPURPOSE_SEARCH_ALONG_ROUTEPURPOSE_TEST_OR_DEBUGPURPOSE_TIME_TO_LEAVEPURPOSE_UNKNOWN";
  qword_27E06A8 = "PURPOSE_SEARCH_ALONG_ROUTEPURPOSE_TEST_OR_DEBUGPURPOSE_TIME_TO_LEAVEPURPOSE_UNKNOWN";
  qword_27E06C0 = "PURPOSE_TEST_OR_DEBUGPURPOSE_TIME_TO_LEAVEPURPOSE_UNKNOWN";
  qword_27E06D8 = "PURPOSE_TIME_TO_LEAVEPURPOSE_UNKNOWN";
  qword_27E06F0 = "PURPOSE_UNKNOWN";
  qword_27E0600 = "PURPOSE_DODGEBALL_OUTSIDE_OF_MAPSPURPOSE_ETAPURPOSE_LAUNCH_AND_GOPURPOSE_QUICK_ETAPURPOSE_REROUTEPURPOSE_ROUTEPURPOSE_ROUTE_GENIUSPURPOSE_SEARCH_ALONG_ROUTEPURPOSE_TEST_OR_DEBUGPURPOSE_TIME_TO_LEAVEPURPOSE_UNKNOWN";
  *algn_27E0608 = 33;
  dword_27E0610 = 8;
  qword_27E0620 = 11;
  dword_27E0628 = 2;
  qword_27E0638 = 21;
  dword_27E0640 = 10;
  qword_27E0650 = 17;
  dword_27E0658 = 3;
  qword_27E0668 = 15;
  dword_27E0670 = 5;
  qword_27E0680 = 13;
  dword_27E0688 = 4;
  qword_27E0698 = 20;
  dword_27E06A0 = 6;
  qword_27E06B0 = 26;
  dword_27E06B8 = 7;
  qword_27E06C8 = 21;
  dword_27E06D0 = 1;
  qword_27E06E0 = 21;
  dword_27E06E8 = 9;
  qword_27E06F8 = 15;
  dword_27E0700 = 0;
  qword_27E0720 = "LOCATION_NON_PROMINENTLOCATION_OTHER_PROMINENTLOCATION_UNKNOWNLOCATION_WORK";
  unk_27E0728 = 22;
  qword_27E0738 = "LOCATION_OTHER_PROMINENTLOCATION_UNKNOWNLOCATION_WORK";
  unk_27E0740 = 24;
  qword_27E0750 = "LOCATION_UNKNOWNLOCATION_WORK";
  qword_27E0708 = "LOCATION_HOMELOCATION_NON_PROMINENTLOCATION_OTHER_PROMINENTLOCATION_UNKNOWNLOCATION_WORK";
  qword_27E0710 = 13;
  dword_27E0718 = 1;
  dword_27E0730 = 4;
  dword_27E0748 = 3;
  qword_27E0758 = 16;
  dword_27E0760 = 0;
  qword_27E0768 = "LOCATION_WORK";
  unk_27E0770 = 13;
  dword_27E0778 = 2;
  qword_27E0798 = "DISMISSEDUNKNOWN";
  unk_27E07A0 = 9;
  qword_27E07B0 = "UNKNOWN";
  unk_27E07B8 = 7;
  qword_27E0780 = "ACCEPTEDDISMISSEDUNKNOWN";
  *algn_27E0788 = 8;
  dword_27E0790 = 1;
  dword_27E07A8 = 2;
  dword_27E07C0 = 0;
  qword_27E07E0 = "DodgeballAction_DISMISSEDDodgeballAction_UNKNOWN";
  unk_27E07E8 = 25;
  qword_27E07C8 = "DodgeballAction_ACCEPTEDDodgeballAction_DISMISSEDDodgeballAction_UNKNOWN";
  unk_27E07D0 = 24;
  dword_27E07D8 = 1;
  dword_27E07F0 = 2;
  qword_27E07F8 = "DodgeballAction_UNKNOWN";
  unk_27E0800 = 23;
  dword_27E0808 = 0;
  qword_27E0828 = "VLFUsageUserAccessPoint_AR_WALKING_ROUTE_PLANNINGVLFUsageUserAccessPoint_PUCK_ACTIVEVLFUsageUserAccessPoint_PUCK_PASSIVEVLFUsageUserAccessPoint_UNKNOWN";
  qword_27E0840 = "VLFUsageUserAccessPoint_PUCK_ACTIVEVLFUsageUserAccessPoint_PUCK_PASSIVEVLFUsageUserAccessPoint_UNKNOWN";
  qword_27E0858 = "VLFUsageUserAccessPoint_PUCK_PASSIVEVLFUsageUserAccessPoint_UNKNOWN";
  qword_27E0870 = "VLFUsageUserAccessPoint_UNKNOWN";
  qword_27E0810 = "VLFUsageUserAccessPoint_AR_WALKING_NAVIGATIONVLFUsageUserAccessPoint_AR_WALKING_ROUTE_PLANNINGVLFUsageUserAccessPoint_PUCK_ACTIVEVLFUsageUserAccessPoint_PUCK_PASSIVEVLFUsageUserAccessPoint_UNKNOWN";
  *algn_27E0818 = 45;
  dword_27E0820 = 4;
  qword_27E0830 = 49;
  dword_27E0838 = 3;
  qword_27E0848 = 35;
  dword_27E0850 = 2;
  qword_27E0860 = 36;
  dword_27E0868 = 1;
  qword_27E0878 = 31;
  dword_27E0880 = 0;
  qword_27E08A0 = "VLFPositionContextType_OUTDOORVLFPositionContextType_UNKNOWN";
  qword_27E0888 = "VLFPositionContextType_INDOORVLFPositionContextType_OUTDOORVLFPositionContextType_UNKNOWN";
  unk_27E0890 = 29;
  dword_27E0898 = 2;
  qword_27E08A8 = 30;
  dword_27E08B0 = 1;
  qword_27E08B8 = "VLFPositionContextType_UNKNOWN";
  unk_27E08C0 = 30;
  dword_27E08C8 = 0;
  qword_27E08E8 = "VLFFailureReason_BAD_INPUTVLFFailureReason_MAP_DATA_MISSINGVLFFailureReason_MAP_DATA_PENDINGVLFFailureReason_POSE_DISCARDED_IMAGE_CALIBRATIONVLFFailureReason_POSE_DISCARDED_IMAGE_GRAVITYVLFFailureReason_POSE_DISCARDED_IMAGE_HORZ_UNCERTAINTYVLFFailureReason_POSE_DISCARDED_IMAGE_LOCATION_TYPEVLFFailureReason_POSE_DISCARDED_IMAGE_TILTVLFFailureReason_POSE_FAILEDVLFFailureReason_POSE_REJECTED_GPSVLFFailureReason_POSE_REJECTED_GRAVITYVLFFailureReason_POSE_REJECTED_HEIGHTVLFFailureReason_POSE_REJECTED_SCOREVLFFailureReason_POSE_REJECTED_VIOVLFFailureReason_REJECTED_CONFIDENCEVLFFailureReason_REJECTED_COVARIANCEVLFFailureReason_UNKNOWN";
  qword_27E0900 = "VLFFailureReason_MAP_DATA_MISSINGVLFFailureReason_MAP_DATA_PENDINGVLFFailureReason_POSE_DISCARDED_IMAGE_CALIBRATIONVLFFailureReason_POSE_DISCARDED_IMAGE_GRAVITYVLFFailureReason_POSE_DISCARDED_IMAGE_HORZ_UNCERTAINTYVLFFailureReason_POSE_DISCARDED_IMAGE_LOCATION_TYPEVLFFailureReason_POSE_DISCARDED_IMAGE_TILTVLFFailureReason_POSE_FAILEDVLFFailureReason_POSE_REJECTED_GPSVLFFailureReason_POSE_REJECTED_GRAVITYVLFFailureReason_POSE_REJECTED_HEIGHTVLFFailureReason_POSE_REJECTED_SCOREVLFFailureReason_POSE_REJECTED_VIOVLFFailureReason_REJECTED_CONFIDENCEVLFFailureReason_REJECTED_COVARIANCEVLFFailureReason_UNKNOWN";
  qword_27E0918 = "VLFFailureReason_MAP_DATA_PENDINGVLFFailureReason_POSE_DISCARDED_IMAGE_CALIBRATIONVLFFailureReason_POSE_DISCARDED_IMAGE_GRAVITYVLFFailureReason_POSE_DISCARDED_IMAGE_HORZ_UNCERTAINTYVLFFailureReason_POSE_DISCARDED_IMAGE_LOCATION_TYPEVLFFailureReason_POSE_DISCARDED_IMAGE_TILTVLFFailureReason_POSE_FAILEDVLFFailureReason_POSE_REJECTED_GPSVLFFailureReason_POSE_REJECTED_GRAVITYVLFFailureReason_POSE_REJECTED_HEIGHTVLFFailureReason_POSE_REJECTED_SCOREVLFFailureReason_POSE_REJECTED_VIOVLFFailureReason_REJECTED_CONFIDENCEVLFFailureReason_REJECTED_COVARIANCEVLFFailureReason_UNKNOWN";
  qword_27E0930 = "VLFFailureReason_POSE_DISCARDED_IMAGE_CALIBRATIONVLFFailureReason_POSE_DISCARDED_IMAGE_GRAVITYVLFFailureReason_POSE_DISCARDED_IMAGE_HORZ_UNCERTAINTYVLFFailureReason_POSE_DISCARDED_IMAGE_LOCATION_TYPEVLFFailureReason_POSE_DISCARDED_IMAGE_TILTVLFFailureReason_POSE_FAILEDVLFFailureReason_POSE_REJECTED_GPSVLFFailureReason_POSE_REJECTED_GRAVITYVLFFailureReason_POSE_REJECTED_HEIGHTVLFFailureReason_POSE_REJECTED_SCOREVLFFailureReason_POSE_REJECTED_VIOVLFFailureReason_REJECTED_CONFIDENCEVLFFailureReason_REJECTED_COVARIANCEVLFFailureReason_UNKNOWN";
  qword_27E0948 = "VLFFailureReason_POSE_DISCARDED_IMAGE_GRAVITYVLFFailureReason_POSE_DISCARDED_IMAGE_HORZ_UNCERTAINTYVLFFailureReason_POSE_DISCARDED_IMAGE_LOCATION_TYPEVLFFailureReason_POSE_DISCARDED_IMAGE_TILTVLFFailureReason_POSE_FAILEDVLFFailureReason_POSE_REJECTED_GPSVLFFailureReason_POSE_REJECTED_GRAVITYVLFFailureReason_POSE_REJECTED_HEIGHTVLFFailureReason_POSE_REJECTED_SCOREVLFFailureReason_POSE_REJECTED_VIOVLFFailureReason_REJECTED_CONFIDENCEVLFFailureReason_REJECTED_COVARIANCEVLFFailureReason_UNKNOWN";
  qword_27E0960 = "VLFFailureReason_POSE_DISCARDED_IMAGE_HORZ_UNCERTAINTYVLFFailureReason_POSE_DISCARDED_IMAGE_LOCATION_TYPEVLFFailureReason_POSE_DISCARDED_IMAGE_TILTVLFFailureReason_POSE_FAILEDVLFFailureReason_POSE_REJECTED_GPSVLFFailureReason_POSE_REJECTED_GRAVITYVLFFailureReason_POSE_REJECTED_HEIGHTVLFFailureReason_POSE_REJECTED_SCOREVLFFailureReason_POSE_REJECTED_VIOVLFFailureReason_REJECTED_CONFIDENCEVLFFailureReason_REJECTED_COVARIANCEVLFFailureReason_UNKNOWN";
  qword_27E0978 = "VLFFailureReason_POSE_DISCARDED_IMAGE_LOCATION_TYPEVLFFailureReason_POSE_DISCARDED_IMAGE_TILTVLFFailureReason_POSE_FAILEDVLFFailureReason_POSE_REJECTED_GPSVLFFailureReason_POSE_REJECTED_GRAVITYVLFFailureReason_POSE_REJECTED_HEIGHTVLFFailureReason_POSE_REJECTED_SCOREVLFFailureReason_POSE_REJECTED_VIOVLFFailureReason_REJECTED_CONFIDENCEVLFFailureReason_REJECTED_COVARIANCEVLFFailureReason_UNKNOWN";
  qword_27E0990 = "VLFFailureReason_POSE_DISCARDED_IMAGE_TILTVLFFailureReason_POSE_FAILEDVLFFailureReason_POSE_REJECTED_GPSVLFFailureReason_POSE_REJECTED_GRAVITYVLFFailureReason_POSE_REJECTED_HEIGHTVLFFailureReason_POSE_REJECTED_SCOREVLFFailureReason_POSE_REJECTED_VIOVLFFailureReason_REJECTED_CONFIDENCEVLFFailureReason_REJECTED_COVARIANCEVLFFailureReason_UNKNOWN";
  qword_27E09A8 = "VLFFailureReason_POSE_FAILEDVLFFailureReason_POSE_REJECTED_GPSVLFFailureReason_POSE_REJECTED_GRAVITYVLFFailureReason_POSE_REJECTED_HEIGHTVLFFailureReason_POSE_REJECTED_SCOREVLFFailureReason_POSE_REJECTED_VIOVLFFailureReason_REJECTED_CONFIDENCEVLFFailureReason_REJECTED_COVARIANCEVLFFailureReason_UNKNOWN";
  qword_27E09C0 = "VLFFailureReason_POSE_REJECTED_GPSVLFFailureReason_POSE_REJECTED_GRAVITYVLFFailureReason_POSE_REJECTED_HEIGHTVLFFailureReason_POSE_REJECTED_SCOREVLFFailureReason_POSE_REJECTED_VIOVLFFailureReason_REJECTED_CONFIDENCEVLFFailureReason_REJECTED_COVARIANCEVLFFailureReason_UNKNOWN";
  qword_27E09D8 = "VLFFailureReason_POSE_REJECTED_GRAVITYVLFFailureReason_POSE_REJECTED_HEIGHTVLFFailureReason_POSE_REJECTED_SCOREVLFFailureReason_POSE_REJECTED_VIOVLFFailureReason_REJECTED_CONFIDENCEVLFFailureReason_REJECTED_COVARIANCEVLFFailureReason_UNKNOWN";
  qword_27E09F0 = "VLFFailureReason_POSE_REJECTED_HEIGHTVLFFailureReason_POSE_REJECTED_SCOREVLFFailureReason_POSE_REJECTED_VIOVLFFailureReason_REJECTED_CONFIDENCEVLFFailureReason_REJECTED_COVARIANCEVLFFailureReason_UNKNOWN";
  qword_27E0A08 = "VLFFailureReason_POSE_REJECTED_SCOREVLFFailureReason_POSE_REJECTED_VIOVLFFailureReason_REJECTED_CONFIDENCEVLFFailureReason_REJECTED_COVARIANCEVLFFailureReason_UNKNOWN";
  qword_27E0A20 = "VLFFailureReason_POSE_REJECTED_VIOVLFFailureReason_REJECTED_CONFIDENCEVLFFailureReason_REJECTED_COVARIANCEVLFFailureReason_UNKNOWN";
  qword_27E0A38 = "VLFFailureReason_REJECTED_CONFIDENCEVLFFailureReason_REJECTED_COVARIANCEVLFFailureReason_UNKNOWN";
  qword_27E0A50 = "VLFFailureReason_REJECTED_COVARIANCEVLFFailureReason_UNKNOWN";
  qword_27E0A68 = "VLFFailureReason_UNKNOWN";
  qword_27E08D0 = "VLFFailureReason_BAD_IMAGEVLFFailureReason_BAD_INPUTVLFFailureReason_MAP_DATA_MISSINGVLFFailureReason_MAP_DATA_PENDINGVLFFailureReason_POSE_DISCARDED_IMAGE_CALIBRATIONVLFFailureReason_POSE_DISCARDED_IMAGE_GRAVITYVLFFailureReason_POSE_DISCARDED_IMAGE_HORZ_UNCERTAINTYVLFFailureReason_POSE_DISCARDED_IMAGE_LOCATION_TYPEVLFFailureReason_POSE_DISCARDED_IMAGE_TILTVLFFailureReason_POSE_FAILEDVLFFailureReason_POSE_REJECTED_GPSVLFFailureReason_POSE_REJECTED_GRAVITYVLFFailureReason_POSE_REJECTED_HEIGHTVLFFailureReason_POSE_REJECTED_SCOREVLFFailureReason_POSE_REJECTED_VIOVLFFailureReason_REJECTED_CONFIDENCEVLFFailureReason_REJECTED_COVARIANCEVLFFailureReason_UNKNOWN";
  qword_27E08D8 = 26;
  dword_27E08E0 = 1;
  qword_27E08F0 = 26;
  dword_27E08F8 = 10;
  qword_27E0908 = 33;
  dword_27E0910 = 2;
  qword_27E0920 = 33;
  dword_27E0928 = 3;
  qword_27E0938 = 49;
  dword_27E0940 = 15;
  qword_27E0950 = 45;
  dword_27E0958 = 14;
  qword_27E0968 = 54;
  dword_27E0970 = 17;
  qword_27E0980 = 51;
  dword_27E0988 = 16;
  qword_27E0998 = 42;
  dword_27E09A0 = 13;
  qword_27E09B0 = 28;
  dword_27E09B8 = 4;
  qword_27E09C8 = 34;
  dword_27E09D0 = 8;
  qword_27E09E0 = 38;
  dword_27E09E8 = 7;
  qword_27E09F8 = 37;
  dword_27E0A00 = 6;
  qword_27E0A10 = 36;
  dword_27E0A18 = 9;
  qword_27E0A28 = 34;
  dword_27E0A30 = 5;
  qword_27E0A40 = 36;
  dword_27E0A48 = 11;
  qword_27E0A58 = 36;
  dword_27E0A60 = 12;
  qword_27E0A70 = 24;
  dword_27E0A78 = 0;
  qword_27E0A80 = "VLFARGeoTrackingState_INITIALIZINGVLFARGeoTrackingState_LOCALIZEDVLFARGeoTrackingState_LOCALIZINGVLFARGeoTrackingState_NOT_AVAILABLEVLFARGeoTrackingState_UNKNOWN";
  *algn_27E0A88 = 34;
  dword_27E1228 = 217;
  qword_27E1230 = &aAccidentConfir[1374];
  dword_27E1240 = 216;
  qword_27E1248 = &aAccidentConfir[1391];
  qword_27E1250 = 21;
  dword_27E1258 = 241;
  qword_27E1260 = &aAccidentConfir[1412];
  qword_27E1278 = &aAccidentConfir[1428];
  qword_27E1290 = &aAccidentConfir[1438];
  dword_27E12A0 = 157;
  qword_27E12A8 = &aAccidentConfir[1468];
  dword_27E12B8 = 156;
  qword_27E12C0 = &aAccidentConfir[1499];
  dword_27E12D0 = 231;
  qword_27E12D8 = &aAccidentConfir[1517];
  dword_27E12E8 = 155;
  qword_27E12F0 = &aAccidentConfir[1555];
  dword_27E1300 = 218;
  qword_27E1308 = &aAccidentConfir[1588];
  dword_27E1318 = 219;
  qword_27E1320 = &aAccidentConfir[1620];
  qword_27E1338 = &aAccidentConfir[1648];
  dword_27E1348 = 264;
  qword_27E1350 = &aAccidentConfir[1694];
  qword_27E1368 = &aAccidentConfir[1722];
  dword_27E1378 = 159;
  qword_27E1380 = &aAccidentConfir[1768];
  qword_27E1398 = &aAccidentConfir[1794];
  qword_27E13B0 = &aAccidentConfir[1825];
  dword_27E13C0 = 265;
  qword_27E13C8 = &aAccidentConfir[1860];
  qword_27E13E0 = &aAccidentConfir[1888];
  qword_27E13F8 = &aAccidentConfir[1916];
  qword_27E1410 = &aAccidentConfir[1933];
  qword_27E1428 = &aAccidentConfir[1958];
  qword_27E1440 = &aAccidentConfir[1978];
  dword_27E1450 = 175;
  qword_27E1458 = &aAccidentConfir[2005];
  dword_27E1468 = 149;
  qword_27E1470 = &aAccidentConfir[2015];
  qword_27E1488 = &aAccidentConfir[2044];
  qword_27E14A0 = &aAccidentConfir[2062];
  dword_27E14B0 = 10002;
  qword_27E14B8 = &aAccidentConfir[2099];
  dword_27E14C8 = 152;
  qword_27E14D0 = &aAccidentConfir[2116];
  dword_27E14E0 = 232;
  qword_27E14E8 = &aAccidentConfir[2141];
  qword_27E1500 = &aAccidentConfir[2163];
  dword_27E1510 = 170;
  qword_27E1518 = &aAccidentConfir[2187];
  qword_27E1530 = &aAccidentConfir[2199];
  qword_27E1548 = &aAccidentConfir[2209];
  dword_27E1558 = 116;
  qword_27E1560 = &aAccidentConfir[2227];
  dword_27E1570 = 114;
  qword_27E1578 = &aAccidentConfir[2245];
  dword_27E1588 = 146;
  qword_27E1590 = &aAccidentConfir[2263];
  dword_27E15A0 = 115;
  qword_27E15A8 = "ETA_UNDERESTIMATE_DRIVINGEXIT_MAPSEXIT_MAPS_ACCOUNTING_BOOKENDEXIT_MAPS_CARPLAYEXIT_MAPS_CARPLAY_ACCOUNTING_BOOKENDEXTREME_ETA_OVERESTIMATE_DRIVINGEXTREME_ETA_UNDERESTIMATE_DRIVINGFAVORITE_ADD_PLACEFAVORITE_TAP_LIST_ITEMFIRST_PARTY_MAP_VIEWFLYOVER_FOREGROUNDEDGET_DIRECTIONS_CARPLAY_CONNECTEDHAS_REROUTE_DRIVINGHIKING_ENGAGEMENTHIKING_PLACECARDINCIDENT_SUBMISSIONJUNCTION_VIEW_SHOWNLIBRARY_INTERACTIONLOC_INTEL_DOOM_NOTIFICATION_DISPLAYEDLOC_INTEL_DOOM_NOTIFICATION_TAPPEDLOOK_AROUND_FOREGROUNDEDLOOK_AROUND_SHAREDMAPSHOME_GET_DIRECTIONSMAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E15B8 = 172;
  qword_27E15C0 = "EXIT_MAPSEXIT_MAPS_ACCOUNTING_BOOKENDEXIT_MAPS_CARPLAYEXIT_MAPS_CARPLAY_ACCOUNTING_BOOKENDEXTREME_ETA_OVERESTIMATE_DRIVINGEXTREME_ETA_UNDERESTIMATE_DRIVINGFAVORITE_ADD_PLACEFAVORITE_TAP_LIST_ITEMFIRST_PARTY_MAP_VIEWFLYOVER_FOREGROUNDEDGET_DIRECTIONS_CARPLAY_CONNECTEDHAS_REROUTE_DRIVINGHIKING_ENGAGEMENTHIKING_PLACECARDINCIDENT_SUBMISSIONJUNCTION_VIEW_SHOWNLIBRARY_INTERACTIONLOC_INTEL_DOOM_NOTIFICATION_DISPLAYEDLOC_INTEL_DOOM_NOTIFICATION_TAPPEDLOOK_AROUND_FOREGROUNDEDLOOK_AROUND_SHAREDMAPSHOME_GET_DIRECTIONSMAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E15D0 = 150;
  qword_27E15D8 = "EXIT_MAPS_ACCOUNTING_BOOKENDEXIT_MAPS_CARPLAYEXIT_MAPS_CARPLAY_ACCOUNTING_BOOKENDEXTREME_ETA_OVERESTIMATE_DRIVINGEXTREME_ETA_UNDERESTIMATE_DRIVINGFAVORITE_ADD_PLACEFAVORITE_TAP_LIST_ITEMFIRST_PARTY_MAP_VIEWFLYOVER_FOREGROUNDEDGET_DIRECTIONS_CARPLAY_CONNECTEDHAS_REROUTE_DRIVINGHIKING_ENGAGEMENTHIKING_PLACECARDINCIDENT_SUBMISSIONJUNCTION_VIEW_SHOWNLIBRARY_INTERACTIONLOC_INTEL_DOOM_NOTIFICATION_DISPLAYEDLOC_INTEL_DOOM_NOTIFICATION_TAPPEDLOOK_AROUND_FOREGROUNDEDLOOK_AROUND_SHAREDMAPSHOME_GET_DIRECTIONSMAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E15E8 = 10001;
  qword_27E15F0 = "EXIT_MAPS_CARPLAYEXIT_MAPS_CARPLAY_ACCOUNTING_BOOKENDEXTREME_ETA_OVERESTIMATE_DRIVINGEXTREME_ETA_UNDERESTIMATE_DRIVINGFAVORITE_ADD_PLACEFAVORITE_TAP_LIST_ITEMFIRST_PARTY_MAP_VIEWFLYOVER_FOREGROUNDEDGET_DIRECTIONS_CARPLAY_CONNECTEDHAS_REROUTE_DRIVINGHIKING_ENGAGEMENTHIKING_PLACECARDINCIDENT_SUBMISSIONJUNCTION_VIEW_SHOWNLIBRARY_INTERACTIONLOC_INTEL_DOOM_NOTIFICATION_DISPLAYEDLOC_INTEL_DOOM_NOTIFICATION_TAPPEDLOOK_AROUND_FOREGROUNDEDLOOK_AROUND_SHAREDMAPSHOME_GET_DIRECTIONSMAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1600 = 165;
  qword_27E1608 = "EXIT_MAPS_CARPLAY_ACCOUNTING_BOOKENDEXTREME_ETA_OVERESTIMATE_DRIVINGEXTREME_ETA_UNDERESTIMATE_DRIVINGFAVORITE_ADD_PLACEFAVORITE_TAP_LIST_ITEMFIRST_PARTY_MAP_VIEWFLYOVER_FOREGROUNDEDGET_DIRECTIONS_CARPLAY_CONNECTEDHAS_REROUTE_DRIVINGHIKING_ENGAGEMENTHIKING_PLACECARDINCIDENT_SUBMISSIONJUNCTION_VIEW_SHOWNLIBRARY_INTERACTIONLOC_INTEL_DOOM_NOTIFICATION_DISPLAYEDLOC_INTEL_DOOM_NOTIFICATION_TAPPEDLOOK_AROUND_FOREGROUNDEDLOOK_AROUND_SHAREDMAPSHOME_GET_DIRECTIONSMAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1618 = 10003;
  qword_27E1620 = "EXTREME_ETA_OVERESTIMATE_DRIVINGEXTREME_ETA_UNDERESTIMATE_DRIVINGFAVORITE_ADD_PLACEFAVORITE_TAP_LIST_ITEMFIRST_PARTY_MAP_VIEWFLYOVER_FOREGROUNDEDGET_DIRECTIONS_CARPLAY_CONNECTEDHAS_REROUTE_DRIVINGHIKING_ENGAGEMENTHIKING_PLACECARDINCIDENT_SUBMISSIONJUNCTION_VIEW_SHOWNLIBRARY_INTERACTIONLOC_INTEL_DOOM_NOTIFICATION_DISPLAYEDLOC_INTEL_DOOM_NOTIFICATION_TAPPEDLOOK_AROUND_FOREGROUNDEDLOOK_AROUND_SHAREDMAPSHOME_GET_DIRECTIONSMAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1630 = 171;
  qword_27E1638 = "EXTREME_ETA_UNDERESTIMATE_DRIVINGFAVORITE_ADD_PLACEFAVORITE_TAP_LIST_ITEMFIRST_PARTY_MAP_VIEWFLYOVER_FOREGROUNDEDGET_DIRECTIONS_CARPLAY_CONNECTEDHAS_REROUTE_DRIVINGHIKING_ENGAGEMENTHIKING_PLACECARDINCIDENT_SUBMISSIONJUNCTION_VIEW_SHOWNLIBRARY_INTERACTIONLOC_INTEL_DOOM_NOTIFICATION_DISPLAYEDLOC_INTEL_DOOM_NOTIFICATION_TAPPEDLOOK_AROUND_FOREGROUNDEDLOOK_AROUND_SHAREDMAPSHOME_GET_DIRECTIONSMAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1648 = 173;
  qword_27E1650 = "FAVORITE_ADD_PLACEFAVORITE_TAP_LIST_ITEMFIRST_PARTY_MAP_VIEWFLYOVER_FOREGROUNDEDGET_DIRECTIONS_CARPLAY_CONNECTEDHAS_REROUTE_DRIVINGHIKING_ENGAGEMENTHIKING_PLACECARDINCIDENT_SUBMISSIONJUNCTION_VIEW_SHOWNLIBRARY_INTERACTIONLOC_INTEL_DOOM_NOTIFICATION_DISPLAYEDLOC_INTEL_DOOM_NOTIFICATION_TAPPEDLOOK_AROUND_FOREGROUNDEDLOOK_AROUND_SHAREDMAPSHOME_GET_DIRECTIONSMAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1668 = "FAVORITE_TAP_LIST_ITEMFIRST_PARTY_MAP_VIEWFLYOVER_FOREGROUNDEDGET_DIRECTIONS_CARPLAY_CONNECTEDHAS_REROUTE_DRIVINGHIKING_ENGAGEMENTHIKING_PLACECARDINCIDENT_SUBMISSIONJUNCTION_VIEW_SHOWNLIBRARY_INTERACTIONLOC_INTEL_DOOM_NOTIFICATION_DISPLAYEDLOC_INTEL_DOOM_NOTIFICATION_TAPPEDLOOK_AROUND_FOREGROUNDEDLOOK_AROUND_SHAREDMAPSHOME_GET_DIRECTIONSMAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1680 = "FIRST_PARTY_MAP_VIEWFLYOVER_FOREGROUNDEDGET_DIRECTIONS_CARPLAY_CONNECTEDHAS_REROUTE_DRIVINGHIKING_ENGAGEMENTHIKING_PLACECARDINCIDENT_SUBMISSIONJUNCTION_VIEW_SHOWNLIBRARY_INTERACTIONLOC_INTEL_DOOM_NOTIFICATION_DISPLAYEDLOC_INTEL_DOOM_NOTIFICATION_TAPPEDLOOK_AROUND_FOREGROUNDEDLOOK_AROUND_SHAREDMAPSHOME_GET_DIRECTIONSMAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1690 = 238;
  qword_27E1698 = "FLYOVER_FOREGROUNDEDGET_DIRECTIONS_CARPLAY_CONNECTEDHAS_REROUTE_DRIVINGHIKING_ENGAGEMENTHIKING_PLACECARDINCIDENT_SUBMISSIONJUNCTION_VIEW_SHOWNLIBRARY_INTERACTIONLOC_INTEL_DOOM_NOTIFICATION_DISPLAYEDLOC_INTEL_DOOM_NOTIFICATION_TAPPEDLOOK_AROUND_FOREGROUNDEDLOOK_AROUND_SHAREDMAPSHOME_GET_DIRECTIONSMAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E16B0 = "GET_DIRECTIONS_CARPLAY_CONNECTEDHAS_REROUTE_DRIVINGHIKING_ENGAGEMENTHIKING_PLACECARDINCIDENT_SUBMISSIONJUNCTION_VIEW_SHOWNLIBRARY_INTERACTIONLOC_INTEL_DOOM_NOTIFICATION_DISPLAYEDLOC_INTEL_DOOM_NOTIFICATION_TAPPEDLOOK_AROUND_FOREGROUNDEDLOOK_AROUND_SHAREDMAPSHOME_GET_DIRECTIONSMAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E16C0 = 158;
  qword_27E16C8 = "HAS_REROUTE_DRIVINGHIKING_ENGAGEMENTHIKING_PLACECARDINCIDENT_SUBMISSIONJUNCTION_VIEW_SHOWNLIBRARY_INTERACTIONLOC_INTEL_DOOM_NOTIFICATION_DISPLAYEDLOC_INTEL_DOOM_NOTIFICATION_TAPPEDLOOK_AROUND_FOREGROUNDEDLOOK_AROUND_SHAREDMAPSHOME_GET_DIRECTIONSMAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E16D8 = 169;
  qword_27E16E0 = "HIKING_ENGAGEMENTHIKING_PLACECARDINCIDENT_SUBMISSIONJUNCTION_VIEW_SHOWNLIBRARY_INTERACTIONLOC_INTEL_DOOM_NOTIFICATION_DISPLAYEDLOC_INTEL_DOOM_NOTIFICATION_TAPPEDLOOK_AROUND_FOREGROUNDEDLOOK_AROUND_SHAREDMAPSHOME_GET_DIRECTIONSMAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E16F0 = 206;
  qword_27E16F8 = "HIKING_PLACECARDINCIDENT_SUBMISSIONJUNCTION_VIEW_SHOWNLIBRARY_INTERACTIONLOC_INTEL_DOOM_NOTIFICATION_DISPLAYEDLOC_INTEL_DOOM_NOTIFICATION_TAPPEDLOOK_AROUND_FOREGROUNDEDLOOK_AROUND_SHAREDMAPSHOME_GET_DIRECTIONSMAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1708 = 207;
  qword_27E1710 = "INCIDENT_SUBMISSIONJUNCTION_VIEW_SHOWNLIBRARY_INTERACTIONLOC_INTEL_DOOM_NOTIFICATION_DISPLAYEDLOC_INTEL_DOOM_NOTIFICATION_TAPPEDLOOK_AROUND_FOREGROUNDEDLOOK_AROUND_SHAREDMAPSHOME_GET_DIRECTIONSMAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1728 = "JUNCTION_VIEW_SHOWNLIBRARY_INTERACTIONLOC_INTEL_DOOM_NOTIFICATION_DISPLAYEDLOC_INTEL_DOOM_NOTIFICATION_TAPPEDLOOK_AROUND_FOREGROUNDEDLOOK_AROUND_SHAREDMAPSHOME_GET_DIRECTIONSMAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1738 = 113;
  qword_27E1740 = "LIBRARY_INTERACTIONLOC_INTEL_DOOM_NOTIFICATION_DISPLAYEDLOC_INTEL_DOOM_NOTIFICATION_TAPPEDLOOK_AROUND_FOREGROUNDEDLOOK_AROUND_SHAREDMAPSHOME_GET_DIRECTIONSMAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1750 = 226;
  qword_27E1758 = "LOC_INTEL_DOOM_NOTIFICATION_DISPLAYEDLOC_INTEL_DOOM_NOTIFICATION_TAPPEDLOOK_AROUND_FOREGROUNDEDLOOK_AROUND_SHAREDMAPSHOME_GET_DIRECTIONSMAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1768 = 266;
  qword_27E1770 = "LOC_INTEL_DOOM_NOTIFICATION_TAPPEDLOOK_AROUND_FOREGROUNDEDLOOK_AROUND_SHAREDMAPSHOME_GET_DIRECTIONSMAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1780 = 267;
  qword_27E1788 = "LOOK_AROUND_FOREGROUNDEDLOOK_AROUND_SHAREDMAPSHOME_GET_DIRECTIONSMAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E17A0 = "LOOK_AROUND_SHAREDMAPSHOME_GET_DIRECTIONSMAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E17B8 = "MAPSHOME_GET_DIRECTIONSMAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E17D0 = "MAPS_APP_DWELL_TIME_30_SECMAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E17E0 = 243;
  qword_27E17E8 = "MAPS_APP_DWELL_TIME_3_SECMAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E17F8 = 242;
  qword_27E1800 = "MAPS_CARPLAY_DWELL_TIME_30_SECMAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1810 = 249;
  qword_27E1818 = "MAPS_CARPLAY_DWELL_TIME_3_SECMAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1828 = 248;
  qword_27E1830 = "MAPS_HANDOFFMAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1840 = 117;
  qword_27E1848 = "MAPS_HANDOFF_FROM_IPADMAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1860 = "MAPS_HANDOFF_FROM_MACMAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1878 = "MAPS_HANDOFF_FROM_PHONEMAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1890 = "MAPS_HANDOFF_FROM_WATCHMAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E18A8 = "MAPS_SEARCH_CARPLAY_CONNECTEDMAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E18B8 = 164;
  qword_27E18C0 = "MAP_EXPLORED_HZMAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E18D0 = 245;
  qword_27E18D8 = "MAP_EXPLORED_LZMAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E18E8 = 246;
  qword_27E18F0 = "MAP_MODE_DRIVING_SELECTEDMAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1900 = 130;
  qword_27E1908 = "MAP_MODE_DRIVING_USEDMAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1918 = 134;
  qword_27E1920 = "MAP_MODE_EXPLORE_SELECTEDMAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1930 = 131;
  qword_27E1938 = "MAP_MODE_EXPLORE_USEDMAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1948 = 135;
  qword_27E1950 = "MAP_MODE_SATELLITE_SELECTEDMAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1960 = 133;
  qword_27E1968 = "MAP_MODE_SATELLITE_USEDMAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1978 = 137;
  qword_27E1980 = "MAP_MODE_TRANSIT_SELECTEDMAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1990 = 132;
  qword_27E1998 = "MAP_MODE_TRANSIT_USEDMAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E19A8 = 136;
  qword_27E19B0 = "MAP_VIEW_ACTIVATEDMAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E19C0 = 154;
  qword_27E19C8 = "MAP_VIEW_FOREGROUNDEDMAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E19E0 = "MAP_VIEW_INSTANTIATEDMODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E19F0 = 153;
  qword_27E19F8 = "MODERN_MAP_EXPLOREDNAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1A08 = 198;
  qword_27E1A10 = "NAV_FEEDBACK_DRIVINGNAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1A20 = 167;
  qword_27E1A28 = "NAV_SESSION_COARSE_LOCATIONNAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1A40 = "NAV_SESSION_PRECISE_LOCATIONNAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1A58 = "NAV_STARTED_CARPLAYNAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1A70 = "NAV_STARTED_CURATED_HIKENAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1A80 = 220;
  qword_27E1A88 = "NAV_STARTED_CUSTOM_HIKENAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1A98 = 221;
  qword_27E1AA0 = "NAV_STARTED_CYCLINGNAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1AB8 = "NAV_STARTED_DRIVINGNAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1AD0 = "NAV_STARTED_EBIKENAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1AE8 = "NAV_STARTED_EV_ROUTINGNAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1AF8 = 67;
  qword_27E1B00 = "NAV_STARTED_FAMILIAR_ROUTENAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1B10 = 268;
  qword_27E1B18 = "NAV_STARTED_JUNCTION_VIEWNAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1B28 = 68;
  qword_27E1B30 = "NAV_STARTED_LANE_GUIDANCENAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1B40 = 69;
  qword_27E1B48 = "NAV_STARTED_TRANSITNAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1B58 = 70;
  qword_27E1B60 = "NAV_STARTED_WALKINGNEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1B70 = 71;
  qword_27E1B78 = "NEARBY_SUGGESTION_SHARENEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1B88 = 250;
  qword_27E1B90 = "NEARBY_SUGGESTION_WRONG_LOCATIONNEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1BA0 = 251;
  qword_27E1BA8 = "NEARBY_TRANSIT_SHOWNNEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1BB8 = 123;
  qword_27E1BC0 = "NEARBY_TRANSIT_TAPPEDNO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1BD0 = 124;
  qword_27E1BD8 = "NO_SEARCH_RESULTSNO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1BE8 = 208;
  qword_27E1BF0 = "NO_SEARCH_RESULTS_OFFLINEOPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1C00 = 233;
  qword_27E1C08 = "OPEN_INDOOR_MAPOPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1C18 = 72;
  qword_27E1C20 = "OPEN_KEYBOARD_CARPLAY_UIOPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1C30 = 161;
  qword_27E1C38 = "OPEN_SEARCH_CARPLAY_UIOTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1C48 = 163;
  qword_27E1C50 = "OTHER_GET_DIRECTIONSPLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1C60 = 73;
  qword_27E1C68 = "PLACECARD_GET_DIRECTIONSPLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1C78 = 74;
  qword_27E1C80 = "PLACECARD_RICH_DATA_USEDPLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1C90 = 75;
  qword_27E1C98 = "PLACECARD_SHAREDPLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1CA8 = 76;
  qword_27E1CB0 = "PLACECARD_SHOWNPLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1CC0 = 77;
  qword_27E1CC8 = "PLACECARD_SHOWN_SAFARIPLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1CD8 = 78;
  qword_27E1CE0 = "PLACECARD_SHOWN_SIRIPLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1CF0 = 79;
  qword_27E1CF8 = "PLACECARD_SHOWN_SPOTLIGHTPLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1D08 = 80;
  qword_27E1D10 = "PLACECARD_START_NAVPOSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1D20 = 81;
  qword_27E1D28 = "POSITIVE_SEARCH_ENGAGEMENTPROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1D38 = 203;
  qword_27E1D40 = "PROMINENT_GET_DIRECTIONSPUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1D50 = 82;
  qword_27E1D58 = "PUNCH_IN_3RD_PARTYPUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1D68 = 189;
  qword_27E1D70 = "PUNCH_IN_FINDMYPUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1D80 = 187;
  qword_27E1D88 = "PUNCH_IN_OTHER_2ND_PARTYPUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1D98 = 188;
  qword_27E1DA0 = "PUNCH_IN_SAFARIPUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1DB0 = 184;
  qword_27E1DB8 = "PUNCH_IN_SHOWCASEPUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1DC8 = 209;
  qword_27E1DD0 = "PUNCH_IN_SIRIPUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1DE0 = 183;
  qword_27E1DE8 = "PUNCH_IN_SMSPUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1DF8 = 186;
  qword_27E1E00 = "PUNCH_IN_SPOTLIGHTPUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1E10 = 185;
  qword_27E1E18 = "PUNCH_IN_WIDGETPUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1E28 = 247;
  qword_27E1E30 = "PUNCH_OUT_FINDMYRAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1E40 = 204;
  qword_27E1E48 = "RAP_GOOD_TRIPRAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1E58 = 174;
  qword_27E1E60 = "RAP_STARTEDRAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1E70 = 83;
  qword_27E1E78 = "RAP_SUBMITTEDRIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1E88 = 191;
  qword_27E1E90 = "RIDESHARE_REQUESTEDROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1EA0 = 84;
  qword_27E1EA8 = "ROUTE_PLANNING_CARPLAYROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1EB8 = 271;
  qword_27E1EC0 = "ROUTE_PLANNING_CYCLINGROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1ED0 = 270;
  qword_27E1ED8 = "ROUTE_PLANNING_DRIVINGROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1EE8 = 272;
  qword_27E1EF0 = "ROUTE_PLANNING_TRANSITROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1F00 = 273;
  qword_27E1F08 = "ROUTE_PLANNING_WALKINGROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1F18 = 274;
  qword_27E1F20 = "ROUTING_TRAY_CURATED_HIKE_SHOWNROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1F30 = 222;
  qword_27E1F38 = "ROUTING_TRAY_CUSTOM_HIKE_SHOWNSEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1F48 = 223;
  qword_27E1F50 = "SEARCH_BROWSE_CATEGORY_DEFAULTSEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1F60 = 256;
  qword_27E1F68 = "SEARCH_BROWSE_CATEGORY_SARSEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1F78 = 257;
  qword_27E1F80 = "SEARCH_FILTER_INTERACTIONSEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1F90 = 227;
  qword_27E1220 = 31;
  qword_27E1238 = 17;
  qword_27E21F0 = "SHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E2E38 = "REALTIME_TRAFFIC_PROBESESSIONLESS_USAGESHORT_SESSION_USAGETELEMETRYUSAGEWIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
  dword_27E3040 = 403;
  qword_27E3150 = "LOOK_AROUND_VIEWMAPS_FEATURESMAPS_LAUNCHMAPS_PLACE_IDSMAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  qword_27E3138 = "LOG_MSG_STATE_TYPE_UNKNOWNLOOK_AROUND_VIEWMAPS_FEATURESMAPS_LAUNCHMAPS_PLACE_IDSMAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  unk_27E3140 = 26;
  dword_27E3148 = 0;
  dword_27E3118 = 704;
  qword_27E3120 = "IMPRESSION_OBJECTLOG_MSG_STATE_TYPE_UNKNOWNLOOK_AROUND_VIEWMAPS_FEATURESMAPS_LAUNCHMAPS_PLACE_IDSMAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  unk_27E3128 = 17;
  dword_27E3130 = 10;
  qword_27E3108 = "FLYOVERIMPRESSION_OBJECTLOG_MSG_STATE_TYPE_UNKNOWNLOOK_AROUND_VIEWMAPS_FEATURESMAPS_LAUNCHMAPS_PLACE_IDSMAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  qword_27E30F0 = "FLEX_CARD_VERSIONFLYOVERIMPRESSION_OBJECTLOG_MSG_STATE_TYPE_UNKNOWNLOOK_AROUND_VIEWMAPS_FEATURESMAPS_LAUNCHMAPS_PLACE_IDSMAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  unk_27E30F8 = 17;
  dword_27E3100 = 14;
  qword_27E3110 = 7;
  dword_27E30E8 = 406;
  qword_27E30D8 = "EXTENSIONFLEX_CARD_VERSIONFLYOVERIMPRESSION_OBJECTLOG_MSG_STATE_TYPE_UNKNOWNLOOK_AROUND_VIEWMAPS_FEATURESMAPS_LAUNCHMAPS_PLACE_IDSMAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  unk_27E30E0 = 9;
  dword_27E3088 = 407;
  dword_27E30D0 = 602;
  qword_27E30C0 = "EXPERIMENTSEXTENSIONFLEX_CARD_VERSIONFLYOVERIMPRESSION_OBJECTLOG_MSG_STATE_TYPE_UNKNOWNLOOK_AROUND_VIEWMAPS_FEATURESMAPS_LAUNCHMAPS_PLACE_IDSMAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  unk_27E30C8 = 11;
  dword_27E30A0 = 721;
  qword_27E30A8 = "ELEMENT_IMPRESSIONEXPERIMENTSEXTENSIONFLEX_CARD_VERSIONFLYOVERIMPRESSION_OBJECTLOG_MSG_STATE_TYPE_UNKNOWNLOOK_AROUND_VIEWMAPS_FEATURESMAPS_LAUNCHMAPS_PLACE_IDSMAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  unk_27E30B0 = 18;
  dword_27E30B8 = 9;
  qword_27E3090 = "DIRECTIONS_DETAILELEMENT_IMPRESSIONEXPERIMENTSEXTENSIONFLEX_CARD_VERSIONFLYOVERIMPRESSION_OBJECTLOG_MSG_STATE_TYPE_UNKNOWNLOOK_AROUND_VIEWMAPS_FEATURESMAPS_LAUNCHMAPS_PLACE_IDSMAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  unk_27E3098 = 17;
  qword_27E3078 = "DEVICE_SETTINGSDIRECTIONS_DETAILELEMENT_IMPRESSIONEXPERIMENTSEXTENSIONFLEX_CARD_VERSIONFLYOVERIMPRESSION_OBJECTLOG_MSG_STATE_TYPE_UNKNOWNLOOK_AROUND_VIEWMAPS_FEATURESMAPS_LAUNCHMAPS_PLACE_IDSMAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  unk_27E3080 = 15;
  dword_27E3070 = 402;
  qword_27E3060 = "DEVICE_LOCALEDEVICE_SETTINGSDIRECTIONS_DETAILELEMENT_IMPRESSIONEXPERIMENTSEXTENSIONFLEX_CARD_VERSIONFLYOVERIMPRESSION_OBJECTLOG_MSG_STATE_TYPE_UNKNOWNLOOK_AROUND_VIEWMAPS_FEATURESMAPS_LAUNCHMAPS_PLACE_IDSMAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  unk_27E3068 = 13;
  qword_27E3048 = "DEVICE_IDENTIFIERDEVICE_LOCALEDEVICE_SETTINGSDIRECTIONS_DETAILELEMENT_IMPRESSIONEXPERIMENTSEXTENSIONFLEX_CARD_VERSIONFLYOVERIMPRESSION_OBJECTLOG_MSG_STATE_TYPE_UNKNOWNLOOK_AROUND_VIEWMAPS_FEATURESMAPS_LAUNCHMAPS_PLACE_IDSMAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E3058 = 201;
  qword_27E3030 = "DEVICE_CONNECTIONDEVICE_IDENTIFIERDEVICE_LOCALEDEVICE_SETTINGSDIRECTIONS_DETAILELEMENT_IMPRESSIONEXPERIMENTSEXTENSIONFLEX_CARD_VERSIONFLYOVERIMPRESSION_OBJECTLOG_MSG_STATE_TYPE_UNKNOWNLOOK_AROUND_VIEWMAPS_FEATURESMAPS_LAUNCHMAPS_PLACE_IDSMAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  qword_27E3038 = 17;
  qword_27E3050 = 17;
  dword_27E2FC8 = 301;
  dword_27E3028 = 401;
  qword_27E3018 = "DEVICE_BASEDEVICE_CONNECTIONDEVICE_IDENTIFIERDEVICE_LOCALEDEVICE_SETTINGSDIRECTIONS_DETAILELEMENT_IMPRESSIONEXPERIMENTSEXTENSIONFLEX_CARD_VERSIONFLYOVERIMPRESSION_OBJECTLOG_MSG_STATE_TYPE_UNKNOWNLOOK_AROUND_VIEWMAPS_FEATURESMAPS_LAUNCHMAPS_PLACE_IDSMAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  unk_27E3020 = 11;
  dword_27E2FE0 = 404;
  dword_27E3010 = 715;
  qword_27E3000 = "DETAIL_LOOK_AROUND_LOGDEVICE_BASEDEVICE_CONNECTIONDEVICE_IDENTIFIERDEVICE_LOCALEDEVICE_SETTINGSDIRECTIONS_DETAILELEMENT_IMPRESSIONEXPERIMENTSEXTENSIONFLEX_CARD_VERSIONFLYOVERIMPRESSION_OBJECTLOG_MSG_STATE_TYPE_UNKNOWNLOOK_AROUND_VIEWMAPS_FEATURESMAPS_LAUNCHMAPS_PLACE_IDSMAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  unk_27E3008 = 22;
  dword_27E2FF8 = 719;
  qword_27E2FE8 = "CURATED_COLLECTIONDETAIL_LOOK_AROUND_LOGDEVICE_BASEDEVICE_CONNECTIONDEVICE_IDENTIFIERDEVICE_LOCALEDEVICE_SETTINGSDIRECTIONS_DETAILELEMENT_IMPRESSIONEXPERIMENTSEXTENSIONFLEX_CARD_VERSIONFLYOVERIMPRESSION_OBJECTLOG_MSG_STATE_TYPE_UNKNOWNLOOK_AROUND_VIEWMAPS_FEATURESMAPS_LAUNCHMAPS_PLACE_IDSMAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  unk_27E2FF0 = 18;
  qword_27E2FD0 = "CAR_PLAYCURATED_COLLECTIONDETAIL_LOOK_AROUND_LOGDEVICE_BASEDEVICE_CONNECTIONDEVICE_IDENTIFIERDEVICE_LOCALEDEVICE_SETTINGSDIRECTIONS_DETAILELEMENT_IMPRESSIONEXPERIMENTSEXTENSIONFLEX_CARD_VERSIONFLYOVERIMPRESSION_OBJECTLOG_MSG_STATE_TYPE_UNKNOWNLOOK_AROUND_VIEWMAPS_FEATURESMAPS_LAUNCHMAPS_PLACE_IDSMAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  unk_27E2FD8 = 8;
  qword_27E2FB8 = "APPLICATION_IDENTIFIERCAR_PLAYCURATED_COLLECTIONDETAIL_LOOK_AROUND_LOGDEVICE_BASEDEVICE_CONNECTIONDEVICE_IDENTIFIERDEVICE_LOCALEDEVICE_SETTINGSDIRECTIONS_DETAILELEMENT_IMPRESSIONEXPERIMENTSEXTENSIONFLEX_CARD_VERSIONFLYOVERIMPRESSION_OBJECTLOG_MSG_STATE_TYPE_UNKNOWNLOOK_AROUND_VIEWMAPS_FEATURESMAPS_LAUNCHMAPS_PLACE_IDSMAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  unk_27E2FC0 = 22;
  qword_27E2FA0 = "ACTION_BUTTON_DETAILSAPPLICATION_IDENTIFIERCAR_PLAYCURATED_COLLECTIONDETAIL_LOOK_AROUND_LOGDEVICE_BASEDEVICE_CONNECTIONDEVICE_IDENTIFIERDEVICE_LOCALEDEVICE_SETTINGSDIRECTIONS_DETAILELEMENT_IMPRESSIONEXPERIMENTSEXTENSIONFLEX_CARD_VERSIONFLYOVERIMPRESSION_OBJECTLOG_MSG_STATE_TYPE_UNKNOWNLOOK_AROUND_VIEWMAPS_FEATURESMAPS_LAUNCHMAPS_PLACE_IDSMAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  unk_27E2FA8 = 21;
  dword_27E2FB0 = 12;
  dword_27E2EF0 = 500;
  qword_27E2F88 = "ACCOUNTACTION_BUTTON_DETAILSAPPLICATION_IDENTIFIERCAR_PLAYCURATED_COLLECTIONDETAIL_LOOK_AROUND_LOGDEVICE_BASEDEVICE_CONNECTIONDEVICE_IDENTIFIERDEVICE_LOCALEDEVICE_SETTINGSDIRECTIONS_DETAILELEMENT_IMPRESSIONEXPERIMENTSEXTENSIONFLEX_CARD_VERSIONFLYOVERIMPRESSION_OBJECTLOG_MSG_STATE_TYPE_UNKNOWNLOOK_AROUND_VIEWMAPS_FEATURESMAPS_LAUNCHMAPS_PLACE_IDSMAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  unk_27E2F90 = 7;
  dword_27E2F98 = 3;
  dword_27E2F80 = 600;
  qword_27E2F70 = "SESSION_STATE";
  unk_27E2F78 = 13;
  dword_27E2F38 = 700;
  dword_27E2F50 = 100;
  qword_27E2F58 = "LOG_MSG_STATE_GROUP_UNKNOWNSESSION_STATE";
  unk_27E2F60 = 27;
  dword_27E2F68 = 0;
  qword_27E2F40 = "LOG_MSG_STATE_GROUP_BASELOG_MSG_STATE_GROUP_UNKNOWNSESSION_STATE";
  qword_27E2F28 = "FEATURE_STATELOG_MSG_STATE_GROUP_BASELOG_MSG_STATE_GROUP_UNKNOWNSESSION_STATE";
  unk_27E2F30 = 13;
  qword_27E2F48 = 24;
  dword_27E2F08 = 200;
  dword_27E2F20 = 400;
  qword_27E2F10 = "DEVICE_STATEFEATURE_STATELOG_MSG_STATE_GROUP_BASELOG_MSG_STATE_GROUP_UNKNOWNSESSION_STATE";
  unk_27E2F18 = 12;
  qword_27E2EF8 = "DEVICE_CONFIGDEVICE_STATEFEATURE_STATELOG_MSG_STATE_GROUP_BASELOG_MSG_STATE_GROUP_UNKNOWNSESSION_STATE";
  unk_27E2F00 = 13;
  qword_27E2EE0 = "APP_STATEDEVICE_CONFIGDEVICE_STATEFEATURE_STATELOG_MSG_STATE_GROUP_BASELOG_MSG_STATE_GROUP_UNKNOWNSESSION_STATE";
  unk_27E2EE8 = 9;
  dword_27E2E90 = 40000;
  dword_27E2ED8 = 300;
  qword_27E2EC8 = "APP_CONFIGAPP_STATEDEVICE_CONFIGDEVICE_STATEFEATURE_STATELOG_MSG_STATE_GROUP_BASELOG_MSG_STATE_GROUP_UNKNOWNSESSION_STATE";
  unk_27E2ED0 = 10;
  dword_27E1480 = 10000;
  dword_27E2EA8 = 10000;
  qword_27E2EB0 = "WIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
  dword_27E2EC0 = 50002;
  qword_27E2EB8 = 40;
  qword_27E2E98 = "USAGEWIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
  qword_27E2E80 = "TELEMETRYUSAGEWIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
  unk_27E2E88 = 9;
  qword_27E2EA0 = 5;
  dword_27E2E78 = 11000;
  qword_27E2E68 = "SHORT_SESSION_USAGETELEMETRYUSAGEWIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
  unk_27E2E70 = 19;
  dword_27E2E48 = 50000;
  dword_27E2E60 = 13000;
  qword_27E2E50 = "SESSIONLESS_USAGESHORT_SESSION_USAGETELEMETRYUSAGEWIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
  unk_27E2E58 = 17;
  qword_27E2E20 = "PRESSURE_DATA_SESSIONREALTIME_TRAFFIC_PROBESESSIONLESS_USAGESHORT_SESSION_USAGETELEMETRYUSAGEWIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
  unk_27E2E28 = 21;
  dword_27E2E30 = 4;
  qword_27E2E40 = 22;
  dword_27E2DD0 = 30000;
  qword_27E2E08 = "POI_BUSYNESS_DATA_SESSIONPRESSURE_DATA_SESSIONREALTIME_TRAFFIC_PROBESESSIONLESS_USAGESHORT_SESSION_USAGETELEMETRYUSAGEWIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
  unk_27E2E10 = 25;
  dword_27E2E18 = 5;
  dword_27E2E00 = 20000;
  qword_27E2DF0 = "PERFORMANCEPOI_BUSYNESS_DATA_SESSIONPRESSURE_DATA_SESSIONREALTIME_TRAFFIC_PROBESESSIONLESS_USAGESHORT_SESSION_USAGETELEMETRYUSAGEWIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
  unk_27E2DF8 = 11;
  dword_27E2DE8 = 7;
  qword_27E2DC0 = "NAVIGATION_TRACENETWORK_SELECTION_HARVEST_SESSIONPERFORMANCEPOI_BUSYNESS_DATA_SESSIONPRESSURE_DATA_SESSIONREALTIME_TRAFFIC_PROBESESSIONLESS_USAGESHORT_SESSION_USAGETELEMETRYUSAGEWIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
  unk_27E2DC8 = 16;
  qword_27E2DD8 = "NETWORK_SELECTION_HARVEST_SESSIONPERFORMANCEPOI_BUSYNESS_DATA_SESSIONPRESSURE_DATA_SESSIONREALTIME_TRAFFIC_PROBESESSIONLESS_USAGESHORT_SESSION_USAGETELEMETRYUSAGEWIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
  unk_27E2DE0 = 33;
  dword_27E2CB0 = 50001;
  qword_27E2DA8 = "MEDIUM_SESSION_USAGENAVIGATION_TRACENETWORK_SELECTION_HARVEST_SESSIONPERFORMANCEPOI_BUSYNESS_DATA_SESSIONPRESSURE_DATA_SESSIONREALTIME_TRAFFIC_PROBESESSIONLESS_USAGESHORT_SESSION_USAGETELEMETRYUSAGEWIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
  unk_27E2DB0 = 20;
  dword_27E2DB8 = 8;
  dword_27E2D58 = 50003;
  dword_27E2DA0 = 12000;
  qword_27E2D90 = "LONG_SESSION_USAGEMEDIUM_SESSION_USAGENAVIGATION_TRACENETWORK_SELECTION_HARVEST_SESSIONPERFORMANCEPOI_BUSYNESS_DATA_SESSIONPRESSURE_DATA_SESSIONREALTIME_TRAFFIC_PROBESESSIONLESS_USAGESHORT_SESSION_USAGETELEMETRYUSAGEWIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
  unk_27E2D98 = 18;
  dword_27E2D88 = 14000;
  dword_27E2D70 = 0;
  qword_27E2D78 = "LONG_SESSION_LOG_FRAMEWORK_USAGELONG_SESSION_USAGEMEDIUM_SESSION_USAGENAVIGATION_TRACENETWORK_SELECTION_HARVEST_SESSIONPERFORMANCEPOI_BUSYNESS_DATA_SESSIONPRESSURE_DATA_SESSIONREALTIME_TRAFFIC_PROBESESSIONLESS_USAGESHORT_SESSION_USAGETELEMETRYUSAGEWIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
  unk_27E2D80 = 32;
  qword_27E2D60 = "LOG_MESSAGE_TYPE_UNKNOWNLONG_SESSION_LOG_FRAMEWORK_USAGELONG_SESSION_USAGEMEDIUM_SESSION_USAGENAVIGATION_TRACENETWORK_SELECTION_HARVEST_SESSIONPERFORMANCEPOI_BUSYNESS_DATA_SESSIONPRESSURE_DATA_SESSIONREALTIME_TRAFFIC_PROBESESSIONLESS_USAGESHORT_SESSION_USAGETELEMETRYUSAGEWIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
  unk_27E2D68 = 24;
  qword_27E2D48 = "LOG_DISCARD_EVENTLOG_MESSAGE_TYPE_UNKNOWNLONG_SESSION_LOG_FRAMEWORK_USAGELONG_SESSION_USAGEMEDIUM_SESSION_USAGENAVIGATION_TRACENETWORK_SELECTION_HARVEST_SESSIONPERFORMANCEPOI_BUSYNESS_DATA_SESSIONPRESSURE_DATA_SESSIONREALTIME_TRAFFIC_PROBESESSIONLESS_USAGESHORT_SESSION_USAGETELEMETRYUSAGEWIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
  unk_27E2D50 = 17;
  dword_27E2D28 = 3;
  qword_27E2D30 = "FIFTEEN_MONTH_USER_SESSIONLOG_DISCARD_EVENTLOG_MESSAGE_TYPE_UNKNOWNLONG_SESSION_LOG_FRAMEWORK_USAGELONG_SESSION_USAGEMEDIUM_SESSION_USAGENAVIGATION_TRACENETWORK_SELECTION_HARVEST_SESSIONPERFORMANCEPOI_BUSYNESS_DATA_SESSIONPRESSURE_DATA_SESSIONREALTIME_TRAFFIC_PROBESESSIONLESS_USAGESHORT_SESSION_USAGETELEMETRYUSAGEWIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
  unk_27E2D38 = 26;
  dword_27E2D40 = 6;
  qword_27E2D18 = "FIFTEEN_MONTH_SESSIONFIFTEEN_MONTH_USER_SESSIONLOG_DISCARD_EVENTLOG_MESSAGE_TYPE_UNKNOWNLONG_SESSION_LOG_FRAMEWORK_USAGELONG_SESSION_USAGEMEDIUM_SESSION_USAGENAVIGATION_TRACENETWORK_SELECTION_HARVEST_SESSIONPERFORMANCEPOI_BUSYNESS_DATA_SESSIONPRESSURE_DATA_SESSIONREALTIME_TRAFFIC_PROBESESSIONLESS_USAGESHORT_SESSION_USAGETELEMETRYUSAGEWIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
  unk_27E2D20 = 21;
  qword_27E2D00 = "EQ_DATA_SESSSIONFIFTEEN_MONTH_SESSIONFIFTEEN_MONTH_USER_SESSIONLOG_DISCARD_EVENTLOG_MESSAGE_TYPE_UNKNOWNLONG_SESSION_LOG_FRAMEWORK_USAGELONG_SESSION_USAGEMEDIUM_SESSION_USAGENAVIGATION_TRACENETWORK_SELECTION_HARVEST_SESSIONPERFORMANCEPOI_BUSYNESS_DATA_SESSIONPRESSURE_DATA_SESSIONREALTIME_TRAFFIC_PROBESESSIONLESS_USAGESHORT_SESSION_USAGETELEMETRYUSAGEWIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
  unk_27E2D08 = 16;
  dword_27E2D10 = 9;
  qword_27E2CE8 = "DEBUGLOGEQ_DATA_SESSSIONFIFTEEN_MONTH_SESSIONFIFTEEN_MONTH_USER_SESSIONLOG_DISCARD_EVENTLOG_MESSAGE_TYPE_UNKNOWNLONG_SESSION_LOG_FRAMEWORK_USAGELONG_SESSION_USAGEMEDIUM_SESSION_USAGENAVIGATION_TRACENETWORK_SELECTION_HARVEST_SESSIONPERFORMANCEPOI_BUSYNESS_DATA_SESSIONPRESSURE_DATA_SESSIONREALTIME_TRAFFIC_PROBESESSIONLESS_USAGESHORT_SESSION_USAGETELEMETRYUSAGEWIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
  unk_27E2CF0 = 8;
  dword_27E2CE0 = 2;
  dword_27E2CF8 = 1;
  dword_27E2CC8 = 15000;
  qword_27E2CD0 = "CURATED_COLLECTION_SESSIONDEBUGLOGEQ_DATA_SESSSIONFIFTEEN_MONTH_SESSIONFIFTEEN_MONTH_USER_SESSIONLOG_DISCARD_EVENTLOG_MESSAGE_TYPE_UNKNOWNLONG_SESSION_LOG_FRAMEWORK_USAGELONG_SESSION_USAGEMEDIUM_SESSION_USAGENAVIGATION_TRACENETWORK_SELECTION_HARVEST_SESSIONPERFORMANCEPOI_BUSYNESS_DATA_SESSIONPRESSURE_DATA_SESSIONREALTIME_TRAFFIC_PROBESESSIONLESS_USAGESHORT_SESSION_USAGETELEMETRYUSAGEWIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
  unk_27E2CD8 = 26;
  qword_27E2CA0 = "BATCH_TRAFFIC_PROBECOHORTS_SESSION_USAGECURATED_COLLECTION_SESSIONDEBUGLOGEQ_DATA_SESSSIONFIFTEEN_MONTH_SESSIONFIFTEEN_MONTH_USER_SESSIONLOG_DISCARD_EVENTLOG_MESSAGE_TYPE_UNKNOWNLONG_SESSION_LOG_FRAMEWORK_USAGELONG_SESSION_USAGEMEDIUM_SESSION_USAGENAVIGATION_TRACENETWORK_SELECTION_HARVEST_SESSIONPERFORMANCEPOI_BUSYNESS_DATA_SESSIONPRESSURE_DATA_SESSIONREALTIME_TRAFFIC_PROBESESSIONLESS_USAGESHORT_SESSION_USAGETELEMETRYUSAGEWIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
  *algn_27E2CA8 = 19;
  qword_27E2CB8 = "COHORTS_SESSION_USAGECURATED_COLLECTION_SESSIONDEBUGLOGEQ_DATA_SESSSIONFIFTEEN_MONTH_SESSIONFIFTEEN_MONTH_USER_SESSIONLOG_DISCARD_EVENTLOG_MESSAGE_TYPE_UNKNOWNLONG_SESSION_LOG_FRAMEWORK_USAGELONG_SESSION_USAGEMEDIUM_SESSION_USAGENAVIGATION_TRACENETWORK_SELECTION_HARVEST_SESSIONPERFORMANCEPOI_BUSYNESS_DATA_SESSIONPRESSURE_DATA_SESSIONREALTIME_TRAFFIC_PROBESESSIONLESS_USAGESHORT_SESSION_USAGETELEMETRYUSAGEWIFI_CONNECTION_QUALITY_PROBE_COLLECTION";
  unk_27E2CC0 = 21;
  qword_27E2C40 = "ServiceMetadataType_UNKNOWN";
  dword_27E2C80 = 1;
  qword_27E2C88 = "EngagementReportingChannel_UNKNOWN";
  unk_27E2C90 = 34;
  dword_27E2C98 = 0;
  qword_27E2C58 = "EngagementReportingChannel_GEOANALYTICSDEngagementReportingChannel_IN_PROCESSEngagementReportingChannel_UNKNOWN";
  unk_27E2C60 = 40;
  dword_27E2C68 = 2;
  qword_27E2C70 = "EngagementReportingChannel_IN_PROCESSEngagementReportingChannel_UNKNOWN";
  unk_27E2C78 = 37;
  qword_27E2C28 = "ServiceMetadataType_REDACTED_DIRECTIONSServiceMetadataType_UNKNOWN";
  qword_27E2C30 = 39;
  dword_27E2C38 = 3;
  qword_27E2C48 = 27;
  dword_27E2C50 = 0;
  qword_27E2C10 = "ServiceMetadataType_PLACESServiceMetadataType_REDACTED_DIRECTIONSServiceMetadataType_UNKNOWN";
  unk_27E2C18 = 26;
  qword_27E2BF8 = "ServiceMetadataType_DIRECTIONSServiceMetadataType_PLACESServiceMetadataType_REDACTED_DIRECTIONSServiceMetadataType_UNKNOWN";
  unk_27E2C00 = 30;
  dword_27E2C20 = 2;
  dword_27E2C08 = 1;
  qword_27E2BC8 = "OfflineDownloadSize_LESS_THAN_500MBOfflineDownloadSize_UNKNOWN";
  qword_27E2BE0 = "OfflineDownloadSize_UNKNOWN";
  unk_27E2BE8 = 27;
  dword_27E2BD8 = 2;
  dword_27E2BF0 = 0;
  qword_27E2BB0 = "OfflineDownloadSize_LESS_THAN_2GBOfflineDownloadSize_LESS_THAN_500MBOfflineDownloadSize_UNKNOWN";
  unk_27E2BB8 = 33;
  dword_27E2BC0 = 4;
  qword_27E2BD0 = 35;
  qword_27E2B80 = "OfflineDownloadSize_LESS_THAN_100MBOfflineDownloadSize_LESS_THAN_1GBOfflineDownloadSize_LESS_THAN_2GBOfflineDownloadSize_LESS_THAN_500MBOfflineDownloadSize_UNKNOWN";
  unk_27E2B88 = 35;
  qword_27E2B98 = "OfflineDownloadSize_LESS_THAN_1GBOfflineDownloadSize_LESS_THAN_2GBOfflineDownloadSize_LESS_THAN_500MBOfflineDownloadSize_UNKNOWN";
  unk_27E2BA0 = 33;
  dword_27E2B90 = 1;
  dword_27E2BA8 = 3;
  qword_27E2B68 = "OfflineDownloadSize_GREATER_THAN_2GBOfflineDownloadSize_LESS_THAN_100MBOfflineDownloadSize_LESS_THAN_1GBOfflineDownloadSize_LESS_THAN_2GBOfflineDownloadSize_LESS_THAN_500MBOfflineDownloadSize_UNKNOWN";
  qword_27E2B70 = 36;
  dword_27E2B78 = 5;
  qword_27E2B38 = "MAPS_INTERACTION_TYPE_POSITIVE_SEARCH_ENGAGEMENTMAPS_INTERACTION_TYPE_UNKNOWN";
  dword_27E2B60 = 0;
  dword_27E2B48 = 1;
  qword_27E2B50 = "MAPS_INTERACTION_TYPE_UNKNOWN";
  unk_27E2B58 = 29;
  qword_27E2B40 = 48;
  qword_27E2B20 = "PLACE_CACHE_LOOKUP_RESULT_USABLE";
  unk_27E2B28 = 32;
  dword_27E2B30 = 3;
  qword_27E2B08 = "PLACE_CACHE_LOOKUP_RESULT_UNUSABLEPLACE_CACHE_LOOKUP_RESULT_USABLE";
  unk_27E2B10 = 34;
  qword_27E2AF0 = "PLACE_CACHE_LOOKUP_RESULT_UNKNOWNPLACE_CACHE_LOOKUP_RESULT_UNUSABLEPLACE_CACHE_LOOKUP_RESULT_USABLE";
  unk_27E2AF8 = 33;
  dword_27E2B18 = 2;
  dword_27E2B00 = 0;
  qword_27E2A30 = "SHOWCASE_ARP_PHOTOS_UNSUPPORTEDSHOWCASE_ARP_RATING_UNSUPPORTEDSHOWCASE_DIRECTIONS_UNAVAILABLESHOWCASE_MESSAGE_URL_UNAVAILABLESHOWCASE_OTHER_SUPPRESSION_REASONSHOWCASE_PHONE_NUMBER_UNAVAILABLESHOWCASE_WEBSITE_URL_UNAVAILABLE";
  qword_27E2AD8 = "PLACE_CACHE_LOOKUP_RESULT_UNAVAILABLEPLACE_CACHE_LOOKUP_RESULT_UNKNOWNPLACE_CACHE_LOOKUP_RESULT_UNUSABLEPLACE_CACHE_LOOKUP_RESULT_USABLE";
  unk_27E2AE0 = 37;
  dword_27E2AE8 = 1;
  dword_27E2AD0 = 7;
  qword_27E2AC0 = "SHOWCASE_WEBSITE_URL_UNAVAILABLE";
  qword_27E2AA8 = "SHOWCASE_PHONE_NUMBER_UNAVAILABLESHOWCASE_WEBSITE_URL_UNAVAILABLE";
  unk_27E2AB0 = 33;
  dword_27E2AB8 = 5;
  qword_27E2AC8 = 32;
  qword_27E2A90 = "SHOWCASE_OTHER_SUPPRESSION_REASONSHOWCASE_PHONE_NUMBER_UNAVAILABLESHOWCASE_WEBSITE_URL_UNAVAILABLE";
  unk_27E2A98 = 33;
  dword_27E2A88 = 6;
  dword_27E2AA0 = 0;
  qword_27E2A78 = "SHOWCASE_MESSAGE_URL_UNAVAILABLESHOWCASE_OTHER_SUPPRESSION_REASONSHOWCASE_PHONE_NUMBER_UNAVAILABLESHOWCASE_WEBSITE_URL_UNAVAILABLE";
  unk_27E2A80 = 32;
  qword_27E2A60 = "SHOWCASE_DIRECTIONS_UNAVAILABLESHOWCASE_MESSAGE_URL_UNAVAILABLESHOWCASE_OTHER_SUPPRESSION_REASONSHOWCASE_PHONE_NUMBER_UNAVAILABLESHOWCASE_WEBSITE_URL_UNAVAILABLE";
  unk_27E2A68 = 31;
  dword_27E2A70 = 1;
  qword_27E2A48 = "SHOWCASE_ARP_RATING_UNSUPPORTEDSHOWCASE_DIRECTIONS_UNAVAILABLESHOWCASE_MESSAGE_URL_UNAVAILABLESHOWCASE_OTHER_SUPPRESSION_REASONSHOWCASE_PHONE_NUMBER_UNAVAILABLESHOWCASE_WEBSITE_URL_UNAVAILABLE";
  unk_27E2A50 = 31;
  dword_27E2A40 = 9;
  dword_27E2A58 = 8;
  qword_27E2A18 = "SHOWCASE_APP_QUICK_LINK_UNAVAILABLESHOWCASE_ARP_PHOTOS_UNSUPPORTEDSHOWCASE_ARP_RATING_UNSUPPORTEDSHOWCASE_DIRECTIONS_UNAVAILABLESHOWCASE_MESSAGE_URL_UNAVAILABLESHOWCASE_OTHER_SUPPRESSION_REASONSHOWCASE_PHONE_NUMBER_UNAVAILABLESHOWCASE_WEBSITE_URL_UNAVAILABLE";
  unk_27E2A20 = 35;
  dword_27E2A28 = 4;
  qword_27E2A38 = 31;
  qword_27E1F98 = "SEARCH_FROM_AC_ROUTE_PLANNINGSEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E2A00 = "SHOWCASE_APP_EXTENSION_UNAVAILABLESHOWCASE_APP_QUICK_LINK_UNAVAILABLESHOWCASE_ARP_PHOTOS_UNSUPPORTEDSHOWCASE_ARP_RATING_UNSUPPORTEDSHOWCASE_DIRECTIONS_UNAVAILABLESHOWCASE_MESSAGE_URL_UNAVAILABLESHOWCASE_OTHER_SUPPRESSION_REASONSHOWCASE_PHONE_NUMBER_UNAVAILABLESHOWCASE_WEBSITE_URL_UNAVAILABLE";
  unk_27E2A08 = 34;
  dword_27E2A10 = 2;
  dword_27E1FA8 = 258;
  qword_27E29E8 = "SHOWCASE_APP_CLIP_UNAVAILABLESHOWCASE_APP_EXTENSION_UNAVAILABLESHOWCASE_APP_QUICK_LINK_UNAVAILABLESHOWCASE_ARP_PHOTOS_UNSUPPORTEDSHOWCASE_ARP_RATING_UNSUPPORTEDSHOWCASE_DIRECTIONS_UNAVAILABLESHOWCASE_MESSAGE_URL_UNAVAILABLESHOWCASE_OTHER_SUPPRESSION_REASONSHOWCASE_PHONE_NUMBER_UNAVAILABLESHOWCASE_WEBSITE_URL_UNAVAILABLE";
  unk_27E29F0 = 29;
  dword_27E29F8 = 3;
  qword_27E29D0 = "AR_SESSION_COLLECTION_COLLECTION_TRIGGER_UNKNOWN";
  unk_27E29D8 = 48;
  dword_27E29E0 = 1;
  qword_27E21D8 = "SHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E29C8 = 4;
  qword_27E21C0 = "SHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E21D0 = 210;
  qword_27E21C8 = 26;
  qword_27E21A8 = "SECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E21B8 = 239;
  qword_27E21B0 = 21;
  qword_27E2190 = "SEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E21A0 = 96;
  qword_27E2198 = 24;
  qword_27E2178 = "SEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2188 = 236;
  qword_27E2180 = 33;
  qword_27E2160 = "SEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2170 = 95;
  qword_27E2168 = 25;
  qword_27E2148 = "SEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2158 = 94;
  qword_27E2150 = 31;
  qword_27E2130 = "SEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2140 = 93;
  qword_27E2138 = 26;
  qword_27E2118 = "SEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2128 = 92;
  qword_27E2120 = 28;
  qword_27E2100 = "SEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2110 = 91;
  qword_27E2108 = 30;
  qword_27E20E8 = "SEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E20F8 = 90;
  qword_27E20F0 = 25;
  qword_27E20D0 = "SEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E20E0 = 89;
  qword_27E20D8 = 27;
  qword_27E20B8 = "SEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E20C8 = 235;
  qword_27E20C0 = 33;
  qword_27E20A0 = "SEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E20B0 = 88;
  qword_27E20A8 = 25;
  qword_27E2088 = "SEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2098 = 87;
  qword_27E2090 = 29;
  qword_27E2070 = "SEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2080 = 86;
  qword_27E2078 = 29;
  qword_27E2058 = "SEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2068 = 224;
  qword_27E2060 = 24;
  qword_27E2040 = "SEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2050 = 263;
  qword_27E2048 = 17;
  qword_27E2028 = "SEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2038 = 262;
  qword_27E2030 = 28;
  qword_27E2010 = "SEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2020 = 261;
  qword_27E2018 = 21;
  qword_27E1FF8 = "SEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2008 = 234;
  qword_27E2000 = 37;
  qword_27E1FE0 = "SEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1FF0 = 85;
  qword_27E1FE8 = 29;
  qword_27E1FC8 = "SEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1FD8 = 260;
  qword_27E1FD0 = 19;
  qword_27E1FB0 = "SEARCH_FROM_AC_SARSEARCH_FROM_CARPLAYSEARCH_NEARBY_CATEGORY_TAPPEDSEARCH_NEARBY_CATEGORY_TAPPED_OFFLINESEARCH_NORMAL_DEFAULTSEARCH_NORMAL_ROUTE_PLANNINGSEARCH_NORMAL_SARSEARCH_PHOTO_INTERACTIONSEARCH_RECENTLY_VIEWED_TAPPEDSEARCH_RECENT_SEARCHES_TAPPEDSEARCH_RESULTS_SHOWN_MAPSSEARCH_RESULTS_SHOWN_MAPS_OFFLINESEARCH_RESULTS_SHOWN_SAFARISEARCH_RESULTS_SHOWN_SIRISEARCH_RESULTS_SHOWN_SPOTLIGHTSEARCH_RESULTS_TAPPED_SAFARISEARCH_RESULTS_TAPPED_SIRISEARCH_RESULTS_TAPPED_SPOTLIGHTSEARCH_RESULT_TAPPED_MAPSSEARCH_RESULT_TAPPED_MAPS_OFFLINESEARCH_SUGGESTION_TAPPEDSECOND_PARTY_MAP_VIEWSHARED_LOCATION_ENGAGEMENTSHARE_DRIVING_ROUTESSHARE_FAVORITESSHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E1FC0 = 259;
  dword_27E21E8 = 97;
  qword_27E1FB8 = 18;
  dword_27E2200 = 98;
  qword_27E2208 = "SHARE_MYLOCATIONSHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1FA0 = 29;
  dword_27E2218 = 99;
  qword_27E2220 = "SHARE_SHOWCASESHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1F88 = 25;
  dword_27E2230 = 211;
  qword_27E2238 = "SHARE_SUBMITSHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1F70 = 26;
  dword_27E2248 = 269;
  qword_27E2250 = "SHARE_TO_DEVICESHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1F58 = 30;
  dword_27E2260 = 100;
  qword_27E2268 = "SHARE_TRANSIT_ROUTESSHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1F28 = 31;
  qword_27E1F40 = 30;
  dword_27E2278 = 101;
  qword_27E2280 = "SHARE_WALKING_ROUTESSHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2290 = 102;
  qword_27E1F10 = 22;
  qword_27E2298 = "SHOWCASE_SHOWNSHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E22A8 = 181;
  qword_27E1EF8 = 22;
  qword_27E22B0 = "SHOWCASE_TAPPEDSHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E22C0 = 182;
  qword_27E1EE0 = 22;
  qword_27E22C8 = "SHOW_MAPS_SETTINGSSIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E22D8 = 103;
  qword_27E1EC8 = 22;
  qword_27E22E0 = "SIRI_SEARCH_CARPLAY_UISIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E22F0 = 160;
  qword_27E1EB0 = 22;
  qword_27E22F8 = "SIRI_START_NAVSNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2308 = 104;
  qword_27E1E98 = 19;
  qword_27E2310 = "SNAPSHOTTER_USEDSPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2320 = 105;
  qword_27E1E80 = 13;
  qword_27E2328 = "SPR_GLOBE_EXPLOREDSPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2338 = 125;
  qword_27E1E68 = 11;
  qword_27E2340 = "SPR_METROS_EXPLOREDTAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2350 = 126;
  qword_27E1E50 = 13;
  qword_27E2358 = "TAP_COMPASS_MODETAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2368 = 106;
  qword_27E1E38 = 16;
  qword_27E2370 = "TAP_DOWNLOAD_MAPS_OFFLINETAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2380 = 237;
  qword_27E1E20 = 15;
  qword_27E2388 = "TAP_SEARCH_CARPLAY_UITAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2398 = 162;
  qword_27E1E08 = 18;
  qword_27E23A0 = "TAP_TRANSIT_TIPKITTHIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E23B0 = 176;
  qword_27E1DF0 = 12;
  qword_27E23B8 = "THIRD_PARTY_MAP_VIEWTOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E23C8 = 240;
  qword_27E1DD8 = 13;
  qword_27E23D0 = "TOTAL_SECONDS_IN_MAPS_CARPLAYTOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E23E0 = 166;
  qword_27E1DC0 = 17;
  qword_27E23E8 = "TOTAL_SECONDS_IN_MAPS_DEVICETRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E23F8 = 151;
  qword_27E1DA8 = 15;
  qword_27E2400 = "TRAFFIC_INCIDENT_CLEARTRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2410 = 197;
  qword_27E1D90 = 24;
  qword_27E2418 = "TRAFFIC_INCIDENT_CONFIRMTRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2428 = 195;
  qword_27E1D78 = 15;
  qword_27E2430 = "TRAFFIC_INCIDENT_DISMISSTRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2440 = 196;
  qword_27E1D60 = 18;
  qword_27E2448 = "TRAFFIC_INCIDENT_REPORTTRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2458 = 194;
  qword_27E1D48 = 24;
  qword_27E2460 = "TRANSIT_DETAILS_USEDTRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2470 = 127;
  qword_27E1D30 = 26;
  qword_27E2478 = "TRIP_COMPLETED_DRIVINGUGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E2488 = 168;
  qword_27E1D18 = 19;
  qword_27E2490 = "UGC_PHOTO_SUBMISSIONUGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E24A0 = 107;
  qword_27E1D00 = 25;
  qword_27E24A8 = "UGC_RATING_SUBMISSIONUNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E24B8 = 108;
  qword_27E1CE8 = 20;
  qword_27E24C0 = "UNKNOWN_EVENTUSER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E24D8 = "USER_ACCOUNT_OPENEDUSER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1CD0 = 22;
  dword_27E24E8 = 147;
  qword_27E24F0 = "USER_ACCOUNT_OPENED_ACCOUNTUSER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1CB8 = 15;
  dword_27E2500 = 128;
  qword_27E2508 = "USER_ACCOUNT_SHOWNVENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1CA0 = 16;
  dword_27E2518 = 129;
  qword_27E2520 = "VENUE_INTERACTIONVISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1C88 = 24;
  dword_27E2530 = 148;
  qword_27E2538 = "VISITED_PLACES_INTERACTIONVISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1C70 = 24;
  dword_27E2548 = 252;
  qword_27E2550 = "VISITED_PLACES_REVEALVISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1C58 = 20;
  dword_27E2560 = 253;
  qword_27E2568 = "VISITED_PLACES_SHAREVISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1C40 = 22;
  dword_27E2578 = 254;
  qword_27E2580 = "VISITED_PLACES_WRONG_LOCATIONVLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1C28 = 24;
  dword_27E2590 = 255;
  qword_27E2598 = "VLF_CORRECTION_ATTEMPTEDVLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1C10 = 15;
  dword_27E25A8 = 109;
  qword_27E25B0 = "VLF_CORRECTION_FAILEDVLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1BF8 = 25;
  dword_27E25C0 = 110;
  qword_27E25C8 = "VLF_CORRECTION_SUCCESSWATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1BE0 = 17;
  dword_27E25D8 = 111;
  qword_27E25E0 = "WATCH_GET_DIRECTIONSWATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1BC8 = 21;
  dword_27E25F0 = 244;
  qword_27E25F8 = "WATCH_GET_DIRECTIONS_CYCLINGWATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1BB0 = 20;
  dword_27E2608 = 138;
  qword_27E2610 = "WATCH_GET_DIRECTIONS_DRIVINGWATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1B98 = 32;
  dword_27E2620 = 144;
  qword_27E2628 = "WATCH_GET_DIRECTIONS_TRANSITWATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1B80 = 23;
  dword_27E2638 = 142;
  qword_27E2640 = "WATCH_GET_DIRECTIONS_WALKINGWATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1B68 = 19;
  dword_27E2650 = 140;
  qword_27E2658 = "WATCH_MAP_VIEWWATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1B50 = 19;
  dword_27E2668 = 212;
  qword_27E2670 = "WATCH_PLACECARDWATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1B38 = 25;
  dword_27E2680 = 213;
  qword_27E2688 = "WATCH_SEARCHWATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1B20 = 25;
  dword_27E2698 = 214;
  qword_27E26A0 = "WATCH_START_NAVWATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1B08 = 26;
  dword_27E26B0 = 205;
  qword_27E26B8 = "WATCH_START_NAV_CYCLINGWATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1AF0 = 22;
  dword_27E26C8 = 139;
  qword_27E1AD8 = 17;
  dword_27E1AE0 = 66;
  qword_27E26D0 = "WATCH_START_NAV_DRIVINGWATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  dword_27E26E0 = 145;
  qword_27E1AC0 = 19;
  dword_27E1AC8 = 65;
  qword_27E26E8 = "WATCH_START_NAV_TRANSITWATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1AA8 = 19;
  dword_27E1AB0 = 64;
  dword_27E26F8 = 143;
  qword_27E2700 = "WATCH_START_NAV_WALKINGWIDGET_ENTER";
  qword_27E1A90 = 23;
  dword_27E2710 = 141;
  dword_27E1A68 = 63;
  qword_27E1A78 = 24;
  qword_27E2718 = "WIDGET_ENTER";
  qword_27E1A48 = 28;
  dword_27E1A50 = 62;
  qword_27E1A60 = 19;
  dword_27E2728 = 112;
  qword_27E1A18 = 20;
  qword_27E1A30 = 27;
  dword_27E1A38 = 61;
  qword_27E1268 = 16;
  dword_27E1270 = 34;
  qword_27E1280 = 10;
  dword_27E1288 = 35;
  qword_27E1298 = 30;
  qword_27E1A00 = 19;
  qword_27E12B0 = 31;
  qword_27E12C8 = 18;
  qword_27E19D0 = 21;
  dword_27E19D8 = 60;
  qword_27E19E8 = 21;
  qword_27E12E0 = 38;
  qword_27E12F8 = 33;
  qword_27E1310 = 32;
  qword_27E1328 = 28;
  qword_27E19A0 = 21;
  qword_27E19B8 = 18;
  dword_27E1330 = 36;
  qword_27E1340 = 46;
  qword_27E1358 = 28;
  dword_27E1360 = 37;
  qword_27E1970 = 23;
  qword_27E1988 = 25;
  qword_27E1370 = 46;
  qword_27E1388 = 26;
  dword_27E1390 = 38;
  qword_27E13A0 = 31;
  qword_27E1940 = 21;
  qword_27E1958 = 27;
  dword_27E13A8 = 39;
  qword_27E13B8 = 35;
  qword_27E13D0 = 28;
  dword_27E13D8 = 40;
  qword_27E1910 = 21;
  qword_27E1928 = 25;
  qword_27E13E8 = 28;
  dword_27E13F0 = 41;
  qword_27E1400 = 17;
  dword_27E1408 = 42;
  qword_27E18E0 = 15;
  qword_27E18F8 = 25;
  qword_27E1418 = 25;
  dword_27E1420 = 43;
  qword_27E1430 = 20;
  dword_27E1438 = 44;
  qword_27E18B0 = 29;
  qword_27E18C8 = 15;
  qword_27E1448 = 27;
  qword_27E1880 = 23;
  dword_27E1888 = 58;
  qword_27E1898 = 23;
  dword_27E18A0 = 59;
  qword_27E1460 = 10;
  qword_27E1478 = 29;
  qword_27E1850 = 22;
  dword_27E1858 = 56;
  qword_27E1868 = 21;
  dword_27E1870 = 57;
  qword_27E1490 = 18;
  dword_27E1498 = 45;
  qword_27E14A8 = 37;
  qword_27E14C0 = 17;
  qword_27E1820 = 29;
  qword_27E1838 = 12;
  qword_27E14D8 = 25;
  qword_27E14F0 = 22;
  dword_27E14F8 = 46;
  qword_27E1508 = 24;
  qword_27E17F0 = 25;
  qword_27E1808 = 30;
  qword_27E1520 = 12;
  dword_27E1528 = 47;
  qword_27E1538 = 10;
  qword_27E17C0 = 23;
  dword_27E17C8 = 55;
  qword_27E17D8 = 26;
  dword_27E1540 = 48;
  qword_27E1550 = 18;
  qword_27E1790 = 24;
  dword_27E1798 = 53;
  qword_27E17A8 = 18;
  dword_27E17B0 = 54;
  qword_27E1568 = 18;
  qword_27E1580 = 18;
  qword_27E1598 = 18;
  qword_27E15B0 = 25;
  qword_27E1760 = 37;
  qword_27E1778 = 34;
  qword_27E15C8 = 9;
  qword_27E15E0 = 28;
  qword_27E15F8 = 17;
  qword_27E1610 = 36;
  qword_27E1730 = 19;
  qword_27E1748 = 19;
  qword_27E1628 = 32;
  qword_27E1640 = 33;
  qword_27E1658 = 18;
  qword_27E1700 = 16;
  qword_27E1718 = 19;
  dword_27E1720 = 52;
  dword_27E1660 = 49;
  qword_27E1670 = 22;
  dword_27E1678 = 50;
  qword_27E1688 = 20;
  qword_27E16D0 = 19;
  qword_27E16E8 = 17;
  qword_27E16A0 = 20;
  dword_27E16A8 = 51;
  qword_27E16B8 = 32;
  qword_27E21E0 = 20;
  qword_27E21F8 = 15;
  qword_27E2210 = 16;
  qword_27E2228 = 14;
  qword_27E2240 = 12;
  qword_27E2258 = 15;
  qword_27E2270 = 20;
  qword_27E2288 = 20;
  qword_27E22A0 = 14;
  qword_27E22B8 = 15;
  qword_27E22D0 = 18;
  qword_27E22E8 = 22;
  qword_27E2300 = 14;
  qword_27E2318 = 16;
  qword_27E2330 = 18;
  qword_27E2348 = 19;
  qword_27E2360 = 16;
  qword_27E2378 = 25;
  qword_27E2390 = 21;
  qword_27E23A8 = 18;
  qword_27E23C0 = 20;
  qword_27E23D8 = 29;
  qword_27E23F0 = 28;
  qword_27E2408 = 22;
  qword_27E2420 = 24;
  qword_27E2438 = 24;
  qword_27E2450 = 23;
  qword_27E2468 = 20;
  qword_27E2480 = 22;
  qword_27E2498 = 20;
  qword_27E24B0 = 21;
  qword_27E24C8 = 13;
  dword_27E24D0 = 0;
  qword_27E24E0 = 19;
  qword_27E24F8 = 27;
  qword_27E2510 = 18;
  qword_27E2528 = 17;
  qword_27E2540 = 26;
  qword_27E2558 = 21;
  qword_27E2570 = 20;
  qword_27E2588 = 29;
  qword_27E25A0 = 24;
  qword_27E25B8 = 21;
  qword_27E25D0 = 22;
  qword_27E25E8 = 20;
  qword_27E2600 = 28;
  qword_27E2618 = 28;
  qword_27E2630 = 28;
  qword_27E2648 = 28;
  qword_27E2660 = 14;
  qword_27E2678 = 15;
  qword_27E2690 = 12;
  qword_27E26A8 = 15;
  qword_27E26C0 = 23;
  qword_27E26D8 = 23;
  qword_27E26F0 = 23;
  qword_27E2708 = 23;
  qword_27E2720 = 12;
  qword_27E2748 = "UseSummaryPeriod_MONTHLYUseSummaryPeriod_UNSPECIFIED";
  unk_27E2750 = 24;
  qword_27E2760 = "UseSummaryPeriod_UNSPECIFIED";
  unk_27E2768 = 28;
  qword_27E2730 = "UseSummaryPeriod_DAILYUseSummaryPeriod_MONTHLYUseSummaryPeriod_UNSPECIFIED";
  *algn_27E2738 = 22;
  dword_27E2740 = 1;
  dword_27E2758 = 2;
  dword_27E2770 = 0;
  qword_27E2790 = "MAP_FEATURE_TREESMAP_FEATURE_UNKNOWN";
  unk_27E2798 = 17;
  qword_27E27A8 = "MAP_FEATURE_UNKNOWN";
  unk_27E27B0 = 19;
  qword_27E2778 = "MAP_FEATURE_SHADOWSMAP_FEATURE_TREESMAP_FEATURE_UNKNOWN";
  unk_27E2780 = 19;
  dword_27E2788 = 2;
  dword_27E27A0 = 1;
  dword_27E27B8 = 0;
  qword_27E27D8 = "NAV_MAP_TYPE_MERCATORNAV_MAP_TYPE_MODERNNAV_MAP_TYPE_UNKNOWN";
  qword_27E27F0 = "NAV_MAP_TYPE_MODERNNAV_MAP_TYPE_UNKNOWN";
  unk_27E27F8 = 19;
  qword_27E2808 = "NAV_MAP_TYPE_UNKNOWN";
  unk_27E2810 = 20;
  qword_27E27C0 = "NAV_MAP_TYPE_ADVANCEDNAV_MAP_TYPE_MERCATORNAV_MAP_TYPE_MODERNNAV_MAP_TYPE_UNKNOWN";
  qword_27E27C8 = 21;
  dword_27E27D0 = 2;
  qword_27E27E0 = 21;
  dword_27E27E8 = 3;
  dword_27E2800 = 1;
  dword_27E2818 = 0;
  qword_27E2850 = "COLLECTION_TRIGGER_START_NAVCOLLECTION_TRIGGER_THERMAL_PRESSURE_DELTACOLLECTION_TRIGGER_UNKNOWN";
  unk_27E2858 = 28;
  qword_27E2868 = "COLLECTION_TRIGGER_THERMAL_PRESSURE_DELTACOLLECTION_TRIGGER_UNKNOWN";
  unk_27E2870 = 41;
  qword_27E2820 = "CHARGING_STATE_CHANGECOLLECTION_TRIGGER_END_NAVCOLLECTION_TRIGGER_START_NAVCOLLECTION_TRIGGER_THERMAL_PRESSURE_DELTACOLLECTION_TRIGGER_UNKNOWN";
  *algn_27E2828 = 21;
  dword_27E2830 = 4;
  qword_27E2838 = "COLLECTION_TRIGGER_END_NAVCOLLECTION_TRIGGER_START_NAVCOLLECTION_TRIGGER_THERMAL_PRESSURE_DELTACOLLECTION_TRIGGER_UNKNOWN";
  unk_27E2840 = 26;
  dword_27E2848 = 2;
  dword_27E2860 = 1;
  dword_27E2878 = 3;
  qword_27E2880 = "COLLECTION_TRIGGER_UNKNOWN";
  unk_27E2888 = 26;
  dword_27E2890 = 0;
  qword_27E28B0 = "CHARGING_STATE_UNKNOWNCHARGING_STATE_WIRED_CHARGINGCHARGING_STATE_WIRELESS_CHARGING";
  unk_27E28B8 = 22;
  qword_27E28C8 = "CHARGING_STATE_WIRED_CHARGINGCHARGING_STATE_WIRELESS_CHARGING";
  unk_27E28D0 = 29;
  qword_27E28E0 = "CHARGING_STATE_WIRELESS_CHARGING";
  unk_27E28E8 = 32;
  qword_27E2898 = "CHARGING_STATE_NOT_CHARGINGCHARGING_STATE_UNKNOWNCHARGING_STATE_WIRED_CHARGINGCHARGING_STATE_WIRELESS_CHARGING";
  unk_27E28A0 = 27;
  dword_27E28A8 = 1;
  dword_27E28C0 = 0;
  dword_27E28D8 = 2;
  dword_27E28F0 = 3;
  qword_27E2928 = "AR_ELEMENT_MANEUVERAR_ELEMENT_NONEAR_ELEMENT_UNKNOWN";
  qword_27E2940 = "AR_ELEMENT_NONEAR_ELEMENT_UNKNOWN";
  unk_27E2948 = 15;
  qword_27E28F8 = "AR_ELEMENT_ARRIVALAR_ELEMENT_CONTINUEAR_ELEMENT_MANEUVERAR_ELEMENT_NONEAR_ELEMENT_UNKNOWN";
  unk_27E2900 = 18;
  dword_27E2908 = 4;
  qword_27E2910 = "AR_ELEMENT_CONTINUEAR_ELEMENT_MANEUVERAR_ELEMENT_NONEAR_ELEMENT_UNKNOWN";
  unk_27E2918 = 19;
  dword_27E2920 = 2;
  qword_27E2930 = 19;
  dword_27E2938 = 3;
  dword_27E2950 = 1;
  qword_27E2958 = "AR_ELEMENT_UNKNOWN";
  unk_27E2960 = 18;
  dword_27E2968 = 0;
  qword_27E2988 = "AR_SESSION_COLLECTION_COLLECTION_TRIGGER_END_ARAR_SESSION_COLLECTION_COLLECTION_TRIGGER_START_ARAR_SESSION_COLLECTION_COLLECTION_TRIGGER_THERMAL_PRESSURE_DELTAAR_SESSION_COLLECTION_COLLECTION_TRIGGER_UNKNOWN";
  unk_27E2990 = 47;
  qword_27E29A0 = "AR_SESSION_COLLECTION_COLLECTION_TRIGGER_START_ARAR_SESSION_COLLECTION_COLLECTION_TRIGGER_THERMAL_PRESSURE_DELTAAR_SESSION_COLLECTION_COLLECTION_TRIGGER_UNKNOWN";
  unk_27E29A8 = 49;
  qword_27E29B8 = "AR_SESSION_COLLECTION_COLLECTION_TRIGGER_THERMAL_PRESSURE_DELTAAR_SESSION_COLLECTION_COLLECTION_TRIGGER_UNKNOWN";
  qword_27E2970 = "AR_SESSION_COLLECTION_COLLECTION_TRIGGER_CHARGE_STATE_CHANGEAR_SESSION_COLLECTION_COLLECTION_TRIGGER_END_ARAR_SESSION_COLLECTION_COLLECTION_TRIGGER_START_ARAR_SESSION_COLLECTION_COLLECTION_TRIGGER_THERMAL_PRESSURE_DELTAAR_SESSION_COLLECTION_COLLECTION_TRIGGER_UNKNOWN";
  *algn_27E2978 = 60;
  dword_27E2980 = 5;
  dword_27E2998 = 3;
  dword_27E29B0 = 2;
  qword_27E29C0 = 63;
  dword_27E3160 = 716;
  qword_27E3168 = "MAPS_FEATURESMAPS_LAUNCHMAPS_PLACE_IDSMAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E3178 = 724;
  qword_27E3180 = "MAPS_LAUNCHMAPS_PLACE_IDSMAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E3190 = 718;
  qword_27E3198 = "MAPS_PLACE_IDSMAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E31A8 = 729;
  qword_27E31B0 = "MAPS_SERVERMAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E31C0 = 705;
  qword_27E31C8 = "MAPS_USERMAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  qword_27E31E0 = "MAPS_USER_SETTINGSMAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E31F0 = 725;
  qword_27E31F8 = "MAP_RESTOREMAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E3208 = 709;
  qword_27E3210 = "MAP_SETTINGSMAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E3220 = 504;
  qword_27E3228 = "MAP_UIMAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E3238 = 505;
  qword_27E3240 = "MAP_UI_SHOWNMAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E3250 = 506;
  qword_27E3258 = "MAP_VIEWMAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E3268 = 501;
  qword_27E3270 = "MAP_VIEW_LOCATIONMARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E3280 = 502;
  qword_27E3288 = "MARKETMUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E3298 = 722;
  qword_27E32A0 = "MUNIN_RESOURCE_LOGNAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E32B0 = 717;
  qword_27E32B8 = "NAVIGATIONNEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E32C8 = 708;
  qword_27E32D0 = "NEARBY_TRANSITOFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  qword_27E32E8 = "OFFLINEOFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E32F8 = 713;
  qword_27E3300 = "OFFLINE_DOWNLOADPAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E3310 = 731;
  qword_27E3318 = "PAIRED_DEVICEPHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E3328 = 405;
  qword_27E3330 = "PHOTO_SUBMISSIONPLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E3340 = 726;
  qword_27E3348 = "PLACE_CARDPLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E3358 = 702;
  qword_27E3360 = "PLACE_CARD_RAPPLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E3370 = 730;
  qword_27E3378 = "PLACE_REQUESTPLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E3388 = 707;
  qword_27E3390 = "PLACE_SUMMARY_LAYOUTRAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  qword_27E33A8 = "RAPRATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  qword_27E33C0 = "RATING_PHOTO_SUBMISSIONRATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E33D0 = 728;
  qword_27E33D8 = "RATING_SUBMISSIONREALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E33E8 = 727;
  qword_27E33F0 = "REALTIME_TRAFFICREPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E3400 = 712;
  qword_27E3408 = "REPORT_AN_ISSUEROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E3418 = 711;
  qword_27E3420 = "ROUTEROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E3430 = 703;
  qword_27E3438 = "ROUTING_SETTINGSROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E3448 = 723;
  qword_27E3450 = "ROUTING_WAYPOINTSSEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  qword_27E3468 = "SEARCH_RESULTSSUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  qword_27E3480 = "SUGGESTIONSSUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E3490 = 710;
  qword_27E3498 = "SUMMARY_LOOK_AROUND_LOGTAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E34A8 = 714;
  qword_27E34B0 = "TAP_EVENTTILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  qword_27E34C8 = "TILE_SETTRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E34D8 = 706;
  qword_27E34E0 = "TRANSITTRANSIT_STEPUGC_PHOTOUSER_SESSION";
  dword_27E34F0 = 503;
  qword_27E34F8 = "TRANSIT_STEPUGC_PHOTOUSER_SESSION";
  qword_27E3510 = "UGC_PHOTOUSER_SESSION";
  dword_27E3520 = 720;
  qword_27E3528 = "USER_SESSION";
  dword_27E3538 = 601;
  qword_27E3158 = 16;
  qword_27E3170 = 13;
  qword_27E3188 = 11;
  qword_27E31A0 = 14;
  qword_27E31B8 = 11;
  qword_27E31D0 = 9;
  dword_27E31D8 = 2;
  qword_27E31E8 = 18;
  qword_27E3200 = 11;
  qword_27E3218 = 12;
  qword_27E3230 = 6;
  qword_27E3248 = 12;
  qword_27E3260 = 8;
  qword_27E3278 = 17;
  qword_27E3290 = 6;
  qword_27E32A8 = 18;
  qword_27E32C0 = 10;
  qword_27E32D8 = 14;
  dword_27E32E0 = 7;
  qword_27E32F0 = 7;
  qword_27E3308 = 16;
  qword_27E3320 = 13;
  qword_27E3338 = 16;
  qword_27E3350 = 10;
  qword_27E3368 = 14;
  qword_27E3380 = 13;
  qword_27E3398 = 20;
  dword_27E33A0 = 5;
  qword_27E33B0 = 3;
  dword_27E33B8 = 4;
  qword_27E33C8 = 23;
  qword_27E33E0 = 17;
  qword_27E33F8 = 16;
  qword_27E3410 = 15;
  qword_27E3428 = 5;
  qword_27E3440 = 16;
  qword_27E3458 = 17;
  dword_27E3460 = 13;
  qword_27E3470 = 14;
  dword_27E3478 = 8;
  qword_27E3488 = 11;
  qword_27E34A0 = 23;
  qword_27E34B8 = 9;
  dword_27E34C0 = 11;
  qword_27E34D0 = 8;
  qword_27E34E8 = 7;
  qword_27E3500 = 12;
  dword_27E3508 = 6;
  qword_27E3518 = 9;
  qword_27E3530 = 12;
  qword_27E3558 = "PAIRED_DEVICE_UNKNOWNPAIRED_DEVICE_WATCH";
  unk_27E3560 = 21;
  qword_27E3540 = "PAIRED_DEVICE_PHONEPAIRED_DEVICE_UNKNOWNPAIRED_DEVICE_WATCH";
  qword_27E3548 = 19;
  dword_27E3550 = 2;
  dword_27E3568 = 0;
  qword_27E3570 = "PAIRED_DEVICE_WATCH";
  unk_27E3578 = 19;
  dword_27E3580 = 1;
  qword_27E35A0 = "DRIVING_MODERIDESHARE_MODETRANSIT_MODEUNKNOWN_TRANSPORT_MODEWALKING_MODE";
  qword_27E35B8 = "RIDESHARE_MODETRANSIT_MODEUNKNOWN_TRANSPORT_MODEWALKING_MODE";
  unk_27E35C0 = 14;
  qword_27E35D0 = "TRANSIT_MODEUNKNOWN_TRANSPORT_MODEWALKING_MODE";
  qword_27E35E8 = "UNKNOWN_TRANSPORT_MODEWALKING_MODE";
  unk_27E35F0 = 22;
  qword_27E3588 = "CYCLING_MODEDRIVING_MODERIDESHARE_MODETRANSIT_MODEUNKNOWN_TRANSPORT_MODEWALKING_MODE";
  qword_27E3590 = 12;
  dword_27E3598 = 5;
  qword_27E35A8 = 12;
  dword_27E35B0 = 1;
  dword_27E35C8 = 4;
  qword_27E35D8 = 12;
  dword_27E35E0 = 3;
  dword_27E35F8 = 0;
  qword_27E3600 = "WALKING_MODE";
  unk_27E3608 = 12;
  dword_27E3610 = 2;
  qword_27E3630 = "LOW_VOLUMENORMAL_VOLUMENO_VOICEUNKNOWN_VOICE_VOLUME";
  unk_27E3638 = 10;
  qword_27E3648 = "NORMAL_VOLUMENO_VOICEUNKNOWN_VOICE_VOLUME";
  unk_27E3650 = 13;
  qword_27E3660 = "NO_VOICEUNKNOWN_VOICE_VOLUME";
  unk_27E3668 = 8;
  qword_27E3678 = "UNKNOWN_VOICE_VOLUME";
  unk_27E3680 = 20;
  qword_27E3618 = "LOUD_VOLUMELOW_VOLUMENORMAL_VOLUMENO_VOICEUNKNOWN_VOICE_VOLUME";
  unk_27E3620 = 11;
  dword_27E3628 = 4;
  dword_27E3640 = 2;
  dword_27E3658 = 3;
  dword_27E3670 = 1;
  dword_27E3688 = 0;
  qword_27E36A8 = "MINI_LAYOUTPARTIAL_LAYOUTUNKNOWN_LAYOUT";
  qword_27E36C0 = "PARTIAL_LAYOUTUNKNOWN_LAYOUT";
  unk_27E36C8 = 14;
  qword_27E36D8 = "UNKNOWN_LAYOUT";
  unk_27E36E0 = 14;
  qword_27E3690 = "FULL_LAYOUTMINI_LAYOUTPARTIAL_LAYOUTUNKNOWN_LAYOUT";
  qword_27E3698 = 11;
  dword_27E36A0 = 3;
  qword_27E36B0 = 11;
  dword_27E36B8 = 1;
  dword_27E36D0 = 2;
  dword_27E36E8 = 0;
  qword_27E3708 = "FLOATING_STYLESIDE_BAR_STYLESTANDARD_SIDE_STYLESTANDARD_STYLEUNKNOWN_STYLE";
  qword_27E3720 = "SIDE_BAR_STYLESTANDARD_SIDE_STYLESTANDARD_STYLEUNKNOWN_STYLE";
  qword_27E3738 = "STANDARD_SIDE_STYLESTANDARD_STYLEUNKNOWN_STYLE";
  unk_27E3740 = 19;
  qword_27E3750 = "STANDARD_STYLEUNKNOWN_STYLE";
  qword_27E3768 = "UNKNOWN_STYLE";
  qword_27E36F0 = "COMPACT_STYLEFLOATING_STYLESIDE_BAR_STYLESTANDARD_SIDE_STYLESTANDARD_STYLEUNKNOWN_STYLE";
  *algn_27E36F8 = 13;
  dword_27E3700 = 2;
  qword_27E3710 = 14;
  dword_27E3718 = 4;
  qword_27E3728 = 14;
  dword_27E3730 = 3;
  dword_27E3748 = 5;
  qword_27E3758 = 14;
  dword_27E3760 = 1;
  qword_27E3770 = 13;
  dword_27E3778 = 0;
  qword_27E3798 = "CLOSED_NOWETAHOURSREVIEW_RATINGTRANSIT_ADVISORYUNKNOWN_UI_ELEMENTUSEFUL_TO_KNOW";
  unk_27E37A0 = 10;
  qword_27E37B0 = "ETAHOURSREVIEW_RATINGTRANSIT_ADVISORYUNKNOWN_UI_ELEMENTUSEFUL_TO_KNOW";
  qword_27E37C8 = "HOURSREVIEW_RATINGTRANSIT_ADVISORYUNKNOWN_UI_ELEMENTUSEFUL_TO_KNOW";
  unk_27E37D0 = 5;
  qword_27E37E0 = "REVIEW_RATINGTRANSIT_ADVISORYUNKNOWN_UI_ELEMENTUSEFUL_TO_KNOW";
  unk_27E37E8 = 13;
  qword_27E37F8 = "TRANSIT_ADVISORYUNKNOWN_UI_ELEMENTUSEFUL_TO_KNOW";
  unk_27E3800 = 16;
  qword_27E3810 = "UNKNOWN_UI_ELEMENTUSEFUL_TO_KNOW";
  unk_27E3818 = 18;
  qword_27E3828 = "USEFUL_TO_KNOW";
  unk_27E3830 = 14;
  qword_27E3780 = "APPLE_PAYCLOSED_NOWETAHOURSREVIEW_RATINGTRANSIT_ADVISORYUNKNOWN_UI_ELEMENTUSEFUL_TO_KNOW";
  *algn_27E3788 = 9;
  dword_27E3790 = 3;
  dword_27E37A8 = 2;
  qword_27E37B8 = 3;
  dword_27E37C0 = 1;
  dword_27E37D8 = 4;
  dword_27E37F0 = 6;
  dword_27E3808 = 7;
  dword_27E3820 = 0;
  dword_27E3838 = 5;
  qword_27E3858 = "BRAND_PLACECARDBUSINESS_PLACECARDCALENDAR_PLACECARDCURATED_COLLECTION_PLACECARDCURRENT_LOCATION_PLACECARDDROPPED_PIN_PLACECARDFLYOVER_PLACECARDLANDMARK_PLACECARDOTHERSAR_PLACECARDTRANSIT_LINE_PLACECARDTRANSIT_PLACECARDTRANSIT_STATION_PLACECARDUNKNOWN_PLACECARDVENUE_BUILDING_PLACECARDVENUE_PLACECARD";
  qword_27E3870 = "BUSINESS_PLACECARDCALENDAR_PLACECARDCURATED_COLLECTION_PLACECARDCURRENT_LOCATION_PLACECARDDROPPED_PIN_PLACECARDFLYOVER_PLACECARDLANDMARK_PLACECARDOTHERSAR_PLACECARDTRANSIT_LINE_PLACECARDTRANSIT_PLACECARDTRANSIT_STATION_PLACECARDUNKNOWN_PLACECARDVENUE_BUILDING_PLACECARDVENUE_PLACECARD";
  qword_27E3888 = "CALENDAR_PLACECARDCURATED_COLLECTION_PLACECARDCURRENT_LOCATION_PLACECARDDROPPED_PIN_PLACECARDFLYOVER_PLACECARDLANDMARK_PLACECARDOTHERSAR_PLACECARDTRANSIT_LINE_PLACECARDTRANSIT_PLACECARDTRANSIT_STATION_PLACECARDUNKNOWN_PLACECARDVENUE_BUILDING_PLACECARDVENUE_PLACECARD";
  qword_27E38A0 = "CURATED_COLLECTION_PLACECARDCURRENT_LOCATION_PLACECARDDROPPED_PIN_PLACECARDFLYOVER_PLACECARDLANDMARK_PLACECARDOTHERSAR_PLACECARDTRANSIT_LINE_PLACECARDTRANSIT_PLACECARDTRANSIT_STATION_PLACECARDUNKNOWN_PLACECARDVENUE_BUILDING_PLACECARDVENUE_PLACECARD";
  qword_27E38B8 = "CURRENT_LOCATION_PLACECARDDROPPED_PIN_PLACECARDFLYOVER_PLACECARDLANDMARK_PLACECARDOTHERSAR_PLACECARDTRANSIT_LINE_PLACECARDTRANSIT_PLACECARDTRANSIT_STATION_PLACECARDUNKNOWN_PLACECARDVENUE_BUILDING_PLACECARDVENUE_PLACECARD";
  qword_27E38D0 = "DROPPED_PIN_PLACECARDFLYOVER_PLACECARDLANDMARK_PLACECARDOTHERSAR_PLACECARDTRANSIT_LINE_PLACECARDTRANSIT_PLACECARDTRANSIT_STATION_PLACECARDUNKNOWN_PLACECARDVENUE_BUILDING_PLACECARDVENUE_PLACECARD";
  qword_27E38E8 = "FLYOVER_PLACECARDLANDMARK_PLACECARDOTHERSAR_PLACECARDTRANSIT_LINE_PLACECARDTRANSIT_PLACECARDTRANSIT_STATION_PLACECARDUNKNOWN_PLACECARDVENUE_BUILDING_PLACECARDVENUE_PLACECARD";
  qword_27E3900 = "LANDMARK_PLACECARDOTHERSAR_PLACECARDTRANSIT_LINE_PLACECARDTRANSIT_PLACECARDTRANSIT_STATION_PLACECARDUNKNOWN_PLACECARDVENUE_BUILDING_PLACECARDVENUE_PLACECARD";
  qword_27E3918 = "OTHERSAR_PLACECARDTRANSIT_LINE_PLACECARDTRANSIT_PLACECARDTRANSIT_STATION_PLACECARDUNKNOWN_PLACECARDVENUE_BUILDING_PLACECARDVENUE_PLACECARD";
  qword_27E3930 = "SAR_PLACECARDTRANSIT_LINE_PLACECARDTRANSIT_PLACECARDTRANSIT_STATION_PLACECARDUNKNOWN_PLACECARDVENUE_BUILDING_PLACECARDVENUE_PLACECARD";
  qword_27E3948 = "TRANSIT_LINE_PLACECARDTRANSIT_PLACECARDTRANSIT_STATION_PLACECARDUNKNOWN_PLACECARDVENUE_BUILDING_PLACECARDVENUE_PLACECARD";
  qword_27E3960 = "TRANSIT_PLACECARDTRANSIT_STATION_PLACECARDUNKNOWN_PLACECARDVENUE_BUILDING_PLACECARDVENUE_PLACECARD";
  qword_27E3978 = "TRANSIT_STATION_PLACECARDUNKNOWN_PLACECARDVENUE_BUILDING_PLACECARDVENUE_PLACECARD";
  qword_27E3990 = "UNKNOWN_PLACECARDVENUE_BUILDING_PLACECARDVENUE_PLACECARD";
  qword_27E39A8 = "VENUE_BUILDING_PLACECARDVENUE_PLACECARD";
  qword_27E39C0 = "VENUE_PLACECARD";
  qword_27E39F0 = "BATCH_TRAFFIC_PROBE_COLLECTIONCACHE_HITCLIENT_AC_SUGGESTIONSCOMMUTE_WINDOWCURATED_COLLECTION_STATSCURATED_COLLECTION_USAGEDAILY_USE_SUMMARYDEVICE_SYNC_STATUSDIRECTIONSDIRECTIONS_REQUEST_DETAILSDISPLAY_ANALYTICEQ_DATAEV_ROUTING_VEHICLE_DETAILSEV_TRIPFULL_NAV_TRACEGENERIC_APP_ERRORGRID_DURATIONHARD_STOPIMPRESSION_EVENTLIST_INTERACTION_SESSIONLOG_DISCARDLOG_FRAMEWORKLOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3A08 = "CACHE_HITCLIENT_AC_SUGGESTIONSCOMMUTE_WINDOWCURATED_COLLECTION_STATSCURATED_COLLECTION_USAGEDAILY_USE_SUMMARYDEVICE_SYNC_STATUSDIRECTIONSDIRECTIONS_REQUEST_DETAILSDISPLAY_ANALYTICEQ_DATAEV_ROUTING_VEHICLE_DETAILSEV_TRIPFULL_NAV_TRACEGENERIC_APP_ERRORGRID_DURATIONHARD_STOPIMPRESSION_EVENTLIST_INTERACTION_SESSIONLOG_DISCARDLOG_FRAMEWORKLOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3A20 = "CLIENT_AC_SUGGESTIONSCOMMUTE_WINDOWCURATED_COLLECTION_STATSCURATED_COLLECTION_USAGEDAILY_USE_SUMMARYDEVICE_SYNC_STATUSDIRECTIONSDIRECTIONS_REQUEST_DETAILSDISPLAY_ANALYTICEQ_DATAEV_ROUTING_VEHICLE_DETAILSEV_TRIPFULL_NAV_TRACEGENERIC_APP_ERRORGRID_DURATIONHARD_STOPIMPRESSION_EVENTLIST_INTERACTION_SESSIONLOG_DISCARDLOG_FRAMEWORKLOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3A38 = "COMMUTE_WINDOWCURATED_COLLECTION_STATSCURATED_COLLECTION_USAGEDAILY_USE_SUMMARYDEVICE_SYNC_STATUSDIRECTIONSDIRECTIONS_REQUEST_DETAILSDISPLAY_ANALYTICEQ_DATAEV_ROUTING_VEHICLE_DETAILSEV_TRIPFULL_NAV_TRACEGENERIC_APP_ERRORGRID_DURATIONHARD_STOPIMPRESSION_EVENTLIST_INTERACTION_SESSIONLOG_DISCARDLOG_FRAMEWORKLOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3A50 = "CURATED_COLLECTION_STATSCURATED_COLLECTION_USAGEDAILY_USE_SUMMARYDEVICE_SYNC_STATUSDIRECTIONSDIRECTIONS_REQUEST_DETAILSDISPLAY_ANALYTICEQ_DATAEV_ROUTING_VEHICLE_DETAILSEV_TRIPFULL_NAV_TRACEGENERIC_APP_ERRORGRID_DURATIONHARD_STOPIMPRESSION_EVENTLIST_INTERACTION_SESSIONLOG_DISCARDLOG_FRAMEWORKLOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3A68 = "CURATED_COLLECTION_USAGEDAILY_USE_SUMMARYDEVICE_SYNC_STATUSDIRECTIONSDIRECTIONS_REQUEST_DETAILSDISPLAY_ANALYTICEQ_DATAEV_ROUTING_VEHICLE_DETAILSEV_TRIPFULL_NAV_TRACEGENERIC_APP_ERRORGRID_DURATIONHARD_STOPIMPRESSION_EVENTLIST_INTERACTION_SESSIONLOG_DISCARDLOG_FRAMEWORKLOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3A80 = "DAILY_USE_SUMMARYDEVICE_SYNC_STATUSDIRECTIONSDIRECTIONS_REQUEST_DETAILSDISPLAY_ANALYTICEQ_DATAEV_ROUTING_VEHICLE_DETAILSEV_TRIPFULL_NAV_TRACEGENERIC_APP_ERRORGRID_DURATIONHARD_STOPIMPRESSION_EVENTLIST_INTERACTION_SESSIONLOG_DISCARDLOG_FRAMEWORKLOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  dword_27E3A90 = 50;
  qword_27E3A98 = "DEVICE_SYNC_STATUSDIRECTIONSDIRECTIONS_REQUEST_DETAILSDISPLAY_ANALYTICEQ_DATAEV_ROUTING_VEHICLE_DETAILSEV_TRIPFULL_NAV_TRACEGENERIC_APP_ERRORGRID_DURATIONHARD_STOPIMPRESSION_EVENTLIST_INTERACTION_SESSIONLOG_DISCARDLOG_FRAMEWORKLOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  dword_27E3AA8 = 60;
  qword_27E3AB0 = "DIRECTIONSDIRECTIONS_REQUEST_DETAILSDISPLAY_ANALYTICEQ_DATAEV_ROUTING_VEHICLE_DETAILSEV_TRIPFULL_NAV_TRACEGENERIC_APP_ERRORGRID_DURATIONHARD_STOPIMPRESSION_EVENTLIST_INTERACTION_SESSIONLOG_DISCARDLOG_FRAMEWORKLOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3AC8 = "DIRECTIONS_REQUEST_DETAILSDISPLAY_ANALYTICEQ_DATAEV_ROUTING_VEHICLE_DETAILSEV_TRIPFULL_NAV_TRACEGENERIC_APP_ERRORGRID_DURATIONHARD_STOPIMPRESSION_EVENTLIST_INTERACTION_SESSIONLOG_DISCARDLOG_FRAMEWORKLOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3AE0 = "DISPLAY_ANALYTICEQ_DATAEV_ROUTING_VEHICLE_DETAILSEV_TRIPFULL_NAV_TRACEGENERIC_APP_ERRORGRID_DURATIONHARD_STOPIMPRESSION_EVENTLIST_INTERACTION_SESSIONLOG_DISCARDLOG_FRAMEWORKLOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3AF8 = "EQ_DATAEV_ROUTING_VEHICLE_DETAILSEV_TRIPFULL_NAV_TRACEGENERIC_APP_ERRORGRID_DURATIONHARD_STOPIMPRESSION_EVENTLIST_INTERACTION_SESSIONLOG_DISCARDLOG_FRAMEWORKLOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  dword_27E3B08 = 66;
  qword_27E3B10 = "EV_ROUTING_VEHICLE_DETAILSEV_TRIPFULL_NAV_TRACEGENERIC_APP_ERRORGRID_DURATIONHARD_STOPIMPRESSION_EVENTLIST_INTERACTION_SESSIONLOG_DISCARDLOG_FRAMEWORKLOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3B28 = "EV_TRIPFULL_NAV_TRACEGENERIC_APP_ERRORGRID_DURATIONHARD_STOPIMPRESSION_EVENTLIST_INTERACTION_SESSIONLOG_DISCARDLOG_FRAMEWORKLOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3B40 = "FULL_NAV_TRACEGENERIC_APP_ERRORGRID_DURATIONHARD_STOPIMPRESSION_EVENTLIST_INTERACTION_SESSIONLOG_DISCARDLOG_FRAMEWORKLOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3B58 = "GENERIC_APP_ERRORGRID_DURATIONHARD_STOPIMPRESSION_EVENTLIST_INTERACTION_SESSIONLOG_DISCARDLOG_FRAMEWORKLOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E4038 = "FREEWAY_CONTROLLEDFREEWAY_UNCONTROLLEDGATEHIDDENHIGHWAYLOCAL_MAJOR_ROADLOCAL_ROADMAJOR_HIGHWAYMINOR_ROADPARKING_LOT_ROADPARKING_STRUCTUREPEDESTRIAN_OVERPASSPEDESTRIAN_OVERPASS_RAMPPEDESTRIAN_OVERPASS_STEPSPEDESTRIAN_PATHPEDESTRIAN_ROADPEDESTRIAN_UNDERPASSPEDESTRIAN_UNDERPASS_RAMPPEDESTRIAN_UNDERPASS_STEPSPRIVATE_PATHSERVICE_ROADSPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  qword_27E4130 = 17;
  qword_27E4578 = "MIF_AUTOCOMPLETE_PERSONALIZED_RESULT_ENTRY_TYPE_UNKNOWN";
  qword_27E48C0 = "DIETARY_RESTRICTION_TYPE_HALALDIETARY_RESTRICTION_TYPE_INCLUDES_DAIRYDIETARY_RESTRICTION_TYPE_INCLUDES_FISHDIETARY_RESTRICTION_TYPE_INCLUDES_GLUTENDIETARY_RESTRICTION_TYPE_INCLUDES_NUTSDIETARY_RESTRICTION_TYPE_INCLUDES_SHELLFISHDIETARY_RESTRICTION_TYPE_INCLUDES_SOYDIETARY_RESTRICTION_TYPE_KOSHERDIETARY_RESTRICTION_TYPE_LACTOSE_FREEDIETARY_RESTRICTION_TYPE_NUT_FREEDIETARY_RESTRICTION_TYPE_SHELLFISH_FREEDIETARY_RESTRICTION_TYPE_SOY_FREEDIETARY_RESTRICTION_TYPE_UNKNOWNDIETARY_RESTRICTION_TYPE_VEGANDIETARY_RESTRICTION_TYPE_VEGETARIAN";
  qword_27E48A8 = "DIETARY_RESTRICTION_TYPE_GLUTEN_FREEDIETARY_RESTRICTION_TYPE_HALALDIETARY_RESTRICTION_TYPE_INCLUDES_DAIRYDIETARY_RESTRICTION_TYPE_INCLUDES_FISHDIETARY_RESTRICTION_TYPE_INCLUDES_GLUTENDIETARY_RESTRICTION_TYPE_INCLUDES_NUTSDIETARY_RESTRICTION_TYPE_INCLUDES_SHELLFISHDIETARY_RESTRICTION_TYPE_INCLUDES_SOYDIETARY_RESTRICTION_TYPE_KOSHERDIETARY_RESTRICTION_TYPE_LACTOSE_FREEDIETARY_RESTRICTION_TYPE_NUT_FREEDIETARY_RESTRICTION_TYPE_SHELLFISH_FREEDIETARY_RESTRICTION_TYPE_SOY_FREEDIETARY_RESTRICTION_TYPE_UNKNOWNDIETARY_RESTRICTION_TYPE_VEGANDIETARY_RESTRICTION_TYPE_VEGETARIAN";
  unk_27E48B0 = 36;
  dword_27E48B8 = 3;
  qword_27E4758 = "NUTRITION_UNIT_CALORIES_FROM_FATNUTRITION_UNIT_CHOLESTEROLNUTRITION_UNIT_DIETARY_FIBERNUTRITION_UNIT_FATNUTRITION_UNIT_PROTEINNUTRITION_UNIT_SATURATED_FATNUTRITION_UNIT_SODIUMNUTRITION_UNIT_SUGARSNUTRITION_UNIT_TOTAL_CARBSNUTRITION_UNIT_TOTAL_FATNUTRITION_UNIT_TRANS_FATNUTRITION_UNIT_UNKNOWN";
  dword_27E4888 = 11;
  qword_27E4890 = "DIETARY_RESTRICTION_TYPE_FISH_FREEDIETARY_RESTRICTION_TYPE_GLUTEN_FREEDIETARY_RESTRICTION_TYPE_HALALDIETARY_RESTRICTION_TYPE_INCLUDES_DAIRYDIETARY_RESTRICTION_TYPE_INCLUDES_FISHDIETARY_RESTRICTION_TYPE_INCLUDES_GLUTENDIETARY_RESTRICTION_TYPE_INCLUDES_NUTSDIETARY_RESTRICTION_TYPE_INCLUDES_SHELLFISHDIETARY_RESTRICTION_TYPE_INCLUDES_SOYDIETARY_RESTRICTION_TYPE_KOSHERDIETARY_RESTRICTION_TYPE_LACTOSE_FREEDIETARY_RESTRICTION_TYPE_NUT_FREEDIETARY_RESTRICTION_TYPE_SHELLFISH_FREEDIETARY_RESTRICTION_TYPE_SOY_FREEDIETARY_RESTRICTION_TYPE_UNKNOWNDIETARY_RESTRICTION_TYPE_VEGANDIETARY_RESTRICTION_TYPE_VEGETARIAN";
  unk_27E4898 = 34;
  dword_27E48A0 = 15;
  qword_27E4860 = "NUTRITION_UNIT_UNKNOWN";
  unk_27E4868 = 22;
  dword_27E4870 = 0;
  qword_27E4878 = "DIETARY_RESTRICTION_TYPE_DAIRY_FREEDIETARY_RESTRICTION_TYPE_FISH_FREEDIETARY_RESTRICTION_TYPE_GLUTEN_FREEDIETARY_RESTRICTION_TYPE_HALALDIETARY_RESTRICTION_TYPE_INCLUDES_DAIRYDIETARY_RESTRICTION_TYPE_INCLUDES_FISHDIETARY_RESTRICTION_TYPE_INCLUDES_GLUTENDIETARY_RESTRICTION_TYPE_INCLUDES_NUTSDIETARY_RESTRICTION_TYPE_INCLUDES_SHELLFISHDIETARY_RESTRICTION_TYPE_INCLUDES_SOYDIETARY_RESTRICTION_TYPE_KOSHERDIETARY_RESTRICTION_TYPE_LACTOSE_FREEDIETARY_RESTRICTION_TYPE_NUT_FREEDIETARY_RESTRICTION_TYPE_SHELLFISH_FREEDIETARY_RESTRICTION_TYPE_SOY_FREEDIETARY_RESTRICTION_TYPE_UNKNOWNDIETARY_RESTRICTION_TYPE_VEGANDIETARY_RESTRICTION_TYPE_VEGETARIAN";
  unk_27E4880 = 35;
  dword_27E4840 = 7;
  qword_27E4848 = "NUTRITION_UNIT_TRANS_FATNUTRITION_UNIT_UNKNOWN";
  unk_27E4850 = 24;
  dword_27E4858 = 6;
  qword_27E4830 = "NUTRITION_UNIT_TOTAL_FATNUTRITION_UNIT_TRANS_FATNUTRITION_UNIT_UNKNOWN";
  unk_27E4838 = 24;
  qword_27E4818 = "NUTRITION_UNIT_TOTAL_CARBSNUTRITION_UNIT_TOTAL_FATNUTRITION_UNIT_TRANS_FATNUTRITION_UNIT_UNKNOWN";
  unk_27E4820 = 26;
  dword_27E4828 = 10;
  dword_27E47F8 = 9;
  qword_27E4800 = "NUTRITION_UNIT_SUGARSNUTRITION_UNIT_TOTAL_CARBSNUTRITION_UNIT_TOTAL_FATNUTRITION_UNIT_TRANS_FATNUTRITION_UNIT_UNKNOWN";
  unk_27E4808 = 21;
  dword_27E4810 = 8;
  qword_27E47E8 = "NUTRITION_UNIT_SODIUMNUTRITION_UNIT_SUGARSNUTRITION_UNIT_TOTAL_CARBSNUTRITION_UNIT_TOTAL_FATNUTRITION_UNIT_TRANS_FATNUTRITION_UNIT_UNKNOWN";
  unk_27E47F0 = 21;
  qword_27E47D0 = "NUTRITION_UNIT_SATURATED_FATNUTRITION_UNIT_SODIUMNUTRITION_UNIT_SUGARSNUTRITION_UNIT_TOTAL_CARBSNUTRITION_UNIT_TOTAL_FATNUTRITION_UNIT_TRANS_FATNUTRITION_UNIT_UNKNOWN";
  unk_27E47D8 = 28;
  dword_27E47E0 = 5;
  qword_27E47B8 = "NUTRITION_UNIT_PROTEINNUTRITION_UNIT_SATURATED_FATNUTRITION_UNIT_SODIUMNUTRITION_UNIT_SUGARSNUTRITION_UNIT_TOTAL_CARBSNUTRITION_UNIT_TOTAL_FATNUTRITION_UNIT_TRANS_FATNUTRITION_UNIT_UNKNOWN";
  unk_27E47C0 = 22;
  dword_27E47B0 = 4;
  dword_27E47C8 = 12;
  qword_27E47A0 = "NUTRITION_UNIT_FATNUTRITION_UNIT_PROTEINNUTRITION_UNIT_SATURATED_FATNUTRITION_UNIT_SODIUMNUTRITION_UNIT_SUGARSNUTRITION_UNIT_TOTAL_CARBSNUTRITION_UNIT_TOTAL_FATNUTRITION_UNIT_TRANS_FATNUTRITION_UNIT_UNKNOWN";
  qword_27E4788 = "NUTRITION_UNIT_DIETARY_FIBERNUTRITION_UNIT_FATNUTRITION_UNIT_PROTEINNUTRITION_UNIT_SATURATED_FATNUTRITION_UNIT_SODIUMNUTRITION_UNIT_SUGARSNUTRITION_UNIT_TOTAL_CARBSNUTRITION_UNIT_TOTAL_FATNUTRITION_UNIT_TRANS_FATNUTRITION_UNIT_UNKNOWN";
  unk_27E4790 = 28;
  dword_27E4798 = 11;
  qword_27E47A8 = 18;
  qword_27E4740 = "NUTRITION_UNIT_CALORIESNUTRITION_UNIT_CALORIES_FROM_FATNUTRITION_UNIT_CHOLESTEROLNUTRITION_UNIT_DIETARY_FIBERNUTRITION_UNIT_FATNUTRITION_UNIT_PROTEINNUTRITION_UNIT_SATURATED_FATNUTRITION_UNIT_SODIUMNUTRITION_UNIT_SUGARSNUTRITION_UNIT_TOTAL_CARBSNUTRITION_UNIT_TOTAL_FATNUTRITION_UNIT_TRANS_FATNUTRITION_UNIT_UNKNOWN";
  qword_27E4770 = "NUTRITION_UNIT_CHOLESTEROLNUTRITION_UNIT_DIETARY_FIBERNUTRITION_UNIT_FATNUTRITION_UNIT_PROTEINNUTRITION_UNIT_SATURATED_FATNUTRITION_UNIT_SODIUMNUTRITION_UNIT_SUGARSNUTRITION_UNIT_TOTAL_CARBSNUTRITION_UNIT_TOTAL_FATNUTRITION_UNIT_TRANS_FATNUTRITION_UNIT_UNKNOWN";
  unk_27E4778 = 26;
  dword_27E4768 = 2;
  dword_27E4780 = 3;
  dword_27E4750 = 1;
  qword_27E4760 = 32;
  qword_27E4748 = 23;
  qword_27E46E0 = "MAPS_WIDGET_TYPE_UNKNOWN";
  qword_27E4728 = "MPSES_UNKNOWN";
  unk_27E4730 = 13;
  dword_27E4720 = 1;
  dword_27E4738 = 0;
  qword_27E4710 = "MPSES_INTERACTEDMPSES_UNKNOWN";
  qword_27E46F8 = "MPSES_ABANDONEDMPSES_INTERACTEDMPSES_UNKNOWN";
  unk_27E4700 = 15;
  dword_27E4708 = 2;
  qword_27E4718 = 16;
  qword_27E46C8 = "MAPS_WIDGET_TYPE_TRANSITMAPS_WIDGET_TYPE_UNKNOWN";
  qword_27E46D0 = 24;
  dword_27E46D8 = 2;
  qword_27E46E8 = 24;
  dword_27E46F0 = 0;
  qword_27E46B0 = "MAPS_WIDGET_TYPE_NEARBYMAPS_WIDGET_TYPE_TRANSITMAPS_WIDGET_TYPE_UNKNOWN";
  unk_27E46B8 = 23;
  qword_27E4698 = "MAPS_WIDGET_TYPE_DESTINATIONSMAPS_WIDGET_TYPE_NEARBYMAPS_WIDGET_TYPE_TRANSITMAPS_WIDGET_TYPE_UNKNOWN";
  unk_27E46A0 = 29;
  dword_27E46C0 = 3;
  dword_27E46A8 = 1;
  qword_27E4680 = "TRANSIT_MESSAGE_TYPE_UNKNOWN";
  unk_27E4688 = 28;
  qword_27E4668 = "TRANSIT_MESSAGE_TYPE_SINGLE_ADVISORYTRANSIT_MESSAGE_TYPE_UNKNOWN";
  unk_27E4670 = 36;
  dword_27E4690 = 0;
  dword_27E4678 = 3;
  qword_27E45C0 = "MIF_AUTOCOMPLETE_RESPONSE_STATUS_PROCESSING_ERRORMIF_AUTOCOMPLETE_RESPONSE_STATUS_RANKER_MODULE_DISABLEDMIF_AUTOCOMPLETE_RESPONSE_STATUS_SUCCESSMIF_AUTOCOMPLETE_RESPONSE_STATUS_UNKNOWN";
  dword_27E4648 = 2;
  qword_27E4650 = "TRANSIT_MESSAGE_TYPE_NO_FAVORITE_LINETRANSIT_MESSAGE_TYPE_SINGLE_ADVISORYTRANSIT_MESSAGE_TYPE_UNKNOWN";
  unk_27E4658 = 37;
  dword_27E4660 = 1;
  qword_27E4638 = "TRANSIT_MESSAGE_TYPE_NO_ADVISORYTRANSIT_MESSAGE_TYPE_NO_FAVORITE_LINETRANSIT_MESSAGE_TYPE_SINGLE_ADVISORYTRANSIT_MESSAGE_TYPE_UNKNOWN";
  unk_27E4640 = 32;
  qword_27E4620 = "TRANSIT_MESSAGE_TYPE_MULTIPLE_ADVISORIESTRANSIT_MESSAGE_TYPE_NO_ADVISORYTRANSIT_MESSAGE_TYPE_NO_FAVORITE_LINETRANSIT_MESSAGE_TYPE_SINGLE_ADVISORYTRANSIT_MESSAGE_TYPE_UNKNOWN";
  *algn_27E4628 = 40;
  dword_27E4630 = 4;
  qword_27E4608 = "MIF_AUTOCOMPLETE_RESPONSE_STATUS_UNKNOWN";
  unk_27E4610 = 40;
  dword_27E4600 = 1;
  dword_27E4618 = 0;
  qword_27E45F0 = "MIF_AUTOCOMPLETE_RESPONSE_STATUS_SUCCESSMIF_AUTOCOMPLETE_RESPONSE_STATUS_UNKNOWN";
  unk_27E45F8 = 40;
  qword_27E45D8 = "MIF_AUTOCOMPLETE_RESPONSE_STATUS_RANKER_MODULE_DISABLEDMIF_AUTOCOMPLETE_RESPONSE_STATUS_SUCCESSMIF_AUTOCOMPLETE_RESPONSE_STATUS_UNKNOWN";
  unk_27E45E0 = 55;
  dword_27E45E8 = 5;
  qword_27E45A8 = "MIF_AUTOCOMPLETE_RESPONSE_STATUS_MODEL_INIT_ERRORMIF_AUTOCOMPLETE_RESPONSE_STATUS_PROCESSING_ERRORMIF_AUTOCOMPLETE_RESPONSE_STATUS_RANKER_MODULE_DISABLEDMIF_AUTOCOMPLETE_RESPONSE_STATUS_SUCCESSMIF_AUTOCOMPLETE_RESPONSE_STATUS_UNKNOWN";
  unk_27E45B0 = 49;
  dword_27E45B8 = 3;
  qword_27E45C8 = 49;
  dword_27E45D0 = 4;
  dword_27E39E8 = 55;
  qword_27E4580 = 55;
  qword_27E4590 = "MIF_AUTOCOMPLETE_RESPONSE_STATUS_MISSING_MODEL_ERRORMIF_AUTOCOMPLETE_RESPONSE_STATUS_MODEL_INIT_ERRORMIF_AUTOCOMPLETE_RESPONSE_STATUS_PROCESSING_ERRORMIF_AUTOCOMPLETE_RESPONSE_STATUS_RANKER_MODULE_DISABLEDMIF_AUTOCOMPLETE_RESPONSE_STATUS_SUCCESSMIF_AUTOCOMPLETE_RESPONSE_STATUS_UNKNOWN";
  *algn_27E4598 = 52;
  dword_27E45A0 = 2;
  dword_27E4588 = 0;
  qword_27E4548 = "MIF_AUTOCOMPLETE_PERSONALIZED_RESULT_ENTRY_TYPE_CLIENTMIF_AUTOCOMPLETE_PERSONALIZED_RESULT_ENTRY_TYPE_SERVERMIF_AUTOCOMPLETE_PERSONALIZED_RESULT_ENTRY_TYPE_UNKNOWN";
  unk_27E4550 = 54;
  qword_27E4560 = "MIF_AUTOCOMPLETE_PERSONALIZED_RESULT_ENTRY_TYPE_SERVERMIF_AUTOCOMPLETE_PERSONALIZED_RESULT_ENTRY_TYPE_UNKNOWN";
  unk_27E4568 = 54;
  dword_27E4570 = 2;
  dword_27E4558 = 1;
  qword_27E4518 = "JPEGPNG";
  unk_27E4520 = 4;
  dword_27E4528 = 2;
  qword_27E4530 = "PNG";
  unk_27E4538 = 3;
  dword_27E4540 = 0;
  qword_27E4500 = "GIFJPEGPNG";
  *algn_27E4508 = 3;
  dword_27E4510 = 1;
  qword_27E44D0 = "GEOCODE_REQUEST_TYPESEARCH_REQUEST_TYPE";
  dword_27E44F8 = 1;
  dword_27E44E0 = 2;
  qword_27E44E8 = "SEARCH_REQUEST_TYPE";
  unk_27E44F0 = 19;
  qword_27E44D8 = 20;
  qword_27E44B8 = "TRANSPORT_NETWORK_POLYGON";
  unk_27E44C0 = 25;
  dword_27E44C8 = 2;
  qword_27E44A0 = "ROAD_SEGMENTTRANSPORT_NETWORK_POLYGON";
  unk_27E44A8 = 12;
  qword_27E4488 = "POIROAD_SEGMENTTRANSPORT_NETWORK_POLYGON";
  unk_27E4490 = 3;
  dword_27E44B0 = 4;
  dword_27E4498 = 1;
  qword_27E4380 = "EXTREMELY_NEARFARIMMEDIATEMEDIUMNEARUNKNOWN_DISTANCE_TO_MANEUVERVERY_FARVERY_NEAR";
  dword_27E4468 = 3;
  qword_27E4470 = "PERIPHERAL_OBJECTPOIROAD_SEGMENTTRANSPORT_NETWORK_POLYGON";
  unk_27E4478 = 17;
  dword_27E4480 = 5;
  qword_27E4440 = "AOIBUILDINGPERIPHERAL_OBJECTPOIROAD_SEGMENTTRANSPORT_NETWORK_POLYGON";
  *algn_27E4448 = 3;
  dword_27E4450 = 0;
  qword_27E4458 = "BUILDINGPERIPHERAL_OBJECTPOIROAD_SEGMENTTRANSPORT_NETWORK_POLYGON";
  unk_27E4460 = 8;
  dword_27E4420 = 7;
  qword_27E4428 = "VERY_NEAR";
  unk_27E4430 = 9;
  dword_27E4438 = 3;
  qword_27E4410 = "VERY_FARVERY_NEAR";
  unk_27E4418 = 8;
  qword_27E43F8 = "UNKNOWN_DISTANCE_TO_MANEUVERVERY_FARVERY_NEAR";
  unk_27E4400 = 28;
  dword_27E4408 = 0;
  qword_27E43E0 = "NEARUNKNOWN_DISTANCE_TO_MANEUVERVERY_FARVERY_NEAR";
  dword_27E43D8 = 5;
  qword_27E43E8 = 4;
  dword_27E43F0 = 4;
  qword_27E43C8 = "MEDIUMNEARUNKNOWN_DISTANCE_TO_MANEUVERVERY_FARVERY_NEAR";
  qword_27E43B0 = "IMMEDIATEMEDIUMNEARUNKNOWN_DISTANCE_TO_MANEUVERVERY_FARVERY_NEAR";
  unk_27E43B8 = 9;
  dword_27E43C0 = 1;
  qword_27E43D0 = 6;
  qword_27E4368 = "EXTREMELY_FAREXTREMELY_NEARFARIMMEDIATEMEDIUMNEARUNKNOWN_DISTANCE_TO_MANEUVERVERY_FARVERY_NEAR";
  qword_27E4398 = "FARIMMEDIATEMEDIUMNEARUNKNOWN_DISTANCE_TO_MANEUVERVERY_FARVERY_NEAR";
  unk_27E43A0 = 3;
  dword_27E4390 = 2;
  dword_27E43A8 = 6;
  dword_27E4378 = 8;
  qword_27E4388 = 14;
  qword_27E4370 = 13;
  qword_27E4350 = "RECALCULATING";
  unk_27E4358 = 13;
  dword_27E4360 = 5;
  qword_27E4320 = "ON_ROUTEPROCEEDING_TO_ROUTERECALCULATING";
  unk_27E4328 = 8;
  qword_27E4338 = "PROCEEDING_TO_ROUTERECALCULATING";
  unk_27E4340 = 19;
  dword_27E4330 = 2;
  dword_27E4348 = 1;
  qword_27E4308 = "OFF_ROUTEON_ROUTEPROCEEDING_TO_ROUTERECALCULATING";
  unk_27E4310 = 9;
  dword_27E4318 = 3;
  qword_27E42D8 = "END_OF_SEGMENTNOT_NAVIGATINGOFF_ROUTEON_ROUTEPROCEEDING_TO_ROUTERECALCULATING";
  unk_27E42E0 = 14;
  qword_27E42F0 = "NOT_NAVIGATINGOFF_ROUTEON_ROUTEPROCEEDING_TO_ROUTERECALCULATING";
  unk_27E42F8 = 14;
  dword_27E42E8 = 7;
  dword_27E4300 = 0;
  qword_27E42C0 = "END_OF_ROUTEEND_OF_SEGMENTNOT_NAVIGATINGOFF_ROUTEON_ROUTEPROCEEDING_TO_ROUTERECALCULATING";
  unk_27E42C8 = 12;
  dword_27E42D0 = 6;
  qword_27E40F8 = "MINOR_ROADPARKING_LOT_ROADPARKING_STRUCTUREPEDESTRIAN_OVERPASSPEDESTRIAN_OVERPASS_RAMPPEDESTRIAN_OVERPASS_STEPSPEDESTRIAN_PATHPEDESTRIAN_ROADPEDESTRIAN_UNDERPASSPEDESTRIAN_UNDERPASS_RAMPPEDESTRIAN_UNDERPASS_STEPSPRIVATE_PATHSERVICE_ROADSPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  qword_27E42A8 = "BAD_ROUTEEND_OF_ROUTEEND_OF_SEGMENTNOT_NAVIGATINGOFF_ROUTEON_ROUTEPROCEEDING_TO_ROUTERECALCULATING";
  unk_27E42B0 = 9;
  dword_27E42B8 = 4;
  dword_27E42A0 = 12;
  qword_27E4278 = "UNKNOWN_LINE_TYPEWATER";
  qword_27E4290 = "WATER";
  qword_27E4280 = 17;
  dword_27E4288 = 0;
  qword_27E4298 = 5;
  qword_27E4260 = "TRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  dword_27E4258 = 26;
  qword_27E4268 = 16;
  dword_27E4270 = 16;
  qword_27E4230 = "SPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  qword_27E4248 = "TRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  qword_27E4238 = 14;
  dword_27E4240 = 13;
  qword_27E4250 = 21;
  qword_27E4218 = "SERVICE_ROADSPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  dword_27E4210 = 2;
  qword_27E4220 = 12;
  dword_27E4228 = 23;
  qword_27E4200 = "PRIVATE_PATHSERVICE_ROADSPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  unk_27E4208 = 12;
  qword_27E41E8 = "PEDESTRIAN_UNDERPASS_STEPSPRIVATE_PATHSERVICE_ROADSPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  unk_27E41F0 = 26;
  dword_27E41F8 = 21;
  dword_27E41C8 = 20;
  qword_27E41D0 = "PEDESTRIAN_UNDERPASS_RAMPPEDESTRIAN_UNDERPASS_STEPSPRIVATE_PATHSERVICE_ROADSPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  unk_27E41D8 = 25;
  dword_27E41E0 = 22;
  qword_27E41B8 = "PEDESTRIAN_UNDERPASSPEDESTRIAN_UNDERPASS_RAMPPEDESTRIAN_UNDERPASS_STEPSPRIVATE_PATHSERVICE_ROADSPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  unk_27E41C0 = 20;
  qword_27E41A0 = "PEDESTRIAN_ROADPEDESTRIAN_UNDERPASSPEDESTRIAN_UNDERPASS_RAMPPEDESTRIAN_UNDERPASS_STEPSPRIVATE_PATHSERVICE_ROADSPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  unk_27E41A8 = 15;
  dword_27E41B0 = 15;
  qword_27E4188 = "PEDESTRIAN_PATHPEDESTRIAN_ROADPEDESTRIAN_UNDERPASSPEDESTRIAN_UNDERPASS_RAMPPEDESTRIAN_UNDERPASS_STEPSPRIVATE_PATHSERVICE_ROADSPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  unk_27E4190 = 15;
  dword_27E4180 = 18;
  dword_27E4198 = 1;
  qword_27E4170 = "PEDESTRIAN_OVERPASS_STEPSPEDESTRIAN_PATHPEDESTRIAN_ROADPEDESTRIAN_UNDERPASSPEDESTRIAN_UNDERPASS_RAMPPEDESTRIAN_UNDERPASS_STEPSPRIVATE_PATHSERVICE_ROADSPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  unk_27E4178 = 25;
  qword_27E4158 = "PEDESTRIAN_OVERPASS_RAMPPEDESTRIAN_OVERPASS_STEPSPEDESTRIAN_PATHPEDESTRIAN_ROADPEDESTRIAN_UNDERPASSPEDESTRIAN_UNDERPASS_RAMPPEDESTRIAN_UNDERPASS_STEPSPRIVATE_PATHSERVICE_ROADSPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  unk_27E4160 = 24;
  dword_27E4168 = 19;
  qword_27E4140 = "PEDESTRIAN_OVERPASSPEDESTRIAN_OVERPASS_RAMPPEDESTRIAN_OVERPASS_STEPSPEDESTRIAN_PATHPEDESTRIAN_ROADPEDESTRIAN_UNDERPASSPEDESTRIAN_UNDERPASS_RAMPPEDESTRIAN_UNDERPASS_STEPSPRIVATE_PATHSERVICE_ROADSPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  unk_27E4148 = 19;
  dword_27E4138 = 14;
  dword_27E4150 = 17;
  qword_27E4128 = "PARKING_STRUCTUREPEDESTRIAN_OVERPASSPEDESTRIAN_OVERPASS_RAMPPEDESTRIAN_OVERPASS_STEPSPEDESTRIAN_PATHPEDESTRIAN_ROADPEDESTRIAN_UNDERPASSPEDESTRIAN_UNDERPASS_RAMPPEDESTRIAN_UNDERPASS_STEPSPRIVATE_PATHSERVICE_ROADSPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  qword_27E4110 = "PARKING_LOT_ROADPARKING_STRUCTUREPEDESTRIAN_OVERPASSPEDESTRIAN_OVERPASS_RAMPPEDESTRIAN_OVERPASS_STEPSPEDESTRIAN_PATHPEDESTRIAN_ROADPEDESTRIAN_UNDERPASSPEDESTRIAN_UNDERPASS_RAMPPEDESTRIAN_UNDERPASS_STEPSPRIVATE_PATHSERVICE_ROADSPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  unk_27E4118 = 16;
  dword_27E4108 = 3;
  dword_27E4120 = 25;
  qword_27E40E0 = "MAJOR_HIGHWAYMINOR_ROADPARKING_LOT_ROADPARKING_STRUCTUREPEDESTRIAN_OVERPASSPEDESTRIAN_OVERPASS_RAMPPEDESTRIAN_OVERPASS_STEPSPEDESTRIAN_PATHPEDESTRIAN_ROADPEDESTRIAN_UNDERPASSPEDESTRIAN_UNDERPASS_RAMPPEDESTRIAN_UNDERPASS_STEPSPRIVATE_PATHSERVICE_ROADSPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  unk_27E40E8 = 13;
  dword_27E40F0 = 8;
  qword_27E4100 = 10;
  qword_27E40B0 = "LOCAL_MAJOR_ROADLOCAL_ROADMAJOR_HIGHWAYMINOR_ROADPARKING_LOT_ROADPARKING_STRUCTUREPEDESTRIAN_OVERPASSPEDESTRIAN_OVERPASS_RAMPPEDESTRIAN_OVERPASS_STEPSPEDESTRIAN_PATHPEDESTRIAN_ROADPEDESTRIAN_UNDERPASSPEDESTRIAN_UNDERPASS_RAMPPEDESTRIAN_UNDERPASS_STEPSPRIVATE_PATHSERVICE_ROADSPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  unk_27E40B8 = 16;
  qword_27E40C8 = "LOCAL_ROADMAJOR_HIGHWAYMINOR_ROADPARKING_LOT_ROADPARKING_STRUCTUREPEDESTRIAN_OVERPASSPEDESTRIAN_OVERPASS_RAMPPEDESTRIAN_OVERPASS_STEPSPEDESTRIAN_PATHPEDESTRIAN_ROADPEDESTRIAN_UNDERPASSPEDESTRIAN_UNDERPASS_RAMPPEDESTRIAN_UNDERPASS_STEPSPRIVATE_PATHSERVICE_ROADSPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  unk_27E40D0 = 10;
  dword_27E40C0 = 5;
  dword_27E40D8 = 4;
  qword_27E4098 = "HIGHWAYLOCAL_MAJOR_ROADLOCAL_ROADMAJOR_HIGHWAYMINOR_ROADPARKING_LOT_ROADPARKING_STRUCTUREPEDESTRIAN_OVERPASSPEDESTRIAN_OVERPASS_RAMPPEDESTRIAN_OVERPASS_STEPSPEDESTRIAN_PATHPEDESTRIAN_ROADPEDESTRIAN_UNDERPASSPEDESTRIAN_UNDERPASS_RAMPPEDESTRIAN_UNDERPASS_STEPSPRIVATE_PATHSERVICE_ROADSPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  unk_27E40A0 = 7;
  dword_27E40A8 = 7;
  qword_27E4068 = "GATEHIDDENHIGHWAYLOCAL_MAJOR_ROADLOCAL_ROADMAJOR_HIGHWAYMINOR_ROADPARKING_LOT_ROADPARKING_STRUCTUREPEDESTRIAN_OVERPASSPEDESTRIAN_OVERPASS_RAMPPEDESTRIAN_OVERPASS_STEPSPEDESTRIAN_PATHPEDESTRIAN_ROADPEDESTRIAN_UNDERPASSPEDESTRIAN_UNDERPASS_RAMPPEDESTRIAN_UNDERPASS_STEPSPRIVATE_PATHSERVICE_ROADSPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  unk_27E4070 = 4;
  dword_27E4078 = 24;
  qword_27E4080 = "HIDDENHIGHWAYLOCAL_MAJOR_ROADLOCAL_ROADMAJOR_HIGHWAYMINOR_ROADPARKING_LOT_ROADPARKING_STRUCTUREPEDESTRIAN_OVERPASSPEDESTRIAN_OVERPASS_RAMPPEDESTRIAN_OVERPASS_STEPSPEDESTRIAN_PATHPEDESTRIAN_ROADPEDESTRIAN_UNDERPASSPEDESTRIAN_UNDERPASS_RAMPPEDESTRIAN_UNDERPASS_STEPSPRIVATE_PATHSERVICE_ROADSPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  unk_27E4088 = 6;
  dword_27E4090 = 27;
  qword_27E4050 = "FREEWAY_UNCONTROLLEDGATEHIDDENHIGHWAYLOCAL_MAJOR_ROADLOCAL_ROADMAJOR_HIGHWAYMINOR_ROADPARKING_LOT_ROADPARKING_STRUCTUREPEDESTRIAN_OVERPASSPEDESTRIAN_OVERPASS_RAMPPEDESTRIAN_OVERPASS_STEPSPEDESTRIAN_PATHPEDESTRIAN_ROADPEDESTRIAN_UNDERPASSPEDESTRIAN_UNDERPASS_RAMPPEDESTRIAN_UNDERPASS_STEPSPRIVATE_PATHSERVICE_ROADSPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  unk_27E4058 = 20;
  dword_27E4060 = 10;
  qword_27E4020 = "FERRYFREEWAY_CONTROLLEDFREEWAY_UNCONTROLLEDGATEHIDDENHIGHWAYLOCAL_MAJOR_ROADLOCAL_ROADMAJOR_HIGHWAYMINOR_ROADPARKING_LOT_ROADPARKING_STRUCTUREPEDESTRIAN_OVERPASSPEDESTRIAN_OVERPASS_RAMPPEDESTRIAN_OVERPASS_STEPSPEDESTRIAN_PATHPEDESTRIAN_ROADPEDESTRIAN_UNDERPASSPEDESTRIAN_UNDERPASS_RAMPPEDESTRIAN_UNDERPASS_STEPSPRIVATE_PATHSERVICE_ROADSPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  unk_27E4028 = 5;
  dword_27E4030 = 11;
  qword_27E4040 = 18;
  dword_27E4048 = 9;
  qword_27E3B88 = "HARD_STOPIMPRESSION_EVENTLIST_INTERACTION_SESSIONLOG_DISCARDLOG_FRAMEWORKLOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  dword_27E3BB0 = 57;
  qword_27E4008 = "CONNECTOR_ROADFERRYFREEWAY_CONTROLLEDFREEWAY_UNCONTROLLEDGATEHIDDENHIGHWAYLOCAL_MAJOR_ROADLOCAL_ROADMAJOR_HIGHWAYMINOR_ROADPARKING_LOT_ROADPARKING_STRUCTUREPEDESTRIAN_OVERPASSPEDESTRIAN_OVERPASS_RAMPPEDESTRIAN_OVERPASS_STEPSPEDESTRIAN_PATHPEDESTRIAN_ROADPEDESTRIAN_UNDERPASSPEDESTRIAN_UNDERPASS_RAMPPEDESTRIAN_UNDERPASS_STEPSPRIVATE_PATHSERVICE_ROADSPUTNIK_BORDERTRANSIT_STATION_GRAPHTRANSIT_TRANSFERUNKNOWN_LINE_TYPEWATER";
  unk_27E4010 = 14;
  dword_27E4018 = 6;
  dword_27E4000 = 31;
  qword_27E3FF0 = "WIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3FE0 = 9;
  dword_27E3FE8 = 48;
  qword_27E3FF8 = 29;
  qword_27E3FC0 = "USER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3FD8 = "VLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  dword_27E3FB8 = 40;
  qword_27E3FC8 = 11;
  dword_27E3FD0 = 1;
  qword_27E3FA8 = "TRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3F98 = 18;
  dword_27E3FA0 = 9;
  qword_27E3FB0 = 14;
  qword_27E3F78 = "TIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3F90 = "TRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  dword_27E3F70 = 10;
  qword_27E3F80 = 33;
  dword_27E3F88 = 11;
  qword_27E3F60 = "TIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3F50 = 14;
  dword_27E3F58 = 4;
  qword_27E3F68 = 24;
  qword_27E3F30 = "TILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3F48 = "TILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  dword_27E3F28 = 36;
  qword_27E3F38 = 19;
  dword_27E3F40 = 33;
  dword_27E3F10 = 54;
  qword_27E3F18 = "THROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3F08 = 16;
  qword_27E3F20 = 8;
  qword_27E3EE8 = "TELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3F00 = "THERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  dword_27E3EE0 = 20;
  qword_27E3EF0 = 10;
  dword_27E3EF8 = 24;
  qword_27E3ED0 = "TABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3EC0 = 20;
  dword_27E3EC8 = 21;
  qword_27E3ED8 = 21;
  qword_27E3EA0 = "STATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3EB8 = "TABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  dword_27E3E98 = 22;
  qword_27E3EA8 = 12;
  dword_27E3EB0 = 2;
  dword_27E3E80 = 58;
  qword_27E3E88 = "STALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3E78 = 20;
  qword_27E3E90 = 14;
  qword_27E3E58 = "SERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  dword_27E3E68 = 63;
  qword_27E3E70 = "SHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  dword_27E3E50 = 18;
  qword_27E3E60 = 16;
  dword_27E3E08 = 65;
  qword_27E3E40 = "RIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3E30 = 19;
  dword_27E3E38 = 19;
  qword_27E3E48 = 20;
  qword_27E3E10 = "REFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3E28 = "RIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3E18 = 21;
  dword_27E3E20 = 15;
  dword_27E3DC0 = 51;
  qword_27E3DF8 = "REDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3DE8 = 33;
  dword_27E3DF0 = 26;
  qword_27E3E00 = 25;
  qword_27E3DC8 = "PROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3DE0 = "REALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3DD0 = 28;
  dword_27E3DD8 = 16;
  qword_27E3DB0 = "PRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3DA0 = 16;
  dword_27E3DA8 = 38;
  qword_27E3DB8 = 13;
  qword_27E3D80 = "POI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  dword_27E3D90 = 52;
  qword_27E3D98 = "PRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  dword_27E3D78 = 5;
  qword_27E3D88 = 17;
  dword_27E3D60 = 59;
  qword_27E3D68 = "PLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3D58 = 18;
  qword_27E3D70 = 16;
  qword_27E3D38 = "PERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  dword_27E3D48 = 53;
  qword_27E3D50 = "PLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  dword_27E3D30 = 32;
  qword_27E3D40 = 25;
  dword_27E3CE8 = 62;
  qword_27E3D20 = "PARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3D10 = 24;
  dword_27E3D18 = 28;
  qword_27E3D28 = 10;
  qword_27E3CF0 = "NETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  dword_27E3D00 = 56;
  qword_27E3D08 = "OFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3CF8 = 25;
  qword_27E3CD8 = "NETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3CC8 = 7;
  dword_27E3CD0 = 6;
  qword_27E3CE0 = 21;
  qword_27E3CA8 = "MARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3CC0 = "NETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  dword_27E3CA0 = 17;
  qword_27E3CB0 = 15;
  dword_27E3CB8 = 39;
  dword_27E3C58 = 61;
  qword_27E3C90 = "MAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3C80 = 14;
  dword_27E3C88 = 37;
  qword_27E3C98 = 10;
  qword_27E3C60 = "MAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3C78 = "MAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3C68 = 20;
  dword_27E3C70 = 13;
  dword_27E3C40 = 64;
  qword_27E3C48 = "MAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3C38 = 15;
  qword_27E3C50 = 16;
  qword_27E3C18 = "MAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3C30 = "MAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  dword_27E3C10 = 0;
  qword_27E3C20 = 20;
  dword_27E3C28 = 46;
  qword_27E3C00 = "LOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3BF0 = 13;
  dword_27E3BF8 = 12;
  qword_27E3C08 = 26;
  qword_27E3BE8 = "LOG_FRAMEWORKLOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  qword_27E3BD0 = "LOG_DISCARDLOG_FRAMEWORKLOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  unk_27E3BD8 = 11;
  dword_27E3BE0 = 49;
  qword_27E3BB8 = "LIST_INTERACTION_SESSIONLOG_DISCARDLOG_FRAMEWORKLOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  unk_27E3BC0 = 24;
  qword_27E3BA0 = "IMPRESSION_EVENTLIST_INTERACTION_SESSIONLOG_DISCARDLOG_FRAMEWORKLOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  unk_27E3BA8 = 16;
  dword_27E3BC8 = 14;
  qword_27E3B70 = "GRID_DURATIONHARD_STOPIMPRESSION_EVENTLIST_INTERACTION_SESSIONLOG_DISCARDLOG_FRAMEWORKLOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  unk_27E3B78 = 13;
  dword_27E3B80 = 34;
  qword_27E3B90 = 9;
  dword_27E3B98 = 47;
  qword_27E39D8 = "AR_SESSION_USAGEBATCH_TRAFFIC_PROBE_COLLECTIONCACHE_HITCLIENT_AC_SUGGESTIONSCOMMUTE_WINDOWCURATED_COLLECTION_STATSCURATED_COLLECTION_USAGEDAILY_USE_SUMMARYDEVICE_SYNC_STATUSDIRECTIONSDIRECTIONS_REQUEST_DETAILSDISPLAY_ANALYTICEQ_DATAEV_ROUTING_VEHICLE_DETAILSEV_TRIPFULL_NAV_TRACEGENERIC_APP_ERRORGRID_DURATIONHARD_STOPIMPRESSION_EVENTLIST_INTERACTION_SESSIONLOG_DISCARDLOG_FRAMEWORKLOG_MSG_EVENT_TYPE_UNKNOWNMAPS_DEVICE_SETTINGSMAPS_ENGAGEMENTMAPS_INTERACTIONMAPS_WIDGETS_SESSIONMAP_KIT_COUNTSMAP_LAUNCHMARCOLITE_USAGENETWORKNETWORK_EVENT_SUMMARYNETWORK_SELECTION_HARVESTOFFLINE_REQUEST_RESPONSEPARKED_CARPERIODIC_SETTINGS_SUMMARYPLACE_CACHE_LOOKUPPLACE_DATA_CACHEPOI_BUSYNESS_DATAPRED_EX_TRAININGPRESSURE_DATAPROACTIVE_SUGGESTION_SESSIONREALTIME_TRAFFIC_PROBE_COLLECTIONREDACTED_SERVICE_METADATAREFINE_SEARCH_SESSIONRIDE_BOOKED_SESSIONRIDE_BOOKING_SESSIONSERVICE_METADATASHOWCASE_SUPPRESSIONSTALE_RESOURCESTATE_TIMINGTABLE_BOOKED_SESSIONTABLE_BOOKING_SESSIONTELEMETRICTHERMAL_PRESSURETHROTTLETILE_CACHE_ANALYTICTILE_SET_STATETIME_TO_LEAVE_HYPOTHESISTIME_TO_LEAVE_INITIAL_TRAVEL_TIMETRANSIT_APP_LAUNCHTRIP_DEPARTUREUSER_ACTIONVLF_USAGEWIFI_CONNECTION_QUALITY_PROBE";
  unk_27E39E0 = 16;
  qword_27E3B48 = 14;
  dword_27E3B50 = 23;
  qword_27E3B60 = 17;
  dword_27E3B68 = 30;
  qword_27E39F8 = 30;
  dword_27E3A00 = 27;
  qword_27E3B18 = 26;
  dword_27E3B20 = 42;
  qword_27E3B30 = 7;
  dword_27E3B38 = 43;
  qword_27E3A10 = 9;
  dword_27E3A18 = 7;
  qword_27E3A28 = 21;
  qword_27E3AE8 = 16;
  dword_27E3AF0 = 35;
  qword_27E3B00 = 7;
  dword_27E3A30 = 25;
  qword_27E3A40 = 14;
  qword_27E3AB8 = 10;
  dword_27E3AC0 = 8;
  qword_27E3AD0 = 26;
  dword_27E3AD8 = 41;
  dword_27E3A48 = 29;
  qword_27E3A58 = 24;
  dword_27E3A60 = 44;
  qword_27E3A70 = 24;
  qword_27E3A88 = 17;
  qword_27E3AA0 = 18;
  dword_27E3A78 = 45;
  qword_27E3840 = "ADDRESS_PLACECARDBRAND_PLACECARDBUSINESS_PLACECARDCALENDAR_PLACECARDCURATED_COLLECTION_PLACECARDCURRENT_LOCATION_PLACECARDDROPPED_PIN_PLACECARDFLYOVER_PLACECARDLANDMARK_PLACECARDOTHERSAR_PLACECARDTRANSIT_LINE_PLACECARDTRANSIT_PLACECARDTRANSIT_STATION_PLACECARDUNKNOWN_PLACECARDVENUE_BUILDING_PLACECARDVENUE_PLACECARD";
  *algn_27E3848 = 17;
  dword_27E3850 = 1;
  qword_27E3860 = 15;
  dword_27E3868 = 11;
  qword_27E3878 = 18;
  dword_27E3880 = 2;
  qword_27E3890 = 18;
  dword_27E3898 = 4;
  qword_27E38A8 = 28;
  dword_27E38B0 = 14;
  qword_27E38C0 = 26;
  dword_27E38C8 = 5;
  qword_27E38D8 = 21;
  dword_27E38E0 = 3;
  qword_27E38F0 = 17;
  dword_27E38F8 = 9;
  qword_27E3908 = 18;
  dword_27E3910 = 8;
  qword_27E3920 = 5;
  dword_27E3928 = 17;
  qword_27E39C8 = 15;
  dword_27E39D0 = 12;
  qword_27E3938 = 13;
  dword_27E3940 = 10;
  qword_27E3998 = 17;
  dword_27E39A0 = 0;
  qword_27E39B0 = 24;
  dword_27E39B8 = 13;
  qword_27E3950 = 22;
  dword_27E3958 = 6;
  qword_27E3968 = 17;
  dword_27E3970 = 15;
  qword_27E3980 = 25;
  dword_27E3988 = 7;
  qword_27E48D8 = "DIETARY_RESTRICTION_TYPE_INCLUDES_DAIRYDIETARY_RESTRICTION_TYPE_INCLUDES_FISHDIETARY_RESTRICTION_TYPE_INCLUDES_GLUTENDIETARY_RESTRICTION_TYPE_INCLUDES_NUTSDIETARY_RESTRICTION_TYPE_INCLUDES_SHELLFISHDIETARY_RESTRICTION_TYPE_INCLUDES_SOYDIETARY_RESTRICTION_TYPE_KOSHERDIETARY_RESTRICTION_TYPE_LACTOSE_FREEDIETARY_RESTRICTION_TYPE_NUT_FREEDIETARY_RESTRICTION_TYPE_SHELLFISH_FREEDIETARY_RESTRICTION_TYPE_SOY_FREEDIETARY_RESTRICTION_TYPE_UNKNOWNDIETARY_RESTRICTION_TYPE_VEGANDIETARY_RESTRICTION_TYPE_VEGETARIAN";
  qword_27E48F0 = "DIETARY_RESTRICTION_TYPE_INCLUDES_FISHDIETARY_RESTRICTION_TYPE_INCLUDES_GLUTENDIETARY_RESTRICTION_TYPE_INCLUDES_NUTSDIETARY_RESTRICTION_TYPE_INCLUDES_SHELLFISHDIETARY_RESTRICTION_TYPE_INCLUDES_SOYDIETARY_RESTRICTION_TYPE_KOSHERDIETARY_RESTRICTION_TYPE_LACTOSE_FREEDIETARY_RESTRICTION_TYPE_NUT_FREEDIETARY_RESTRICTION_TYPE_SHELLFISH_FREEDIETARY_RESTRICTION_TYPE_SOY_FREEDIETARY_RESTRICTION_TYPE_UNKNOWNDIETARY_RESTRICTION_TYPE_VEGANDIETARY_RESTRICTION_TYPE_VEGETARIAN";
  qword_27E4908 = "DIETARY_RESTRICTION_TYPE_INCLUDES_GLUTENDIETARY_RESTRICTION_TYPE_INCLUDES_NUTSDIETARY_RESTRICTION_TYPE_INCLUDES_SHELLFISHDIETARY_RESTRICTION_TYPE_INCLUDES_SOYDIETARY_RESTRICTION_TYPE_KOSHERDIETARY_RESTRICTION_TYPE_LACTOSE_FREEDIETARY_RESTRICTION_TYPE_NUT_FREEDIETARY_RESTRICTION_TYPE_SHELLFISH_FREEDIETARY_RESTRICTION_TYPE_SOY_FREEDIETARY_RESTRICTION_TYPE_UNKNOWNDIETARY_RESTRICTION_TYPE_VEGANDIETARY_RESTRICTION_TYPE_VEGETARIAN";
  qword_27E4920 = "DIETARY_RESTRICTION_TYPE_INCLUDES_NUTSDIETARY_RESTRICTION_TYPE_INCLUDES_SHELLFISHDIETARY_RESTRICTION_TYPE_INCLUDES_SOYDIETARY_RESTRICTION_TYPE_KOSHERDIETARY_RESTRICTION_TYPE_LACTOSE_FREEDIETARY_RESTRICTION_TYPE_NUT_FREEDIETARY_RESTRICTION_TYPE_SHELLFISH_FREEDIETARY_RESTRICTION_TYPE_SOY_FREEDIETARY_RESTRICTION_TYPE_UNKNOWNDIETARY_RESTRICTION_TYPE_VEGANDIETARY_RESTRICTION_TYPE_VEGETARIAN";
  qword_27E4938 = "DIETARY_RESTRICTION_TYPE_INCLUDES_SHELLFISHDIETARY_RESTRICTION_TYPE_INCLUDES_SOYDIETARY_RESTRICTION_TYPE_KOSHERDIETARY_RESTRICTION_TYPE_LACTOSE_FREEDIETARY_RESTRICTION_TYPE_NUT_FREEDIETARY_RESTRICTION_TYPE_SHELLFISH_FREEDIETARY_RESTRICTION_TYPE_SOY_FREEDIETARY_RESTRICTION_TYPE_UNKNOWNDIETARY_RESTRICTION_TYPE_VEGANDIETARY_RESTRICTION_TYPE_VEGETARIAN";
  qword_27E4950 = "DIETARY_RESTRICTION_TYPE_INCLUDES_SOYDIETARY_RESTRICTION_TYPE_KOSHERDIETARY_RESTRICTION_TYPE_LACTOSE_FREEDIETARY_RESTRICTION_TYPE_NUT_FREEDIETARY_RESTRICTION_TYPE_SHELLFISH_FREEDIETARY_RESTRICTION_TYPE_SOY_FREEDIETARY_RESTRICTION_TYPE_UNKNOWNDIETARY_RESTRICTION_TYPE_VEGANDIETARY_RESTRICTION_TYPE_VEGETARIAN";
  qword_27E4968 = "DIETARY_RESTRICTION_TYPE_KOSHERDIETARY_RESTRICTION_TYPE_LACTOSE_FREEDIETARY_RESTRICTION_TYPE_NUT_FREEDIETARY_RESTRICTION_TYPE_SHELLFISH_FREEDIETARY_RESTRICTION_TYPE_SOY_FREEDIETARY_RESTRICTION_TYPE_UNKNOWNDIETARY_RESTRICTION_TYPE_VEGANDIETARY_RESTRICTION_TYPE_VEGETARIAN";
  qword_27E4980 = "DIETARY_RESTRICTION_TYPE_LACTOSE_FREEDIETARY_RESTRICTION_TYPE_NUT_FREEDIETARY_RESTRICTION_TYPE_SHELLFISH_FREEDIETARY_RESTRICTION_TYPE_SOY_FREEDIETARY_RESTRICTION_TYPE_UNKNOWNDIETARY_RESTRICTION_TYPE_VEGANDIETARY_RESTRICTION_TYPE_VEGETARIAN";
  qword_27E4998 = "DIETARY_RESTRICTION_TYPE_NUT_FREEDIETARY_RESTRICTION_TYPE_SHELLFISH_FREEDIETARY_RESTRICTION_TYPE_SOY_FREEDIETARY_RESTRICTION_TYPE_UNKNOWNDIETARY_RESTRICTION_TYPE_VEGANDIETARY_RESTRICTION_TYPE_VEGETARIAN";
  qword_27E49B0 = "DIETARY_RESTRICTION_TYPE_SHELLFISH_FREEDIETARY_RESTRICTION_TYPE_SOY_FREEDIETARY_RESTRICTION_TYPE_UNKNOWNDIETARY_RESTRICTION_TYPE_VEGANDIETARY_RESTRICTION_TYPE_VEGETARIAN";
  qword_27E49C8 = "DIETARY_RESTRICTION_TYPE_SOY_FREEDIETARY_RESTRICTION_TYPE_UNKNOWNDIETARY_RESTRICTION_TYPE_VEGANDIETARY_RESTRICTION_TYPE_VEGETARIAN";
  qword_27E49E0 = "DIETARY_RESTRICTION_TYPE_UNKNOWNDIETARY_RESTRICTION_TYPE_VEGANDIETARY_RESTRICTION_TYPE_VEGETARIAN";
  qword_27E49F8 = "DIETARY_RESTRICTION_TYPE_VEGANDIETARY_RESTRICTION_TYPE_VEGETARIAN";
  qword_27E4A10 = "DIETARY_RESTRICTION_TYPE_VEGETARIAN";
  qword_27E48C8 = 30;
  dword_27E48D0 = 5;
  qword_27E48E0 = 39;
  dword_27E48E8 = 12;
  qword_27E48F8 = 38;
  dword_27E4900 = 16;
  qword_27E4910 = 40;
  dword_27E4918 = 6;
  qword_27E4928 = 38;
  dword_27E4930 = 8;
  qword_27E4940 = 43;
  dword_27E4948 = 10;
  qword_27E4958 = 37;
  dword_27E4960 = 14;
  qword_27E4970 = 31;
  dword_27E4978 = 17;
  qword_27E4988 = 37;
  dword_27E4990 = 4;
  qword_27E49A0 = 33;
  dword_27E49A8 = 7;
  qword_27E49B8 = 39;
  dword_27E49C0 = 9;
  qword_27E49D0 = 33;
  dword_27E49D8 = 13;
  qword_27E49E8 = 32;
  dword_27E49F0 = 0;
  qword_27E4A00 = 30;
  dword_27E4A08 = 1;
  qword_27E4A18 = 35;
  dword_27E4A20 = 2;
  qword_27E4A70 = "PREPARATION_METHOD_TYPE_BLACKENEDPREPARATION_METHOD_TYPE_BLANCHEDPREPARATION_METHOD_TYPE_BOILEDPREPARATION_METHOD_TYPE_BRAISEDPREPARATION_METHOD_TYPE_BRINEDPREPARATION_METHOD_TYPE_BROILEDPREPARATION_METHOD_TYPE_CODDLINGPREPARATION_METHOD_TYPE_CUREDPREPARATION_METHOD_TYPE_DEEP_FRIEDPREPARATION_METHOD_TYPE_DRIEDPREPARATION_METHOD_TYPE_EN_PAPILLOTEPREPARATION_METHOD_TYPE_FERMENTEDPREPARATION_METHOD_TYPE_FLAMBEEDPREPARATION_METHOD_TYPE_FRIEDPREPARATION_METHOD_TYPE_GRILLEDPREPARATION_METHOD_TYPE_JUGGEDPREPARATION_METHOD_TYPE_KALUAPREPARATION_METHOD_TYPE_KARAAGEPREPARATION_METHOD_TYPE_MARINATEDPREPARATION_METHOD_TYPE_MEUNIEREDPREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4A88 = "PREPARATION_METHOD_TYPE_BLANCHEDPREPARATION_METHOD_TYPE_BOILEDPREPARATION_METHOD_TYPE_BRAISEDPREPARATION_METHOD_TYPE_BRINEDPREPARATION_METHOD_TYPE_BROILEDPREPARATION_METHOD_TYPE_CODDLINGPREPARATION_METHOD_TYPE_CUREDPREPARATION_METHOD_TYPE_DEEP_FRIEDPREPARATION_METHOD_TYPE_DRIEDPREPARATION_METHOD_TYPE_EN_PAPILLOTEPREPARATION_METHOD_TYPE_FERMENTEDPREPARATION_METHOD_TYPE_FLAMBEEDPREPARATION_METHOD_TYPE_FRIEDPREPARATION_METHOD_TYPE_GRILLEDPREPARATION_METHOD_TYPE_JUGGEDPREPARATION_METHOD_TYPE_KALUAPREPARATION_METHOD_TYPE_KARAAGEPREPARATION_METHOD_TYPE_MARINATEDPREPARATION_METHOD_TYPE_MEUNIEREDPREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4AA0 = "PREPARATION_METHOD_TYPE_BOILEDPREPARATION_METHOD_TYPE_BRAISEDPREPARATION_METHOD_TYPE_BRINEDPREPARATION_METHOD_TYPE_BROILEDPREPARATION_METHOD_TYPE_CODDLINGPREPARATION_METHOD_TYPE_CUREDPREPARATION_METHOD_TYPE_DEEP_FRIEDPREPARATION_METHOD_TYPE_DRIEDPREPARATION_METHOD_TYPE_EN_PAPILLOTEPREPARATION_METHOD_TYPE_FERMENTEDPREPARATION_METHOD_TYPE_FLAMBEEDPREPARATION_METHOD_TYPE_FRIEDPREPARATION_METHOD_TYPE_GRILLEDPREPARATION_METHOD_TYPE_JUGGEDPREPARATION_METHOD_TYPE_KALUAPREPARATION_METHOD_TYPE_KARAAGEPREPARATION_METHOD_TYPE_MARINATEDPREPARATION_METHOD_TYPE_MEUNIEREDPREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4AD0 = "PREPARATION_METHOD_TYPE_BRINEDPREPARATION_METHOD_TYPE_BROILEDPREPARATION_METHOD_TYPE_CODDLINGPREPARATION_METHOD_TYPE_CUREDPREPARATION_METHOD_TYPE_DEEP_FRIEDPREPARATION_METHOD_TYPE_DRIEDPREPARATION_METHOD_TYPE_EN_PAPILLOTEPREPARATION_METHOD_TYPE_FERMENTEDPREPARATION_METHOD_TYPE_FLAMBEEDPREPARATION_METHOD_TYPE_FRIEDPREPARATION_METHOD_TYPE_GRILLEDPREPARATION_METHOD_TYPE_JUGGEDPREPARATION_METHOD_TYPE_KALUAPREPARATION_METHOD_TYPE_KARAAGEPREPARATION_METHOD_TYPE_MARINATEDPREPARATION_METHOD_TYPE_MEUNIEREDPREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4AE8 = "PREPARATION_METHOD_TYPE_BROILEDPREPARATION_METHOD_TYPE_CODDLINGPREPARATION_METHOD_TYPE_CUREDPREPARATION_METHOD_TYPE_DEEP_FRIEDPREPARATION_METHOD_TYPE_DRIEDPREPARATION_METHOD_TYPE_EN_PAPILLOTEPREPARATION_METHOD_TYPE_FERMENTEDPREPARATION_METHOD_TYPE_FLAMBEEDPREPARATION_METHOD_TYPE_FRIEDPREPARATION_METHOD_TYPE_GRILLEDPREPARATION_METHOD_TYPE_JUGGEDPREPARATION_METHOD_TYPE_KALUAPREPARATION_METHOD_TYPE_KARAAGEPREPARATION_METHOD_TYPE_MARINATEDPREPARATION_METHOD_TYPE_MEUNIEREDPREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4B00 = "PREPARATION_METHOD_TYPE_CODDLINGPREPARATION_METHOD_TYPE_CUREDPREPARATION_METHOD_TYPE_DEEP_FRIEDPREPARATION_METHOD_TYPE_DRIEDPREPARATION_METHOD_TYPE_EN_PAPILLOTEPREPARATION_METHOD_TYPE_FERMENTEDPREPARATION_METHOD_TYPE_FLAMBEEDPREPARATION_METHOD_TYPE_FRIEDPREPARATION_METHOD_TYPE_GRILLEDPREPARATION_METHOD_TYPE_JUGGEDPREPARATION_METHOD_TYPE_KALUAPREPARATION_METHOD_TYPE_KARAAGEPREPARATION_METHOD_TYPE_MARINATEDPREPARATION_METHOD_TYPE_MEUNIEREDPREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  dword_27E4B10 = 10;
  qword_27E4B18 = "PREPARATION_METHOD_TYPE_CUREDPREPARATION_METHOD_TYPE_DEEP_FRIEDPREPARATION_METHOD_TYPE_DRIEDPREPARATION_METHOD_TYPE_EN_PAPILLOTEPREPARATION_METHOD_TYPE_FERMENTEDPREPARATION_METHOD_TYPE_FLAMBEEDPREPARATION_METHOD_TYPE_FRIEDPREPARATION_METHOD_TYPE_GRILLEDPREPARATION_METHOD_TYPE_JUGGEDPREPARATION_METHOD_TYPE_KALUAPREPARATION_METHOD_TYPE_KARAAGEPREPARATION_METHOD_TYPE_MARINATEDPREPARATION_METHOD_TYPE_MEUNIEREDPREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  dword_27E4B28 = 11;
  dword_27E4B40 = 12;
  qword_27E4B48 = "PREPARATION_METHOD_TYPE_DRIEDPREPARATION_METHOD_TYPE_EN_PAPILLOTEPREPARATION_METHOD_TYPE_FERMENTEDPREPARATION_METHOD_TYPE_FLAMBEEDPREPARATION_METHOD_TYPE_FRIEDPREPARATION_METHOD_TYPE_GRILLEDPREPARATION_METHOD_TYPE_JUGGEDPREPARATION_METHOD_TYPE_KALUAPREPARATION_METHOD_TYPE_KARAAGEPREPARATION_METHOD_TYPE_MARINATEDPREPARATION_METHOD_TYPE_MEUNIEREDPREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  dword_27E4B58 = 13;
  qword_27E4B78 = "PREPARATION_METHOD_TYPE_FERMENTEDPREPARATION_METHOD_TYPE_FLAMBEEDPREPARATION_METHOD_TYPE_FRIEDPREPARATION_METHOD_TYPE_GRILLEDPREPARATION_METHOD_TYPE_JUGGEDPREPARATION_METHOD_TYPE_KALUAPREPARATION_METHOD_TYPE_KARAAGEPREPARATION_METHOD_TYPE_MARINATEDPREPARATION_METHOD_TYPE_MEUNIEREDPREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4B90 = "PREPARATION_METHOD_TYPE_FLAMBEEDPREPARATION_METHOD_TYPE_FRIEDPREPARATION_METHOD_TYPE_GRILLEDPREPARATION_METHOD_TYPE_JUGGEDPREPARATION_METHOD_TYPE_KALUAPREPARATION_METHOD_TYPE_KARAAGEPREPARATION_METHOD_TYPE_MARINATEDPREPARATION_METHOD_TYPE_MEUNIEREDPREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  dword_27E4BA0 = 16;
  qword_27E4BA8 = "PREPARATION_METHOD_TYPE_FRIEDPREPARATION_METHOD_TYPE_GRILLEDPREPARATION_METHOD_TYPE_JUGGEDPREPARATION_METHOD_TYPE_KALUAPREPARATION_METHOD_TYPE_KARAAGEPREPARATION_METHOD_TYPE_MARINATEDPREPARATION_METHOD_TYPE_MEUNIEREDPREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4BC0 = "PREPARATION_METHOD_TYPE_GRILLEDPREPARATION_METHOD_TYPE_JUGGEDPREPARATION_METHOD_TYPE_KALUAPREPARATION_METHOD_TYPE_KARAAGEPREPARATION_METHOD_TYPE_MARINATEDPREPARATION_METHOD_TYPE_MEUNIEREDPREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4BD8 = "PREPARATION_METHOD_TYPE_JUGGEDPREPARATION_METHOD_TYPE_KALUAPREPARATION_METHOD_TYPE_KARAAGEPREPARATION_METHOD_TYPE_MARINATEDPREPARATION_METHOD_TYPE_MEUNIEREDPREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4BF0 = "PREPARATION_METHOD_TYPE_KALUAPREPARATION_METHOD_TYPE_KARAAGEPREPARATION_METHOD_TYPE_MARINATEDPREPARATION_METHOD_TYPE_MEUNIEREDPREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4C08 = "PREPARATION_METHOD_TYPE_KARAAGEPREPARATION_METHOD_TYPE_MARINATEDPREPARATION_METHOD_TYPE_MEUNIEREDPREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4C20 = "PREPARATION_METHOD_TYPE_MARINATEDPREPARATION_METHOD_TYPE_MEUNIEREDPREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4C38 = "PREPARATION_METHOD_TYPE_MEUNIEREDPREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4C50 = "PREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4C68 = "PREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4C80 = "PREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  dword_27E4C90 = 26;
  qword_27E4C98 = "PREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4CB0 = "PREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4CC8 = "PREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  dword_27E4CA8 = 27;
  qword_27E4CD0 = 27;
  qword_27E4A30 = 29;
  qword_27E4B20 = 29;
  qword_27E4B50 = 29;
  qword_27E4BB0 = 29;
  qword_27E4BF8 = 29;
  dword_27E4CD8 = 29;
  qword_27E4CE0 = "PREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4CF8 = "PREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4D10 = "PREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4D28 = "PREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4D40 = "PREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4D58 = "PREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  dword_27E4D68 = 35;
  qword_27E4D70 = "PREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4B60 = "PREPARATION_METHOD_TYPE_EN_PAPILLOTEPREPARATION_METHOD_TYPE_FERMENTEDPREPARATION_METHOD_TYPE_FLAMBEEDPREPARATION_METHOD_TYPE_FRIEDPREPARATION_METHOD_TYPE_GRILLEDPREPARATION_METHOD_TYPE_JUGGEDPREPARATION_METHOD_TYPE_KALUAPREPARATION_METHOD_TYPE_KARAAGEPREPARATION_METHOD_TYPE_MARINATEDPREPARATION_METHOD_TYPE_MEUNIEREDPREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4B68 = 36;
  dword_27E4D80 = 36;
  qword_27E4D88 = "PREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4CA0 = 39;
  dword_27E4D98 = 39;
  qword_27E4DA0 = "PREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4D90 = 37;
  dword_27E4DB0 = 37;
  qword_27E4DB8 = "PREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4CB8 = 38;
  qword_27E4DC0 = 38;
  dword_27E4DC8 = 38;
  qword_27E4DD0 = "PREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  dword_27E4DE0 = 45;
  qword_27E4DE8 = "PREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  dword_27E4DF8 = 46;
  qword_27E4E00 = "PREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4A40 = "PREPARATION_METHOD_TYPE_BARBEQUEDPREPARATION_METHOD_TYPE_BASTEDPREPARATION_METHOD_TYPE_BLACKENEDPREPARATION_METHOD_TYPE_BLANCHEDPREPARATION_METHOD_TYPE_BOILEDPREPARATION_METHOD_TYPE_BRAISEDPREPARATION_METHOD_TYPE_BRINEDPREPARATION_METHOD_TYPE_BROILEDPREPARATION_METHOD_TYPE_CODDLINGPREPARATION_METHOD_TYPE_CUREDPREPARATION_METHOD_TYPE_DEEP_FRIEDPREPARATION_METHOD_TYPE_DRIEDPREPARATION_METHOD_TYPE_EN_PAPILLOTEPREPARATION_METHOD_TYPE_FERMENTEDPREPARATION_METHOD_TYPE_FLAMBEEDPREPARATION_METHOD_TYPE_FRIEDPREPARATION_METHOD_TYPE_GRILLEDPREPARATION_METHOD_TYPE_JUGGEDPREPARATION_METHOD_TYPE_KALUAPREPARATION_METHOD_TYPE_KARAAGEPREPARATION_METHOD_TYPE_MARINATEDPREPARATION_METHOD_TYPE_MEUNIEREDPREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4A48 = 33;
  qword_27E4A78 = 33;
  qword_27E4B80 = 33;
  qword_27E4C28 = 33;
  qword_27E4C40 = 33;
  dword_27E4D38 = 33;
  qword_27E4DF0 = 33;
  qword_27E4E08 = 33;
  dword_27E4E10 = 40;
  qword_27E4E18 = "PREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  dword_27E4E28 = 41;
  qword_27E4E30 = "PREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  dword_27E4E40 = 42;
  qword_27E4E48 = "PREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  dword_27E4E58 = 43;
  qword_27E4E60 = "PREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4B30 = "PREPARATION_METHOD_TYPE_DEEP_FRIEDPREPARATION_METHOD_TYPE_DRIEDPREPARATION_METHOD_TYPE_EN_PAPILLOTEPREPARATION_METHOD_TYPE_FERMENTEDPREPARATION_METHOD_TYPE_FLAMBEEDPREPARATION_METHOD_TYPE_FRIEDPREPARATION_METHOD_TYPE_GRILLEDPREPARATION_METHOD_TYPE_JUGGEDPREPARATION_METHOD_TYPE_KALUAPREPARATION_METHOD_TYPE_KARAAGEPREPARATION_METHOD_TYPE_MARINATEDPREPARATION_METHOD_TYPE_MEUNIEREDPREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4B38 = 34;
  qword_27E4C58 = 34;
  qword_27E4CE8 = 34;
  qword_27E4D18 = 34;
  dword_27E4D50 = 34;
  qword_27E4E68 = 34;
  dword_27E4E70 = 44;
  qword_27E4E78 = "PREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  dword_27E4E88 = 48;
  qword_27E4E90 = "PREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  dword_27E4EA0 = 47;
  qword_27E4EA8 = "PREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4AB8 = "PREPARATION_METHOD_TYPE_BRAISEDPREPARATION_METHOD_TYPE_BRINEDPREPARATION_METHOD_TYPE_BROILEDPREPARATION_METHOD_TYPE_CODDLINGPREPARATION_METHOD_TYPE_CUREDPREPARATION_METHOD_TYPE_DEEP_FRIEDPREPARATION_METHOD_TYPE_DRIEDPREPARATION_METHOD_TYPE_EN_PAPILLOTEPREPARATION_METHOD_TYPE_FERMENTEDPREPARATION_METHOD_TYPE_FLAMBEEDPREPARATION_METHOD_TYPE_FRIEDPREPARATION_METHOD_TYPE_GRILLEDPREPARATION_METHOD_TYPE_JUGGEDPREPARATION_METHOD_TYPE_KALUAPREPARATION_METHOD_TYPE_KARAAGEPREPARATION_METHOD_TYPE_MARINATEDPREPARATION_METHOD_TYPE_MEUNIEREDPREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4AC0 = 31;
  qword_27E4AF0 = 31;
  qword_27E4BC8 = 31;
  qword_27E4C10 = 31;
  qword_27E4C70 = 31;
  qword_27E4C88 = 31;
  qword_27E4D00 = 31;
  dword_27E4D08 = 31;
  qword_27E4D48 = 31;
  qword_27E4D60 = 31;
  qword_27E4E20 = 31;
  qword_27E4E38 = 31;
  qword_27E4E80 = 31;
  qword_27E4E98 = 31;
  qword_27E4EB0 = 31;
  qword_27E4EC0 = "PREPARATION_METHOD_TYPE_VELVETED";
  qword_27E4A28 = "PREPARATION_METHOD_TYPE_BAKEDPREPARATION_METHOD_TYPE_BARBEQUEDPREPARATION_METHOD_TYPE_BASTEDPREPARATION_METHOD_TYPE_BLACKENEDPREPARATION_METHOD_TYPE_BLANCHEDPREPARATION_METHOD_TYPE_BOILEDPREPARATION_METHOD_TYPE_BRAISEDPREPARATION_METHOD_TYPE_BRINEDPREPARATION_METHOD_TYPE_BROILEDPREPARATION_METHOD_TYPE_CODDLINGPREPARATION_METHOD_TYPE_CUREDPREPARATION_METHOD_TYPE_DEEP_FRIEDPREPARATION_METHOD_TYPE_DRIEDPREPARATION_METHOD_TYPE_EN_PAPILLOTEPREPARATION_METHOD_TYPE_FERMENTEDPREPARATION_METHOD_TYPE_FLAMBEEDPREPARATION_METHOD_TYPE_FRIEDPREPARATION_METHOD_TYPE_GRILLEDPREPARATION_METHOD_TYPE_JUGGEDPREPARATION_METHOD_TYPE_KALUAPREPARATION_METHOD_TYPE_KARAAGEPREPARATION_METHOD_TYPE_MARINATEDPREPARATION_METHOD_TYPE_MEUNIEREDPREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  dword_27E4A38 = 1;
  dword_27E4A50 = 3;
  qword_27E4A58 = "PREPARATION_METHOD_TYPE_BASTEDPREPARATION_METHOD_TYPE_BLACKENEDPREPARATION_METHOD_TYPE_BLANCHEDPREPARATION_METHOD_TYPE_BOILEDPREPARATION_METHOD_TYPE_BRAISEDPREPARATION_METHOD_TYPE_BRINEDPREPARATION_METHOD_TYPE_BROILEDPREPARATION_METHOD_TYPE_CODDLINGPREPARATION_METHOD_TYPE_CUREDPREPARATION_METHOD_TYPE_DEEP_FRIEDPREPARATION_METHOD_TYPE_DRIEDPREPARATION_METHOD_TYPE_EN_PAPILLOTEPREPARATION_METHOD_TYPE_FERMENTEDPREPARATION_METHOD_TYPE_FLAMBEEDPREPARATION_METHOD_TYPE_FRIEDPREPARATION_METHOD_TYPE_GRILLEDPREPARATION_METHOD_TYPE_JUGGEDPREPARATION_METHOD_TYPE_KALUAPREPARATION_METHOD_TYPE_KARAAGEPREPARATION_METHOD_TYPE_MARINATEDPREPARATION_METHOD_TYPE_MEUNIEREDPREPARATION_METHOD_TYPE_MICROWAVEDPREPARATION_METHOD_TYPE_PICKLEDPREPARATION_METHOD_TYPE_POACHEDPREPARATION_METHOD_TYPE_PRESSURE_COOKEDPREPARATION_METHOD_TYPE_PRESSURE_FRIEDPREPARATION_METHOD_TYPE_RAWPREPARATION_METHOD_TYPE_REN_VESSIEPREPARATION_METHOD_TYPE_ROASTEDPREPARATION_METHOD_TYPE_ROBATAYAKIPREPARATION_METHOD_TYPE_SALTEDPREPARATION_METHOD_TYPE_SAUTEEDPREPARATION_METHOD_TYPE_SCALDEDPREPARATION_METHOD_TYPE_SEAREDPREPARATION_METHOD_TYPE_SHALLOW_FRIEDPREPARATION_METHOD_TYPE_SIMMEREDPREPARATION_METHOD_TYPE_SKILLET_COOKEDPREPARATION_METHOD_TYPE_SMOKEDPREPARATION_METHOD_TYPE_SMOTHEREDPREPARATION_METHOD_TYPE_SOUS_VIDEPREPARATION_METHOD_TYPE_STEAMEDPREPARATION_METHOD_TYPE_STEEPEDPREPARATION_METHOD_TYPE_STEWEDPREPARATION_METHOD_TYPE_STIR_FRIEDPREPARATION_METHOD_TYPE_SUGAREDPREPARATION_METHOD_TYPE_SWEATEDPREPARATION_METHOD_TYPE_UNKNOWNPREPARATION_METHOD_TYPE_VELVETED";
  unk_27E4A60 = 30;
  dword_27E4A68 = 2;
  dword_27E4A80 = 5;
  qword_27E4A90 = 32;
  dword_27E4A98 = 4;
  qword_27E4AA8 = 30;
  dword_27E4AB0 = 8;
  dword_27E4AC8 = 6;
  qword_27E4AD8 = 30;
  dword_27E4AE0 = 7;
  dword_27E4AF8 = 9;
  qword_27E4B08 = 32;
  dword_27E4B70 = 14;
  dword_27E4B88 = 15;
  qword_27E4B98 = 32;
  dword_27E4BB8 = 17;
  dword_27E4BD0 = 18;
  qword_27E4BE0 = 30;
  dword_27E4BE8 = 19;
  dword_27E4C00 = 20;
  dword_27E4C18 = 21;
  dword_27E4C30 = 22;
  dword_27E4C48 = 23;
  dword_27E4C60 = 24;
  dword_27E4C78 = 25;
  dword_27E4CC0 = 28;
  dword_27E4CF0 = 30;
  dword_27E4D20 = 32;
  qword_27E4D30 = 30;
  qword_27E4D78 = 30;
  qword_27E4DA8 = 32;
  qword_27E4DD8 = 30;
  qword_27E4E50 = 30;
  qword_27E4EC8 = 32;
  dword_27E4ED0 = 49;
  dword_27E4EB8 = 0;
  qword_27E4EF0 = "MENU_ORIGIN_CURATIONMENU_ORIGIN_IMAGEMENU_ORIGIN_UNKNOWNMENU_ORIGIN_VENDORMENU_ORIGIN_WEB_BRAND_SCRAPINGMENU_ORIGIN_WEB_SCRAPING";
  unk_27E4EF8 = 20;
  qword_27E4F08 = "MENU_ORIGIN_IMAGEMENU_ORIGIN_UNKNOWNMENU_ORIGIN_VENDORMENU_ORIGIN_WEB_BRAND_SCRAPINGMENU_ORIGIN_WEB_SCRAPING";
  unk_27E4F10 = 17;
  qword_27E4F20 = "MENU_ORIGIN_UNKNOWNMENU_ORIGIN_VENDORMENU_ORIGIN_WEB_BRAND_SCRAPINGMENU_ORIGIN_WEB_SCRAPING";
  unk_27E4F28 = 19;
  qword_27E4F38 = "MENU_ORIGIN_VENDORMENU_ORIGIN_WEB_BRAND_SCRAPINGMENU_ORIGIN_WEB_SCRAPING";
  unk_27E4F40 = 18;
  qword_27E4F50 = "MENU_ORIGIN_WEB_BRAND_SCRAPINGMENU_ORIGIN_WEB_SCRAPING";
  unk_27E4F58 = 30;
  qword_27E4ED8 = "MENU_ORIGIN_BUSINESS_CONNECTMENU_ORIGIN_CURATIONMENU_ORIGIN_IMAGEMENU_ORIGIN_UNKNOWNMENU_ORIGIN_VENDORMENU_ORIGIN_WEB_BRAND_SCRAPINGMENU_ORIGIN_WEB_SCRAPING";
  unk_27E4EE0 = 28;
  dword_27E4EE8 = 2;
  result = 20;
  dword_27E4F00 = 6;
  dword_27E4F18 = 5;
  dword_27E4F30 = 0;
  dword_27E4F48 = 1;
  dword_27E4F60 = 4;
  qword_27E4F68 = "MENU_ORIGIN_WEB_SCRAPING";
  unk_27E4F70 = 24;
  dword_27E4F78 = 3;
  qword_27E4F80 = "POPULARITY_HIGHPOPULARITY_LOWPOPULARITY_MEDIUMPOPULARITY_UNKNOWN";
  *algn_27E4F88 = 15;
  qword_27E4F98 = "POPULARITY_LOWPOPULARITY_MEDIUMPOPULARITY_UNKNOWN";
  unk_27E4FA0 = 14;
  qword_27E4FB0 = "POPULARITY_MEDIUMPOPULARITY_UNKNOWN";
  unk_27E4FB8 = 17;
  qword_27E4FC8 = "POPULARITY_UNKNOWN";
  unk_27E4FD0 = 18;
  dword_27E4F90 = 3;
  dword_27E4FA8 = 1;
  dword_27E4FC0 = 2;
  dword_27E4FD8 = 0;
  dword_27E4FF0 = 1;
  dword_27E5008 = 3;
  qword_27E5010 = "FOOD_MENU_TYPE_COCKTAILSFOOD_MENU_TYPE_DINNERFOOD_MENU_TYPE_DRINKSFOOD_MENU_TYPE_HAPPY_HOURFOOD_MENU_TYPE_LUNCHFOOD_MENU_TYPE_SPECIALSFOOD_MENU_TYPE_SPECIAL_EVENTFOOD_MENU_TYPE_UNKNOWN";
  unk_27E5018 = 24;
  qword_27E4FE8 = 24;
  dword_27E5020 = 7;
  qword_27E5028 = "FOOD_MENU_TYPE_DINNERFOOD_MENU_TYPE_DRINKSFOOD_MENU_TYPE_HAPPY_HOURFOOD_MENU_TYPE_LUNCHFOOD_MENU_TYPE_SPECIALSFOOD_MENU_TYPE_SPECIAL_EVENTFOOD_MENU_TYPE_UNKNOWN";
  unk_27E5030 = 21;
  dword_27E5038 = 4;
  qword_27E5040 = "FOOD_MENU_TYPE_DRINKSFOOD_MENU_TYPE_HAPPY_HOURFOOD_MENU_TYPE_LUNCHFOOD_MENU_TYPE_SPECIALSFOOD_MENU_TYPE_SPECIAL_EVENTFOOD_MENU_TYPE_UNKNOWN";
  unk_27E5048 = 21;
  qword_27E4FF8 = "FOOD_MENU_TYPE_BRUNCHFOOD_MENU_TYPE_COCKTAILSFOOD_MENU_TYPE_DINNERFOOD_MENU_TYPE_DRINKSFOOD_MENU_TYPE_HAPPY_HOURFOOD_MENU_TYPE_LUNCHFOOD_MENU_TYPE_SPECIALSFOOD_MENU_TYPE_SPECIAL_EVENTFOOD_MENU_TYPE_UNKNOWN";
  unk_27E5000 = 21;
  dword_27E5050 = 6;
  qword_27E5058 = "FOOD_MENU_TYPE_HAPPY_HOURFOOD_MENU_TYPE_LUNCHFOOD_MENU_TYPE_SPECIALSFOOD_MENU_TYPE_SPECIAL_EVENTFOOD_MENU_TYPE_UNKNOWN";
  unk_27E5060 = 25;
  dword_27E5068 = 9;
  qword_27E5070 = "FOOD_MENU_TYPE_LUNCHFOOD_MENU_TYPE_SPECIALSFOOD_MENU_TYPE_SPECIAL_EVENTFOOD_MENU_TYPE_UNKNOWN";
  unk_27E5078 = 20;
  dword_27E5080 = 2;
  qword_27E5088 = "FOOD_MENU_TYPE_SPECIALSFOOD_MENU_TYPE_SPECIAL_EVENTFOOD_MENU_TYPE_UNKNOWN";
  unk_27E5090 = 23;
  dword_27E5098 = 5;
  qword_27E50A0 = "FOOD_MENU_TYPE_SPECIAL_EVENTFOOD_MENU_TYPE_UNKNOWN";
  unk_27E50A8 = 28;
  dword_27E50B0 = 8;
  qword_27E4FE0 = "FOOD_MENU_TYPE_BREAKFASTFOOD_MENU_TYPE_BRUNCHFOOD_MENU_TYPE_COCKTAILSFOOD_MENU_TYPE_DINNERFOOD_MENU_TYPE_DRINKSFOOD_MENU_TYPE_HAPPY_HOURFOOD_MENU_TYPE_LUNCHFOOD_MENU_TYPE_SPECIALSFOOD_MENU_TYPE_SPECIAL_EVENTFOOD_MENU_TYPE_UNKNOWN";
  qword_27E50B8 = "FOOD_MENU_TYPE_UNKNOWN";
  unk_27E50C0 = 22;
  dword_27E50C8 = 0;
  return result;
}

uint64_t sub_1771F2C(uint64_t a1)
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

uint64_t sub_1771FE4(uint64_t a1)
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

uint64_t sub_1772008(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = &off_2708C40;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
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
  *(a1 + 200) = a2;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = &qword_278E990;
  *(a1 + 232) = &qword_278E990;
  *(a1 + 240) = &qword_278E990;
  *(a1 + 248) = &qword_278E990;
  *(a1 + 256) = &qword_278E990;
  *(a1 + 264) = &qword_278E990;
  *(a1 + 272) = &qword_278E990;
  *(a1 + 280) = &qword_278E990;
  *(a1 + 288) = &qword_278E990;
  *(a1 + 296) = &qword_278E990;
  *(a1 + 304) = &qword_278E990;
  *(a1 + 312) = &qword_278E990;
  *(a1 + 320) = &qword_278E990;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = -1;
  return a1;
}

void sub_17720E4(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1772114(void *a1)
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

  sub_17721F0(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1786C40(a1 + 25);
  sub_13B9D04(a1 + 22);
  sub_1956AFC(a1 + 19);
  sub_13B9FA8(a1 + 16);
  sub_1578204(a1 + 13);
  sub_13BA02C(a1 + 10);
  sub_12E5CA0(a1 + 7);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_17721F0(uint64_t a1)
{
  v3 = *(a1 + 224);
  v2 = (a1 + 224);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
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

  if (*(a1 + 296) != &qword_278E990)
  {
    sub_194E89C((a1 + 296));
  }

  if (*(a1 + 304) != &qword_278E990)
  {
    sub_194E89C((a1 + 304));
  }

  if (*(a1 + 312) != &qword_278E990)
  {
    sub_194E89C((a1 + 312));
  }

  if (*(a1 + 320) != &qword_278E990)
  {
    sub_194E89C((a1 + 320));
  }

  if (a1 != &off_2781728)
  {
    if (*(a1 + 328))
    {
      sub_16EE080();
      operator delete();
    }

    if (*(a1 + 336))
    {
      sub_16E4E08();
      operator delete();
    }

    v5 = *(a1 + 344);
    if (v5)
    {
      sub_177755C(v5);
      operator delete();
    }

    v6 = *(a1 + 352);
    if (v6)
    {
      sub_1785394(v6);
      operator delete();
    }

    if (*(a1 + 360))
    {
      sub_156FCCC();
      operator delete();
    }

    v7 = *(a1 + 368);
    if (v7)
    {
      sub_177595C(v7);
      operator delete();
    }

    v8 = *(a1 + 376);
    if (v8)
    {
      sub_16E5B34(v8);
      operator delete();
    }

    v9 = *(a1 + 384);
    if (v9)
    {
      sub_177755C(v9);
      operator delete();
    }

    if (*(a1 + 392))
    {
      sub_156FCCC();
      operator delete();
    }

    if (*(a1 + 400))
    {
      sub_16F2FF4();
      operator delete();
    }

    v10 = *(a1 + 408);
    if (v10)
    {
      sub_1785D58(v10);
      operator delete();
    }

    result = *(a1 + 416);
    if (result)
    {
      sub_139532C(result);

      operator delete();
    }
  }

  return result;
}

void sub_17724C0(void *a1)
{
  sub_1772114(a1);

  operator delete();
}

uint64_t sub_17724F8(uint64_t a1)
{
  sub_1951124((a1 + 16));
  v2 = *(a1 + 64);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 72) + 8);
    do
    {
      v4 = *v3++;
      sub_16EEC04(v4);
      --v2;
    }

    while (v2);
    *(a1 + 64) = 0;
  }

  v5 = *(a1 + 88);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 96) + 8);
    do
    {
      v7 = *v6++;
      sub_1775A4C(v7);
      --v5;
    }

    while (v5);
    *(a1 + 88) = 0;
  }

  v8 = *(a1 + 112);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 120) + 8);
    do
    {
      v10 = *v9++;
      sub_1571C00(v10);
      --v8;
    }

    while (v8);
    *(a1 + 112) = 0;
  }

  v11 = *(a1 + 136);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 144) + 8);
    do
    {
      v13 = *v12++;
      sub_1772AF8(v13);
      --v11;
    }

    while (v11);
    *(a1 + 136) = 0;
  }

  result = sub_12A41D0(a1 + 152);
  v15 = *(a1 + 184);
  if (v15 >= 1)
  {
    v16 = (*(a1 + 192) + 8);
    do
    {
      v17 = *v16++;
      result = sub_1785988(v17);
      --v15;
    }

    while (v15);
    *(a1 + 184) = 0;
  }

  v18 = *(a1 + 208);
  if (v18 >= 1)
  {
    v19 = (*(a1 + 216) + 8);
    do
    {
      v20 = *v19++;
      result = sub_18C54D8(v20);
      --v18;
    }

    while (v18);
    *(a1 + 208) = 0;
  }

  v21 = *(a1 + 40);
  if (v21)
  {
    if ((v21 & 1) == 0)
    {
      if ((v21 & 2) == 0)
      {
        goto LABEL_28;
      }

LABEL_39:
      v23 = *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v23 + 23) < 0)
      {
        **v23 = 0;
        *(v23 + 8) = 0;
        if ((v21 & 4) != 0)
        {
          goto LABEL_43;
        }
      }

      else
      {
        *v23 = 0;
        *(v23 + 23) = 0;
        if ((v21 & 4) != 0)
        {
          goto LABEL_43;
        }
      }

LABEL_29:
      if ((v21 & 8) == 0)
      {
        goto LABEL_30;
      }

LABEL_47:
      v25 = *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v25 + 23) < 0)
      {
        **v25 = 0;
        *(v25 + 8) = 0;
        if ((v21 & 0x10) != 0)
        {
          goto LABEL_51;
        }
      }

      else
      {
        *v25 = 0;
        *(v25 + 23) = 0;
        if ((v21 & 0x10) != 0)
        {
          goto LABEL_51;
        }
      }

LABEL_31:
      if ((v21 & 0x20) == 0)
      {
        goto LABEL_32;
      }

LABEL_55:
      v27 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v27 + 23) < 0)
      {
        **v27 = 0;
        *(v27 + 8) = 0;
        if ((v21 & 0x40) != 0)
        {
          goto LABEL_59;
        }
      }

      else
      {
        *v27 = 0;
        *(v27 + 23) = 0;
        if ((v21 & 0x40) != 0)
        {
          goto LABEL_59;
        }
      }

LABEL_33:
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_66;
      }

LABEL_63:
      v29 = *(a1 + 280) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v29 + 23) < 0)
      {
        **v29 = 0;
        *(v29 + 8) = 0;
      }

      else
      {
        *v29 = 0;
        *(v29 + 23) = 0;
      }

      goto LABEL_66;
    }

    v22 = *(a1 + 224) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v22 + 23) < 0)
    {
      **v22 = 0;
      *(v22 + 8) = 0;
      if ((v21 & 2) != 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      *v22 = 0;
      *(v22 + 23) = 0;
      if ((v21 & 2) != 0)
      {
        goto LABEL_39;
      }
    }

LABEL_28:
    if ((v21 & 4) == 0)
    {
      goto LABEL_29;
    }

LABEL_43:
    v24 = *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v24 + 23) < 0)
    {
      **v24 = 0;
      *(v24 + 8) = 0;
      if ((v21 & 8) != 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      *v24 = 0;
      *(v24 + 23) = 0;
      if ((v21 & 8) != 0)
      {
        goto LABEL_47;
      }
    }

LABEL_30:
    if ((v21 & 0x10) == 0)
    {
      goto LABEL_31;
    }

LABEL_51:
    v26 = *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v26 + 23) < 0)
    {
      **v26 = 0;
      *(v26 + 8) = 0;
      if ((v21 & 0x20) != 0)
      {
        goto LABEL_55;
      }
    }

    else
    {
      *v26 = 0;
      *(v26 + 23) = 0;
      if ((v21 & 0x20) != 0)
      {
        goto LABEL_55;
      }
    }

LABEL_32:
    if ((v21 & 0x40) == 0)
    {
      goto LABEL_33;
    }

LABEL_59:
    v28 = *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v28 + 23) < 0)
    {
      **v28 = 0;
      *(v28 + 8) = 0;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_66;
      }
    }

    else
    {
      *v28 = 0;
      *(v28 + 23) = 0;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_66;
      }
    }

    goto LABEL_63;
  }

LABEL_66:
  if ((v21 & 0xFF00) == 0)
  {
    goto LABEL_76;
  }

  if ((v21 & 0x100) != 0)
  {
    v32 = *(a1 + 288) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v32 + 23) < 0)
    {
      **v32 = 0;
      *(v32 + 8) = 0;
      if ((v21 & 0x200) != 0)
      {
        goto LABEL_108;
      }
    }

    else
    {
      *v32 = 0;
      *(v32 + 23) = 0;
      if ((v21 & 0x200) != 0)
      {
        goto LABEL_108;
      }
    }

LABEL_69:
    if ((v21 & 0x400) == 0)
    {
      goto LABEL_70;
    }

LABEL_112:
    v34 = *(a1 + 304) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v34 + 23) < 0)
    {
      **v34 = 0;
      *(v34 + 8) = 0;
      if ((v21 & 0x800) != 0)
      {
        goto LABEL_116;
      }
    }

    else
    {
      *v34 = 0;
      *(v34 + 23) = 0;
      if ((v21 & 0x800) != 0)
      {
        goto LABEL_116;
      }
    }

LABEL_71:
    if ((v21 & 0x1000) == 0)
    {
      goto LABEL_72;
    }

LABEL_120:
    v36 = *(a1 + 320) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v36 + 23) < 0)
    {
      **v36 = 0;
      *(v36 + 8) = 0;
      if ((v21 & 0x2000) != 0)
      {
        goto LABEL_124;
      }
    }

    else
    {
      *v36 = 0;
      *(v36 + 23) = 0;
      if ((v21 & 0x2000) != 0)
      {
        goto LABEL_124;
      }
    }

LABEL_73:
    if ((v21 & 0x4000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_125;
  }

  if ((v21 & 0x200) == 0)
  {
    goto LABEL_69;
  }

LABEL_108:
  v33 = *(a1 + 296) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v33 + 23) < 0)
  {
    **v33 = 0;
    *(v33 + 8) = 0;
    if ((v21 & 0x400) != 0)
    {
      goto LABEL_112;
    }
  }

  else
  {
    *v33 = 0;
    *(v33 + 23) = 0;
    if ((v21 & 0x400) != 0)
    {
      goto LABEL_112;
    }
  }

LABEL_70:
  if ((v21 & 0x800) == 0)
  {
    goto LABEL_71;
  }

LABEL_116:
  v35 = *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v35 + 23) < 0)
  {
    **v35 = 0;
    *(v35 + 8) = 0;
    if ((v21 & 0x1000) != 0)
    {
      goto LABEL_120;
    }
  }

  else
  {
    *v35 = 0;
    *(v35 + 23) = 0;
    if ((v21 & 0x1000) != 0)
    {
      goto LABEL_120;
    }
  }

LABEL_72:
  if ((v21 & 0x2000) == 0)
  {
    goto LABEL_73;
  }

LABEL_124:
  result = sub_16EE0BC(*(a1 + 328));
  if ((v21 & 0x4000) == 0)
  {
LABEL_74:
    if ((v21 & 0x8000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_125:
  result = sub_16E4E44(*(a1 + 336));
  if ((v21 & 0x8000) != 0)
  {
LABEL_75:
    result = sub_1772A08(*(a1 + 344));
  }

LABEL_76:
  if ((v21 & 0xFF0000) == 0)
  {
    goto LABEL_86;
  }

  if ((v21 & 0x10000) != 0)
  {
    result = sub_1771F2C(*(a1 + 352));
    if ((v21 & 0x20000) == 0)
    {
LABEL_79:
      if ((v21 & 0x40000) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_101;
    }
  }

  else if ((v21 & 0x20000) == 0)
  {
    goto LABEL_79;
  }

  result = sub_156EFA0(*(a1 + 360));
  if ((v21 & 0x40000) == 0)
  {
LABEL_80:
    if ((v21 & 0x80000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_102;
  }

LABEL_101:
  result = sub_1772AF8(*(a1 + 368));
  if ((v21 & 0x80000) == 0)
  {
LABEL_81:
    if ((v21 & 0x100000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_103;
  }

LABEL_102:
  result = sub_16E5B70(*(a1 + 376));
  if ((v21 & 0x100000) == 0)
  {
LABEL_82:
    if ((v21 & 0x200000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_104;
  }

LABEL_103:
  result = sub_1772A08(*(a1 + 384));
  if ((v21 & 0x200000) == 0)
  {
LABEL_83:
    if ((v21 & 0x400000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_105;
  }

LABEL_104:
  result = sub_156EFA0(*(a1 + 392));
  if ((v21 & 0x400000) == 0)
  {
LABEL_84:
    if ((v21 & 0x800000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_105:
  result = sub_16F3030(*(a1 + 400));
  if ((v21 & 0x800000) != 0)
  {
LABEL_85:
    result = sub_1771FE4(*(a1 + 408));
  }

LABEL_86:
  if ((v21 & 0x1000000) != 0)
  {
    result = sub_1395368(*(a1 + 416));
  }

  if (v21 >> 25)
  {
    *(a1 + 456) = 0;
    *(a1 + 424) = 0u;
    *(a1 + 440) = 0u;
  }

  if (*(a1 + 44))
  {
    *(a1 + 468) = 0;
    *(a1 + 460) = 0;
    *(a1 + 476) = 0;
    *(a1 + 484) = 0xFFFFFFFF00000000;
  }

  v31 = *(a1 + 8);
  v30 = a1 + 8;
  *(v30 + 484) = -1;
  *(v30 + 32) = 0;
  if (v31)
  {

    return sub_1957EA8(v30);
  }

  return result;
}

uint64_t sub_1772A08(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1775A4C(v4);
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
      result = sub_1571C00(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 88) + 8);
    do
    {
      v10 = *v9++;
      result = sub_1785988(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 16);
  if (v11)
  {
    result = sub_156EFA0(*(v1 + 96));
  }

  if ((v11 & 6) != 0)
  {
    *(v1 + 112) = 0;
    *(v1 + 104) = 0;
  }

  v13 = *(v1 + 8);
  v12 = v1 + 8;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

uint64_t sub_1772AF8(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_1775A4C(*(result + 24));
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

char *sub_1772CB4(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x2000) == 0)
  {
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v10 = *(a1 + 424);
    *a2 = 17;
    *(a2 + 1) = v10;
    a2 += 9;
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v7 = *(a1 + 328);
  *a2 = 10;
  v8 = *(v7 + 20);
  a2[1] = v8;
  if (v8 > 0x7F)
  {
    v9 = sub_19575D0(v8, a2 + 1);
  }

  else
  {
    v9 = a2 + 2;
  }

  a2 = sub_16EE2C4(v7, v9, a3);
  if ((v5 & 0x2000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v5 & 0x4000000) == 0)
  {
LABEL_4:
    v6 = a2;
    goto LABEL_21;
  }

LABEL_14:
  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v11 = *(a1 + 432);
  *a2 = 24;
  a2[1] = v11;
  if (v11 > 0x7F)
  {
    a2[1] = v11 | 0x80;
    v12 = v11 >> 7;
    a2[2] = v11 >> 7;
    v6 = a2 + 3;
    if (v11 >= 0x4000)
    {
      LOBYTE(v13) = a2[2];
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
    v6 = a2 + 2;
  }

LABEL_21:
  if (v5)
  {
    v6 = sub_128AEEC(a3, 4, *(a1 + 224) & 0xFFFFFFFFFFFFFFFELL, v6);
    if ((v5 & 2) == 0)
    {
LABEL_23:
      if ((v5 & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_23;
  }

  v6 = sub_128AEEC(a3, 5, *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 4) == 0)
  {
LABEL_24:
    if ((v5 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_34:
  v6 = sub_128AEEC(a3, 6, *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 8) == 0)
  {
LABEL_25:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:
  v6 = sub_128AEEC(a3, 7, *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 0x10) == 0)
  {
LABEL_26:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_36:
  v6 = sub_128AEEC(a3, 8, *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 0x20) == 0)
  {
LABEL_27:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  v6 = sub_128AEEC(a3, 9, *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 0x40) == 0)
  {
LABEL_28:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_39;
  }

LABEL_38:
  v6 = sub_128AEEC(a3, 10, *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 0x80) == 0)
  {
LABEL_29:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_40;
  }

LABEL_39:
  v6 = sub_128AEEC(a3, 11, *(a1 + 280) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 0x100) == 0)
  {
LABEL_30:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_41;
  }

LABEL_40:
  v6 = sub_128AEEC(a3, 12, *(a1 + 288) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 0x4000) == 0)
  {
    goto LABEL_47;
  }

LABEL_41:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v15 = *(a1 + 336);
  *v6 = 386;
  v16 = *(v15 + 44);
  v6[2] = v16;
  if (v16 > 0x7F)
  {
    v17 = sub_19575D0(v16, v6 + 2);
  }

  else
  {
    v17 = v6 + 3;
  }

  v6 = sub_16E5070(v15, v17, a3);
LABEL_47:
  v18 = *(a1 + 64);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v20 = *(*(a1 + 72) + 8 * i + 8);
      *v6 = 418;
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

      v6 = sub_16EEE1C(v20, v22, a3);
    }
  }

  if ((v5 & 0x8000000) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v24 = *(a1 + 436);
    *v6 = 448;
    v6[2] = v24;
    if (v24 > 0x7F)
    {
      v6[2] = v24 | 0x80;
      v25 = v24 >> 7;
      v6[3] = v24 >> 7;
      v23 = v6 + 4;
      if (v24 >= 0x4000)
      {
        LOBYTE(v26) = v6[3];
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
      v23 = v6 + 3;
    }
  }

  else
  {
    v23 = v6;
  }

  if ((v5 & 0x10000000) != 0)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v29 = *(a1 + 440);
    *v23 = 456;
    v23[2] = v29;
    if (v29 > 0x7F)
    {
      v23[2] = v29 | 0x80;
      v30 = v29 >> 7;
      v23[3] = v29 >> 7;
      v28 = v23 + 4;
      if (v29 >= 0x4000)
      {
        LOBYTE(v23) = v23[3];
        do
        {
          *(v28 - 1) = v23 | 0x80;
          v23 = (v30 >> 7);
          *v28++ = v30 >> 7;
          v31 = v30 >> 14;
          v30 >>= 7;
        }

        while (v31);
      }
    }

    else
    {
      v28 = v23 + 3;
    }
  }

  else
  {
    v28 = v23;
  }

  v32 = *(a1 + 44);
  if ((v32 & 2) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v33 = *(a1 + 464);
    *v28 = 912;
    v28[2] = v33;
    v28 += 3;
  }

  v34 = *(a1 + 88);
  if (v34)
  {
    for (j = 0; j != v34; ++j)
    {
      if (*a3 <= v28)
      {
        v28 = sub_225EB68(a3, v28);
      }

      v36 = *(*(a1 + 96) + 8 * j + 8);
      *v28 = 922;
      v37 = *(v36 + 20);
      v28[2] = v37;
      if (v37 > 0x7F)
      {
        v38 = sub_19575D0(v37, v28 + 2);
      }

      else
      {
        v38 = v28 + 3;
      }

      v28 = sub_1776C6C(v36, v38, a3);
    }
  }

  if ((v32 & 0x80) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v40 = *(a1 + 488);
    *v28 = 928;
    v28[2] = v40;
    if (v40 > 0x7F)
    {
      v28[2] = v40 | 0x80;
      v41 = v40 >> 7;
      v28[3] = v40 >> 7;
      v39 = v28 + 4;
      if (v40 >= 0x4000)
      {
        LOBYTE(v28) = v28[3];
        do
        {
          *(v39 - 1) = v28 | 0x80;
          v28 = (v41 >> 7);
          *v39++ = v41 >> 7;
          v42 = v41 >> 14;
          v41 >>= 7;
        }

        while (v42);
      }
    }

    else
    {
      v39 = v28 + 3;
    }
  }

  else
  {
    v39 = v28;
  }

  v43 = *(a1 + 40);
  if ((v43 & 0x40000000) != 0)
  {
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v45 = *(a1 + 452);
    *v39 = 944;
    v39[2] = v45;
    if (v45 > 0x7F)
    {
      v39[2] = v45 | 0x80;
      v46 = v45 >> 7;
      v39[3] = v45 >> 7;
      v44 = v39 + 4;
      if (v45 >= 0x4000)
      {
        LOBYTE(v39) = v39[3];
        do
        {
          *(v44 - 1) = v39 | 0x80;
          v39 = (v46 >> 7);
          *v44++ = v46 >> 7;
          v47 = v46 >> 14;
          v46 >>= 7;
        }

        while (v47);
      }
    }

    else
    {
      v44 = v39 + 3;
    }
  }

  else
  {
    v44 = v39;
  }

  if (v43 < 0)
  {
    if (*a3 <= v44)
    {
      v44 = sub_225EB68(a3, v44);
    }

    v49 = *(a1 + 456);
    *v44 = 952;
    v44[2] = v49;
    if (v49 > 0x7F)
    {
      v44[2] = v49 | 0x80;
      v50 = v49 >> 7;
      v44[3] = v49 >> 7;
      v48 = v44 + 4;
      if (v49 >= 0x4000)
      {
        LOBYTE(v51) = v44[3];
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
      v48 = v44 + 3;
    }
  }

  else
  {
    v48 = v44;
  }

  if ((v43 & 0x200) != 0)
  {
    v48 = sub_128AEEC(a3, 60, *(a1 + 296) & 0xFFFFFFFFFFFFFFFELL, v48);
  }

  if (*(a1 + 44))
  {
    if (*a3 <= v48)
    {
      v48 = sub_225EB68(a3, v48);
    }

    v54 = *(a1 + 460);
    *v48 = 1000;
    v48[2] = v54;
    if (v54 > 0x7F)
    {
      v48[2] = v54 | 0x80;
      v55 = v54 >> 7;
      v48[3] = v54 >> 7;
      v53 = v48 + 4;
      if (v54 >= 0x4000)
      {
        LOBYTE(v56) = v48[3];
        do
        {
          *(v53 - 1) = v56 | 0x80;
          v56 = v55 >> 7;
          *v53++ = v55 >> 7;
          v57 = v55 >> 14;
          v55 >>= 7;
        }

        while (v57);
      }
    }

    else
    {
      v53 = v48 + 3;
    }
  }

  else
  {
    v53 = v48;
  }

  v58 = *(a1 + 40);
  if ((v58 & 0x8000) != 0)
  {
    if (*a3 <= v53)
    {
      v53 = sub_225EB68(a3, v53);
    }

    v59 = *(a1 + 344);
    *v53 = 1018;
    v60 = *(v59 + 20);
    v53[2] = v60;
    if (v60 > 0x7F)
    {
      v61 = sub_19575D0(v60, v53 + 2);
    }

    else
    {
      v61 = v53 + 3;
    }

    v53 = sub_1777A80(v59, v61, a3);
  }

  if ((v58 & 0x10000) != 0)
  {
    if (*a3 <= v53)
    {
      v53 = sub_225EB68(a3, v53);
    }

    v62 = *(a1 + 352);
    *v53 = 1154;
    v63 = *(v62 + 20);
    v53[2] = v63;
    if (v63 > 0x7F)
    {
      v64 = sub_19575D0(v63, v53 + 2);
    }

    else
    {
      v64 = v53 + 3;
    }

    v53 = sub_1785654(v62, v64, a3);
  }

  v65 = *(a1 + 112);
  if (v65)
  {
    for (k = 0; k != v65; ++k)
    {
      if (*a3 <= v53)
      {
        v53 = sub_225EB68(a3, v53);
      }

      v67 = *(*(a1 + 120) + 8 * k + 8);
      *v53 = 1162;
      v68 = *(v67 + 20);
      v53[2] = v68;
      if (v68 > 0x7F)
      {
        v69 = sub_19575D0(v68, v53 + 2);
      }

      else
      {
        v69 = v53 + 3;
      }

      v53 = sub_1571E14(v67, v69, a3);
    }
  }

  if ((v58 & 0x20000) != 0)
  {
    if (*a3 <= v53)
    {
      v53 = sub_225EB68(a3, v53);
    }

    v70 = *(a1 + 360);
    *v53 = 1170;
    v71 = *(v70 + 20);
    v53[2] = v71;
    if (v71 > 0x7F)
    {
      v72 = sub_19575D0(v71, v53 + 2);
    }

    else
    {
      v72 = v53 + 3;
    }

    v53 = sub_157028C(v70, v72, a3);
  }

  v73 = *(a1 + 44);
  if ((v73 & 0x100) != 0)
  {
    if (*a3 <= v53)
    {
      v53 = sub_225EB68(a3, v53);
    }

    v75 = *(a1 + 492);
    *v53 = 1176;
    v53[2] = v75;
    if (v75 > 0x7F)
    {
      v53[2] = v75 | 0x80;
      v76 = v75 >> 7;
      v53[3] = v75 >> 7;
      v74 = v53 + 4;
      if (v75 >= 0x4000)
      {
        LOBYTE(v53) = v53[3];
        do
        {
          *(v74 - 1) = v53 | 0x80;
          v53 = (v76 >> 7);
          *v74++ = v76 >> 7;
          v77 = v76 >> 14;
          v76 >>= 7;
        }

        while (v77);
      }
    }

    else
    {
      v74 = v53 + 3;
    }
  }

  else
  {
    v74 = v53;
  }

  if ((v73 & 0x10) != 0)
  {
    if (*a3 <= v74)
    {
      v74 = sub_225EB68(a3, v74);
    }

    v79 = *(a1 + 468);
    *v74 = 1184;
    v74[2] = v79;
    if (v79 > 0x7F)
    {
      v74[2] = v79 | 0x80;
      v80 = v79 >> 7;
      v74[3] = v79 >> 7;
      v78 = v74 + 4;
      if (v79 >= 0x4000)
      {
        LOBYTE(v74) = v74[3];
        do
        {
          *(v78 - 1) = v74 | 0x80;
          v74 = (v80 >> 7);
          *v78++ = v80 >> 7;
          v81 = v80 >> 14;
          v80 >>= 7;
        }

        while (v81);
      }
    }

    else
    {
      v78 = v74 + 3;
    }
  }

  else
  {
    v78 = v74;
  }

  v82 = *(a1 + 136);
  if (v82)
  {
    for (m = 0; m != v82; ++m)
    {
      if (*a3 <= v78)
      {
        v78 = sub_225EB68(a3, v78);
      }

      v84 = *(*(a1 + 144) + 8 * m + 8);
      *v78 = 1194;
      v85 = *(v84 + 20);
      v78[2] = v85;
      if (v85 > 0x7F)
      {
        v86 = sub_19575D0(v85, v78 + 2);
      }

      else
      {
        v86 = v78 + 3;
      }

      v78 = sub_1775E74(v84, v86, a3);
    }
  }

  v87 = *(a1 + 40);
  if ((v87 & 0x40000) != 0)
  {
    if (*a3 <= v78)
    {
      v78 = sub_225EB68(a3, v78);
    }

    v88 = *(a1 + 368);
    *v78 = 1202;
    v89 = *(v88 + 20);
    v78[2] = v89;
    if (v89 > 0x7F)
    {
      v90 = sub_19575D0(v89, v78 + 2);
    }

    else
    {
      v90 = v78 + 3;
    }

    v78 = sub_1775E74(v88, v90, a3);
  }

  if ((v87 & 0x400) != 0)
  {
    v78 = sub_128AEEC(a3, 71, *(a1 + 304) & 0xFFFFFFFFFFFFFFFELL, v78);
  }

  v91 = *(a1 + 44);
  if ((v91 & 4) == 0)
  {
    if ((v91 & 8) == 0)
    {
      goto LABEL_189;
    }

LABEL_194:
    if (*a3 <= v78)
    {
      v78 = sub_225EB68(a3, v78);
    }

    v94 = *(a1 + 466);
    *v78 = 1224;
    v78[2] = v94;
    v78 += 3;
    if ((v91 & 0x20) == 0)
    {
      goto LABEL_190;
    }

    goto LABEL_197;
  }

  if (*a3 <= v78)
  {
    v78 = sub_225EB68(a3, v78);
  }

  v93 = *(a1 + 465);
  *v78 = 1216;
  v78[2] = v93;
  v78 += 3;
  if ((v91 & 8) != 0)
  {
    goto LABEL_194;
  }

LABEL_189:
  if ((v91 & 0x20) == 0)
  {
LABEL_190:
    v92 = v78;
    goto LABEL_204;
  }

LABEL_197:
  if (*a3 <= v78)
  {
    v78 = sub_225EB68(a3, v78);
  }

  v95 = *(a1 + 472);
  *v78 = 1232;
  v78[2] = v95;
  if (v95 > 0x7F)
  {
    v78[2] = v95 | 0x80;
    v96 = v95 >> 7;
    v78[3] = v95 >> 7;
    v92 = v78 + 4;
    if (v95 >= 0x4000)
    {
      LOBYTE(v97) = v78[3];
      do
      {
        *(v92 - 1) = v97 | 0x80;
        v97 = v96 >> 7;
        *v92++ = v96 >> 7;
        v98 = v96 >> 14;
        v96 >>= 7;
      }

      while (v98);
    }
  }

  else
  {
    v92 = v78 + 3;
  }

LABEL_204:
  v99 = *(a1 + 40);
  if ((v99 & 0x800) == 0)
  {
    if ((v99 & 0x80000) == 0)
    {
      goto LABEL_206;
    }

LABEL_209:
    if (*a3 <= v92)
    {
      v92 = sub_225EB68(a3, v92);
    }

    v101 = *(a1 + 376);
    *v92 = 1250;
    v102 = *(v101 + 20);
    v92[2] = v102;
    if (v102 > 0x7F)
    {
      v103 = sub_19575D0(v102, v92 + 2);
    }

    else
    {
      v103 = v92 + 3;
    }

    v92 = sub_16E5FE0(v101, v103, a3);
    if ((v99 & 0x20000000) == 0)
    {
      goto LABEL_207;
    }

    goto LABEL_215;
  }

  v92 = sub_128AEEC(a3, 75, *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL, v92);
  if ((v99 & 0x80000) != 0)
  {
    goto LABEL_209;
  }

LABEL_206:
  if ((v99 & 0x20000000) == 0)
  {
LABEL_207:
    v100 = v92;
    goto LABEL_222;
  }

LABEL_215:
  if (*a3 <= v92)
  {
    v92 = sub_225EB68(a3, v92);
  }

  v104 = *(a1 + 448);
  *v92 = 1256;
  v92[2] = v104;
  if (v104 > 0x7F)
  {
    v92[2] = v104 | 0x80;
    v105 = v104 >> 7;
    v92[3] = v104 >> 7;
    v100 = v92 + 4;
    if (v104 >= 0x4000)
    {
      LOBYTE(v92) = v92[3];
      do
      {
        *(v100 - 1) = v92 | 0x80;
        LODWORD(v92) = v105 >> 7;
        *v100++ = v105 >> 7;
        v106 = v105 >> 14;
        v105 >>= 7;
      }

      while (v106);
    }
  }

  else
  {
    v100 = v92 + 3;
  }

LABEL_222:
  v107 = *(a1 + 160);
  if (v107 >= 1)
  {
    v108 = 8;
    do
    {
      v109 = *(*(a1 + 168) + v108);
      v110 = *(v109 + 23);
      if (v110 < 0 && (v110 = v109[1], v110 > 127) || (*a3 - v100 + 13) < v110)
      {
        v100 = sub_1957480(a3, 78, v109, v100);
      }

      else
      {
        *v100 = 1266;
        v100[2] = v110;
        if (*(v109 + 23) < 0)
        {
          v109 = *v109;
        }

        v111 = v100 + 3;
        memcpy(v111, v109, v110);
        v100 = &v111[v110];
      }

      v108 += 8;
      --v107;
    }

    while (v107);
  }

  if ((v99 & 0x1000) != 0)
  {
    v100 = sub_128AEEC(a3, 79, *(a1 + 320) & 0xFFFFFFFFFFFFFFFELL, v100);
    if ((v99 & 0x100000) == 0)
    {
LABEL_235:
      if ((v99 & 0x200000) == 0)
      {
        goto LABEL_236;
      }

      goto LABEL_247;
    }
  }

  else if ((v99 & 0x100000) == 0)
  {
    goto LABEL_235;
  }

  if (*a3 <= v100)
  {
    v100 = sub_225EB68(a3, v100);
  }

  v112 = *(a1 + 384);
  *v100 = 1410;
  v113 = *(v112 + 20);
  v100[2] = v113;
  if (v113 > 0x7F)
  {
    v114 = sub_19575D0(v113, v100 + 2);
  }

  else
  {
    v114 = v100 + 3;
  }

  v100 = sub_1777A80(v112, v114, a3);
  if ((v99 & 0x200000) == 0)
  {
LABEL_236:
    if ((v99 & 0x400000) == 0)
    {
      goto LABEL_237;
    }

    goto LABEL_253;
  }

LABEL_247:
  if (*a3 <= v100)
  {
    v100 = sub_225EB68(a3, v100);
  }

  v115 = *(a1 + 392);
  *v100 = 1418;
  v116 = *(v115 + 20);
  v100[2] = v116;
  if (v116 > 0x7F)
  {
    v117 = sub_19575D0(v116, v100 + 2);
  }

  else
  {
    v117 = v100 + 3;
  }

  v100 = sub_157028C(v115, v117, a3);
  if ((v99 & 0x400000) == 0)
  {
LABEL_237:
    if ((v99 & 0x800000) == 0)
    {
      goto LABEL_238;
    }

    goto LABEL_259;
  }

LABEL_253:
  if (*a3 <= v100)
  {
    v100 = sub_225EB68(a3, v100);
  }

  v118 = *(a1 + 400);
  *v100 = 1426;
  v119 = *(v118 + 44);
  v100[2] = v119;
  if (v119 > 0x7F)
  {
    v120 = sub_19575D0(v119, v100 + 2);
  }

  else
  {
    v120 = v100 + 3;
  }

  v100 = sub_16F32C8(v118, v120, a3);
  if ((v99 & 0x800000) == 0)
  {
LABEL_238:
    if ((v99 & 0x1000000) == 0)
    {
      goto LABEL_271;
    }

    goto LABEL_265;
  }

LABEL_259:
  if (*a3 <= v100)
  {
    v100 = sub_225EB68(a3, v100);
  }

  v121 = *(a1 + 408);
  *v100 = 1434;
  v122 = *(v121 + 20);
  v100[2] = v122;
  if (v122 > 0x7F)
  {
    v123 = sub_19575D0(v122, v100 + 2);
  }

  else
  {
    v123 = v100 + 3;
  }

  v100 = sub_1785FE0(v121, v123, a3);
  if ((v99 & 0x1000000) != 0)
  {
LABEL_265:
    if (*a3 <= v100)
    {
      v100 = sub_225EB68(a3, v100);
    }

    v124 = *(a1 + 416);
    *v100 = 1442;
    v125 = *(v124 + 20);
    v100[2] = v125;
    if (v125 > 0x7F)
    {
      v126 = sub_19575D0(v125, v100 + 2);
    }

    else
    {
      v126 = v100 + 3;
    }

    v100 = sub_13955E4(v124, v126, a3);
  }

LABEL_271:
  v127 = *(a1 + 184);
  if (v127)
  {
    for (n = 0; n != v127; ++n)
    {
      if (*a3 <= v100)
      {
        v100 = sub_225EB68(a3, v100);
      }

      v129 = *(*(a1 + 192) + 8 * n + 8);
      *v100 = 1450;
      v130 = *(v129 + 20);
      v100[2] = v130;
      if (v130 > 0x7F)
      {
        v131 = sub_19575D0(v130, v100 + 2);
      }

      else
      {
        v131 = v100 + 3;
      }

      v100 = sub_1785B84(v129, v131, a3);
    }
  }

  if ((*(a1 + 44) & 0x40) != 0)
  {
    if (*a3 <= v100)
    {
      v100 = sub_225EB68(a3, v100);
    }

    v132 = *(a1 + 480);
    *v100 = 1457;
    *(v100 + 2) = v132;
    v100 += 10;
  }

  v133 = *(a1 + 208);
  if (v133)
  {
    for (ii = 0; ii != v133; ++ii)
    {
      if (*a3 <= v100)
      {
        v100 = sub_225EB68(a3, v100);
      }

      v135 = *(*(a1 + 216) + 8 * ii + 8);
      *v100 = 1466;
      v136 = *(v135 + 20);
      v100[2] = v136;
      if (v136 > 0x7F)
      {
        v137 = sub_19575D0(v136, v100 + 2);
      }

      else
      {
        v137 = v100 + 3;
      }

      v100 = sub_18C5780(v135, v137, a3);
    }
  }

  if (*(a1 + 26))
  {
    v100 = sub_1953428(a1 + 16, 10000, 10100, v100, a3);
  }

  v138 = *(a1 + 8);
  if ((v138 & 1) == 0)
  {
    return v100;
  }

  v140 = v138 & 0xFFFFFFFFFFFFFFFCLL;
  v141 = *(v140 + 31);
  if (v141 < 0)
  {
    v142 = *(v140 + 8);
    v141 = *(v140 + 16);
  }

  else
  {
    v142 = (v140 + 8);
  }

  if ((*a3 - v100) >= v141)
  {
    v143 = v141;
    memcpy(v100, v142, v141);
    v100 += v143;
    return v100;
  }

  return sub_1957130(a3, v142, v141, v100);
}

uint64_t sub_1773EC8(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 64);
  v4 = v2 + 2 * v3;
  v5 = *(a1 + 72);
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
      v9 = sub_16EEF64(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 88);
  v11 = v4 + 2 * v10;
  v12 = *(a1 + 96);
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
      v16 = sub_1777144(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 112);
  v18 = v11 + 2 * v17;
  v19 = *(a1 + 120);
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
      v23 = sub_1571F5C(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(a1 + 136);
  v25 = v18 + 2 * v24;
  v26 = *(a1 + 144);
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
      v30 = sub_1776000(v29);
      v25 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6);
      v28 -= 8;
    }

    while (v28);
  }

  v31 = *(a1 + 160);
  v32 = v25 + 2 * v31;
  if (v31 >= 1)
  {
    v33 = (*(a1 + 168) + 8);
    do
    {
      v34 = *v33++;
      v35 = *(v34 + 23);
      v36 = *(v34 + 8);
      if ((v35 & 0x80u) == 0)
      {
        v36 = v35;
      }

      v32 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6);
      --v31;
    }

    while (v31);
  }

  v37 = *(a1 + 184);
  v38 = v32 + 2 * v37;
  v39 = *(a1 + 192);
  if (v39)
  {
    v40 = (v39 + 8);
  }

  else
  {
    v40 = 0;
  }

  if (v37)
  {
    v41 = 8 * v37;
    do
    {
      v42 = *v40++;
      v43 = sub_1785C6C(v42);
      v38 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6);
      v41 -= 8;
    }

    while (v41);
  }

  v44 = *(a1 + 208);
  v45 = v38 + 2 * v44;
  v46 = *(a1 + 216);
  if (v46)
  {
    v47 = (v46 + 8);
  }

  else
  {
    v47 = 0;
  }

  if (v44)
  {
    v48 = 8 * v44;
    do
    {
      v49 = *v47++;
      v50 = sub_18C59B8(v49);
      v45 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6);
      v48 -= 8;
    }

    while (v48);
  }

  v51 = *(a1 + 40);
  if (!v51)
  {
    goto LABEL_54;
  }

  if (v51)
  {
    v71 = *(a1 + 224) & 0xFFFFFFFFFFFFFFFELL;
    v72 = *(v71 + 23);
    v73 = *(v71 + 8);
    if ((v72 & 0x80u) == 0)
    {
      v73 = v72;
    }

    v45 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v51 & 2) == 0)
    {
LABEL_45:
      if ((v51 & 4) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_122;
    }
  }

  else if ((v51 & 2) == 0)
  {
    goto LABEL_45;
  }

  v74 = *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL;
  v75 = *(v74 + 23);
  v76 = *(v74 + 8);
  if ((v75 & 0x80u) == 0)
  {
    v76 = v75;
  }

  v45 += v76 + ((9 * (__clz(v76 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v51 & 4) == 0)
  {
LABEL_46:
    if ((v51 & 8) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_125;
  }

LABEL_122:
  v77 = *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL;
  v78 = *(v77 + 23);
  v79 = *(v77 + 8);
  if ((v78 & 0x80u) == 0)
  {
    v79 = v78;
  }

  v45 += v79 + ((9 * (__clz(v79 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v51 & 8) == 0)
  {
LABEL_47:
    if ((v51 & 0x10) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_128;
  }

LABEL_125:
  v80 = *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL;
  v81 = *(v80 + 23);
  v82 = *(v80 + 8);
  if ((v81 & 0x80u) == 0)
  {
    v82 = v81;
  }

  v45 += v82 + ((9 * (__clz(v82 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v51 & 0x10) == 0)
  {
LABEL_48:
    if ((v51 & 0x20) == 0)
    {
      goto LABEL_49;
    }

LABEL_131:
    v86 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
    v87 = *(v86 + 23);
    v88 = *(v86 + 8);
    if ((v87 & 0x80u) == 0)
    {
      v88 = v87;
    }

    v45 += v88 + ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v51 & 0x40) == 0)
    {
LABEL_50:
      if ((v51 & 0x80) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    goto LABEL_134;
  }

LABEL_128:
  v83 = *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL;
  v84 = *(v83 + 23);
  v85 = *(v83 + 8);
  if ((v84 & 0x80u) == 0)
  {
    v85 = v84;
  }

  v45 += v85 + ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v51 & 0x20) != 0)
  {
    goto LABEL_131;
  }

LABEL_49:
  if ((v51 & 0x40) == 0)
  {
    goto LABEL_50;
  }

LABEL_134:
  v89 = *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL;
  v90 = *(v89 + 23);
  v91 = *(v89 + 8);
  if ((v90 & 0x80u) == 0)
  {
    v91 = v90;
  }

  v45 += v91 + ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v51 & 0x80) != 0)
  {
LABEL_51:
    v52 = *(a1 + 280) & 0xFFFFFFFFFFFFFFFELL;
    v53 = *(v52 + 23);
    v54 = *(v52 + 8);
    if ((v53 & 0x80u) == 0)
    {
      v54 = v53;
    }

    v45 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_54:
  if ((v51 & 0xFF00) == 0)
  {
    goto LABEL_64;
  }

  if ((v51 & 0x100) != 0)
  {
    v92 = *(a1 + 288) & 0xFFFFFFFFFFFFFFFELL;
    v93 = *(v92 + 23);
    v94 = *(v92 + 8);
    if ((v93 & 0x80u) == 0)
    {
      v94 = v93;
    }

    v45 += v94 + ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v51 & 0x200) == 0)
    {
LABEL_57:
      if ((v51 & 0x400) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_144;
    }
  }

  else if ((v51 & 0x200) == 0)
  {
    goto LABEL_57;
  }

  v95 = *(a1 + 296) & 0xFFFFFFFFFFFFFFFELL;
  v96 = *(v95 + 23);
  v97 = *(v95 + 8);
  if ((v96 & 0x80u) == 0)
  {
    v97 = v96;
  }

  v45 += v97 + ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v51 & 0x400) == 0)
  {
LABEL_58:
    if ((v51 & 0x800) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_147;
  }

LABEL_144:
  v98 = *(a1 + 304) & 0xFFFFFFFFFFFFFFFELL;
  v99 = *(v98 + 23);
  v100 = *(v98 + 8);
  if ((v99 & 0x80u) == 0)
  {
    v100 = v99;
  }

  v45 += v100 + ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v51 & 0x800) == 0)
  {
LABEL_59:
    if ((v51 & 0x1000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_150;
  }

LABEL_147:
  v101 = *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL;
  v102 = *(v101 + 23);
  v103 = *(v101 + 8);
  if ((v102 & 0x80u) == 0)
  {
    v103 = v102;
  }

  v45 += v103 + ((9 * (__clz(v103 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v51 & 0x1000) == 0)
  {
LABEL_60:
    if ((v51 & 0x2000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_153;
  }

LABEL_150:
  v104 = *(a1 + 320) & 0xFFFFFFFFFFFFFFFELL;
  v105 = *(v104 + 23);
  v106 = *(v104 + 8);
  if ((v105 & 0x80u) == 0)
  {
    v106 = v105;
  }

  v45 += v106 + ((9 * (__clz(v106 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v51 & 0x2000) == 0)
  {
LABEL_61:
    if ((v51 & 0x4000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_154;
  }

LABEL_153:
  v107 = sub_16EE474(*(a1 + 328));
  v45 += v107 + ((9 * (__clz(v107 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v51 & 0x4000) == 0)
  {
LABEL_62:
    if ((v51 & 0x8000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_154:
  v108 = sub_16E51F0(*(a1 + 336));
  v45 += v108 + ((9 * (__clz(v108 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v51 & 0x8000) != 0)
  {
LABEL_63:
    v55 = sub_1777DE4(*(a1 + 344));
    v45 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_64:
  if ((v51 & 0xFF0000) == 0)
  {
    goto LABEL_74;
  }

  if ((v51 & 0x10000) != 0)
  {
    v109 = sub_1785768(*(a1 + 352));
    v45 += v109 + ((9 * (__clz(v109 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v51 & 0x20000) == 0)
    {
LABEL_67:
      if ((v51 & 0x40000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_158;
    }
  }

  else if ((v51 & 0x20000) == 0)
  {
    goto LABEL_67;
  }

  v110 = sub_15705D4(*(a1 + 360));
  v45 += v110 + ((9 * (__clz(v110 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v51 & 0x40000) == 0)
  {
LABEL_68:
    if ((v51 & 0x80000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_159;
  }

LABEL_158:
  v111 = sub_1776000(*(a1 + 368));
  v45 += v111 + ((9 * (__clz(v111 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v51 & 0x80000) == 0)
  {
LABEL_69:
    if ((v51 & 0x100000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_160;
  }

LABEL_159:
  v112 = sub_16E62F4(*(a1 + 376));
  v45 += v112 + ((9 * (__clz(v112 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v51 & 0x100000) == 0)
  {
LABEL_70:
    if ((v51 & 0x200000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_161;
  }

LABEL_160:
  v113 = sub_1777DE4(*(a1 + 384));
  v45 += v113 + ((9 * (__clz(v113 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v51 & 0x200000) == 0)
  {
LABEL_71:
    if ((v51 & 0x400000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_162;
  }

LABEL_161:
  v114 = sub_15705D4(*(a1 + 392));
  v45 += v114 + ((9 * (__clz(v114 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v51 & 0x400000) == 0)
  {
LABEL_72:
    if ((v51 & 0x800000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_162:
  v115 = sub_16F3438(*(a1 + 400));
  v45 += v115 + ((9 * (__clz(v115 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v51 & 0x800000) != 0)
  {
LABEL_73:
    v56 = sub_1786190(*(a1 + 408));
    v45 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_74:
  if (!HIBYTE(v51))
  {
    goto LABEL_85;
  }

  if ((v51 & 0x1000000) != 0)
  {
    v57 = sub_1395750(*(a1 + 416));
    v45 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((v51 & 0x2000000) != 0)
  {
    v45 += 9;
  }

  if ((v51 & 0x4000000) != 0)
  {
    v116 = *(a1 + 432);
    v117 = ((9 * (__clz(v116 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v116 >= 0)
    {
      v118 = v117;
    }

    else
    {
      v118 = 11;
    }

    v45 += v118;
    if ((v51 & 0x8000000) == 0)
    {
LABEL_81:
      if ((v51 & 0x10000000) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_169;
    }
  }

  else if ((v51 & 0x8000000) == 0)
  {
    goto LABEL_81;
  }

  v45 += ((9 * (__clz(*(a1 + 436) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v51 & 0x10000000) == 0)
  {
LABEL_82:
    if ((v51 & 0x20000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_170;
  }

LABEL_169:
  v45 += ((9 * (__clz(*(a1 + 440) | 1) ^ 0x3F) + 73) >> 6) + 2;
  if ((v51 & 0x20000000) == 0)
  {
LABEL_83:
    if ((v51 & 0x40000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_171;
  }

LABEL_170:
  v45 += ((9 * (__clz(*(a1 + 448) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v51 & 0x40000000) == 0)
  {
LABEL_84:
    if ((v51 & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_175;
  }

LABEL_171:
  v119 = *(a1 + 452);
  v120 = ((9 * (__clz(v119 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v119 >= 0)
  {
    v121 = v120;
  }

  else
  {
    v121 = 12;
  }

  v45 += v121;
  if ((v51 & 0x80000000) != 0)
  {
LABEL_175:
    v122 = *(a1 + 456);
    v123 = ((9 * (__clz(v122 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v122 >= 0)
    {
      v124 = v123;
    }

    else
    {
      v124 = 12;
    }

    v45 += v124;
  }

LABEL_85:
  v58 = *(a1 + 44);
  if (v58)
  {
    if (v58)
    {
      v45 += ((9 * (__clz(*(a1 + 460) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v59 = v45 + 3;
    if ((v58 & 2) == 0)
    {
      v59 = v45;
    }

    if ((v58 & 4) != 0)
    {
      v59 += 3;
    }

    if ((v58 & 8) != 0)
    {
      v59 += 3;
    }

    if ((v58 & 0x10) != 0)
    {
      v60 = *(a1 + 468);
      v61 = ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v60 >= 0)
      {
        v62 = v61;
      }

      else
      {
        v62 = 12;
      }

      v59 += v62;
    }

    if ((v58 & 0x20) != 0)
    {
      v59 += ((9 * (__clz(*(a1 + 472) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v58 & 0x40) != 0)
    {
      v45 = v59 + 10;
    }

    else
    {
      v45 = v59;
    }

    if ((v58 & 0x80) != 0)
    {
      v63 = *(a1 + 488);
      v64 = ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v63 >= 0)
      {
        v65 = v64;
      }

      else
      {
        v65 = 12;
      }

      v45 += v65;
    }
  }

  if ((v58 & 0x100) != 0)
  {
    v66 = *(a1 + 492);
    v67 = ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v66 >= 0)
    {
      v68 = v67;
    }

    else
    {
      v68 = 12;
    }

    v45 += v68;
  }

  v69 = *(a1 + 8);
  if (v69)
  {
    v125 = v69 & 0xFFFFFFFFFFFFFFFCLL;
    v126 = *((v69 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v126 < 0)
    {
      v126 = *(v125 + 16);
    }

    v45 += v126;
  }

  *(a1 + 48) = v45;
  return v45;
}

void sub_17749F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  if (v4)
  {
    v5 = *(a2 + 72);
    v6 = sub_19592E8(a1 + 56, *(a2 + 64));
    sub_12E5E34((a1 + 56), v6, (v5 + 8), v4, **(a1 + 72) - *(a1 + 64));
    v7 = *(a1 + 64) + v4;
    *(a1 + 64) = v7;
    v8 = *(a1 + 72);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 88);
  if (v9)
  {
    v10 = *(a2 + 96);
    v11 = sub_19592E8(a1 + 80, *(a2 + 88));
    sub_13BA13C((a1 + 80), v11, (v10 + 8), v9, **(a1 + 96) - *(a1 + 88));
    v12 = *(a1 + 88) + v9;
    *(a1 + 88) = v12;
    v13 = *(a1 + 96);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 112);
  if (v14)
  {
    v15 = *(a2 + 120);
    v16 = sub_19592E8(a1 + 104, *(a2 + 112));
    sub_1578288((a1 + 104), v16, (v15 + 8), v14, **(a1 + 120) - *(a1 + 112));
    v17 = *(a1 + 112) + v14;
    *(a1 + 112) = v17;
    v18 = *(a1 + 120);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 136);
  if (v19)
  {
    v20 = *(a2 + 144);
    v21 = sub_19592E8(a1 + 128, *(a2 + 136));
    sub_13BA0B0((a1 + 128), v21, (v20 + 8), v19, **(a1 + 144) - *(a1 + 136));
    v22 = *(a1 + 136) + v19;
    *(a1 + 136) = v22;
    v23 = *(a1 + 144);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 160);
  if (v24)
  {
    v25 = *(a2 + 168);
    v26 = sub_19592E8(a1 + 152, *(a2 + 160));
    sub_1201B48(a1 + 152, v26, (v25 + 8), v24, **(a1 + 168) - *(a1 + 160));
    v27 = *(a1 + 160) + v24;
    *(a1 + 160) = v27;
    v28 = *(a1 + 168);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 184);
  if (v29)
  {
    v30 = *(a2 + 192);
    v31 = sub_19592E8(a1 + 176, *(a2 + 184));
    sub_13B9F2C((a1 + 176), v31, (v30 + 8), v29, **(a1 + 192) - *(a1 + 184));
    v32 = *(a1 + 184) + v29;
    *(a1 + 184) = v32;
    v33 = *(a1 + 192);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 208);
  if (v34)
  {
    v35 = *(a2 + 216);
    v36 = sub_19592E8(a1 + 200, *(a2 + 208));
    sub_1786CC4((a1 + 200), v36, (v35 + 8), v34, **(a1 + 216) - *(a1 + 208));
    v37 = *(a1 + 208) + v34;
    *(a1 + 208) = v37;
    v38 = *(a1 + 216);
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  v39 = *(a2 + 40);
  if (!v39)
  {
    goto LABEL_56;
  }

  if (v39)
  {
    v40 = *(a2 + 224);
    *(a1 + 40) |= 1u;
    v41 = *(a1 + 8);
    v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
    if (v41)
    {
      v42 = *v42;
    }

    sub_194EA1C((a1 + 224), (v40 & 0xFFFFFFFFFFFFFFFELL), v42);
    if ((v39 & 2) == 0)
    {
LABEL_25:
      if ((v39 & 4) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_38;
    }
  }

  else if ((v39 & 2) == 0)
  {
    goto LABEL_25;
  }

  v43 = *(a2 + 232);
  *(a1 + 40) |= 2u;
  v44 = *(a1 + 8);
  v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
  if (v44)
  {
    v45 = *v45;
  }

  sub_194EA1C((a1 + 232), (v43 & 0xFFFFFFFFFFFFFFFELL), v45);
  if ((v39 & 4) == 0)
  {
LABEL_26:
    if ((v39 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_41;
  }

LABEL_38:
  v46 = *(a2 + 240);
  *(a1 + 40) |= 4u;
  v47 = *(a1 + 8);
  v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
  if (v47)
  {
    v48 = *v48;
  }

  sub_194EA1C((a1 + 240), (v46 & 0xFFFFFFFFFFFFFFFELL), v48);
  if ((v39 & 8) == 0)
  {
LABEL_27:
    if ((v39 & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_44;
  }

LABEL_41:
  v49 = *(a2 + 248);
  *(a1 + 40) |= 8u;
  v50 = *(a1 + 8);
  v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
  if (v50)
  {
    v51 = *v51;
  }

  sub_194EA1C((a1 + 248), (v49 & 0xFFFFFFFFFFFFFFFELL), v51);
  if ((v39 & 0x10) == 0)
  {
LABEL_28:
    if ((v39 & 0x20) == 0)
    {
      goto LABEL_29;
    }

LABEL_47:
    v55 = *(a2 + 264);
    *(a1 + 40) |= 0x20u;
    v56 = *(a1 + 8);
    v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
    if (v56)
    {
      v57 = *v57;
    }

    sub_194EA1C((a1 + 264), (v55 & 0xFFFFFFFFFFFFFFFELL), v57);
    if ((v39 & 0x40) == 0)
    {
LABEL_30:
      if ((v39 & 0x80) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_53;
    }

    goto LABEL_50;
  }

LABEL_44:
  v52 = *(a2 + 256);
  *(a1 + 40) |= 0x10u;
  v53 = *(a1 + 8);
  v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
  if (v53)
  {
    v54 = *v54;
  }

  sub_194EA1C((a1 + 256), (v52 & 0xFFFFFFFFFFFFFFFELL), v54);
  if ((v39 & 0x20) != 0)
  {
    goto LABEL_47;
  }

LABEL_29:
  if ((v39 & 0x40) == 0)
  {
    goto LABEL_30;
  }

LABEL_50:
  v58 = *(a2 + 272);
  *(a1 + 40) |= 0x40u;
  v59 = *(a1 + 8);
  v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
  if (v59)
  {
    v60 = *v60;
  }

  sub_194EA1C((a1 + 272), (v58 & 0xFFFFFFFFFFFFFFFELL), v60);
  if ((v39 & 0x80) != 0)
  {
LABEL_53:
    v61 = *(a2 + 280);
    *(a1 + 40) |= 0x80u;
    v62 = *(a1 + 8);
    v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
    if (v62)
    {
      v63 = *v63;
    }

    sub_194EA1C((a1 + 280), (v61 & 0xFFFFFFFFFFFFFFFELL), v63);
  }

LABEL_56:
  if ((v39 & 0xFF00) == 0)
  {
    goto LABEL_105;
  }

  if ((v39 & 0x100) != 0)
  {
    v64 = *(a2 + 288);
    *(a1 + 40) |= 0x100u;
    v65 = *(a1 + 8);
    v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
    if (v65)
    {
      v66 = *v66;
    }

    sub_194EA1C((a1 + 288), (v64 & 0xFFFFFFFFFFFFFFFELL), v66);
    if ((v39 & 0x200) == 0)
    {
LABEL_59:
      if ((v39 & 0x400) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_72;
    }
  }

  else if ((v39 & 0x200) == 0)
  {
    goto LABEL_59;
  }

  v67 = *(a2 + 296);
  *(a1 + 40) |= 0x200u;
  v68 = *(a1 + 8);
  v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL);
  if (v68)
  {
    v69 = *v69;
  }

  sub_194EA1C((a1 + 296), (v67 & 0xFFFFFFFFFFFFFFFELL), v69);
  if ((v39 & 0x400) == 0)
  {
LABEL_60:
    if ((v39 & 0x800) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_75;
  }

LABEL_72:
  v70 = *(a2 + 304);
  *(a1 + 40) |= 0x400u;
  v71 = *(a1 + 8);
  v72 = (v71 & 0xFFFFFFFFFFFFFFFCLL);
  if (v71)
  {
    v72 = *v72;
  }

  sub_194EA1C((a1 + 304), (v70 & 0xFFFFFFFFFFFFFFFELL), v72);
  if ((v39 & 0x800) == 0)
  {
LABEL_61:
    if ((v39 & 0x1000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_78;
  }

LABEL_75:
  v73 = *(a2 + 312);
  *(a1 + 40) |= 0x800u;
  v74 = *(a1 + 8);
  v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
  if (v74)
  {
    v75 = *v75;
  }

  sub_194EA1C((a1 + 312), (v73 & 0xFFFFFFFFFFFFFFFELL), v75);
  if ((v39 & 0x1000) == 0)
  {
LABEL_62:
    if ((v39 & 0x2000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_81;
  }

LABEL_78:
  v76 = *(a2 + 320);
  *(a1 + 40) |= 0x1000u;
  v77 = *(a1 + 8);
  v78 = (v77 & 0xFFFFFFFFFFFFFFFCLL);
  if (v77)
  {
    v78 = *v78;
  }

  sub_194EA1C((a1 + 320), (v76 & 0xFFFFFFFFFFFFFFFELL), v78);
  if ((v39 & 0x2000) == 0)
  {
LABEL_63:
    if ((v39 & 0x4000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_89;
  }

LABEL_81:
  *(a1 + 40) |= 0x2000u;
  v79 = *(a1 + 328);
  if (!v79)
  {
    v80 = *(a1 + 8);
    v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL);
    if (v80)
    {
      v81 = *v81;
    }

    v79 = sub_16F5F38(v81);
    *(a1 + 328) = v79;
  }

  if (*(a2 + 328))
  {
    v82 = *(a2 + 328);
  }

  else
  {
    v82 = &off_277E980;
  }

  sub_121721C(v79, v82);
  if ((v39 & 0x4000) == 0)
  {
LABEL_64:
    if ((v39 & 0x8000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_97;
  }

LABEL_89:
  *(a1 + 40) |= 0x4000u;
  v83 = *(a1 + 336);
  if (!v83)
  {
    v84 = *(a1 + 8);
    v85 = (v84 & 0xFFFFFFFFFFFFFFFCLL);
    if (v84)
    {
      v85 = *v85;
    }

    v83 = sub_16F5828(v85);
    *(a1 + 336) = v83;
  }

  if (*(a2 + 336))
  {
    v86 = *(a2 + 336);
  }

  else
  {
    v86 = &off_277E5E8;
  }

  sub_16E527C(v83, v86);
  if ((v39 & 0x8000) != 0)
  {
LABEL_97:
    *(a1 + 40) |= 0x8000u;
    v87 = *(a1 + 344);
    if (!v87)
    {
      v88 = *(a1 + 8);
      v89 = (v88 & 0xFFFFFFFFFFFFFFFCLL);
      if (v88)
      {
        v89 = *v89;
      }

      v87 = sub_1778110(v89);
      *(a1 + 344) = v87;
    }

    if (*(a2 + 344))
    {
      v90 = *(a2 + 344);
    }

    else
    {
      v90 = &off_27819D0;
    }

    sub_17754BC(v87, v90);
  }

LABEL_105:
  if ((v39 & 0xFF0000) == 0)
  {
    goto LABEL_179;
  }

  if ((v39 & 0x10000) != 0)
  {
    *(a1 + 40) |= 0x10000u;
    v91 = *(a1 + 352);
    if (!v91)
    {
      v92 = *(a1 + 8);
      v93 = (v92 & 0xFFFFFFFFFFFFFFFCLL);
      if (v92)
      {
        v93 = *v93;
      }

      v91 = sub_1786260(v93);
      *(a1 + 352) = v91;
    }

    if (*(a2 + 352))
    {
      v94 = *(a2 + 352);
    }

    else
    {
      v94 = &off_2781F00;
    }

    sub_12EB184(v91, v94);
  }

  if ((v39 & 0x20000) != 0)
  {
    *(a1 + 40) |= 0x20000u;
    v95 = *(a1 + 360);
    if (!v95)
    {
      v96 = *(a1 + 8);
      v97 = (v96 & 0xFFFFFFFFFFFFFFFCLL);
      if (v96)
      {
        v97 = *v97;
      }

      v95 = sub_1570D50(v97);
      *(a1 + 360) = v95;
    }

    if (*(a2 + 360))
    {
      v98 = *(a2 + 360);
    }

    else
    {
      v98 = &off_27774D0;
    }

    sub_156F880(v95, v98);
    if ((v39 & 0x40000) == 0)
    {
LABEL_117:
      if ((v39 & 0x80000) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_139;
    }
  }

  else if ((v39 & 0x40000) == 0)
  {
    goto LABEL_117;
  }

  *(a1 + 40) |= 0x40000u;
  v99 = *(a1 + 368);
  if (!v99)
  {
    v100 = *(a1 + 8);
    v101 = (v100 & 0xFFFFFFFFFFFFFFFCLL);
    if (v100)
    {
      v101 = *v101;
    }

    v99 = sub_1778004(v101);
    *(a1 + 368) = v99;
  }

  if (*(a2 + 368))
  {
    v102 = *(a2 + 368);
  }

  else
  {
    v102 = &off_2781918;
  }

  sub_17756B8(v99, v102);
  if ((v39 & 0x80000) == 0)
  {
LABEL_118:
    if ((v39 & 0x100000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_147;
  }

LABEL_139:
  *(a1 + 40) |= 0x80000u;
  v103 = *(a1 + 376);
  if (!v103)
  {
    v104 = *(a1 + 8);
    v105 = (v104 & 0xFFFFFFFFFFFFFFFCLL);
    if (v104)
    {
      v105 = *v105;
    }

    sub_16F58FC(v105);
    *(a1 + 376) = v103;
  }

  if (*(a2 + 376))
  {
    v106 = *(a2 + 376);
  }

  else
  {
    v106 = &off_277E650;
  }

  sub_16E645C(v103, v106);
  if ((v39 & 0x100000) == 0)
  {
LABEL_119:
    if ((v39 & 0x200000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_155;
  }

LABEL_147:
  *(a1 + 40) |= 0x100000u;
  v107 = *(a1 + 384);
  if (!v107)
  {
    v108 = *(a1 + 8);
    v109 = (v108 & 0xFFFFFFFFFFFFFFFCLL);
    if (v108)
    {
      v109 = *v109;
    }

    v107 = sub_1778110(v109);
    *(a1 + 384) = v107;
  }

  if (*(a2 + 384))
  {
    v110 = *(a2 + 384);
  }

  else
  {
    v110 = &off_27819D0;
  }

  sub_17754BC(v107, v110);
  if ((v39 & 0x200000) == 0)
  {
LABEL_120:
    if ((v39 & 0x400000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_163;
  }

LABEL_155:
  *(a1 + 40) |= 0x200000u;
  v111 = *(a1 + 392);
  if (!v111)
  {
    v112 = *(a1 + 8);
    v113 = (v112 & 0xFFFFFFFFFFFFFFFCLL);
    if (v112)
    {
      v113 = *v113;
    }

    v111 = sub_1570D50(v113);
    *(a1 + 392) = v111;
  }

  if (*(a2 + 392))
  {
    v114 = *(a2 + 392);
  }

  else
  {
    v114 = &off_27774D0;
  }

  sub_156F880(v111, v114);
  if ((v39 & 0x400000) == 0)
  {
LABEL_121:
    if ((v39 & 0x800000) == 0)
    {
      goto LABEL_179;
    }

    goto LABEL_171;
  }

LABEL_163:
  *(a1 + 40) |= 0x400000u;
  v115 = *(a1 + 400);
  if (!v115)
  {
    v116 = *(a1 + 8);
    v117 = (v116 & 0xFFFFFFFFFFFFFFFCLL);
    if (v116)
    {
      v117 = *v117;
    }

    v115 = sub_16F63DC(v117);
    *(a1 + 400) = v115;
  }

  if (*(a2 + 400))
  {
    v118 = *(a2 + 400);
  }

  else
  {
    v118 = &off_277EB40;
  }

  sub_16F34FC(v115, v118);
  if ((v39 & 0x800000) != 0)
  {
LABEL_171:
    *(a1 + 40) |= 0x800000u;
    v119 = *(a1 + 408);
    if (!v119)
    {
      v120 = *(a1 + 8);
      v121 = (v120 & 0xFFFFFFFFFFFFFFFCLL);
      if (v120)
      {
        v121 = *v121;
      }

      v119 = sub_178636C(v121);
      *(a1 + 408) = v119;
    }

    if (*(a2 + 408))
    {
      v122 = *(a2 + 408);
    }

    else
    {
      v122 = &off_2781F30;
    }

    sub_128F8FC(v119, v122);
  }

LABEL_179:
  if (!HIBYTE(v39))
  {
    goto LABEL_189;
  }

  if ((v39 & 0x1000000) != 0)
  {
    *(a1 + 40) |= 0x1000000u;
    v126 = *(a1 + 416);
    if (!v126)
    {
      v127 = *(a1 + 8);
      v128 = (v127 & 0xFFFFFFFFFFFFFFFCLL);
      if (v127)
      {
        v128 = *v128;
      }

      v126 = sub_13AE3BC(v128);
      *(a1 + 416) = v126;
    }

    if (*(a2 + 416))
    {
      v129 = *(a2 + 416);
    }

    else
    {
      v129 = &off_276D878;
    }

    sub_128E5DC(v126, v129);
    if ((v39 & 0x2000000) == 0)
    {
LABEL_182:
      if ((v39 & 0x4000000) == 0)
      {
        goto LABEL_183;
      }

      goto LABEL_223;
    }
  }

  else if ((v39 & 0x2000000) == 0)
  {
    goto LABEL_182;
  }

  *(a1 + 424) = *(a2 + 424);
  if ((v39 & 0x4000000) == 0)
  {
LABEL_183:
    if ((v39 & 0x8000000) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_224;
  }

LABEL_223:
  *(a1 + 432) = *(a2 + 432);
  if ((v39 & 0x8000000) == 0)
  {
LABEL_184:
    if ((v39 & 0x10000000) == 0)
    {
      goto LABEL_185;
    }

    goto LABEL_225;
  }

LABEL_224:
  *(a1 + 436) = *(a2 + 436);
  if ((v39 & 0x10000000) == 0)
  {
LABEL_185:
    if ((v39 & 0x20000000) == 0)
    {
      goto LABEL_186;
    }

    goto LABEL_226;
  }

LABEL_225:
  *(a1 + 440) = *(a2 + 440);
  if ((v39 & 0x20000000) == 0)
  {
LABEL_186:
    if ((v39 & 0x40000000) == 0)
    {
      goto LABEL_187;
    }

LABEL_227:
    *(a1 + 452) = *(a2 + 452);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_188;
    }

LABEL_228:
    *(a1 + 456) = *(a2 + 456);
    goto LABEL_188;
  }

LABEL_226:
  *(a1 + 448) = *(a2 + 448);
  if ((v39 & 0x40000000) != 0)
  {
    goto LABEL_227;
  }

LABEL_187:
  if ((v39 & 0x80000000) != 0)
  {
    goto LABEL_228;
  }

LABEL_188:
  *(a1 + 40) |= v39;
LABEL_189:
  v123 = *(a2 + 44);
  if (!v123)
  {
    goto LABEL_200;
  }

  if (v123)
  {
    *(a1 + 460) = *(a2 + 460);
    if ((v123 & 2) == 0)
    {
LABEL_192:
      if ((v123 & 4) == 0)
      {
        goto LABEL_193;
      }

      goto LABEL_208;
    }
  }

  else if ((v123 & 2) == 0)
  {
    goto LABEL_192;
  }

  *(a1 + 464) = *(a2 + 464);
  if ((v123 & 4) == 0)
  {
LABEL_193:
    if ((v123 & 8) == 0)
    {
      goto LABEL_194;
    }

    goto LABEL_209;
  }

LABEL_208:
  *(a1 + 465) = *(a2 + 465);
  if ((v123 & 8) == 0)
  {
LABEL_194:
    if ((v123 & 0x10) == 0)
    {
      goto LABEL_195;
    }

    goto LABEL_210;
  }

LABEL_209:
  *(a1 + 466) = *(a2 + 466);
  if ((v123 & 0x10) == 0)
  {
LABEL_195:
    if ((v123 & 0x20) == 0)
    {
      goto LABEL_196;
    }

    goto LABEL_211;
  }

LABEL_210:
  *(a1 + 468) = *(a2 + 468);
  if ((v123 & 0x20) == 0)
  {
LABEL_196:
    if ((v123 & 0x40) == 0)
    {
      goto LABEL_197;
    }

LABEL_212:
    *(a1 + 480) = *(a2 + 480);
    if ((v123 & 0x80) == 0)
    {
      goto LABEL_199;
    }

    goto LABEL_198;
  }

LABEL_211:
  *(a1 + 472) = *(a2 + 472);
  if ((v123 & 0x40) != 0)
  {
    goto LABEL_212;
  }

LABEL_197:
  if ((v123 & 0x80) != 0)
  {
LABEL_198:
    *(a1 + 488) = *(a2 + 488);
  }

LABEL_199:
  *(a1 + 44) |= v123;
LABEL_200:
  if ((v123 & 0x100) != 0)
  {
    v124 = *(a2 + 492);
    *(a1 + 44) |= 0x100u;
    *(a1 + 492) = v124;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v125 = *(a2 + 8);
  if (v125)
  {

    sub_1957EF4((a1 + 8), (v125 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}