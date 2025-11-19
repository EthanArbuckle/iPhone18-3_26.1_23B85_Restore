void sub_17916A4(uint64_t a1)
{
  sub_17915F8(a1);

  operator delete();
}

unsigned __int8 *sub_17916DC(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E5B70(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 4);
  if (v5)
  {
    v6 = *(v1 + 6) & 0xFFFFFFFFFFFFFFFELL;
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

  if ((v5 & 0x1E) != 0)
  {
    *(v1 + 62) = 0;
    *(v1 + 7) = 0;
  }

  v8 = v1[8];
  v7 = v1 + 8;
  *(v7 + 2) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_179179C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_53;
      }

      v23 = v7 + 1;
      v22 = *v7;
      if (v22 < 0)
      {
        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if ((v24 & 0x80000000) == 0)
        {
          v23 = v7 + 2;
          goto LABEL_36;
        }

        *v44 = sub_19587DC(v7, v22);
        if (!*v44)
        {
          goto LABEL_75;
        }
      }

      else
      {
LABEL_36:
        *v44 = v23;
      }

      if (v22 > 5)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 64) = v22;
      }

      goto LABEL_61;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_53;
      }

      v5 |= 2u;
      v30 = v7 + 1;
      v29 = *v7;
      if ((v29 & 0x8000000000000000) == 0)
      {
        goto LABEL_47;
      }

      v31 = *v30;
      v29 = (v31 << 7) + v29 - 128;
      if ((v31 & 0x80000000) == 0)
      {
        v30 = v7 + 2;
LABEL_47:
        *v44 = v30;
        *(a1 + 56) = v29;
        goto LABEL_61;
      }

      v40 = sub_19587DC(v7, v29);
      *v44 = v40;
      *(a1 + 56) = v41;
      if (!v40)
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_53;
      }

      v5 |= 8u;
      v14 = v7 + 1;
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_18;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = v7 + 2;
LABEL_18:
        *v44 = v14;
        *(a1 + 68) = v13 != 0;
        goto LABEL_61;
      }

      v38 = sub_19587DC(v7, v13);
      *v44 = v38;
      *(a1 + 68) = v39 != 0;
      if (!v38)
      {
        goto LABEL_75;
      }
    }

LABEL_61:
    if (sub_195ADC0(a3, v44, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 34)
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

    v27 = sub_194DB04((a1 + 48), v26);
    v28 = sub_1958890(v27, *v44, a3);
LABEL_60:
    *v44 = v28;
    if (!v28)
    {
      goto LABEL_75;
    }

    goto LABEL_61;
  }

  if (v11 == 5)
  {
    if (v8 != 40)
    {
      goto LABEL_53;
    }

    v5 |= 0x10u;
    v33 = v7 + 1;
    v32 = *v7;
    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_52;
    }

    v34 = *v33;
    v32 = (v34 << 7) + v32 - 128;
    if ((v34 & 0x80000000) == 0)
    {
      v33 = v7 + 2;
LABEL_52:
      *v44 = v33;
      *(a1 + 69) = v32 != 0;
      goto LABEL_61;
    }

    v42 = sub_19587DC(v7, v32);
    *v44 = v42;
    *(a1 + 69) = v43 != 0;
    if (!v42)
    {
      goto LABEL_75;
    }

    goto LABEL_61;
  }

  if (v11 == 6 && v8 == 50)
  {
    v16 = v7 - 1;
    while (1)
    {
      v17 = v16 + 1;
      *v44 = v16 + 1;
      v18 = *(a1 + 40);
      if (v18 && (v19 = *(a1 + 32), v19 < *v18))
      {
        *(a1 + 32) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
      }

      else
      {
        sub_16F58FC(*(a1 + 24));
        v20 = sub_19593CC(a1 + 24, v21);
        v17 = *v44;
      }

      v16 = sub_21F86E8(a3, v20, v17);
      *v44 = v16;
      if (!v16)
      {
        goto LABEL_75;
      }

      if (*a3 <= v16 || *v16 != 50)
      {
        goto LABEL_61;
      }
    }
  }

LABEL_53:
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

    v28 = sub_1952690(v8, v37, v7, a3);
    goto LABEL_60;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_75:
  *v44 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v44;
}

char *sub_1791B68(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 56);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v15 = *(a1 + 68);
    *v11 = 24;
    v11[1] = v15;
    v11 += 2;
    if ((v5 & 1) == 0)
    {
LABEL_21:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_21;
  }

  v11 = sub_128AEEC(a3, 4, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v11);
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v16 = *(a1 + 69);
  *v11 = 40;
  v11[1] = v16;
  v11 += 2;
LABEL_30:
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

      v11 = sub_16E5FE0(v19, v21, a3);
    }
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v11;
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

  if (*a3 - v11 >= v25)
  {
    v27 = v25;
    memcpy(v11, v26, v25);
    v11 += v27;
    return v11;
  }

  return sub_1957130(a3, v26, v25, v11);
}

uint64_t sub_1791E50(uint64_t a1)
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
      v7 = sub_16E62F4(v6);
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
  if ((v8 & 0x1F) != 0)
  {
    if (v8)
    {
      v14 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v15 = *(v14 + 23);
      v16 = *(v14 + 8);
      if ((v15 & 0x80u) == 0)
      {
        v16 = v15;
      }

      v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_12:
        if ((v8 & 4) != 0)
        {
LABEL_13:
          v9 = *(a1 + 64);
          v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
          if (v9 >= 0)
          {
            v11 = v10;
          }

          else
          {
            v11 = 11;
          }

          v2 += v11;
        }

LABEL_17:
        v2 += ((v8 >> 3) & 2) + ((v8 >> 2) & 2);
        goto LABEL_18;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v8 & 4) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

LABEL_18:
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

void sub_1791FC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B5364((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0x1F) != 0)
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
          goto LABEL_8;
        }

        goto LABEL_20;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 56) = *(a2 + 56);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }

LABEL_20:
    *(a1 + 64) = *(a2 + 64);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
LABEL_11:
        *(a1 + 16) |= v9;
        goto LABEL_12;
      }

LABEL_10:
      *(a1 + 69) = *(a2 + 69);
      goto LABEL_11;
    }

LABEL_21:
    *(a1 + 68) = *(a2 + 68);
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1792110(unsigned __int8 *a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_17916DC(a1);

    sub_1791FC4(a1, a2);
  }
}

BOOL sub_179215C(uint64_t a1)
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
    v5 = sub_16E6614(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while (v5);
  return v3 < 1;
}

__n128 sub_17921B4(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 48);
  *(a2 + 48) = *(a1 + 48);
  *(a1 + 48) = v7;
  v8 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v8;
  LODWORD(v8) = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v8;
  LOWORD(v8) = *(a1 + 68);
  *(a1 + 68) = *(a2 + 68);
  *(a2 + 68) = v8;
  return result;
}

void *sub_1792248(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_270A158;
  result[1] = v3;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

uint64_t sub_1792284(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_270A158;
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
  return a1;
}

uint64_t sub_17923BC(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_27822A0)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1790974(v6);
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

void sub_1792488(uint64_t a1)
{
  sub_17923BC(a1);

  operator delete();
}

uint64_t sub_17924C0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      result = sub_1790A98(*(result + 32));
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_1792554(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

          v15 = sub_1792B0C(v17);
          *(a1 + 32) = v15;
          v6 = *v22;
        }

        v14 = sub_224249C(a3, v15, v6);
        goto LABEL_28;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v20 = sub_194DB04((a1 + 24), v19);
      v14 = sub_1958890(v20, *v22, a3);
      goto LABEL_28;
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
        return *v22;
      }

LABEL_34:
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
LABEL_28:
    *v22 = v14;
    if (!v14)
    {
      goto LABEL_34;
    }
  }

  return *v22;
}

char *sub_17926F0(uint64_t a1, char *__dst, void *a3)
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

    v7 = *(a1 + 32);
    *v4 = 18;
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

    v4 = sub_1790E84(v7, v9, a3);
  }

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

uint64_t sub_179281C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_1791058(*(a1 + 32));
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

std::string *sub_17928F8(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
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
    }

    if ((v4 & 2) != 0)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
      v8 = v3[1].__r_.__value_.__l.__size_;
      if (!v8)
      {
        v9 = v3->__r_.__value_.__l.__size_;
        v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
        if (v9)
        {
          v10 = *v10;
        }

        v8 = sub_1792B0C(v10);
        v3[1].__r_.__value_.__l.__size_ = v8;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = &off_2782250;
      }

      result = sub_179122C(v8, v11);
    }
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_17929E4(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_17924C0(result);

    return sub_17928F8(v4, a2);
  }

  return result;
}

uint64_t sub_1792A38(uint64_t result, uint64_t a2)
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
  v4 = *(result + 32);
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_1792A8C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_2709FD8;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_1792B0C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_270A058;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  result[8] = &qword_278E990;
  result[9] = &qword_278E990;
  return result;
}

void *sub_1792BB4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_270A0D8;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = 0;
  *(result + 62) = 0;
  return result;
}

void *sub_1792C5C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_270A158;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

uint64_t sub_1792D34(unsigned int a1)
{
  result = 1;
  if (a1 - 20 > 0x3B || ((1 << (a1 - 20)) & 0xF7FFFFFFFFF7FFFLL) == 0)
  {
    v3 = a1 - 81;
    v4 = a1 < 0x11;
    return v3 < 0x21 || v4;
  }

  return result;
}

void *sub_1792D88(void *a1, uint64_t a2)
{
  a1[1] = 0;
  *a1 = off_270A1D8;
  v4 = *(a2 + 16);
  a1[2] = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4(a1 + 1, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    operator new();
  }

  a1[3] = 0;
  a1[4] = *(a2 + 32);
  return a1;
}

uint64_t sub_1792E90(uint64_t a1)
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
  if (a1 != &off_27822C8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_1793738(v6);
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

void sub_1792F48(uint64_t a1)
{
  sub_1792E90(a1);

  operator delete();
}

uint64_t sub_1792F80(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_1792FE8(*(result + 24));
  }

  if ((v2 & 6) != 0)
  {
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

uint64_t sub_1792FE8(uint64_t a1)
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

char *sub_179300C(uint64_t a1, char *a2, int32x2_t *a3)
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
    v21 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    v22 = *v20;
    v21 = v21 + (v22 << 7) - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_29:
      v30 = v20;
      *(a1 + 36) = v21;
      goto LABEL_36;
    }

    v28 = sub_1958770(v7, v21);
    v30 = v28;
    *(a1 + 36) = v29;
    if (!v28)
    {
      goto LABEL_45;
    }

LABEL_36:
    if (sub_195ADC0(a3, &v30, a3[11].i32[1]))
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
    v17 = v7 + 1;
    v18 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    v19 = *v17;
    v18 = v18 + (v19 << 7) - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_24:
      v30 = v17;
      *(a1 + 32) = v18;
      goto LABEL_36;
    }

    v26 = sub_1958770(v7, v18);
    v30 = v26;
    *(a1 + 32) = v27;
    if (!v26)
    {
      goto LABEL_45;
    }

    goto LABEL_36;
  }

  if (v11 == 1 && v8 == 10)
  {
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

      v23 = sub_185D2C4(v25);
      *(a1 + 24) = v23;
      v7 = v30;
    }

    v16 = sub_224252C(a3, v23, v7);
LABEL_35:
    v30 = v16;
    if (!v16)
    {
      goto LABEL_45;
    }

    goto LABEL_36;
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
    goto LABEL_35;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_45:
  v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

char *sub_1793248(uint64_t a1, char *__dst, _DWORD *a3)
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
    v7 = *(v6 + 20);
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, __dst + 1);
    }

    else
    {
      v8 = __dst + 2;
    }

    __dst = sub_17939C8(v6, v8, a3);
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v15 = *(a1 + 36);
    *v9 = 24;
    v9[1] = v15;
    if (v15 > 0x7F)
    {
      v9[1] = v15 | 0x80;
      v16 = v15 >> 7;
      v9[2] = v15 >> 7;
      v14 = v9 + 3;
      if (v15 >= 0x4000)
      {
        LOBYTE(v9) = v9[2];
        do
        {
          *(v14 - 1) = v9 | 0x80;
          LODWORD(v9) = v16 >> 7;
          *v14++ = v16 >> 7;
          v17 = v16 >> 14;
          v16 >>= 7;
        }

        while (v17);
      }
    }

    else
    {
      v14 = v9 + 2;
    }
  }

  else
  {
    v14 = v9;
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v14;
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

  if (*a3 - v14 >= v21)
  {
    v23 = v21;
    memcpy(v14, v22, v21);
    v14 += v23;
    return v14;
  }

  return sub_1957130(a3, v22, v21, v14);
}

