uint64_t sub_1519530(uint64_t a1)
{
  v1 = *(a1 + 32);
  while (v1 >= 1)
  {
    v2 = *(*(a1 + 40) + 8 * v1--);
    if ((*(v2 + 16) & 2) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_1518BF4(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_1519594(void *a1)
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

void sub_1519608(void *a1)
{
  sub_1519594(a1);

  operator delete();
}

uint64_t sub_1519640(uint64_t a1)
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

char *sub_1519668(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_15198B0(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_1519AE8(uint64_t a1)
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

uint64_t sub_1519BC4(uint64_t a1)
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
  if (a1 != &off_2775DE0)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_1519594(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1347AB0((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1519C88(uint64_t a1)
{
  sub_1519BC4(a1);

  operator delete();
}

uint64_t sub_1519CC0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14D9150(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    result = sub_1519640(*(v1 + 48));
  }

  if ((v5 & 6) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 1;
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

char *sub_1519D64(uint64_t a1, char *a2, int32x2_t *a3)
{
  v38 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v38, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v38 + 1;
    v8 = *v38;
    if (*v38 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v38, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v38 + 2;
      }
    }

    v38 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      if (v11 != 5)
      {
        if (v11 == 6 && v8 == 50)
        {
          v17 = v7 - 1;
          while (1)
          {
            v18 = (v17 + 1);
            v38 = v17 + 1;
            v19 = *(a1 + 40);
            if (v19 && (v20 = *(a1 + 32), v20 < *v19))
            {
              *(a1 + 32) = v20 + 1;
              v21 = *&v19[2 * v20 + 2];
            }

            else
            {
              v22 = sub_152710C(*(a1 + 24));
              v21 = sub_19593CC(a1 + 24, v22);
              v18 = v38;
            }

            v17 = sub_21FCB20(a3, v21, v18);
            v38 = v17;
            if (!v17)
            {
              goto LABEL_65;
            }

            if (*a3 <= v17 || *v17 != 50)
            {
              goto LABEL_52;
            }
          }
        }

        goto LABEL_44;
      }

      if (v8 != 42)
      {
        goto LABEL_44;
      }

      *(a1 + 16) |= 1u;
      v26 = *(a1 + 48);
      if (!v26)
      {
        v27 = *(a1 + 8);
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v28 = *v28;
        }

        v26 = sub_152AB20(v28);
        *(a1 + 48) = v26;
        v7 = v38;
      }

      v29 = sub_2219738(a3, v26, v7);
LABEL_51:
      v38 = v29;
      if (!v29)
      {
        goto LABEL_65;
      }

      goto LABEL_52;
    }

    if (v11 != 1)
    {
      break;
    }

    if (v8 != 8)
    {
      goto LABEL_44;
    }

    v5 |= 2u;
    v24 = v7 + 1;
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_37;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_37:
      v38 = v24;
      *(a1 + 56) = v23;
      goto LABEL_52;
    }

    v36 = sub_19587DC(v7, v23);
    v38 = v36;
    *(a1 + 56) = v37;
    if (!v36)
    {
      goto LABEL_65;
    }

LABEL_52:
    if (sub_195ADC0(a3, &v38, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4 && v8 == 32)
  {
    v12 = v7 + 1;
    v13 = *v7;
    if ((v13 & 0x8000000000000000) != 0)
    {
      v14 = *v12;
      v15 = (v14 << 7) + v13;
      v13 = (v15 - 128);
      if (v14 < 0)
      {
        v38 = sub_19587DC(v7, (v15 - 128));
        if (!v38)
        {
          goto LABEL_65;
        }

        v13 = v35;
        goto LABEL_15;
      }

      v12 = v7 + 2;
    }

    v38 = v12;
LABEL_15:
    if ((v13 - 3) < 4 || v13 == 1)
    {
      *(a1 + 16) |= 4u;
      *(a1 + 64) = v13;
    }

    else
    {
      v33 = *(a1 + 8);
      if (v33)
      {
        v34 = ((v33 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      else
      {
        v34 = sub_11F1920((a1 + 8));
      }

      sub_19586BC(4, v13, v34);
    }

    goto LABEL_52;
  }

LABEL_44:
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
      v7 = v38;
    }

    v29 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_51;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_65:
  v38 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v38;
}

char *sub_151A08C(uint64_t a1, char *__dst, _DWORD *a3)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 64);
    *v6 = 32;
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

    v15 = *(a1 + 48);
    *v11 = 42;
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

    v11 = sub_15198B0(v15, v17, a3);
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v20 = *(*(a1 + 40) + 8 * i + 8);
      *v11 = 50;
      v21 = *(v20 + 20);
      v11[1] = v21;
      if (v21 > 0x7F)
      {
        v22 = sub_19575D0(v21, v11 + 1);
      }

      else
      {
        v22 = v11 + 2;
      }

      v11 = sub_14D9394(v20, v22, a3);
    }
  }

  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v11;
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

  if (*a3 - v11 >= v26)
  {
    v28 = v26;
    memcpy(v11, v27, v26);
    v11 += v28;
    return v11;
  }

  return sub_1957130(a3, v27, v26, v11);
}

uint64_t sub_151A33C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    v3 = ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);
  v5 = v3 + v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = sub_14D9520(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v11 = sub_1519AE8(*(a1 + 48));
    v5 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v2 & 4) != 0)
  {
    v12 = *(a1 + 64);
    if (v12 < 0)
    {
      v13 = 11;
    }

    else
    {
      v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v5 += v13;
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

    v5 += v17;
  }

  *(a1 + 20) = v5;
  return v5;
}

std::string *sub_151A478(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_13486C4(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      data = v3[2].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v13 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v13 = *v13;
        }

        data = sub_152AB20(v13);
        v3[2].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_2775DB8;
      }

      result = sub_128F948(data, v14);
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

    v3[2].__r_.__value_.__l.__size_ = *(a2 + 56);
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

void *sub_151A5D8(void *a1)
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

void sub_151A64C(void *a1)
{
  sub_151A5D8(a1);

  operator delete();
}

uint64_t sub_151A684(uint64_t a1)
{
  if (*(a1 + 16))
  {
    *(a1 + 56) = 0;
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

char *sub_151A6B0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v56 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v56, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v56 + 1;
    v8 = *v56;
    if (*v56 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v56, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v56 + 2;
      }
    }

    v56 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      break;
    }

    if (v8 >> 3 > 6)
    {
      if (v11 == 7)
      {
        if (v8 != 56)
        {
          goto LABEL_61;
        }

        v5 |= 0x40u;
        v34 = v7 + 1;
        v35 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_60;
        }

        v36 = *v34;
        v35 = v35 + (v36 << 7) - 128;
        if ((v36 & 0x80000000) == 0)
        {
          v34 = v7 + 2;
LABEL_60:
          v56 = v34;
          *(a1 + 56) = v35;
          goto LABEL_68;
        }

        v46 = sub_1958770(v7, v35);
        v56 = v46;
        *(a1 + 56) = v47;
        if (!v46)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v11 != 8 || v8 != 64)
        {
          goto LABEL_61;
        }

        v5 |= 0x80u;
        v22 = v7 + 1;
        v23 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

        v24 = *v22;
        v23 = v23 + (v24 << 7) - 128;
        if ((v24 & 0x80000000) == 0)
        {
          v22 = v7 + 2;
LABEL_40:
          v56 = v22;
          *(a1 + 60) = v23;
          goto LABEL_68;
        }

        v54 = sub_1958770(v7, v23);
        v56 = v54;
        *(a1 + 60) = v55;
        if (!v54)
        {
          goto LABEL_89;
        }
      }
    }

    else if (v11 == 5)
    {
      if (v8 != 40)
      {
        goto LABEL_61;
      }

      v5 |= 0x10u;
      v28 = v7 + 1;
      v29 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      v30 = *v28;
      v29 = v29 + (v30 << 7) - 128;
      if ((v30 & 0x80000000) == 0)
      {
        v28 = v7 + 2;
LABEL_50:
        v56 = v28;
        *(a1 + 48) = v29;
        goto LABEL_68;
      }

      v42 = sub_1958770(v7, v29);
      v56 = v42;
      *(a1 + 48) = v43;
      if (!v42)
      {
        goto LABEL_89;
      }
    }

    else
    {
      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_61;
      }

      v5 |= 0x20u;
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
        v56 = v16;
        *(a1 + 52) = v17;
        goto LABEL_68;
      }

      v50 = sub_1958770(v7, v17);
      v56 = v50;
      *(a1 + 52) = v51;
      if (!v50)
      {
        goto LABEL_89;
      }
    }

LABEL_68:
    if (sub_195ADC0(a3, &v56, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 2)
  {
    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_61;
      }

      v5 |= 4u;
      v31 = v7 + 1;
      v32 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

      v33 = *v31;
      v32 = v32 + (v33 << 7) - 128;
      if ((v33 & 0x80000000) == 0)
      {
        v31 = v7 + 2;
LABEL_55:
        v56 = v31;
        *(a1 + 40) = v32;
        goto LABEL_68;
      }

      v44 = sub_1958770(v7, v32);
      v56 = v44;
      *(a1 + 40) = v45;
      if (!v44)
      {
        goto LABEL_89;
      }
    }

    else
    {
      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_61;
      }

      v5 |= 8u;
      v19 = v7 + 1;
      v20 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      v21 = *v19;
      v20 = v20 + (v21 << 7) - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v19 = v7 + 2;
LABEL_33:
        v56 = v19;
        *(a1 + 44) = v20;
        goto LABEL_68;
      }

      v52 = sub_1958770(v7, v20);
      v56 = v52;
      *(a1 + 44) = v53;
      if (!v52)
      {
        goto LABEL_89;
      }
    }

    goto LABEL_68;
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_61;
    }

    v5 |= 1u;
    v26 = v7 + 1;
    v25 = *v7;
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_45;
    }

    v27 = *v26;
    v25 = (v27 << 7) + v25 - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v26 = v7 + 2;
LABEL_45:
      v56 = v26;
      *(a1 + 24) = v25;
      goto LABEL_68;
    }

    v40 = sub_19587DC(v7, v25);
    v56 = v40;
    *(a1 + 24) = v41;
    if (!v40)
    {
      goto LABEL_89;
    }

    goto LABEL_68;
  }

  if (v11 == 2 && v8 == 16)
  {
    v5 |= 2u;
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
      v56 = v14;
      *(a1 + 32) = v13;
      goto LABEL_68;
    }

    v48 = sub_19587DC(v7, v13);
    v56 = v48;
    *(a1 + 32) = v49;
    if (!v48)
    {
      goto LABEL_89;
    }

    goto LABEL_68;
  }

LABEL_61:
  if (v8)
  {
    v37 = (v8 & 7) == 4;
  }

  else
  {
    v37 = 1;
  }

  if (!v37)
  {
    v38 = *(a1 + 8);
    if (v38)
    {
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v39 = sub_11F1920((a1 + 8));
      v7 = v56;
    }

    v56 = sub_1952690(v8, v39, v7, a3);
    if (!v56)
    {
      goto LABEL_89;
    }

    goto LABEL_68;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_89:
  v56 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v56;
}

char *sub_151AB04(uint64_t a1, char *__dst, _DWORD *a3)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 40);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 44);
    *v15 = 32;
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 48);
    *v19 = 40;
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
          LODWORD(v19) = v26 >> 7;
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

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 52);
    *v24 = 48;
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

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v34 = *(a1 + 56);
    *v28 = 56;
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
          LODWORD(v28) = v35 >> 7;
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

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v38 = *(a1 + 60);
    *v33 = 64;
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

  v42 = *(a1 + 8);
  if ((v42 & 1) == 0)
  {
    return v37;
  }

  v44 = v42 & 0xFFFFFFFFFFFFFFFCLL;
  v45 = *(v44 + 31);
  if (v45 < 0)
  {
    v46 = *(v44 + 8);
    v45 = *(v44 + 16);
  }

  else
  {
    v46 = (v44 + 8);
  }

  if (*a3 - v37 >= v45)
  {
    v47 = v45;
    memcpy(v37, v46, v45);
    v37 += v47;
    return v37;
  }

  return sub_1957130(a3, v46, v45, v37);
}

