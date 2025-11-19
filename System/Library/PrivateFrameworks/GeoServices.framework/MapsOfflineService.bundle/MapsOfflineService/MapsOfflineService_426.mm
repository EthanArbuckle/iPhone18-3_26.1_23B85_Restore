uint64_t sub_17501BC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2706C88;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = 0;
  return result;
}

void *sub_1750244(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2706D08;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_17502BC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2706D88;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = 0;
  return result;
}

void *sub_1750354(void *a1)
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

void sub_17503C8(void *a1)
{
  sub_1750354(a1);

  operator delete();
}

uint64_t sub_1750400(uint64_t a1)
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

char *sub_1750418(uint64_t a1, char *a2, int32x2_t *a3)
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

    v13 = v6 + 1;
    v14 = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v13;
    v14 = v14 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v13 = v6 + 2;
LABEL_18:
      v19 = v13;
      *(a1 + 24) = v14;
      v5 = 1;
      goto LABEL_19;
    }

    v16 = sub_1958770(v6, v14);
    v19 = v16;
    *(a1 + 24) = v17;
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

char *sub_175058C(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_17506B4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

void *sub_175072C(void *a1)
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

void sub_17507A0(void *a1)
{
  sub_175072C(a1);

  operator delete();
}

uint64_t sub_17507D8(uint64_t a1)
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

char *sub_1750800(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_1750A48(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_1750C80(uint64_t a1)
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

uint64_t sub_1750D5C(uint64_t a1)
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

  if (a1 != &off_2780EA8)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_1750354(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_175072C(v6);
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

void sub_1750E2C(uint64_t a1)
{
  sub_1750D5C(a1);

  operator delete();
}

uint64_t sub_1750E64(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v3 = *(result + 24);
      v4 = *(v3 + 8);
      result = v3 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 2) != 0)
    {
      result = sub_17507D8(*(v1 + 32));
    }
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

char *sub_1750EE4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v22 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v22, i) & 1) == 0; i = a3[11].i32[1])
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

          v15 = sub_175320C(v17);
          *(a1 + 32) = v15;
          v6 = v22;
        }

        v14 = sub_223AFB4(a3, v15, v6);
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

        v18 = sub_1753190(v20);
        *(a1 + 24) = v18;
        v6 = v22;
      }

      v14 = sub_223AF24(a3, v18, v6);
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
        return v22;
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
      v6 = v22;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_30:
    v22 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v22;
}

char *sub_175108C(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_175058C(v7, v9, a3);
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

    v4 = sub_1750A48(v10, v12, a3);
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

uint64_t sub_1751208(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_17506B4(*(a1 + 24));
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
    v5 = sub_1750C80(*(a1 + 32));
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

std::string *sub_17512D8(std::string *result, uint64_t a2)
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

        data = sub_1753190(v7);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2780E60;
      }

      result = sub_12B9D50(data, v8);
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

        v9 = sub_175320C(v11);
        v3[1].__r_.__value_.__l.__size_ = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_2780E80;
      }

      result = sub_128F948(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_17513F4(uint64_t a1)
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

void sub_1751494(uint64_t a1)
{
  sub_17513F4(a1);

  operator delete();
}

uint64_t sub_17514CC(uint64_t a1)
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

uint64_t sub_1751510(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 == 18)
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

char *sub_1751648(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
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

uint64_t sub_1751710(uint64_t a1)
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

void *sub_17517A4(void *a1)
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

  sub_1751828(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_1751828(uint64_t result)
{
  if (result != &off_2780EF0)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2)
    {
      sub_1750354(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_175072C(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_175072C(v4);
      operator delete();
    }

    result = v1[6];
    if (result)
    {
      sub_17513F4(result);

      operator delete();
    }
  }

  return result;
}

void sub_17518EC(void *a1)
{
  sub_17517A4(a1);

  operator delete();
}

uint64_t sub_1751924(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) != 0)
  {
    if (v2)
    {
      v3 = *(result + 24);
      v4 = *(v3 + 8);
      result = v3 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 2) != 0)
    {
      result = sub_17507D8(*(v1 + 32));
      if ((v2 & 4) == 0)
      {
LABEL_7:
        if ((v2 & 8) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    else if ((v2 & 4) == 0)
    {
      goto LABEL_7;
    }

    result = sub_17507D8(*(v1 + 40));
    if ((v2 & 8) != 0)
    {
LABEL_8:
      result = sub_17514CC(*(v1 + 48));
    }
  }

LABEL_9:
  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_17519C8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v28 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v28, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v28 + 1;
    v7 = *v28;
    if (*v28 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v28, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v28 + 2;
      }
    }

    v28 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 4u;
          v12 = *(a1 + 40);
          if (!v12)
          {
            v22 = *(a1 + 8);
            v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
            if (v22)
            {
              v23 = *v23;
            }

            v12 = sub_175320C(v23);
            *(a1 + 40) = v12;
LABEL_37:
            v6 = v28;
          }

LABEL_38:
          v18 = sub_223AFB4(a3, v12, v6);
          goto LABEL_46;
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
        *(a1 + 16) |= 8u;
        v15 = *(a1 + 48);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_1753304(v17);
          *(a1 + 48) = v15;
          v6 = v28;
        }

        v18 = sub_223B044(a3, v15, v6);
        goto LABEL_46;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
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

          v19 = sub_1753190(v21);
          *(a1 + 24) = v19;
          v6 = v28;
        }

        v18 = sub_223AF24(a3, v19, v6);
        goto LABEL_46;
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
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

        v12 = sub_175320C(v14);
        *(a1 + 32) = v12;
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    if (v7)
    {
      v24 = (v7 & 7) == 4;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v28;
      }

      return 0;
    }

    v25 = *(a1 + 8);
    if (v25)
    {
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v26 = sub_11F1920((a1 + 8));
      v6 = v28;
    }

    v18 = sub_1952690(v7, v26, v6, a3);
LABEL_46:
    v28 = v18;
    if (!v18)
    {
      return 0;
    }
  }

  return v28;
}

char *sub_1751C1C(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_175058C(v7, v9, a3);
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

  v4 = sub_1750A48(v10, v12, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

LABEL_18:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 40);
  *v4 = 26;
  v14 = *(v13 + 20);
  v4[1] = v14;
  if (v14 > 0x7F)
  {
    v15 = sub_19575D0(v14, v4 + 1);
  }

  else
  {
    v15 = v4 + 2;
  }

  v4 = sub_1750A48(v13, v15, a3);
  if ((v6 & 8) != 0)
  {
LABEL_24:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v16 = *(a1 + 48);
    *v4 = 34;
    v17 = *(v16 + 20);
    v4[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v4 + 1);
    }

    else
    {
      v18 = v4 + 2;
    }

    v4 = sub_1751648(v16, v18, a3);
  }

LABEL_30:
  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v22)
  {
    v24 = v22;
    memcpy(v4, v23, v22);
    v4 += v24;
    return v4;
  }

  return sub_1957130(a3, v23, v22, v4);
}

uint64_t sub_1751E70(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_17506B4(*(a1 + 24));
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
    v5 = sub_1750C80(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = sub_1750C80(*(a1 + 40));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_10:
    v6 = sub_1751710(*(a1 + 48));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  v7 = *(a1 + 8);
  if (v7)
  {
    v10 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v3 += v11;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_1751FA8(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0xF) == 0)
  {
    goto LABEL_39;
  }

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

      data = sub_1753190(v7);
      v3[1].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 24))
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = &off_2780E60;
    }

    result = sub_12B9D50(data, v8);
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

      v9 = sub_175320C(v11);
      v3[1].__r_.__value_.__l.__size_ = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_2780E80;
    }

    result = sub_128F948(v9, v12);
    if ((v4 & 4) == 0)
    {
LABEL_13:
      if ((v4 & 8) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_13;
  }

  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
  v13 = v3[1].__r_.__value_.__r.__words[2];
  if (!v13)
  {
    v14 = v3->__r_.__value_.__l.__size_;
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    v13 = sub_175320C(v15);
    v3[1].__r_.__value_.__r.__words[2] = v13;
  }

  if (*(a2 + 40))
  {
    v16 = *(a2 + 40);
  }

  else
  {
    v16 = &off_2780E80;
  }

  result = sub_128F948(v13, v16);
  if ((v4 & 8) != 0)
  {
LABEL_31:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    v17 = v3[2].__r_.__value_.__l.__data_;
    if (!v17)
    {
      v18 = v3->__r_.__value_.__l.__size_;
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_1753304(v19);
      v3[2].__r_.__value_.__r.__words[0] = v17;
    }

    if (*(a2 + 48))
    {
      v20 = *(a2 + 48);
    }

    else
    {
      v20 = &off_2780ED0;
    }

    result = sub_132DE2C(v17, v20);
  }

LABEL_39:
  v21 = *(a2 + 8);
  if (v21)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_1752160(void *a1)
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

  sub_17521E4(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_17521E4(uint64_t result)
{
  if (result != &off_2780F28)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2)
    {
      sub_1750354(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_175072C(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_175072C(v4);
      operator delete();
    }

    result = v1[6];
    if (result)
    {
      sub_17513F4(result);

      operator delete();
    }
  }

  return result;
}

void sub_17522A8(void *a1)
{
  sub_1752160(a1);

  operator delete();
}

uint64_t sub_17522E0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) != 0)
  {
    if (v2)
    {
      v3 = *(result + 24);
      v4 = *(v3 + 8);
      result = v3 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 2) != 0)
    {
      result = sub_17507D8(*(v1 + 32));
      if ((v2 & 4) == 0)
      {
LABEL_7:
        if ((v2 & 8) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    else if ((v2 & 4) == 0)
    {
      goto LABEL_7;
    }

    result = sub_17507D8(*(v1 + 40));
    if ((v2 & 8) != 0)
    {
LABEL_8:
      result = sub_17514CC(*(v1 + 48));
    }
  }

LABEL_9:
  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_1752384(uint64_t a1, char *a2, int32x2_t *a3)
{
  v28 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v28, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v28 + 1;
    v7 = *v28;
    if (*v28 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v28, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v28 + 2;
      }
    }

    v28 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 4u;
          v12 = *(a1 + 40);
          if (!v12)
          {
            v22 = *(a1 + 8);
            v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
            if (v22)
            {
              v23 = *v23;
            }

            v12 = sub_175320C(v23);
            *(a1 + 40) = v12;
LABEL_37:
            v6 = v28;
          }

LABEL_38:
          v18 = sub_223AFB4(a3, v12, v6);
          goto LABEL_46;
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
        *(a1 + 16) |= 8u;
        v15 = *(a1 + 48);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_1753304(v17);
          *(a1 + 48) = v15;
          v6 = v28;
        }

        v18 = sub_223B044(a3, v15, v6);
        goto LABEL_46;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
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

          v19 = sub_1753190(v21);
          *(a1 + 24) = v19;
          v6 = v28;
        }

        v18 = sub_223AF24(a3, v19, v6);
        goto LABEL_46;
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
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

        v12 = sub_175320C(v14);
        *(a1 + 32) = v12;
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    if (v7)
    {
      v24 = (v7 & 7) == 4;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v28;
      }

      return 0;
    }

    v25 = *(a1 + 8);
    if (v25)
    {
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v26 = sub_11F1920((a1 + 8));
      v6 = v28;
    }

    v18 = sub_1952690(v7, v26, v6, a3);
LABEL_46:
    v28 = v18;
    if (!v18)
    {
      return 0;
    }
  }

  return v28;
}

char *sub_17525D8(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_175058C(v7, v9, a3);
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

  v4 = sub_1750A48(v10, v12, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

LABEL_18:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 40);
  *v4 = 26;
  v14 = *(v13 + 20);
  v4[1] = v14;
  if (v14 > 0x7F)
  {
    v15 = sub_19575D0(v14, v4 + 1);
  }

  else
  {
    v15 = v4 + 2;
  }

  v4 = sub_1750A48(v13, v15, a3);
  if ((v6 & 8) != 0)
  {
LABEL_24:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v16 = *(a1 + 48);
    *v4 = 34;
    v17 = *(v16 + 20);
    v4[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v4 + 1);
    }

    else
    {
      v18 = v4 + 2;
    }

    v4 = sub_1751648(v16, v18, a3);
  }

LABEL_30:
  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v22)
  {
    v24 = v22;
    memcpy(v4, v23, v22);
    v4 += v24;
    return v4;
  }

  return sub_1957130(a3, v23, v22, v4);
}

uint64_t sub_175282C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_17506B4(*(a1 + 24));
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
    v5 = sub_1750C80(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = sub_1750C80(*(a1 + 40));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_10:
    v6 = sub_1751710(*(a1 + 48));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  v7 = *(a1 + 8);
  if (v7)
  {
    v10 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v3 += v11;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_175297C(uint64_t a1)
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

  if (a1 != &off_2780F60)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_1750354(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_175072C(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_17513F4(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1752A6C(uint64_t a1)
{
  sub_175297C(a1);

  operator delete();
}

uint64_t sub_1752AA4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      v3 = *(result + 24);
      v4 = *(v3 + 8);
      result = v3 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 2) != 0)
    {
      result = sub_17507D8(*(v1 + 32));
    }

    if ((v2 & 4) != 0)
    {
      result = sub_17514CC(*(v1 + 40));
    }
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

char *sub_1752B30(uint64_t a1, char *a2, int32x2_t *a3)
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
      if (v7 == 26)
      {
        *(a1 + 16) |= 4u;
        v19 = *(a1 + 40);
        if (!v19)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v19 = sub_1753304(v21);
          *(a1 + 40) = v19;
          v6 = v26;
        }

        v15 = sub_223B044(a3, v19, v6);
        goto LABEL_37;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
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

          v16 = sub_175320C(v18);
          *(a1 + 32) = v16;
          v6 = v26;
        }

        v15 = sub_223AFB4(a3, v16, v6);
        goto LABEL_37;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v22 = *(a1 + 24);
      if (!v22)
      {
        v23 = *(a1 + 8);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        v22 = sub_1753190(v24);
        *(a1 + 24) = v22;
        v6 = v26;
      }

      v15 = sub_223AF24(a3, v22, v6);
      goto LABEL_37;
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
LABEL_37:
    v26 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return v26;
}

char *sub_1752D30(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_175058C(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
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

  v4 = sub_1750A48(v10, v12, a3);
  if ((v6 & 4) != 0)
  {
LABEL_17:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v13 = *(a1 + 40);
    *v4 = 26;
    v14 = *(v13 + 20);
    v4[1] = v14;
    if (v14 > 0x7F)
    {
      v15 = sub_19575D0(v14, v4 + 1);
    }

    else
    {
      v15 = v4 + 2;
    }

    v4 = sub_1751648(v13, v15, a3);
  }

LABEL_23:
  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v19)
  {
    v21 = v19;
    memcpy(v4, v20, v19);
    v4 += v21;
    return v4;
  }

  return sub_1957130(a3, v20, v19, v4);
}

uint64_t sub_1752F1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (v2)
  {
    v4 = sub_17506B4(*(a1 + 24));
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
    v5 = sub_1750C80(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = sub_1751710(*(a1 + 40));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  v7 = *(a1 + 8);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v3 += v10;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_175301C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 7) == 0)
  {
    goto LABEL_30;
  }

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

      data = sub_1753190(v7);
      v3[1].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 24))
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = &off_2780E60;
    }

    result = sub_12B9D50(data, v8);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

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

    v9 = sub_175320C(v11);
    v3[1].__r_.__value_.__l.__size_ = v9;
  }

  if (*(a2 + 32))
  {
    v12 = *(a2 + 32);
  }

  else
  {
    v12 = &off_2780E80;
  }

  result = sub_128F948(v9, v12);
  if ((v4 & 4) != 0)
  {
LABEL_22:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v13 = v3[1].__r_.__value_.__r.__words[2];
    if (!v13)
    {
      v14 = v3->__r_.__value_.__l.__size_;
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_1753304(v15);
      v3[1].__r_.__value_.__r.__words[2] = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_2780ED0;
    }

    result = sub_132DE2C(v13, v16);
  }