uint64_t sub_179345C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    result = 0;
    goto LABEL_10;
  }

  if (v2)
  {
    v4 = sub_1793B78(*(a1 + 24));
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
  if ((v2 & 4) != 0)
  {
    result += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
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

std::string *sub_1793540(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
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

        data = sub_185D2C4(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_27822F0;
      }

      result = sub_128F8FC(data, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        HIDWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
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

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_1793628(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_1792F80(result);

    return sub_1793540(v4, a2);
  }

  return result;
}

uint64_t sub_179368C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_270A258;
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

void sub_1793708(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1793738(void *a1)
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

void sub_17937AC(void *a1)
{
  sub_1793738(a1);

  operator delete();
}

char *sub_17937E4(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_17939C8(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_1793B78(uint64_t a1)
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

void *sub_1793C2C(void *a1)
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

void sub_1793CA0(void *a1)
{
  sub_1793C2C(a1);

  operator delete();
}

uint64_t sub_1793CD8(uint64_t a1)
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

char *sub_1793CFC(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_1793EE0(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_1794090(uint64_t a1)
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

uint64_t sub_1794144(uint64_t a1)
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
  sub_13B31E8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1794208(uint64_t a1)
{
  sub_1794144(a1);

  operator delete();
}

uint64_t sub_1794240(uint64_t result)
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

uint64_t sub_179432C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 3)
    {
      if (v11 == 4)
      {
        if (v8 != 34)
        {
          goto LABEL_37;
        }

        *(a1 + 16) |= 1u;
        v24 = *(a1 + 8);
        v20 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v20 = *v20;
        }

        v21 = (a1 + 48);
      }

      else
      {
        if (v11 != 5 || v8 != 42)
        {
          goto LABEL_37;
        }

        *(a1 + 16) |= 2u;
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v21 = (a1 + 56);
      }

      v25 = sub_194DB04(v21, v20);
      v26 = sub_1958890(v25, *v32, a3);
LABEL_44:
      *v32 = v26;
      if (!v26)
      {
        goto LABEL_56;
      }

      goto LABEL_49;
    }

    if (v11 != 1)
    {
      break;
    }

    if (v8 != 8)
    {
      goto LABEL_37;
    }

    v5 |= 4u;
    LODWORD(v22) = *v7;
    if ((v22 & 0x80000000) == 0)
    {
      v23 = v7 + 1;
LABEL_48:
      *v32 = v23;
      *(a1 + 64) = v22;
      goto LABEL_49;
    }

    v22 = (*(v7 + 1) << 7) + v22 - 128;
    if ((*(v7 + 1) & 0x80000000) == 0)
    {
      v23 = v7 + 2;
      goto LABEL_48;
    }

    v30 = sub_19587DC(v7, v22);
    *v32 = v30;
    *(a1 + 64) = v31;
    if (!v30)
    {
      goto LABEL_56;
    }

LABEL_49:
    if (sub_195ADC0(a3, v32, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3 && v8 == 26)
  {
    v13 = v7 - 1;
    while (1)
    {
      v14 = v13 + 1;
      *v32 = v13 + 1;
      v15 = *(a1 + 40);
      if (v15 && (v16 = *(a1 + 32), v16 < *v15))
      {
        *(a1 + 32) = v16 + 1;
        v17 = *&v15[2 * v16 + 2];
      }

      else
      {
        v18 = sub_16F5A54(*(a1 + 24));
        v17 = sub_19593CC(a1 + 24, v18);
        v14 = *v32;
      }

      v13 = sub_22002C0(a3, v17, v14);
      *v32 = v13;
      if (!v13)
      {
        goto LABEL_56;
      }

      if (*a3 <= v13 || *v13 != 26)
      {
        goto LABEL_49;
      }
    }
  }

LABEL_37:
  if (v8)
  {
    v27 = (v8 & 7) == 4;
  }

  else
  {
    v27 = 1;
  }

  if (!v27)
  {
    v28 = *(a1 + 8);
    if (v28)
    {
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v29 = sub_11F1920((a1 + 8));
      v7 = *v32;
    }

    v26 = sub_1952690(v8, v29, v7, a3);
    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_56:
  *v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v32;
}

char *sub_17945D4(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
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
      *v6 = 26;
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

      v6 = sub_16E74A8(v13, v15, a3);
    }
  }

  if (v5)
  {
    v6 = sub_128AEEC(a3, 4, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  if ((v5 & 2) != 0)
  {
    v6 = sub_128AEEC(a3, 5, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v6);
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

uint64_t sub_17947D8(uint64_t a1)
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
  if ((v8 & 7) == 0)
  {
    goto LABEL_24;
  }

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
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v12 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v13 = *(v12 + 23);
  v14 = *(v12 + 8);
  if ((v13 & 0x80u) == 0)
  {
    v14 = v13;
  }

  v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) != 0)
  {
LABEL_20:
    v15 = *(a1 + 64);
    if (v15 < 0)
    {
      v16 = 11;
    }

    else
    {
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v16;
  }

LABEL_24:
  v17 = *(a1 + 8);
  if (v17)
  {
    v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v2 += v20;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_179496C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_270A3D8;
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

void sub_17949E8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1794A18(void *a1)
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

void sub_1794A8C(void *a1)
{
  sub_1794A18(a1);

  operator delete();
}

uint64_t sub_1794AC4(uint64_t a1)
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

char *sub_1794ADC(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_1794DD0(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

uint64_t sub_1794F68(uint64_t a1)
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

uint64_t sub_1794FE0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_270A458;
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
  return a1;
}

uint64_t sub_1795114(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2782330 && *(a1 + 32))
  {
    sub_16E7270();
    operator delete();
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

void sub_17951E0(uint64_t a1)
{
  sub_1795114(a1);

  operator delete();
}

uint64_t sub_1795218(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      result = sub_16E72AC(*(result + 32));
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_17952AC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      if (v7 == 18)
      {
        *(a1 + 16) |= 1u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = sub_194DB04((a1 + 24), v16);
        v14 = sub_1958890(v17, *v22, a3);
        goto LABEL_28;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 2u;
      v18 = *(a1 + 32);
      if (!v18)
      {
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v18 = sub_16F5A54(v20);
        *(a1 + 32) = v18;
        v6 = *v22;
      }

      v14 = sub_22002C0(a3, v18, v6);
      goto LABEL_28;
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
        return *v22;
      }

LABEL_34:
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
LABEL_28:
    *v22 = v14;
    if (!v14)
    {
      goto LABEL_34;
    }
  }

  return *v22;
}

char *sub_1795448(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 32);
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

  if (v6)
  {
    v4 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

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

  if ((*a3 - v4) >= v13)
  {
    v15 = v13;
    memcpy(v4, v14, v13);
    v4 += v15;
    return v4;
  }

  return sub_1957130(a3, v14, v13, v4);
}

uint64_t sub_1795580(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_16E7590(*(a1 + 32));
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

std::string *sub_179565C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
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
    }

    if ((v4 & 2) != 0)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
      v8 = v3[1].__r_.__value_.__l.__size_;
      if (!v8)
      {
        v9 = v3->__r_.__value_.__l.__size_;
        v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
        if (v9)
        {
          v10 = *v10;
        }

        v8 = sub_16F5A54(v10);
        v3[1].__r_.__value_.__l.__size_ = v8;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = &off_277E6F0;
      }

      result = sub_12F5A34(v8, v11);
    }
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1795760(uint64_t result)
{
  v1 = *(result + 128);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = (*(result + 136) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E72AC(v4);
      --v1;
    }

    while (v1);
    *(v2 + 128) = 0;
  }

  return result;
}

uint64_t sub_17957B0(uint64_t a1)
{
  result = *(a1 + 344);
  if (result)
  {
    result = sub_16E72AC(result);
  }

  *(a1 + 40) &= ~0x40u;
  return result;
}

uint64_t sub_17957E8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_270A4D8;
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
  *(a1 + 192) = 0;
  *(a1 + 200) = a2;
  *(a1 + 208) = a2;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = a2;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = a2;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = a2;
  *(a1 + 296) = &qword_278E990;
  *(a1 + 304) = &qword_278E990;
  *(a1 + 312) = &qword_278E990;
  *(a1 + 320) = &qword_278E990;
  *(a1 + 328) = &qword_278E990;
  *(a1 + 336) = &qword_278E990;
  *(a1 + 456) = 0;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 464) = 1;
  return a1;
}

void sub_17958C8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17958FC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v66 = (a1 + 8);
  *(a1 + 16) = 0;
  v65 = a1 + 16;
  *a1 = off_270A4D8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 68) = 0;
  *(a1 + 52) = 0;
  *(a1 + 60) = 0;
  *(a1 + 44) = 0;
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

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
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

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v14 = *(a2 + 104);
  if (v14)
  {
    v15 = *(a2 + 112);
    v16 = sub_19592E8(a1 + 96, v14);
    sub_1201B48(a1 + 96, v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v19 = *(a2 + 128);
  if (v19)
  {
    v20 = *(a2 + 136);
    v21 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_13B326C((a1 + 120), v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
    v22 = *(a1 + 128) + v19;
    *(a1 + 128) = v22;
    v23 = *(a1 + 136);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v24 = *(a2 + 152);
  if (v24)
  {
    v25 = *(a2 + 160);
    v26 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_13B326C((a1 + 144), v26, (v25 + 8), v24, **(a1 + 160) - *(a1 + 152));
    v27 = *(a1 + 152) + v24;
    *(a1 + 152) = v27;
    v28 = *(a1 + 160);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v29 = *(a2 + 176);
  if (v29)
  {
    v30 = *(a2 + 184);
    v31 = sub_19592E8(a1 + 168, *(a2 + 176));
    sub_193C66C((a1 + 168), v31, (v30 + 8), v29, **(a1 + 184) - *(a1 + 176));
    v32 = *(a1 + 176) + v29;
    *(a1 + 176) = v32;
    v33 = *(a1 + 184);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v34 = *(a2 + 192);
  if (v34)
  {
    sub_1958E5C((a1 + 192), v34);
    v35 = *(a1 + 200);
    *(a1 + 192) += *(a2 + 192);
    memcpy(v35, *(a2 + 200), 4 * *(a2 + 192));
  }

  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  v36 = *(a2 + 216);
  if (v36)
  {
    v37 = *(a2 + 224);
    v38 = sub_19592E8(a1 + 208, *(a2 + 216));
    sub_13B326C((a1 + 208), v38, (v37 + 8), v36, **(a1 + 224) - *(a1 + 216));
    v39 = *(a1 + 216) + v36;
    *(a1 + 216) = v39;
    v40 = *(a1 + 224);
    if (*v40 < v39)
    {
      *v40 = v39;
    }
  }

  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  v41 = *(a2 + 240);
  if (v41)
  {
    v42 = *(a2 + 248);
    v43 = sub_19592E8(a1 + 232, *(a2 + 240));
    sub_193C66C((a1 + 232), v43, (v42 + 8), v41, **(a1 + 248) - *(a1 + 240));
    v44 = *(a1 + 240) + v41;
    *(a1 + 240) = v44;
    v45 = *(a1 + 248);
    if (*v45 < v44)
    {
      *v45 = v44;
    }
  }

  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  v46 = *(a2 + 264);
  if (v46)
  {
    v47 = *(a2 + 272);
    v48 = sub_19592E8(a1 + 256, *(a2 + 264));
    sub_1201B48(a1 + 256, v48, (v47 + 8), v46, **(a1 + 272) - *(a1 + 264));
    v49 = *(a1 + 264) + v46;
    *(a1 + 264) = v49;
    v50 = *(a1 + 272);
    if (*v50 < v49)
    {
      *v50 = v49;
    }
  }

  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  v51 = *(a2 + 280);
  if (v51)
  {
    sub_1959094((a1 + 280), v51);
    v52 = *(a1 + 288);
    *(a1 + 280) += *(a2 + 280);
    memcpy(v52, *(a2 + 288), 8 * *(a2 + 280));
  }

  v53 = *(a2 + 8);
  if (v53)
  {
    sub_1957EF4(v66, (v53 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v65, a2 + 16);
  *(a1 + 296) = &qword_278E990;
  v54 = *(a2 + 40);
  if (v54)
  {
    v55 = (*v66 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v66)
    {
      v55 = *v55;
    }

    sub_194EA1C((a1 + 296), (*(a2 + 296) & 0xFFFFFFFFFFFFFFFELL), v55);
    v54 = *(a2 + 40);
  }

  *(a1 + 304) = &qword_278E990;
  if ((v54 & 2) != 0)
  {
    v56 = (*v66 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v66)
    {
      v56 = *v56;
    }

    sub_194EA1C((a1 + 304), (*(a2 + 304) & 0xFFFFFFFFFFFFFFFELL), v56);
    v54 = *(a2 + 40);
  }

  *(a1 + 312) = &qword_278E990;
  if ((v54 & 4) != 0)
  {
    v57 = (*v66 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v66)
    {
      v57 = *v57;
    }

    sub_194EA1C((a1 + 312), (*(a2 + 312) & 0xFFFFFFFFFFFFFFFELL), v57);
    v54 = *(a2 + 40);
  }

  *(a1 + 320) = &qword_278E990;
  if ((v54 & 8) != 0)
  {
    v58 = (*v66 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v66)
    {
      v58 = *v58;
    }

    sub_194EA1C((a1 + 320), (*(a2 + 320) & 0xFFFFFFFFFFFFFFFELL), v58);
    v54 = *(a2 + 40);
  }

  *(a1 + 328) = &qword_278E990;
  if ((v54 & 0x10) != 0)
  {
    v59 = (*v66 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v66)
    {
      v59 = *v59;
    }

    sub_194EA1C((a1 + 328), (*(a2 + 328) & 0xFFFFFFFFFFFFFFFELL), v59);
    v54 = *(a2 + 40);
  }

  *(a1 + 336) = &qword_278E990;
  if ((v54 & 0x20) != 0)
  {
    v60 = (*v66 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v66)
    {
      v60 = *v60;
    }

    sub_194EA1C((a1 + 336), (*(a2 + 336) & 0xFFFFFFFFFFFFFFFELL), v60);
    v54 = *(a2 + 40);
  }

  if ((v54 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 344) = 0;
  if ((v54 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 352) = 0;
  if ((v54 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 360) = 0;
  if ((v54 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 368) = 0;
  if ((v54 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 376) = 0;
  if ((v54 & 0x800) != 0)
  {
    operator new();
  }

  *(a1 + 384) = 0;
  *(a1 + 392) = *(a2 + 392);
  v61 = *(a2 + 408);
  v62 = *(a2 + 424);
  v63 = *(a2 + 440);
  *(a1 + 452) = *(a2 + 452);
  *(a1 + 424) = v62;
  *(a1 + 440) = v63;
  *(a1 + 408) = v61;
  return a1;
}

void *sub_17961E0(void *a1)
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

  sub_17962D8(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956ABC((a1 + 35));
  sub_1956AFC(a1 + 32);
  sub_193A4E8(a1 + 29);
  sub_13B31E8(a1 + 26);
  sub_1956ABC((a1 + 24));
  sub_193A4E8(a1 + 21);
  sub_13B31E8(a1 + 18);
  sub_13B31E8(a1 + 15);
  sub_1956AFC(a1 + 12);
  sub_1956AFC(a1 + 9);
  sub_1956AFC(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_17962D8(uint64_t result)
{
  v1 = result;
  if (*(result + 296) != &qword_278E990)
  {
    sub_194E89C((result + 296));
  }

  if (*(result + 304) != &qword_278E990)
  {
    sub_194E89C((result + 304));
  }

  if (*(result + 312) != &qword_278E990)
  {
    sub_194E89C((result + 312));
  }

  if (*(result + 320) != &qword_278E990)
  {
    sub_194E89C((result + 320));
  }

  if (*(result + 328) != &qword_278E990)
  {
    sub_194E89C((result + 328));
  }

  if (*(result + 336) != &qword_278E990)
  {
    sub_194E89C((result + 336));
  }

  if (result != &off_2782358)
  {
    if (*(result + 344))
    {
      sub_16E7270();
      operator delete();
    }

    if (*(result + 352))
    {
      sub_16E7270();
      operator delete();
    }

    if (*(result + 360))
    {
      sub_153BF18();
      operator delete();
    }

    v2 = *(result + 368);
    if (v2)
    {
      sub_1794A18(v2);
      operator delete();
    }

    if (*(v1 + 376))
    {
      sub_16E7270();
      operator delete();
    }

    result = *(v1 + 384);
    if (result)
    {
      sub_1795114(result);

      operator delete();
    }
  }

  return result;
}

void sub_1796450(void *a1)
{
  sub_17961E0(a1);

  operator delete();
}

uint64_t sub_1796488(uint64_t a1)
{
  sub_1951124((a1 + 16));
  sub_12A41D0(a1 + 48);
  sub_12A41D0(a1 + 72);
  sub_12A41D0(a1 + 96);
  v2 = *(a1 + 128);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 136) + 8);
    do
    {
      v4 = *v3++;
      sub_16E72AC(v4);
      --v2;
    }

    while (v2);
    *(a1 + 128) = 0;
  }

  v5 = *(a1 + 152);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 160) + 8);
    do
    {
      v7 = *v6++;
      sub_16E72AC(v7);
      --v5;
    }

    while (v5);
    *(a1 + 152) = 0;
  }

  v8 = *(a1 + 176);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 184) + 8);
    do
    {
      v10 = *v9++;
      sub_1794240(v10);
      --v8;
    }

    while (v8);
    *(a1 + 176) = 0;
  }

  *(a1 + 192) = 0;
  v11 = *(a1 + 216);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 224) + 8);
    do
    {
      v13 = *v12++;
      sub_16E72AC(v13);
      --v11;
    }

    while (v11);
    *(a1 + 216) = 0;
  }

  v14 = *(a1 + 240);
  if (v14 >= 1)
  {
    v15 = (*(a1 + 248) + 8);
    do
    {
      v16 = *v15++;
      sub_1794240(v16);
      --v14;
    }

    while (v14);
    *(a1 + 240) = 0;
  }

  result = sub_12A41D0(a1 + 256);
  *(a1 + 280) = 0;
  v18 = *(a1 + 40);
  if (!v18)
  {
    goto LABEL_31;
  }

  if (v18)
  {
    v23 = *(a1 + 296) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v23 + 23) < 0)
    {
      **v23 = 0;
      *(v23 + 8) = 0;
      if ((v18 & 2) != 0)
      {
        goto LABEL_55;
      }
    }

    else
    {
      *v23 = 0;
      *(v23 + 23) = 0;
      if ((v18 & 2) != 0)
      {
        goto LABEL_55;
      }
    }

LABEL_24:
    if ((v18 & 4) == 0)
    {
      goto LABEL_25;
    }

LABEL_59:
    v25 = *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v25 + 23) < 0)
    {
      **v25 = 0;
      *(v25 + 8) = 0;
      if ((v18 & 8) != 0)
      {
        goto LABEL_63;
      }
    }

    else
    {
      *v25 = 0;
      *(v25 + 23) = 0;
      if ((v18 & 8) != 0)
      {
        goto LABEL_63;
      }
    }

LABEL_26:
    if ((v18 & 0x10) == 0)
    {
      goto LABEL_27;
    }

LABEL_67:
    v27 = *(a1 + 328) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v27 + 23) < 0)
    {
      **v27 = 0;
      *(v27 + 8) = 0;
      if ((v18 & 0x20) != 0)
      {
        goto LABEL_71;
      }
    }

    else
    {
      *v27 = 0;
      *(v27 + 23) = 0;
      if ((v18 & 0x20) != 0)
      {
        goto LABEL_71;
      }
    }

LABEL_28:
    if ((v18 & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_75;
  }

  if ((v18 & 2) == 0)
  {
    goto LABEL_24;
  }

LABEL_55:
  v24 = *(a1 + 304) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v24 + 23) < 0)
  {
    **v24 = 0;
    *(v24 + 8) = 0;
    if ((v18 & 4) != 0)
    {
      goto LABEL_59;
    }
  }

  else
  {
    *v24 = 0;
    *(v24 + 23) = 0;
    if ((v18 & 4) != 0)
    {
      goto LABEL_59;
    }
  }

LABEL_25:
  if ((v18 & 8) == 0)
  {
    goto LABEL_26;
  }

LABEL_63:
  v26 = *(a1 + 320) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v26 + 23) < 0)
  {
    **v26 = 0;
    *(v26 + 8) = 0;
    if ((v18 & 0x10) != 0)
    {
      goto LABEL_67;
    }
  }

  else
  {
    *v26 = 0;
    *(v26 + 23) = 0;
    if ((v18 & 0x10) != 0)
    {
      goto LABEL_67;
    }
  }