unint64_t sub_151AFD8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v1 = 0;
    goto LABEL_15;
  }

  if (*(a1 + 16))
  {
    v1 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v1 = 0;
  if ((*(a1 + 16) & 2) != 0)
  {
LABEL_7:
    v1 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((*(a1 + 16) & 4) != 0)
  {
    v1 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 8) == 0)
    {
LABEL_10:
      if ((*(a1 + 16) & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else if ((*(a1 + 16) & 8) == 0)
  {
    goto LABEL_10;
  }

  v1 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(a1 + 16) & 0x10) == 0)
  {
LABEL_11:
    if ((*(a1 + 16) & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v1 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(a1 + 16) & 0x20) == 0)
  {
LABEL_12:
    if ((*(a1 + 16) & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v1 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(a1 + 16) & 0x40) == 0)
  {
LABEL_13:
    if ((*(a1 + 16) & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_21:
  v1 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(a1 + 16) & 0x80) != 0)
  {
LABEL_14:
    v1 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
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

void *sub_151B18C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_156A1E0(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_151B20C(void *a1)
{
  sub_151B18C(a1);

  operator delete();
}

uint64_t sub_151B244(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_151A684(v4);
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

char *sub_151B2C0(uint64_t a1, char *a2, int32x2_t *a3)
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
            sub_152AC40(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_22197C8(a3, v16, v13);
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

char *sub_151B450(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_151AB04(v8, v10, a3);
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

uint64_t sub_151B590(uint64_t a1)
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
      v7 = sub_151AFD8(v6);
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

void sub_151B638(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_156C100((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
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

uint64_t sub_151B70C(uint64_t a1)
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

void sub_151B800(uint64_t a1)
{
  sub_151B70C(a1);

  operator delete();
}

uint64_t sub_151B838(uint64_t a1)
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
  *(result + 8) = 0;
  if (v8)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_151B958(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v25 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v25, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v25 + 1);
    v7 = **v25;
    if (**v25 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v25, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v25 + 2);
      }
    }

    *v25 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 == 10)
        {
          *(a1 + 16) |= 1u;
          v18 = *(a1 + 8);
          v12 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
          if (v18)
          {
            v12 = *v12;
          }

          v13 = (a1 + 24);
          goto LABEL_36;
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 8);
        v12 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v12 = *v12;
        }

        v13 = (a1 + 32);
        goto LABEL_36;
      }
    }

    else if (v10 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 4u;
        v16 = *(a1 + 8);
        v12 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v12 = *v12;
        }

        v13 = (a1 + 40);
        goto LABEL_36;
      }
    }

    else if (v10 == 4)
    {
      if (v7 == 34)
      {
        *(a1 + 16) |= 8u;
        v17 = *(a1 + 8);
        v12 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v12 = *v12;
        }

        v13 = (a1 + 48);
        goto LABEL_36;
      }
    }

    else if (v10 == 5 && v7 == 42)
    {
      *(a1 + 16) |= 0x10u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v13 = (a1 + 56);
LABEL_36:
      v19 = sub_194DB04(v13, v12);
      v20 = sub_1958890(v19, *v25, a3);
      goto LABEL_37;
    }

    if (v7)
    {
      v21 = (v7 & 7) == 4;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v25;
      }

LABEL_50:
      *v25 = 0;
      return *v25;
    }

    v22 = *(a1 + 8);
    if (v22)
    {
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v23 = sub_11F1920((a1 + 8));
      v6 = *v25;
    }

    v20 = sub_1952690(v7, v23, v6, a3);
LABEL_37:
    *v25 = v20;
    if (!v20)
    {
      goto LABEL_50;
    }
  }

  return *v25;
}

char *sub_151BB94(uint64_t a1, char *__dst, void *a3)
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

      goto LABEL_11;
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

    goto LABEL_12;
  }

LABEL_11:
  v4 = sub_128AEEC(a3, 3, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_12:
  v4 = sub_128AEEC(a3, 4, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x10) != 0)
  {
LABEL_6:
    v4 = sub_128AEEC(a3, 5, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_7:
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

uint64_t sub_151BCF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) == 0)
  {
    v2 = 0;
    goto LABEL_18;
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
  if ((v1 & 4) != 0)
  {
    v14 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v14 + 23);
    v16 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v15;
    }

    v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  v17 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v17 + 23);
  v19 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v19 = v18;
  }

  v2 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) != 0)
  {
LABEL_15:
    v9 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_18:
  v12 = *(a1 + 8);
  if (v12)
  {
    v20 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    v2 += v21;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_151BEB4(uint64_t a1)
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

void sub_151BF80(uint64_t a1)
{
  sub_151BEB4(a1);

  operator delete();
}

uint64_t sub_151BFB8(uint64_t a1)
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

uint64_t sub_151C070(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 == 9)
    {
      if (v7 == 74)
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

    else if (v10 == 4)
    {
      if (v7 == 34)
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

    else if (v10 == 2 && v7 == 18)
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

char *sub_151C22C(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
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

  v4 = sub_128AEEC(a3, 4, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) != 0)
  {
LABEL_4:
    v4 = sub_128AEEC(a3, 9, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
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

uint64_t sub_151C340(uint64_t a1)
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

uint64_t sub_151C470(uint64_t a1)
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

  if (a1 != &off_2775E58)
  {
    v5 = *(a1 + 96);
    if (v5)
    {
      sub_14F6D94(v5);
      operator delete();
    }

    v6 = *(a1 + 104);
    if (v6)
    {
      sub_14F8E00(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_156A264((a1 + 72));
  sub_13B31E8((a1 + 48));
  sub_1569370((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_151C564(uint64_t a1)
{
  sub_151C470(a1);

  operator delete();
}

uint64_t sub_151C59C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14F5244(v4);
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
      result = sub_16E72AC(v7);
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
      result = sub_151B838(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 16);
  if ((v11 & 3) != 0)
  {
    if (v11)
    {
      result = sub_14F6E84(*(v1 + 96));
    }

    if ((v11 & 2) != 0)
    {
      result = sub_14F8F50(*(v1 + 104));
    }
  }

  if ((v11 & 0x1C) != 0)
  {
    *(v1 + 120) = 0;
    *(v1 + 112) = 0;
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

char *sub_151C6A0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v56 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v56, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v56 + 1;
    v8 = *v56;
    if (*v56 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v56, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v56 + 2;
      }
    }

    v56 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 == 26)
        {
          v38 = v7 - 1;
          while (1)
          {
            v39 = (v38 + 1);
            v56 = v38 + 1;
            v40 = *(a1 + 64);
            if (v40 && (v41 = *(a1 + 56), v41 < *v40))
            {
              *(a1 + 56) = v41 + 1;
              v42 = *&v40[2 * v41 + 2];
            }

            else
            {
              v43 = sub_16F5A54(*(a1 + 48));
              v42 = sub_19593CC(a1 + 48, v43);
              v39 = v56;
            }

            v38 = sub_22002C0(a3, v42, v39);
            v56 = v38;
            if (!v38)
            {
              goto LABEL_97;
            }

            if (*a3 <= v38 || *v38 != 26)
            {
              goto LABEL_86;
            }
          }
        }
      }

      else if (v11 == 4 && v8 == 34)
      {
        *(a1 + 16) |= 1u;
        v25 = *(a1 + 96);
        if (!v25)
        {
          v26 = *(a1 + 8);
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v27 = *v27;
          }

          v25 = sub_1528C84(v27);
          *(a1 + 96) = v25;
          v7 = v56;
        }

        v28 = sub_2218EC8(a3, v25, v7);
        goto LABEL_85;
      }

      goto LABEL_78;
    }

    if (v11 != 1)
    {
      if (v11 == 2 && v8 == 18)
      {
        v13 = v7 - 1;
        while (1)
        {
          v14 = (v13 + 1);
          v56 = v13 + 1;
          v15 = *(a1 + 40);
          if (v15 && (v16 = *(a1 + 32), v16 < *v15))
          {
            *(a1 + 32) = v16 + 1;
            v17 = *&v15[2 * v16 + 2];
          }

          else
          {
            v18 = sub_1528AA8(*(a1 + 24));
            v17 = sub_19593CC(a1 + 24, v18);
            v14 = v56;
          }

          v13 = sub_2217968(a3, v17, v14);
          v56 = v13;
          if (!v13)
          {
            goto LABEL_97;
          }

          if (*a3 <= v13 || *v13 != 18)
          {
            goto LABEL_86;
          }
        }
      }

      goto LABEL_78;
    }

    if (v8 != 8)
    {
      goto LABEL_78;
    }

    v5 |= 4u;
    v33 = v7 + 1;
    v32 = *v7;
    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_56;
    }

    v34 = *v33;
    v32 = (v34 << 7) + v32 - 128;
    if ((v34 & 0x80000000) == 0)
    {
      v33 = v7 + 2;
LABEL_56:
      v56 = v33;
      *(a1 + 112) = v32;
      goto LABEL_86;
    }

    v50 = sub_19587DC(v7, v32);
    v56 = v50;
    *(a1 + 112) = v51;
    if (!v50)
    {
      goto LABEL_97;
    }

LABEL_86:
    if (sub_195ADC0(a3, &v56, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 6)
  {
    if (v11 != 5)
    {
      if (v11 == 6 && v8 == 50)
      {
        v19 = v7 - 1;
        while (1)
        {
          v20 = (v19 + 1);
          v56 = v19 + 1;
          v21 = *(a1 + 88);
          if (v21 && (v22 = *(a1 + 80), v22 < *v21))
          {
            *(a1 + 80) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_152AD60(*(a1 + 72));
            v23 = sub_19593CC(a1 + 72, v24);
            v20 = v56;
          }

          v19 = sub_2219858(a3, v23, v20);
          v56 = v19;
          if (!v19)
          {
            goto LABEL_97;
          }

          if (*a3 <= v19 || *v19 != 50)
          {
            goto LABEL_86;
          }
        }
      }

      goto LABEL_78;
    }

    if (v8 != 40)
    {
      goto LABEL_78;
    }

    v5 |= 8u;
    v36 = v7 + 1;
    v35 = *v7;
    if ((v35 & 0x8000000000000000) == 0)
    {
      goto LABEL_61;
    }

    v37 = *v36;
    v35 = (v37 << 7) + v35 - 128;
    if ((v37 & 0x80000000) == 0)
    {
      v36 = v7 + 2;
LABEL_61:
      v56 = v36;
      *(a1 + 120) = v35 != 0;
      goto LABEL_86;
    }

    v52 = sub_19587DC(v7, v35);
    v56 = v52;
    *(a1 + 120) = v53 != 0;
    if (!v52)
    {
      goto LABEL_97;
    }

    goto LABEL_86;
  }

  if (v11 != 7)
  {
    if (v11 != 8 || v8 != 64)
    {
      goto LABEL_78;
    }

    v5 |= 0x10u;
    v30 = v7 + 1;
    v29 = *v7;
    if ((v29 & 0x8000000000000000) == 0)
    {
      goto LABEL_51;
    }

    v31 = *v30;
    v29 = (v31 << 7) + v29 - 128;
    if ((v31 & 0x80000000) == 0)
    {
      v30 = v7 + 2;
LABEL_51:
      v56 = v30;
      *(a1 + 121) = v29 != 0;
      goto LABEL_86;
    }

    v54 = sub_19587DC(v7, v29);
    v56 = v54;
    *(a1 + 121) = v55 != 0;
    if (!v54)
    {
      goto LABEL_97;
    }

    goto LABEL_86;
  }

  if (v8 == 58)
  {
    *(a1 + 16) |= 2u;
    v44 = *(a1 + 104);
    if (!v44)
    {
      v45 = *(a1 + 8);
      v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
      if (v45)
      {
        v46 = *v46;
      }

      v44 = sub_1528E80(v46);
      *(a1 + 104) = v44;
      v7 = v56;
    }

    v28 = sub_22178D8(a3, v44, v7);
LABEL_85:
    v56 = v28;
    if (!v28)
    {
      goto LABEL_97;
    }

    goto LABEL_86;
  }

LABEL_78:
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
      v7 = v56;
    }

    v28 = sub_1952690(v8, v49, v7, a3);
    goto LABEL_85;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_97:
  v56 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v56;
}

char *sub_151CB8C(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 112);
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
      *v6 = 18;
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

      v6 = sub_14F5930(v13, v15, a3);
    }
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    for (j = 0; j != v16; ++j)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v18 = *(*(a1 + 64) + 8 * j + 8);
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

      v6 = sub_16E74A8(v18, v20, a3);
    }
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v21 = *(a1 + 96);
    *v6 = 34;
    v22 = *(v21 + 20);
    v6[1] = v22;
    if (v22 > 0x7F)
    {
      v23 = sub_19575D0(v22, v6 + 1);
    }

    else
    {
      v23 = v6 + 2;
    }

    v6 = sub_14F71E8(v21, v23, a3);
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v24 = *(a1 + 120);
    *v6 = 40;
    v6[1] = v24;
    v6 += 2;
  }

  v25 = *(a1 + 80);
  if (v25)
  {
    for (k = 0; k != v25; ++k)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v27 = *(*(a1 + 88) + 8 * k + 8);
      *v6 = 50;
      v28 = *(v27 + 20);
      v6[1] = v28;
      if (v28 > 0x7F)
      {
        v29 = sub_19575D0(v28, v6 + 1);
      }

      else
      {
        v29 = v6 + 2;
      }

      v6 = sub_151BB94(v27, v29, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v30 = *(a1 + 104);
    *v6 = 58;
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

    v6 = sub_14F95C8(v30, v32, a3);
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v33 = *(a1 + 121);
    *v6 = 64;
    v6[1] = v33;
    v6 += 2;
  }

  v34 = *(a1 + 8);
  if ((v34 & 1) == 0)
  {
    return v6;
  }

  v36 = v34 & 0xFFFFFFFFFFFFFFFCLL;
  v37 = *(v36 + 31);
  if (v37 < 0)
  {
    v38 = *(v36 + 8);
    v37 = *(v36 + 16);
  }

  else
  {
    v38 = (v36 + 8);
  }

  if (*a3 - v6 >= v37)
  {
    v39 = v37;
    memcpy(v6, v38, v37);
    v6 += v39;
    return v6;
  }

  return sub_1957130(a3, v38, v37, v6);
}

uint64_t sub_151CF90(uint64_t a1)
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
      v7 = sub_14F5DE8(v6);
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
  v9 = v2 + v8;
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
      v14 = sub_16E7590(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 80);
  v16 = v9 + v15;
  v17 = *(a1 + 88);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = sub_151BCF0(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 16);
  if ((v22 & 0x1F) != 0)
  {
    if (v22)
    {
      v25 = sub_14F7418(*(a1 + 96));
      v16 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v22 & 2) == 0)
      {
LABEL_24:
        if ((v22 & 4) == 0)
        {
LABEL_26:
          v16 += ((v22 >> 3) & 2) + ((v22 >> 2) & 2);
          goto LABEL_27;
        }

LABEL_25:
        v16 += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x3F) + 73) >> 6) + 1;
        goto LABEL_26;
      }
    }

    else if ((v22 & 2) == 0)
    {
      goto LABEL_24;
    }

    v26 = sub_14F994C(*(a1 + 104));
    v16 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_27:
  v23 = *(a1 + 8);
  if (v23)
  {
    v27 = v23 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v28 < 0)
    {
      v28 = *(v27 + 16);
    }

    v16 += v28;
  }

  *(a1 + 20) = v16;
  return v16;
}