LABEL_30:
  v17 = *(a2 + 8);
  if (v17)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1753190(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_2706E08;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_175320C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_2706E88;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_1753288(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2706F08;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_1753304(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2706F88;
  result[2] = 0;
  result[3] = &qword_278E990;
  return result;
}

double sub_1753388(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_2707008;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

double sub_1753408(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_2707088;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

double sub_1753488(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_2707108;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

uint64_t sub_1753504(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_2707188;
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
  *(a1 + 224) = a2;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = a2;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = a2;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = &qword_278E990;
  *(a1 + 304) = &qword_278E990;
  *(a1 + 312) = &qword_278E990;
  *(a1 + 320) = &qword_278E990;
  *(a1 + 328) = &qword_278E990;
  *(a1 + 528) = 0;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 536) = 0x100000001;
  return a1;
}

void sub_17535E8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_175361C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v67 = (a1 + 8);
  *(a1 + 16) = 0;
  v66 = a1 + 16;
  *a1 = off_2707188;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v4 = (a1 + 56);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v5 = *(a2 + 64);
  if (v5)
  {
    v6 = *(a2 + 72);
    v7 = sub_19592E8(a1 + 56, *(a2 + 64));
    sub_1449ED8(v4, v7, (v6 + 8), v5, **(a1 + 72) - *(a1 + 64));
    v8 = *(a1 + 64) + v5;
    *(a1 + 64) = v8;
    v9 = *(a1 + 72);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v10 = *(a2 + 88);
  if (v10)
  {
    v11 = *(a2 + 96);
    v12 = sub_19592E8(a1 + 80, v10);
    sub_1201B48(a1 + 80, v12, (v11 + 8), v10, **(a1 + 96) - *(a1 + 88));
    v13 = *(a1 + 88) + v10;
    *(a1 + 88) = v13;
    v14 = *(a1 + 96);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v15 = *(a2 + 112);
  if (v15)
  {
    v16 = *(a2 + 120);
    v17 = sub_19592E8(a1 + 104, v15);
    sub_144D55C((a1 + 104), v17, (v16 + 8), v15, **(a1 + 120) - *(a1 + 112));
    v18 = *(a1 + 112) + v15;
    *(a1 + 112) = v18;
    v19 = *(a1 + 120);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v20 = *(a2 + 136);
  if (v20)
  {
    v21 = *(a2 + 144);
    v22 = sub_19592E8(a1 + 128, v20);
    sub_1409AF8((a1 + 128), v22, (v21 + 8), v20, **(a1 + 144) - *(a1 + 136));
    v23 = *(a1 + 136) + v20;
    *(a1 + 136) = v23;
    v24 = *(a1 + 144);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v25 = *(a2 + 160);
  if (v25)
  {
    v26 = *(a2 + 168);
    v27 = sub_19592E8(a1 + 152, *(a2 + 160));
    sub_1764208((a1 + 152), v27, (v26 + 8), v25, **(a1 + 168) - *(a1 + 160));
    v28 = *(a1 + 160) + v25;
    *(a1 + 160) = v28;
    v29 = *(a1 + 168);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v30 = *(a2 + 184);
  if (v30)
  {
    v31 = *(a2 + 192);
    v32 = sub_19592E8(a1 + 176, *(a2 + 184));
    sub_1201B48(a1 + 176, v32, (v31 + 8), v30, **(a1 + 192) - *(a1 + 184));
    v33 = *(a1 + 184) + v30;
    *(a1 + 184) = v33;
    v34 = *(a1 + 192);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  v35 = *(a2 + 208);
  if (v35)
  {
    v36 = *(a2 + 216);
    v37 = sub_19592E8(a1 + 200, *(a2 + 208));
    sub_15682E4((a1 + 200), v37, (v36 + 8), v35, **(a1 + 216) - *(a1 + 208));
    v38 = *(a1 + 208) + v35;
    *(a1 + 208) = v38;
    v39 = *(a1 + 216);
    if (*v39 < v38)
    {
      *v39 = v38;
    }
  }

  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v40 = *(a2 + 232);
  if (v40)
  {
    v41 = *(a2 + 240);
    v42 = sub_19592E8(a1 + 224, *(a2 + 232));
    sub_12E5E34((a1 + 224), v42, (v41 + 8), v40, **(a1 + 240) - *(a1 + 232));
    v43 = *(a1 + 232) + v40;
    *(a1 + 232) = v43;
    v44 = *(a1 + 240);
    if (*v44 < v43)
    {
      *v44 = v43;
    }
  }

  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  v45 = *(a2 + 256);
  if (v45)
  {
    v46 = *(a2 + 264);
    v47 = sub_19592E8(a1 + 248, *(a2 + 256));
    sub_1201B48(a1 + 248, v47, (v46 + 8), v45, **(a1 + 264) - *(a1 + 256));
    v48 = *(a1 + 256) + v45;
    *(a1 + 256) = v48;
    v49 = *(a1 + 264);
    if (*v49 < v48)
    {
      *v49 = v48;
    }
  }

  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  v50 = *(a2 + 280);
  if (v50)
  {
    v51 = *(a2 + 288);
    v52 = sub_19592E8(a1 + 272, *(a2 + 280));
    sub_1201B48(a1 + 272, v52, (v51 + 8), v50, **(a1 + 288) - *(a1 + 280));
    v53 = *(a1 + 280) + v50;
    *(a1 + 280) = v53;
    v54 = *(a1 + 288);
    if (*v54 < v53)
    {
      *v54 = v53;
    }
  }

  v55 = *(a2 + 8);
  if (v55)
  {
    sub_1957EF4(v67, (v55 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v66, a2 + 16);
  *(a1 + 296) = &qword_278E990;
  v56 = *(a2 + 40);
  if (v56)
  {
    v57 = (*v67 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v67)
    {
      v57 = *v57;
    }

    sub_194EA1C((a1 + 296), (*(a2 + 296) & 0xFFFFFFFFFFFFFFFELL), v57);
    v56 = *(a2 + 40);
  }

  *(a1 + 304) = &qword_278E990;
  if ((v56 & 2) != 0)
  {
    v58 = (*v67 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v67)
    {
      v58 = *v58;
    }

    sub_194EA1C((a1 + 304), (*(a2 + 304) & 0xFFFFFFFFFFFFFFFELL), v58);
    v56 = *(a2 + 40);
  }

  *(a1 + 312) = &qword_278E990;
  if ((v56 & 4) != 0)
  {
    v59 = (*v67 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v67)
    {
      v59 = *v59;
    }

    sub_194EA1C((a1 + 312), (*(a2 + 312) & 0xFFFFFFFFFFFFFFFELL), v59);
    v56 = *(a2 + 40);
  }

  *(a1 + 320) = &qword_278E990;
  if ((v56 & 8) != 0)
  {
    v60 = (*v67 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v67)
    {
      v60 = *v60;
    }

    sub_194EA1C((a1 + 320), (*(a2 + 320) & 0xFFFFFFFFFFFFFFFELL), v60);
    v56 = *(a2 + 40);
  }

  *(a1 + 328) = &qword_278E990;
  if ((v56 & 0x10) != 0)
  {
    v61 = (*v67 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v67)
    {
      v61 = *v61;
    }

    sub_194EA1C((a1 + 328), (*(a2 + 328) & 0xFFFFFFFFFFFFFFFELL), v61);
    v56 = *(a2 + 40);
  }

  if ((v56 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 336) = 0;
  if ((v56 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 344) = 0;
  if ((v56 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 352) = 0;
  if ((v56 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 360) = 0;
  if ((v56 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 368) = 0;
  if ((v56 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 376) = 0;
  if ((v56 & 0x800) != 0)
  {
    operator new();
  }

  *(a1 + 384) = 0;
  if ((v56 & 0x1000) != 0)
  {
    operator new();
  }

  *(a1 + 392) = 0;
  if ((v56 & 0x2000) != 0)
  {
    operator new();
  }

  *(a1 + 400) = 0;
  if ((v56 & 0x4000) != 0)
  {
    operator new();
  }

  *(a1 + 408) = 0;
  if ((v56 & 0x8000) != 0)
  {
    operator new();
  }

  *(a1 + 416) = 0;
  if ((v56 & 0x10000) != 0)
  {
    operator new();
  }

  *(a1 + 424) = 0;
  if ((v56 & 0x20000) != 0)
  {
    operator new();
  }

  *(a1 + 432) = 0;
  if ((v56 & 0x40000) != 0)
  {
    operator new();
  }

  *(a1 + 440) = 0;
  if ((v56 & 0x80000) != 0)
  {
    operator new();
  }

  *(a1 + 448) = 0;
  if ((v56 & 0x100000) != 0)
  {
    operator new();
  }

  *(a1 + 456) = 0;
  if ((v56 & 0x200000) != 0)
  {
    operator new();
  }

  *(a1 + 464) = 0;
  *(a1 + 472) = *(a2 + 472);
  v62 = *(a2 + 488);
  v63 = *(a2 + 504);
  v64 = *(a2 + 520);
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 504) = v63;
  *(a1 + 520) = v64;
  *(a1 + 488) = v62;
  return a1;
}

void *sub_17541D4(void *a1)
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

  sub_17542C8(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956AFC(a1 + 34);
  sub_1956AFC(a1 + 31);
  sub_12E5CA0(a1 + 28);
  sub_1567F38(a1 + 25);
  sub_1956AFC(a1 + 22);
  sub_1763FF8(a1 + 19);
  sub_140996C(a1 + 16);
  sub_144D2B0(a1 + 13);
  sub_1956AFC(a1 + 10);
  sub_1449E54(a1 + 7);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_17542C8(uint64_t result)
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

  if (result != &off_2780F90)
  {
    v2 = *(result + 336);
    if (v2)
    {
      sub_1491E84(v2);
      operator delete();
    }

    v3 = v1[43];
    if (v3)
    {
      sub_16E82A0(v3);
      operator delete();
    }

    v4 = v1[44];
    if (v4)
    {
      sub_16E5A8C(v4);
      operator delete();
    }

    if (v1[45])
    {
      sub_15389D8();
      operator delete();
    }

    v5 = v1[46];
    if (v5)
    {
      sub_16EE010(v5);
      operator delete();
    }

    v6 = v1[47];
    if (v6)
    {
      sub_14A5A2C(v6);
      operator delete();
    }

    if (v1[48])
    {
      sub_15503E0();
      operator delete();
    }

    v7 = v1[49];
    if (v7)
    {
      sub_14A6288(v7);
      operator delete();
    }

    v8 = v1[50];
    if (v8)
    {
      sub_1494E60(v8);
      operator delete();
    }

    v9 = v1[51];
    if (v9)
    {
      sub_16E82A0(v9);
      operator delete();
    }

    if (v1[52])
    {
      sub_13F0544();
      operator delete();
    }

    v10 = v1[53];
    if (v10)
    {
      sub_1475560(v10);
      operator delete();
    }

    v11 = v1[54];
    if (v11)
    {
      sub_14B4F68(v11);
      operator delete();
    }

    v12 = v1[55];
    if (v12)
    {
      sub_16F4B54(v12);
      operator delete();
    }

    v13 = v1[56];
    if (v13)
    {
      sub_14B8E2C(v13);
      operator delete();
    }

    v14 = v1[57];
    if (v14)
    {
      sub_1495848(v14);
      operator delete();
    }

    result = v1[58];
    if (result)
    {
      sub_14772A4(result);

      operator delete();
    }
  }

  return result;
}

void sub_175459C(void *a1)
{
  sub_17541D4(a1);

  operator delete();
}

uint64_t sub_17545D4(uint64_t a1)
{
  sub_1951124((a1 + 16));
  v2 = *(a1 + 64);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 72) + 8);
    do
    {
      v4 = *v3++;
      sub_14CC5C8(v4);
      --v2;
    }

    while (v2);
    *(a1 + 64) = 0;
  }

  sub_12A41D0(a1 + 80);
  v5 = *(a1 + 112);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 120) + 8);
    do
    {
      v7 = *v6++;
      sub_14CC674(v7);
      --v5;
    }

    while (v5);
    *(a1 + 112) = 0;
  }

  v8 = *(a1 + 136);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 144) + 8);
    do
    {
      v10 = *v9++;
      sub_16E48B0(v10);
      --v8;
    }

    while (v8);
    *(a1 + 136) = 0;
  }

  v11 = *(a1 + 160);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 168) + 8);
    do
    {
      v13 = *v12++;
      sub_14B425C(v13);
      --v11;
    }

    while (v11);
    *(a1 + 160) = 0;
  }

  sub_12A41D0(a1 + 176);
  v14 = *(a1 + 208);
  if (v14 >= 1)
  {
    v15 = (*(a1 + 216) + 8);
    do
    {
      v16 = *v15++;
      sub_149FD80(v16);
      --v14;
    }

    while (v14);
    *(a1 + 208) = 0;
  }

  v17 = *(a1 + 232);
  if (v17 >= 1)
  {
    v18 = (*(a1 + 240) + 8);
    do
    {
      v19 = *v18++;
      sub_16EEC04(v19);
      --v17;
    }

    while (v17);
    *(a1 + 232) = 0;
  }

  sub_12A41D0(a1 + 248);
  result = sub_12A41D0(a1 + 272);
  v21 = *(a1 + 40);
  if (!v21)
  {
    goto LABEL_35;
  }

  if ((v21 & 1) == 0)
  {
    if ((v21 & 2) == 0)
    {
      goto LABEL_28;
    }

LABEL_81:
    v25 = *(a1 + 304) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v25 + 23) < 0)
    {
      **v25 = 0;
      *(v25 + 8) = 0;
      if ((v21 & 4) != 0)
      {
        goto LABEL_85;
      }
    }

    else
    {
      *v25 = 0;
      *(v25 + 23) = 0;
      if ((v21 & 4) != 0)
      {
        goto LABEL_85;
      }
    }

LABEL_29:
    if ((v21 & 8) == 0)
    {
      goto LABEL_30;
    }

LABEL_89:
    v27 = *(a1 + 320) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v27 + 23) < 0)
    {
      **v27 = 0;
      *(v27 + 8) = 0;
      if ((v21 & 0x10) != 0)
      {
        goto LABEL_93;
      }
    }

    else
    {
      *v27 = 0;
      *(v27 + 23) = 0;
      if ((v21 & 0x10) != 0)
      {
        goto LABEL_93;
      }
    }

LABEL_31:
    if ((v21 & 0x20) == 0)
    {
      goto LABEL_32;
    }

LABEL_97:
    result = sub_1491EC0(*(a1 + 336));
    if ((v21 & 0x40) == 0)
    {
LABEL_33:
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    goto LABEL_98;
  }

  v24 = *(a1 + 296) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v24 + 23) < 0)
  {
    **v24 = 0;
    *(v24 + 8) = 0;
    if ((v21 & 2) != 0)
    {
      goto LABEL_81;
    }
  }

  else
  {
    *v24 = 0;
    *(v24 + 23) = 0;
    if ((v21 & 2) != 0)
    {
      goto LABEL_81;
    }
  }

LABEL_28:
  if ((v21 & 4) == 0)
  {
    goto LABEL_29;
  }

LABEL_85:
  v26 = *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v26 + 23) < 0)
  {
    **v26 = 0;
    *(v26 + 8) = 0;
    if ((v21 & 8) != 0)
    {
      goto LABEL_89;
    }
  }

  else
  {
    *v26 = 0;
    *(v26 + 23) = 0;
    if ((v21 & 8) != 0)
    {
      goto LABEL_89;
    }
  }

LABEL_30:
  if ((v21 & 0x10) == 0)
  {
    goto LABEL_31;
  }

LABEL_93:
  v28 = *(a1 + 328) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v28 + 23) < 0)
  {
    **v28 = 0;
    *(v28 + 8) = 0;
    if ((v21 & 0x20) != 0)
    {
      goto LABEL_97;
    }
  }

  else
  {
    *v28 = 0;
    *(v28 + 23) = 0;
    if ((v21 & 0x20) != 0)
    {
      goto LABEL_97;
    }
  }

LABEL_32:
  if ((v21 & 0x40) == 0)
  {
    goto LABEL_33;
  }

LABEL_98:
  result = sub_16E48B0(*(a1 + 344));
  if ((v21 & 0x80) != 0)
  {
LABEL_34:
    result = sub_16E5B70(*(a1 + 352));
  }