LABEL_27:
  if ((v18 & 0x20) == 0)
  {
    goto LABEL_28;
  }

LABEL_71:
  v28 = *(a1 + 336) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v28 + 23) < 0)
  {
    **v28 = 0;
    *(v28 + 8) = 0;
    if ((v18 & 0x40) != 0)
    {
      goto LABEL_75;
    }

LABEL_29:
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  *v28 = 0;
  *(v28 + 23) = 0;
  if ((v18 & 0x40) == 0)
  {
    goto LABEL_29;
  }

LABEL_75:
  result = sub_16E72AC(*(a1 + 344));
  if ((v18 & 0x80) != 0)
  {
LABEL_30:
    result = sub_16E72AC(*(a1 + 352));
  }

LABEL_31:
  if ((v18 & 0xF00) != 0)
  {
    if ((v18 & 0x100) != 0)
    {
      result = sub_144E31C(*(a1 + 360));
    }

    if ((v18 & 0x200) != 0)
    {
      v19 = *(a1 + 368);
      v20 = *(v19 + 8);
      result = v19 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v20)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v18 & 0x400) != 0)
    {
      result = sub_16E72AC(*(a1 + 376));
    }

    if ((v18 & 0x800) != 0)
    {
      result = sub_1795218(*(a1 + 384));
    }
  }

  if ((v18 & 0xF000) != 0)
  {
    *(a1 + 392) = 0;
    *(a1 + 395) = 0;
  }

  if ((v18 & 0xFF0000) != 0)
  {
    *(a1 + 407) = 0;
    *(a1 + 399) = 0;
    *(a1 + 415) = 0;
  }

  if ((v18 & 0x7F000000) != 0)
  {
    *(a1 + 456) = 0;
    *(a1 + 424) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 464) = 1;
  }

  v22 = *(a1 + 8);
  v21 = a1 + 8;
  *(v21 + 32) = 0;
  if (v22)
  {

    return sub_1957EA8(v21);
  }

  return result;
}

BOOL sub_1796880(unsigned int a1)
{
  result = 1;
  if (a1 - 4 > 0x3D || ((1 << (a1 - 4)) & 0x3A2CFF8080001001) == 0)
  {
    return a1 < 3;
  }

  return result;
}