std::string *sub_151D18C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_156B210(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
    result = sub_13B326C(v3 + 2, v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
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
    result = sub_156C17C(v3 + 3, v16, (v15 + 8), v14, *v3[3].__r_.__value_.__r.__words[2] - LODWORD(v3[3].__r_.__value_.__r.__words[1]));
    v17 = LODWORD(v3[3].__r_.__value_.__r.__words[1]) + v14;
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = v17;
    v18 = v3[3].__r_.__value_.__r.__words[2];
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if ((v19 & 0x1F) != 0)
  {
    if (v19)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      data = v3[4].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v23 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v23 = *v23;
        }

        data = sub_1528C84(v23);
        v3[4].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 96))
      {
        v24 = *(a2 + 96);
      }

      else
      {
        v24 = &off_27750E0;
      }

      result = sub_14F753C(data, v24);
      if ((v19 & 2) == 0)
      {
LABEL_13:
        if ((v19 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_38;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v25 = v3[4].__r_.__value_.__l.__size_;
    if (!v25)
    {
      v26 = v3->__r_.__value_.__l.__size_;
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_1528E80(v27);
      v3[4].__r_.__value_.__l.__size_ = v25;
    }

    if (*(a2 + 104))
    {
      v28 = *(a2 + 104);
    }

    else
    {
      v28 = &off_2775188;
    }

    result = sub_14F9BC0(v25, v28);
    if ((v19 & 4) == 0)
    {
LABEL_14:
      if ((v19 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_39;
    }

LABEL_38:
    v3[4].__r_.__value_.__r.__words[2] = *(a2 + 112);
    if ((v19 & 8) == 0)
    {
LABEL_15:
      if ((v19 & 0x10) == 0)
      {
LABEL_17:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v19;
        goto LABEL_18;
      }

LABEL_16:
      v3[5].__r_.__value_.__s.__data_[1] = *(a2 + 121);
      goto LABEL_17;
    }

LABEL_39:
    v3[5].__r_.__value_.__s.__data_[0] = *(a2 + 120);
    if ((v19 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  v20 = *(a2 + 8);
  if (v20)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_151D424(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2775ED8)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      sub_16E5B34(v6);
      operator delete();
    }

    if (*(a1 + 64))
    {
      sub_16EB0C0();
      operator delete();
    }

    if (*(a1 + 72))
    {
      sub_16E4E08();
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_151D538(uint64_t a1)
{
  sub_151D424(a1);

  operator delete();
}

uint64_t sub_151D570(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_17:
    result = sub_16E5B70(*(a1 + 56));
    if ((v3 & 4) == 0)
    {
LABEL_5:
      if ((v3 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_18;
  }

  v6 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_17;
    }
  }

LABEL_4:
  if ((v3 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_18:
  result = sub_16EB0FC(*(a1 + 64));
  if ((v3 & 8) != 0)
  {
LABEL_6:
    result = sub_16E4E44(*(a1 + 72));
  }

LABEL_7:
  if ((v3 & 0xF0) != 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
  }

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_151D644(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v56 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v56, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v56 + 1);
    v8 = **v56;
    if (**v56 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v56, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v56 + 2);
      }
    }

    *v56 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      break;
    }

    if (v8 >> 3 <= 6)
    {
      if (v11 == 5)
      {
        if (v8 != 42)
        {
          goto LABEL_80;
        }

        *(a1 + 16) |= 4u;
        v37 = *(a1 + 64);
        if (!v37)
        {
          v38 = *(a1 + 8);
          v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
          if (v38)
          {
            v39 = *v39;
          }

          v37 = sub_16F5DB8(v39);
          *(a1 + 64) = v37;
          v7 = *v56;
        }

        v22 = sub_21F8D18(a3, v37, v7);
      }

      else
      {
        if (v11 != 6 || v8 != 50)
        {
          goto LABEL_80;
        }

        *(a1 + 16) |= 8u;
        v23 = *(a1 + 72);
        if (!v23)
        {
          v24 = *(a1 + 8);
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v25 = *v25;
          }

          v23 = sub_16F5828(v25);
          *(a1 + 72) = v23;
          v7 = *v56;
        }

        v22 = sub_21F4D60(a3, v23, v7);
      }

LABEL_87:
      *v56 = v22;
      if (!v22)
      {
        goto LABEL_103;
      }

      goto LABEL_88;
    }

    if (v11 == 7)
    {
      if (v8 != 56)
      {
        goto LABEL_80;
      }

      v33 = (v7 + 1);
      v34 = *v7;
      if (v34 < 0)
      {
        v35 = *v33;
        v36 = (v35 << 7) + v34;
        LODWORD(v34) = v36 - 128;
        if ((v35 & 0x80000000) == 0)
        {
          v33 = (v7 + 2);
          goto LABEL_59;
        }

        *v56 = sub_19587DC(v7, (v36 - 128));
        if (!*v56)
        {
          goto LABEL_103;
        }

        LODWORD(v34) = v53;
      }

      else
      {
LABEL_59:
        *v56 = v33;
      }

      if (sub_1796880(v34))
      {
        *(a1 + 16) |= 0x40u;
        *(a1 + 92) = v34;
      }

      else
      {
        sub_13ED178();
      }

      goto LABEL_88;
    }

    if (v11 == 8)
    {
      if (v8 == 66)
      {
        v40 = (v7 - 1);
        while (1)
        {
          v41 = (v40 + 1);
          *v56 = v40 + 1;
          v42 = *(a1 + 40);
          if (v42 && (v43 = *(a1 + 32), v43 < *v42))
          {
            *(a1 + 32) = v43 + 1;
            v44 = *&v42[2 * v43 + 2];
          }

          else
          {
            v45 = *(a1 + 24);
            if (!v45)
            {
              operator new();
            }

            *v47 = v46;
            v47[1] = sub_195A650;
            *v46 = 0;
            v46[1] = 0;
            v46[2] = 0;
            v44 = sub_19593CC(a1 + 24, v46);
            v41 = *v56;
          }

          v40 = sub_1958890(v44, v41, a3);
          *v56 = v40;
          if (!v40)
          {
            goto LABEL_103;
          }

          if (*a3 <= v40 || *v40 != 66)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_80;
    }

    if (v11 != 9 || v8 != 72)
    {
      goto LABEL_80;
    }

    v5 |= 0x80u;
    v13 = (v7 + 1);
    v12 = *v7;
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_16;
    }

    v14 = *v13;
    v12 = (v14 << 7) + v12 - 128;
    if ((v14 & 0x80000000) == 0)
    {
      v13 = (v7 + 2);
LABEL_16:
      *v56 = v13;
      *(a1 + 96) = v12;
      goto LABEL_88;
    }

    v54 = sub_19587DC(v7, v12);
    *v56 = v54;
    *(a1 + 96) = v55;
    if (!v54)
    {
      goto LABEL_103;
    }

LABEL_88:
    if (sub_195ADC0(a3, v56, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 2)
  {
    if (v11 == 3)
    {
      if (v8 != 26)
      {
        goto LABEL_80;
      }

      *(a1 + 16) |= 2u;
      v29 = *(a1 + 56);
      if (!v29)
      {
        v30 = *(a1 + 8);
        v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
        if (v30)
        {
          v31 = *v31;
        }

        sub_16F58FC(v31);
        v29 = v32;
        *(a1 + 56) = v32;
        v7 = *v56;
      }

      v22 = sub_21F86E8(a3, v29, v7);
    }

    else
    {
      if (v11 != 4 || v8 != 34)
      {
        goto LABEL_80;
      }

      *(a1 + 16) |= 1u;
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v21 = sub_194DB04((a1 + 48), v20);
      v22 = sub_1958890(v21, *v56, a3);
    }

    goto LABEL_87;
  }

  if (v11 != 1)
  {
    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_80;
    }

    v5 |= 0x10u;
    v17 = (v7 + 1);
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = (v7 + 2);
LABEL_27:
      *v56 = v17;
      *(a1 + 80) = v16;
      goto LABEL_88;
    }

    v51 = sub_19587DC(v7, v16);
    *v56 = v51;
    *(a1 + 80) = v52;
    if (!v51)
    {
      goto LABEL_103;
    }

    goto LABEL_88;
  }

  if (v8 == 8)
  {
    v27 = (v7 + 1);
    v26 = *v7;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_46;
    }

    v28 = *v27;
    v26 = (v28 << 7) + v26 - 128;
    if (v28 < 0)
    {
      *v56 = sub_19587DC(v7, v26);
      if (!*v56)
      {
        goto LABEL_103;
      }
    }

    else
    {
      v27 = (v7 + 2);
LABEL_46:
      *v56 = v27;
    }

    if (v26 > 1)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 16) |= 0x20u;
      *(a1 + 88) = v26;
    }

    goto LABEL_88;
  }

LABEL_80:
  if (v8)
  {
    v48 = (v8 & 7) == 4;
  }

  else
  {
    v48 = 1;
  }

  if (!v48)
  {
    v49 = *(a1 + 8);
    if (v49)
    {
      v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v50 = sub_11F1920((a1 + 8));
      v7 = *v56;
    }

    v22 = sub_1952690(v8, v50, v7, a3);
    goto LABEL_87;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_103:
  *v56 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v56;
}

char *sub_151DB88(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 88);
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 80);
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 56);
    *v11 = 26;
    v17 = *(v16 + 20);
    v11[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v11 + 1);
    }

    else
    {
      v18 = v11 + 2;
    }

    v11 = sub_16E5FE0(v16, v18, a3);
    if ((v5 & 1) == 0)
    {
LABEL_21:
      if ((v5 & 4) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_21;
  }

  v11 = sub_128AEEC(a3, 4, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v11);
  if ((v5 & 4) == 0)
  {
LABEL_22:
    if ((v5 & 8) == 0)
    {
      goto LABEL_23;
    }

LABEL_38:
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v22 = *(a1 + 72);
    *v11 = 50;
    v23 = *(v22 + 44);
    v11[1] = v23;
    if (v23 > 0x7F)
    {
      v24 = sub_19575D0(v23, v11 + 1);
    }

    else
    {
      v24 = v11 + 2;
    }

    v11 = sub_16E5070(v22, v24, a3);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

LABEL_32:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v19 = *(a1 + 64);
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

  v11 = sub_16EBD38(v19, v21, a3);
  if ((v5 & 8) != 0)
  {
    goto LABEL_38;
  }

LABEL_23:
  if ((v5 & 0x40) == 0)
  {
LABEL_24:
    v15 = v11;
    goto LABEL_51;
  }

LABEL_44:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v25 = *(a1 + 92);
  *v11 = 56;
  v11[1] = v25;
  if (v25 > 0x7F)
  {
    v11[1] = v25 | 0x80;
    v26 = v25 >> 7;
    v11[2] = v25 >> 7;
    v15 = v11 + 3;
    if (v25 >= 0x4000)
    {
      LOBYTE(v27) = v11[2];
      do
      {
        *(v15 - 1) = v27 | 0x80;
        v27 = v26 >> 7;
        *v15++ = v26 >> 7;
        v28 = v26 >> 14;
        v26 >>= 7;
      }

      while (v28);
    }
  }

  else
  {
    v15 = v11 + 2;
  }

LABEL_51:
  v29 = *(a1 + 32);
  if (v29 >= 1)
  {
    v30 = 8;
    do
    {
      v31 = *(*(a1 + 40) + v30);
      v32 = *(v31 + 23);
      if (v32 < 0 && (v32 = v31[1], v32 > 127) || *a3 - v15 + 14 < v32)
      {
        v15 = sub_1957480(a3, 8, v31, v15);
      }

      else
      {
        *v15 = 66;
        v15[1] = v32;
        if (*(v31 + 23) < 0)
        {
          v31 = *v31;
        }

        v33 = v15 + 2;
        memcpy(v15 + 2, v31, v32);
        v15 = &v33[v32];
      }

      v30 += 8;
      --v29;
    }

    while (v29);
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v35 = *(a1 + 96);
    *v15 = 72;
    v15[1] = v35;
    if (v35 > 0x7F)
    {
      v15[1] = v35 | 0x80;
      v36 = v35 >> 7;
      v15[2] = v35 >> 7;
      v34 = v15 + 3;
      if (v35 >= 0x4000)
      {
        LOBYTE(v15) = v15[2];
        do
        {
          *(v34 - 1) = v15 | 0x80;
          v15 = (v36 >> 7);
          *v34++ = v36 >> 7;
          v37 = v36 >> 14;
          v36 >>= 7;
        }

        while (v37);
      }
    }

    else
    {
      v34 = v15 + 2;
    }
  }

  else
  {
    v34 = v15;
  }

  v38 = *(a1 + 8);
  if ((v38 & 1) == 0)
  {
    return v34;
  }

  v40 = v38 & 0xFFFFFFFFFFFFFFFCLL;
  v41 = *(v40 + 31);
  if (v41 < 0)
  {
    v42 = *(v40 + 8);
    v41 = *(v40 + 16);
  }

  else
  {
    v42 = (v40 + 8);
  }

  if (*a3 - v34 >= v41)
  {
    v43 = v41;
    memcpy(v34, v42, v41);
    v34 += v43;
    return v34;
  }

  return sub_1957130(a3, v42, v41, v34);
}

uint64_t sub_151E050(uint64_t a1)
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
  if (!v8)
  {
    goto LABEL_18;
  }

  if (*(a1 + 16))
  {
    v11 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 2) == 0)
    {
LABEL_11:
      if ((*(a1 + 16) & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }
  }

  else if ((*(a1 + 16) & 2) == 0)
  {
    goto LABEL_11;
  }

  v14 = sub_16E62F4(*(a1 + 56));
  v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_12:
    if ((v8 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  v15 = sub_16EC25C(*(a1 + 64));
  v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_13:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  v16 = sub_16E51F0(*(a1 + 72));
  v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
LABEL_14:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_15;
    }

LABEL_27:
    v17 = *(a1 + 88);
    if (v17 < 0)
    {
      v18 = 11;
    }

    else
    {
      v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v18;
    if ((v8 & 0x40) == 0)
    {
LABEL_16:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_26:
  v4 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_15:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_31:
  v19 = *(a1 + 92);
  if (v19 < 0)
  {
    v20 = 11;
  }

  else
  {
    v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v4 += v20;
  if (v8 < 0)
  {
LABEL_17:
    v4 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_18:
  v9 = *(a1 + 8);
  if (v9)
  {
    v21 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v4 += v22;
  }

  *(a1 + 20) = v4;
  return v4;
}

void sub_151E2B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1201B48(a1 + 24, v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if (v9)
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

        goto LABEL_30;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

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
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_38;
    }

LABEL_30:
    *(a1 + 16) |= 4u;
    v18 = *(a1 + 64);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_16F5DB8(v20);
      *(a1 + 64) = v18;
    }

    if (*(a2 + 64))
    {
      v21 = *(a2 + 64);
    }

    else
    {
      v21 = &off_277E820;
    }

    sub_16EC8A0(v18, v21);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_46;
    }

LABEL_38:
    *(a1 + 16) |= 8u;
    v22 = *(a1 + 72);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_16F5828(v24);
      *(a1 + 72) = v22;
    }

    if (*(a2 + 72))
    {
      v25 = *(a2 + 72);
    }

    else
    {
      v25 = &off_277E5E8;
    }

    sub_16E527C(v22, v25);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_47;
    }

LABEL_46:
    *(a1 + 80) = *(a2 + 80);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_48;
    }