LABEL_35:
  if ((v21 & 0xFF00) == 0)
  {
    goto LABEL_45;
  }

  if ((v21 & 0x100) != 0)
  {
    result = sub_14C56B8(*(a1 + 360));
    if ((v21 & 0x200) == 0)
    {
LABEL_38:
      if ((v21 & 0x400) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_68;
    }
  }

  else if ((v21 & 0x200) == 0)
  {
    goto LABEL_38;
  }

  result = sub_16EE0BC(*(a1 + 368));
  if ((v21 & 0x400) == 0)
  {
LABEL_39:
    if ((v21 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = sub_14A5A68(*(a1 + 376));
  if ((v21 & 0x800) == 0)
  {
LABEL_40:
    if ((v21 & 0x1000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_70;
  }

LABEL_69:
  result = sub_14C5A04(*(a1 + 384));
  if ((v21 & 0x1000) == 0)
  {
LABEL_41:
    if ((v21 & 0x2000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_71;
  }

LABEL_70:
  result = sub_14A62C4(*(a1 + 392));
  if ((v21 & 0x2000) == 0)
  {
LABEL_42:
    if ((v21 & 0x4000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_72;
  }

LABEL_71:
  result = sub_1494E9C(*(a1 + 400));
  if ((v21 & 0x4000) == 0)
  {
LABEL_43:
    if ((v21 & 0x8000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_72:
  result = sub_16E48B0(*(a1 + 408));
  if ((v21 & 0x8000) != 0)
  {
LABEL_44:
    result = sub_13F0580(*(a1 + 416));
  }

LABEL_45:
  if ((v21 & 0x3F0000) == 0)
  {
    goto LABEL_53;
  }

  if ((v21 & 0x10000) != 0)
  {
    result = sub_147559C(*(a1 + 424));
    if ((v21 & 0x20000) == 0)
    {
LABEL_48:
      if ((v21 & 0x40000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_76;
    }
  }

  else if ((v21 & 0x20000) == 0)
  {
    goto LABEL_48;
  }

  result = sub_14B4FA4(*(a1 + 432));
  if ((v21 & 0x40000) == 0)
  {
LABEL_49:
    if ((v21 & 0x80000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_77;
  }

LABEL_76:
  result = sub_16F4C00(*(a1 + 440));
  if ((v21 & 0x80000) == 0)
  {
LABEL_50:
    if ((v21 & 0x100000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_78;
  }

LABEL_77:
  result = sub_14B8E68(*(a1 + 448));
  if ((v21 & 0x100000) == 0)
  {
LABEL_51:
    if ((v21 & 0x200000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_78:
  result = sub_1495884(*(a1 + 456));
  if ((v21 & 0x200000) != 0)
  {
LABEL_52:
    result = sub_14772E0(*(a1 + 464));
  }

LABEL_53:
  if ((v21 & 0xC00000) != 0)
  {
    *(a1 + 472) = 0;
  }

  if (HIBYTE(v21))
  {
    *(a1 + 480) = 0u;
    *(a1 + 496) = 0u;
  }

  if ((*(a1 + 44) & 0x1F) != 0)
  {
    *(a1 + 528) = 0;
    *(a1 + 512) = 0u;
    *(a1 + 536) = 0x100000001;
  }

  v23 = *(a1 + 8);
  v22 = (a1 + 8);
  v22[4] = 0;
  if (v23)
  {

    return sub_1957EA8(v22);
  }

  return result;
}

char *sub_1754B50(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  if ((*(a1 + 40) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 336);
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

    v4 = sub_1493244(v6, v8, a3);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v11 = *(*(a1 + 72) + 8 * i + 8);
      *v4 = 18;
      v12 = *(v11 + 44);
      v4[1] = v12;
      if (v12 > 0x7F)
      {
        v13 = sub_19575D0(v12, v4 + 1);
      }

      else
      {
        v13 = v4 + 2;
      }

      v4 = sub_1549158(v11, v13, a3);
    }
  }

  if ((*(a1 + 44) & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v15 = *(a1 + 536);
    *v4 = 24;
    v4[1] = v15;
    if (v15 > 0x7F)
    {
      v4[1] = v15 | 0x80;
      v16 = v15 >> 7;
      v4[2] = v15 >> 7;
      v14 = v4 + 3;
      if (v15 >= 0x4000)
      {
        LOBYTE(v4) = v4[2];
        do
        {
          *(v14 - 1) = v4 | 0x80;
          LODWORD(v4) = v16 >> 7;
          *v14++ = v16 >> 7;
          v17 = v16 >> 14;
          v16 >>= 7;
        }

        while (v17);
      }
    }

    else
    {
      v14 = v4 + 2;
    }
  }

  else
  {
    v14 = v4;
  }

  v18 = *(a1 + 40);
  if ((v18 & 0x40) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v22 = *(a1 + 344);
    *v14 = 34;
    v23 = *(v22 + 44);
    v14[1] = v23;
    if (v23 > 0x7F)
    {
      v24 = sub_19575D0(v23, v14 + 1);
    }

    else
    {
      v24 = v14 + 2;
    }

    v14 = sub_16E886C(v22, v24, a3);
    if ((v18 & 0x80) == 0)
    {
LABEL_27:
      if ((v18 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((v18 & 0x80) == 0)
  {
    goto LABEL_27;
  }

  if (*a3 <= v14)
  {
    v14 = sub_225EB68(a3, v14);
  }

  v26 = *(a1 + 352);
  *v14 = 42;
  v27 = *(v26 + 20);
  v14[1] = v27;
  if (v27 > 0x7F)
  {
    v28 = sub_19575D0(v27, v14 + 1);
  }

  else
  {
    v28 = v14 + 2;
  }

  v14 = sub_16E5FE0(v26, v28, a3);
  if (v18)
  {
LABEL_28:
    v14 = sub_128AEEC(a3, 6, *(a1 + 296) & 0xFFFFFFFFFFFFFFFELL, v14);
  }

LABEL_29:
  v19 = *(a1 + 88);
  if (v19 >= 1)
  {
    v20 = 8;
    do
    {
      v14 = sub_1355F54(a3, 7, *(*(a1 + 96) + v20), v14);
      v20 += 8;
      --v19;
    }

    while (v19);
  }

  if ((v18 & 0x400000) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v25 = *(a1 + 472);
    *v14 = 64;
    v14[1] = v25;
    if (v25 > 0x7F)
    {
      v14[1] = v25 | 0x80;
      v29 = v25 >> 7;
      v14[2] = v25 >> 7;
      v21 = v14 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v14) = v14[2];
        do
        {
          *(v21 - 1) = v14 | 0x80;
          LODWORD(v14) = v29 >> 7;
          *v21++ = v29 >> 7;
          v30 = v29 >> 14;
          v29 >>= 7;
        }

        while (v30);
      }
    }

    else
    {
      v21 = v14 + 2;
    }
  }

  else
  {
    v21 = v14;
  }

  if ((v18 & 0x100) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v31 = *(a1 + 360);
    *v21 = 74;
    v32 = *(v31 + 24);
    v21[1] = v32;
    if (v32 > 0x7F)
    {
      v33 = sub_19575D0(v32, v21 + 1);
    }

    else
    {
      v33 = v21 + 2;
    }

    v21 = sub_1538BB4(v31, v33, a3);
    if ((v18 & 2) == 0)
    {
LABEL_53:
      if ((v18 & 0x800000) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_69;
    }
  }

  else if ((v18 & 2) == 0)
  {
    goto LABEL_53;
  }

  v21 = sub_128AEEC(a3, 10, *(a1 + 304) & 0xFFFFFFFFFFFFFFFELL, v21);
  if ((v18 & 0x800000) == 0)
  {
LABEL_54:
    if ((v18 & 0x2000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_72;
  }

LABEL_69:
  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v34 = *(a1 + 476);
  *v21 = 389;
  *(v21 + 2) = v34;
  v21 += 6;
  if ((v18 & 0x2000000) == 0)
  {
LABEL_55:
    if ((v18 & 0x200) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_75;
  }

LABEL_72:
  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v35 = *(a1 + 484);
  *v21 = 400;
  v21[2] = v35;
  v21 += 3;
  if ((v18 & 0x200) == 0)
  {
LABEL_56:
    if ((v18 & 0x400) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_81;
  }

LABEL_75:
  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v36 = *(a1 + 368);
  *v21 = 410;
  v37 = *(v36 + 20);
  v21[2] = v37;
  if (v37 > 0x7F)
  {
    v38 = sub_19575D0(v37, v21 + 2);
  }

  else
  {
    v38 = v21 + 3;
  }

  v21 = sub_16EE2C4(v36, v38, a3);
  if ((v18 & 0x400) == 0)
  {
LABEL_57:
    if ((v18 & 0x800) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_87;
  }

LABEL_81:
  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v39 = *(a1 + 376);
  *v21 = 418;
  v40 = *(v39 + 20);
  v21[2] = v40;
  if (v40 > 0x7F)
  {
    v41 = sub_19575D0(v40, v21 + 2);
  }

  else
  {
    v41 = v21 + 3;
  }

  v21 = sub_14A5D70(v39, v41, a3);
  if ((v18 & 0x800) != 0)
  {
LABEL_87:
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v42 = *(a1 + 384);
    *v21 = 426;
    v43 = *(v42 + 64);
    v21[2] = v43;
    if (v43 > 0x7F)
    {
      v44 = sub_19575D0(v43, v21 + 2);
    }

    else
    {
      v44 = v21 + 3;
    }

    v21 = sub_15506E0(v42, v44, a3);
  }

LABEL_93:
  v45 = *(a1 + 112);
  if (v45)
  {
    for (j = 0; j != v45; ++j)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v47 = *(*(a1 + 120) + 8 * j + 8);
      *v21 = 434;
      v48 = *(v47 + 20);
      v21[2] = v48;
      if (v48 > 0x7F)
      {
        v49 = sub_19575D0(v48, v21 + 2);
      }

      else
      {
        v49 = v21 + 3;
      }

      v21 = sub_154D580(v47, v49, a3);
    }
  }

  if ((v18 & 0x1000) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v50 = *(a1 + 392);
    *v21 = 442;
    v51 = *(v50 + 20);
    v21[2] = v51;
    if (v51 > 0x7F)
    {
      v52 = sub_19575D0(v51, v21 + 2);
    }

    else
    {
      v52 = v21 + 3;
    }

    v21 = sub_14A660C(v50, v52, a3);
  }

  if ((v18 & 0x1000000) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v54 = *(a1 + 480);
    *v21 = 448;
    v21[2] = v54;
    if (v54 > 0x7F)
    {
      v21[2] = v54 | 0x80;
      v55 = v54 >> 7;
      v21[3] = v54 >> 7;
      v53 = v21 + 4;
      if (v54 >= 0x4000)
      {
        LOBYTE(v56) = v21[3];
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
      v53 = v21 + 3;
    }
  }

  else
  {
    v53 = v21;
  }

  if ((v18 & 4) != 0)
  {
    v53 = sub_128AEEC(a3, 25, *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL, v53);
    if ((v18 & 0x4000000) == 0)
    {
LABEL_119:
      if ((v18 & 0x2000) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_127;
    }
  }

  else if ((v18 & 0x4000000) == 0)
  {
    goto LABEL_119;
  }

  if (*a3 <= v53)
  {
    v53 = sub_225EB68(a3, v53);
  }

  v58 = *(a1 + 485);
  *v53 = 464;
  v53[2] = v58;
  v53 += 3;
  if ((v18 & 0x2000) == 0)
  {
LABEL_120:
    if ((v18 & 8) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_133;
  }

LABEL_127:
  if (*a3 <= v53)
  {
    v53 = sub_225EB68(a3, v53);
  }

  v59 = *(a1 + 400);
  *v53 = 474;
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

  v53 = sub_1495324(v59, v61, a3);
  if ((v18 & 8) == 0)
  {
LABEL_121:
    if ((v18 & 0x4000) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_134;
  }

LABEL_133:
  v53 = sub_128AEEC(a3, 28, *(a1 + 320) & 0xFFFFFFFFFFFFFFFELL, v53);
  if ((v18 & 0x4000) == 0)
  {
    goto LABEL_140;
  }

LABEL_134:
  if (*a3 <= v53)
  {
    v53 = sub_225EB68(a3, v53);
  }

  v62 = *(a1 + 408);
  *v53 = 490;
  v63 = *(v62 + 44);
  v53[2] = v63;
  if (v63 > 0x7F)
  {
    v64 = sub_19575D0(v63, v53 + 2);
  }

  else
  {
    v64 = v53 + 3;
  }

  v53 = sub_16E886C(v62, v64, a3);
LABEL_140:
  if ((*(a1 + 44) & 0x10) != 0)
  {
    if (*a3 <= v53)
    {
      v53 = sub_225EB68(a3, v53);
    }

    v66 = *(a1 + 540);
    *v53 = 496;
    v53[2] = v66;
    if (v66 > 0x7F)
    {
      v53[2] = v66 | 0x80;
      v67 = v66 >> 7;
      v53[3] = v66 >> 7;
      v65 = v53 + 4;
      if (v66 >= 0x4000)
      {
        LOBYTE(v53) = v53[3];
        do
        {
          *(v65 - 1) = v53 | 0x80;
          v53 = (v67 >> 7);
          *v65++ = v67 >> 7;
          v68 = v67 >> 14;
          v67 >>= 7;
        }

        while (v68);
      }
    }

    else
    {
      v65 = v53 + 3;
    }
  }

  else
  {
    v65 = v53;
  }

  v69 = *(a1 + 40);
  if ((v69 & 0x8000) != 0)
  {
    if (*a3 <= v65)
    {
      v65 = sub_225EB68(a3, v65);
    }

    v70 = *(a1 + 416);
    *v65 = 506;
    v71 = *(v70 + 44);
    v65[2] = v71;
    if (v71 > 0x7F)
    {
      v72 = sub_19575D0(v71, v65 + 2);
    }

    else
    {
      v72 = v65 + 3;
    }

    v65 = sub_13F0804(v70, v72, a3);
  }

  v73 = *(a1 + 136);
  if (v73)
  {
    for (k = 0; k != v73; ++k)
    {
      if (*a3 <= v65)
      {
        v65 = sub_225EB68(a3, v65);
      }

      v75 = *(*(a1 + 144) + 8 * k + 8);
      *v65 = 642;
      v76 = *(v75 + 44);
      v65[2] = v76;
      if (v76 > 0x7F)
      {
        v77 = sub_19575D0(v76, v65 + 2);
      }

      else
      {
        v77 = v65 + 3;
      }

      v65 = sub_16E886C(v75, v77, a3);
    }
  }

  if ((v69 & 0x20000000) != 0)
  {
    if (*a3 <= v65)
    {
      v65 = sub_225EB68(a3, v65);
    }

    v79 = *(a1 + 496);
    *v65 = 648;
    v65[2] = v79;
    if (v79 > 0x7F)
    {
      v65[2] = v79 | 0x80;
      v80 = v79 >> 7;
      v65[3] = v79 >> 7;
      v78 = v65 + 4;
      if (v79 >= 0x4000)
      {
        LOBYTE(v65) = v65[3];
        do
        {
          *(v78 - 1) = v65 | 0x80;
          v65 = (v80 >> 7);
          *v78++ = v80 >> 7;
          v81 = v80 >> 14;
          v80 >>= 7;
        }

        while (v81);
      }
    }

    else
    {
      v78 = v65 + 3;
    }
  }

  else
  {
    v78 = v65;
  }

  if ((v69 & 0x10) != 0)
  {
    v78 = sub_128AEEC(a3, 34, *(a1 + 328) & 0xFFFFFFFFFFFFFFFELL, v78);
  }

  if ((v69 & 0x10000000) != 0)
  {
    if (*a3 <= v78)
    {
      v78 = sub_225EB68(a3, v78);
    }

    v82 = *(a1 + 488);
    *v78 = 665;
    *(v78 + 2) = v82;
    v78 += 10;
  }

  v83 = *(a1 + 160);
  if (v83)
  {
    for (m = 0; m != v83; ++m)
    {
      if (*a3 <= v78)
      {
        v78 = sub_225EB68(a3, v78);
      }

      v85 = *(*(a1 + 168) + 8 * m + 8);
      *v78 = 674;
      v86 = *(v85 + 20);
      v78[2] = v86;
      if (v86 > 0x7F)
      {
        v87 = sub_19575D0(v86, v78 + 2);
      }

      else
      {
        v87 = v78 + 3;
      }

      v78 = sub_14B45F8(v85, v87, a3);
    }
  }

  if ((v69 & 0x10000) != 0)
  {
    if (*a3 <= v78)
    {
      v78 = sub_225EB68(a3, v78);
    }

    v88 = *(a1 + 424);
    *v78 = 682;
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

    v78 = sub_1475A28(v88, v90, a3);
  }

  if ((v69 & 0x40000000) != 0)
  {
    if (*a3 <= v78)
    {
      v78 = sub_225EB68(a3, v78);
    }

    v92 = *(a1 + 500);
    *v78 = 688;
    v78[2] = v92;
    if (v92 > 0x7F)
    {
      v78[2] = v92 | 0x80;
      v93 = v92 >> 7;
      v78[3] = v92 >> 7;
      v91 = v78 + 4;
      if (v92 >= 0x4000)
      {
        LOBYTE(v78) = v78[3];
        do
        {
          *(v91 - 1) = v78 | 0x80;
          LODWORD(v78) = v93 >> 7;
          *v91++ = v93 >> 7;
          v94 = v93 >> 14;
          v93 >>= 7;
        }

        while (v94);
      }
    }

    else
    {
      v91 = v78 + 3;
    }
  }

  else
  {
    v91 = v78;
  }

  if ((v69 & 0x20000) != 0)
  {
    if (*a3 <= v91)
    {
      v91 = sub_225EB68(a3, v91);
    }

    v95 = *(a1 + 432);
    *v91 = 698;
    v96 = *(v95 + 20);
    v91[2] = v96;
    if (v96 > 0x7F)
    {
      v97 = sub_19575D0(v96, v91 + 2);
    }

    else
    {
      v97 = v91 + 3;
    }

    v91 = sub_14B56C0(v95, v97, a3);
    if ((v69 & 0x40000) == 0)
    {
LABEL_205:
      if ((v69 & 0x80000) == 0)
      {
        goto LABEL_225;
      }

      goto LABEL_219;
    }
  }

  else if ((v69 & 0x40000) == 0)
  {
    goto LABEL_205;
  }

  if (*a3 <= v91)
  {
    v91 = sub_225EB68(a3, v91);
  }

  v98 = *(a1 + 440);
  *v91 = 706;
  v99 = *(v98 + 20);
  v91[2] = v99;
  if (v99 > 0x7F)
  {
    v100 = sub_19575D0(v99, v91 + 2);
  }

  else
  {
    v100 = v91 + 3;
  }

  v91 = sub_16F4F90(v98, v100, a3);
  if ((v69 & 0x80000) != 0)
  {
LABEL_219:
    if (*a3 <= v91)
    {
      v91 = sub_225EB68(a3, v91);
    }

    v101 = *(a1 + 448);
    *v91 = 722;
    v102 = *(v101 + 20);
    v91[2] = v102;
    if (v102 > 0x7F)
    {
      v103 = sub_19575D0(v102, v91 + 2);
    }

    else
    {
      v103 = v91 + 3;
    }

    v91 = sub_14B9004(v101, v103, a3);
  }

LABEL_225:
  v104 = *(a1 + 184);
  if (v104 >= 1)
  {
    v105 = 8;
    do
    {
      v106 = *(*(a1 + 192) + v105);
      v107 = *(v106 + 23);
      if (v107 < 0 && (v107 = v106[1], v107 > 127) || (*a3 - v91 + 13) < v107)
      {
        v91 = sub_1957480(a3, 43, v106, v91);
      }

      else
      {
        *v91 = 730;
        v91[2] = v107;
        if (*(v106 + 23) < 0)
        {
          v106 = *v106;
        }

        v108 = v91 + 3;
        memcpy(v91 + 3, v106, v107);
        v91 = &v108[v107];
      }

      v105 += 8;
      --v104;
    }

    while (v104);
  }

  if ((v69 & 0x100000) != 0)
  {
    if (*a3 <= v91)
    {
      v91 = sub_225EB68(a3, v91);
    }

    v109 = *(a1 + 456);
    *v91 = 738;
    v110 = *(v109 + 40);
    v91[2] = v110;
    if (v110 > 0x7F)
    {
      v111 = sub_19575D0(v110, v91 + 2);
    }

    else
    {
      v111 = v91 + 3;
    }

    v91 = sub_1495ABC(v109, v111, a3);
  }

  v112 = *(a1 + 208);
  if (v112)
  {
    for (n = 0; n != v112; ++n)
    {
      if (*a3 <= v91)
      {
        v91 = sub_225EB68(a3, v91);
      }

      v114 = *(*(a1 + 216) + 8 * n + 8);
      *v91 = 746;
      v115 = *(v114 + 20);
      v91[2] = v115;
      if (v115 > 0x7F)
      {
        v116 = sub_19575D0(v115, v91 + 2);
      }

      else
      {
        v116 = v91 + 3;
      }

      v91 = sub_14A0040(v114, v116, a3);
    }
  }

  if ((v69 & 0x200000) != 0)
  {
    if (*a3 <= v91)
    {
      v91 = sub_225EB68(a3, v91);
    }

    v117 = *(a1 + 464);
    *v91 = 754;
    v118 = *(v117 + 64);
    v91[2] = v118;
    if (v118 > 0x7F)
    {
      v119 = sub_19575D0(v118, v91 + 2);
    }

    else
    {
      v119 = v91 + 3;
    }

    v91 = sub_1477524(v117, v119, a3);
  }

  if (v69 < 0)
  {
    if (*a3 <= v91)
    {
      v91 = sub_225EB68(a3, v91);
    }

    v121 = *(a1 + 504);
    *v91 = 760;
    v91[2] = v121;
    if (v121 > 0x7F)
    {
      v91[2] = v121 | 0x80;
      v122 = v121 >> 7;
      v91[3] = v121 >> 7;
      v120 = v91 + 4;
      if (v121 >= 0x4000)
      {
        LOBYTE(v123) = v91[3];
        do
        {
          *(v120 - 1) = v123 | 0x80;
          v123 = v122 >> 7;
          *v120++ = v122 >> 7;
          v124 = v122 >> 14;
          v122 >>= 7;
        }

        while (v124);
      }
    }

    else
    {
      v120 = v91 + 3;
    }
  }

  else
  {
    v120 = v91;
  }

  if ((v69 & 0x8000000) != 0)
  {
    if (*a3 <= v120)
    {
      v120 = sub_225EB68(a3, v120);
    }

    v125 = *(a1 + 486);
    *v120 = 896;
    v120[2] = v125;
    v120 += 3;
  }

  v126 = *(a1 + 44);
  if ((v126 & 2) != 0)
  {
    if (*a3 <= v120)
    {
      v120 = sub_225EB68(a3, v120);
    }

    v127 = *(a1 + 520);
    *v120 = 905;
    *(v120 + 2) = v127;
    v120 += 10;
  }

  if ((v126 & 4) != 0)
  {
    if (*a3 <= v120)
    {
      v120 = sub_225EB68(a3, v120);
    }

    v128 = *(a1 + 528);
    *v120 = 913;
    *(v120 + 2) = v128;
    v120 += 10;
  }

  v129 = *(a1 + 232);
  if (v129)
  {
    for (ii = 0; ii != v129; ++ii)
    {
      if (*a3 <= v120)
      {
        v120 = sub_225EB68(a3, v120);
      }

      v131 = *(*(a1 + 240) + 8 * ii + 8);
      *v120 = 1698;
      v132 = *(v131 + 20);
      v120[2] = v132;
      if (v132 > 0x7F)
      {
        v133 = sub_19575D0(v132, v120 + 2);
      }

      else
      {
        v133 = v120 + 3;
      }

      v120 = sub_16EEE1C(v131, v133, a3);
    }
  }

  v134 = *(a1 + 256);
  if (v134 >= 1)
  {
    v135 = 8;
    do
    {
      v120 = sub_1355F54(a3, 101, *(*(a1 + 264) + v135), v120);
      v135 += 8;
      --v134;
    }

    while (v134);
  }

  v136 = *(a1 + 280);
  if (v136 >= 1)
  {
    v137 = 8;
    do
    {
      v138 = *(*(a1 + 288) + v137);
      v139 = *(v138 + 23);
      if (v139 < 0 && (v139 = v138[1], v139 > 127) || (*a3 - v120 + 13) < v139)
      {
        v120 = sub_1957480(a3, 102, v138, v120);
      }

      else
      {
        *v120 = 1714;
        v120[2] = v139;
        if (*(v138 + 23) < 0)
        {
          v138 = *v138;
        }

        v140 = v120 + 3;
        memcpy(v120 + 3, v138, v139);
        v120 = &v140[v139];
      }

      v137 += 8;
      --v136;
    }

    while (v136);
  }

  if (v126)
  {
    if (*a3 <= v120)
    {
      v120 = sub_225EB68(a3, v120);
    }

    v142 = *(a1 + 512);
    *v120 = 1720;
    v120[2] = v142;
    if (v142 > 0x7F)
    {
      v120[2] = v142 | 0x80;
      v143 = v142 >> 7;
      v120[3] = v142 >> 7;
      v141 = v120 + 4;
      if (v142 >= 0x4000)
      {
        LOBYTE(v120) = v120[3];
        do
        {
          *(v141 - 1) = v120 | 0x80;
          LODWORD(v120) = v143 >> 7;
          *v141++ = v143 >> 7;
          v144 = v143 >> 14;
          v143 >>= 7;
        }

        while (v144);
      }
    }

    else
    {
      v141 = v120 + 3;
    }
  }

  else
  {
    v141 = v120;
  }

  if (*(a1 + 26))
  {
    v141 = sub_1953428(a1 + 16, 956, 10101, v141, a3);
  }

  v145 = *(a1 + 8);
  if ((v145 & 1) == 0)
  {
    return v141;
  }

  v147 = v145 & 0xFFFFFFFFFFFFFFFCLL;
  v148 = *(v147 + 31);
  if (v148 < 0)
  {
    v149 = *(v147 + 8);
    v148 = *(v147 + 16);
  }

  else
  {
    v149 = (v147 + 8);
  }

  if ((*a3 - v141) >= v148)
  {
    v150 = v148;
    memcpy(v141, v149, v148);
    v141 += v150;
    return v141;
  }

  return sub_1957130(a3, v149, v148, v141);
}

uint64_t sub_1755E4C(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 64);
  v4 = v2 + v3;
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
      v9 = sub_1549388(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 88);
  v11 = v4 + v10;
  if (v10 >= 1)
  {
    v12 = (*(a1 + 96) + 8);
    do
    {
      v13 = *v12++;
      v14 = *(v13 + 23);
      v15 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v14;
      }

      v11 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      --v10;
    }

    while (v10);
  }

  v16 = *(a1 + 112);
  v17 = v11 + 2 * v16;
  v18 = *(a1 + 120);
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
      v22 = sub_154DABC(v21);
      v17 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      v20 -= 8;
    }

    while (v20);
  }

  v23 = *(a1 + 136);
  v24 = v17 + 2 * v23;
  v25 = *(a1 + 144);
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
      v29 = sub_16E8DA4(v28);
      v24 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6);
      v27 -= 8;
    }

    while (v27);
  }

  v30 = *(a1 + 160);
  v31 = v24 + 2 * v30;
  v32 = *(a1 + 168);
  if (v32)
  {
    v33 = (v32 + 8);
  }

  else
  {
    v33 = 0;
  }

  if (v30)
  {
    v34 = 8 * v30;
    do
    {
      v35 = *v33++;
      v36 = sub_14B49AC(v35);
      v31 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6);
      v34 -= 8;
    }

    while (v34);
  }

  v37 = *(a1 + 184);
  v38 = v31 + 2 * v37;
  if (v37 >= 1)
  {
    v39 = (*(a1 + 192) + 8);
    do
    {
      v40 = *v39++;
      v41 = *(v40 + 23);
      v42 = *(v40 + 8);
      if ((v41 & 0x80u) == 0)
      {
        v42 = v41;
      }

      v38 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      --v37;
    }

    while (v37);
  }

  v43 = *(a1 + 208);
  v44 = v38 + 2 * v43;
  v45 = *(a1 + 216);
  if (v45)
  {
    v46 = (v45 + 8);
  }

  else
  {
    v46 = 0;
  }

  if (v43)
  {
    v47 = 8 * v43;
    do
    {
      v48 = *v46++;
      v49 = sub_14A01EC(v48);
      v44 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6);
      v47 -= 8;
    }

    while (v47);
  }

  v50 = *(a1 + 232);
  v51 = v44 + 2 * v50;
  v52 = *(a1 + 240);
  if (v52)
  {
    v53 = (v52 + 8);
  }

  else
  {
    v53 = 0;
  }

  if (v50)
  {
    v54 = 8 * v50;
    do
    {
      v55 = *v53++;
      v56 = sub_16EEF64(v55);
      v51 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6);
      v54 -= 8;
    }

    while (v54);
  }

  v57 = *(a1 + 256);
  v58 = v51 + 2 * v57;
  if (v57 >= 1)
  {
    v59 = (*(a1 + 264) + 8);
    do
    {
      v60 = *v59++;
      v61 = *(v60 + 23);
      v62 = *(v60 + 8);
      if ((v61 & 0x80u) == 0)
      {
        v62 = v61;
      }

      v58 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6);
      --v57;
    }

    while (v57);
  }

  v63 = *(a1 + 280);
  v64 = v58 + 2 * v63;
  if (v63 >= 1)
  {
    v65 = (*(a1 + 288) + 8);
    do
    {
      v66 = *v65++;
      v67 = *(v66 + 23);
      v68 = *(v66 + 8);
      if ((v67 & 0x80u) == 0)
      {
        v68 = v67;
      }

      v64 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6);
      --v63;
    }

    while (v63);
  }

  v69 = *(a1 + 40);
  if (!v69)
  {
    goto LABEL_67;
  }

  if (v69)
  {
    v80 = *(a1 + 296) & 0xFFFFFFFFFFFFFFFELL;
    v81 = *(v80 + 23);
    v82 = *(v80 + 8);
    if ((v81 & 0x80u) == 0)
    {
      v82 = v81;
    }

    v64 += v82 + ((9 * (__clz(v82 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v69 & 2) == 0)
    {
LABEL_60:
      if ((v69 & 4) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_126;
    }
  }

  else if ((v69 & 2) == 0)
  {
    goto LABEL_60;
  }

  v83 = *(a1 + 304) & 0xFFFFFFFFFFFFFFFELL;
  v84 = *(v83 + 23);
  v85 = *(v83 + 8);
  if ((v84 & 0x80u) == 0)
  {
    v85 = v84;
  }

  v64 += v85 + ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v69 & 4) == 0)
  {
LABEL_61:
    if ((v69 & 8) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_129;
  }

LABEL_126:
  v86 = *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL;
  v87 = *(v86 + 23);
  v88 = *(v86 + 8);
  if ((v87 & 0x80u) == 0)
  {
    v88 = v87;
  }

  v64 += v88 + ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v69 & 8) == 0)
  {
LABEL_62:
    if ((v69 & 0x10) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_132;
  }

LABEL_129:
  v89 = *(a1 + 320) & 0xFFFFFFFFFFFFFFFELL;
  v90 = *(v89 + 23);
  v91 = *(v89 + 8);
  if ((v90 & 0x80u) == 0)
  {
    v91 = v90;
  }

  v64 += v91 + ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v69 & 0x10) == 0)
  {
LABEL_63:
    if ((v69 & 0x20) == 0)
    {
      goto LABEL_64;
    }

LABEL_135:
    v95 = sub_1493DE4(*(a1 + 336));
    v64 += v95 + ((9 * (__clz(v95 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v69 & 0x40) == 0)
    {
LABEL_65:
      if ((v69 & 0x80) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    goto LABEL_136;
  }

LABEL_132:
  v92 = *(a1 + 328) & 0xFFFFFFFFFFFFFFFELL;
  v93 = *(v92 + 23);
  v94 = *(v92 + 8);
  if ((v93 & 0x80u) == 0)
  {
    v94 = v93;
  }

  v64 += v94 + ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v69 & 0x20) != 0)
  {
    goto LABEL_135;
  }

LABEL_64:
  if ((v69 & 0x40) == 0)
  {
    goto LABEL_65;
  }

LABEL_136:
  v96 = sub_16E8DA4(*(a1 + 344));
  v64 += v96 + ((9 * (__clz(v96 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v69 & 0x80) != 0)
  {
LABEL_66:
    v70 = sub_16E62F4(*(a1 + 352));
    v64 += v70 + ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_67:
  if ((v69 & 0xFF00) == 0)
  {
    goto LABEL_77;
  }

  if ((v69 & 0x100) != 0)
  {
    v97 = sub_153A048(*(a1 + 360));
    v64 += v97 + ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v69 & 0x200) == 0)
    {
LABEL_70:
      if ((v69 & 0x400) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_140;
    }
  }

  else if ((v69 & 0x200) == 0)
  {
    goto LABEL_70;
  }

  v98 = sub_16EE474(*(a1 + 368));
  v64 += v98 + ((9 * (__clz(v98 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v69 & 0x400) == 0)
  {
LABEL_71:
    if ((v69 & 0x800) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_141;
  }

LABEL_140:
  v99 = sub_14A5F60(*(a1 + 376));
  v64 += v99 + ((9 * (__clz(v99 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v69 & 0x800) == 0)
  {
LABEL_72:
    if ((v69 & 0x1000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_142;
  }

LABEL_141:
  v100 = sub_15508CC(*(a1 + 384));
  v64 += v100 + ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v69 & 0x1000) == 0)
  {
LABEL_73:
    if ((v69 & 0x2000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_143;
  }

LABEL_142:
  v101 = sub_14A67FC(*(a1 + 392));
  v64 += v101 + ((9 * (__clz(v101 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v69 & 0x2000) == 0)
  {
LABEL_74:
    if ((v69 & 0x4000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_144;
  }

LABEL_143:
  v102 = sub_1495570(*(a1 + 400));
  v64 += v102 + ((9 * (__clz(v102 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v69 & 0x4000) == 0)
  {
LABEL_75:
    if ((v69 & 0x8000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

LABEL_144:
  v103 = sub_16E8DA4(*(a1 + 408));
  v64 += v103 + ((9 * (__clz(v103 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v69 & 0x8000) != 0)
  {
LABEL_76:
    v71 = sub_13F09D8(*(a1 + 416));
    v64 += v71 + ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_77:
  if ((v69 & 0xFF0000) == 0)
  {
    goto LABEL_88;
  }

  if ((v69 & 0x10000) != 0)
  {
    v104 = sub_1475E08(*(a1 + 424));
    v64 += v104 + ((9 * (__clz(v104 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v69 & 0x20000) == 0)
    {
LABEL_80:
      if ((v69 & 0x40000) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_148;
    }
  }

  else if ((v69 & 0x20000) == 0)
  {
    goto LABEL_80;
  }

  v105 = sub_14B5BB4(*(a1 + 432));
  v64 += v105 + ((9 * (__clz(v105 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v69 & 0x40000) == 0)
  {
LABEL_81:
    if ((v69 & 0x80000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_149;
  }

LABEL_148:
  v106 = sub_16F5164(*(a1 + 440));
  v64 += v106 + ((9 * (__clz(v106 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v69 & 0x80000) == 0)
  {
LABEL_82:
    if ((v69 & 0x100000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_150;
  }

LABEL_149:
  v107 = sub_14B90E4(*(a1 + 448));
  v64 += v107 + ((9 * (__clz(v107 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v69 & 0x100000) == 0)
  {
LABEL_83:
    if ((v69 & 0x200000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_151;
  }

LABEL_150:
  v108 = sub_1495BA4(*(a1 + 456));
  v64 += v108 + ((9 * (__clz(v108 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v69 & 0x200000) == 0)
  {
LABEL_84:
    if ((v69 & 0x400000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_151:
  v109 = sub_1477688(*(a1 + 464));
  v64 += v109 + ((9 * (__clz(v109 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v69 & 0x400000) != 0)
  {
LABEL_85:
    v64 += ((9 * (__clz(*(a1 + 472) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_86:
  if ((v69 & 0x800000) != 0)
  {
    v64 += 6;
  }

LABEL_88:
  if (!HIBYTE(v69))
  {
    goto LABEL_103;
  }

  if ((v69 & 0x1000000) != 0)
  {
    v64 += ((9 * (__clz(*(a1 + 480) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v72 = v64 + 3;
  if ((v69 & 0x2000000) == 0)
  {
    v72 = v64;
  }

  if ((v69 & 0x4000000) != 0)
  {
    v72 += 3;
  }

  if ((v69 & 0x8000000) != 0)
  {
    v72 += 3;
  }

  if ((v69 & 0x10000000) != 0)
  {
    v64 = v72 + 10;
  }

  else
  {
    v64 = v72;
  }

  if ((v69 & 0x20000000) == 0)
  {
    if ((v69 & 0x40000000) == 0)
    {
      goto LABEL_102;
    }

LABEL_157:
    v64 += ((9 * (__clz(*(a1 + 500) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v69 & 0x80000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_158;
  }

  v110 = *(a1 + 496);
  v111 = ((9 * (__clz(v110 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v110 >= 0)
  {
    v112 = v111;
  }

  else
  {
    v112 = 12;
  }

  v64 += v112;
  if ((v69 & 0x40000000) != 0)
  {
    goto LABEL_157;
  }

LABEL_102:
  if ((v69 & 0x80000000) == 0)
  {
    goto LABEL_103;
  }

LABEL_158:
  v64 += ((9 * (__clz(*(a1 + 504) | 1) ^ 0x3F) + 73) >> 6) + 2;
LABEL_103:
  v73 = *(a1 + 44);
  if ((v73 & 0x1F) != 0)
  {
    if (v73)
    {
      v64 += ((9 * (__clz(*(a1 + 512) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v74 = v64 + 10;
    if ((v73 & 2) == 0)
    {
      v74 = v64;
    }

    if ((v73 & 4) != 0)
    {
      v64 = v74 + 10;
    }

    else
    {
      v64 = v74;
    }

    if ((v73 & 8) != 0)
    {
      v64 += ((9 * (__clz(*(a1 + 536) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v73 & 0x10) != 0)
    {
      v75 = *(a1 + 540);
      v76 = ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v75 >= 0)
      {
        v77 = v76;
      }

      else
      {
        v77 = 12;
      }

      v64 += v77;
    }
  }

  v78 = *(a1 + 8);
  if (v78)
  {
    v113 = v78 & 0xFFFFFFFFFFFFFFFCLL;
    v114 = *((v78 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v114 < 0)
    {
      v114 = *(v113 + 16);
    }

    v64 += v114;
  }

  *(a1 + 48) = v64;
  return v64;
}

void sub_17568AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  if (v4)
  {
    v5 = *(a2 + 72);
    v6 = sub_19592E8(a1 + 56, *(a2 + 64));
    sub_1449ED8((a1 + 56), v6, (v5 + 8), v4, **(a1 + 72) - *(a1 + 64));
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
    sub_1201B48(a1 + 80, v11, (v10 + 8), v9, **(a1 + 96) - *(a1 + 88));
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
    sub_144D55C((a1 + 104), v16, (v15 + 8), v14, **(a1 + 120) - *(a1 + 112));
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
    sub_1409AF8((a1 + 128), v21, (v20 + 8), v19, **(a1 + 144) - *(a1 + 136));
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
    sub_1764208((a1 + 152), v26, (v25 + 8), v24, **(a1 + 168) - *(a1 + 160));
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
    sub_1201B48(a1 + 176, v31, (v30 + 8), v29, **(a1 + 192) - *(a1 + 184));
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
    sub_15682E4((a1 + 200), v36, (v35 + 8), v34, **(a1 + 216) - *(a1 + 208));
    v37 = *(a1 + 208) + v34;
    *(a1 + 208) = v37;
    v38 = *(a1 + 216);
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  v39 = *(a2 + 232);
  if (v39)
  {
    v40 = *(a2 + 240);
    v41 = sub_19592E8(a1 + 224, *(a2 + 232));
    sub_12E5E34((a1 + 224), v41, (v40 + 8), v39, **(a1 + 240) - *(a1 + 232));
    v42 = *(a1 + 232) + v39;
    *(a1 + 232) = v42;
    v43 = *(a1 + 240);
    if (*v43 < v42)
    {
      *v43 = v42;
    }
  }

  v44 = *(a2 + 256);
  if (v44)
  {
    v45 = *(a2 + 264);
    v46 = sub_19592E8(a1 + 248, *(a2 + 256));
    sub_1201B48(a1 + 248, v46, (v45 + 8), v44, **(a1 + 264) - *(a1 + 256));
    v47 = *(a1 + 256) + v44;
    *(a1 + 256) = v47;
    v48 = *(a1 + 264);
    if (*v48 < v47)
    {
      *v48 = v47;
    }
  }

  v49 = *(a2 + 280);
  if (v49)
  {
    v50 = *(a2 + 288);
    v51 = sub_19592E8(a1 + 272, *(a2 + 280));
    sub_1201B48(a1 + 272, v51, (v50 + 8), v49, **(a1 + 288) - *(a1 + 280));
    v52 = *(a1 + 280) + v49;
    *(a1 + 280) = v52;
    v53 = *(a1 + 288);
    if (*v53 < v52)
    {
      *v53 = v52;
    }
  }

  v54 = *(a2 + 40);
  if (!v54)
  {
    goto LABEL_80;
  }

  if (v54)
  {
    v55 = *(a2 + 296);
    *(a1 + 40) |= 1u;
    v56 = *(a1 + 8);
    v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
    if (v56)
    {
      v57 = *v57;
    }

    sub_194EA1C((a1 + 296), (v55 & 0xFFFFFFFFFFFFFFFELL), v57);
    if ((v54 & 2) == 0)
    {
LABEL_34:
      if ((v54 & 4) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_47;
    }
  }

  else if ((v54 & 2) == 0)
  {
    goto LABEL_34;
  }

  v58 = *(a2 + 304);
  *(a1 + 40) |= 2u;
  v59 = *(a1 + 8);
  v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
  if (v59)
  {
    v60 = *v60;
  }

  sub_194EA1C((a1 + 304), (v58 & 0xFFFFFFFFFFFFFFFELL), v60);
  if ((v54 & 4) == 0)
  {
LABEL_35:
    if ((v54 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_50;
  }

LABEL_47:
  v61 = *(a2 + 312);
  *(a1 + 40) |= 4u;
  v62 = *(a1 + 8);
  v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
  if (v62)
  {
    v63 = *v63;
  }

  sub_194EA1C((a1 + 312), (v61 & 0xFFFFFFFFFFFFFFFELL), v63);
  if ((v54 & 8) == 0)
  {
LABEL_36:
    if ((v54 & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_53;
  }

LABEL_50:
  v64 = *(a2 + 320);
  *(a1 + 40) |= 8u;
  v65 = *(a1 + 8);
  v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
  if (v65)
  {
    v66 = *v66;
  }

  sub_194EA1C((a1 + 320), (v64 & 0xFFFFFFFFFFFFFFFELL), v66);
  if ((v54 & 0x10) == 0)
  {
LABEL_37:
    if ((v54 & 0x20) == 0)
    {
      goto LABEL_38;
    }

LABEL_56:
    *(a1 + 40) |= 0x20u;
    v70 = *(a1 + 336);
    if (!v70)
    {
      v71 = *(a1 + 8);
      v72 = (v71 & 0xFFFFFFFFFFFFFFFCLL);
      if (v71)
      {
        v72 = *v72;
      }

      v70 = sub_14BD814(v72);
      *(a1 + 336) = v70;
    }

    if (*(a2 + 336))
    {
      v73 = *(a2 + 336);
    }

    else
    {
      v73 = &off_2772E28;
    }

    sub_149429C(v70, v73);
    if ((v54 & 0x40) == 0)
    {
LABEL_39:
      if ((v54 & 0x80) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_72;
    }

    goto LABEL_64;
  }

LABEL_53:
  v67 = *(a2 + 328);
  *(a1 + 40) |= 0x10u;
  v68 = *(a1 + 8);
  v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL);
  if (v68)
  {
    v69 = *v69;
  }

  sub_194EA1C((a1 + 328), (v67 & 0xFFFFFFFFFFFFFFFELL), v69);
  if ((v54 & 0x20) != 0)
  {
    goto LABEL_56;
  }

LABEL_38:
  if ((v54 & 0x40) == 0)
  {
    goto LABEL_39;
  }

LABEL_64:
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

    v74 = sub_16F5BD8(v76);
    *(a1 + 344) = v74;
  }

  if (*(a2 + 344))
  {
    v77 = *(a2 + 344);
  }

  else
  {
    v77 = &off_277E738;
  }

  sub_16E4964(v74, v77);
  if ((v54 & 0x80) != 0)
  {
LABEL_72:
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

      sub_16F58FC(v80);
      *(a1 + 352) = v78;
    }

    if (*(a2 + 352))
    {
      v81 = *(a2 + 352);
    }

    else
    {
      v81 = &off_277E650;
    }

    sub_16E645C(v78, v81);
  }

LABEL_80:
  if ((v54 & 0xFF00) == 0)
  {
    goto LABEL_154;
  }

  if ((v54 & 0x100) != 0)
  {
    *(a1 + 40) |= 0x100u;
    v82 = *(a1 + 360);
    if (!v82)
    {
      v83 = *(a1 + 8);
      v84 = (v83 & 0xFFFFFFFFFFFFFFFCLL);
      if (v83)
      {
        v84 = *v84;
      }

      sub_155193C(v84);
      *(a1 + 360) = v82;
    }

    if (*(a2 + 360))
    {
      v85 = *(a2 + 360);
    }

    else
    {
      v85 = &off_2776700;
    }

    sub_14C9078(v82, v85);
    if ((v54 & 0x200) == 0)
    {
LABEL_83:
      if ((v54 & 0x400) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_106;
    }
  }

  else if ((v54 & 0x200) == 0)
  {
    goto LABEL_83;
  }

  *(a1 + 40) |= 0x200u;
  v86 = *(a1 + 368);
  if (!v86)
  {
    v87 = *(a1 + 8);
    v88 = (v87 & 0xFFFFFFFFFFFFFFFCLL);
    if (v87)
    {
      v88 = *v88;
    }

    v86 = sub_16F5F38(v88);
    *(a1 + 368) = v86;
  }

  if (*(a2 + 368))
  {
    v89 = *(a2 + 368);
  }

  else
  {
    v89 = &off_277E980;
  }

  sub_121721C(v86, v89);
  if ((v54 & 0x400) == 0)
  {
LABEL_84:
    if ((v54 & 0x800) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_114;
  }

LABEL_106:
  *(a1 + 40) |= 0x400u;
  v90 = *(a1 + 376);
  if (!v90)
  {
    v91 = *(a1 + 8);
    v92 = (v91 & 0xFFFFFFFFFFFFFFFCLL);
    if (v91)
    {
      v92 = *v92;
    }

    v90 = sub_14BE4C8(v92);
    *(a1 + 376) = v90;
  }

  if (*(a2 + 376))
  {
    v93 = *(a2 + 376);
  }

  else
  {
    v93 = &off_2773488;
  }

  sub_12CC47C(v90, v93);
  if ((v54 & 0x800) == 0)
  {
LABEL_85:
    if ((v54 & 0x1000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_122;
  }

LABEL_114:
  *(a1 + 40) |= 0x800u;
  v94 = *(a1 + 384);
  if (!v94)
  {
    v95 = *(a1 + 8);
    v96 = (v95 & 0xFFFFFFFFFFFFFFFCLL);
    if (v95)
    {
      v96 = *v96;
    }

    v94 = sub_1552788(v96);
    *(a1 + 384) = v94;
  }

  if (*(a2 + 384))
  {
    v97 = *(a2 + 384);
  }

  else
  {
    v97 = &off_27770C8;
  }

  sub_14C99B8(v94, v97);
  if ((v54 & 0x1000) == 0)
  {
LABEL_86:
    if ((v54 & 0x2000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_130;
  }

LABEL_122:
  *(a1 + 40) |= 0x1000u;
  v98 = *(a1 + 392);
  if (!v98)
  {
    v99 = *(a1 + 8);
    v100 = (v99 & 0xFFFFFFFFFFFFFFFCLL);
    if (v99)
    {
      v100 = *v100;
    }

    sub_14BE550(v100);
    *(a1 + 392) = v98;
  }

  if (*(a2 + 392))
  {
    v101 = *(a2 + 392);
  }

  else
  {
    v101 = &off_27734B8;
  }

  sub_12CC47C(v98, v101);
  if ((v54 & 0x2000) == 0)
  {
LABEL_87:
    if ((v54 & 0x4000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_138;
  }

LABEL_130:
  *(a1 + 40) |= 0x2000u;
  v102 = *(a1 + 400);
  if (!v102)
  {
    v103 = *(a1 + 8);
    v104 = (v103 & 0xFFFFFFFFFFFFFFFCLL);
    if (v103)
    {
      v104 = *v104;
    }

    v102 = sub_14BD8FC(v104);
    *(a1 + 400) = v102;
  }

  if (*(a2 + 400))
  {
    v105 = *(a2 + 400);
  }

  else
  {
    v105 = &off_2772ED0;
  }

  sub_14955F0(v102, v105);
  if ((v54 & 0x4000) == 0)
  {
LABEL_88:
    if ((v54 & 0x8000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_146;
  }

LABEL_138:
  *(a1 + 40) |= 0x4000u;
  v106 = *(a1 + 408);
  if (!v106)
  {
    v107 = *(a1 + 8);
    v108 = (v107 & 0xFFFFFFFFFFFFFFFCLL);
    if (v107)
    {
      v108 = *v108;
    }

    v106 = sub_16F5BD8(v108);
    *(a1 + 408) = v106;
  }

  if (*(a2 + 408))
  {
    v109 = *(a2 + 408);
  }

  else
  {
    v109 = &off_277E738;
  }

  sub_16E4964(v106, v109);
  if ((v54 & 0x8000) != 0)
  {
LABEL_146:
    *(a1 + 40) |= 0x8000u;
    v110 = *(a1 + 416);
    if (!v110)
    {
      v111 = *(a1 + 8);
      v112 = (v111 & 0xFFFFFFFFFFFFFFFCLL);
      if (v111)
      {
        v112 = *v112;
      }

      v110 = sub_13F0FB4(v112);
      *(a1 + 416) = v110;
    }

    if (*(a2 + 416))
    {
      v113 = *(a2 + 416);
    }

    else
    {
      v113 = &off_276F370;
    }

    sub_13F0A84(v110, v113);
  }

LABEL_154:
  if ((v54 & 0xFF0000) == 0)
  {
    goto LABEL_165;
  }

  if ((v54 & 0x10000) != 0)
  {
    *(a1 + 40) |= 0x10000u;
    v116 = *(a1 + 424);
    if (!v116)
    {
      v117 = *(a1 + 8);
      v118 = (v117 & 0xFFFFFFFFFFFFFFFCLL);
      if (v117)
      {
        v118 = *v118;
      }

      v116 = sub_14BC508(v118);
      *(a1 + 424) = v116;
    }

    if (*(a2 + 424))
    {
      v119 = *(a2 + 424);
    }

    else
    {
      v119 = &off_27721B8;
    }

    sub_1475FBC(v116, v119);
    if ((v54 & 0x20000) == 0)
    {
LABEL_157:
      if ((v54 & 0x40000) == 0)
      {
        goto LABEL_158;
      }

      goto LABEL_203;
    }
  }

  else if ((v54 & 0x20000) == 0)
  {
    goto LABEL_157;
  }

  *(a1 + 40) |= 0x20000u;
  v120 = *(a1 + 432);
  if (!v120)
  {
    v121 = *(a1 + 8);
    v122 = (v121 & 0xFFFFFFFFFFFFFFFCLL);
    if (v121)
    {
      v122 = *v122;
    }

    v120 = sub_14BF3C4(v122);
    *(a1 + 432) = v120;
  }

  if (*(a2 + 432))
  {
    v123 = *(a2 + 432);
  }

  else
  {
    v123 = &off_2773A48;
  }

  sub_14B5E78(v120, v123);
  if ((v54 & 0x40000) == 0)
  {
LABEL_158:
    if ((v54 & 0x80000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_211;
  }

LABEL_203:
  *(a1 + 40) |= 0x40000u;
  v124 = *(a1 + 440);
  if (!v124)
  {
    v125 = *(a1 + 8);
    v126 = (v125 & 0xFFFFFFFFFFFFFFFCLL);
    if (v125)
    {
      v126 = *v126;
    }

    v124 = sub_16F65CC(v126);
    *(a1 + 440) = v124;
  }

  if (*(a2 + 440))
  {
    v127 = *(a2 + 440);
  }

  else
  {
    v127 = &off_277EBD8;
  }

  sub_12C3070(v124, v127);
  if ((v54 & 0x80000) == 0)
  {
LABEL_159:
    if ((v54 & 0x100000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_219;
  }

LABEL_211:
  *(a1 + 40) |= 0x80000u;
  v128 = *(a1 + 448);
  if (!v128)
  {
    v129 = *(a1 + 8);
    v130 = (v129 & 0xFFFFFFFFFFFFFFFCLL);
    if (v129)
    {
      v130 = *v130;
    }

    v128 = sub_14BF5F4(v130);
    *(a1 + 448) = v128;
  }

  if (*(a2 + 448))
  {
    v131 = *(a2 + 448);
  }

  else
  {
    v131 = &off_2773BF8;
  }

  sub_140C624(v128, v131);
  if ((v54 & 0x100000) == 0)
  {
LABEL_160:
    if ((v54 & 0x200000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_227;
  }

LABEL_219:
  *(a1 + 40) |= 0x100000u;
  v132 = *(a1 + 456);
  if (!v132)
  {
    v133 = *(a1 + 8);
    v134 = (v133 & 0xFFFFFFFFFFFFFFFCLL);
    if (v133)
    {
      v134 = *v134;
    }

    v132 = sub_14BD980(v134);
    *(a1 + 456) = v132;
  }

  if (*(a2 + 456))
  {
    v135 = *(a2 + 456);
  }

  else
  {
    v135 = &off_2772EF0;
  }

  sub_13E88F4(v132, v135);
  if ((v54 & 0x200000) == 0)
  {
LABEL_161:
    if ((v54 & 0x400000) == 0)
    {
      goto LABEL_162;
    }

LABEL_235:
    *(a1 + 472) = *(a2 + 472);
    if ((v54 & 0x800000) == 0)
    {
      goto LABEL_164;
    }

    goto LABEL_163;
  }

LABEL_227:
  *(a1 + 40) |= 0x200000u;
  v136 = *(a1 + 464);
  if (!v136)
  {
    v137 = *(a1 + 8);
    v138 = (v137 & 0xFFFFFFFFFFFFFFFCLL);
    if (v137)
    {
      v138 = *v138;
    }

    v136 = sub_14BC6D4(v138);
    *(a1 + 464) = v136;
  }

  if (*(a2 + 464))
  {
    v139 = *(a2 + 464);
  }

  else
  {
    v139 = &off_2772200;
  }

  sub_1477734(v136, v139);
  if ((v54 & 0x400000) != 0)
  {
    goto LABEL_235;
  }

LABEL_162:
  if ((v54 & 0x800000) != 0)
  {
LABEL_163:
    *(a1 + 476) = *(a2 + 476);
  }

LABEL_164:
  *(a1 + 40) |= v54;
LABEL_165:
  if (!HIBYTE(v54))
  {
    goto LABEL_175;
  }

  if ((v54 & 0x1000000) != 0)
  {
    *(a1 + 480) = *(a2 + 480);
    if ((v54 & 0x2000000) == 0)
    {
LABEL_168:
      if ((v54 & 0x4000000) == 0)
      {
        goto LABEL_169;
      }

      goto LABEL_244;
    }
  }

  else if ((v54 & 0x2000000) == 0)
  {
    goto LABEL_168;
  }

  *(a1 + 484) = *(a2 + 484);
  if ((v54 & 0x4000000) == 0)
  {
LABEL_169:
    if ((v54 & 0x8000000) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_245;
  }

LABEL_244:
  *(a1 + 485) = *(a2 + 485);
  if ((v54 & 0x8000000) == 0)
  {
LABEL_170:
    if ((v54 & 0x10000000) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_246;
  }

LABEL_245:
  *(a1 + 486) = *(a2 + 486);
  if ((v54 & 0x10000000) == 0)
  {
LABEL_171:
    if ((v54 & 0x20000000) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_247;
  }

LABEL_246:
  *(a1 + 488) = *(a2 + 488);
  if ((v54 & 0x20000000) == 0)
  {
LABEL_172:
    if ((v54 & 0x40000000) == 0)
    {
      goto LABEL_173;
    }

LABEL_248:
    *(a1 + 500) = *(a2 + 500);
    if ((v54 & 0x80000000) == 0)
    {
      goto LABEL_174;
    }

LABEL_249:
    *(a1 + 504) = *(a2 + 504);
    goto LABEL_174;
  }

LABEL_247:
  *(a1 + 496) = *(a2 + 496);
  if ((v54 & 0x40000000) != 0)
  {
    goto LABEL_248;
  }

LABEL_173:
  if ((v54 & 0x80000000) != 0)
  {
    goto LABEL_249;
  }

LABEL_174:
  *(a1 + 40) |= v54;
LABEL_175:
  v114 = *(a2 + 44);
  if ((v114 & 0x1F) == 0)
  {
    goto LABEL_183;
  }

  if (v114)
  {
    *(a1 + 512) = *(a2 + 512);
    if ((v114 & 2) == 0)
    {
LABEL_178:
      if ((v114 & 4) == 0)
      {
        goto LABEL_179;
      }

      goto LABEL_239;
    }
  }

  else if ((v114 & 2) == 0)
  {
    goto LABEL_178;
  }

  *(a1 + 520) = *(a2 + 520);
  if ((v114 & 4) == 0)
  {
LABEL_179:
    if ((v114 & 8) == 0)
    {
      goto LABEL_180;
    }

LABEL_240:
    *(a1 + 536) = *(a2 + 536);
    if ((v114 & 0x10) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_181;
  }

LABEL_239:
  *(a1 + 528) = *(a2 + 528);
  if ((v114 & 8) != 0)
  {
    goto LABEL_240;
  }

LABEL_180:
  if ((v114 & 0x10) != 0)
  {
LABEL_181:
    *(a1 + 540) = *(a2 + 540);
  }

LABEL_182:
  *(a1 + 44) |= v114;
LABEL_183:
  sub_225EA0C(a1 + 16, a2 + 16);
  v115 = *(a2 + 8);
  if (v115)
  {

    sub_1957EF4((a1 + 8), (v115 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_175745C(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_17545D4(a1);

    sub_17568AC(a1, a2);
  }
}

uint64_t sub_17574A8(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 64);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_14D04F4(*(*(a1 + 72) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 112);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_14D0578(*(*(a1 + 120) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(a1 + 136);
    while (v9 >= 1)
    {
      v10 = v9 - 1;
      v11 = sub_16E4B4C(*(*(a1 + 144) + 8 * v9));
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(a1 + 208);
    while (v12 >= 1)
    {
      v13 = v12 - 1;
      v14 = sub_14A0414(*(*(a1 + 216) + 8 * v12));
      v12 = v13;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    v15 = *(a1 + 232);
    while (v15 >= 1)
    {
      result = 0;
      v16 = *(*(a1 + 240) + 8 * v15--);
      if ((*(v16 + 16) & 1) == 0)
      {
        return result;
      }
    }

    v17 = *(a1 + 40);
    if ((v17 & 0x20) != 0)
    {
      result = sub_1494CB0(*(a1 + 336));
      if (!result)
      {
        return result;
      }

      v17 = *(a1 + 40);
    }

    if ((v17 & 0x40) != 0)
    {
      result = sub_16E4B4C(*(a1 + 344));
      if (!result)
      {
        return result;
      }

      v17 = *(a1 + 40);
    }

    if ((v17 & 0x80) != 0)
    {
      result = sub_16E661C(*(a1 + 352) + 24);
      if (!result)
      {
        return result;
      }

      v17 = *(a1 + 40);
    }

    if ((v17 & 0x100) != 0)
    {
      result = sub_14C9D50(*(a1 + 360));
      if (!result)
      {
        return result;
      }

      v17 = *(a1 + 40);
    }

    if ((v17 & 0x200) != 0 && (~*(*(a1 + 368) + 16) & 3) != 0)
    {
      return 0;
    }

    if ((v17 & 0x4000) != 0)
    {
      result = sub_16E4B4C(*(a1 + 408));
      if (!result)
      {
        return result;
      }

      v17 = *(a1 + 40);
    }

    if ((v17 & 0x8000) != 0)
    {
      result = sub_13F0B14(*(a1 + 416));
      if (!result)
      {
        return result;
      }

      v17 = *(a1 + 40);
    }

    if ((v17 & 0x10000) != 0)
    {
      result = sub_14760E0(*(a1 + 424));
      if (!result)
      {
        return result;
      }

      v17 = *(a1 + 40);
    }

    if ((v17 & 0x20000) != 0)
    {
      result = sub_14B6108(*(a1 + 432));
      if (!result)
      {
        return result;
      }

      v17 = *(a1 + 40);
    }

    if ((v17 & 0x200000) == 0)
    {
      return 1;
    }

    result = sub_14777FC(*(a1 + 464));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void sub_1757674(uint64_t a1, uint64_t a2)
{
  sub_1951F08((a1 + 16), (a2 + 16));
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v4;
  LODWORD(v4) = *(a1 + 44);
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = v4;
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  v7 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v7;
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v8;
  *(a2 + 88) = v9;
  v10 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v10;
  v11 = *(a1 + 104);
  v12 = *(a1 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v11;
  *(a2 + 112) = v12;
  v13 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = v13;
  v14 = *(a1 + 128);
  v15 = *(a1 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = v14;
  *(a2 + 136) = v15;
  v16 = *(a1 + 144);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = v16;
  v17 = *(a1 + 152);
  v18 = *(a1 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = v17;
  *(a2 + 160) = v18;
  v19 = *(a1 + 168);
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 168) = v19;
  v20 = *(a1 + 176);
  v21 = *(a1 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 176) = v20;
  *(a2 + 184) = v21;
  v22 = *(a1 + 192);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = v22;
  v23 = *(a1 + 200);
  v24 = *(a1 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 200) = v23;
  *(a2 + 208) = v24;
  v25 = *(a1 + 216);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = v25;
  v26 = *(a1 + 224);
  v27 = *(a1 + 232);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 224) = v26;
  *(a2 + 232) = v27;
  v28 = *(a1 + 240);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 240) = v28;
  v29 = *(a1 + 248);
  v30 = *(a1 + 256);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 248) = v29;
  *(a2 + 256) = v30;
  v31 = *(a1 + 264);
  *(a1 + 264) = *(a2 + 264);
  *(a2 + 264) = v31;
  v32 = *(a1 + 272);
  v33 = *(a1 + 280);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 272) = v32;
  *(a2 + 280) = v33;
  v34 = *(a1 + 288);
  *(a1 + 288) = *(a2 + 288);
  *(a2 + 288) = v34;
  v35 = *(a2 + 296);
  *(a2 + 296) = *(a1 + 296);
  *(a1 + 296) = v35;
  v36 = *(a2 + 304);
  *(a2 + 304) = *(a1 + 304);
  *(a1 + 304) = v36;
  v37 = *(a2 + 312);
  *(a2 + 312) = *(a1 + 312);
  *(a1 + 312) = v37;
  v38 = *(a2 + 320);
  *(a2 + 320) = *(a1 + 320);
  *(a1 + 320) = v38;
  v39 = *(a2 + 328);
  *(a2 + 328) = *(a1 + 328);
  *(a1 + 328) = v39;
  v40 = *(a1 + 336);
  v41 = *(a1 + 344);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 336) = v40;
  *(a2 + 344) = v41;
  sub_16E30F0((a1 + 352), a2 + 352);
  v42 = *(a1 + 536);
  *(a1 + 536) = *(a2 + 536);
  *(a2 + 536) = v42;
  v43 = *(a1 + 540);
  *(a1 + 540) = *(a2 + 540);
  *(a2 + 540) = v43;
}

uint64_t sub_17578B0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_2707208;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  return a1;
}

void sub_1757914(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1757944(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a1 + 16;
  *a1 = off_2707208;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v4, a2 + 16);
  return a1;
}

void sub_17579D8(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1757A14(void *a1)
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

void sub_1757A90(void *a1)
{
  sub_1757A14(a1);

  operator delete();
}

unsigned __int8 *sub_1757AC8(uint64_t a1)
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

char *sub_1757B18(uint64_t a1, char *a2, int32x2_t *a3)
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

      if (v6 - 4008 > 0x317)
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
        v10 = sub_19525AC((a1 + 16), v6, v5, &off_27811B0, (a1 + 8), a3);
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

char *sub_1757C50(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 501, 600, a2, a3);
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

uint64_t sub_1757D18(uint64_t a1)
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

uint64_t sub_1757D80(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_2707288;
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
  *(a1 + 168) = 0;
  *(a1 + 176) = a2;
  *(a1 + 184) = a2;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = a2;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = a2;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = a2;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = a2;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = a2;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = a2;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = a2;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = &qword_278E990;
  *(a1 + 384) = &qword_278E990;
  *(a1 + 392) = &qword_278E990;
  *(a1 + 400) = &qword_278E990;
  *(a1 + 408) = &qword_278E990;
  *(a1 + 416) = &qword_278E990;
  *(a1 + 424) = &qword_278E990;
  *(a1 + 556) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 572) = 2;
  return a1;
}

void sub_1757E74(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1757EA8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v83 = a1 + 16;
  *a1 = off_2707288;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 68) = 0;
  *(a1 + 52) = 0;
  *(a1 + 60) = 0;
  *(a1 + 44) = 0;
  v5 = *(a2 + 56);
  if (v5)
  {
    v6 = *(a2 + 64);
    v7 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144C6DC((a1 + 48), v7, (v6 + 8), v5, **(a1 + 64) - *(a1 + 56));
    v8 = *(a1 + 56) + v5;
    *(a1 + 56) = v8;
    v9 = *(a1 + 64);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v10 = *(a2 + 80);
  if (v10)
  {
    v11 = *(a2 + 88);
    v12 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1764294((a1 + 72), v12, (v11 + 8), v10, **(a1 + 88) - *(a1 + 80));
    v13 = *(a1 + 80) + v10;
    *(a1 + 80) = v13;
    v14 = *(a1 + 88);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v15 = *(a2 + 104);
  if (v15)
  {
    v16 = *(a2 + 112);
    v17 = sub_19592E8(a1 + 96, v15);
    sub_144DA24((a1 + 96), v17, (v16 + 8), v15, **(a1 + 112) - *(a1 + 104));
    v18 = *(a1 + 104) + v15;
    *(a1 + 104) = v18;
    v19 = *(a1 + 112);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v20 = *(a2 + 128);
  if (v20)
  {
    v21 = *(a2 + 136);
    v22 = sub_19592E8(a1 + 120, v20);
    sub_144DA24((a1 + 120), v22, (v21 + 8), v20, **(a1 + 136) - *(a1 + 128));
    v23 = *(a1 + 128) + v20;
    *(a1 + 128) = v23;
    v24 = *(a1 + 136);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v25 = *(a2 + 152);
  if (v25)
  {
    v26 = *(a2 + 160);
    v27 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_1568370((a1 + 144), v27, (v26 + 8), v25, **(a1 + 160) - *(a1 + 152));
    v28 = *(a1 + 152) + v25;
    *(a1 + 152) = v28;
    v29 = *(a1 + 160);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v30 = *(a2 + 168);
  if (v30)
  {
    sub_1958E5C((a1 + 168), v30);
    v31 = *(a1 + 176);
    *(a1 + 168) += *(a2 + 168);
    memcpy(v31, *(a2 + 176), 4 * *(a2 + 168));
  }

  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v32 = *(a2 + 192);
  if (v32)
  {
    v33 = *(a2 + 200);
    v34 = sub_19592E8(a1 + 184, *(a2 + 192));
    sub_1764320((a1 + 184), v34, (v33 + 8), v32, **(a1 + 200) - *(a1 + 192));
    v35 = *(a1 + 192) + v32;
    *(a1 + 192) = v35;
    v36 = *(a1 + 200);
    if (*v36 < v35)
    {
      *v36 = v35;
    }
  }

  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  v37 = *(a2 + 216);
  if (v37)
  {
    v38 = *(a2 + 224);
    v39 = sub_19592E8(a1 + 208, *(a2 + 216));
    sub_1566A98((a1 + 208), v39, (v38 + 8), v37, **(a1 + 224) - *(a1 + 216));
    v40 = *(a1 + 216) + v37;
    *(a1 + 216) = v40;
    v41 = *(a1 + 224);
    if (*v41 < v40)
    {
      *v41 = v40;
    }
  }

  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  v42 = *(a2 + 240);
  if (v42)
  {
    v43 = *(a2 + 248);
    v44 = sub_19592E8(a1 + 232, *(a2 + 240));
    sub_1566980((a1 + 232), v44, (v43 + 8), v42, **(a1 + 248) - *(a1 + 240));
    v45 = *(a1 + 240) + v42;
    *(a1 + 240) = v45;
    v46 = *(a1 + 248);
    if (*v46 < v45)
    {
      *v46 = v45;
    }
  }

  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  v47 = *(a2 + 264);
  if (v47)
  {
    v48 = *(a2 + 272);
    v49 = sub_19592E8(a1 + 256, *(a2 + 264));
    sub_1566A0C((a1 + 256), v49, (v48 + 8), v47, **(a1 + 272) - *(a1 + 264));
    v50 = *(a1 + 264) + v47;
    *(a1 + 264) = v50;
    v51 = *(a1 + 272);
    if (*v51 < v50)
    {
      *v51 = v50;
    }
  }

  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  v52 = *(a2 + 288);
  if (v52)
  {
    v53 = *(a2 + 296);
    v54 = sub_19592E8(a1 + 280, *(a2 + 288));
    sub_EB3760((a1 + 280), v54, (v53 + 8), v52, **(a1 + 296) - *(a1 + 288));
    v55 = *(a1 + 288) + v52;
    *(a1 + 288) = v55;
    v56 = *(a1 + 296);
    if (*v56 < v55)
    {
      *v56 = v55;
    }
  }

  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  v57 = *(a2 + 312);
  if (v57)
  {
    v58 = *(a2 + 320);
    v59 = sub_19592E8(a1 + 304, *(a2 + 312));
    sub_17643AC((a1 + 304), v59, (v58 + 8), v57, **(a1 + 320) - *(a1 + 312));
    v60 = *(a1 + 312) + v57;
    *(a1 + 312) = v60;
    v61 = *(a1 + 320);
    if (*v61 < v60)
    {
      *v61 = v60;
    }
  }

  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  v62 = *(a2 + 336);
  if (v62)
  {
    v63 = *(a2 + 344);
    v64 = sub_19592E8(a1 + 328, *(a2 + 336));
    sub_1201B48(a1 + 328, v64, (v63 + 8), v62, **(a1 + 344) - *(a1 + 336));
    v65 = *(a1 + 336) + v62;
    *(a1 + 336) = v65;
    v66 = *(a1 + 344);
    if (*v66 < v65)
    {
      *v66 = v65;
    }
  }

  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  v67 = *(a2 + 360);
  if (v67)
  {
    v68 = *(a2 + 368);
    v69 = sub_19592E8(a1 + 352, *(a2 + 360));
    sub_13B4634((a1 + 352), v69, (v68 + 8), v67, **(a1 + 368) - *(a1 + 360));
    v70 = *(a1 + 360) + v67;
    *(a1 + 360) = v70;
    v71 = *(a1 + 368);
    if (*v71 < v70)
    {
      *v71 = v70;
    }
  }

  v72 = *(a2 + 8);
  if (v72)
  {
    sub_1957EF4(v4, (v72 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v83, a2 + 16);
  *(a1 + 376) = &qword_278E990;
  v73 = *(a2 + 40);
  if (v73)
  {
    v74 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v74 = *v74;
    }

    sub_194EA1C((a1 + 376), (*(a2 + 376) & 0xFFFFFFFFFFFFFFFELL), v74);
    v73 = *(a2 + 40);
  }

  *(a1 + 384) = &qword_278E990;
  if ((v73 & 2) != 0)
  {
    v75 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v75 = *v75;
    }

    sub_194EA1C((a1 + 384), (*(a2 + 384) & 0xFFFFFFFFFFFFFFFELL), v75);
    v73 = *(a2 + 40);
  }

  *(a1 + 392) = &qword_278E990;
  if ((v73 & 4) != 0)
  {
    v76 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v76 = *v76;
    }

    sub_194EA1C((a1 + 392), (*(a2 + 392) & 0xFFFFFFFFFFFFFFFELL), v76);
    v73 = *(a2 + 40);
  }

  *(a1 + 400) = &qword_278E990;
  if ((v73 & 8) != 0)
  {
    v77 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v77 = *v77;
    }

    sub_194EA1C((a1 + 400), (*(a2 + 400) & 0xFFFFFFFFFFFFFFFELL), v77);
    v73 = *(a2 + 40);
  }

  *(a1 + 408) = &qword_278E990;
  if ((v73 & 0x10) != 0)
  {
    v78 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v78 = *v78;
    }

    sub_194EA1C((a1 + 408), (*(a2 + 408) & 0xFFFFFFFFFFFFFFFELL), v78);
    v73 = *(a2 + 40);
  }

  *(a1 + 416) = &qword_278E990;
  if ((v73 & 0x20) != 0)
  {
    v79 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v79 = *v79;
    }

    sub_194EA1C((a1 + 416), (*(a2 + 416) & 0xFFFFFFFFFFFFFFFELL), v79);
    v73 = *(a2 + 40);
  }

  *(a1 + 424) = &qword_278E990;
  if ((v73 & 0x40) != 0)
  {
    v80 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v80 = *v80;
    }

    sub_194EA1C((a1 + 424), (*(a2 + 424) & 0xFFFFFFFFFFFFFFFELL), v80);
    v73 = *(a2 + 40);
  }

  if ((v73 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 432) = 0;
  if ((v73 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 440) = 0;
  if ((v73 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 448) = 0;
  if ((v73 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 456) = 0;
  if ((v73 & 0x800) != 0)
  {
    operator new();
  }

  *(a1 + 464) = 0;
  if ((v73 & 0x1000) != 0)
  {
    operator new();
  }

  *(a1 + 472) = 0;
  if ((v73 & 0x2000) != 0)
  {
    operator new();
  }

  *(a1 + 480) = 0;
  if ((v73 & 0x4000) != 0)
  {
    operator new();
  }

  *(a1 + 488) = 0;
  if ((v73 & 0x8000) != 0)
  {
    operator new();
  }

  *(a1 + 496) = 0;
  if ((v73 & 0x10000) != 0)
  {
    operator new();
  }

  *(a1 + 504) = 0;
  if ((v73 & 0x20000) != 0)
  {
    operator new();
  }

  *(a1 + 512) = 0;
  if ((v73 & 0x40000) != 0)
  {
    operator new();
  }

  *(a1 + 520) = 0;
  if ((v73 & 0x80000) != 0)
  {
    operator new();
  }

  *(a1 + 528) = 0;
  if ((v73 & 0x100000) != 0)
  {
    operator new();
  }

  *(a1 + 536) = 0;
  if ((v73 & 0x200000) != 0)
  {
    operator new();
  }

  *(a1 + 544) = 0;
  v81 = *(a2 + 552);
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 552) = v81;
  return a1;
}

void *sub_1758BD4(void *a1)
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

  sub_1758D00(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_13B3AA4(a1 + 44);
  sub_1956AFC(a1 + 41);
  sub_1764184(a1 + 38);
  sub_1567EB4(a1 + 35);
  sub_1564C50(a1 + 32);
  sub_1564BCC(a1 + 29);
  sub_1564CD4(a1 + 26);
  sub_1764100(a1 + 23);
  sub_1956ABC((a1 + 21));
  sub_1567FBC(a1 + 18);
  sub_144D914(a1 + 15);
  sub_144D914(a1 + 12);
  sub_176407C(a1 + 9);
  sub_144B648(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_1758D00(uint64_t result)
{
  v1 = result;
  if (*(result + 376) != &qword_278E990)
  {
    sub_194E89C((result + 376));
  }

  if (*(result + 384) != &qword_278E990)
  {
    sub_194E89C((result + 384));
  }

  if (*(result + 392) != &qword_278E990)
  {
    sub_194E89C((result + 392));
  }

  if (*(result + 400) != &qword_278E990)
  {
    sub_194E89C((result + 400));
  }

  if (*(result + 408) != &qword_278E990)
  {
    sub_194E89C((result + 408));
  }

  if (*(result + 416) != &qword_278E990)
  {
    sub_194E89C((result + 416));
  }

  if (*(result + 424) != &qword_278E990)
  {
    sub_194E89C((result + 424));
  }

  if (result != &off_27811E0)
  {
    v2 = *(result + 432);
    if (v2)
    {
      sub_141405C(v2);
      operator delete();
    }

    v3 = v1[55];
    if (v3)
    {
      sub_175C9F0(v3);
      operator delete();
    }

    if (v1[56])
    {
      sub_153BF18();
      operator delete();
    }

    v4 = v1[57];
    if (v4)
    {
      sub_14AFBC8(v4);
      operator delete();
    }

    v5 = v1[58];
    if (v5)
    {
      sub_13F0C4C(v5);
      operator delete();
    }

    v6 = v1[59];
    if (v6)
    {
      sub_14B2A2C(v6);
      operator delete();
    }

    v7 = v1[60];
    if (v7)
    {
      sub_143406C(v7);
      operator delete();
    }

    v8 = v1[61];
    if (v8)
    {
      sub_1757A14(v8);
      operator delete();
    }

    if (v1[62])
    {
      sub_154C0C0();
      operator delete();
    }

    if (v1[63])
    {
      sub_1481624();
      operator delete();
    }

    v9 = v1[64];
    if (v9)
    {
      sub_14BA090(v9);
      operator delete();
    }

    v10 = v1[65];
    if (v10)
    {
      sub_1498590(v10);
      operator delete();
    }

    v11 = v1[66];
    if (v11)
    {
      sub_1757A14(v11);
      operator delete();
    }

    v12 = v1[67];
    if (v12)
    {
      sub_14913C4(v12);
      operator delete();
    }

    result = v1[68];
    if (result)
    {
      sub_1431E58(result);

      operator delete();
    }
  }

  return result;
}

void sub_1758FBC(void *a1)
{
  sub_1758BD4(a1);

  operator delete();
}

uint64_t sub_1758FF4(uint64_t a1)
{
  sub_1951124((a1 + 16));
  v2 = *(a1 + 56);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 64) + 8);
    do
    {
      v4 = *v3++;
      sub_148C3F4(v4);
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
      sub_14D28E4(v7);
      --v5;
    }

    while (v5);
    *(a1 + 80) = 0;
  }

  v8 = *(a1 + 104);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 112) + 8);
    do
    {
      v10 = *v9++;
      sub_149D390(v10);
      --v8;
    }

    while (v8);
    *(a1 + 104) = 0;
  }

  v11 = *(a1 + 128);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 136) + 8);
    do
    {
      v13 = *v12++;
      sub_149D390(v13);
      --v11;
    }

    while (v11);
    *(a1 + 128) = 0;
  }

  v14 = *(a1 + 152);
  if (v14 >= 1)
  {
    v15 = (*(a1 + 160) + 8);
    do
    {
      v16 = *v15++;
      sub_14A52E8(v16);
      --v14;
    }

    while (v14);
    *(a1 + 152) = 0;
  }

  *(a1 + 168) = 0;
  v17 = *(a1 + 192);
  if (v17 >= 1)
  {
    v18 = (*(a1 + 200) + 8);
    do
    {
      v19 = *v18++;
      sub_141C414(v19);
      --v17;
    }

    while (v17);
    *(a1 + 192) = 0;
  }

  v20 = *(a1 + 216);
  if (v20 >= 1)
  {
    v21 = (*(a1 + 224) + 8);
    do
    {
      v22 = *v21++;
      sub_14A05E0(v22);
      --v20;
    }

    while (v20);
    *(a1 + 216) = 0;
  }

  v23 = *(a1 + 240);
  if (v23 >= 1)
  {
    v24 = (*(a1 + 248) + 8);
    do
    {
      v25 = *v24++;
      sub_14A4824(v25);
      --v23;
    }

    while (v23);
    *(a1 + 240) = 0;
  }

  v26 = *(a1 + 264);
  if (v26 >= 1)
  {
    v27 = (*(a1 + 272) + 8);
    do
    {
      v28 = *v27++;
      sub_14A1624(v28);
      --v26;
    }

    while (v26);
    *(a1 + 264) = 0;
  }

  v29 = *(a1 + 288);
  if (v29 >= 1)
  {
    v30 = (*(a1 + 296) + 8);
    do
    {
      v31 = *v30++;
      sub_1487EC8(v31);
      --v29;
    }

    while (v29);
    *(a1 + 288) = 0;
  }

  v32 = *(a1 + 312);
  if (v32 >= 1)
  {
    v33 = (*(a1 + 320) + 8);
    do
    {
      v34 = *v33++;
      sub_14197F0(v34);
      --v32;
    }

    while (v32);
    *(a1 + 312) = 0;
  }

  result = sub_12A41D0(a1 + 328);
  v36 = *(a1 + 360);
  if (v36 >= 1)
  {
    v37 = (*(a1 + 368) + 8);
    do
    {
      v38 = *v37++;
      result = sub_1421590(v38);
      --v36;
    }

    while (v36);
    *(a1 + 360) = 0;
  }

  v39 = *(a1 + 40);
  if (!v39)
  {
    goto LABEL_59;
  }

  if (v39)
  {
    v42 = *(a1 + 376) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v42 + 23) < 0)
    {
      **v42 = 0;
      *(v42 + 8) = 0;
      if ((v39 & 2) != 0)
      {
        goto LABEL_103;
      }
    }

    else
    {
      *v42 = 0;
      *(v42 + 23) = 0;
      if ((v39 & 2) != 0)
      {
        goto LABEL_103;
      }
    }

LABEL_52:
    if ((v39 & 4) == 0)
    {
      goto LABEL_53;
    }

LABEL_107:
    v44 = *(a1 + 392) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v44 + 23) < 0)
    {
      **v44 = 0;
      *(v44 + 8) = 0;
      if ((v39 & 8) != 0)
      {
        goto LABEL_111;
      }
    }

    else
    {
      *v44 = 0;
      *(v44 + 23) = 0;
      if ((v39 & 8) != 0)
      {
        goto LABEL_111;
      }
    }

LABEL_54:
    if ((v39 & 0x10) == 0)
    {
      goto LABEL_55;
    }

LABEL_115:
    v46 = *(a1 + 408) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v46 + 23) < 0)
    {
      **v46 = 0;
      *(v46 + 8) = 0;
      if ((v39 & 0x20) != 0)
      {
        goto LABEL_119;
      }
    }

    else
    {
      *v46 = 0;
      *(v46 + 23) = 0;
      if ((v39 & 0x20) != 0)
      {
        goto LABEL_119;
      }
    }

LABEL_56:
    if ((v39 & 0x40) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_123;
  }

  if ((v39 & 2) == 0)
  {
    goto LABEL_52;
  }

LABEL_103:
  v43 = *(a1 + 384) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v43 + 23) < 0)
  {
    **v43 = 0;
    *(v43 + 8) = 0;
    if ((v39 & 4) != 0)
    {
      goto LABEL_107;
    }
  }

  else
  {
    *v43 = 0;
    *(v43 + 23) = 0;
    if ((v39 & 4) != 0)
    {
      goto LABEL_107;
    }
  }

LABEL_53:
  if ((v39 & 8) == 0)
  {
    goto LABEL_54;
  }

LABEL_111:
  v45 = *(a1 + 400) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v45 + 23) < 0)
  {
    **v45 = 0;
    *(v45 + 8) = 0;
    if ((v39 & 0x10) != 0)
    {
      goto LABEL_115;
    }
  }

  else
  {
    *v45 = 0;
    *(v45 + 23) = 0;
    if ((v39 & 0x10) != 0)
    {
      goto LABEL_115;
    }
  }

LABEL_55:
  if ((v39 & 0x20) == 0)
  {
    goto LABEL_56;
  }

LABEL_119:
  v47 = *(a1 + 416) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v47 + 23) & 0x80000000) == 0)
  {
    *v47 = 0;
    *(v47 + 23) = 0;
    if ((v39 & 0x40) != 0)
    {
      goto LABEL_123;
    }

LABEL_57:
    if ((v39 & 0x80) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  **v47 = 0;
  *(v47 + 8) = 0;
  if ((v39 & 0x40) == 0)
  {
    goto LABEL_57;
  }

LABEL_123:
  v48 = *(a1 + 424) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v48 + 23) & 0x80000000) == 0)
  {
    *v48 = 0;
    *(v48 + 23) = 0;
    if ((v39 & 0x80) == 0)
    {
      goto LABEL_59;
    }

LABEL_58:
    result = sub_1414098(*(a1 + 432));
    goto LABEL_59;
  }

  **v48 = 0;
  *(v48 + 8) = 0;
  if ((v39 & 0x80) != 0)
  {
    goto LABEL_58;
  }

LABEL_59:
  if ((v39 & 0xFF00) == 0)
  {
    goto LABEL_69;
  }

  if ((v39 & 0x100) != 0)
  {
    result = sub_17594D8(*(a1 + 440));
    if ((v39 & 0x200) == 0)
    {
LABEL_62:
      if ((v39 & 0x400) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_90;
    }
  }

  else if ((v39 & 0x200) == 0)
  {
    goto LABEL_62;
  }

  result = sub_144E31C(*(a1 + 448));
  if ((v39 & 0x400) == 0)
  {
LABEL_63:
    if ((v39 & 0x800) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_91;
  }

LABEL_90:
  result = sub_14AFC04(*(a1 + 456));
  if ((v39 & 0x800) == 0)
  {
LABEL_64:
    if ((v39 & 0x1000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_92;
  }

LABEL_91:
  result = sub_13F0C88(*(a1 + 464));
  if ((v39 & 0x1000) == 0)
  {
LABEL_65:
    if ((v39 & 0x2000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_93;
  }

LABEL_92:
  result = sub_14B2A68(*(a1 + 472));
  if ((v39 & 0x2000) == 0)
  {
LABEL_66:
    if ((v39 & 0x4000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_94;
  }

LABEL_93:
  result = sub_14340A8(*(a1 + 480));
  if ((v39 & 0x4000) == 0)
  {
LABEL_67:
    if ((v39 & 0x8000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

LABEL_94:
  result = sub_1757AC8(*(a1 + 488));
  if ((v39 & 0x8000) != 0)
  {
LABEL_68:
    result = sub_14C9FA8(*(a1 + 496));
  }

LABEL_69:
  if ((v39 & 0x3F0000) == 0)
  {
    goto LABEL_77;
  }

  if ((v39 & 0x10000) != 0)
  {
    result = sub_1481660(*(a1 + 504));
    if ((v39 & 0x20000) == 0)
    {
LABEL_72:
      if ((v39 & 0x40000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_98;
    }
  }

  else if ((v39 & 0x20000) == 0)
  {
    goto LABEL_72;
  }

  result = sub_14BA0CC(*(a1 + 512));
  if ((v39 & 0x40000) == 0)
  {
LABEL_73:
    if ((v39 & 0x80000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_99;
  }

LABEL_98:
  result = sub_14985CC(*(a1 + 520));
  if ((v39 & 0x80000) == 0)
  {
LABEL_74:
    if ((v39 & 0x100000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_100;
  }

LABEL_99:
  result = sub_1757AC8(*(a1 + 528));
  if ((v39 & 0x100000) == 0)
  {
LABEL_75:
    if ((v39 & 0x200000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

LABEL_100:
  result = sub_1491400(*(a1 + 536));
  if ((v39 & 0x200000) != 0)
  {
LABEL_76:
    result = sub_1431E94(*(a1 + 544));
  }

LABEL_77:
  if ((v39 & 0xC00000) != 0)
  {
    *(a1 + 552) = 0;
  }

  if ((v39 & 0x7F000000) != 0)
  {
    *(a1 + 560) = 0;
    *(a1 + 568) = 0x200000000;
  }

  v41 = *(a1 + 8);
  v40 = a1 + 8;
  *(v40 + 32) = 0;
  if (v41)
  {

    return sub_1957EA8(v40);
  }

  return result;
}

uint64_t sub_17594D8(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  *(result + 48) = 0;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_14AC220(*(result + 64));
    }

    *(v1 + 72) = 1;
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

char *sub_1759614(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x400000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 552);
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

  v16 = *(a1 + 80);
  if (v16)
  {
    for (j = 0; j != v16; ++j)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v18 = *(*(a1 + 88) + 8 * j + 8);
      *v6 = 26;
      v19 = *(v18 + 20);
      v6[1] = v19;
      if (v19 > 0x7F)
      {
        v20 = sub_19575D0(v19, v6 + 1);
      }

      else
      {
        v20 = v6 + 2;
      }

      v6 = sub_15480D4(v18, v20, a3);
    }
  }

  if ((v5 & 0x800000) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v22 = *(a1 + 556);
    *v6 = 32;
    v6[1] = v22;
    if (v22 > 0x7F)
    {
      v6[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v6[2] = v22 >> 7;
      v21 = v6 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v21 - 1) = v6 | 0x80;
          v6 = (v23 >> 7);
          *v21++ = v23 >> 7;
          v24 = v23 >> 14;
          v23 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v21 = v6 + 2;
    }
  }

  else
  {
    v21 = v6;
  }

  if ((v5 & 0x2000000) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v26 = *(a1 + 564);
    *v21 = 40;
    v21[1] = v26;
    v21 += 2;
    if ((v5 & 1) == 0)
    {
LABEL_37:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_38;
      }

LABEL_44:
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v27 = *(a1 + 565);
      *v21 = 56;
      v21[1] = v27;
      v21 += 2;
      if ((v5 & 0x40000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_47;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_37;
  }

  v21 = sub_128AEEC(a3, 6, *(a1 + 376) & 0xFFFFFFFFFFFFFFFELL, v21);
  if ((v5 & 0x4000000) != 0)
  {
    goto LABEL_44;
  }

LABEL_38:
  if ((v5 & 0x40000000) == 0)
  {
LABEL_39:
    v25 = v21;
    goto LABEL_54;
  }

LABEL_47:
  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v28 = *(a1 + 572);
  *v21 = 64;
  v21[1] = v28;
  if (v28 > 0x7F)
  {
    v21[1] = v28 | 0x80;
    v29 = v28 >> 7;
    v21[2] = v28 >> 7;
    v25 = v21 + 3;
    if (v28 >= 0x4000)
    {
      LOBYTE(v30) = v21[2];
      do
      {
        *(v25 - 1) = v30 | 0x80;
        v30 = v29 >> 7;
        *v25++ = v29 >> 7;
        v31 = v29 >> 14;
        v29 >>= 7;
      }

      while (v31);
    }
  }

  else
  {
    v25 = v21 + 2;
  }

LABEL_54:
  v32 = *(a1 + 104);
  if (v32)
  {
    for (k = 0; k != v32; ++k)
    {
      if (*a3 <= v25)
      {
        v25 = sub_225EB68(a3, v25);
      }

      v34 = *(*(a1 + 112) + 8 * k + 8);
      *v25 = 74;
      v35 = *(v34 + 44);
      v25[1] = v35;
      if (v35 > 0x7F)
      {
        v36 = sub_19575D0(v35, v25 + 1);
      }

      else
      {
        v36 = v25 + 2;
      }

      v25 = sub_149DD64(v34, v36, a3);
    }
  }

  v37 = *(a1 + 128);
  if (v37)
  {
    for (m = 0; m != v37; ++m)
    {
      if (*a3 <= v25)
      {
        v25 = sub_225EB68(a3, v25);
      }

      v39 = *(*(a1 + 136) + 8 * m + 8);
      *v25 = 82;
      v40 = *(v39 + 44);
      v25[1] = v40;
      if (v40 > 0x7F)
      {
        v41 = sub_19575D0(v40, v25 + 1);
      }

      else
      {
        v41 = v25 + 2;
      }

      v25 = sub_149DD64(v39, v41, a3);
    }
  }

  v42 = *(a1 + 152);
  if (v42)
  {
    for (n = 0; n != v42; ++n)
    {
      if (*a3 <= v25)
      {
        v25 = sub_225EB68(a3, v25);
      }

      v44 = *(*(a1 + 160) + 8 * n + 8);
      *v25 = 90;
      v45 = *(v44 + 20);
      v25[1] = v45;
      if (v45 > 0x7F)
      {
        v46 = sub_19575D0(v45, v25 + 1);
      }

      else
      {
        v46 = v25 + 2;
      }

      v25 = sub_14A5550(v44, v46, a3);
    }
  }

  v47 = *(a1 + 168);
  if (v47 < 1)
  {
    v50 = v25;
  }

  else
  {
    for (ii = 0; ii != v47; ++ii)
    {
      if (*a3 <= v25)
      {
        v25 = sub_225EB68(a3, v25);
      }

      v49 = *(*(a1 + 176) + 4 * ii);
      *v25 = 104;
      v25[1] = v49;
      if (v49 > 0x7F)
      {
        v25[1] = v49 | 0x80;
        v51 = v49 >> 7;
        v25[2] = v49 >> 7;
        v50 = v25 + 3;
        if (v49 >= 0x4000)
        {
          LOBYTE(v25) = v25[2];
          do
          {
            *(v50 - 1) = v25 | 0x80;
            v25 = (v51 >> 7);
            *v50++ = v51 >> 7;
            v52 = v51 >> 14;
            v51 >>= 7;
          }

          while (v52);
        }
      }

      else
      {
        v50 = v25 + 2;
      }

      v25 = v50;
    }
  }

  v53 = *(a1 + 192);
  if (v53)
  {
    for (jj = 0; jj != v53; ++jj)
    {
      if (*a3 <= v50)
      {
        v50 = sub_225EB68(a3, v50);
      }

      v55 = *(*(a1 + 200) + 8 * jj + 8);
      *v50 = 114;
      v56 = *(v55 + 44);
      v50[1] = v56;
      if (v56 > 0x7F)
      {
        v57 = sub_19575D0(v56, v50 + 1);
      }

      else
      {
        v57 = v50 + 2;
      }

      v50 = sub_141C76C(v55, v57, a3);
    }
  }

  if ((v5 & 0x1000000) != 0)
  {
    if (*a3 <= v50)
    {
      v50 = sub_225EB68(a3, v50);
    }

    v59 = *(a1 + 560);
    *v50 = 120;
    v50[1] = v59;
    if (v59 > 0x7F)
    {
      v50[1] = v59 | 0x80;
      v60 = v59 >> 7;
      v50[2] = v59 >> 7;
      v58 = v50 + 3;
      if (v59 >= 0x4000)
      {
        LOBYTE(v50) = v50[2];
        do
        {
          *(v58 - 1) = v50 | 0x80;
          LODWORD(v50) = v60 >> 7;
          *v58++ = v60 >> 7;
          v61 = v60 >> 14;
          v60 >>= 7;
        }

        while (v61);
      }
    }

    else
    {
      v58 = v50 + 2;
    }
  }

  else
  {
    v58 = v50;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v58)
    {
      v58 = sub_225EB68(a3, v58);
    }

    v63 = *(a1 + 432);
    *v58 = 386;
    v64 = *(v63 + 44);
    v58[2] = v64;
    if (v64 > 0x7F)
    {
      v65 = sub_19575D0(v64, v58 + 2);
    }

    else
    {
      v65 = v58 + 3;
    }

    v58 = sub_1414414(v63, v65, a3);
    if ((v5 & 0x100) == 0)
    {
LABEL_109:
      if ((v5 & 0x200) == 0)
      {
        goto LABEL_110;
      }

      goto LABEL_126;
    }
  }

  else if ((v5 & 0x100) == 0)
  {
    goto LABEL_109;
  }

  if (*a3 <= v58)
  {
    v58 = sub_225EB68(a3, v58);
  }

  v66 = *(a1 + 440);
  *v58 = 394;
  v67 = *(v66 + 20);
  v58[2] = v67;
  if (v67 > 0x7F)
  {
    v68 = sub_19575D0(v67, v58 + 2);
  }

  else
  {
    v68 = v58 + 3;
  }

  v58 = sub_175CE9C(v66, v68, a3);
  if ((v5 & 0x200) == 0)
  {
LABEL_110:
    if ((v5 & 2) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_132;
  }

LABEL_126:
  if (*a3 <= v58)
  {
    v58 = sub_225EB68(a3, v58);
  }

  v69 = *(a1 + 448);
  *v58 = 402;
  v70 = *(v69 + 44);
  v58[2] = v70;
  if (v70 > 0x7F)
  {
    v71 = sub_19575D0(v70, v58 + 2);
  }

  else
  {
    v71 = v58 + 3;
  }

  v58 = sub_153C1A4(v69, v71, a3);
  if ((v5 & 2) == 0)
  {
LABEL_111:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_112;
    }

LABEL_133:
    if (*a3 <= v58)
    {
      v58 = sub_225EB68(a3, v58);
    }

    v72 = *(a1 + 456);
    *v58 = 418;
    v73 = *(v72 + 20);
    v58[2] = v73;
    if (v73 > 0x7F)
    {
      v74 = sub_19575D0(v73, v58 + 2);
    }

    else
    {
      v74 = v58 + 3;
    }

    v58 = sub_14AFF10(v72, v74, a3);
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_139;
  }

LABEL_132:
  v58 = sub_128AEEC(a3, 19, *(a1 + 384) & 0xFFFFFFFFFFFFFFFELL, v58);
  if ((v5 & 0x400) != 0)
  {
    goto LABEL_133;
  }

LABEL_112:
  if ((v5 & 0x20000000) == 0)
  {
LABEL_113:
    v62 = v58;
    goto LABEL_146;
  }

LABEL_139:
  if (*a3 <= v58)
  {
    v58 = sub_225EB68(a3, v58);
  }

  v75 = *(a1 + 568);
  *v58 = 424;
  v58[2] = v75;
  if (v75 > 0x7F)
  {
    v58[2] = v75 | 0x80;
    v76 = v75 >> 7;
    v58[3] = v75 >> 7;
    v62 = v58 + 4;
    if (v75 >= 0x4000)
    {
      LOBYTE(v77) = v58[3];
      do
      {
        *(v62 - 1) = v77 | 0x80;
        v77 = v76 >> 7;
        *v62++ = v76 >> 7;
        v78 = v76 >> 14;
        v76 >>= 7;
      }

      while (v78);
    }
  }

  else
  {
    v62 = v58 + 3;
  }

LABEL_146:
  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v62)
    {
      v62 = sub_225EB68(a3, v62);
    }

    v79 = *(a1 + 464);
    *v62 = 434;
    v80 = *(v79 + 20);
    v62[2] = v80;
    if (v80 > 0x7F)
    {
      v81 = sub_19575D0(v80, v62 + 2);
    }

    else
    {
      v81 = v62 + 3;
    }

    v62 = sub_13F0E14(v79, v81, a3);
  }

  v82 = *(a1 + 216);
  if (v82)
  {
    for (kk = 0; kk != v82; ++kk)
    {
      if (*a3 <= v62)
      {
        v62 = sub_225EB68(a3, v62);
      }

      v84 = *(*(a1 + 224) + 8 * kk + 8);
      *v62 = 442;
      v85 = *(v84 + 20);
      v62[2] = v85;
      if (v85 > 0x7F)
      {
        v86 = sub_19575D0(v85, v62 + 2);
      }

      else
      {
        v86 = v62 + 3;
      }

      v62 = sub_14A0B70(v84, v86, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    v62 = sub_128AEEC(a3, 24, *(a1 + 392) & 0xFFFFFFFFFFFFFFFELL, v62);
    if ((v5 & 0x8000000) == 0)
    {
LABEL_163:
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_164;
      }

      goto LABEL_192;
    }
  }

  else if ((v5 & 0x8000000) == 0)
  {
    goto LABEL_163;
  }

  if (*a3 <= v62)
  {
    v62 = sub_225EB68(a3, v62);
  }

  v100 = *(a1 + 566);
  *v62 = 456;
  v62[2] = v100;
  v62 += 3;
  if ((v5 & 0x1000) == 0)
  {
LABEL_164:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_227;
  }

LABEL_192:
  if (*a3 <= v62)
  {
    v62 = sub_225EB68(a3, v62);
  }

  v101 = *(a1 + 472);
  *v62 = 466;
  v102 = *(v101 + 20);
  v62[2] = v102;
  if (v102 > 0x7F)
  {
    v103 = sub_19575D0(v102, v62 + 2);
  }

  else
  {
    v103 = v62 + 3;
  }

  v62 = sub_14B2E5C(v101, v103, a3);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_165:
    if ((v5 & 8) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_166;
  }

LABEL_227:
  if (*a3 <= v62)
  {
    v62 = sub_225EB68(a3, v62);
  }

  v117 = *(a1 + 567);
  *v62 = 472;
  v62[2] = v117;
  v62 += 3;
  if ((v5 & 8) != 0)
  {
LABEL_166:
    v62 = sub_128AEEC(a3, 29, *(a1 + 400) & 0xFFFFFFFFFFFFFFFELL, v62);
  }

LABEL_167:
  v87 = *(a1 + 240);
  if (v87)
  {
    for (mm = 0; mm != v87; ++mm)
    {
      if (*a3 <= v62)
      {
        v62 = sub_225EB68(a3, v62);
      }

      v89 = *(*(a1 + 248) + 8 * mm + 8);
      *v62 = 498;
      v90 = *(v89 + 20);
      v62[2] = v90;
      if (v90 > 0x7F)
      {
        v91 = sub_19575D0(v90, v62 + 2);
      }

      else
      {
        v91 = v62 + 3;
      }

      v62 = sub_14A4BF0(v89, v91, a3);
    }
  }

  v92 = *(a1 + 264);
  if (v92)
  {
    for (nn = 0; nn != v92; ++nn)
    {
      if (*a3 <= v62)
      {
        v62 = sub_225EB68(a3, v62);
      }

      v94 = *(*(a1 + 272) + 8 * nn + 8);
      *v62 = 506;
      v95 = *(v94 + 20);
      v62[2] = v95;
      if (v95 > 0x7F)
      {
        v96 = sub_19575D0(v95, v62 + 2);
      }

      else
      {
        v96 = v62 + 3;
      }

      v62 = sub_14A196C(v94, v96, a3);
    }
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v62)
    {
      v62 = sub_225EB68(a3, v62);
    }

    v97 = *(a1 + 480);
    *v62 = 642;
    v98 = *(v97 + 20);
    v62[2] = v98;
    if (v98 > 0x7F)
    {
      v99 = sub_19575D0(v98, v62 + 2);
    }

    else
    {
      v99 = v62 + 3;
    }

    v62 = sub_1434234(v97, v99, a3);
  }

  v104 = *(a1 + 288);
  if (v104)
  {
    for (i1 = 0; i1 != v104; ++i1)
    {
      if (*a3 <= v62)
      {
        v62 = sub_225EB68(a3, v62);
      }

      v106 = *(*(a1 + 296) + 8 * i1 + 8);
      *v62 = 650;
      v107 = *(v106 + 44);
      v62[2] = v107;
      if (v107 > 0x7F)
      {
        v108 = sub_19575D0(v107, v62 + 2);
      }

      else
      {
        v108 = v62 + 3;
      }

      v62 = sub_1488C14(v106, v108, a3);
    }
  }

  v109 = *(a1 + 312);
  if (v109)
  {
    for (i2 = 0; i2 != v109; ++i2)
    {
      if (*a3 <= v62)
      {
        v62 = sub_225EB68(a3, v62);
      }

      v111 = *(*(a1 + 320) + 8 * i2 + 8);
      *v62 = 658;
      v112 = *(v111 + 20);
      v62[2] = v112;
      if (v112 > 0x7F)
      {
        v113 = sub_19575D0(v112, v62 + 2);
      }

      else
      {
        v113 = v62 + 3;
      }

      v62 = sub_1419C7C(v111, v113, a3);
    }
  }

  if ((v5 & 0x4000) != 0)
  {
    if (*a3 <= v62)
    {
      v62 = sub_225EB68(a3, v62);
    }

    v114 = *(a1 + 488);
    *v62 = 666;
    v115 = *(v114 + 40);
    v62[2] = v115;
    if (v115 > 0x7F)
    {
      v116 = sub_19575D0(v115, v62 + 2);
    }

    else
    {
      v116 = v62 + 3;
    }

    v62 = sub_1757C50(v114, v116, a3);
    if ((v5 & 0x8000) == 0)
    {
LABEL_216:
      if ((v5 & 0x10000) == 0)
      {
        goto LABEL_217;
      }

      goto LABEL_239;
    }
  }

  else if ((v5 & 0x8000) == 0)
  {
    goto LABEL_216;
  }

  if (*a3 <= v62)
  {
    v62 = sub_225EB68(a3, v62);
  }

  v118 = *(a1 + 496);
  *v62 = 674;
  v119 = *(v118 + 20);
  v62[2] = v119;
  if (v119 > 0x7F)
  {
    v120 = sub_19575D0(v119, v62 + 2);
  }

  else
  {
    v120 = v62 + 3;
  }

  v62 = sub_154C2E0(v118, v120, a3);
  if ((v5 & 0x10000) == 0)
  {
LABEL_217:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_218;
    }

    goto LABEL_245;
  }

LABEL_239:
  if (*a3 <= v62)
  {
    v62 = sub_225EB68(a3, v62);
  }

  v121 = *(a1 + 504);
  *v62 = 682;
  v122 = *(v121 + 20);
  v62[2] = v122;
  if (v122 > 0x7F)
  {
    v123 = sub_19575D0(v122, v62 + 2);
  }

  else
  {
    v123 = v62 + 3;
  }

  v62 = sub_1481B84(v121, v123, a3);
  if ((v5 & 0x20000) == 0)
  {
LABEL_218:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_219;
    }

    goto LABEL_251;
  }

LABEL_245:
  if (*a3 <= v62)
  {
    v62 = sub_225EB68(a3, v62);
  }

  v124 = *(a1 + 512);
  *v62 = 690;
  v125 = *(v124 + 20);
  v62[2] = v125;
  if (v125 > 0x7F)
  {
    v126 = sub_19575D0(v125, v62 + 2);
  }

  else
  {
    v126 = v62 + 3;
  }

  v62 = sub_14BA25C(v124, v126, a3);
  if ((v5 & 0x40000) == 0)
  {
LABEL_219:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_263;
    }

    goto LABEL_257;
  }

LABEL_251:
  if (*a3 <= v62)
  {
    v62 = sub_225EB68(a3, v62);
  }

  v127 = *(a1 + 520);
  *v62 = 698;
  v128 = *(v127 + 20);
  v62[2] = v128;
  if (v128 > 0x7F)
  {
    v129 = sub_19575D0(v128, v62 + 2);
  }

  else
  {
    v129 = v62 + 3;
  }

  v62 = sub_149975C(v127, v129, a3);
  if ((v5 & 0x80000) != 0)
  {
LABEL_257:
    if (*a3 <= v62)
    {
      v62 = sub_225EB68(a3, v62);
    }

    v130 = *(a1 + 528);
    *v62 = 706;
    v131 = *(v130 + 40);
    v62[2] = v131;
    if (v131 > 0x7F)
    {
      v132 = sub_19575D0(v131, v62 + 2);
    }

    else
    {
      v132 = v62 + 3;
    }

    v62 = sub_1757C50(v130, v132, a3);
  }

LABEL_263:
  v133 = *(a1 + 336);
  if (v133 >= 1)
  {
    v134 = 8;
    do
    {
      v135 = *(*(a1 + 344) + v134);
      v136 = *(v135 + 23);
      if (v136 < 0 && (v136 = v135[1], v136 > 127) || (*a3 - v62 + 13) < v136)
      {
        v62 = sub_1957480(a3, 952, v135, v62);
      }

      else
      {
        *v62 = 15298;
        v62[2] = v136;
        if (*(v135 + 23) < 0)
        {
          v135 = *v135;
        }

        v137 = v62 + 3;
        memcpy(v137, v135, v136);
        v62 = &v137[v136];
      }

      v134 += 8;
      --v133;
    }

    while (v133);
  }

  if ((v5 & 0x10) != 0)
  {
    v62 = sub_128AEEC(a3, 953, *(a1 + 408) & 0xFFFFFFFFFFFFFFFELL, v62);
  }

  if ((v5 & 0x20) != 0)
  {
    v62 = sub_128AEEC(a3, 954, *(a1 + 416) & 0xFFFFFFFFFFFFFFFELL, v62);
  }

  v138 = *(a1 + 360);
  if (v138)
  {
    for (i3 = 0; i3 != v138; ++i3)
    {
      if (*a3 <= v62)
      {
        v62 = sub_225EB68(a3, v62);
      }

      v140 = *(*(a1 + 368) + 8 * i3 + 8);
      *v62 = 15322;
      v141 = *(v140 + 44);
      v62[2] = v141;
      if (v141 > 0x7F)
      {
        v142 = sub_19575D0(v141, v62 + 2);
      }

      else
      {
        v142 = v62 + 3;
      }

      v62 = sub_1422044(v140, v142, a3);
    }
  }

  if ((v5 & 0x100000) != 0)
  {
    if (*a3 <= v62)
    {
      v62 = sub_225EB68(a3, v62);
    }

    v145 = *(a1 + 536);
    *v62 = 15346;
    v146 = *(v145 + 20);
    v62[2] = v146;
    if (v146 > 0x7F)
    {
      v147 = sub_19575D0(v146, v62 + 2);
    }

    else
    {
      v147 = v62 + 3;
    }

    v62 = sub_149160C(v145, v147, a3);
    if ((v5 & 0x200000) == 0)
    {
LABEL_288:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_290;
      }

      goto LABEL_289;
    }
  }

  else if ((v5 & 0x200000) == 0)
  {
    goto LABEL_288;
  }

  if (*a3 <= v62)
  {
    v62 = sub_225EB68(a3, v62);
  }

  v148 = *(a1 + 544);
  *v62 = 15354;
  v149 = *(v148 + 376);
  v62[2] = v149;
  if (v149 > 0x7F)
  {
    v150 = sub_19575D0(v149, v62 + 2);
  }

  else
  {
    v150 = v62 + 3;
  }

  v62 = sub_1432ACC(v148, v150, a3);
  if ((v5 & 0x40) != 0)
  {
LABEL_289:
    v62 = sub_128AEEC(a3, 961, *(a1 + 424) & 0xFFFFFFFFFFFFFFFELL, v62);
  }

LABEL_290:
  if (*(a1 + 26))
  {
    v62 = sub_1953428(a1 + 16, 990, 10101, v62, a3);
  }

  v143 = *(a1 + 8);
  if ((v143 & 1) == 0)
  {
    return v62;
  }

  v151 = v143 & 0xFFFFFFFFFFFFFFFCLL;
  v152 = *(v151 + 31);
  if (v152 < 0)
  {
    v153 = *(v151 + 8);
    v152 = *(v151 + 16);
  }

  else
  {
    v153 = (v151 + 8);
  }

  if ((*a3 - v62) >= v152)
  {
    v154 = v152;
    memcpy(v62, v153, v152);
    v62 += v154;
    return v62;
  }

  return sub_1957130(a3, v153, v152, v62);
}