char *sub_17968D0(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 392);
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
    v6 = sub_128AEEC(a3, 2, *(a1 + 296) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  v11 = *(a1 + 56);
  if (v11 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = *(*(a1 + 64) + v12);
      v14 = *(v13 + 23);
      if (v14 < 0 && (v14 = v13[1], v14 > 127) || (*a3 - v6 + 14) < v14)
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
        memcpy(v6 + 2, v13, v14);
        v6 = &v15[v14];
      }

      v12 += 8;
      --v11;
    }

    while (v11);
  }

  if ((v5 & 2) != 0)
  {
    v6 = sub_128AEEC(a3, 4, *(a1 + 304) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  v16 = *(a1 + 80);
  if (v16 >= 1)
  {
    v17 = 8;
    do
    {
      v18 = *(*(a1 + 88) + v17);
      v19 = *(v18 + 23);
      if (v19 < 0 && (v19 = v18[1], v19 > 127) || (*a3 - v6 + 14) < v19)
      {
        v6 = sub_1957480(a3, 5, v18, v6);
      }

      else
      {
        *v6 = 42;
        v6[1] = v19;
        if (*(v18 + 23) < 0)
        {
          v18 = *v18;
        }

        v20 = v6 + 2;
        memcpy(v6 + 2, v18, v19);
        v6 = &v20[v19];
      }

      v17 += 8;
      --v16;
    }

    while (v16);
  }

  if ((v5 & 4) != 0)
  {
    v6 = sub_128AEEC(a3, 6, *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  v21 = *(a1 + 104);
  if (v21 >= 1)
  {
    v22 = 8;
    do
    {
      v23 = *(*(a1 + 112) + v22);
      v24 = *(v23 + 23);
      if (v24 < 0 && (v24 = v23[1], v24 > 127) || (*a3 - v6 + 14) < v24)
      {
        v6 = sub_1957480(a3, 7, v23, v6);
      }

      else
      {
        *v6 = 58;
        v6[1] = v24;
        if (*(v23 + 23) < 0)
        {
          v23 = *v23;
        }

        v25 = v6 + 2;
        memcpy(v6 + 2, v23, v24);
        v6 = &v25[v24];
      }

      v22 += 8;
      --v21;
    }

    while (v21);
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v26 = *(a1 + 396);
    *v6 = 64;
    v6[1] = v26;
    v6 += 2;
  }

  if ((v5 & 0x4000) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v27 = *(a1 + 397);
    *v6 = 72;
    v6[1] = v27;
    v6 += 2;
  }

  v28 = *(a1 + 128);
  if (v28)
  {
    for (i = 0; i != v28; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v30 = *(*(a1 + 136) + 8 * i + 8);
      *v6 = 82;
      v31 = *(v30 + 20);
      v6[1] = v31;
      if (v31 > 0x7F)
      {
        v32 = sub_19575D0(v31, v6 + 1);
      }

      else
      {
        v32 = v6 + 2;
      }

      v6 = sub_16E74A8(v30, v32, a3);
    }
  }

  v33 = *(a1 + 152);
  if (v33)
  {
    for (j = 0; j != v33; ++j)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v35 = *(*(a1 + 160) + 8 * j + 8);
      *v6 = 90;
      v36 = *(v35 + 20);
      v6[1] = v36;
      if (v36 > 0x7F)
      {
        v37 = sub_19575D0(v36, v6 + 1);
      }

      else
      {
        v37 = v6 + 2;
      }

      v6 = sub_16E74A8(v35, v37, a3);
    }
  }

  v38 = *(a1 + 176);
  if (v38)
  {
    for (k = 0; k != v38; ++k)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v40 = *(*(a1 + 184) + 8 * k + 8);
      *v6 = 98;
      v41 = *(v40 + 20);
      v6[1] = v41;
      if (v41 > 0x7F)
      {
        v42 = sub_19575D0(v41, v6 + 1);
      }

      else
      {
        v42 = v6 + 2;
      }

      v6 = sub_17945D4(v40, v42, a3);
    }
  }

  if ((v5 & 0x8000) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v44 = *(a1 + 398);
    *v6 = 112;
    v6[1] = v44;
    v6 += 2;
    if ((v5 & 0x10000) == 0)
    {
LABEL_83:
      if ((v5 & 0x200000) == 0)
      {
        goto LABEL_84;
      }

LABEL_92:
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v46 = *(a1 + 420);
      *v6 = 384;
      v6[2] = v46;
      v6 += 3;
      if ((v5 & 0x40000000) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_95;
    }
  }

  else if ((v5 & 0x10000) == 0)
  {
    goto LABEL_83;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v45 = *(a1 + 399);
  *v6 = 120;
  v6[1] = v45;
  v6 += 2;
  if ((v5 & 0x200000) != 0)
  {
    goto LABEL_92;
  }

LABEL_84:
  if ((v5 & 0x40000000) == 0)
  {
LABEL_85:
    v43 = v6;
    goto LABEL_102;
  }

LABEL_95:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v47 = *(a1 + 464);
  *v6 = 392;
  v6[2] = v47;
  if (v47 > 0x7F)
  {
    v6[2] = v47 | 0x80;
    v48 = v47 >> 7;
    v6[3] = v47 >> 7;
    v43 = v6 + 4;
    if (v47 >= 0x4000)
    {
      LOBYTE(v49) = v6[3];
      do
      {
        *(v43 - 1) = v49 | 0x80;
        v49 = v48 >> 7;
        *v43++ = v48 >> 7;
        v50 = v48 >> 14;
        v48 >>= 7;
      }

      while (v50);
    }
  }

  else
  {
    v43 = v6 + 3;
  }

LABEL_102:
  if ((v5 & 0x20000) != 0)
  {
    if (*a3 <= v43)
    {
      v43 = sub_225EB68(a3, v43);
    }

    v52 = *(a1 + 400);
    *v43 = 400;
    v43[2] = v52;
    if (v52 > 0x7F)
    {
      v43[2] = v52 | 0x80;
      v53 = v52 >> 7;
      v43[3] = v52 >> 7;
      v51 = v43 + 4;
      if (v52 >= 0x4000)
      {
        LOBYTE(v54) = v43[3];
        do
        {
          *(v51 - 1) = v54 | 0x80;
          v54 = v53 >> 7;
          *v51++ = v53 >> 7;
          v55 = v53 >> 14;
          v53 >>= 7;
        }

        while (v55);
      }
    }

    else
    {
      v51 = v43 + 3;
    }
  }

  else
  {
    v51 = v43;
  }

  if ((v5 & 0x40000) != 0)
  {
    if (*a3 <= v51)
    {
      v51 = sub_225EB68(a3, v51);
    }

    v57 = *(a1 + 404);
    *v51 = 408;
    v51[2] = v57;
    if (v57 > 0x7F)
    {
      v51[2] = v57 | 0x80;
      v58 = v57 >> 7;
      v51[3] = v57 >> 7;
      v56 = v51 + 4;
      if (v57 >= 0x4000)
      {
        LOBYTE(v51) = v51[3];
        do
        {
          *(v56 - 1) = v51 | 0x80;
          v51 = (v58 >> 7);
          *v56++ = v58 >> 7;
          v59 = v58 >> 14;
          v58 >>= 7;
        }

        while (v59);
      }
    }

    else
    {
      v56 = v51 + 3;
    }
  }

  else
  {
    v56 = v51;
  }

  if ((v5 & 0x80000) != 0)
  {
    if (*a3 <= v56)
    {
      v56 = sub_225EB68(a3, v56);
    }

    v61 = *(a1 + 408);
    *v56 = 416;
    v56[2] = v61;
    if (v61 > 0x7F)
    {
      v56[2] = v61 | 0x80;
      v62 = v61 >> 7;
      v56[3] = v61 >> 7;
      v60 = v56 + 4;
      if (v61 >= 0x4000)
      {
        LOBYTE(v63) = v56[3];
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
      v60 = v56 + 3;
    }
  }

  else
  {
    v60 = v56;
  }

  if ((v5 & 0x100000) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v66 = *(a1 + 416);
    *v60 = 424;
    v60[2] = v66;
    if (v66 > 0x7F)
    {
      v60[2] = v66 | 0x80;
      v67 = v66 >> 7;
      v60[3] = v66 >> 7;
      v65 = v60 + 4;
      if (v66 >= 0x4000)
      {
        LOBYTE(v60) = v60[3];
        do
        {
          *(v65 - 1) = v60 | 0x80;
          v60 = (v67 >> 7);
          *v65++ = v67 >> 7;
          v68 = v67 >> 14;
          v67 >>= 7;
        }

        while (v68);
      }
    }

    else
    {
      v65 = v60 + 3;
    }
  }

  else
  {
    v65 = v60;
  }

  v69 = *(a1 + 192);
  if (v69 < 1)
  {
    v72 = v65;
  }

  else
  {
    for (m = 0; m != v69; ++m)
    {
      if (*a3 <= v65)
      {
        v65 = sub_225EB68(a3, v65);
      }

      v71 = *(*(a1 + 200) + 4 * m);
      *v65 = 432;
      v65[2] = v71;
      if (v71 > 0x7F)
      {
        v65[2] = v71 | 0x80;
        v73 = v71 >> 7;
        v65[3] = v71 >> 7;
        v72 = v65 + 4;
        if (v71 >= 0x4000)
        {
          LOBYTE(v74) = v65[3];
          do
          {
            *(v72 - 1) = v74 | 0x80;
            v74 = v73 >> 7;
            *v72++ = v73 >> 7;
            v75 = v73 >> 14;
            v73 >>= 7;
          }

          while (v75);
        }
      }

      else
      {
        v72 = v65 + 3;
      }

      v65 = v72;
    }
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v72)
    {
      v72 = sub_225EB68(a3, v72);
    }

    v76 = *(a1 + 344);
    *v72 = 442;
    v77 = *(v76 + 20);
    v72[2] = v77;
    if (v77 > 0x7F)
    {
      v78 = sub_19575D0(v77, v72 + 2);
    }

    else
    {
      v78 = v72 + 3;
    }

    v72 = sub_16E74A8(v76, v78, a3);
    if ((v5 & 0x80) == 0)
    {
LABEL_152:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_153;
      }

      goto LABEL_169;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_152;
  }

  if (*a3 <= v72)
  {
    v72 = sub_225EB68(a3, v72);
  }

  v79 = *(a1 + 352);
  *v72 = 450;
  v80 = *(v79 + 20);
  v72[2] = v80;
  if (v80 > 0x7F)
  {
    v81 = sub_19575D0(v80, v72 + 2);
  }

  else
  {
    v81 = v72 + 3;
  }

  v72 = sub_16E74A8(v79, v81, a3);
  if ((v5 & 0x100) == 0)
  {
LABEL_153:
    if ((v5 & 8) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_175;
  }

LABEL_169:
  if (*a3 <= v72)
  {
    v72 = sub_225EB68(a3, v72);
  }

  v82 = *(a1 + 360);
  *v72 = 458;
  v83 = *(v82 + 44);
  v72[2] = v83;
  if (v83 > 0x7F)
  {
    v84 = sub_19575D0(v83, v72 + 2);
  }

  else
  {
    v84 = v72 + 3;
  }

  v72 = sub_153C1A4(v82, v84, a3);
  if ((v5 & 8) == 0)
  {
LABEL_154:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_176;
  }

LABEL_175:
  v72 = sub_128AEEC(a3, 26, *(a1 + 320) & 0xFFFFFFFFFFFFFFFELL, v72);
  if ((v5 & 0x10) == 0)
  {
LABEL_155:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_180;
    }

    goto LABEL_177;
  }

LABEL_176:
  v72 = sub_128AEEC(a3, 27, *(a1 + 328) & 0xFFFFFFFFFFFFFFFELL, v72);
  if ((v5 & 0x400000) == 0)
  {
    goto LABEL_180;
  }

LABEL_177:
  if (*a3 <= v72)
  {
    v72 = sub_225EB68(a3, v72);
  }

  v85 = *(a1 + 421);
  *v72 = 480;
  v72[2] = v85;
  v72 += 3;
LABEL_180:
  v86 = *(a1 + 216);
  if (v86)
  {
    for (n = 0; n != v86; ++n)
    {
      if (*a3 <= v72)
      {
        v72 = sub_225EB68(a3, v72);
      }

      v88 = *(*(a1 + 224) + 8 * n + 8);
      *v72 = 490;
      v89 = *(v88 + 20);
      v72[2] = v89;
      if (v89 > 0x7F)
      {
        v90 = sub_19575D0(v89, v72 + 2);
      }

      else
      {
        v90 = v72 + 3;
      }

      v72 = sub_16E74A8(v88, v90, a3);
    }
  }

  if ((v5 & 0x1000000) != 0)
  {
    if (*a3 <= v72)
    {
      v72 = sub_225EB68(a3, v72);
    }

    v92 = *(a1 + 424);
    *v72 = 496;
    v72[2] = v92;
    if (v92 > 0x7F)
    {
      v72[2] = v92 | 0x80;
      v93 = v92 >> 7;
      v72[3] = v92 >> 7;
      v91 = v72 + 4;
      if (v92 >= 0x4000)
      {
        LOBYTE(v94) = v72[3];
        do
        {
          *(v91 - 1) = v94 | 0x80;
          v94 = v93 >> 7;
          *v91++ = v93 >> 7;
          v95 = v93 >> 14;
          v93 >>= 7;
        }

        while (v95);
      }
    }

    else
    {
      v91 = v72 + 3;
    }
  }

  else
  {
    v91 = v72;
  }

  if ((v5 & 0x2000000) != 0)
  {
    if (*a3 <= v91)
    {
      v91 = sub_225EB68(a3, v91);
    }

    v97 = *(a1 + 432);
    *v91 = 504;
    v91[2] = v97;
    if (v97 > 0x7F)
    {
      v91[2] = v97 | 0x80;
      v98 = v97 >> 7;
      v91[3] = v97 >> 7;
      v96 = v91 + 4;
      if (v97 >= 0x4000)
      {
        LOBYTE(v99) = v91[3];
        do
        {
          *(v96 - 1) = v99 | 0x80;
          v99 = v98 >> 7;
          *v96++ = v98 >> 7;
          v100 = v98 >> 14;
          v98 >>= 7;
        }

        while (v100);
      }
    }

    else
    {
      v96 = v91 + 3;
    }
  }

  else
  {
    v96 = v91;
  }

  if ((v5 & 0x4000000) != 0)
  {
    if (*a3 <= v96)
    {
      v96 = sub_225EB68(a3, v96);
    }

    v102 = *(a1 + 440);
    *v96 = 640;
    v96[2] = v102;
    if (v102 > 0x7F)
    {
      v96[2] = v102 | 0x80;
      v103 = v102 >> 7;
      v96[3] = v102 >> 7;
      v101 = v96 + 4;
      if (v102 >= 0x4000)
      {
        LOBYTE(v96) = v96[3];
        do
        {
          *(v101 - 1) = v96 | 0x80;
          v96 = (v103 >> 7);
          *v101++ = v103 >> 7;
          v104 = v103 >> 14;
          v103 >>= 7;
        }

        while (v104);
      }
    }

    else
    {
      v101 = v96 + 3;
    }
  }

  else
  {
    v101 = v96;
  }

  if ((v5 & 0x20) != 0)
  {
    v101 = sub_128AEEC(a3, 33, *(a1 + 336) & 0xFFFFFFFFFFFFFFFELL, v101);
  }

  v105 = *(a1 + 240);
  if (v105)
  {
    for (ii = 0; ii != v105; ++ii)
    {
      if (*a3 <= v101)
      {
        v101 = sub_225EB68(a3, v101);
      }

      v107 = *(*(a1 + 248) + 8 * ii + 8);
      *v101 = 658;
      v108 = *(v107 + 20);
      v101[2] = v108;
      if (v108 > 0x7F)
      {
        v109 = sub_19575D0(v108, v101 + 2);
      }

      else
      {
        v109 = v101 + 3;
      }

      v101 = sub_17945D4(v107, v109, a3);
    }
  }

  if ((v5 & 0x8000000) != 0)
  {
    if (*a3 <= v101)
    {
      v101 = sub_225EB68(a3, v101);
    }

    v110 = *(a1 + 448);
    *v101 = 669;
    *(v101 + 2) = v110;
    v101 += 6;
  }

  v111 = *(a1 + 264);
  if (v111 >= 1)
  {
    v112 = 8;
    do
    {
      v113 = *(*(a1 + 272) + v112);
      v114 = *(v113 + 23);
      if (v114 < 0 && (v114 = v113[1], v114 > 127) || (*a3 - v101 + 13) < v114)
      {
        v101 = sub_1957480(a3, 36, v113, v101);
      }

      else
      {
        *v101 = 674;
        v101[2] = v114;
        if (*(v113 + 23) < 0)
        {
          v113 = *v113;
        }

        v115 = v101 + 3;
        memcpy(v101 + 3, v113, v114);
        v101 = &v115[v114];
      }

      v112 += 8;
      --v111;
    }

    while (v111);
  }

  if ((v5 & 0x10000000) != 0)
  {
    if (*a3 <= v101)
    {
      v101 = sub_225EB68(a3, v101);
    }

    v117 = *(a1 + 452);
    *v101 = 680;
    v101[2] = v117;
    if (v117 > 0x7F)
    {
      v101[2] = v117 | 0x80;
      v118 = v117 >> 7;
      v101[3] = v117 >> 7;
      v116 = v101 + 4;
      if (v117 >= 0x4000)
      {
        LOBYTE(v119) = v101[3];
        do
        {
          *(v116 - 1) = v119 | 0x80;
          v119 = v118 >> 7;
          *v116++ = v118 >> 7;
          v120 = v118 >> 14;
          v118 >>= 7;
        }

        while (v120);
      }
    }

    else
    {
      v116 = v101 + 3;
    }
  }

  else
  {
    v116 = v101;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v116)
    {
      v116 = sub_225EB68(a3, v116);
    }

    v121 = *(a1 + 368);
    *v116 = 690;
    v122 = *(v121 + 20);
    v116[2] = v122;
    if (v122 > 0x7F)
    {
      v123 = sub_19575D0(v122, v116 + 2);
    }

    else
    {
      v123 = v116 + 3;
    }

    v116 = sub_1794DD0(v121, v123, a3);
  }

  if ((v5 & 0x20000000) != 0)
  {
    if (*a3 <= v116)
    {
      v116 = sub_225EB68(a3, v116);
    }

    v125 = *(a1 + 456);
    *v116 = 696;
    v116[2] = v125;
    if (v125 > 0x7F)
    {
      v116[2] = v125 | 0x80;
      v126 = v125 >> 7;
      v116[3] = v125 >> 7;
      v124 = v116 + 4;
      if (v125 >= 0x4000)
      {
        LOBYTE(v116) = v116[3];
        do
        {
          *(v124 - 1) = v116 | 0x80;
          v116 = (v126 >> 7);
          *v124++ = v126 >> 7;
          v127 = v126 >> 14;
          v126 >>= 7;
        }

        while (v127);
      }
    }

    else
    {
      v124 = v116 + 3;
    }
  }

  else
  {
    v124 = v116;
  }

  v128 = *(a1 + 280);
  if (v128 < 1)
  {
    v131 = v124;
  }

  else
  {
    for (jj = 0; jj != v128; ++jj)
    {
      if (*a3 <= v124)
      {
        v124 = sub_225EB68(a3, v124);
      }

      v130 = *(*(a1 + 288) + 8 * jj);
      *v124 = 704;
      v124[2] = v130;
      if (v130 > 0x7F)
      {
        v124[2] = v130 | 0x80;
        v132 = v130 >> 7;
        v124[3] = v130 >> 7;
        v131 = v124 + 4;
        if (v130 >= 0x4000)
        {
          LOBYTE(v124) = v124[3];
          do
          {
            *(v131 - 1) = v124 | 0x80;
            v124 = (v132 >> 7);
            *v131++ = v132 >> 7;
            v133 = v132 >> 14;
            v132 >>= 7;
          }

          while (v133);
        }
      }

      else
      {
        v131 = v124 + 3;
      }

      v124 = v131;
    }
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v131)
    {
      v131 = sub_225EB68(a3, v131);
    }

    v134 = *(a1 + 376);
    *v131 = 714;
    v135 = *(v134 + 20);
    v131[2] = v135;
    if (v135 > 0x7F)
    {
      v136 = sub_19575D0(v135, v131 + 2);
    }

    else
    {
      v136 = v131 + 3;
    }

    v131 = sub_16E74A8(v134, v136, a3);
    if ((v5 & 0x800) == 0)
    {
LABEL_279:
      if ((v5 & 0x800000) == 0)
      {
        goto LABEL_296;
      }

      goto LABEL_293;
    }
  }

  else if ((v5 & 0x800) == 0)
  {
    goto LABEL_279;
  }

  if (*a3 <= v131)
  {
    v131 = sub_225EB68(a3, v131);
  }

  v137 = *(a1 + 384);
  *v131 = 722;
  v138 = *(v137 + 20);
  v131[2] = v138;
  if (v138 > 0x7F)
  {
    v139 = sub_19575D0(v138, v131 + 2);
  }

  else
  {
    v139 = v131 + 3;
  }

  v131 = sub_1795448(v137, v139, a3);
  if ((v5 & 0x800000) != 0)
  {
LABEL_293:
    if (*a3 <= v131)
    {
      v131 = sub_225EB68(a3, v131);
    }

    v140 = *(a1 + 422);
    *v131 = 728;
    v131[2] = v140;
    v131 += 3;
  }

LABEL_296:
  if (*(a1 + 26))
  {
    v131 = sub_1953428(a1 + 16, 200, 2000, v131, a3);
  }

  v141 = *(a1 + 8);
  if ((v141 & 1) == 0)
  {
    return v131;
  }

  v143 = v141 & 0xFFFFFFFFFFFFFFFCLL;
  v144 = *(v143 + 31);
  if (v144 < 0)
  {
    v145 = *(v143 + 8);
    v144 = *(v143 + 16);
  }

  else
  {
    v145 = (v143 + 8);
  }

  if ((*a3 - v131) >= v144)
  {
    v146 = v144;
    memcpy(v131, v145, v144);
    v131 += v146;
    return v131;
  }

  return sub_1957130(a3, v145, v144, v131);
}

uint64_t sub_1797A98(uint64_t a1)
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
  if (v9 >= 1)
  {
    v11 = (*(a1 + 88) + 8);
    do
    {
      v12 = *v11++;
      v13 = *(v12 + 23);
      v14 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v14 = v13;
      }

      v10 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      --v9;
    }

    while (v9);
  }

  v15 = *(a1 + 104);
  v16 = v10 + v15;
  if (v15 >= 1)
  {
    v17 = (*(a1 + 112) + 8);
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

  v21 = *(a1 + 128);
  v22 = v16 + v21;
  v23 = *(a1 + 136);
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
      v27 = sub_16E7590(v26);
      v22 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6);
      v25 -= 8;
    }

    while (v25);
  }

  v28 = *(a1 + 152);
  v29 = v22 + v28;
  v30 = *(a1 + 160);
  if (v30)
  {
    v31 = (v30 + 8);
  }

  else
  {
    v31 = 0;
  }

  if (v28)
  {
    v32 = 8 * v28;
    do
    {
      v33 = *v31++;
      v34 = sub_16E7590(v33);
      v29 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6);
      v32 -= 8;
    }

    while (v32);
  }

  v35 = *(a1 + 176);
  v36 = v29 + v35;
  v37 = *(a1 + 184);
  if (v37)
  {
    v38 = (v37 + 8);
  }

  else
  {
    v38 = 0;
  }

  if (v35)
  {
    v39 = 8 * v35;
    do
    {
      v40 = *v38++;
      v41 = sub_17947D8(v40);
      v36 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6);
      v39 -= 8;
    }

    while (v39);
  }

  v42 = *(a1 + 192);
  if (v42)
  {
    v43 = 0;
    v44 = 0;
    do
    {
      v45 = *(*(a1 + 200) + 4 * v44);
      if (v45 < 0)
      {
        v46 = 10;
      }

      else
      {
        v46 = (9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6;
      }

      v43 += v46;
      ++v44;
    }

    while (v42 != v44);
  }

  else
  {
    v43 = 0;
  }

  v47 = *(a1 + 216);
  v48 = v43 + v36 + 2 * (v47 + v42);
  v49 = *(a1 + 224);
  if (v49)
  {
    v50 = (v49 + 8);
  }

  else
  {
    v50 = 0;
  }

  if (v47)
  {
    v51 = 8 * v47;
    do
    {
      v52 = *v50++;
      v53 = sub_16E7590(v52);
      v48 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6);
      v51 -= 8;
    }

    while (v51);
  }

  v54 = *(a1 + 240);
  v55 = v48 + 2 * v54;
  v56 = *(a1 + 248);
  if (v56)
  {
    v57 = (v56 + 8);
  }

  else
  {
    v57 = 0;
  }

  if (v54)
  {
    v58 = 8 * v54;
    do
    {
      v59 = *v57++;
      v60 = sub_17947D8(v59);
      v55 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6);
      v58 -= 8;
    }

    while (v58);
  }

  v61 = *(a1 + 264);
  v62 = v55 + 2 * v61;
  if (v61 >= 1)
  {
    v63 = (*(a1 + 272) + 8);
    do
    {
      v64 = *v63++;
      v65 = *(v64 + 23);
      v66 = *(v64 + 8);
      if ((v65 & 0x80u) == 0)
      {
        v66 = v65;
      }

      v62 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6);
      --v61;
    }

    while (v61);
  }

  v67 = sub_1959F14((a1 + 280)) + v62 + 2 * *(a1 + 280);
  v68 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    goto LABEL_69;
  }

  if (v68)
  {
    v82 = *(a1 + 296) & 0xFFFFFFFFFFFFFFFELL;
    v83 = *(v82 + 23);
    v84 = *(v82 + 8);
    if ((v83 & 0x80u) == 0)
    {
      v84 = v83;
    }

    v67 += v84 + ((9 * (__clz(v84 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v68 & 2) == 0)
    {
LABEL_62:
      if ((v68 & 4) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_118;
    }
  }

  else if ((v68 & 2) == 0)
  {
    goto LABEL_62;
  }

  v85 = *(a1 + 304) & 0xFFFFFFFFFFFFFFFELL;
  v86 = *(v85 + 23);
  v87 = *(v85 + 8);
  if ((v86 & 0x80u) == 0)
  {
    v87 = v86;
  }

  v67 += v87 + ((9 * (__clz(v87 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v68 & 4) == 0)
  {
LABEL_63:
    if ((v68 & 8) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_121;
  }

LABEL_118:
  v88 = *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL;
  v89 = *(v88 + 23);
  v90 = *(v88 + 8);
  if ((v89 & 0x80u) == 0)
  {
    v90 = v89;
  }

  v67 += v90 + ((9 * (__clz(v90 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v68 & 8) == 0)
  {
LABEL_64:
    if ((v68 & 0x10) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_124;
  }

LABEL_121:
  v91 = *(a1 + 320) & 0xFFFFFFFFFFFFFFFELL;
  v92 = *(v91 + 23);
  v93 = *(v91 + 8);
  if ((v92 & 0x80u) == 0)
  {
    v93 = v92;
  }

  v67 += v93 + ((9 * (__clz(v93 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v68 & 0x10) == 0)
  {
LABEL_65:
    if ((v68 & 0x20) == 0)
    {
      goto LABEL_66;
    }

LABEL_127:
    v97 = *(a1 + 336) & 0xFFFFFFFFFFFFFFFELL;
    v98 = *(v97 + 23);
    v99 = *(v97 + 8);
    if ((v98 & 0x80u) == 0)
    {
      v99 = v98;
    }

    v67 += v99 + ((9 * (__clz(v99 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v68 & 0x40) == 0)
    {
LABEL_67:
      if ((v68 & 0x80) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    goto LABEL_130;
  }

LABEL_124:
  v94 = *(a1 + 328) & 0xFFFFFFFFFFFFFFFELL;
  v95 = *(v94 + 23);
  v96 = *(v94 + 8);
  if ((v95 & 0x80u) == 0)
  {
    v96 = v95;
  }

  v67 += v96 + ((9 * (__clz(v96 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v68 & 0x20) != 0)
  {
    goto LABEL_127;
  }

LABEL_66:
  if ((v68 & 0x40) == 0)
  {
    goto LABEL_67;
  }

LABEL_130:
  v100 = sub_16E7590(*(a1 + 344));
  v67 += v100 + ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v68 & 0x80) != 0)
  {
LABEL_68:
    v69 = sub_16E7590(*(a1 + 352));
    v67 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_69:
  if ((v68 & 0xFF00) == 0)
  {
    goto LABEL_80;
  }

  if ((v68 & 0x100) != 0)
  {
    v101 = sub_153C388(*(a1 + 360));
    v67 += v101 + ((9 * (__clz(v101 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v68 & 0x200) == 0)
    {
LABEL_72:
      if ((v68 & 0x400) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_134;
    }
  }

  else if ((v68 & 0x200) == 0)
  {
    goto LABEL_72;
  }

  v102 = sub_1794F68(*(a1 + 368));
  v67 += v102 + ((9 * (__clz(v102 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v68 & 0x400) == 0)
  {
LABEL_73:
    if ((v68 & 0x800) == 0)
    {
      goto LABEL_74;
    }

LABEL_135:
    v104 = sub_1795580(*(a1 + 384));
    v67 += v104 + ((9 * (__clz(v104 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v68 & 0x1000) != 0)
    {
      goto LABEL_75;
    }

    goto LABEL_79;
  }

LABEL_134:
  v103 = sub_16E7590(*(a1 + 376));
  v67 += v103 + ((9 * (__clz(v103 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v68 & 0x800) != 0)
  {
    goto LABEL_135;
  }

LABEL_74:
  if ((v68 & 0x1000) != 0)
  {
LABEL_75:
    v70 = *(a1 + 392);
    v71 = ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v70 >= 0)
    {
      v72 = v71;
    }

    else
    {
      v72 = 11;
    }

    v67 += v72;
  }

LABEL_79:
  v67 += ((v68 >> 13) & 2) + ((v68 >> 12) & 2) + ((v68 >> 14) & 2);
LABEL_80:
  if ((v68 & 0xFF0000) == 0)
  {
    goto LABEL_96;
  }

  v73 = v67 + ((v68 >> 15) & 2);
  if ((v68 & 0x20000) != 0)
  {
    v105 = *(a1 + 400);
    v106 = ((9 * (__clz(v105 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v105 >= 0)
    {
      v107 = v106;
    }

    else
    {
      v107 = 12;
    }

    v73 += v107;
    if ((v68 & 0x40000) == 0)
    {
LABEL_83:
      if ((v68 & 0x80000) == 0)
      {
        goto LABEL_84;
      }

LABEL_145:
      v73 += ((9 * (__clz(*(a1 + 408) | 1) ^ 0x3F) + 73) >> 6) + 2;
      if ((v68 & 0x100000) != 0)
      {
        goto LABEL_85;
      }

      goto LABEL_89;
    }
  }

  else if ((v68 & 0x40000) == 0)
  {
    goto LABEL_83;
  }

  v108 = *(a1 + 404);
  v109 = ((9 * (__clz(v108 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v108 >= 0)
  {
    v110 = v109;
  }

  else
  {
    v110 = 12;
  }

  v73 += v110;
  if ((v68 & 0x80000) != 0)
  {
    goto LABEL_145;
  }

LABEL_84:
  if ((v68 & 0x100000) != 0)
  {
LABEL_85:
    v74 = *(a1 + 416);
    v75 = ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v74 >= 0)
    {
      v76 = v75;
    }

    else
    {
      v76 = 12;
    }

    v73 += v76;
  }

LABEL_89:
  if ((v68 & 0x200000) != 0)
  {
    v73 += 3;
  }

  if ((v68 & 0x400000) != 0)
  {
    v73 += 3;
  }

  if ((v68 & 0x800000) != 0)
  {
    v67 = v73 + 3;
  }

  else
  {
    v67 = v73;
  }

LABEL_96:
  if ((v68 & 0x7F000000) == 0)
  {
    goto LABEL_110;
  }

  if ((v68 & 0x1000000) != 0)
  {
    v67 += ((9 * (__clz(*(a1 + 424) | 1) ^ 0x3F) + 73) >> 6) + 2;
    if ((v68 & 0x2000000) == 0)
    {
LABEL_99:
      if ((v68 & 0x4000000) == 0)
      {
        goto LABEL_101;
      }

      goto LABEL_100;
    }
  }

  else if ((v68 & 0x2000000) == 0)
  {
    goto LABEL_99;
  }

  v67 += ((9 * (__clz(*(a1 + 432) | 1) ^ 0x3F) + 73) >> 6) + 2;
  if ((v68 & 0x4000000) != 0)
  {
LABEL_100:
    v67 += ((9 * (__clz(*(a1 + 440) | 1) ^ 0x3F) + 73) >> 6) + 2;
  }

LABEL_101:
  if ((v68 & 0x8000000) != 0)
  {
    v67 += 6;
  }

  if ((v68 & 0x10000000) == 0)
  {
    if ((v68 & 0x20000000) == 0)
    {
      goto LABEL_105;
    }

LABEL_154:
    v67 += ((9 * (__clz(*(a1 + 456) | 1) ^ 0x3F) + 73) >> 6) + 2;
    if ((v68 & 0x40000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_106;
  }

  v111 = *(a1 + 452);
  v112 = ((9 * (__clz(v111 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v111 >= 0)
  {
    v113 = v112;
  }

  else
  {
    v113 = 12;
  }

  v67 += v113;
  if ((v68 & 0x20000000) != 0)
  {
    goto LABEL_154;
  }

LABEL_105:
  if ((v68 & 0x40000000) == 0)
  {
    goto LABEL_110;
  }

LABEL_106:
  v77 = *(a1 + 464);
  v78 = ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v77 >= 0)
  {
    v79 = v78;
  }

  else
  {
    v79 = 12;
  }

  v67 += v79;
LABEL_110:
  v80 = *(a1 + 8);
  if (v80)
  {
    v114 = v80 & 0xFFFFFFFFFFFFFFFCLL;
    v115 = *((v80 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v115 < 0)
    {
      v115 = *(v114 + 16);
    }

    v67 += v115;
  }

  *(a1 + 44) = v67;
  return v67;
}

void sub_17983D8(uint64_t a1, uint64_t a2)
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
    sub_1201B48(a1 + 72, v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
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

  v19 = *(a2 + 128);
  if (v19)
  {
    v20 = *(a2 + 136);
    v21 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_13B326C((a1 + 120), v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
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
    sub_13B326C((a1 + 144), v26, (v25 + 8), v24, **(a1 + 160) - *(a1 + 152));
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
    sub_193C66C((a1 + 168), v31, (v30 + 8), v29, **(a1 + 184) - *(a1 + 176));
    v32 = *(a1 + 176) + v29;
    *(a1 + 176) = v32;
    v33 = *(a1 + 184);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 192);
  if (v34)
  {
    v35 = *(a1 + 192);
    sub_1958E5C((a1 + 192), v35 + v34);
    v36 = *(a1 + 200);
    *(a1 + 192) += *(a2 + 192);
    memcpy((v36 + 4 * v35), *(a2 + 200), 4 * *(a2 + 192));
  }

  v37 = *(a2 + 216);
  if (v37)
  {
    v38 = *(a2 + 224);
    v39 = sub_19592E8(a1 + 208, *(a2 + 216));
    sub_13B326C((a1 + 208), v39, (v38 + 8), v37, **(a1 + 224) - *(a1 + 216));
    v40 = *(a1 + 216) + v37;
    *(a1 + 216) = v40;
    v41 = *(a1 + 224);
    if (*v41 < v40)
    {
      *v41 = v40;
    }
  }

  v42 = *(a2 + 240);
  if (v42)
  {
    v43 = *(a2 + 248);
    v44 = sub_19592E8(a1 + 232, *(a2 + 240));
    sub_193C66C((a1 + 232), v44, (v43 + 8), v42, **(a1 + 248) - *(a1 + 240));
    v45 = *(a1 + 240) + v42;
    *(a1 + 240) = v45;
    v46 = *(a1 + 248);
    if (*v46 < v45)
    {
      *v46 = v45;
    }
  }

  v47 = *(a2 + 264);
  if (v47)
  {
    v48 = *(a2 + 272);
    v49 = sub_19592E8(a1 + 256, *(a2 + 264));
    sub_1201B48(a1 + 256, v49, (v48 + 8), v47, **(a1 + 272) - *(a1 + 264));
    v50 = *(a1 + 264) + v47;
    *(a1 + 264) = v50;
    v51 = *(a1 + 272);
    if (*v51 < v50)
    {
      *v51 = v50;
    }
  }

  v52 = *(a2 + 280);
  if (v52)
  {
    v53 = *(a1 + 280);
    sub_1959094((a1 + 280), v53 + v52);
    v54 = *(a1 + 288);
    *(a1 + 280) += *(a2 + 280);
    memcpy((v54 + 8 * v53), *(a2 + 288), 8 * *(a2 + 280));
  }

  v55 = *(a2 + 40);
  if (v55)
  {
    if (v55)
    {
      v56 = *(a2 + 296);
      *(a1 + 40) |= 1u;
      v57 = *(a1 + 8);
      v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
      if (v57)
      {
        v58 = *v58;
      }

      sub_194EA1C((a1 + 296), (v56 & 0xFFFFFFFFFFFFFFFELL), v58);
      if ((v55 & 2) == 0)
      {
LABEL_35:
        if ((v55 & 4) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_46;
      }
    }

    else if ((v55 & 2) == 0)
    {
      goto LABEL_35;
    }

    v59 = *(a2 + 304);
    *(a1 + 40) |= 2u;
    v60 = *(a1 + 8);
    v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
    if (v60)
    {
      v61 = *v61;
    }

    sub_194EA1C((a1 + 304), (v59 & 0xFFFFFFFFFFFFFFFELL), v61);
    if ((v55 & 4) == 0)
    {
LABEL_36:
      if ((v55 & 8) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_49;
    }

LABEL_46:
    v62 = *(a2 + 312);
    *(a1 + 40) |= 4u;
    v63 = *(a1 + 8);
    v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
    if (v63)
    {
      v64 = *v64;
    }

    sub_194EA1C((a1 + 312), (v62 & 0xFFFFFFFFFFFFFFFELL), v64);
    if ((v55 & 8) == 0)
    {
LABEL_37:
      if ((v55 & 0x10) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_52;
    }

LABEL_49:
    v65 = *(a2 + 320);
    *(a1 + 40) |= 8u;
    v66 = *(a1 + 8);
    v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL);
    if (v66)
    {
      v67 = *v67;
    }

    sub_194EA1C((a1 + 320), (v65 & 0xFFFFFFFFFFFFFFFELL), v67);
    if ((v55 & 0x10) == 0)
    {
LABEL_38:
      if ((v55 & 0x20) == 0)
      {
LABEL_58:
        if ((v55 & 0x40) != 0)
        {
          *(a1 + 40) |= 0x40u;
          v74 = *(a1 + 344);
          if (!v74)
          {
            v75 = *(a1 + 8);
            v76 = (v75 & 0xFFFFFFFFFFFFFFFCLL);
            if (v75)
            {
              v76 = *v76;
            }

            v74 = sub_16F5A54(v76);
            *(a1 + 344) = v74;
          }

          if (*(a2 + 344))
          {
            v77 = *(a2 + 344);
          }

          else
          {
            v77 = &off_277E6F0;
          }

          sub_12F5A34(v74, v77);
        }

        if ((v55 & 0x80) != 0)
        {
          *(a1 + 40) |= 0x80u;
          v78 = *(a1 + 352);
          if (!v78)
          {
            v79 = *(a1 + 8);
            v80 = (v79 & 0xFFFFFFFFFFFFFFFCLL);
            if (v79)
            {
              v80 = *v80;
            }

            v78 = sub_16F5A54(v80);
            *(a1 + 352) = v78;
          }

          if (*(a2 + 352))
          {
            v81 = *(a2 + 352);
          }

          else
          {
            v81 = &off_277E6F0;
          }

          sub_12F5A34(v78, v81);
        }

        goto LABEL_76;
      }

LABEL_55:
      v71 = *(a2 + 336);
      *(a1 + 40) |= 0x20u;
      v72 = *(a1 + 8);
      v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
      if (v72)
      {
        v73 = *v73;
      }

      sub_194EA1C((a1 + 336), (v71 & 0xFFFFFFFFFFFFFFFELL), v73);
      goto LABEL_58;
    }

LABEL_52:
    v68 = *(a2 + 328);
    *(a1 + 40) |= 0x10u;
    v69 = *(a1 + 8);
    v70 = (v69 & 0xFFFFFFFFFFFFFFFCLL);
    if (v69)
    {
      v70 = *v70;
    }

    sub_194EA1C((a1 + 328), (v68 & 0xFFFFFFFFFFFFFFFELL), v70);
    if ((v55 & 0x20) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

LABEL_76:
  if ((v55 & 0xFF00) == 0)
  {
    goto LABEL_87;
  }

  if ((v55 & 0x100) != 0)
  {
    *(a1 + 40) |= 0x100u;
    v83 = *(a1 + 360);
    if (!v83)
    {
      v84 = *(a1 + 8);
      v85 = (v84 & 0xFFFFFFFFFFFFFFFCLL);
      if (v84)
      {
        v85 = *v85;
      }

      v83 = sub_1551A70(v85);
      *(a1 + 360) = v83;
    }

    if (*(a2 + 360))
    {
      v86 = *(a2 + 360);
    }

    else
    {
      v86 = &off_2776880;
    }

    sub_144F404(v83, v86);
    if ((v55 & 0x200) == 0)
    {
LABEL_79:
      if ((v55 & 0x400) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_128;
    }
  }

  else if ((v55 & 0x200) == 0)
  {
    goto LABEL_79;
  }

  *(a1 + 40) |= 0x200u;
  v87 = *(a1 + 368);
  if (!v87)
  {
    v88 = *(a1 + 8);
    v89 = (v88 & 0xFFFFFFFFFFFFFFFCLL);
    if (v88)
    {
      v89 = *v89;
    }

    v87 = sub_185D45C(v89);
    *(a1 + 368) = v87;
  }

  if (*(a2 + 368))
  {
    v90 = *(a2 + 368);
  }

  else
  {
    v90 = &off_2782310;
  }

  sub_1494B38(v87, v90);
  if ((v55 & 0x400) == 0)
  {
LABEL_80:
    if ((v55 & 0x800) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_136;
  }

LABEL_128:
  *(a1 + 40) |= 0x400u;
  v91 = *(a1 + 376);
  if (!v91)
  {
    v92 = *(a1 + 8);
    v93 = (v92 & 0xFFFFFFFFFFFFFFFCLL);
    if (v92)
    {
      v93 = *v93;
    }

    v91 = sub_16F5A54(v93);
    *(a1 + 376) = v91;
  }

  if (*(a2 + 376))
  {
    v94 = *(a2 + 376);
  }

  else
  {
    v94 = &off_277E6F0;
  }

  sub_12F5A34(v91, v94);
  if ((v55 & 0x800) == 0)
  {
LABEL_81:
    if ((v55 & 0x1000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_144;
  }

LABEL_136:
  *(a1 + 40) |= 0x800u;
  v95 = *(a1 + 384);
  if (!v95)
  {
    v96 = *(a1 + 8);
    v97 = (v96 & 0xFFFFFFFFFFFFFFFCLL);
    if (v96)
    {
      v97 = *v97;
    }

    v95 = sub_185D4D8(v97);
    *(a1 + 384) = v95;
  }

  if (*(a2 + 384))
  {
    v98 = *(a2 + 384);
  }

  else
  {
    v98 = &off_2782330;
  }

  sub_179565C(v95, v98);
  if ((v55 & 0x1000) == 0)
  {
LABEL_82:
    if ((v55 & 0x2000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_145;
  }

LABEL_144:
  *(a1 + 392) = *(a2 + 392);
  if ((v55 & 0x2000) == 0)
  {
LABEL_83:
    if ((v55 & 0x4000) == 0)
    {
      goto LABEL_84;
    }

LABEL_146:
    *(a1 + 397) = *(a2 + 397);
    if ((v55 & 0x8000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_145:
  *(a1 + 396) = *(a2 + 396);
  if ((v55 & 0x4000) != 0)
  {
    goto LABEL_146;
  }

LABEL_84:
  if ((v55 & 0x8000) != 0)
  {
LABEL_85:
    *(a1 + 398) = *(a2 + 398);
  }

LABEL_86:
  *(a1 + 40) |= v55;
LABEL_87:
  if ((v55 & 0xFF0000) == 0)
  {
    goto LABEL_98;
  }

  if ((v55 & 0x10000) != 0)
  {
    *(a1 + 399) = *(a2 + 399);
    if ((v55 & 0x20000) == 0)
    {
LABEL_90:
      if ((v55 & 0x40000) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_150;
    }
  }

  else if ((v55 & 0x20000) == 0)
  {
    goto LABEL_90;
  }

  *(a1 + 400) = *(a2 + 400);
  if ((v55 & 0x40000) == 0)
  {
LABEL_91:
    if ((v55 & 0x80000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_151;
  }

LABEL_150:
  *(a1 + 404) = *(a2 + 404);
  if ((v55 & 0x80000) == 0)
  {
LABEL_92:
    if ((v55 & 0x100000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_152;
  }

LABEL_151:
  *(a1 + 408) = *(a2 + 408);
  if ((v55 & 0x100000) == 0)
  {
LABEL_93:
    if ((v55 & 0x200000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_153;
  }

LABEL_152:
  *(a1 + 416) = *(a2 + 416);
  if ((v55 & 0x200000) == 0)
  {
LABEL_94:
    if ((v55 & 0x400000) == 0)
    {
      goto LABEL_95;
    }

LABEL_154:
    *(a1 + 421) = *(a2 + 421);
    if ((v55 & 0x800000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_96;
  }

LABEL_153:
  *(a1 + 420) = *(a2 + 420);
  if ((v55 & 0x400000) != 0)
  {
    goto LABEL_154;
  }

LABEL_95:
  if ((v55 & 0x800000) != 0)
  {
LABEL_96:
    *(a1 + 422) = *(a2 + 422);
  }

LABEL_97:
  *(a1 + 40) |= v55;
LABEL_98:
  if ((v55 & 0x7F000000) == 0)
  {
    goto LABEL_108;
  }

  if ((v55 & 0x1000000) != 0)
  {
    *(a1 + 424) = *(a2 + 424);
    if ((v55 & 0x2000000) == 0)
    {
LABEL_101:
      if ((v55 & 0x4000000) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_158;
    }
  }

  else if ((v55 & 0x2000000) == 0)
  {
    goto LABEL_101;
  }

  *(a1 + 432) = *(a2 + 432);
  if ((v55 & 0x4000000) == 0)
  {
LABEL_102:
    if ((v55 & 0x8000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_159;
  }

LABEL_158:
  *(a1 + 440) = *(a2 + 440);
  if ((v55 & 0x8000000) == 0)
  {
LABEL_103:
    if ((v55 & 0x10000000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_160;
  }

LABEL_159:
  *(a1 + 448) = *(a2 + 448);
  if ((v55 & 0x10000000) == 0)
  {
LABEL_104:
    if ((v55 & 0x20000000) == 0)
    {
      goto LABEL_105;
    }

LABEL_161:
    *(a1 + 456) = *(a2 + 456);
    if ((v55 & 0x40000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_106;
  }

LABEL_160:
  *(a1 + 452) = *(a2 + 452);
  if ((v55 & 0x20000000) != 0)
  {
    goto LABEL_161;
  }

LABEL_105:
  if ((v55 & 0x40000000) != 0)
  {
LABEL_106:
    *(a1 + 464) = *(a2 + 464);
  }

LABEL_107:
  *(a1 + 40) |= v55;
LABEL_108:
  sub_225EA0C(a1 + 16, a2 + 16);
  v82 = *(a2 + 8);
  if (v82)
  {

    sub_1957EF4((a1 + 8), (v82 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1798C9C(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_1796488(a1);

    sub_17983D8(a1, a2);
  }
}

uint64_t sub_1798CE8(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 41) & 1) == 0)
    {
      return 1;
    }

    result = sub_144F674(*(a1 + 360));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void sub_1798D2C(uint64_t a1, uint64_t a2)
{
  sub_1951F08((a1 + 16), (a2 + 16));
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  v7 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v7;
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v8;
  *(a2 + 80) = v9;
  v10 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v10;
  v11 = *(a1 + 96);
  v12 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v11;
  *(a2 + 104) = v12;
  v13 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v13;
  v14 = *(a1 + 120);
  v15 = *(a1 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = v14;
  *(a2 + 128) = v15;
  v16 = *(a1 + 136);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 136) = v16;
  v17 = *(a1 + 144);
  v18 = *(a1 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = v17;
  *(a2 + 152) = v18;
  v19 = *(a1 + 160);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 160) = v19;
  v20 = *(a1 + 168);
  v21 = *(a1 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 168) = v20;
  *(a2 + 176) = v21;
  v22 = *(a1 + 184);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 184) = v22;
  v23 = *(a1 + 192);
  v24 = *(a1 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = v23;
  *(a2 + 200) = v24;
  v25 = *(a1 + 208);
  v26 = *(a1 + 216);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 208) = v25;
  *(a2 + 216) = v26;
  v27 = *(a1 + 224);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 224) = v27;
  v28 = *(a1 + 232);
  v29 = *(a1 + 240);
  *(a1 + 232) = *(a2 + 232);
  *(a2 + 232) = v28;
  *(a2 + 240) = v29;
  v30 = *(a1 + 248);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 248) = v30;
  v31 = *(a1 + 256);
  v32 = *(a1 + 264);
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 256) = v31;
  *(a2 + 264) = v32;
  v33 = *(a1 + 272);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 272) = v33;
  v34 = *(a1 + 280);
  v35 = *(a1 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a2 + 280) = v34;
  *(a2 + 288) = v35;
  v36 = *(a2 + 296);
  *(a2 + 296) = *(a1 + 296);
  *(a1 + 296) = v36;
  v37 = *(a2 + 304);
  *(a2 + 304) = *(a1 + 304);
  *(a1 + 304) = v37;
  v38 = *(a2 + 312);
  *(a2 + 312) = *(a1 + 312);
  *(a1 + 312) = v38;
  v39 = *(a2 + 320);
  *(a2 + 320) = *(a1 + 320);
  *(a1 + 320) = v39;
  v40 = *(a2 + 328);
  *(a2 + 328) = *(a1 + 328);
  *(a1 + 328) = v40;
  v41 = *(a2 + 336);
  *(a2 + 336) = *(a1 + 336);
  *(a1 + 336) = v41;
  sub_1464C30((a1 + 344), a2 + 344);
  v42 = *(a1 + 464);
  *(a1 + 464) = *(a2 + 464);
  *(a2 + 464) = v42;
}

uint64_t sub_1798F50(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_270A558;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return a1;
}

void sub_1798FB8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1798FE8(void *a1)
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

void sub_1799064(void *a1)
{
  sub_1798FE8(a1);

  operator delete();
}

unsigned __int8 *sub_179909C(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 40) = 0;
  *(v3 + 32) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_17990F4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v37 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v37, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v37 + 1;
    v8 = *v37;
    if (*v37 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v37, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v37 + 2;
      }
    }

    v37 = v7;
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
        v37 = v23;
        *(a1 + 50) = v22 != 0;
        goto LABEL_45;
      }

      v35 = sub_19587DC(v7, v22);
      v37 = v35;
      *(a1 + 50) = v36 != 0;
      if (!v35)
      {
        goto LABEL_58;
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
        v37 = v17;
        *(a1 + 51) = v16 != 0;
        goto LABEL_45;
      }

      v29 = sub_19587DC(v7, v16);
      v37 = v29;
      *(a1 + 51) = v30 != 0;
      if (!v29)
      {
        goto LABEL_58;
      }
    }

LABEL_45:
    if (sub_195ADC0(a3, &v37, a3[11].i32[1]))
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
      v37 = v20;
      *(a1 + 48) = v19 != 0;
      goto LABEL_45;
    }

    v33 = sub_19587DC(v7, v19);
    v37 = v33;
    *(a1 + 48) = v34 != 0;
    if (!v33)
    {
      goto LABEL_58;
    }

    goto LABEL_45;
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
      v37 = v14;
      *(a1 + 49) = v13 != 0;
      goto LABEL_45;
    }

    v31 = sub_19587DC(v7, v13);
    v37 = v31;
    *(a1 + 49) = v32 != 0;
    if (!v31)
    {
      goto LABEL_58;
    }

    goto LABEL_45;
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
    if ((v8 - 8000) >> 6 > 0x7C)
    {
      v27 = *(a1 + 8);
      if (v27)
      {
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v28 = sub_11F1920((a1 + 8));
        v7 = v37;
      }

      v26 = sub_1952690(v8, v28, v7, a3);
    }

    else
    {
      v26 = sub_19525AC((a1 + 16), v8, v7, &off_2782530, (a1 + 8), a3);
    }

    v37 = v26;
    if (!v26)
    {
      goto LABEL_58;
    }

    goto LABEL_45;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_58:
  v37 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v37;
}

char *sub_1799428(uint64_t a1, char *a2, _DWORD *a3)
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

  v8 = *(a1 + 49);
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

  v9 = *(a1 + 50);
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

    v10 = *(a1 + 51);
    *v4 = 32;
    v4[1] = v10;
    v4 += 2;
  }

LABEL_18:
  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 1000, 2000, v4, a3);
  }

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

uint64_t sub_17995E4(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  if ((*(a1 + 40) & 0xF) != 0)
  {
    result += (*(a1 + 40) & 2) + 2 * (*(a1 + 40) & 1) + ((*(a1 + 40) >> 1) & 2) + ((*(a1 + 40) >> 2) & 2);
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

  *(a1 + 44) = result;
  return result;
}

void sub_1799668(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 0xF) != 0)
  {
    if (v4)
    {
      *(a1 + 48) = *(a2 + 48);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 49) = *(a2 + 49);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
LABEL_7:
        *(a1 + 40) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(a1 + 51) = *(a2 + 51);
      goto LABEL_7;
    }

LABEL_14:
    *(a1 + 50) = *(a2 + 50);
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1799738(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_270A5D8;
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

void sub_17997E4(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1799814(uint64_t a1)
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

void sub_17998B4(uint64_t a1)
{
  sub_1799814(a1);

  operator delete();
}

uint64_t sub_17998EC(uint64_t a1)
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

uint64_t sub_1799930(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1799A68(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1799B30(uint64_t a1)
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

uint64_t sub_1799BC4(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_270A658;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  return a1;
}

void sub_1799C38(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1799C68(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_270A658;
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
    sub_193C6F8((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
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

void sub_1799D74(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1799DC4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_193A56C(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1799E4C(void *a1)
{
  sub_1799DC4(a1);

  operator delete();
}

uint64_t sub_1799E84(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_179A6F8(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 64) = 1;
  *(v6 + 32) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_1799F14(uint64_t a1, char *a2, int32x2_t *a3)
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
        v22 = sub_185D6F4(*(a1 + 48));
        v21 = sub_19593CC(a1 + 48, v22);
        v18 = v27;
      }

      v17 = sub_2243910(a3, v21, v18);
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
      v13 = sub_19525AC((a1 + 16), v8, v7, &off_2782588, (a1 + 8), a3);
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

char *sub_179A17C(uint64_t a1, char *a2, void *a3)
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
      v9 = *(v8 + 44);
      a2[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, a2 + 1);
      }

      else
      {
        v10 = a2 + 2;
      }

      a2 = sub_179AB3C(v8, v10, a3);
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

uint64_t sub_179A31C(uint64_t a1)
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
      v9 = sub_179AD38(v8);
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

void sub_179A3D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_193C6F8((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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

BOOL sub_179A4B4(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 56);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_179B0F4(*(*(a1 + 64) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3;
}

uint64_t sub_179A52C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_270A6D8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = &qword_278E990;
  *(a1 + 56) = &qword_278E990;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_179A5A0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_179A5D0(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (a1 != &off_27825D8)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      sub_17C497C(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_179A6C0(uint64_t a1)
{
  sub_179A5D0(a1);

  operator delete();
}

uint64_t sub_179A6F8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if ((v3 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v6 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_14;
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  v7 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    result = sub_179A7D4(*(a1 + 64));
    goto LABEL_6;
  }

  **v7 = 0;
  *(v7 + 8) = 0;
  if ((v3 & 4) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 64) = 0;
  *(v4 + 32) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_179A7D4(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_17C40B8(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  if (*(a1 + 40))
  {
    v6 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
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

  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 32) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_179A88C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v27 = a2;
  if (sub_195ADC0(a3, v27, a3[11].i32[1]))
  {
    return *v27;
  }

  while (1)
  {
    v6 = (*v27 + 1);
    v7 = **v27;
    if (**v27 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v27, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v27 + 2);
      }
    }

    *v27 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      break;
    }

    if (v10 != 1)
    {
      if (v10 == 2 && v7 == 18)
      {
        *(a1 + 40) |= 1u;
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v14 = (a1 + 48);
LABEL_36:
        v23 = sub_194DB04(v14, v13);
        v21 = sub_1958890(v23, *v27, a3);
        goto LABEL_37;
      }

      goto LABEL_40;
    }

    if (v7 != 10)
    {
      goto LABEL_40;
    }

    *(a1 + 40) |= 4u;
    v18 = *(a1 + 64);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_185F924(v20);
      *(a1 + 64) = v18;
      v6 = *v27;
    }

    v21 = sub_22315E8(a3, v18, v6);
LABEL_37:
    *v27 = v21;
    if (!v21)
    {
      goto LABEL_55;
    }

LABEL_38:
    if (sub_195ADC0(a3, v27, a3[11].i32[1]))
    {
      return *v27;
    }
  }

  if (v10 != 3)
  {
    if (v10 != 4 || v7 != 32)
    {
      goto LABEL_40;
    }

    v16 = (v6 + 1);
    v15 = *v6;
    if (v15 < 0)
    {
      v17 = *v16;
      v15 = (v17 << 7) + v15 - 128;
      if (v17 < 0)
      {
        *v27 = sub_19587DC(v6, v15);
        if (!*v27)
        {
          goto LABEL_55;
        }

        goto LABEL_24;
      }

      v16 = (v6 + 2);
    }

    *v27 = v16;
LABEL_24:
    if (v15 > 3)
    {
      sub_12E8500();
    }

    else
    {
      *(a1 + 40) |= 8u;
      *(a1 + 72) = v15;
    }

    goto LABEL_38;
  }

  if (v7 == 26)
  {
    *(a1 + 40) |= 2u;
    v22 = *(a1 + 8);
    v13 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v13 = *v13;
    }

    v14 = (a1 + 56);
    goto LABEL_36;
  }

LABEL_40:
  if (v7)
  {
    v24 = (v7 & 7) == 4;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    if ((v7 - 8000) >> 6 > 0x7C)
    {
      v25 = *(a1 + 8);
      if (v25)
      {
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v26 = sub_11F1920((a1 + 8));
        v6 = *v27;
      }

      v21 = sub_1952690(v7, v26, v6, a3);
    }

    else
    {
      v21 = sub_19525AC((a1 + 16), v7, v6, &off_27825D8, (a1 + 8), a3);
    }

    goto LABEL_37;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v27;
  }

LABEL_55:
  *v27 = 0;
  return *v27;
}

char *sub_179AB3C(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v8 = *(a1 + 64);
    *v4 = 10;
    v9 = *(v8 + 44);
    v4[1] = v9;
    if (v9 > 0x7F)
    {
      v10 = sub_19575D0(v9, v4 + 1);
    }

    else
    {
      v10 = v4 + 2;
    }

    v4 = sub_17C4C84(v8, v10, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_13:
      v4 = sub_128AEEC(a3, 3, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
      if ((v6 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
LABEL_5:
    v7 = v4;
    goto LABEL_21;
  }

LABEL_14:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 72);
  *v4 = 32;
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

LABEL_21:
  if (*(a1 + 26))
  {
    v7 = sub_1953428(a1 + 16, 1000, 2000, v7, a3);
  }

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v7;
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

  if (*a3 - v7 >= v18)
  {
    v20 = v18;
    memcpy(v7, v19, v18);
    v7 += v20;
    return v7;
  }

  return sub_1957130(a3, v19, v18, v7);
}

uint64_t sub_179AD38(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = v2;
  v4 = *(a1 + 40);
  if ((v4 & 0xF) == 0)
  {
    goto LABEL_18;
  }

  if (v4)
  {
    v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v2 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  v8 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v9 = *(v8 + 23);
  v10 = *(v8 + 8);
  if ((v9 & 0x80u) == 0)
  {
    v10 = v9;
  }

  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

LABEL_13:
  v11 = sub_17C4E0C(*(a1 + 64));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v12 = *(a1 + 72);
  if (v12 < 0)
  {
    v13 = 11;
  }

  else
  {
    v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v13;
LABEL_18:
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

  *(a1 + 44) = v3;
  return v3;
}

void sub_179AEA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 0xF) != 0)
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

        goto LABEL_18;
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
LABEL_7:
        *(a1 + 40) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(a1 + 72) = *(a2 + 72);
      goto LABEL_7;
    }

LABEL_18:
    *(a1 + 40) |= 4u;
    v12 = *(a1 + 64);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v12 = sub_185F924(v14);
      *(a1 + 64) = v12;
    }

    if (*(a2 + 64))
    {
      v15 = *(a2 + 64);
    }

    else
    {
      v15 = &off_27838B0;
    }

    sub_179AFF4(v12, v15);
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_179AFF4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_193D11C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 72), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_179B0F4(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 40) & 4) == 0)
    {
      return 1;
    }

    result = sub_195228C(*(a1 + 64) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}