LABEL_47:
    *(a1 + 88) = *(a2 + 88);
    if ((v9 & 0x40) == 0)
    {
LABEL_12:
      if ((v9 & 0x80) == 0)
      {
LABEL_14:
        *(a1 + 16) |= v9;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_14;
    }

LABEL_48:
    *(a1 + 92) = *(a2 + 92);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_151E4EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_16E6614(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_16ECE70(*(a1 + 64));
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

  result = sub_16E5370(*(a1 + 72));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_151E55C(uint64_t a1)
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

  if (a1 != &off_2775F40 && *(a1 + 24))
  {
    sub_16E7270();
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

void sub_151E614(uint64_t a1)
{
  sub_151E55C(a1);

  operator delete();
}

uint64_t sub_151E64C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_16E72AC(*(result + 24));
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

char *sub_151E6B4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v28 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v28, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v28 + 1;
    v8 = *v28;
    if (*v28 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v28, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v28 + 2;
      }
    }

    v28 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v21 = v7 + 1;
      v20 = *v7;
      if (v20 < 0)
      {
        v22 = *v21;
        v20 = (v22 << 7) + v20 - 128;
        if (v22 < 0)
        {
          v28 = sub_19587DC(v7, v20);
          if (!v28)
          {
            goto LABEL_48;
          }

          goto LABEL_30;
        }

        v21 = v7 + 2;
      }

      v28 = v21;
LABEL_30:
      if (v20 > 2)
      {
        sub_1313740();
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 36) = v20;
      }

      goto LABEL_38;
    }

    if (v11 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v18 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_24:
      v28 = v18;
      *(a1 + 32) = v17 != 0;
      goto LABEL_38;
    }

    v26 = sub_19587DC(v7, v17);
    v28 = v26;
    *(a1 + 32) = v27 != 0;
    if (!v26)
    {
      goto LABEL_48;
    }

LABEL_38:
    if (sub_195ADC0(a3, &v28, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
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

      v23 = sub_16F5A54(v25);
      *(a1 + 24) = v23;
      v7 = v28;
    }

    v16 = sub_22002C0(a3, v23, v7);
LABEL_37:
    v28 = v16;
    if (!v16)
    {
      goto LABEL_48;
    }

    goto LABEL_38;
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
      v7 = v28;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_37;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_48:
  v28 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v28;
}

char *sub_151E918(uint64_t a1, char *__dst, void *a3)
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
  v8 = *(v7 + 20);
  __dst[1] = v8;
  if (v8 > 0x7F)
  {
    v9 = sub_19575D0(v8, __dst + 1);
  }

  else
  {
    v9 = __dst + 2;
  }

  __dst = sub_16E74A8(v7, v9, a3);
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
  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v18)
  {
    v20 = v18;
    memcpy(v6, v19, v18);
    v6 += v20;
    return v6;
  }

  return sub_1957130(a3, v19, v18, v6);
}

uint64_t sub_151EAE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      v5 = sub_16E7590(*(a1 + 24));
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
    }
  }

  else
  {
    result = 0;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    result += v10;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_151EBAC(std::string *result, uint64_t a2)
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

        data = sub_16F5A54(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277E6F0;
      }

      result = sub_12F5A34(data, v9);
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

    v3[1].__r_.__value_.__s.__data_[8] = *(a2 + 32);
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

void *sub_151ECAC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 5));
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_151ED30(void *a1)
{
  sub_151ECAC(a1);

  operator delete();
}

uint64_t sub_151ED68(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
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

char *sub_151ED98(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 == 8)
      {
        v19 = v7 - 1;
        while (1)
        {
          v40 = v19 + 1;
          v20 = v19[1];
          if (v20 < 0)
          {
            v21 = (v19[2] << 7) + v20;
            v20 = (v21 - 128);
            if (v19[2] < 0)
            {
              v19 = sub_19587DC((v19 + 1), (v21 - 128));
              v20 = v22;
            }

            else
            {
              v19 += 3;
            }
          }

          else
          {
            v19 += 2;
          }

          v40 = v19;
          v23 = *(a1 + 24);
          if (v23 == *(a1 + 28))
          {
            v24 = v23 + 1;
            sub_1959094((a1 + 24), v23 + 1);
            *(*(a1 + 32) + 8 * v23) = v20;
            v19 = v40;
          }

          else
          {
            *(*(a1 + 32) + 8 * v23) = v20;
            v24 = v23 + 1;
          }

          *(a1 + 24) = v24;
          if (!v19)
          {
            goto LABEL_75;
          }

          if (*a3 <= v19 || *v19 != 8)
          {
            goto LABEL_70;
          }
        }
      }

      if (v8 == 10)
      {
        v35 = (a1 + 24);
        goto LABEL_61;
      }

      goto LABEL_62;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_62;
    }

    v5 |= 1u;
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
      v40 = v14;
      *(a1 + 56) = v13;
      goto LABEL_70;
    }

    v33 = sub_19587DC(v7, v13);
    v40 = v33;
    *(a1 + 56) = v34;
    if (!v33)
    {
      goto LABEL_75;
    }

LABEL_70:
    if (sub_195ADC0(a3, &v40, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 3)
  {
    if (v11 != 4 || v8 != 32)
    {
      goto LABEL_62;
    }

    v5 |= 2u;
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
      v40 = v17;
      *(a1 + 64) = v16 != 0;
      goto LABEL_70;
    }

    v31 = sub_19587DC(v7, v16);
    v40 = v31;
    *(a1 + 64) = v32 != 0;
    if (!v31)
    {
      goto LABEL_75;
    }

    goto LABEL_70;
  }

  if (v8 == 24)
  {
    v25 = v7 - 1;
    while (1)
    {
      v40 = v25 + 1;
      v26 = v25[1];
      if (v26 < 0)
      {
        v27 = (v25[2] << 7) + v26;
        v26 = (v27 - 128);
        if (v25[2] < 0)
        {
          v25 = sub_19587DC((v25 + 1), (v27 - 128));
          v26 = v28;
        }

        else
        {
          v25 += 3;
        }
      }

      else
      {
        v25 += 2;
      }

      v40 = v25;
      v29 = *(a1 + 40);
      if (v29 == *(a1 + 44))
      {
        v30 = v29 + 1;
        sub_1959094((a1 + 40), v29 + 1);
        *(*(a1 + 48) + 8 * v29) = v26;
        v25 = v40;
      }

      else
      {
        *(*(a1 + 48) + 8 * v29) = v26;
        v30 = v29 + 1;
      }

      *(a1 + 40) = v30;
      if (!v25)
      {
        goto LABEL_75;
      }

      if (*a3 <= v25 || *v25 != 24)
      {
        goto LABEL_70;
      }
    }
  }

  if (v8 == 26)
  {
    v35 = (a1 + 40);
LABEL_61:
    v36 = sub_1958938(v35, v7, a3);
LABEL_69:
    v40 = v36;
    if (!v36)
    {
      goto LABEL_75;
    }

    goto LABEL_70;
  }

LABEL_62:
  if (v8)
  {
    v37 = (v8 & 7) == 4;
  }

  else
  {
    v37 = 1;
  }

  if (!v37)
  {
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
    goto LABEL_69;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_75:
  v40 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v40;
}

char *sub_151F150(uint64_t a1, char *a2, _DWORD *a3)
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

  v12 = *(a1 + 16);
  if (v12)
  {
    if (*a3 <= v8)
    {
      v8 = sub_225EB68(a3, v8);
    }

    v14 = *(a1 + 56);
    *v8 = 16;
    v8[1] = v14;
    if (v14 > 0x7F)
    {
      v8[1] = v14 | 0x80;
      v15 = v14 >> 7;
      v8[2] = v14 >> 7;
      v13 = v8 + 3;
      if (v14 >= 0x4000)
      {
        LOBYTE(v8) = v8[2];
        do
        {
          *(v13 - 1) = v8 | 0x80;
          v8 = (v15 >> 7);
          *v13++ = v15 >> 7;
          v16 = v15 >> 14;
          v15 >>= 7;
        }

        while (v16);
      }
    }

    else
    {
      v13 = v8 + 2;
    }
  }

  else
  {
    v13 = v8;
  }

  v17 = *(a1 + 40);
  if (v17 < 1)
  {
    v20 = v13;
  }

  else
  {
    for (j = 0; j != v17; ++j)
    {
      if (*a3 <= v13)
      {
        v13 = sub_225EB68(a3, v13);
      }

      v19 = *(*(a1 + 48) + 8 * j);
      *v13 = 24;
      v13[1] = v19;
      if (v19 > 0x7F)
      {
        v13[1] = v19 | 0x80;
        v21 = v19 >> 7;
        v13[2] = v19 >> 7;
        v20 = v13 + 3;
        if (v19 >= 0x4000)
        {
          LOBYTE(v22) = v13[2];
          do
          {
            *(v20 - 1) = v22 | 0x80;
            v22 = v21 >> 7;
            *v20++ = v21 >> 7;
            v23 = v21 >> 14;
            v21 >>= 7;
          }

          while (v23);
        }
      }

      else
      {
        v20 = v13 + 2;
      }

      v13 = v20;
    }
  }

  if ((v12 & 2) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v24 = *(a1 + 64);
    *v20 = 32;
    v20[1] = v24;
    v20 += 2;
  }

  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return v20;
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

  if (*a3 - v20 >= v28)
  {
    v30 = v28;
    memcpy(v20, v29, v28);
    v20 += v30;
    return v20;
  }

  return sub_1957130(a3, v29, v28, v20);
}

uint64_t sub_151F414(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24));
  v3 = *(a1 + 24);
  result = v2 + sub_1959F14((a1 + 40)) + v3 + *(a1 + 40);
  v5 = *(a1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      result += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    result += v5 & 2;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    result += v8;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_151F4C4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = result + 1;
    data_low = SLODWORD(result[1].__r_.__value_.__l.__data_);
    sub_1959094(&result[1], data_low + v4);
    size = v3[1].__r_.__value_.__l.__size_;
    LODWORD(v5->__r_.__value_.__l.__data_) += *(a2 + 24);
    result = memcpy((size + 8 * data_low), *(a2 + 32), 8 * *(a2 + 24));
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = SLODWORD(v3[1].__r_.__value_.__r.__words[2]);
    sub_1959094(&v3[1].__r_.__value_.__r.__words[2], v9 + v8);
    data = v3[2].__r_.__value_.__l.__data_;
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) += *(a2 + 40);
    result = memcpy(&data[8 * v9], *(a2 + 48), 8 * *(a2 + 40));
  }

  v11 = *(a2 + 16);
  if ((v11 & 3) != 0)
  {
    if (v11)
    {
      v3[2].__r_.__value_.__l.__size_ = *(a2 + 56);
    }

    if ((v11 & 2) != 0)
    {
      v3[2].__r_.__value_.__s.__data_[16] = *(a2 + 64);
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

uint64_t sub_151F5F4(uint64_t a1)
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

void sub_151F6AC(uint64_t a1)
{
  sub_151F5F4(a1);

  operator delete();
}

uint64_t sub_151F6E4(uint64_t a1)
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

uint64_t sub_151F760(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_151F8E0(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_151F9C8(uint64_t a1)
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

uint64_t sub_151FAB4(uint64_t a1)
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
  sub_156A2E8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_151FB78(uint64_t a1)
{
  sub_151FAB4(a1);

  operator delete();
}

uint64_t sub_151FBB0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_151F6E4(v4);
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
  if ((v5 & 0xC) != 0)
  {
    *(v1 + 64) = 0;
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

uint64_t sub_151FCA4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v38 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v38, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v38 + 1);
    v7 = **v38;
    if (**v38 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v38, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v38 + 2);
      }
    }

    *v38 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v28 = v6 + 1;
          v29 = *v6;
          if ((v29 & 0x8000000000000000) == 0)
          {
            goto LABEL_46;
          }

          v30 = *v28;
          v31 = (v30 << 7) + v29;
          LODWORD(v29) = v31 - 128;
          if (v30 < 0)
          {
            *v38 = sub_19587DC(v6, (v31 - 128));
            if (!*v38)
            {
              goto LABEL_68;
            }

            LODWORD(v29) = v35;
          }

          else
          {
            v28 = v6 + 2;
LABEL_46:
            *v38 = v28;
          }

          if (sub_1393054(v29))
          {
            *(a1 + 16) |= 4u;
            *(a1 + 64) = v29;
          }

          else
          {
            sub_12E8450();
          }

          continue;
        }
      }

      else if (v10 == 2 && v7 == 16)
      {
        v18 = v6 + 1;
        v19 = *v6;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v20 = *v18;
        v21 = (v20 << 7) + v19;
        LODWORD(v19) = v21 - 128;
        if (v20 < 0)
        {
          *v38 = sub_19587DC(v6, (v21 - 128));
          if (!*v38)
          {
            goto LABEL_68;
          }

          LODWORD(v19) = v36;
        }

        else
        {
          v18 = v6 + 2;
LABEL_30:
          *v38 = v18;
        }

        if (sub_16E4BE4(v19))
        {
          *(a1 + 16) |= 8u;
          *(a1 + 68) = v19;
        }

        else
        {
          sub_12E8418();
        }

        continue;
      }

      goto LABEL_49;
    }

    if (v10 == 3)
    {
      if (v7 != 26)
      {
        goto LABEL_49;
      }

      *(a1 + 16) |= 1u;
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v24 = (a1 + 48);
    }

    else
    {
      if (v10 != 4)
      {
        if (v10 == 5 && v7 == 42)
        {
          v11 = v6 - 1;
          while (1)
          {
            v12 = v11 + 1;
            *v38 = v11 + 1;
            v13 = *(a1 + 40);
            if (v13 && (v14 = *(a1 + 32), v14 < *v13))
            {
              *(a1 + 32) = v14 + 1;
              v15 = *&v13[2 * v14 + 2];
            }

            else
            {
              v16 = sub_152B0F8(*(a1 + 24));
              v15 = sub_19593CC(a1 + 24, v16);
              v12 = *v38;
            }

            v11 = sub_22198E8(a3, v15, v12);
            *v38 = v11;
            if (!v11)
            {
              break;
            }

            if (*a3 <= v11 || *v11 != 42)
            {
              goto LABEL_57;
            }
          }

LABEL_68:
          *v38 = 0;
          return *v38;
        }

LABEL_49:
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
            return *v38;
          }

          goto LABEL_68;
        }

        v33 = *(a1 + 8);
        if (v33)
        {
          v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v34 = sub_11F1920((a1 + 8));
          v6 = *v38;
        }

        v27 = sub_1952690(v7, v34, v6, a3);
        goto LABEL_56;
      }

      if (v7 != 34)
      {
        goto LABEL_49;
      }

      *(a1 + 16) |= 2u;
      v25 = *(a1 + 8);
      v23 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v23 = *v23;
      }

      v24 = (a1 + 56);
    }

    v26 = sub_194DB04(v24, v23);
    v27 = sub_1958890(v26, *v38, a3);
LABEL_56:
    *v38 = v27;
    if (!v27)
    {
      goto LABEL_68;
    }

LABEL_57:
    ;
  }

  return *v38;
}

char *sub_151FFD8(uint64_t a1, char *__dst, void *a3)
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
  }

  if ((v5 & 2) != 0)
  {
    v11 = sub_128AEEC(a3, 4, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v11);
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v17 = *(*(a1 + 40) + 8 * i + 8);
      *v11 = 42;
      v18 = *(v17 + 20);
      v11[1] = v18;
      if (v18 > 0x7F)
      {
        v19 = sub_19575D0(v18, v11 + 1);
      }

      else
      {
        v19 = v11 + 2;
      }

      v11 = sub_151F8E0(v17, v19, a3);
    }
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v11;
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

  if (*a3 - v11 >= v23)
  {
    v25 = v23;
    memcpy(v11, v24, v23);
    v11 += v25;
    return v11;
  }

  return sub_1957130(a3, v24, v23, v11);
}

uint64_t sub_1520264(uint64_t a1)
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
      v7 = sub_151F9C8(v6);
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
  if ((v8 & 0xF) == 0)
  {
    goto LABEL_29;
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
        goto LABEL_13;
      }

      goto LABEL_21;
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
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

LABEL_21:
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
  if ((v8 & 8) != 0)
  {
LABEL_25:
    v17 = *(a1 + 68);
    if (v17 < 0)
    {
      v18 = 11;
    }

    else
    {
      v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v18;
  }

LABEL_29:
  v19 = *(a1 + 8);
  if (v19)
  {
    v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v2 += v22;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_1520418(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_156C1F8(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0xF) != 0)
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
          goto LABEL_8;
        }

        goto LABEL_21;
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
LABEL_8:
      if ((v9 & 8) == 0)
      {
LABEL_10:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
        goto LABEL_11;
      }

LABEL_9:
      HIDWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 68);
      goto LABEL_10;
    }

LABEL_21:
    LODWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
    if ((v9 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1520594(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = &off_26EBEC0;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a2;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a2;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a2;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a2;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = a2;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = a2;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = a2;
  *(a1 + 248) = a2;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = a2;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = a2;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = a2;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = a2;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = a2;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = a2;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = a2;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = a2;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = &qword_278E990;
  *(a1 + 472) = &qword_278E990;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  return a1;
}

void sub_1520680(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_15206B0(void *a1)
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

  sub_1520804(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_156A57C(a1 + 55);
  sub_156A36C(a1 + 52);
  sub_1956AFC(a1 + 49);
  sub_1956AFC(a1 + 46);
  sub_156A054(a1 + 43);
  sub_156A4F8(a1 + 40);
  sub_13B31E8(a1 + 37);
  sub_156A474(a1 + 34);
  sub_156A3F0(a1 + 31);
  sub_1956ABC((a1 + 29));
  sub_1569370(a1 + 26);
  sub_1347AB0(a1 + 23);
  sub_156A264(a1 + 20);
  sub_13B31E8(a1 + 17);
  sub_1569370(a1 + 14);
  sub_156A36C(a1 + 11);
  sub_156A36C(a1 + 8);
  sub_1956ABC((a1 + 6));
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_1520804(uint64_t result)
{
  v1 = result;
  if (*(result + 464) != &qword_278E990)
  {
    sub_194E89C((result + 464));
  }

  if (*(result + 472) != &qword_278E990)
  {
    sub_194E89C((result + 472));
  }

  if (result != &off_2775FB0)
  {
    v2 = *(result + 480);
    if (v2)
    {
      sub_14EAD6C(v2);
      operator delete();
    }

    v3 = v1[61];
    if (v3)
    {
      sub_14F6D94(v3);
      operator delete();
    }

    v4 = v1[62];
    if (v4)
    {
      sub_151ECAC(v4);
      operator delete();
    }

    result = v1[63];
    if (result)
    {
      sub_151B18C(result);

      operator delete();
    }
  }

  return result;
}

void sub_1520900(void *a1)
{
  sub_15206B0(a1);

  operator delete();
}

uint64_t sub_1520938(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v192 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, v192, a3[11].i32[1]) & 1) == 0)
  {
    v7 = (a1 + 8);
    do
    {
      v8 = (*v192 + 1);
      v9 = **v192;
      if (**v192 < 0)
      {
        v10 = *v8;
        v9 = v9 + (v10 << 7) - 128;
        if (v10 < 0)
        {
          v8 = sub_1958824(*v192, v9);
        }

        else
        {
          v8 = (*v192 + 2);
        }
      }

      *v192 = v8;
      v11 = v9 >> 3;
      if (v9 >> 3 <= 0x3B)
      {
        switch(v11)
        {
          case 1u:
            if (v9 != 8)
            {
              goto LABEL_337;
            }

            v5 |= 0x40u;
            v13 = v8 + 1;
            v12 = *v8;
            if ((v12 & 0x8000000000000000) == 0)
            {
              goto LABEL_14;
            }

            v14 = *v13;
            v12 = (v14 << 7) + v12 - 128;
            if (v14 < 0)
            {
              v176 = sub_19587DC(v8, v12);
              *v192 = v176;
              *(a1 + 512) = v177;
              if (!v176)
              {
                goto LABEL_353;
              }
            }

            else
            {
              v13 = v8 + 2;
LABEL_14:
              *v192 = v13;
              *(a1 + 512) = v12;
            }

            continue;
          case 3u:
            if (v9 != 24)
            {
              goto LABEL_337;
            }

            v5 |= 0x80u;
            v97 = v8 + 1;
            v96 = *v8;
            if ((v96 & 0x8000000000000000) == 0)
            {
              goto LABEL_189;
            }

            v98 = *v97;
            v96 = (v98 << 7) + v96 - 128;
            if (v98 < 0)
            {
              v172 = sub_19587DC(v8, v96);
              *v192 = v172;
              *(a1 + 520) = v173;
              if (!v172)
              {
                goto LABEL_353;
              }
            }

            else
            {
              v97 = v8 + 2;
LABEL_189:
              *v192 = v97;
              *(a1 + 520) = v96;
            }

            continue;
          case 4u:
            if (v9 != 32)
            {
              goto LABEL_337;
            }

            v5 |= 0x100u;
            v100 = v8 + 1;
            v99 = *v8;
            if ((v99 & 0x8000000000000000) == 0)
            {
              goto LABEL_194;
            }

            v101 = *v100;
            v99 = (v101 << 7) + v99 - 128;
            if (v101 < 0)
            {
              v174 = sub_19587DC(v8, v99);
              *v192 = v174;
              *(a1 + 528) = v175;
              if (!v174)
              {
                goto LABEL_353;
              }
            }

            else
            {
              v100 = v8 + 2;
LABEL_194:
              *v192 = v100;
              *(a1 + 528) = v99;
            }

            continue;
          case 5u:
            if (v9 != 42)
            {
              goto LABEL_337;
            }

            *(a1 + 40) |= 1u;
            v116 = *(a1 + 8);
            v103 = (v116 & 0xFFFFFFFFFFFFFFFCLL);
            if (v116)
            {
              v103 = *v103;
            }

            v104 = (a1 + 464);
            goto LABEL_221;
          case 6u:
            if (v9 != 48)
            {
              goto LABEL_337;
            }

            v5 |= 0x400u;
            v114 = v8 + 1;
            v113 = *v8;
            if ((v113 & 0x8000000000000000) == 0)
            {
              goto LABEL_216;
            }

            v115 = *v114;
            v113 = (v115 << 7) + v113 - 128;
            if (v115 < 0)
            {
              v180 = sub_19587DC(v8, v113);
              *v192 = v180;
              *(a1 + 544) = v181 != 0;
              if (!v180)
              {
                goto LABEL_353;
              }
            }

            else
            {
              v114 = v8 + 2;
LABEL_216:
              *v192 = v114;
              *(a1 + 544) = v113 != 0;
            }

            continue;
          case 7u:
            if (v9 == 56)
            {
              v64 = (v8 - 1);
              while (1)
              {
                *v192 = v64 + 1;
                v65 = *(v64 + 1);
                v66 = (v64 + 2);
                if (v65 < 0)
                {
                  v67 = *v66;
                  v68 = (v67 << 7) + v65;
                  LODWORD(v65) = v68 - 128;
                  if (v67 < 0)
                  {
                    *v192 = sub_19587DC(v64 + 1, (v68 - 128));
                    if (!*v192)
                    {
                      goto LABEL_353;
                    }

                    LODWORD(v65) = v71;
                    goto LABEL_130;
                  }

                  v66 = (v64 + 3);
                }

                *v192 = v66;
LABEL_130:
                if (v65 > 3)
                {
                  sub_13ED178();
                }

                else
                {
                  v69 = *(a1 + 48);
                  if (v69 == *(a1 + 52))
                  {
                    v70 = v69 + 1;
                    sub_1958E5C((a1 + 48), v69 + 1);
                    *(*(a1 + 56) + 4 * v69) = v65;
                  }

                  else
                  {
                    *(*(a1 + 56) + 4 * v69) = v65;
                    v70 = v69 + 1;
                  }

                  *(a1 + 48) = v70;
                }

                v64 = *v192;
                if (*a3 <= *v192 || **v192 != 56)
                {
                  goto LABEL_347;
                }
              }
            }

            if (v9 != 58)
            {
              goto LABEL_337;
            }

            *&v193 = a1 + 48;
            *(&v193 + 1) = sub_14D6D0C;
            v194 = a1 + 8;
            v195 = 7;
            v27 = sub_1216588(a3, v8, &v193);
            break;
          case 0xAu:
            if (v9 != 82)
            {
              goto LABEL_337;
            }

            v118 = v8 - 1;
            while (1)
            {
              v119 = (v118 + 1);
              *v192 = v118 + 1;
              v120 = *(a1 + 80);
              if (v120 && (v121 = *(a1 + 72), v121 < *v120))
              {
                *(a1 + 72) = v121 + 1;
                v122 = *&v120[2 * v121 + 2];
              }

              else
              {
                v123 = sub_152ADEC(*(a1 + 64));
                v122 = sub_19593CC(a1 + 64, v123);
                v119 = *v192;
              }

              v118 = sub_2219978(a3, v122, v119);
              *v192 = v118;
              if (!v118)
              {
                goto LABEL_353;
              }

              if (*a3 <= v118 || *v118 != 82)
              {
                goto LABEL_347;
              }
            }

          case 0xBu:
            if (v9 != 90)
            {
              goto LABEL_337;
            }

            v84 = v8 - 1;
            while (1)
            {
              v85 = (v84 + 1);
              *v192 = v84 + 1;
              v86 = *(a1 + 104);
              if (v86 && (v87 = *(a1 + 96), v87 < *v86))
              {
                *(a1 + 96) = v87 + 1;
                v88 = *&v86[2 * v87 + 2];
              }

              else
              {
                v89 = sub_152ADEC(*(a1 + 88));
                v88 = sub_19593CC(a1 + 88, v89);
                v85 = *v192;
              }

              v84 = sub_2219978(a3, v88, v85);
              *v192 = v84;
              if (!v84)
              {
                goto LABEL_353;
              }

              if (*a3 <= v84 || *v84 != 90)
              {
                goto LABEL_347;
              }
            }

          case 0xCu:
            if (v9 != 98)
            {
              goto LABEL_337;
            }

            *(a1 + 40) |= 2u;
            v102 = *(a1 + 8);
            v103 = (v102 & 0xFFFFFFFFFFFFFFFCLL);
            if (v102)
            {
              v103 = *v103;
            }

            v104 = (a1 + 472);
LABEL_221:
            v117 = sub_194DB04(v104, v103);
            v27 = sub_1958890(v117, *v192, a3);
            goto LABEL_346;
          case 0xDu:
            if (v9 != 106)
            {
              goto LABEL_337;
            }

            v78 = v8 - 1;
            while (1)
            {
              v79 = (v78 + 1);
              *v192 = v78 + 1;
              v80 = *(a1 + 128);
              if (v80 && (v81 = *(a1 + 120), v81 < *v80))
              {
                *(a1 + 120) = v81 + 1;
                v82 = *&v80[2 * v81 + 2];
              }

              else
              {
                v83 = sub_1528AA8(*(a1 + 112));
                v82 = sub_19593CC(a1 + 112, v83);
                v79 = *v192;
              }

              v78 = sub_2217968(a3, v82, v79);
              *v192 = v78;
              if (!v78)
              {
                goto LABEL_353;
              }

              if (*a3 <= v78 || *v78 != 106)
              {
                goto LABEL_347;
              }
            }

          case 0xFu:
            if (v9 != 122)
            {
              goto LABEL_337;
            }

            v90 = v8 - 1;
            while (1)
            {
              v91 = (v90 + 1);
              *v192 = v90 + 1;
              v92 = *(a1 + 152);
              if (v92 && (v93 = *(a1 + 144), v93 < *v92))
              {
                *(a1 + 144) = v93 + 1;
                v94 = *&v92[2 * v93 + 2];
              }

              else
              {
                v95 = sub_16F5A54(*(a1 + 136));
                v94 = sub_19593CC(a1 + 136, v95);
                v91 = *v192;
              }

              v90 = sub_22002C0(a3, v94, v91);
              *v192 = v90;
              if (!v90)
              {
                goto LABEL_353;
              }

              if (*a3 <= v90 || *v90 != 122)
              {
                goto LABEL_347;
              }
            }

          case 0x10u:
            if (v9 != 130)
            {
              goto LABEL_337;
            }

            v105 = v8 - 2;
            while (1)
            {
              v106 = (v105 + 2);
              *v192 = v105 + 2;
              v107 = *(a1 + 176);
              if (v107 && (v108 = *(a1 + 168), v108 < *v107))
              {
                *(a1 + 168) = v108 + 1;
                v109 = *&v107[2 * v108 + 2];
              }

              else
              {
                v110 = sub_152AD60(*(a1 + 160));
                v109 = sub_19593CC(a1 + 160, v110);
                v106 = *v192;
              }

              v105 = sub_2219858(a3, v109, v106);
              *v192 = v105;
              if (!v105)
              {
                goto LABEL_353;
              }

              if (*a3 <= v105 || *v105 != 386)
              {
                goto LABEL_347;
              }
            }

          case 0x14u:
            if (v9 != 162)
            {
              goto LABEL_337;
            }

            *(a1 + 40) |= 4u;
            v51 = *(a1 + 480);
            if (!v51)
            {
              v52 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
              if (*v7)
              {
                v52 = *v52;
              }

              v51 = sub_15281FC(v52);
              *(a1 + 480) = v51;
              v8 = *v192;
            }

            v27 = sub_21FBEC0(a3, v51, v8);
            goto LABEL_346;
          case 0x15u:
            if (v9 != 168)
            {
              goto LABEL_337;
            }

            v5 |= 0x200u;
            v62 = v8 + 1;
            v61 = *v8;
            if ((v61 & 0x8000000000000000) == 0)
            {
              goto LABEL_123;
            }

            v63 = *v62;
            v61 = (v63 << 7) + v61 - 128;
            if (v63 < 0)
            {
              v170 = sub_19587DC(v8, v61);
              *v192 = v170;
              *(a1 + 536) = v171;
              if (!v170)
              {
                goto LABEL_353;
              }
            }

            else
            {
              v62 = v8 + 2;
LABEL_123:
              *v192 = v62;
              *(a1 + 536) = v61;
            }

            continue;
          case 0x19u:
            if (v9 != 202)
            {
              goto LABEL_337;
            }

            v53 = v8 - 2;
            while (1)
            {
              v54 = (v53 + 2);
              *v192 = v53 + 2;
              v55 = *(a1 + 200);
              if (v55 && (v56 = *(a1 + 192), v56 < *v55))
              {
                *(a1 + 192) = v56 + 1;
                v57 = *&v55[2 * v56 + 2];
              }

              else
              {
                v58 = sub_152710C(*(a1 + 184));
                v57 = sub_19593CC(a1 + 184, v58);
                v54 = *v192;
              }

              v53 = sub_21FCB20(a3, v57, v54);
              *v192 = v53;
              if (!v53)
              {
                goto LABEL_353;
              }

              if (*a3 <= v53 || *v53 != 458)
              {
                goto LABEL_347;
              }
            }

          case 0x1Eu:
            if (v9 != 242)
            {
              goto LABEL_337;
            }

            *(a1 + 40) |= 8u;
            v59 = *(a1 + 488);
            if (!v59)
            {
              v60 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
              if (*v7)
              {
                v60 = *v60;
              }

              v59 = sub_1528C84(v60);
              *(a1 + 488) = v59;
              v8 = *v192;
            }

            v27 = sub_2218EC8(a3, v59, v8);
            goto LABEL_346;
          case 0x23u:
            if (v9 != 26)
            {
              goto LABEL_337;
            }

            v45 = v8 - 2;
            while (1)
            {
              v46 = (v45 + 2);
              *v192 = v45 + 2;
              v47 = *(a1 + 224);
              if (v47 && (v48 = *(a1 + 216), v48 < *v47))
              {
                *(a1 + 216) = v48 + 1;
                v49 = *&v47[2 * v48 + 2];
              }

              else
              {
                v50 = sub_1528AA8(*(a1 + 208));
                v49 = sub_19593CC(a1 + 208, v50);
                v46 = *v192;
              }

              v45 = sub_2217968(a3, v49, v46);
              *v192 = v45;
              if (!v45)
              {
                goto LABEL_353;
              }

              if (*a3 <= v45 || *v45 != 666)
              {
                goto LABEL_347;
              }
            }

          case 0x28u:
            if (v9 != 69)
            {
              goto LABEL_337;
            }

            v5 |= 0x1000u;
            *(a1 + 548) = *v8;
            *v192 = v8 + 4;
            continue;
          case 0x2Du:
            if (v9 == 104)
            {
              v72 = (v8 - 2);
              while (1)
              {
                *v192 = v72 + 2;
                v73 = *(v72 + 2);
                if (v73 < 0)
                {
                  v74 = (*(v72 + 3) << 7) + v73;
                  v73 = (v74 - 128);
                  if (*(v72 + 3) < 0)
                  {
                    v72 = sub_19587DC(v72 + 2, (v74 - 128));
                    v73 = v75;
                  }

                  else
                  {
                    v72 += 4;
                  }
                }

                else
                {
                  v72 += 3;
                }

                *v192 = v72;
                v76 = *(a1 + 232);
                if (v76 == *(a1 + 236))
                {
                  v77 = v76 + 1;
                  sub_1959094((a1 + 232), v76 + 1);
                  *(*(a1 + 240) + 8 * v76) = v73;
                  v72 = *v192;
                }

                else
                {
                  *(*(a1 + 240) + 8 * v76) = v73;
                  v77 = v76 + 1;
                }

                *(a1 + 232) = v77;
                if (!v72)
                {
                  goto LABEL_353;
                }

                if (*a3 <= v72 || *v72 != 744)
                {
                  goto LABEL_347;
                }
              }
            }

            if (v9 != 106)
            {
              goto LABEL_337;
            }

            v27 = sub_1958938((a1 + 232), v8, a3);
            goto LABEL_346;
          case 0x31u:
            if (v9 != 136)
            {
              goto LABEL_337;
            }

            v5 |= 0x2000u;
            LODWORD(v111) = *v8;
            if ((v111 & 0x80000000) == 0)
            {
              v112 = v8 + 1;
LABEL_312:
              *v192 = v112;
              *(a1 + 552) = v111;
              continue;
            }

            v111 = (v8[1] << 7) + v111 - 128;
            if ((v8[1] & 0x80000000) == 0)
            {
              v112 = v8 + 2;
              goto LABEL_312;
            }

            v178 = sub_19587DC(v8, v111);
            *v192 = v178;
            *(a1 + 552) = v179;
            if (!v178)
            {
              goto LABEL_353;
            }

            continue;
          case 0x32u:
            if (v9 != 146)
            {
              goto LABEL_337;
            }

            v124 = v8 - 2;
            while (1)
            {
              v125 = (v124 + 2);
              *v192 = v124 + 2;
              v126 = *(a1 + 264);
              if (v126 && (v127 = *(a1 + 256), v127 < *v126))
              {
                *(a1 + 256) = v127 + 1;
                v128 = *&v126[2 * v127 + 2];
              }

              else
              {
                v129 = sub_152AE74(*(a1 + 248));
                v128 = sub_19593CC(a1 + 248, v129);
                v125 = *v192;
              }

              v124 = sub_2219A08(a3, v128, v125);
              *v192 = v124;
              if (!v124)
              {
                goto LABEL_353;
              }

              if (*a3 <= v124 || *v124 != 914)
              {
                goto LABEL_347;
              }
            }

          case 0x37u:
            if (v9 != 186)
            {
              goto LABEL_337;
            }

            v39 = v8 - 2;
            while (1)
            {
              v40 = (v39 + 2);
              *v192 = v39 + 2;
              v41 = *(a1 + 288);
              if (v41 && (v42 = *(a1 + 280), v42 < *v41))
              {
                *(a1 + 280) = v42 + 1;
                v43 = *&v41[2 * v42 + 2];
              }

              else
              {
                sub_152AF24(*(a1 + 272));
                v43 = sub_19593CC(a1 + 272, v44);
                v40 = *v192;
              }

              v39 = sub_2219A98(a3, v43, v40);
              *v192 = v39;
              if (!v39)
              {
                goto LABEL_353;
              }

              if (*a3 <= v39 || *v39 != 954)
              {
                goto LABEL_347;
              }
            }

          default:
            goto LABEL_337;
        }

        goto LABEL_346;
      }

      if (v9 >> 3 <= 0x54)
      {
        if (v9 >> 3 > 0x45)
        {
          if (v11 == 70)
          {
            if (v9 == 50)
            {
              v144 = v8 - 2;
              while (1)
              {
                v145 = (v144 + 2);
                *v192 = v144 + 2;
                v146 = *(a1 + 360);
                if (v146 && (v147 = *(a1 + 352), v147 < *v146))
                {
                  *(a1 + 352) = v147 + 1;
                  v148 = *&v146[2 * v147 + 2];
                }

                else
                {
                  sub_152B3B8(*(a1 + 344));
                  v148 = sub_19593CC(a1 + 344, v149);
                  v145 = *v192;
                }

                v144 = sub_2219228(a3, v148, v145);
                *v192 = v144;
                if (!v144)
                {
                  goto LABEL_353;
                }

                if (*a3 <= v144 || *v144 != 1202)
                {
                  goto LABEL_347;
                }
              }
            }

            goto LABEL_337;
          }

          if (v11 == 75)
          {
            if (v9 != 90)
            {
              goto LABEL_337;
            }

            *(a1 + 40) |= 0x10u;
            v136 = *(a1 + 496);
            if (!v136)
            {
              v137 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
              if (*v7)
              {
                v137 = *v137;
              }

              v136 = sub_152B054(v137);
              *(a1 + 496) = v136;
              v8 = *v192;
            }

            v27 = sub_2219BB8(a3, v136, v8);
          }

          else
          {
            if (v11 != 80 || v9 != 130)
            {
              goto LABEL_337;
            }

            *(a1 + 40) |= 0x20u;
            v25 = *(a1 + 504);
            if (!v25)
            {
              v26 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
              if (*v7)
              {
                v26 = *v26;
              }

              v25 = sub_152ACC0(v26);
              *(a1 + 504) = v25;
              v8 = *v192;
            }

            v27 = sub_2219C48(a3, v25, v8);
          }

          goto LABEL_346;
        }

        if (v11 == 60)
        {
          if (v9 == 226)
          {
            v138 = v8 - 2;
            while (1)
            {
              v139 = (v138 + 2);
              *v192 = v138 + 2;
              v140 = *(a1 + 312);
              if (v140 && (v141 = *(a1 + 304), v141 < *v140))
              {
                *(a1 + 304) = v141 + 1;
                v142 = *&v140[2 * v141 + 2];
              }

              else
              {
                v143 = sub_16F5A54(*(a1 + 296));
                v142 = sub_19593CC(a1 + 296, v143);
                v139 = *v192;
              }

              v138 = sub_22002C0(a3, v142, v139);
              *v192 = v138;
              if (!v138)
              {
                goto LABEL_353;
              }

              if (*a3 <= v138 || *v138 != 994)
              {
                goto LABEL_347;
              }
            }
          }

          goto LABEL_337;
        }

        if (v11 == 61)
        {
          if (v9 == 234)
          {
            v130 = v8 - 2;
            while (1)
            {
              v131 = (v130 + 2);
              *v192 = v130 + 2;
              v132 = *(a1 + 336);
              if (v132 && (v133 = *(a1 + 328), v133 < *v132))
              {
                *(a1 + 328) = v133 + 1;
                v134 = *&v132[2 * v133 + 2];
              }

              else
              {
                v135 = sub_152AFD8(*(a1 + 320));
                v134 = sub_19593CC(a1 + 320, v135);
                v131 = *v192;
              }

              v130 = sub_2219B28(a3, v134, v131);
              *v192 = v130;
              if (!v130)
              {
                goto LABEL_353;
              }

              if (*a3 <= v130 || *v130 != 1002)
              {
                goto LABEL_347;
              }
            }
          }

          goto LABEL_337;
        }

        if (v11 != 65 || v9 != 8)
        {
          goto LABEL_337;
        }

        v5 |= 0x800u;
        v23 = v8 + 1;
        v22 = *v8;
        if (v22 < 0)
        {
          v24 = *v23;
          v22 = (v24 << 7) + v22 - 128;
          if (v24 < 0)
          {
            v182 = sub_19587DC(v8, v22);
            *v192 = v182;
            *(a1 + 545) = v183 != 0;
            if (!v182)
            {
              goto LABEL_353;
            }

            continue;
          }

          v23 = v8 + 2;
        }

        *v192 = v23;
        *(a1 + 545) = v22 != 0;
      }

      else
      {
        if (v9 >> 3 > 0x5A)
        {
          if (v9 >> 3 <= 0x6D)
          {
            if (v11 == 91)
            {
              if (v9 == 218)
              {
                v150 = v8 - 2;
                while (1)
                {
                  v151 = (v150 + 2);
                  *v192 = v150 + 2;
                  v152 = *(a1 + 408);
                  if (v152 && (v153 = *(a1 + 400), v153 < *v152))
                  {
                    *(a1 + 400) = v153 + 1;
                    v154 = *&v152[2 * v153 + 2];
                  }

                  else
                  {
                    v155 = *(a1 + 392);
                    if (!v155)
                    {
                      operator new();
                    }

                    *v157 = v156;
                    v157[1] = sub_195A650;
                    *v156 = 0;
                    v156[1] = 0;
                    v156[2] = 0;
                    v154 = sub_19593CC(a1 + 392, v156);
                    v151 = *v192;
                  }

                  v150 = sub_1958890(v154, v151, a3);
                  *v192 = v150;
                  if (!v150)
                  {
                    goto LABEL_353;
                  }

                  if (*a3 <= v150 || *v150 != 1498)
                  {
                    goto LABEL_347;
                  }
                }
              }
            }

            else if (v11 == 100 && v9 == 34)
            {
              v15 = v8 - 2;
              while (1)
              {
                v16 = (v15 + 2);
                *v192 = v15 + 2;
                v17 = *(a1 + 432);
                if (v17 && (v18 = *(a1 + 424), v18 < *v17))
                {
                  *(a1 + 424) = v18 + 1;
                  v19 = *&v17[2 * v18 + 2];
                }

                else
                {
                  v20 = sub_152ADEC(*(a1 + 416));
                  v19 = sub_19593CC(a1 + 416, v20);
                  v16 = *v192;
                }

                v15 = sub_2219978(a3, v19, v16);
                *v192 = v15;
                if (!v15)
                {
                  goto LABEL_353;
                }

                if (*a3 <= v15 || *v15 != 1698)
                {
                  goto LABEL_347;
                }
              }
            }

LABEL_337:
            if (v9)
            {
              v188 = (v9 & 7) == 4;
            }

            else
            {
              v188 = 1;
            }

            if (v188)
            {
              if (v8)
              {
                a3[10].i32[0] = v9 - 1;
                break;
              }

LABEL_353:
              *v192 = 0;
              break;
            }

            if (v9 - 8000 > 0x31F)
            {
              if (*v7)
              {
                v189 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
              }

              else
              {
                v190 = v9;
                v191 = sub_11F1920((a1 + 8));
                v9 = v190;
                v189 = v191;
                v8 = *v192;
              }

              v27 = sub_1952690(v9, v189, v8, a3);
            }

            else
            {
              v27 = sub_19525AC((a1 + 16), v9, v8, &off_2775FB0, (a1 + 8), a3);
            }

LABEL_346:
            *v192 = v27;
            if (!v27)
            {
              goto LABEL_353;
            }

            continue;
          }

          if (v11 == 110)
          {
            if (v9 == 114)
            {
              v158 = v8 - 2;
              while (1)
              {
                v159 = (v158 + 2);
                *v192 = v158 + 2;
                v160 = *(a1 + 456);
                if (v160 && (v161 = *(a1 + 448), v161 < *v160))
                {
                  *(a1 + 448) = v161 + 1;
                  v162 = *&v160[2 * v161 + 2];
                }

                else
                {
                  v163 = sub_152B17C(*(a1 + 440));
                  v162 = sub_19593CC(a1 + 440, v163);
                  v159 = *v192;
                }

                v158 = sub_2219CD8(a3, v162, v159);
                *v192 = v158;
                if (!v158)
                {
                  goto LABEL_353;
                }

                if (*a3 <= v158 || *v158 != 1778)
                {
                  goto LABEL_347;
                }
              }
            }

            goto LABEL_337;
          }

          if (v11 != 115 || v9 != 152)
          {
            goto LABEL_337;
          }

          v37 = v8 + 1;
          v36 = *v8;
          if (v36 < 0)
          {
            v38 = *v37;
            v36 = (v38 << 7) + v36 - 128;
            if ((v38 & 0x80000000) == 0)
            {
              v37 = v8 + 2;
              goto LABEL_72;
            }

            *v192 = sub_19587DC(v8, v36);
            if (!*v192)
            {
              goto LABEL_353;
            }
          }

          else
          {
LABEL_72:
            *v192 = v37;
          }

          if (v36 > 3)
          {
            sub_156E858();
          }

          else
          {
            *(a1 + 40) |= 0x4000u;
            *(a1 + 556) = v36;
          }

          continue;
        }

        if (v11 == 85)
        {
          if (v9 != 168)
          {
            goto LABEL_337;
          }

          v5 |= 0x8000u;
          v168 = v8 + 1;
          v167 = *v8;
          if (v167 < 0)
          {
            v169 = *v168;
            v167 = (v169 << 7) + v167 - 128;
            if (v169 < 0)
            {
              v186 = sub_19587DC(v8, v167);
              *v192 = v186;
              *(a1 + 560) = v187;
              if (!v186)
              {
                goto LABEL_353;
              }

              continue;
            }

            v168 = v8 + 2;
          }

          *v192 = v168;
          *(a1 + 560) = v167;
        }

        else
        {
          if (v11 != 86)
          {
            if (v11 == 90 && v9 == 210)
            {
              v28 = v8 - 2;
              while (1)
              {
                v29 = (v28 + 2);
                *v192 = v28 + 2;
                v30 = *(a1 + 384);
                if (v30 && (v31 = *(a1 + 376), v31 < *v30))
                {
                  *(a1 + 376) = v31 + 1;
                  v32 = *&v30[2 * v31 + 2];
                }

                else
                {
                  v33 = *(a1 + 368);
                  if (!v33)
                  {
                    operator new();
                  }

                  *v35 = v34;
                  v35[1] = sub_195A650;
                  *v34 = 0;
                  v34[1] = 0;
                  v34[2] = 0;
                  v32 = sub_19593CC(a1 + 368, v34);
                  v29 = *v192;
                }

                v28 = sub_1958890(v32, v29, a3);
                *v192 = v28;
                if (!v28)
                {
                  goto LABEL_353;
                }

                if (*a3 <= v28 || *v28 != 1490)
                {
                  goto LABEL_347;
                }
              }
            }

            goto LABEL_337;
          }

          if (v9 != 176)
          {
            goto LABEL_337;
          }

          v5 |= 0x10000u;
          v165 = v8 + 1;
          v164 = *v8;
          if (v164 < 0)
          {
            v166 = *v165;
            v164 = (v166 << 7) + v164 - 128;
            if (v166 < 0)
            {
              v184 = sub_19587DC(v8, v164);
              *v192 = v184;
              *(a1 + 568) = v185;
              if (!v184)
              {
                goto LABEL_353;
              }

              continue;
            }

            v165 = v8 + 2;
          }

          *v192 = v165;
          *(a1 + 568) = v164;
        }
      }

LABEL_347:
      ;
    }

    while ((sub_195ADC0(a3, v192, a3[11].i32[1]) & 1) == 0);
  }

  *(a1 + 40) |= v5;
  return *v192;
}

char *sub_1521D28(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 512);
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

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 520);
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

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 528);
    *v11 = 32;
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

  if (v5)
  {
    v15 = sub_128AEEC(a3, 5, *(a1 + 464) & 0xFFFFFFFFFFFFFFFELL, v15);
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v19 = *(a1 + 544);
    *v15 = 48;
    v15[1] = v19;
    v15 += 2;
  }

  v20 = *(a1 + 48);
  if (v20 < 1)
  {
    v23 = v15;
  }

  else
  {
    for (i = 0; i != v20; ++i)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v22 = *(*(a1 + 56) + 4 * i);
      *v15 = 56;
      v15[1] = v22;
      if (v22 > 0x7F)
      {
        v15[1] = v22 | 0x80;
        v24 = v22 >> 7;
        v15[2] = v22 >> 7;
        v23 = v15 + 3;
        if (v22 >= 0x4000)
        {
          LOBYTE(v15) = v15[2];
          do
          {
            *(v23 - 1) = v15 | 0x80;
            v15 = (v24 >> 7);
            *v23++ = v24 >> 7;
            v25 = v24 >> 14;
            v24 >>= 7;
          }

          while (v25);
        }
      }

      else
      {
        v23 = v15 + 2;
      }

      v15 = v23;
    }
  }

  v26 = *(a1 + 72);
  if (v26)
  {
    for (j = 0; j != v26; ++j)
    {
      if (*a3 <= v23)
      {
        v23 = sub_225EB68(a3, v23);
      }

      v28 = *(*(a1 + 80) + 8 * j + 8);
      *v23 = 82;
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

      v23 = sub_151C22C(v28, v30, a3);
    }
  }

  v31 = *(a1 + 96);
  if (v31)
  {
    for (k = 0; k != v31; ++k)
    {
      if (*a3 <= v23)
      {
        v23 = sub_225EB68(a3, v23);
      }

      v33 = *(*(a1 + 104) + 8 * k + 8);
      *v23 = 90;
      v34 = *(v33 + 20);
      v23[1] = v34;
      if (v34 > 0x7F)
      {
        v35 = sub_19575D0(v34, v23 + 1);
      }

      else
      {
        v35 = v23 + 2;
      }

      v23 = sub_151C22C(v33, v35, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    v23 = sub_128AEEC(a3, 12, *(a1 + 472) & 0xFFFFFFFFFFFFFFFELL, v23);
  }

  v36 = *(a1 + 120);
  if (v36)
  {
    for (m = 0; m != v36; ++m)
    {
      if (*a3 <= v23)
      {
        v23 = sub_225EB68(a3, v23);
      }

      v38 = *(*(a1 + 128) + 8 * m + 8);
      *v23 = 106;
      v39 = *(v38 + 20);
      v23[1] = v39;
      if (v39 > 0x7F)
      {
        v40 = sub_19575D0(v39, v23 + 1);
      }

      else
      {
        v40 = v23 + 2;
      }

      v23 = sub_14F5930(v38, v40, a3);
    }
  }

  v41 = *(a1 + 144);
  if (v41)
  {
    for (n = 0; n != v41; ++n)
    {
      if (*a3 <= v23)
      {
        v23 = sub_225EB68(a3, v23);
      }

      v43 = *(*(a1 + 152) + 8 * n + 8);
      *v23 = 122;
      v44 = *(v43 + 20);
      v23[1] = v44;
      if (v44 > 0x7F)
      {
        v45 = sub_19575D0(v44, v23 + 1);
      }

      else
      {
        v45 = v23 + 2;
      }

      v23 = sub_16E74A8(v43, v45, a3);
    }
  }

  v46 = *(a1 + 168);
  if (v46)
  {
    for (ii = 0; ii != v46; ++ii)
    {
      if (*a3 <= v23)
      {
        v23 = sub_225EB68(a3, v23);
      }

      v48 = *(*(a1 + 176) + 8 * ii + 8);
      *v23 = 386;
      v49 = *(v48 + 20);
      v23[2] = v49;
      if (v49 > 0x7F)
      {
        v50 = sub_19575D0(v49, v23 + 2);
      }

      else
      {
        v50 = v23 + 3;
      }

      v23 = sub_151BB94(v48, v50, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v51 = *(a1 + 480);
    *v23 = 418;
    v52 = *(v51 + 20);
    v23[2] = v52;
    if (v52 > 0x7F)
    {
      v53 = sub_19575D0(v52, v23 + 2);
    }

    else
    {
      v53 = v23 + 3;
    }

    v23 = sub_14EB170(v51, v53, a3);
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v55 = *(a1 + 536);
    *v23 = 424;
    v23[2] = v55;
    if (v55 > 0x7F)
    {
      v23[2] = v55 | 0x80;
      v56 = v55 >> 7;
      v23[3] = v55 >> 7;
      v54 = v23 + 4;
      if (v55 >= 0x4000)
      {
        LOBYTE(v57) = v23[3];
        do
        {
          *(v54 - 1) = v57 | 0x80;
          v57 = v56 >> 7;
          *v54++ = v56 >> 7;
          v58 = v56 >> 14;
          v56 >>= 7;
        }

        while (v58);
      }
    }

    else
    {
      v54 = v23 + 3;
    }
  }

  else
  {
    v54 = v23;
  }

  v59 = *(a1 + 192);
  if (v59)
  {
    for (jj = 0; jj != v59; ++jj)
    {
      if (*a3 <= v54)
      {
        v54 = sub_225EB68(a3, v54);
      }

      v61 = *(*(a1 + 200) + 8 * jj + 8);
      *v54 = 458;
      v62 = *(v61 + 20);
      v54[2] = v62;
      if (v62 > 0x7F)
      {
        v63 = sub_19575D0(v62, v54 + 2);
      }

      else
      {
        v63 = v54 + 3;
      }

      v54 = sub_14D9394(v61, v63, a3);
    }
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v54)
    {
      v54 = sub_225EB68(a3, v54);
    }

    v64 = *(a1 + 488);
    *v54 = 498;
    v65 = *(v64 + 20);
    v54[2] = v65;
    if (v65 > 0x7F)
    {
      v66 = sub_19575D0(v65, v54 + 2);
    }

    else
    {
      v66 = v54 + 3;
    }

    v54 = sub_14F71E8(v64, v66, a3);
  }

  v67 = *(a1 + 216);
  if (v67)
  {
    for (kk = 0; kk != v67; ++kk)
    {
      if (*a3 <= v54)
      {
        v54 = sub_225EB68(a3, v54);
      }

      v69 = *(*(a1 + 224) + 8 * kk + 8);
      *v54 = 666;
      v70 = *(v69 + 20);
      v54[2] = v70;
      if (v70 > 0x7F)
      {
        v71 = sub_19575D0(v70, v54 + 2);
      }

      else
      {
        v71 = v54 + 3;
      }

      v54 = sub_14F5930(v69, v71, a3);
    }
  }

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= v54)
    {
      v54 = sub_225EB68(a3, v54);
    }

    v72 = *(a1 + 548);
    *v54 = 709;
    *(v54 + 2) = v72;
    v54 += 6;
  }

  v73 = *(a1 + 232);
  if (v73 < 1)
  {
    v76 = v54;
  }

  else
  {
    for (mm = 0; mm != v73; ++mm)
    {
      if (*a3 <= v54)
      {
        v54 = sub_225EB68(a3, v54);
      }

      v75 = *(*(a1 + 240) + 8 * mm);
      *v54 = 744;
      v54[2] = v75;
      if (v75 > 0x7F)
      {
        v54[2] = v75 | 0x80;
        v77 = v75 >> 7;
        v54[3] = v75 >> 7;
        v76 = v54 + 4;
        if (v75 >= 0x4000)
        {
          LOBYTE(v54) = v54[3];
          do
          {
            *(v76 - 1) = v54 | 0x80;
            v54 = (v77 >> 7);
            *v76++ = v77 >> 7;
            v78 = v77 >> 14;
            v77 >>= 7;
          }

          while (v78);
        }
      }

      else
      {
        v76 = v54 + 3;
      }

      v54 = v76;
    }
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v76)
    {
      v76 = sub_225EB68(a3, v76);
    }

    v80 = *(a1 + 552);
    *v76 = 904;
    v76[2] = v80;
    if (v80 > 0x7F)
    {
      v76[2] = v80 | 0x80;
      v81 = v80 >> 7;
      v76[3] = v80 >> 7;
      v79 = v76 + 4;
      if (v80 >= 0x4000)
      {
        LOBYTE(v76) = v76[3];
        do
        {
          *(v79 - 1) = v76 | 0x80;
          v76 = (v81 >> 7);
          *v79++ = v81 >> 7;
          v82 = v81 >> 14;
          v81 >>= 7;
        }

        while (v82);
      }
    }

    else
    {
      v79 = v76 + 3;
    }
  }

  else
  {
    v79 = v76;
  }

  v83 = *(a1 + 256);
  if (v83)
  {
    for (nn = 0; nn != v83; ++nn)
    {
      if (*a3 <= v79)
      {
        v79 = sub_225EB68(a3, v79);
      }

      v85 = *(*(a1 + 264) + 8 * nn + 8);
      *v79 = 914;
      v86 = *(v85 + 20);
      v79[2] = v86;
      if (v86 > 0x7F)
      {
        v87 = sub_19575D0(v86, v79 + 2);
      }

      else
      {
        v87 = v79 + 3;
      }

      v79 = sub_151CB8C(v85, v87, a3);
    }
  }

  v88 = *(a1 + 280);
  if (v88)
  {
    for (i1 = 0; i1 != v88; ++i1)
    {
      if (*a3 <= v79)
      {
        v79 = sub_225EB68(a3, v79);
      }

      v90 = *(*(a1 + 288) + 8 * i1 + 8);
      *v79 = 954;
      v91 = *(v90 + 20);
      v79[2] = v91;
      if (v91 > 0x7F)
      {
        v92 = sub_19575D0(v91, v79 + 2);
      }

      else
      {
        v92 = v79 + 3;
      }

      v79 = sub_151DB88(v90, v92, a3);
    }
  }

  v93 = *(a1 + 304);
  if (v93)
  {
    for (i2 = 0; i2 != v93; ++i2)
    {
      if (*a3 <= v79)
      {
        v79 = sub_225EB68(a3, v79);
      }

      v95 = *(*(a1 + 312) + 8 * i2 + 8);
      *v79 = 994;
      v96 = *(v95 + 20);
      v79[2] = v96;
      if (v96 > 0x7F)
      {
        v97 = sub_19575D0(v96, v79 + 2);
      }

      else
      {
        v97 = v79 + 3;
      }

      v79 = sub_16E74A8(v95, v97, a3);
    }
  }

  v98 = *(a1 + 328);
  if (v98)
  {
    for (i3 = 0; i3 != v98; ++i3)
    {
      if (*a3 <= v79)
      {
        v79 = sub_225EB68(a3, v79);
      }

      v100 = *(*(a1 + 336) + 8 * i3 + 8);
      *v79 = 1002;
      v101 = *(v100 + 20);
      v79[2] = v101;
      if (v101 > 0x7F)
      {
        v102 = sub_19575D0(v101, v79 + 2);
      }

      else
      {
        v102 = v79 + 3;
      }

      v79 = sub_151E918(v100, v102, a3);
    }
  }

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v79)
    {
      v79 = sub_225EB68(a3, v79);
    }

    v103 = *(a1 + 545);
    *v79 = 1160;
    v79[2] = v103;
    v79 += 3;
  }

  v104 = *(a1 + 352);
  if (v104)
  {
    for (i4 = 0; i4 != v104; ++i4)
    {
      if (*a3 <= v79)
      {
        v79 = sub_225EB68(a3, v79);
      }

      v106 = *(*(a1 + 360) + 8 * i4 + 8);
      *v79 = 1202;
      v107 = *(v106 + 20);
      v79[2] = v107;
      if (v107 > 0x7F)
      {
        v108 = sub_19575D0(v107, v79 + 2);
      }

      else
      {
        v108 = v79 + 3;
      }

      v79 = sub_1525040(v106, v108, a3);
    }
  }

  if ((v5 & 0x10) == 0)
  {
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_198;
    }

LABEL_206:
    if (*a3 <= v79)
    {
      v79 = sub_225EB68(a3, v79);
    }

    v113 = *(a1 + 504);
    *v79 = 1410;
    v114 = *(v113 + 40);
    v79[2] = v114;
    if (v114 > 0x7F)
    {
      v115 = sub_19575D0(v114, v79 + 2);
    }

    else
    {
      v115 = v79 + 3;
    }

    v79 = sub_151B450(v113, v115, a3);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_199;
    }

    goto LABEL_212;
  }

  if (*a3 <= v79)
  {
    v79 = sub_225EB68(a3, v79);
  }

  v110 = *(a1 + 496);
  *v79 = 1242;
  v111 = *(v110 + 20);
  v79[2] = v111;
  if (v111 > 0x7F)
  {
    v112 = sub_19575D0(v111, v79 + 2);
  }

  else
  {
    v112 = v79 + 3;
  }

  v79 = sub_151F150(v110, v112, a3);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_206;
  }

LABEL_198:
  if ((v5 & 0x8000) == 0)
  {
LABEL_199:
    v109 = v79;
    goto LABEL_219;
  }

LABEL_212:
  if (*a3 <= v79)
  {
    v79 = sub_225EB68(a3, v79);
  }

  v116 = *(a1 + 560);
  *v79 = 1448;
  v79[2] = v116;
  if (v116 > 0x7F)
  {
    v79[2] = v116 | 0x80;
    v117 = v116 >> 7;
    v79[3] = v116 >> 7;
    v109 = v79 + 4;
    if (v116 >= 0x4000)
    {
      LOBYTE(v79) = v79[3];
      do
      {
        *(v109 - 1) = v79 | 0x80;
        v79 = (v117 >> 7);
        *v109++ = v117 >> 7;
        v118 = v117 >> 14;
        v117 >>= 7;
      }

      while (v118);
    }
  }

  else
  {
    v109 = v79 + 3;
  }

LABEL_219:
  if ((v5 & 0x10000) != 0)
  {
    if (*a3 <= v109)
    {
      v109 = sub_225EB68(a3, v109);
    }

    v120 = *(a1 + 568);
    *v109 = 1456;
    v109[2] = v120;
    if (v120 > 0x7F)
    {
      v109[2] = v120 | 0x80;
      v121 = v120 >> 7;
      v109[3] = v120 >> 7;
      v119 = v109 + 4;
      if (v120 >= 0x4000)
      {
        LOBYTE(v109) = v109[3];
        do
        {
          *(v119 - 1) = v109 | 0x80;
          v109 = (v121 >> 7);
          *v119++ = v121 >> 7;
          v122 = v121 >> 14;
          v121 >>= 7;
        }

        while (v122);
      }
    }

    else
    {
      v119 = v109 + 3;
    }
  }

  else
  {
    v119 = v109;
  }

  v123 = *(a1 + 376);
  if (v123 >= 1)
  {
    v124 = 8;
    do
    {
      v125 = *(*(a1 + 384) + v124);
      v126 = *(v125 + 23);
      if (v126 < 0 && (v126 = v125[1], v126 > 127) || *a3 - v119 + 13 < v126)
      {
        v119 = sub_1957480(a3, 90, v125, v119);
      }

      else
      {
        *v119 = 1490;
        v119[2] = v126;
        if (*(v125 + 23) < 0)
        {
          v125 = *v125;
        }

        v127 = v119 + 3;
        memcpy(v119 + 3, v125, v126);
        v119 = &v127[v126];
      }

      v124 += 8;
      --v123;
    }

    while (v123);
  }

  v128 = *(a1 + 400);
  if (v128 >= 1)
  {
    v129 = 8;
    do
    {
      v130 = *(*(a1 + 408) + v129);
      v131 = *(v130 + 23);
      if (v131 < 0 && (v131 = v130[1], v131 > 127) || *a3 - v119 + 13 < v131)
      {
        v119 = sub_1957480(a3, 91, v130, v119);
      }

      else
      {
        *v119 = 1498;
        v119[2] = v131;
        if (*(v130 + 23) < 0)
        {
          v130 = *v130;
        }

        v132 = v119 + 3;
        memcpy(v119 + 3, v130, v131);
        v119 = &v132[v131];
      }

      v129 += 8;
      --v128;
    }

    while (v128);
  }

  v133 = *(a1 + 424);
  if (v133)
  {
    for (i5 = 0; i5 != v133; ++i5)
    {
      if (*a3 <= v119)
      {
        v119 = sub_225EB68(a3, v119);
      }

      v135 = *(*(a1 + 432) + 8 * i5 + 8);
      *v119 = 1698;
      v136 = *(v135 + 20);
      v119[2] = v136;
      if (v136 > 0x7F)
      {
        v137 = sub_19575D0(v136, v119 + 2);
      }

      else
      {
        v137 = v119 + 3;
      }

      v119 = sub_151C22C(v135, v137, a3);
    }
  }

  v138 = *(a1 + 448);
  if (v138)
  {
    for (i6 = 0; i6 != v138; ++i6)
    {
      if (*a3 <= v119)
      {
        v119 = sub_225EB68(a3, v119);
      }

      v140 = *(*(a1 + 456) + 8 * i6 + 8);
      *v119 = 1778;
      v141 = *(v140 + 20);
      v119[2] = v141;
      if (v141 > 0x7F)
      {
        v142 = sub_19575D0(v141, v119 + 2);
      }

      else
      {
        v142 = v119 + 3;
      }

      v119 = sub_151FFD8(v140, v142, a3);
    }
  }

  if ((v5 & 0x4000) != 0)
  {
    if (*a3 <= v119)
    {
      v119 = sub_225EB68(a3, v119);
    }

    v144 = *(a1 + 556);
    *v119 = 1944;
    v119[2] = v144;
    if (v144 > 0x7F)
    {
      v119[2] = v144 | 0x80;
      v145 = v144 >> 7;
      v119[3] = v144 >> 7;
      v143 = v119 + 4;
      if (v144 >= 0x4000)
      {
        LOBYTE(v146) = v119[3];
        do
        {
          *(v143 - 1) = v146 | 0x80;
          v146 = v145 >> 7;
          *v143++ = v145 >> 7;
          v147 = v145 >> 14;
          v145 >>= 7;
        }

        while (v147);
      }
    }

    else
    {
      v143 = v119 + 3;
    }
  }

  else
  {
    v143 = v119;
  }

  if (*(a1 + 26))
  {
    v143 = sub_1953428(a1 + 16, 1000, 1100, v143, a3);
  }

  v148 = *(a1 + 8);
  if ((v148 & 1) == 0)
  {
    return v143;
  }

  v150 = v148 & 0xFFFFFFFFFFFFFFFCLL;
  v151 = *(v150 + 31);
  if (v151 < 0)
  {
    v152 = *(v150 + 8);
    v151 = *(v150 + 16);
  }

  else
  {
    v152 = (v150 + 8);
  }

  if (*a3 - v143 >= v151)
  {
    v153 = v151;
    memcpy(v143, v152, v151);
    v143 += v153;
    return v143;
  }

  return sub_1957130(a3, v152, v151, v143);
}