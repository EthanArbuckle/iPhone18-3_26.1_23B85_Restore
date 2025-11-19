char *sub_1894FB0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v25 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v25, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v25 + 1;
    v7 = *v25;
    if (*v25 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v25, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v25 + 2;
      }
    }

    v25 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 1u;
        v15 = *(a1 + 48);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_19014A4(v17);
          *(a1 + 48) = v15;
          v6 = v25;
        }

        v14 = sub_22356C4(a3, v15, v6);
        goto LABEL_25;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      v18 = v6 - 1;
      while (1)
      {
        v19 = (v18 + 1);
        v25 = v18 + 1;
        v20 = *(a1 + 40);
        if (v20 && (v21 = *(a1 + 32), v21 < *v20))
        {
          *(a1 + 32) = v21 + 1;
          v22 = *&v20[2 * v21 + 2];
        }

        else
        {
          sub_15AE76C(*(a1 + 24));
          v22 = sub_19593CC(a1 + 24, v23);
          v19 = v25;
        }

        v18 = sub_21F4C40(a3, v22, v19);
        v25 = v18;
        if (!v18)
        {
          return 0;
        }

        if (*a3 <= v18 || *v18 != 10)
        {
          goto LABEL_35;
        }
      }
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
        return v25;
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
      v6 = v25;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_25:
    v25 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_35:
    ;
  }

  return v25;
}

char *sub_1895194(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_15AB7D0(v8, v10, a3);
    }
  }

  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v11 = *(a1 + 48);
    *__dst = 18;
    v12 = *(v11 + 40);
    __dst[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, __dst + 1);
    }

    else
    {
      v13 = __dst + 2;
    }

    __dst = sub_1894994(v11, v13, a3);
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return __dst;
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

  if ((*a3 - __dst) >= v17)
  {
    v19 = v17;
    memcpy(__dst, v18, v17);
    __dst += v19;
    return __dst;
  }

  return sub_1957130(a3, v18, v17, __dst);
}

uint64_t sub_189533C(uint64_t a1)
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
      v7 = sub_15ABB68(v6);
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
    v8 = sub_1894AD4(*(a1 + 48));
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

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

void sub_1895418(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_16E2D3C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

      v10 = sub_19014A4(v12);
      *(a1 + 48) = v10;
      v9 = *(a2 + 48);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_2788C10;
    }

    sub_1894B7C(v10, v13);
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1895528(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_15ABFE0(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  v6 = *(a1 + 48);
  v7 = *(v6 + 24);
  do
  {
    v5 = v7 < 1;
    if (v7 < 1)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = sub_1894514(*(*(v6 + 32) + 8 * v7));
    v7 = v8;
  }

  while ((v9 & 1) != 0);
  return v5;
}

uint64_t sub_18955CC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_2716CD8;
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
  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v6;
  return a1;
}

uint64_t sub_1895720(uint64_t a1)
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

  if (a1 != &off_2788C78)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_1869B9C(v5);
      operator delete();
    }

    if (*(a1 + 32))
    {
      sub_16E4E08();
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

void sub_18957F0(uint64_t a1)
{
  sub_1895720(a1);

  operator delete();
}

unsigned __int8 *sub_1895828(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_1869C8C(*(result + 3));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_16E4E44(*(v1 + 4));
    }
  }

  if ((v2 & 0x3C) != 0)
  {
    *(v1 + 45) = 0;
    *(v1 + 5) = 0;
    *(v1 + 14) = 10;
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

char *sub_18958B0(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 3)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_48;
        }

        *(a1 + 16) |= 1u;
        v20 = *(a1 + 24);
        if (!v20)
        {
          v21 = *(a1 + 8);
          v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v22 = *v22;
          }

          v20 = sub_18FF354(v22);
          *(a1 + 24) = v20;
          v7 = v38;
        }

        v16 = sub_2201670(a3, v20, v7);
      }

      else
      {
        if (v11 == 2)
        {
          if (v8 == 17)
          {
            v5 |= 4u;
            *(a1 + 40) = *v7;
            v38 = v7 + 8;
            goto LABEL_56;
          }

          goto LABEL_48;
        }

        if (v11 != 3 || v8 != 26)
        {
          goto LABEL_48;
        }

        *(a1 + 16) |= 2u;
        v13 = *(a1 + 32);
        if (!v13)
        {
          v14 = *(a1 + 8);
          v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          if (v14)
          {
            v15 = *v15;
          }

          v13 = sub_16F5828(v15);
          *(a1 + 32) = v13;
          v7 = v38;
        }

        v16 = sub_21F4D60(a3, v13, v7);
      }

LABEL_55:
      v38 = v16;
      if (!v16)
      {
        goto LABEL_68;
      }

      goto LABEL_56;
    }

    if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_48;
      }

      v5 |= 0x20u;
      v23 = v7 + 1;
      v24 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      v25 = *v23;
      v24 = v24 + (v25 << 7) - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_38:
        v38 = v23;
        *(a1 + 56) = v24;
        goto LABEL_56;
      }

      v33 = sub_1958770(v7, v24);
      v38 = v33;
      *(a1 + 56) = v34;
      if (!v33)
      {
        goto LABEL_68;
      }

      goto LABEL_56;
    }

    if (v11 == 5)
    {
      break;
    }

    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_48;
    }

    v5 |= 0x10u;
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
      v38 = v18;
      *(a1 + 52) = v17 != 0;
      goto LABEL_56;
    }

    v35 = sub_19587DC(v7, v17);
    v38 = v35;
    *(a1 + 52) = v36 != 0;
    if (!v35)
    {
      goto LABEL_68;
    }

LABEL_56:
    if (sub_195ADC0(a3, &v38, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 40)
  {
    v26 = v7 + 1;
    v27 = *v7;
    if ((v27 & 0x8000000000000000) == 0)
    {
      goto LABEL_45;
    }

    v28 = *v26;
    v29 = (v28 << 7) + v27;
    LODWORD(v27) = v29 - 128;
    if (v28 < 0)
    {
      v38 = sub_19587DC(v7, (v29 - 128));
      if (!v38)
      {
        goto LABEL_68;
      }

      LODWORD(v27) = v37;
    }

    else
    {
      v26 = v7 + 2;
LABEL_45:
      v38 = v26;
    }

    if (sub_1393054(v27))
    {
      *(a1 + 16) |= 8u;
      *(a1 + 48) = v27;
    }

    else
    {
      sub_12E85B8();
    }

    goto LABEL_56;
  }

LABEL_48:
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

    v16 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_55;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_68:
  v38 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v38;
}

char *sub_1895C10(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 24);
    *v4 = 10;
    v9 = *(v8 + 20);
    v4[1] = v9;
    if (v9 > 0x7F)
    {
      v10 = sub_19575D0(v9, v4 + 1);
    }

    else
    {
      v10 = v4 + 2;
    }

    v4 = sub_1869F58(v8, v10, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v12 = *(a1 + 32);
      *v4 = 26;
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
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_21;
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

  v11 = *(a1 + 40);
  *v4 = 17;
  *(v4 + 1) = v11;
  v4 += 9;
  if ((v6 & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    v7 = v4;
    goto LABEL_28;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v15 = *(a1 + 56);
  *v4 = 32;
  v4[1] = v15;
  if (v15 > 0x7F)
  {
    v4[1] = v15 | 0x80;
    v16 = v15 >> 7;
    v4[2] = v15 >> 7;
    v7 = v4 + 3;
    if (v15 >= 0x4000)
    {
      LOBYTE(v4) = v4[2];
      do
      {
        *(v7 - 1) = v4 | 0x80;
        LODWORD(v4) = v16 >> 7;
        *v7++ = v16 >> 7;
        v17 = v16 >> 14;
        v16 >>= 7;
      }

      while (v17);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_28:
  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v19 = *(a1 + 48);
    *v7 = 40;
    v7[1] = v19;
    if (v19 > 0x7F)
    {
      v7[1] = v19 | 0x80;
      v20 = v19 >> 7;
      v7[2] = v19 >> 7;
      v18 = v7 + 3;
      if (v19 >= 0x4000)
      {
        LOBYTE(v7) = v7[2];
        do
        {
          *(v18 - 1) = v7 | 0x80;
          v7 = (v20 >> 7);
          *v18++ = v20 >> 7;
          v21 = v20 >> 14;
          v20 >>= 7;
        }

        while (v21);
      }
    }

    else
    {
      v18 = v7 + 2;
    }
  }

  else
  {
    v18 = v7;
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v22 = *(a1 + 52);
    *v18 = 48;
    v18[1] = v22;
    v18 += 2;
  }

  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v18;
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

  if (*a3 - v18 >= v26)
  {
    v28 = v26;
    memcpy(v18, v27, v26);
    v18 += v28;
    return v18;
  }

  return sub_1957130(a3, v27, v26, v18);
}

uint64_t sub_1895F0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    result = 0;
    goto LABEL_17;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = sub_186A16C(*(a1 + 24));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = sub_16E51F0(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v7 = v3 + 9;
  if ((v2 & 4) == 0)
  {
    v7 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v8 = *(a1 + 48);
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v8 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 11;
    }

    v7 += v10;
  }

  result = v7 + ((v2 >> 3) & 2);
  if ((v2 & 0x20) != 0)
  {
    result += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
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

  *(a1 + 20) = result;
  return result;
}

void sub_189604C(uint64_t a1, uint64_t a2)
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

        v6 = sub_18FF354(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2787BC0;
      }

      sub_186A25C(v6, v9);
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

      v10 = sub_16F5828(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_277E5E8;
    }

    sub_16E527C(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_31;
    }

LABEL_30:
    *(a1 + 40) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_32;
    }

LABEL_31:
    *(a1 + 48) = *(a2 + 48);
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
      *(a1 + 56) = *(a2 + 56);
      goto LABEL_9;
    }

LABEL_32:
    *(a1 + 52) = *(a2 + 52);
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

uint64_t sub_18961A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    if (*(v3 + 16))
    {
      result = sub_16E6614(*(v3 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_189620C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = off_2716D58;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_13B5FAC(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
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
    sub_1944E44((a1 + 40), v13, (v12 + 8), v11, **(a1 + 56) - *(a1 + 48));
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

void sub_189635C(_Unwind_Exception *a1)
{
  sub_194362C(v4);
  sub_13B597C(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18963B4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_194362C(a1 + 5);
  sub_13B597C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1896440(void *a1)
{
  sub_18963B4(a1);

  operator delete();
}

uint64_t sub_1896478(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1393F44(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v5 = *(v1 + 48);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 56) + 8);
    do
    {
      v7 = *v6++;
      result = sub_1896C40(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  v9 = *(v1 + 8);
  v8 = (v1 + 8);
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

char *sub_189651C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v26 = a2;
  if ((sub_195ADC0(a3, &v26, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
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
      if (v7 >> 3 == 2)
      {
        if (v7 == 18)
        {
          v14 = v6 - 1;
          while (1)
          {
            v15 = (v14 + 1);
            v26 = v14 + 1;
            v16 = *(a1 + 56);
            if (v16 && (v17 = *(a1 + 48), v17 < *v16))
            {
              *(a1 + 48) = v17 + 1;
              v18 = *&v16[2 * v17 + 2];
            }

            else
            {
              v19 = sub_190170C(*(a1 + 40));
              v18 = sub_19593CC(a1 + 40, v19);
              v15 = v26;
            }

            v14 = sub_22533E4(a3, v18, v15);
            v26 = v14;
            if (!v14)
            {
              return 0;
            }

            if (*a3 <= v14 || *v14 != 18)
            {
              goto LABEL_38;
            }
          }
        }
      }

      else if (v7 >> 3 == 1 && v7 == 10)
      {
        v20 = v6 - 1;
        while (1)
        {
          v21 = (v20 + 1);
          v26 = v20 + 1;
          v22 = *(a1 + 32);
          if (v22 && (v23 = *(a1 + 24), v23 < *v22))
          {
            *(a1 + 24) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            v25 = sub_13AE360(*(a1 + 16));
            v24 = sub_19593CC(a1 + 16, v25);
            v21 = v26;
          }

          v20 = sub_22033B0(a3, v24, v21);
          v26 = v20;
          if (!v20)
          {
            return 0;
          }

          if (*a3 <= v20 || *v20 != 10)
          {
            goto LABEL_38;
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
        v6 = v26;
      }

      v26 = sub_1952690(v7, v13, v6, a3);
      if (!v26)
      {
        return 0;
      }

LABEL_38:
      if (sub_195ADC0(a3, &v26, a3[11].i32[1]))
      {
        return v26;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return v26;
    }

    return 0;
  }

  return v26;
}

char *sub_1896750(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_1394708(v8, v10, a3);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v13 = *(*(a1 + 56) + 8 * j + 8);
      *__dst = 18;
      v14 = *(v13 + 20);
      __dst[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, __dst + 1);
      }

      else
      {
        v15 = __dst + 2;
      }

      __dst = sub_1896F34(v13, v15, a3);
    }
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

uint64_t sub_1896914(uint64_t a1)
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
      v7 = sub_1394BA0(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 48);
  v9 = v2 + v8;
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
      v14 = sub_1897194(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 8);
  if (v15)
  {
    v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v9 += v18;
  }

  *(a1 + 64) = v9;
  return v9;
}

void sub_1896A0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_13B5FAC((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
    v7 = *(a1 + 24) + v4;
    *(a1 + 24) = v7;
    v8 = *(a1 + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a2 + 56);
    v11 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_1944E44((a1 + 40), v11, (v10 + 8), v9, **(a1 + 56) - *(a1 + 48));
    v12 = *(a1 + 48) + v9;
    *(a1 + 48) = v12;
    v13 = *(a1 + 56);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_1896B24(uint64_t a1)
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
    v5 = sub_1395100(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

void *sub_1896B8C(void *a1)
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

void sub_1896C08(void *a1)
{
  sub_1896B8C(a1);

  operator delete();
}

uint64_t sub_1896C40(uint64_t a1)
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

char *sub_1896C68(uint64_t a1, char *a2, int32x2_t *a3)
{
  v33 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v33, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v33 + 1;
    v8 = *v33;
    if (*v33 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v33, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v33 + 2;
      }
    }

    v33 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      break;
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
        goto LABEL_26;
      }

      v19 = *v17;
      v18 = v18 + (v19 << 7) - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v17 = v7 + 2;
LABEL_26:
        v33 = v17;
        *(a1 + 44) = v18;
        goto LABEL_45;
      }

      v29 = sub_1958770(v7, v18);
      v33 = v29;
      *(a1 + 44) = v30;
      if (!v29)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v11 != 1 || v8 != 8)
      {
        goto LABEL_13;
      }

      v5 |= 1u;
      v26 = v7 + 1;
      v27 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      v28 = *v26;
      v27 = v27 + (v28 << 7) - 128;
      if ((v28 & 0x80000000) == 0)
      {
        v26 = v7 + 2;
LABEL_44:
        v33 = v26;
        *(a1 + 40) = v27;
        goto LABEL_45;
      }

      v31 = sub_1958770(v7, v27);
      v33 = v31;
      *(a1 + 40) = v32;
      if (!v31)
      {
        goto LABEL_56;
      }
    }

LABEL_45:
    if (sub_195ADC0(a3, &v33, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 24)
  {
    v20 = v7 - 1;
    while (1)
    {
      v33 = v20 + 1;
      v21 = v20[1];
      if (v20[1] < 0)
      {
        v22 = v21 + (v20[2] << 7);
        v21 = v22 - 128;
        if (v20[2] < 0)
        {
          v20 = sub_1958770((v20 + 1), v22 - 128);
          v21 = v23;
        }

        else
        {
          v20 += 3;
        }
      }

      else
      {
        v20 += 2;
      }

      v33 = v20;
      v24 = *(a1 + 24);
      if (v24 == *(a1 + 28))
      {
        v25 = v24 + 1;
        sub_1958E5C((a1 + 24), v24 + 1);
        *(*(a1 + 32) + 4 * v24) = v21;
        v20 = v33;
      }

      else
      {
        *(*(a1 + 32) + 4 * v24) = v21;
        v25 = v24 + 1;
      }

      *(a1 + 24) = v25;
      if (!v20)
      {
        goto LABEL_56;
      }

      if (*a3 <= v20 || *v20 != 24)
      {
        goto LABEL_45;
      }
    }
  }

  if (v8 == 26)
  {
    v16 = sub_1958918((a1 + 24), v7, a3);
    goto LABEL_20;
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
      v7 = v33;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
LABEL_20:
    v33 = v16;
    if (!v16)
    {
      goto LABEL_56;
    }

    goto LABEL_45;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_56:
  v33 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v33;
}

char *sub_1896F34(uint64_t a1, char *a2, _DWORD *a3)
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

uint64_t sub_1897194(uint64_t a1)
{
  result = sub_1959E5C((a1 + 24)) + *(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      result += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 2) != 0)
    {
      result += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

uint64_t sub_1897260(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_2716E58;
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

void sub_18972DC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_189730C(void *a1)
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

void sub_1897380(void *a1)
{
  sub_189730C(a1);

  operator delete();
}

uint64_t sub_18973B8(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
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

char *sub_18973DC(uint64_t a1, char *a2, int32x2_t *a3)
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
        v36 = v22;
        *(a1 + 32) = v23;
        goto LABEL_42;
      }

      v34 = sub_1958770(v7, v23);
      v36 = v34;
      *(a1 + 32) = v35;
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
      v16 = v7 + 1;
      v17 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v18 = *v16;
      v17 = v17 + (v18 << 7) - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v16 = v7 + 2;
LABEL_24:
        v36 = v16;
        *(a1 + 36) = v17;
        goto LABEL_42;
      }

      v28 = sub_1958770(v7, v17);
      v36 = v28;
      *(a1 + 36) = v29;
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
    v19 = v7 + 1;
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_29:
      v36 = v19;
      *(a1 + 24) = v20;
      goto LABEL_42;
    }

    v32 = sub_1958770(v7, v20);
    v36 = v32;
    *(a1 + 24) = v33;
    if (!v32)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
  }

  if (v11 == 2 && v8 == 16)
  {
    v5 |= 2u;
    v13 = v7 + 1;
    v14 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v13;
    v14 = v14 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v13 = v7 + 2;
LABEL_17:
      v36 = v13;
      *(a1 + 28) = v14;
      goto LABEL_42;
    }

    v30 = sub_1958770(v7, v14);
    v36 = v30;
    *(a1 + 28) = v31;
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

char *sub_1897690(uint64_t a1, char *__dst, _DWORD *a3)
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 36);
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

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v19;
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

  if (*a3 - v19 >= v27)
  {
    v29 = v27;
    memcpy(v19, v28, v27);
    v19 += v29;
    return v19;
  }

  return sub_1957130(a3, v28, v27, v19);
}

uint64_t sub_189794C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_11;
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
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 8) != 0)
  {
LABEL_10:
    v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
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

uint64_t sub_1897A58(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = off_2716ED8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1944EC0(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
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

void sub_1897B38(_Unwind_Exception *a1)
{
  sub_19436B0(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1897B7C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_19436B0(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1897BFC(void *a1)
{
  sub_1897B7C(a1);

  operator delete();
}

uint64_t sub_1897C34(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1898250(v4);
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

char *sub_1897CB0(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_19018C0(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_2253474(a3, v16, v13);
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

char *sub_1897E40(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_18984E8(v8, v10, a3);
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

uint64_t sub_1897F80(uint64_t a1)
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
      v7 = sub_18986A0(v6);
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

void sub_1898028(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1944EC0((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
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

uint64_t sub_18980EC(uint64_t a1)
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
      result = sub_1395100(*(v3 + 40));
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

uint64_t sub_1898158(uint64_t a1)
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
  if (a1 != &off_2788D58)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_1393F08(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1898218(uint64_t a1)
{
  sub_1898158(a1);

  operator delete();
}

uint64_t sub_1898250(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  if (*(result + 16))
  {
    result = sub_1393F44(*(result + 40));
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

char *sub_18982B0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v25 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v25, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v25 + 1;
    v7 = *v25;
    if (*v25 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v25, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v25 + 2;
      }
    }

    v25 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 16)
      {
        v15 = v6 - 1;
        while (1)
        {
          v25 = v15 + 1;
          v16 = v15[1];
          if (v15[1] < 0)
          {
            v17 = v16 + (v15[2] << 7);
            v16 = v17 - 128;
            if (v15[2] < 0)
            {
              v15 = sub_1958770((v15 + 1), v17 - 128);
              v16 = v18;
            }

            else
            {
              v15 += 3;
            }
          }

          else
          {
            v15 += 2;
          }

          v25 = v15;
          v19 = *(a1 + 24);
          if (v19 == *(a1 + 28))
          {
            v20 = v19 + 1;
            sub_1958E5C((a1 + 24), v19 + 1);
            *(*(a1 + 32) + 4 * v19) = v16;
            v15 = v25;
          }

          else
          {
            *(*(a1 + 32) + 4 * v19) = v16;
            v20 = v19 + 1;
          }

          *(a1 + 24) = v20;
          if (!v15)
          {
            return 0;
          }

          if (*a3 <= v15 || *v15 != 16)
          {
            goto LABEL_39;
          }
        }
      }

      if (v7 == 18)
      {
        v14 = sub_1958918((a1 + 24), v6, a3);
        goto LABEL_38;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 40);
      if (!v21)
      {
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v21 = sub_13AE360(v23);
        *(a1 + 40) = v21;
        v6 = v25;
      }

      v14 = sub_22033B0(a3, v21, v6);
      goto LABEL_38;
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
        return v25;
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
      v6 = v25;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_38:
    v25 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_39:
    ;
  }

  return v25;
}

char *sub_18984E8(uint64_t a1, char *a2, void *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v5 = *(a1 + 40);
    *a2 = 10;
    v6 = *(v5 + 44);
    a2[1] = v6;
    if (v6 > 0x7F)
    {
      v7 = sub_19575D0(v6, a2 + 1);
    }

    else
    {
      v7 = a2 + 2;
    }

    a2 = sub_1394708(v5, v7, a3);
  }

  v8 = *(a1 + 24);
  if (v8 < 1)
  {
    v11 = a2;
  }

  else
  {
    for (i = 0; i != v8; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v10 = *(*(a1 + 32) + 4 * i);
      *a2 = 16;
      a2[1] = v10;
      if (v10 > 0x7F)
      {
        a2[1] = v10 | 0x80;
        v12 = v10 >> 7;
        a2[2] = v10 >> 7;
        v11 = a2 + 3;
        if (v10 >= 0x4000)
        {
          LOBYTE(v13) = a2[2];
          do
          {
            *(v11 - 1) = v13 | 0x80;
            v13 = v12 >> 7;
            *v11++ = v12 >> 7;
            v14 = v12 >> 14;
            v12 >>= 7;
          }

          while (v14);
        }
      }

      else
      {
        v11 = a2 + 2;
      }

      a2 = v11;
    }
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

uint64_t sub_18986A0(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 24)) + *(a1 + 24);
  if (*(a1 + 16))
  {
    v3 = sub_1394BA0(*(a1 + 40));
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

  *(a1 + 20) = v2;
  return v2;
}

void sub_1898730(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (a1 + 24);
    v6 = *(a1 + 24);
    sub_1958E5C((a1 + 24), v6 + v4);
    v7 = *(a1 + 32);
    *v5 += *(a2 + 24);
    memcpy((v7 + 4 * v6), *(a2 + 32), 4 * *(a2 + 24));
  }

  if (*(a2 + 16))
  {
    v8 = *(a2 + 40);
    *(a1 + 16) |= 1u;
    v9 = *(a1 + 40);
    if (!v9)
    {
      v10 = *(a1 + 8);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      v9 = sub_13AE360(v11);
      *(a1 + 40) = v9;
      v8 = *(a2 + 40);
    }

    if (v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = &off_276D7F8;
    }

    sub_1394E7C(v9, v12);
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1898828(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_1395100(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

double sub_1898868(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_2716FD8;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  result = 0.0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = &qword_278E990;
  *(a1 + 136) = &qword_278E990;
  *(a1 + 144) = &qword_278E990;
  *(a1 + 244) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

uint64_t sub_18988F0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2716FD8;
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

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v9 = *(a2 + 56);
  if (v9)
  {
    sub_1958E5C((a1 + 56), v9);
    v10 = *(a1 + 64);
    *(a1 + 56) += *(a2 + 56);
    memcpy(v10, *(a2 + 64), 4 * *(a2 + 56));
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v11 = *(a2 + 72);
  if (v11)
  {
    sub_1958E5C((a1 + 72), v11);
    v12 = *(a1 + 80);
    *(a1 + 72) += *(a2 + 72);
    memcpy(v12, *(a2 + 80), 4 * *(a2 + 72));
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v13 = *(a2 + 88);
  if (v13)
  {
    sub_1958E5C((a1 + 88), v13);
    v14 = *(a1 + 96);
    *(a1 + 88) += *(a2 + 88);
    memcpy(v14, *(a2 + 96), 4 * *(a2 + 88));
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v15 = *(a2 + 112);
  if (v15)
  {
    v16 = *(a2 + 120);
    v17 = sub_19592E8(a1 + 104, *(a2 + 112));
    sub_194449C((a1 + 104), v17, (v16 + 8), v15, **(a1 + 120) - *(a1 + 112));
    v18 = *(a1 + 112) + v15;
    *(a1 + 112) = v18;
    v19 = *(a1 + 120);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 8);
  if (v20)
  {
    sub_1957EF4(v4, (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 128) = &qword_278E990;
  v21 = *(a2 + 16);
  if (v21)
  {
    v22 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v22 = *v22;
    }

    sub_194EA1C((a1 + 128), (*(a2 + 128) & 0xFFFFFFFFFFFFFFFELL), v22);
    v21 = *(a2 + 16);
  }

  *(a1 + 136) = &qword_278E990;
  if ((v21 & 2) != 0)
  {
    v23 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v23 = *v23;
    }

    sub_194EA1C((a1 + 136), (*(a2 + 136) & 0xFFFFFFFFFFFFFFFELL), v23);
    v21 = *(a2 + 16);
  }

  *(a1 + 144) = &qword_278E990;
  if ((v21 & 4) != 0)
  {
    v24 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v24 = *v24;
    }

    sub_194EA1C((a1 + 144), (*(a2 + 144) & 0xFFFFFFFFFFFFFFFELL), v24);
    v21 = *(a2 + 16);
  }

  if ((v21 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 152) = 0;
  if ((v21 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 160) = 0;
  if ((v21 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 168) = 0;
  if ((v21 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 176) = 0;
  if ((v21 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 184) = 0;
  if ((v21 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 192) = 0;
  if ((v21 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 200) = 0;
  if ((v21 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 208) = 0;
  if ((v21 & 0x800) != 0)
  {
    operator new();
  }

  *(a1 + 216) = 0;
  if ((v21 & 0x1000) != 0)
  {
    operator new();
  }

  *(a1 + 224) = 0;
  v25 = *(a2 + 232);
  *(a1 + 244) = *(a2 + 244);
  *(a1 + 232) = v25;
  return a1;
}

void *sub_1898F2C(void *a1)
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

  sub_1898FE4(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1942CE4(a1 + 13);
  sub_1956ABC((a1 + 11));
  sub_1956ABC((a1 + 9));
  sub_1956ABC((a1 + 7));
  sub_1956ABC((a1 + 5));
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1898FE4(uint64_t a1)
{
  v3 = *(a1 + 128);
  v2 = (a1 + 128);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 136) != &qword_278E990)
  {
    sub_194E89C((a1 + 136));
  }

  result = (a1 + 144);
  if (*(a1 + 144) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2788D88)
  {
    v5 = *(a1 + 152);
    if (v5)
    {
      sub_1869B9C(v5);
      operator delete();
    }

    v6 = *(a1 + 160);
    if (v6)
    {
      sub_186AB40(v6);
      operator delete();
    }

    v7 = *(a1 + 168);
    if (v7)
    {
      sub_138D654(v7);
      operator delete();
    }

    v8 = *(a1 + 176);
    if (v8)
    {
      sub_17C96C4(v8);
      operator delete();
    }

    v9 = *(a1 + 184);
    if (v9)
    {
      sub_13AA3B8(v9);
      operator delete();
    }

    v10 = *(a1 + 192);
    if (v10)
    {
      sub_1869B9C(v10);
      operator delete();
    }

    v11 = *(a1 + 200);
    if (v11)
    {
      sub_13987EC(v11);
      operator delete();
    }

    v12 = *(a1 + 208);
    if (v12)
    {
      sub_138F450(v12);
      operator delete();
    }

    v13 = *(a1 + 216);
    if (v13)
    {
      sub_1391CF4(v13);
      operator delete();
    }

    result = *(a1 + 224);
    if (result)
    {
      sub_186FA8C(result);

      operator delete();
    }
  }

  return result;
}

void sub_18991A8(void *a1)
{
  sub_1898F2C(a1);

  operator delete();
}

uint64_t sub_18991E0(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 56) = 0;
  *(result + 72) = 0;
  *(result + 88) = 0;
  v2 = *(result + 112);
  if (v2 >= 1)
  {
    v3 = (*(result + 120) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13AB22C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 112) = 0;
  }

  v5 = *(v1 + 16);
  if (!v5)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    v8 = *(v1 + 128) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_39;
      }
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_43:
    v10 = *(v1 + 144) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v5 & 8) != 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v5 & 8) != 0)
      {
        goto LABEL_47;
      }
    }

LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_39:
  v9 = *(v1 + 136) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v5 & 4) != 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v5 & 4) != 0)
    {
      goto LABEL_43;
    }
  }

LABEL_9:
  if ((v5 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_47:
  result = sub_1869C8C(*(v1 + 152));
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_49:
    result = sub_138D690(*(v1 + 168));
    if ((v5 & 0x40) == 0)
    {
LABEL_13:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_50;
  }

LABEL_48:
  result = sub_186AC88(*(v1 + 160));
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_49;
  }

LABEL_12:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_50:
  result = sub_17C9894(*(v1 + 176));
  if ((v5 & 0x80) != 0)
  {
LABEL_14:
    result = sub_13AA3F4(*(v1 + 184));
  }

LABEL_15:
  if ((v5 & 0x1F00) == 0)
  {
    goto LABEL_22;
  }

  if ((v5 & 0x100) != 0)
  {
    result = sub_1869C8C(*(v1 + 192));
    if ((v5 & 0x200) == 0)
    {
LABEL_18:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_35;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  result = sub_1398828(*(v1 + 200));
  if ((v5 & 0x400) == 0)
  {
LABEL_19:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = sub_138F48C(*(v1 + 208));
  if ((v5 & 0x800) == 0)
  {
LABEL_20:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_36:
  result = sub_1391D30(*(v1 + 216));
  if ((v5 & 0x1000) != 0)
  {
LABEL_21:
    result = sub_186D334(*(v1 + 224));
  }

LABEL_22:
  if ((v5 & 0xE000) != 0)
  {
    *(v1 + 240) = 0;
    *(v1 + 232) = 0;
  }

  if ((v5 & 0x3F0000) != 0)
  {
    *(v1 + 252) = 0;
    *(v1 + 244) = 0;
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

uint64_t sub_18993E4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v130 = a2;
  if (sub_195ADC0(a3, v130, a3[11].i32[1]))
  {
    v129 = 0;
    goto LABEL_3;
  }

  v129 = 0;
  v128 = (a1 + 8);
  while (2)
  {
    v6 = (*v130 + 1);
    v7 = **v130;
    if (**v130 < 0)
    {
      v8 = *v6;
      v9 = v7 + (v8 << 7);
      v7 = v9 - 128;
      if (v8 < 0)
      {
        v6 = sub_1958824(*v130, v9 - 128);
        v7 = v10;
      }

      else
      {
        v6 = (*v130 + 2);
      }
    }

    *v130 = v6;
    switch(v7 >> 3)
    {
      case 1u:
        if (v7 != 8)
        {
          goto LABEL_256;
        }

        v129 |= 0x2000u;
        v11 = (v6 + 1);
        v12 = *v6;
        if ((*v6 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v13 = *v11;
        v12 = v12 + (v13 << 7) - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v11 = (v6 + 2);
LABEL_14:
          *v130 = v11;
          *(a1 + 232) = v12;
          goto LABEL_264;
        }

        v115 = sub_1958770(v6, v12);
        *v130 = v115;
        *(a1 + 232) = v116;
        if (!v115)
        {
          goto LABEL_271;
        }

        goto LABEL_264;
      case 2u:
        if (v7 != 18)
        {
          goto LABEL_256;
        }

        *(a1 + 16) |= 1u;
        v61 = *(a1 + 8);
        v29 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
        if (v61)
        {
          v29 = *v29;
        }

        v30 = (a1 + 128);
        goto LABEL_119;
      case 3u:
        if (v7 != 26)
        {
          goto LABEL_256;
        }

        *(a1 + 16) |= 8u;
        v76 = *(a1 + 152);
        if (v76)
        {
          goto LABEL_180;
        }

        v77 = (*v128 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v128)
        {
          v77 = *v77;
        }

        v76 = sub_18FF354(v77);
        *(a1 + 152) = v76;
        goto LABEL_179;
      case 4u:
        if (v7 != 34)
        {
          goto LABEL_256;
        }

        *(a1 + 16) |= 2u;
        v57 = *(a1 + 8);
        v29 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
        if (v57)
        {
          v29 = *v29;
        }

        v30 = (a1 + 136);
        goto LABEL_119;
      case 5u:
        if (v7 != 40)
        {
          goto LABEL_256;
        }

        v129 |= 0x4000u;
        v58 = (v6 + 1);
        v59 = *v6;
        if ((*v6 & 0x80000000) == 0)
        {
          goto LABEL_114;
        }

        v60 = *v58;
        v59 = v59 + (v60 << 7) - 128;
        if (v60 < 0)
        {
          v113 = sub_1958770(v6, v59);
          *v130 = v113;
          *(a1 + 236) = v114;
          if (!v113)
          {
            goto LABEL_271;
          }
        }

        else
        {
          v58 = (v6 + 2);
LABEL_114:
          *v130 = v58;
          *(a1 + 236) = v59;
        }

        goto LABEL_264;
      case 6u:
        if (v7 != 48)
        {
          goto LABEL_256;
        }

        v129 |= 0x8000u;
        v86 = (v6 + 1);
        v87 = *v6;
        if ((*v6 & 0x80000000) == 0)
        {
          goto LABEL_173;
        }

        v88 = *v86;
        v87 = v87 + (v88 << 7) - 128;
        if (v88 < 0)
        {
          v119 = sub_1958770(v6, v87);
          *v130 = v119;
          *(a1 + 240) = v120;
          if (!v119)
          {
            goto LABEL_271;
          }
        }

        else
        {
          v86 = (v6 + 2);
LABEL_173:
          *v130 = v86;
          *(a1 + 240) = v87;
        }

        goto LABEL_264;
      case 7u:
        if (v7 != 56)
        {
          goto LABEL_256;
        }

        v53 = (v6 + 1);
        v52 = *v6;
        if ((v52 & 0x8000000000000000) == 0)
        {
          goto LABEL_97;
        }

        v54 = *v53;
        v52 = (v54 << 7) + v52 - 128;
        if (v54 < 0)
        {
          *v130 = sub_19587DC(v6, v52);
          if (!*v130)
          {
            goto LABEL_271;
          }
        }

        else
        {
          v53 = (v6 + 2);
LABEL_97:
          *v130 = v53;
        }

        if (v52 > 5)
        {
          sub_13ED178();
        }

        else
        {
          *(a1 + 16) |= 0x10000u;
          *(a1 + 244) = v52;
        }

        goto LABEL_264;
      case 8u:
        if (v7 != 66)
        {
          goto LABEL_256;
        }

        *(a1 + 16) |= 0x10u;
        v55 = *(a1 + 160);
        if (!v55)
        {
          v56 = (*v128 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v128)
          {
            v56 = *v56;
          }

          v55 = sub_18FF470(v56);
          *(a1 + 160) = v55;
          v6 = *v130;
        }

        v27 = sub_22516A4(a3, v55, v6);
        goto LABEL_263;
      case 9u:
        if (v7 != 72)
        {
          goto LABEL_256;
        }

        v129 |= 0x40000u;
        v72 = (v6 + 1);
        v71 = *v6;
        if ((v71 & 0x8000000000000000) == 0)
        {
          goto LABEL_140;
        }

        v73 = *v72;
        v71 = (v73 << 7) + v71 - 128;
        if (v73 < 0)
        {
          v117 = sub_19587DC(v6, v71);
          *v130 = v117;
          *(a1 + 252) = v118 != 0;
          if (!v117)
          {
            goto LABEL_271;
          }
        }

        else
        {
          v72 = (v6 + 2);
LABEL_140:
          *v130 = v72;
          *(a1 + 252) = v71 != 0;
        }

        goto LABEL_264;
      case 0xAu:
        if (v7 != 82)
        {
          goto LABEL_256;
        }

        *(a1 + 16) |= 0x20u;
        v69 = *(a1 + 168);
        if (!v69)
        {
          v70 = (*v128 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v128)
          {
            v70 = *v70;
          }

          v69 = sub_1392AD4(v70);
          *(a1 + 168) = v69;
          v6 = *v130;
        }

        v27 = sub_22517C4(a3, v69, v6);
        goto LABEL_263;
      case 0x15u:
        if (v7 == 168)
        {
          v90 = (v6 - 2);
          while (1)
          {
            *v130 = v90 + 2;
            v91 = *(v90 + 2);
            v92 = (v90 + 3);
            if (v91 < 0)
            {
              v93 = *v92;
              v94 = (v93 << 7) + v91;
              LODWORD(v91) = v94 - 128;
              if (v93 < 0)
              {
                *v130 = sub_19587DC(v90 + 2, (v94 - 128));
                if (!*v130)
                {
                  goto LABEL_271;
                }

                LODWORD(v91) = v97;
                goto LABEL_187;
              }

              v92 = (v90 + 4);
            }

            *v130 = v92;
LABEL_187:
            if (sub_1393048(v91))
            {
              v95 = *(a1 + 24);
              if (v95 == *(a1 + 28))
              {
                v96 = v95 + 1;
                sub_1958E5C((a1 + 24), v95 + 1);
                *(*(a1 + 32) + 4 * v95) = v91;
              }

              else
              {
                *(*(a1 + 32) + 4 * v95) = v91;
                v96 = v95 + 1;
              }

              *(a1 + 24) = v96;
            }

            else
            {
              sub_1313640();
            }

            v90 = *v130;
            if (*a3 <= *v130 || **v130 != 424)
            {
              goto LABEL_264;
            }
          }
        }

        if (v7 != 170)
        {
          goto LABEL_256;
        }

        *&v131 = a1 + 24;
        *(&v131 + 1) = sub_1393048;
        v132 = a1 + 8;
        v125 = 21;
        goto LABEL_255;
      case 0x16u:
        if (v7 != 178)
        {
          goto LABEL_256;
        }

        *(a1 + 16) |= 0x40u;
        v39 = *(a1 + 176);
        if (!v39)
        {
          v40 = (*v128 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v128)
          {
            v40 = *v40;
          }

          sub_185FEC4(v40);
          v39 = v41;
          *(a1 + 176) = v41;
          v6 = *v130;
        }

        v27 = sub_224A4B8(a3, v39, v6);
        goto LABEL_263;
      case 0x17u:
        if (v7 == 184)
        {
          v31 = (v6 - 2);
          while (1)
          {
            *v130 = v31 + 2;
            v32 = *(v31 + 2);
            v33 = (v31 + 3);
            if (v32 < 0)
            {
              v34 = *v33;
              v35 = (v34 << 7) + v32;
              LODWORD(v32) = v35 - 128;
              if (v34 < 0)
              {
                *v130 = sub_19587DC(v31 + 2, (v35 - 128));
                if (!*v130)
                {
                  goto LABEL_271;
                }

                LODWORD(v32) = v38;
                goto LABEL_53;
              }

              v33 = (v31 + 4);
            }

            *v130 = v33;
LABEL_53:
            if (sub_1384150(v32))
            {
              v36 = *(a1 + 40);
              if (v36 == *(a1 + 44))
              {
                v37 = v36 + 1;
                sub_1958E5C((a1 + 40), v36 + 1);
                *(*(a1 + 48) + 4 * v36) = v32;
              }

              else
              {
                *(*(a1 + 48) + 4 * v36) = v32;
                v37 = v36 + 1;
              }

              *(a1 + 40) = v37;
            }

            else
            {
              sub_15B6A8C();
            }

            v31 = *v130;
            if (*a3 <= *v130 || **v130 != 440)
            {
              goto LABEL_264;
            }
          }
        }

        if (v7 != 186)
        {
          goto LABEL_256;
        }

        *&v131 = a1 + 40;
        *(&v131 + 1) = sub_1384150;
        v132 = a1 + 8;
        v125 = 23;
        goto LABEL_255;
      case 0x18u:
        if (v7 != 192)
        {
          goto LABEL_256;
        }

        v129 |= 0x20000u;
        v101 = (v6 + 1);
        v102 = *v6;
        if ((*v6 & 0x80000000) == 0)
        {
          goto LABEL_209;
        }

        v103 = *v101;
        v102 = v102 + (v103 << 7) - 128;
        if (v103 < 0)
        {
          v121 = sub_1958770(v6, v102);
          *v130 = v121;
          *(a1 + 248) = v122;
          if (!v121)
          {
            goto LABEL_271;
          }
        }

        else
        {
          v101 = (v6 + 2);
LABEL_209:
          *v130 = v101;
          *(a1 + 248) = v102;
        }

        goto LABEL_264;
      case 0x19u:
        if (v7 != 202)
        {
          goto LABEL_256;
        }

        *(a1 + 16) |= 0x80u;
        v74 = *(a1 + 184);
        if (!v74)
        {
          v75 = (*v128 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v128)
          {
            v75 = *v75;
          }

          v74 = sub_13AF694(v75);
          *(a1 + 184) = v74;
          v6 = *v130;
        }

        v27 = sub_222D0B4(a3, v74, v6);
        goto LABEL_263;
      case 0x1Au:
        if (v7 == 208)
        {
          v78 = (v6 - 2);
          while (1)
          {
            *v130 = v78 + 2;
            v79 = *(v78 + 2);
            v80 = (v78 + 3);
            if (v79 < 0)
            {
              v81 = *v80;
              v82 = (v81 << 7) + v79;
              LODWORD(v79) = v82 - 128;
              if (v81 < 0)
              {
                *v130 = sub_19587DC(v78 + 2, (v82 - 128));
                if (!*v130)
                {
                  goto LABEL_271;
                }

                LODWORD(v79) = v85;
                goto LABEL_158;
              }

              v80 = (v78 + 4);
            }

            *v130 = v80;
LABEL_158:
            if (sub_1393078(v79))
            {
              v83 = *(a1 + 56);
              if (v83 == *(a1 + 60))
              {
                v84 = v83 + 1;
                sub_1958E5C((a1 + 56), v83 + 1);
                *(*(a1 + 64) + 4 * v83) = v79;
              }

              else
              {
                *(*(a1 + 64) + 4 * v83) = v79;
                v84 = v83 + 1;
              }

              *(a1 + 56) = v84;
            }

            else
            {
              sub_1948214();
            }

            v78 = *v130;
            if (*a3 <= *v130 || **v130 != 464)
            {
              goto LABEL_264;
            }
          }
        }

        if (v7 != 210)
        {
          goto LABEL_256;
        }

        *&v131 = a1 + 56;
        *(&v131 + 1) = sub_1393078;
        v132 = a1 + 8;
        v125 = 26;
        goto LABEL_255;
      case 0x1Bu:
        if (v7 != 216)
        {
          goto LABEL_256;
        }

        v99 = (v6 + 1);
        v98 = *v6;
        if ((v98 & 0x8000000000000000) == 0)
        {
          goto LABEL_202;
        }

        v100 = *v99;
        v98 = (v100 << 7) + v98 - 128;
        if (v100 < 0)
        {
          *v130 = sub_19587DC(v6, v98);
          if (!*v130)
          {
            goto LABEL_271;
          }
        }

        else
        {
          v99 = (v6 + 2);
LABEL_202:
          *v130 = v99;
        }

        if (v98 > 0x24)
        {
          sub_16C0288();
        }

        else
        {
          *(a1 + 16) |= 0x200000u;
          *(a1 + 256) = v98;
        }

        goto LABEL_264;
      case 0x1Cu:
        if (v7 != 226)
        {
          goto LABEL_256;
        }

        *(a1 + 16) |= 0x100u;
        v76 = *(a1 + 192);
        if (v76)
        {
          goto LABEL_180;
        }

        v89 = (*v128 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v128)
        {
          v89 = *v89;
        }

        v76 = sub_18FF354(v89);
        *(a1 + 192) = v76;
LABEL_179:
        v6 = *v130;
LABEL_180:
        v27 = sub_2201670(a3, v76, v6);
        goto LABEL_263;
      case 0x1Du:
        if (v7 == 232)
        {
          v14 = (v6 - 2);
          while (1)
          {
            *v130 = v14 + 2;
            v15 = *(v14 + 2);
            v16 = (v14 + 3);
            if (v15 < 0)
            {
              v17 = *v16;
              v18 = (v17 << 7) + v15;
              LODWORD(v15) = v18 - 128;
              if (v17 < 0)
              {
                *v130 = sub_19587DC(v14 + 2, (v18 - 128));
                if (!*v130)
                {
                  goto LABEL_271;
                }

                LODWORD(v15) = v21;
                goto LABEL_21;
              }

              v16 = (v14 + 4);
            }

            *v130 = v16;
LABEL_21:
            if (v15 > 4)
            {
              sub_144E084();
            }

            else
            {
              v19 = *(a1 + 72);
              if (v19 == *(a1 + 76))
              {
                v20 = v19 + 1;
                sub_1958E5C((a1 + 72), v19 + 1);
                *(*(a1 + 80) + 4 * v19) = v15;
              }

              else
              {
                *(*(a1 + 80) + 4 * v19) = v15;
                v20 = v19 + 1;
              }

              *(a1 + 72) = v20;
            }

            v14 = *v130;
            if (*a3 <= *v130 || **v130 != 488)
            {
              goto LABEL_264;
            }
          }
        }

        if (v7 != 234)
        {
          goto LABEL_256;
        }

        *&v131 = a1 + 72;
        *(&v131 + 1) = sub_186D42C;
        v132 = a1 + 8;
        v125 = 29;
        goto LABEL_255;
      case 0x1Eu:
        if (v7 == 240)
        {
          v44 = (v6 - 2);
          while (1)
          {
            *v130 = v44 + 2;
            v45 = *(v44 + 2);
            v46 = (v44 + 3);
            if (v45 < 0)
            {
              v47 = *v46;
              v48 = (v47 << 7) + v45;
              LODWORD(v45) = v48 - 128;
              if (v47 < 0)
              {
                *v130 = sub_19587DC(v44 + 2, (v48 - 128));
                if (!*v130)
                {
                  goto LABEL_271;
                }

                LODWORD(v45) = v51;
                goto LABEL_82;
              }

              v46 = (v44 + 4);
            }

            *v130 = v46;
LABEL_82:
            if (sub_139306C(v45))
            {
              v49 = *(a1 + 88);
              if (v49 == *(a1 + 92))
              {
                v50 = v49 + 1;
                sub_1958E5C((a1 + 88), v49 + 1);
                *(*(a1 + 96) + 4 * v49) = v45;
              }

              else
              {
                *(*(a1 + 96) + 4 * v49) = v45;
                v50 = v49 + 1;
              }

              *(a1 + 88) = v50;
            }

            else
            {
              sub_156E818();
            }

            v44 = *v130;
            if (*a3 <= *v130 || **v130 != 496)
            {
              goto LABEL_264;
            }
          }
        }

        if (v7 == 242)
        {
          *&v131 = a1 + 88;
          *(&v131 + 1) = sub_139306C;
          v132 = a1 + 8;
          v125 = 30;
LABEL_255:
          v133 = v125;
          v27 = sub_1216588(a3, v6, &v131);
LABEL_263:
          *v130 = v27;
          if (!v27)
          {
            goto LABEL_271;
          }

LABEL_264:
          if (sub_195ADC0(a3, v130, a3[11].i32[1]))
          {
            goto LABEL_3;
          }

          continue;
        }

LABEL_256:
        if (v7)
        {
          v126 = (v7 & 7) == 4;
        }

        else
        {
          v126 = 1;
        }

        if (!v126)
        {
          if (*v128)
          {
            v127 = (*v128 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v127 = sub_11F1920(v128);
            v6 = *v130;
          }

          v27 = sub_1952690(v7, v127, v6, a3);
          goto LABEL_263;
        }

        if (v6)
        {
          a3[10].i32[0] = v7 - 1;
        }

        else
        {
LABEL_271:
          *v130 = 0;
        }

LABEL_3:
        *(a1 + 16) |= v129;
        return *v130;
      case 0x1Fu:
        if (v7 != 248)
        {
          goto LABEL_256;
        }

        v129 |= 0x80000u;
        v105 = (v6 + 1);
        v104 = *v6;
        if ((v104 & 0x8000000000000000) == 0)
        {
          goto LABEL_214;
        }

        v106 = *v105;
        v104 = (v106 << 7) + v104 - 128;
        if (v106 < 0)
        {
          v123 = sub_19587DC(v6, v104);
          *v130 = v123;
          *(a1 + 253) = v124 != 0;
          if (!v123)
          {
            goto LABEL_271;
          }
        }

        else
        {
          v105 = (v6 + 2);
LABEL_214:
          *v130 = v105;
          *(a1 + 253) = v104 != 0;
        }

        goto LABEL_264;
      case 0x20u:
        if (v7)
        {
          goto LABEL_256;
        }

        v129 |= 0x100000u;
        v23 = (v6 + 1);
        v22 = *v6;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if (v24 < 0)
        {
          v111 = sub_19587DC(v6, v22);
          *v130 = v111;
          *(a1 + 254) = v112 != 0;
          if (!v111)
          {
            goto LABEL_271;
          }
        }

        else
        {
          v23 = (v6 + 2);
LABEL_36:
          *v130 = v23;
          *(a1 + 254) = v22 != 0;
        }

        goto LABEL_264;
      case 0x21u:
        if (v7 != 10)
        {
          goto LABEL_256;
        }

        *(a1 + 16) |= 0x200u;
        v42 = *(a1 + 200);
        if (!v42)
        {
          v43 = (*v128 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v128)
          {
            v43 = *v43;
          }

          v42 = sub_13AE7C0(v43);
          *(a1 + 200) = v42;
          v6 = *v130;
        }

        v27 = sub_222D024(a3, v42, v6);
        goto LABEL_263;
      case 0x22u:
        if (v7 != 18)
        {
          goto LABEL_256;
        }

        *(a1 + 16) |= 4u;
        v28 = *(a1 + 8);
        v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (v28)
        {
          v29 = *v29;
        }

        v30 = (a1 + 144);
LABEL_119:
        v62 = sub_194DB04(v30, v29);
        v27 = sub_1958890(v62, *v130, a3);
        goto LABEL_263;
      case 0x23u:
        if (v7 != 26)
        {
          goto LABEL_256;
        }

        v63 = (v6 - 2);
        while (1)
        {
          v64 = (v63 + 2);
          *v130 = v63 + 2;
          v65 = *(a1 + 120);
          if (v65 && (v66 = *(a1 + 112), v66 < *v65))
          {
            *(a1 + 112) = v66 + 1;
            v67 = *&v65[2 * v66 + 2];
          }

          else
          {
            v68 = sub_13AF7C0(*(a1 + 104));
            v67 = sub_19593CC(a1 + 104, v68);
            v64 = *v130;
          }

          v63 = sub_2251854(a3, v67, v64);
          *v130 = v63;
          if (!v63)
          {
            goto LABEL_271;
          }

          if (*a3 <= v63 || *v63 != 666)
          {
            goto LABEL_264;
          }
        }

      case 0x24u:
        if (v7 != 34)
        {
          goto LABEL_256;
        }

        *(a1 + 16) |= 0x400u;
        v25 = *(a1 + 208);
        if (!v25)
        {
          v26 = (*v128 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v128)
          {
            v26 = *v26;
          }

          v25 = sub_1392CF8(v26);
          *(a1 + 208) = v25;
          v6 = *v130;
        }

        v27 = sub_2235484(a3, v25, v6);
        goto LABEL_263;
      case 0x25u:
        if (v7 != 42)
        {
          goto LABEL_256;
        }

        *(a1 + 16) |= 0x800u;
        v109 = *(a1 + 216);
        if (!v109)
        {
          v110 = (*v128 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v128)
          {
            v110 = *v110;
          }

          v109 = sub_1392F84(v110);
          *(a1 + 216) = v109;
          v6 = *v130;
        }

        v27 = sub_2251974(a3, v109, v6);
        goto LABEL_263;
      case 0x26u:
        if (v7 != 50)
        {
          goto LABEL_256;
        }

        *(a1 + 16) |= 0x1000u;
        v107 = *(a1 + 224);
        if (!v107)
        {
          v108 = (*v128 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v128)
          {
            v108 = *v108;
          }

          v107 = sub_18FF5D8(v108);
          *(a1 + 224) = v107;
          v6 = *v130;
        }

        v27 = sub_2251A04(a3, v107, v6);
        goto LABEL_263;
      default:
        goto LABEL_256;
    }
  }
}

char *sub_189A35C(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 232);
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
    v6 = sub_128AEEC(a3, 2, *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL, v6);
    if ((v5 & 8) == 0)
    {
LABEL_12:
      if ((v5 & 2) == 0)
      {
        goto LABEL_13;
      }

LABEL_22:
      v6 = sub_128AEEC(a3, 4, *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL, v6);
      if ((v5 & 0x4000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_12;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v12 = *(a1 + 152);
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
  if ((v5 & 2) != 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  if ((v5 & 0x4000) == 0)
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

  v15 = *(a1 + 236);
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
  if ((v5 & 0x8000) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v20 = *(a1 + 240);
    *v11 = 48;
    v11[1] = v20;
    if (v20 > 0x7F)
    {
      v11[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v11[2] = v20 >> 7;
      v19 = v11 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v11[2];
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
      v19 = v11 + 2;
    }
  }

  else
  {
    v19 = v11;
  }

  if ((v5 & 0x10000) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 244);
    *v19 = 56;
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v28 = *(a1 + 160);
    *v24 = 66;
    v29 = *(v28 + 20);
    v24[1] = v29;
    if (v29 > 0x7F)
    {
      v30 = sub_19575D0(v29, v24 + 1);
    }

    else
    {
      v30 = v24 + 2;
    }

    v24 = sub_186B234(v28, v30, a3);
    if ((v5 & 0x40000) == 0)
    {
LABEL_50:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_61;
    }
  }

  else if ((v5 & 0x40000) == 0)
  {
    goto LABEL_50;
  }

  if (*a3 <= v24)
  {
    v24 = sub_225EB68(a3, v24);
  }

  v31 = *(a1 + 252);
  *v24 = 72;
  v24[1] = v31;
  v24 += 2;
  if ((v5 & 0x20) != 0)
  {
LABEL_61:
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v32 = *(a1 + 168);
    *v24 = 82;
    v33 = *(v32 + 80);
    v24[1] = v33;
    if (v33 > 0x7F)
    {
      v34 = sub_19575D0(v33, v24 + 1);
    }

    else
    {
      v34 = v24 + 2;
    }

    v24 = sub_138DA8C(v32, v34, a3);
  }

LABEL_67:
  v35 = *(a1 + 24);
  if (v35 < 1)
  {
    v38 = v24;
  }

  else
  {
    for (i = 0; i != v35; ++i)
    {
      if (*a3 <= v24)
      {
        v24 = sub_225EB68(a3, v24);
      }

      v37 = *(*(a1 + 32) + 4 * i);
      *v24 = 424;
      v24[2] = v37;
      if (v37 > 0x7F)
      {
        v24[2] = v37 | 0x80;
        v39 = v37 >> 7;
        v24[3] = v37 >> 7;
        v38 = v24 + 4;
        if (v37 >= 0x4000)
        {
          LOBYTE(v24) = v24[3];
          do
          {
            *(v38 - 1) = v24 | 0x80;
            v24 = (v39 >> 7);
            *v38++ = v39 >> 7;
            v40 = v39 >> 14;
            v39 >>= 7;
          }

          while (v40);
        }
      }

      else
      {
        v38 = v24 + 3;
      }

      v24 = v38;
    }
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v38)
    {
      v38 = sub_225EB68(a3, v38);
    }

    v41 = *(a1 + 176);
    *v38 = 434;
    v42 = *(v41 + 20);
    v38[2] = v42;
    if (v42 > 0x7F)
    {
      v43 = sub_19575D0(v42, v38 + 2);
    }

    else
    {
      v43 = v38 + 3;
    }

    v38 = sub_17C9F44(v41, v43, a3);
  }

  v44 = *(a1 + 40);
  if (v44 < 1)
  {
    v47 = v38;
  }

  else
  {
    for (j = 0; j != v44; ++j)
    {
      if (*a3 <= v38)
      {
        v38 = sub_225EB68(a3, v38);
      }

      v46 = *(*(a1 + 48) + 4 * j);
      *v38 = 440;
      v38[2] = v46;
      if (v46 > 0x7F)
      {
        v38[2] = v46 | 0x80;
        v48 = v46 >> 7;
        v38[3] = v46 >> 7;
        v47 = v38 + 4;
        if (v46 >= 0x4000)
        {
          LOBYTE(v38) = v38[3];
          do
          {
            *(v47 - 1) = v38 | 0x80;
            v38 = (v48 >> 7);
            *v47++ = v48 >> 7;
            v49 = v48 >> 14;
            v48 >>= 7;
          }

          while (v49);
        }
      }

      else
      {
        v47 = v38 + 3;
      }

      v38 = v47;
    }
  }

  if ((v5 & 0x20000) != 0)
  {
    if (*a3 <= v47)
    {
      v47 = sub_225EB68(a3, v47);
    }

    v51 = *(a1 + 248);
    *v47 = 448;
    v47[2] = v51;
    if (v51 > 0x7F)
    {
      v47[2] = v51 | 0x80;
      v52 = v51 >> 7;
      v47[3] = v51 >> 7;
      v50 = v47 + 4;
      if (v51 >= 0x4000)
      {
        LOBYTE(v47) = v47[3];
        do
        {
          *(v50 - 1) = v47 | 0x80;
          LODWORD(v47) = v52 >> 7;
          *v50++ = v52 >> 7;
          v53 = v52 >> 14;
          v52 >>= 7;
        }

        while (v53);
      }
    }

    else
    {
      v50 = v47 + 3;
    }
  }

  else
  {
    v50 = v47;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v50)
    {
      v50 = sub_225EB68(a3, v50);
    }

    v54 = *(a1 + 184);
    *v50 = 458;
    v55 = *(v54 + 20);
    v50[2] = v55;
    if (v55 > 0x7F)
    {
      v56 = sub_19575D0(v55, v50 + 2);
    }

    else
    {
      v56 = v50 + 3;
    }

    v50 = sub_13AA7AC(v54, v56, a3);
  }

  v57 = *(a1 + 56);
  if (v57 < 1)
  {
    v60 = v50;
  }

  else
  {
    for (k = 0; k != v57; ++k)
    {
      if (*a3 <= v50)
      {
        v50 = sub_225EB68(a3, v50);
      }

      v59 = *(*(a1 + 64) + 4 * k);
      *v50 = 464;
      v50[2] = v59;
      if (v59 > 0x7F)
      {
        v50[2] = v59 | 0x80;
        v61 = v59 >> 7;
        v50[3] = v59 >> 7;
        v60 = v50 + 4;
        if (v59 >= 0x4000)
        {
          LOBYTE(v50) = v50[3];
          do
          {
            *(v60 - 1) = v50 | 0x80;
            v50 = (v61 >> 7);
            *v60++ = v61 >> 7;
            v62 = v61 >> 14;
            v61 >>= 7;
          }

          while (v62);
        }
      }

      else
      {
        v60 = v50 + 3;
      }

      v50 = v60;
    }
  }

  if ((v5 & 0x200000) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v64 = *(a1 + 256);
    *v60 = 472;
    v60[2] = v64;
    if (v64 > 0x7F)
    {
      v60[2] = v64 | 0x80;
      v65 = v64 >> 7;
      v60[3] = v64 >> 7;
      v63 = v60 + 4;
      if (v64 >= 0x4000)
      {
        LOBYTE(v60) = v60[3];
        do
        {
          *(v63 - 1) = v60 | 0x80;
          v60 = (v65 >> 7);
          *v63++ = v65 >> 7;
          v66 = v65 >> 14;
          v65 >>= 7;
        }

        while (v66);
      }
    }

    else
    {
      v63 = v60 + 3;
    }
  }

  else
  {
    v63 = v60;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v63)
    {
      v63 = sub_225EB68(a3, v63);
    }

    v67 = *(a1 + 192);
    *v63 = 482;
    v68 = *(v67 + 20);
    v63[2] = v68;
    if (v68 > 0x7F)
    {
      v69 = sub_19575D0(v68, v63 + 2);
    }

    else
    {
      v69 = v63 + 3;
    }

    v63 = sub_1869F58(v67, v69, a3);
  }

  v70 = *(a1 + 72);
  if (v70 < 1)
  {
    v73 = v63;
  }

  else
  {
    for (m = 0; m != v70; ++m)
    {
      if (*a3 <= v63)
      {
        v63 = sub_225EB68(a3, v63);
      }

      v72 = *(*(a1 + 80) + 4 * m);
      *v63 = 488;
      v63[2] = v72;
      if (v72 > 0x7F)
      {
        v63[2] = v72 | 0x80;
        v74 = v72 >> 7;
        v63[3] = v72 >> 7;
        v73 = v63 + 4;
        if (v72 >= 0x4000)
        {
          LOBYTE(v63) = v63[3];
          do
          {
            *(v73 - 1) = v63 | 0x80;
            v63 = (v74 >> 7);
            *v73++ = v74 >> 7;
            v75 = v74 >> 14;
            v74 >>= 7;
          }

          while (v75);
        }
      }

      else
      {
        v73 = v63 + 3;
      }

      v63 = v73;
    }
  }

  v76 = *(a1 + 88);
  if (v76 < 1)
  {
    v79 = v73;
  }

  else
  {
    for (n = 0; n != v76; ++n)
    {
      if (*a3 <= v73)
      {
        v73 = sub_225EB68(a3, v73);
      }

      v78 = *(*(a1 + 96) + 4 * n);
      *v73 = 496;
      v73[2] = v78;
      if (v78 > 0x7F)
      {
        v73[2] = v78 | 0x80;
        v80 = v78 >> 7;
        v73[3] = v78 >> 7;
        v79 = v73 + 4;
        if (v78 >= 0x4000)
        {
          LOBYTE(v73) = v73[3];
          do
          {
            *(v79 - 1) = v73 | 0x80;
            v73 = (v80 >> 7);
            *v79++ = v80 >> 7;
            v81 = v80 >> 14;
            v80 >>= 7;
          }

          while (v81);
        }
      }

      else
      {
        v79 = v73 + 3;
      }

      v73 = v79;
    }
  }

  if ((v5 & 0x80000) != 0)
  {
    if (*a3 <= v79)
    {
      v79 = sub_225EB68(a3, v79);
    }

    v87 = *(a1 + 253);
    *v79 = 504;
    v79[2] = v87;
    v79 += 3;
    if ((v5 & 0x100000) == 0)
    {
LABEL_168:
      if ((v5 & 0x200) == 0)
      {
        goto LABEL_169;
      }

      goto LABEL_189;
    }
  }

  else if ((v5 & 0x100000) == 0)
  {
    goto LABEL_168;
  }

  if (*a3 <= v79)
  {
    v79 = sub_225EB68(a3, v79);
  }

  v88 = *(a1 + 254);
  *v79 = 640;
  v79[2] = v88;
  v79 += 3;
  if ((v5 & 0x200) == 0)
  {
LABEL_169:
    if ((v5 & 4) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_170;
  }

LABEL_189:
  if (*a3 <= v79)
  {
    v79 = sub_225EB68(a3, v79);
  }

  v89 = *(a1 + 200);
  *v79 = 650;
  v90 = *(v89 + 20);
  v79[2] = v90;
  if (v90 > 0x7F)
  {
    v91 = sub_19575D0(v90, v79 + 2);
  }

  else
  {
    v91 = v79 + 3;
  }

  v79 = sub_1398C24(v89, v91, a3);
  if ((v5 & 4) != 0)
  {
LABEL_170:
    v79 = sub_128AEEC(a3, 34, *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL, v79);
  }

LABEL_171:
  v82 = *(a1 + 112);
  if (v82)
  {
    for (ii = 0; ii != v82; ++ii)
    {
      if (*a3 <= v79)
      {
        v79 = sub_225EB68(a3, v79);
      }

      v84 = *(*(a1 + 120) + 8 * ii + 8);
      *v79 = 666;
      v85 = *(v84 + 20);
      v79[2] = v85;
      if (v85 > 0x7F)
      {
        v86 = sub_19575D0(v85, v79 + 2);
      }

      else
      {
        v86 = v79 + 3;
      }

      v79 = sub_13AB3AC(v84, v86, a3);
    }
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v79)
    {
      v79 = sub_225EB68(a3, v79);
    }

    v92 = *(a1 + 208);
    *v79 = 674;
    v93 = *(v92 + 40);
    v79[2] = v93;
    if (v93 > 0x7F)
    {
      v94 = sub_19575D0(v93, v79 + 2);
    }

    else
    {
      v94 = v79 + 3;
    }

    v79 = sub_138F614(v92, v94, a3);
    if ((v5 & 0x800) == 0)
    {
LABEL_181:
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_214;
      }

      goto LABEL_208;
    }
  }

  else if ((v5 & 0x800) == 0)
  {
    goto LABEL_181;
  }

  if (*a3 <= v79)
  {
    v79 = sub_225EB68(a3, v79);
  }

  v95 = *(a1 + 216);
  *v79 = 682;
  v96 = *(v95 + 40);
  v79[2] = v96;
  if (v96 > 0x7F)
  {
    v97 = sub_19575D0(v96, v79 + 2);
  }

  else
  {
    v97 = v79 + 3;
  }

  v79 = sub_1391F3C(v95, v97, a3);
  if ((v5 & 0x1000) != 0)
  {
LABEL_208:
    if (*a3 <= v79)
    {
      v79 = sub_225EB68(a3, v79);
    }

    v98 = *(a1 + 224);
    *v79 = 690;
    v99 = *(v98 + 20);
    v79[2] = v99;
    if (v99 > 0x7F)
    {
      v100 = sub_19575D0(v99, v79 + 2);
    }

    else
    {
      v100 = v79 + 3;
    }

    v79 = sub_186FDA4(v98, v100, a3);
  }

LABEL_214:
  v101 = *(a1 + 8);
  if ((v101 & 1) == 0)
  {
    return v79;
  }

  v103 = v101 & 0xFFFFFFFFFFFFFFFCLL;
  v104 = *(v103 + 31);
  if (v104 < 0)
  {
    v105 = *(v103 + 8);
    v104 = *(v103 + 16);
  }

  else
  {
    v105 = (v103 + 8);
  }

  if ((*a3 - v79) >= v104)
  {
    v106 = v104;
    memcpy(v79, v105, v104);
    v79 += v106;
    return v79;
  }

  return sub_1957130(a3, v105, v104, v79);
}

uint64_t sub_189B028(uint64_t a1)
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

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(*(a1 + 48) + 4 * v9);
      if (v10 < 0)
      {
        v11 = 10;
      }

      else
      {
        v11 = (9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6;
      }

      v8 += v11;
      ++v9;
    }

    while (v7 != v9);
  }

  else
  {
    v8 = 0;
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(*(a1 + 64) + 4 * v13);
      if (v15 < 0)
      {
        v16 = 10;
      }

      else
      {
        v16 = (9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6;
      }

      v14 += v16;
      ++v13;
    }

    while (v12 != v13);
  }

  else
  {
    v14 = 0;
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *(*(a1 + 80) + 4 * v18);
      if (v20 < 0)
      {
        v21 = 10;
      }

      else
      {
        v21 = (9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6;
      }

      v19 += v21;
      ++v18;
    }

    while (v17 != v18);
  }

  else
  {
    v19 = 0;
  }

  v22 = *(a1 + 88);
  if (v22)
  {
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = *(*(a1 + 96) + 4 * v23);
      if (v25 < 0)
      {
        v26 = 10;
      }

      else
      {
        v26 = (9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6;
      }

      v24 += v26;
      ++v23;
    }

    while (v22 != v23);
  }

  else
  {
    v24 = 0;
  }

  v27 = *(a1 + 112);
  v28 = v8 + v3 + v14 + v19 + v24 + 2 * (v7 + v2 + v12 + v17 + v22 + v27);
  v29 = *(a1 + 120);
  if (v29)
  {
    v30 = (v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  if (v27)
  {
    v31 = 8 * v27;
    do
    {
      v32 = *v30++;
      v33 = sub_13AB4D4(v32);
      v28 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6);
      v31 -= 8;
    }

    while (v31);
  }

  v34 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    goto LABEL_57;
  }

  if (v34)
  {
    v45 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
    v46 = *(v45 + 23);
    v47 = *(v45 + 8);
    if ((v46 & 0x80u) == 0)
    {
      v47 = v46;
    }

    v28 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v34 & 2) == 0)
    {
LABEL_50:
      if ((v34 & 4) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_93;
    }
  }

  else if ((v34 & 2) == 0)
  {
    goto LABEL_50;
  }

  v48 = *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL;
  v49 = *(v48 + 23);
  v50 = *(v48 + 8);
  if ((v49 & 0x80u) == 0)
  {
    v50 = v49;
  }

  v28 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v34 & 4) == 0)
  {
LABEL_51:
    if ((v34 & 8) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_96;
  }

LABEL_93:
  v51 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
  v52 = *(v51 + 23);
  v53 = *(v51 + 8);
  if ((v52 & 0x80u) == 0)
  {
    v53 = v52;
  }

  v28 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v34 & 8) == 0)
  {
LABEL_52:
    if ((v34 & 0x10) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_97;
  }

LABEL_96:
  v54 = sub_186A16C(*(a1 + 152));
  v28 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v34 & 0x10) == 0)
  {
LABEL_53:
    if ((v34 & 0x20) == 0)
    {
      goto LABEL_54;
    }

LABEL_98:
    v56 = sub_138DD08(*(a1 + 168));
    v28 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v34 & 0x40) == 0)
    {
LABEL_55:
      if ((v34 & 0x80) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    goto LABEL_99;
  }

LABEL_97:
  v55 = sub_186B468(*(a1 + 160));
  v28 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v34 & 0x20) != 0)
  {
    goto LABEL_98;
  }

LABEL_54:
  if ((v34 & 0x40) == 0)
  {
    goto LABEL_55;
  }

LABEL_99:
  v57 = sub_17CA3BC(*(a1 + 176));
  v28 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v34 & 0x80) != 0)
  {
LABEL_56:
    v35 = sub_13AAA60(*(a1 + 184));
    v28 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_57:
  if ((v34 & 0xFF00) == 0)
  {
    goto LABEL_67;
  }

  if ((v34 & 0x100) != 0)
  {
    v58 = sub_186A16C(*(a1 + 192));
    v28 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v34 & 0x200) == 0)
    {
LABEL_60:
      if ((v34 & 0x400) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_103;
    }
  }

  else if ((v34 & 0x200) == 0)
  {
    goto LABEL_60;
  }

  v59 = sub_1398EEC(*(a1 + 200));
  v28 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v34 & 0x400) == 0)
  {
LABEL_61:
    if ((v34 & 0x800) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_104;
  }

LABEL_103:
  v60 = sub_138F6DC(*(a1 + 208));
  v28 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v34 & 0x800) == 0)
  {
LABEL_62:
    if ((v34 & 0x1000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_105;
  }

LABEL_104:
  v61 = sub_139207C(*(a1 + 216));
  v28 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v34 & 0x1000) == 0)
  {
LABEL_63:
    if ((v34 & 0x2000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_106;
  }

LABEL_105:
  v62 = sub_186FF30(*(a1 + 224));
  v28 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v34 & 0x2000) == 0)
  {
LABEL_64:
    if ((v34 & 0x4000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_107;
  }

LABEL_106:
  v28 += ((9 * (__clz(*(a1 + 232) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v34 & 0x4000) == 0)
  {
LABEL_65:
    if ((v34 & 0x8000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

LABEL_107:
  v28 += ((9 * (__clz(*(a1 + 236) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v34 & 0x8000) != 0)
  {
LABEL_66:
    v28 += ((9 * (__clz(*(a1 + 240) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_67:
  if ((v34 & 0x3F0000) != 0)
  {
    if ((v34 & 0x10000) != 0)
    {
      v36 = *(a1 + 244);
      v37 = ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v36 >= 0)
      {
        v38 = v37;
      }

      else
      {
        v38 = 11;
      }

      v28 += v38;
    }

    if ((v34 & 0x20000) != 0)
    {
      v28 += ((9 * (__clz(*(a1 + 248) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v39 = v28 + ((v34 >> 17) & 2);
    if ((v34 & 0x80000) != 0)
    {
      v39 += 3;
    }

    if ((v34 & 0x100000) != 0)
    {
      v28 = v39 + 3;
    }

    else
    {
      v28 = v39;
    }

    if ((v34 & 0x200000) != 0)
    {
      v40 = *(a1 + 256);
      v41 = ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v40 >= 0)
      {
        v42 = v41;
      }

      else
      {
        v42 = 12;
      }

      v28 += v42;
    }
  }

  v43 = *(a1 + 8);
  if (v43)
  {
    v63 = v43 & 0xFFFFFFFFFFFFFFFCLL;
    v64 = *((v43 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v64 < 0)
    {
      v64 = *(v63 + 16);
    }

    v28 += v64;
  }

  *(a1 + 20) = v28;
  return v28;
}

void sub_189B6C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (a1 + 24);
    v6 = *(a1 + 24);
    sub_1958E5C((a1 + 24), v6 + v4);
    v7 = *(a1 + 32);
    *v5 += *(a2 + 24);
    memcpy((v7 + 4 * v6), *(a2 + 32), 4 * *(a2 + 24));
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = *(a1 + 40);
    sub_1958E5C((a1 + 40), v9 + v8);
    v10 = *(a1 + 48);
    *(a1 + 40) += *(a2 + 40);
    memcpy((v10 + 4 * v9), *(a2 + 48), 4 * *(a2 + 40));
  }

  v11 = *(a2 + 56);
  if (v11)
  {
    v12 = *(a1 + 56);
    sub_1958E5C((a1 + 56), v12 + v11);
    v13 = *(a1 + 64);
    *(a1 + 56) += *(a2 + 56);
    memcpy((v13 + 4 * v12), *(a2 + 64), 4 * *(a2 + 56));
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = *(a1 + 72);
    sub_1958E5C((a1 + 72), v15 + v14);
    v16 = *(a1 + 80);
    *(a1 + 72) += *(a2 + 72);
    memcpy((v16 + 4 * v15), *(a2 + 80), 4 * *(a2 + 72));
  }

  v17 = *(a2 + 88);
  if (v17)
  {
    v18 = *(a1 + 88);
    sub_1958E5C((a1 + 88), v18 + v17);
    v19 = *(a1 + 96);
    *(a1 + 88) += *(a2 + 88);
    memcpy((v19 + 4 * v18), *(a2 + 96), 4 * *(a2 + 88));
  }

  v20 = *(a2 + 112);
  if (v20)
  {
    v21 = *(a2 + 120);
    v22 = sub_19592E8(a1 + 104, *(a2 + 112));
    sub_194449C((a1 + 104), v22, (v21 + 8), v20, **(a1 + 120) - *(a1 + 112));
    v23 = *(a1 + 112) + v20;
    *(a1 + 112) = v23;
    v24 = *(a1 + 120);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 16);
  if (!v25)
  {
    goto LABEL_73;
  }

  if (v25)
  {
    v26 = *(a2 + 128);
    *(a1 + 16) |= 1u;
    v27 = *(a1 + 8);
    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v28 = *v28;
    }

    sub_194EA1C((a1 + 128), (v26 & 0xFFFFFFFFFFFFFFFELL), v28);
    if ((v25 & 2) == 0)
    {
LABEL_17:
      if ((v25 & 4) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_30;
    }
  }

  else if ((v25 & 2) == 0)
  {
    goto LABEL_17;
  }

  v29 = *(a2 + 136);
  *(a1 + 16) |= 2u;
  v30 = *(a1 + 8);
  v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
  if (v30)
  {
    v31 = *v31;
  }

  sub_194EA1C((a1 + 136), (v29 & 0xFFFFFFFFFFFFFFFELL), v31);
  if ((v25 & 4) == 0)
  {
LABEL_18:
    if ((v25 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_30:
  v32 = *(a2 + 144);
  *(a1 + 16) |= 4u;
  v33 = *(a1 + 8);
  v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
  if (v33)
  {
    v34 = *v34;
  }

  sub_194EA1C((a1 + 144), (v32 & 0xFFFFFFFFFFFFFFFELL), v34);
  if ((v25 & 8) == 0)
  {
LABEL_19:
    if ((v25 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_33:
  *(a1 + 16) |= 8u;
  v35 = *(a1 + 152);
  if (!v35)
  {
    v36 = *(a1 + 8);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    v35 = sub_18FF354(v37);
    *(a1 + 152) = v35;
  }

  if (*(a2 + 152))
  {
    v38 = *(a2 + 152);
  }

  else
  {
    v38 = &off_2787BC0;
  }

  sub_186A25C(v35, v38);
  if ((v25 & 0x10) == 0)
  {
LABEL_20:
    if ((v25 & 0x20) == 0)
    {
      goto LABEL_21;
    }

LABEL_49:
    *(a1 + 16) |= 0x20u;
    v43 = *(a1 + 168);
    if (!v43)
    {
      v44 = *(a1 + 8);
      v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
      if (v44)
      {
        v45 = *v45;
      }

      v43 = sub_1392AD4(v45);
      *(a1 + 168) = v43;
    }

    if (*(a2 + 168))
    {
      v46 = *(a2 + 168);
    }

    else
    {
      v46 = &off_276D5B8;
    }

    sub_138DE18(v43, v46);
    if ((v25 & 0x40) == 0)
    {
LABEL_22:
      if ((v25 & 0x80) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_65;
    }

    goto LABEL_57;
  }

LABEL_41:
  *(a1 + 16) |= 0x10u;
  v39 = *(a1 + 160);
  if (!v39)
  {
    v40 = *(a1 + 8);
    v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
    if (v40)
    {
      v41 = *v41;
    }

    v39 = sub_18FF470(v41);
    *(a1 + 160) = v39;
  }

  if (*(a2 + 160))
  {
    v42 = *(a2 + 160);
  }

  else
  {
    v42 = &off_2787C18;
  }

  sub_186B6EC(v39, v42);
  if ((v25 & 0x20) != 0)
  {
    goto LABEL_49;
  }

LABEL_21:
  if ((v25 & 0x40) == 0)
  {
    goto LABEL_22;
  }

LABEL_57:
  *(a1 + 16) |= 0x40u;
  v47 = *(a1 + 176);
  if (!v47)
  {
    v48 = *(a1 + 8);
    v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
    if (v48)
    {
      v49 = *v49;
    }

    sub_185FEC4(v49);
    *(a1 + 176) = v47;
  }

  if (*(a2 + 176))
  {
    v50 = *(a2 + 176);
  }

  else
  {
    v50 = &off_2783B10;
  }

  sub_17CA5CC(v47, v50);
  if ((v25 & 0x80) != 0)
  {
LABEL_65:
    *(a1 + 16) |= 0x80u;
    v51 = *(a1 + 184);
    if (!v51)
    {
      v52 = *(a1 + 8);
      v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
      if (v52)
      {
        v53 = *v53;
      }

      v51 = sub_13AF694(v53);
      *(a1 + 184) = v51;
    }

    if (*(a2 + 184))
    {
      v54 = *(a2 + 184);
    }

    else
    {
      v54 = &off_276DF88;
    }

    sub_13AABC8(v51, v54);
  }

LABEL_73:
  if ((v25 & 0xFF00) == 0)
  {
    goto LABEL_84;
  }

  if ((v25 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v56 = *(a1 + 192);
    if (!v56)
    {
      v57 = *(a1 + 8);
      v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
      if (v57)
      {
        v58 = *v58;
      }

      v56 = sub_18FF354(v58);
      *(a1 + 192) = v56;
    }

    if (*(a2 + 192))
    {
      v59 = *(a2 + 192);
    }

    else
    {
      v59 = &off_2787BC0;
    }

    sub_186A25C(v56, v59);
    if ((v25 & 0x200) == 0)
    {
LABEL_76:
      if ((v25 & 0x400) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_113;
    }
  }

  else if ((v25 & 0x200) == 0)
  {
    goto LABEL_76;
  }

  *(a1 + 16) |= 0x200u;
  v60 = *(a1 + 200);
  if (!v60)
  {
    v61 = *(a1 + 8);
    v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
    if (v61)
    {
      v62 = *v62;
    }

    v60 = sub_13AE7C0(v62);
    *(a1 + 200) = v60;
  }

  if (*(a2 + 200))
  {
    v63 = *(a2 + 200);
  }

  else
  {
    v63 = &off_276D9D0;
  }

  sub_1399048(v60, v63);
  if ((v25 & 0x400) == 0)
  {
LABEL_77:
    if ((v25 & 0x800) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_121;
  }

LABEL_113:
  *(a1 + 16) |= 0x400u;
  v64 = *(a1 + 208);
  if (!v64)
  {
    v65 = *(a1 + 8);
    v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
    if (v65)
    {
      v66 = *v66;
    }

    v64 = sub_1392CF8(v66);
    *(a1 + 208) = v64;
  }

  if (*(a2 + 208))
  {
    v67 = *(a2 + 208);
  }

  else
  {
    v67 = &off_276D680;
  }

  sub_138F72C(v64, v67);
  if ((v25 & 0x800) == 0)
  {
LABEL_78:
    if ((v25 & 0x1000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_129;
  }

LABEL_121:
  *(a1 + 16) |= 0x800u;
  v68 = *(a1 + 216);
  if (!v68)
  {
    v69 = *(a1 + 8);
    v70 = (v69 & 0xFFFFFFFFFFFFFFFCLL);
    if (v69)
    {
      v70 = *v70;
    }

    v68 = sub_1392F84(v70);
    *(a1 + 216) = v68;
  }

  if (*(a2 + 216))
  {
    v71 = *(a2 + 216);
  }

  else
  {
    v71 = &off_276D760;
  }

  sub_1392124(v68, v71);
  if ((v25 & 0x1000) == 0)
  {
LABEL_79:
    if ((v25 & 0x2000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_137;
  }

LABEL_129:
  *(a1 + 16) |= 0x1000u;
  v72 = *(a1 + 224);
  if (!v72)
  {
    v73 = *(a1 + 8);
    v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL);
    if (v73)
    {
      v74 = *v74;
    }

    v72 = sub_18FF5D8(v74);
    *(a1 + 224) = v72;
  }

  if (*(a2 + 224))
  {
    v75 = *(a2 + 224);
  }

  else
  {
    v75 = &off_2787E30;
  }

  sub_1840104(v72, v75);
  if ((v25 & 0x2000) == 0)
  {
LABEL_80:
    if ((v25 & 0x4000) == 0)
    {
      goto LABEL_81;
    }

LABEL_138:
    *(a1 + 236) = *(a2 + 236);
    if ((v25 & 0x8000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

LABEL_137:
  *(a1 + 232) = *(a2 + 232);
  if ((v25 & 0x4000) != 0)
  {
    goto LABEL_138;
  }

LABEL_81:
  if ((v25 & 0x8000) != 0)
  {
LABEL_82:
    *(a1 + 240) = *(a2 + 240);
  }

LABEL_83:
  *(a1 + 16) |= v25;
LABEL_84:
  if ((v25 & 0x3F0000) == 0)
  {
    goto LABEL_93;
  }

  if ((v25 & 0x10000) != 0)
  {
    *(a1 + 244) = *(a2 + 244);
    if ((v25 & 0x20000) == 0)
    {
LABEL_87:
      if ((v25 & 0x40000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_142;
    }
  }

  else if ((v25 & 0x20000) == 0)
  {
    goto LABEL_87;
  }

  *(a1 + 248) = *(a2 + 248);
  if ((v25 & 0x40000) == 0)
  {
LABEL_88:
    if ((v25 & 0x80000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_143;
  }

LABEL_142:
  *(a1 + 252) = *(a2 + 252);
  if ((v25 & 0x80000) == 0)
  {
LABEL_89:
    if ((v25 & 0x100000) == 0)
    {
      goto LABEL_90;
    }

LABEL_144:
    *(a1 + 254) = *(a2 + 254);
    if ((v25 & 0x200000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

LABEL_143:
  *(a1 + 253) = *(a2 + 253);
  if ((v25 & 0x100000) != 0)
  {
    goto LABEL_144;
  }

LABEL_90:
  if ((v25 & 0x200000) != 0)
  {
LABEL_91:
    *(a1 + 256) = *(a2 + 256);
  }

LABEL_92:
  *(a1 + 16) |= v25;
LABEL_93:
  v55 = *(a2 + 8);
  if (v55)
  {

    sub_1957EF4((a1 + 8), (v55 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_189BD64(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 8) != 0)
  {
    v3 = *(a1 + 152);
    if (*(v3 + 16))
    {
      result = sub_16E6614(*(v3 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x40) != 0)
  {
    result = sub_17CA8A0(*(a1 + 176));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = sub_13AAD50(*(a1 + 184));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) != 0)
  {
    v5 = *(a1 + 192);
    if (*(v5 + 16))
    {
      result = sub_16E6614(*(v5 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x200) != 0)
  {
    result = sub_13991C0(*(a1 + 200));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400) == 0)
  {
    return 1;
  }

  result = sub_138F78C(*(a1 + 208));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_189BE28(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_2717058;
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
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 264) = 0u;
  return a1;
}

void sub_189BED4(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_189BF04(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_2717058;
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
    sub_19445A4((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
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
    sub_1944620((a1 + 72), v13, (v12 + 8), v11, **(a1 + 88) - *(a1 + 80));
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
    sub_13B5FAC((a1 + 96), v18, (v17 + 8), v16, **(a1 + 112) - *(a1 + 104));
    v19 = *(a1 + 104) + v16;
    *(a1 + 104) = v19;
    v20 = *(a1 + 112);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v21 = *(a2 + 128);
  if (v21)
  {
    v22 = *(a2 + 136);
    v23 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_13B640C((a1 + 120), v23, (v22 + 8), v21, **(a1 + 136) - *(a1 + 128));
    v24 = *(a1 + 128) + v21;
    *(a1 + 128) = v24;
    v25 = *(a1 + 136);
    if (*v25 < v24)
    {
      *v25 = v24;
    }
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v26 = *(a2 + 152);
  if (v26)
  {
    v27 = *(a2 + 160);
    v28 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_166F714((a1 + 144), v28, (v27 + 8), v26, **(a1 + 160) - *(a1 + 152));
    v29 = *(a1 + 152) + v26;
    *(a1 + 152) = v29;
    v30 = *(a1 + 160);
    if (*v30 < v29)
    {
      *v30 = v29;
    }
  }

  v31 = *(a2 + 8);
  if (v31)
  {
    sub_1957EF4(v4, (v31 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  v32 = *(a2 + 40);
  if (v32)
  {
    operator new();
  }

  *(a1 + 168) = 0;
  if ((v32 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 176) = 0;
  if ((v32 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 184) = 0;
  if ((v32 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 192) = 0;
  if ((v32 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 200) = 0;
  if ((v32 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 208) = 0;
  if ((v32 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 216) = 0;
  if ((v32 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 224) = 0;
  if ((v32 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 232) = 0;
  if ((v32 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 240) = 0;
  if ((v32 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 248) = 0;
  if ((v32 & 0x800) != 0)
  {
    operator new();
  }

  *(a1 + 256) = 0;
  if ((v32 & 0x1000) != 0)
  {
    operator new();
  }

  *(a1 + 264) = 0;
  v33 = *(a2 + 272);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 272) = v33;
  return a1;
}

uint64_t sub_189C61C(uint64_t a1)
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

  sub_189C6E4(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_166F1D4((a1 + 144));
  sub_13B5D9C((a1 + 120));
  sub_13B597C((a1 + 96));
  sub_1942E70((a1 + 72));
  sub_1942DEC((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_189C6E4(uint64_t (***result)()))()
{
  if (result != &off_2788E90)
  {
    v1 = result;
    v2 = result[21];
    if (v2)
    {
      sub_16E5B34(v2);
      operator delete();
    }

    v3 = v1[22];
    if (v3)
    {
      sub_1395AC4(v3);
      operator delete();
    }

    v4 = v1[23];
    if (v4)
    {
      sub_18700B0(v4);
      operator delete();
    }

    v5 = v1[24];
    if (v5)
    {
      sub_138CA8C(v5);
      operator delete();
    }

    v6 = v1[25];
    if (v6)
    {
      sub_13A8F30(v6);
      operator delete();
    }

    v7 = v1[26];
    if (v7)
    {
      sub_138E70C(v7);
      operator delete();
    }

    v8 = v1[27];
    if (v8)
    {
      sub_19146C8(v8);
      operator delete();
    }

    v9 = v1[28];
    if (v9)
    {
      sub_139AF7C(v9);
      operator delete();
    }

    v10 = v1[29];
    if (v10)
    {
      sub_13AD340(v10);
      operator delete();
    }

    v11 = v1[30];
    if (v11)
    {
      sub_138F450(v11);
      operator delete();
    }

    v12 = v1[31];
    if (v12)
    {
      sub_17646E4(v12);
      operator delete();
    }

    v13 = v1[32];
    if (v13)
    {
      sub_18752C8(v13);
      operator delete();
    }

    result = v1[33];
    if (result)
    {
      sub_138ED8C(result);

      operator delete();
    }
  }

  return result;
}

void sub_189C8C8(uint64_t a1)
{
  sub_189C61C(a1);

  operator delete();
}

uint64_t sub_189C900(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_1395B00(v5);
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
      result = sub_186BA84(v8);
      --v6;
    }

    while (v6);
    *(a1 + 80) = 0;
  }

  v9 = *(a1 + 104);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 112) + 8);
    do
    {
      v11 = *v10++;
      result = sub_1393F44(v11);
      --v9;
    }

    while (v9);
    *(a1 + 104) = 0;
  }

  v12 = *(a1 + 128);
  if (v12 >= 1)
  {
    v13 = (*(a1 + 136) + 8);
    do
    {
      v14 = *v13++;
      result = sub_1397044(v14);
      --v12;
    }

    while (v12);
    *(a1 + 128) = 0;
  }

  v15 = *(a1 + 152);
  if (v15 >= 1)
  {
    v16 = (*(a1 + 160) + 8);
    do
    {
      v17 = *v16++;
      result = sub_138E038(v17);
      --v15;
    }

    while (v15);
    *(a1 + 152) = 0;
  }

  v18 = *(a1 + 40);
  if (!v18)
  {
    goto LABEL_36;
  }

  if (v18)
  {
    result = sub_16E5B70(*(a1 + 168));
    if ((v18 & 2) == 0)
    {
LABEL_24:
      if ((v18 & 4) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }
  }

  else if ((v18 & 2) == 0)
  {
    goto LABEL_24;
  }

  result = sub_1395B00(*(a1 + 176));
  if ((v18 & 4) == 0)
  {
    goto LABEL_30;
  }

LABEL_28:
  v19 = *(a1 + 184);
  v20 = *(v19 + 8);
  result = v19 + 8;
  *(result + 16) = 0;
  *(result + 8) = 0;
  if (v20)
  {
    result = sub_1957EA8(result);
  }

LABEL_30:
  if ((v18 & 8) != 0)
  {
    result = sub_138CAC8(*(a1 + 192));
    if ((v18 & 0x10) == 0)
    {
LABEL_32:
      if ((v18 & 0x20) == 0)
      {
        goto LABEL_33;
      }

LABEL_53:
      result = sub_138E748(*(a1 + 208));
      if ((v18 & 0x40) == 0)
      {
LABEL_34:
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      goto LABEL_54;
    }
  }

  else if ((v18 & 0x10) == 0)
  {
    goto LABEL_32;
  }

  result = sub_13A8F6C(*(a1 + 200));
  if ((v18 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_33:
  if ((v18 & 0x40) == 0)
  {
    goto LABEL_34;
  }

LABEL_54:
  result = sub_1870C90(*(a1 + 216));
  if ((v18 & 0x80) != 0)
  {
LABEL_35:
    result = sub_139AFB8(*(a1 + 224));
  }

LABEL_36:
  if ((v18 & 0x1F00) == 0)
  {
    goto LABEL_43;
  }

  if ((v18 & 0x100) != 0)
  {
    result = sub_13AD37C(*(a1 + 232));
    if ((v18 & 0x200) == 0)
    {
LABEL_39:
      if ((v18 & 0x400) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_58;
    }
  }

  else if ((v18 & 0x200) == 0)
  {
    goto LABEL_39;
  }

  result = sub_138F48C(*(a1 + 240));
  if ((v18 & 0x400) == 0)
  {
LABEL_40:
    if ((v18 & 0x800) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = sub_1764720(*(a1 + 248));
  if ((v18 & 0x800) == 0)
  {
LABEL_41:
    if ((v18 & 0x1000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_59:
  result = sub_1871E2C(*(a1 + 256));
  if ((v18 & 0x1000) != 0)
  {
LABEL_42:
    result = sub_138EDC8(*(a1 + 264));
  }

LABEL_43:
  if ((v18 & 0xE000) != 0)
  {
    *(a1 + 274) = 0;
    *(a1 + 272) = 0;
  }

  if ((v18 & 0x70000) != 0)
  {
    *(a1 + 283) = 0;
    *(a1 + 275) = 0;
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

char *sub_189CB40(uint64_t a1, char *a2, int32x2_t *a3)
{
  v118 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v118, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = v118 + 1;
    v8 = *v118;
    if (*v118 < 0)
    {
      v8 = v8 + (*v7 << 7) - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v118, v8);
      }

      else
      {
        v7 = v118 + 2;
      }
    }

    v118 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_170;
        }

        *(a1 + 40) |= 1u;
        v9 = *(a1 + 168);
        if (!v9)
        {
          v10 = *(a1 + 8);
          v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
          if (v10)
          {
            v11 = *v11;
          }

          sub_16F58FC(v11);
          v9 = v12;
          *(a1 + 168) = v12;
          v7 = v118;
        }

        v13 = sub_21F86E8(a3, v9, v7);
        goto LABEL_179;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_170;
        }

        v5 |= 0x2000u;
        v60 = v7 + 1;
        v59 = *v7;
        if ((v59 & 0x8000000000000000) == 0)
        {
          goto LABEL_94;
        }

        v61 = *v60;
        v59 = (v61 << 7) + v59 - 128;
        if (v61 < 0)
        {
          v109 = sub_19587DC(v7, v59);
          v118 = v109;
          *(a1 + 272) = v110 != 0;
          if (!v109)
          {
            goto LABEL_199;
          }
        }

        else
        {
          v60 = v7 + 2;
LABEL_94:
          v118 = v60;
          *(a1 + 272) = v59 != 0;
        }

        goto LABEL_180;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_170;
        }

        v38 = v7 - 1;
        while (1)
        {
          v39 = (v38 + 1);
          v118 = v38 + 1;
          v40 = *(a1 + 64);
          if (v40 && (v41 = *(a1 + 56), v41 < *v40))
          {
            *(a1 + 56) = v41 + 1;
            v42 = *&v40[2 * v41 + 2];
          }

          else
          {
            v43 = sub_13AE444(*(a1 + 48));
            v42 = sub_19593CC(a1 + 48, v43);
            v39 = v118;
          }

          v38 = sub_2203B90(a3, v42, v39);
          v118 = v38;
          if (!v38)
          {
            goto LABEL_199;
          }

          if (*a3 <= v38 || *v38 != 26)
          {
            goto LABEL_180;
          }
        }

      case 4u:
        if (v8 != 34)
        {
          goto LABEL_170;
        }

        v47 = v7 - 1;
        while (1)
        {
          v48 = (v47 + 1);
          v118 = v47 + 1;
          v49 = *(a1 + 88);
          if (v49 && (v50 = *(a1 + 80), v50 < *v49))
          {
            *(a1 + 80) = v50 + 1;
            v51 = *&v49[2 * v50 + 2];
          }

          else
          {
            v52 = sub_18FF520(*(a1 + 72));
            v51 = sub_19593CC(a1 + 72, v52);
            v48 = v118;
          }

          v47 = sub_2225B18(a3, v51, v48);
          v118 = v47;
          if (!v47)
          {
            goto LABEL_199;
          }

          if (*a3 <= v47 || *v47 != 34)
          {
            goto LABEL_180;
          }
        }

      case 5u:
        if (v8 != 42)
        {
          goto LABEL_170;
        }

        *(a1 + 40) |= 2u;
        v25 = *(a1 + 176);
        if (!v25)
        {
          v26 = *(a1 + 8);
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v27 = *v27;
          }

          v25 = sub_13AE444(v27);
          *(a1 + 176) = v25;
          v7 = v118;
        }

        v13 = sub_2203B90(a3, v25, v7);
        goto LABEL_179;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_170;
        }

        *(a1 + 40) |= 4u;
        v69 = *(a1 + 184);
        if (!v69)
        {
          v70 = *(a1 + 8);
          v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL);
          if (v70)
          {
            v71 = *v71;
          }

          v69 = sub_18FF65C(v71);
          *(a1 + 184) = v69;
          v7 = v118;
        }

        v13 = sub_2251B24(a3, v69, v7);
        goto LABEL_179;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_170;
        }

        v5 |= 0x4000u;
        v79 = v7 + 1;
        v78 = *v7;
        if ((v78 & 0x8000000000000000) == 0)
        {
          goto LABEL_130;
        }

        v80 = *v79;
        v78 = (v80 << 7) + v78 - 128;
        if (v80 < 0)
        {
          v112 = sub_19587DC(v7, v78);
          v118 = v112;
          *(a1 + 273) = v113 != 0;
          if (!v112)
          {
            goto LABEL_199;
          }
        }

        else
        {
          v79 = v7 + 2;
LABEL_130:
          v118 = v79;
          *(a1 + 273) = v78 != 0;
        }

        goto LABEL_180;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_170;
        }

        v53 = v7 - 1;
        while (1)
        {
          v54 = (v53 + 1);
          v118 = v53 + 1;
          v55 = *(a1 + 112);
          if (v55 && (v56 = *(a1 + 104), v56 < *v55))
          {
            *(a1 + 104) = v56 + 1;
            v57 = *&v55[2 * v56 + 2];
          }

          else
          {
            v58 = sub_13AE360(*(a1 + 96));
            v57 = sub_19593CC(a1 + 96, v58);
            v54 = v118;
          }

          v53 = sub_22033B0(a3, v57, v54);
          v118 = v53;
          if (!v53)
          {
            goto LABEL_199;
          }

          if (*a3 <= v53 || *v53 != 66)
          {
            goto LABEL_180;
          }
        }

      case 9u:
        if (v8 != 74)
        {
          goto LABEL_170;
        }

        *(a1 + 40) |= 8u;
        v90 = *(a1 + 192);
        if (!v90)
        {
          v91 = *(a1 + 8);
          v92 = (v91 & 0xFFFFFFFFFFFFFFFCLL);
          if (v91)
          {
            v92 = *v92;
          }

          v90 = sub_1392A48(v92);
          *(a1 + 192) = v90;
          v7 = v118;
        }

        v13 = sub_2253504(a3, v90, v7);
        goto LABEL_179;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_170;
        }

        v32 = v7 - 1;
        while (1)
        {
          v33 = (v32 + 1);
          v118 = v32 + 1;
          v34 = *(a1 + 136);
          if (v34 && (v35 = *(a1 + 128), v35 < *v34))
          {
            *(a1 + 128) = v35 + 1;
            v36 = *&v34[2 * v35 + 2];
          }

          else
          {
            v37 = sub_13AE61C(*(a1 + 120));
            v36 = sub_19593CC(a1 + 120, v37);
            v33 = v118;
          }

          v32 = sub_22042E0(a3, v36, v33);
          v118 = v32;
          if (!v32)
          {
            goto LABEL_199;
          }

          if (*a3 <= v32 || *v32 != 82)
          {
            goto LABEL_180;
          }
        }

      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_170;
        }

        v84 = v7 - 1;
        while (1)
        {
          v85 = (v84 + 1);
          v118 = v84 + 1;
          v86 = *(a1 + 160);
          if (v86 && (v87 = *(a1 + 152), v87 < *v86))
          {
            *(a1 + 152) = v87 + 1;
            v88 = *&v86[2 * v87 + 2];
          }

          else
          {
            v89 = sub_1392B7C(*(a1 + 144));
            v88 = sub_19593CC(a1 + 144, v89);
            v85 = v118;
          }

          v84 = sub_222F0F0(a3, v88, v85);
          v118 = v84;
          if (!v84)
          {
            goto LABEL_199;
          }

          if (*a3 <= v84 || *v84 != 90)
          {
            goto LABEL_180;
          }
        }

      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_170;
        }

        *(a1 + 40) |= 0x10u;
        v21 = *(a1 + 200);
        if (!v21)
        {
          v22 = *(a1 + 8);
          v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v23 = *v23;
          }

          sub_13AF57C(v23);
          v21 = v24;
          *(a1 + 200) = v24;
          v7 = v118;
        }

        v13 = sub_222CF94(a3, v21, v7);
        goto LABEL_179;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_170;
        }

        *(a1 + 40) |= 0x20u;
        v28 = *(a1 + 208);
        if (!v28)
        {
          v29 = *(a1 + 8);
          v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v30 = *v30;
          }

          sub_1392BF8(v30);
          v28 = v31;
          *(a1 + 208) = v31;
          v7 = v118;
        }

        v13 = sub_2251CD4(a3, v28, v7);
        goto LABEL_179;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_170;
        }

        *(a1 + 40) |= 0x40u;
        v75 = *(a1 + 216);
        if (!v75)
        {
          v76 = *(a1 + 8);
          v77 = (v76 & 0xFFFFFFFFFFFFFFFCLL);
          if (v76)
          {
            v77 = *v77;
          }

          v75 = sub_191637C(v77);
          *(a1 + 216) = v75;
          v7 = v118;
        }

        v13 = sub_22045B0(a3, v75, v7);
        goto LABEL_179;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_170;
        }

        *(a1 + 40) |= 0x80u;
        v18 = *(a1 + 224);
        if (!v18)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v18 = sub_13AEA28(v20);
          *(a1 + 224) = v18;
          v7 = v118;
        }

        v13 = sub_2204370(a3, v18, v7);
        goto LABEL_179;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_170;
        }

        v5 |= 0x8000u;
        v45 = v7 + 1;
        v44 = *v7;
        if ((v44 & 0x8000000000000000) == 0)
        {
          goto LABEL_69;
        }

        v46 = *v45;
        v44 = (v46 << 7) + v44 - 128;
        if (v46 < 0)
        {
          v107 = sub_19587DC(v7, v44);
          v118 = v107;
          *(a1 + 274) = v108 != 0;
          if (!v107)
          {
            goto LABEL_199;
          }
        }

        else
        {
          v45 = v7 + 2;
LABEL_69:
          v118 = v45;
          *(a1 + 274) = v44 != 0;
        }

        goto LABEL_180;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_170;
        }

        v14 = v7 + 1;
        v15 = *v7;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        v16 = *v14;
        v17 = (v16 << 7) + v15;
        LODWORD(v15) = v17 - 128;
        if (v16 < 0)
        {
          v118 = sub_19587DC(v7, (v17 - 128));
          if (!v118)
          {
            goto LABEL_199;
          }

          LODWORD(v15) = v106;
        }

        else
        {
          v14 = v7 + 2;
LABEL_18:
          v118 = v14;
        }

        if (sub_12AE1F4(v15))
        {
          *(a1 + 40) |= 0x20000u;
          *(a1 + 276) = v15;
        }

        else
        {
          sub_156E760();
        }

        goto LABEL_180;
      case 0x12u:
        if (v8 != 146)
        {
          goto LABEL_170;
        }

        *(a1 + 40) |= 0x100u;
        v62 = *(a1 + 232);
        if (!v62)
        {
          v63 = *(a1 + 8);
          v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
          if (v63)
          {
            v64 = *v64;
          }

          v62 = sub_13AF9E8(v64);
          *(a1 + 232) = v62;
          v7 = v118;
        }

        v13 = sub_2251D64(a3, v62, v7);
        goto LABEL_179;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_170;
        }

        v5 |= 0x10000u;
        v82 = v7 + 1;
        v81 = *v7;
        if ((v81 & 0x8000000000000000) == 0)
        {
          goto LABEL_135;
        }

        v83 = *v82;
        v81 = (v83 << 7) + v81 - 128;
        if (v83 < 0)
        {
          v114 = sub_19587DC(v7, v81);
          v118 = v114;
          *(a1 + 275) = v115 != 0;
          if (!v114)
          {
            goto LABEL_199;
          }
        }

        else
        {
          v82 = v7 + 2;
LABEL_135:
          v118 = v82;
          *(a1 + 275) = v81 != 0;
        }

        goto LABEL_180;
      case 0x14u:
        if (v8 != 162)
        {
          goto LABEL_170;
        }

        *(a1 + 40) |= 0x200u;
        v96 = *(a1 + 240);
        if (!v96)
        {
          v97 = *(a1 + 8);
          v98 = (v97 & 0xFFFFFFFFFFFFFFFCLL);
          if (v97)
          {
            v98 = *v98;
          }

          v96 = sub_1392CF8(v98);
          *(a1 + 240) = v96;
          v7 = v118;
        }

        v13 = sub_2235484(a3, v96, v7);
        goto LABEL_179;
      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_170;
        }

        v65 = v7 + 1;
        v66 = *v7;
        if ((v66 & 0x8000000000000000) == 0)
        {
          goto LABEL_105;
        }

        v67 = *v65;
        v68 = (v67 << 7) + v66;
        LODWORD(v66) = v68 - 128;
        if (v67 < 0)
        {
          v118 = sub_19587DC(v7, (v68 - 128));
          if (!v118)
          {
            goto LABEL_199;
          }

          LODWORD(v66) = v111;
        }

        else
        {
          v65 = v7 + 2;
LABEL_105:
          v118 = v65;
        }

        if (sub_16E4BF0(v66))
        {
          *(a1 + 40) |= 0x40000u;
          *(a1 + 280) = v66;
        }

        else
        {
          sub_1313640();
        }

        goto LABEL_180;
      case 0x16u:
        if (v8 != 178)
        {
          goto LABEL_170;
        }

        *(a1 + 40) |= 0x400u;
        v72 = *(a1 + 248);
        if (!v72)
        {
          v73 = *(a1 + 8);
          v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL);
          if (v73)
          {
            v74 = *v74;
          }

          v72 = sub_1764A4C(v74);
          *(a1 + 248) = v72;
          v7 = v118;
        }

        v13 = sub_2251DF4(a3, v72, v7);
        goto LABEL_179;
      case 0x17u:
        if (v8 != 186)
        {
          goto LABEL_170;
        }

        *(a1 + 40) |= 0x800u;
        v93 = *(a1 + 256);
        if (!v93)
        {
          v94 = *(a1 + 8);
          v95 = (v94 & 0xFFFFFFFFFFFFFFFCLL);
          if (v94)
          {
            v95 = *v95;
          }

          v93 = sub_18FF7BC(v95);
          *(a1 + 256) = v93;
          v7 = v118;
        }

        v13 = sub_2251E84(a3, v93, v7);
        goto LABEL_179;
      case 0x18u:
        if (v8 != 194)
        {
          goto LABEL_170;
        }

        *(a1 + 40) |= 0x1000u;
        v99 = *(a1 + 264);
        if (!v99)
        {
          v100 = *(a1 + 8);
          v101 = (v100 & 0xFFFFFFFFFFFFFFFCLL);
          if (v100)
          {
            v101 = *v101;
          }

          sub_1392C78(v101);
          v99 = v102;
          *(a1 + 264) = v102;
          v7 = v118;
        }

        v13 = sub_2251F14(a3, v99, v7);
        goto LABEL_179;
      default:
LABEL_170:
        if (v8)
        {
          v103 = (v8 & 7) == 4;
        }

        else
        {
          v103 = 1;
        }

        if (!v103)
        {
          if (v8 - 800 > 0x31F)
          {
            v104 = *(a1 + 8);
            if (v104)
            {
              v105 = (v104 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v116 = v8;
              v117 = sub_11F1920((a1 + 8));
              v8 = v116;
              v105 = v117;
              v7 = v118;
            }

            v13 = sub_1952690(v8, v105, v7, a3);
          }

          else
          {
            v13 = sub_19525AC((a1 + 16), v8, v7, &off_2788E90, (a1 + 8), a3);
          }

LABEL_179:
          v118 = v13;
          if (!v13)
          {
            goto LABEL_199;
          }

LABEL_180:
          if (sub_195ADC0(a3, &v118, a3[11].i32[1]))
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
LABEL_199:
          v118 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return v118;
    }
  }
}

char *sub_189D6AC(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 168);
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

    v4 = sub_16E5FE0(v7, v9, a3);
  }

  if ((v6 & 0x2000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 272);
    *v4 = 16;
    v4[1] = v10;
    v4 += 2;
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v13 = *(*(a1 + 64) + 8 * i + 8);
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

      v4 = sub_1395D74(v13, v15, a3);
    }
  }

  v16 = *(a1 + 80);
  if (v16)
  {
    for (j = 0; j != v16; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v18 = *(*(a1 + 88) + 8 * j + 8);
      *v4 = 34;
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

      v4 = sub_186BDDC(v18, v20, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v21 = *(a1 + 176);
    *v4 = 42;
    v22 = *(v21 + 20);
    v4[1] = v22;
    if (v22 > 0x7F)
    {
      v23 = sub_19575D0(v22, v4 + 1);
    }

    else
    {
      v23 = v4 + 2;
    }

    v4 = sub_1395D74(v21, v23, a3);
    if ((v6 & 4) == 0)
    {
LABEL_30:
      if ((v6 & 0x4000) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_30;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v24 = *(a1 + 184);
  *v4 = 50;
  v25 = *(v24 + 20);
  v4[1] = v25;
  if (v25 > 0x7F)
  {
    v26 = sub_19575D0(v25, v4 + 1);
  }

  else
  {
    v26 = v4 + 2;
  }

  v4 = sub_1870378(v24, v26, a3);
  if ((v6 & 0x4000) != 0)
  {
LABEL_44:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v27 = *(a1 + 273);
    *v4 = 56;
    v4[1] = v27;
    v4 += 2;
  }

LABEL_47:
  v28 = *(a1 + 104);
  if (v28)
  {
    for (k = 0; k != v28; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v30 = *(*(a1 + 112) + 8 * k + 8);
      *v4 = 66;
      v31 = *(v30 + 44);
      v4[1] = v31;
      if (v31 > 0x7F)
      {
        v32 = sub_19575D0(v31, v4 + 1);
      }

      else
      {
        v32 = v4 + 2;
      }

      v4 = sub_1394708(v30, v32, a3);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v33 = *(a1 + 192);
    *v4 = 74;
    v34 = *(v33 + 20);
    v4[1] = v34;
    if (v34 > 0x7F)
    {
      v35 = sub_19575D0(v34, v4 + 1);
    }

    else
    {
      v35 = v4 + 2;
    }

    v4 = sub_138CE68(v33, v35, a3);
  }

  v36 = *(a1 + 128);
  if (v36)
  {
    for (m = 0; m != v36; ++m)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v38 = *(*(a1 + 136) + 8 * m + 8);
      *v4 = 82;
      v39 = *(v38 + 20);
      v4[1] = v39;
      if (v39 > 0x7F)
      {
        v40 = sub_19575D0(v39, v4 + 1);
      }

      else
      {
        v40 = v4 + 2;
      }

      v4 = sub_1397408(v38, v40, a3);
    }
  }

  v41 = *(a1 + 152);
  if (v41)
  {
    for (n = 0; n != v41; ++n)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v43 = *(*(a1 + 160) + 8 * n + 8);
      *v4 = 90;
      v44 = *(v43 + 20);
      v4[1] = v44;
      if (v44 > 0x7F)
      {
        v45 = sub_19575D0(v44, v4 + 1);
      }

      else
      {
        v45 = v4 + 2;
      }

      v4 = sub_138E2C0(v43, v45, a3);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v47 = *(a1 + 200);
    *v4 = 98;
    v48 = *(v47 + 20);
    v4[1] = v48;
    if (v48 > 0x7F)
    {
      v49 = sub_19575D0(v48, v4 + 1);
    }

    else
    {
      v49 = v4 + 2;
    }

    v4 = sub_13A9284(v47, v49, a3);
    if ((v6 & 0x20) == 0)
    {
LABEL_80:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_97;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_80;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v50 = *(a1 + 208);
  *v4 = 106;
  v51 = *(v50 + 20);
  v4[1] = v51;
  if (v51 > 0x7F)
  {
    v52 = sub_19575D0(v51, v4 + 1);
  }

  else
  {
    v52 = v4 + 2;
  }

  v4 = sub_138E96C(v50, v52, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_81:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_103;
  }

LABEL_97:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v53 = *(a1 + 216);
  *v4 = 114;
  v54 = *(v53 + 20);
  v4[1] = v54;
  if (v54 > 0x7F)
  {
    v55 = sub_19575D0(v54, v4 + 1);
  }

  else
  {
    v55 = v4 + 2;
  }

  v4 = sub_1914A28(v53, v55, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_82:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_83;
    }

LABEL_109:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v59 = *(a1 + 274);
    *v4 = 384;
    v4[2] = v59;
    v4 += 3;
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_112;
  }

LABEL_103:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v56 = *(a1 + 224);
  *v4 = 122;
  v57 = *(v56 + 40);
  v4[1] = v57;
  if (v57 > 0x7F)
  {
    v58 = sub_19575D0(v57, v4 + 1);
  }

  else
  {
    v58 = v4 + 2;
  }

  v4 = sub_139B1C4(v56, v58, a3);
  if ((v6 & 0x8000) != 0)
  {
    goto LABEL_109;
  }

LABEL_83:
  if ((v6 & 0x20000) == 0)
  {
LABEL_84:
    v46 = v4;
    goto LABEL_119;
  }

LABEL_112:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v60 = *(a1 + 276);
  *v4 = 392;
  v4[2] = v60;
  if (v60 > 0x7F)
  {
    v4[2] = v60 | 0x80;
    v61 = v60 >> 7;
    v4[3] = v60 >> 7;
    v46 = v4 + 4;
    if (v60 >= 0x4000)
    {
      LOBYTE(v4) = v4[3];
      do
      {
        *(v46 - 1) = v4 | 0x80;
        v4 = (v61 >> 7);
        *v46++ = v61 >> 7;
        v62 = v61 >> 14;
        v61 >>= 7;
      }

      while (v62);
    }
  }

  else
  {
    v46 = v4 + 3;
  }

LABEL_119:
  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v64 = *(a1 + 232);
    *v46 = 402;
    v65 = *(v64 + 20);
    v46[2] = v65;
    if (v65 > 0x7F)
    {
      v66 = sub_19575D0(v65, v46 + 2);
    }

    else
    {
      v66 = v46 + 3;
    }

    v46 = sub_13AD988(v64, v66, a3);
    if ((v6 & 0x10000) == 0)
    {
LABEL_121:
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_122;
      }

LABEL_133:
      if (*a3 <= v46)
      {
        v46 = sub_225EB68(a3, v46);
      }

      v68 = *(a1 + 240);
      *v46 = 418;
      v69 = *(v68 + 40);
      v46[2] = v69;
      if (v69 > 0x7F)
      {
        v70 = sub_19575D0(v69, v46 + 2);
      }

      else
      {
        v70 = v46 + 3;
      }

      v46 = sub_138F614(v68, v70, a3);
      if ((v6 & 0x40000) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_139;
    }
  }

  else if ((v6 & 0x10000) == 0)
  {
    goto LABEL_121;
  }

  if (*a3 <= v46)
  {
    v46 = sub_225EB68(a3, v46);
  }

  v67 = *(a1 + 275);
  *v46 = 408;
  v46[2] = v67;
  v46 += 3;
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_133;
  }

LABEL_122:
  if ((v6 & 0x40000) == 0)
  {
LABEL_123:
    v63 = v46;
    goto LABEL_146;
  }

LABEL_139:
  if (*a3 <= v46)
  {
    v46 = sub_225EB68(a3, v46);
  }

  v71 = *(a1 + 280);
  *v46 = 424;
  v46[2] = v71;
  if (v71 > 0x7F)
  {
    v46[2] = v71 | 0x80;
    v72 = v71 >> 7;
    v46[3] = v71 >> 7;
    v63 = v46 + 4;
    if (v71 >= 0x4000)
    {
      LOBYTE(v46) = v46[3];
      do
      {
        *(v63 - 1) = v46 | 0x80;
        v46 = (v72 >> 7);
        *v63++ = v72 >> 7;
        v73 = v72 >> 14;
        v72 >>= 7;
      }

      while (v73);
    }
  }

  else
  {
    v63 = v46 + 3;
  }

LABEL_146:
  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v63)
    {
      v63 = sub_225EB68(a3, v63);
    }

    v74 = *(a1 + 248);
    *v63 = 434;
    v75 = *(v74 + 20);
    v63[2] = v75;
    if (v75 > 0x7F)
    {
      v76 = sub_19575D0(v75, v63 + 2);
    }

    else
    {
      v76 = v63 + 3;
    }

    v63 = sub_17648A0(v74, v76, a3);
    if ((v6 & 0x800) == 0)
    {
LABEL_148:
      if ((v6 & 0x1000) == 0)
      {
        goto LABEL_168;
      }

      goto LABEL_162;
    }
  }

  else if ((v6 & 0x800) == 0)
  {
    goto LABEL_148;
  }

  if (*a3 <= v63)
  {
    v63 = sub_225EB68(a3, v63);
  }

  v77 = *(a1 + 256);
  *v63 = 442;
  v78 = *(v77 + 20);
  v63[2] = v78;
  if (v78 > 0x7F)
  {
    v79 = sub_19575D0(v78, v63 + 2);
  }

  else
  {
    v79 = v63 + 3;
  }

  v63 = sub_187562C(v77, v79, a3);
  if ((v6 & 0x1000) != 0)
  {
LABEL_162:
    if (*a3 <= v63)
    {
      v63 = sub_225EB68(a3, v63);
    }

    v80 = *(a1 + 264);
    *v63 = 450;
    v81 = *(v80 + 20);
    v63[2] = v81;
    if (v81 > 0x7F)
    {
      v82 = sub_19575D0(v81, v63 + 2);
    }

    else
    {
      v82 = v63 + 3;
    }

    v63 = sub_138EFEC(v80, v82, a3);
  }

LABEL_168:
  if (*(a1 + 26))
  {
    v63 = sub_1953428(a1 + 16, 100, 200, v63, a3);
  }

  v83 = *(a1 + 8);
  if ((v83 & 1) == 0)
  {
    return v63;
  }

  v85 = v83 & 0xFFFFFFFFFFFFFFFCLL;
  v86 = *(v85 + 31);
  if (v86 < 0)
  {
    v87 = *(v85 + 8);
    v86 = *(v85 + 16);
  }

  else
  {
    v87 = (v85 + 8);
  }

  if ((*a3 - v63) >= v86)
  {
    v88 = v86;
    memcpy(v63, v87, v86);
    v63 += v88;
    return v63;
  }

  return sub_1957130(a3, v87, v86, v63);
}

uint64_t sub_189E160(uint64_t a1)
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
      v9 = sub_1395E88(v8);
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
      v16 = sub_186C0BC(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 104);
  v18 = v11 + v17;
  v19 = *(a1 + 112);
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
      v23 = sub_1394BA0(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(a1 + 128);
  v25 = v18 + v24;
  v26 = *(a1 + 136);
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
      v30 = sub_139763C(v29);
      v25 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6);
      v28 -= 8;
    }

    while (v28);
  }

  v31 = *(a1 + 152);
  v32 = v25 + v31;
  v33 = *(a1 + 160);
  if (v33)
  {
    v34 = (v33 + 8);
  }

  else
  {
    v34 = 0;
  }

  if (v31)
  {
    v35 = 8 * v31;
    do
    {
      v36 = *v34++;
      v37 = sub_138E4F8(v36);
      v32 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6);
      v35 -= 8;
    }

    while (v35);
  }

  v38 = *(a1 + 40);
  if (!v38)
  {
    goto LABEL_41;
  }

  if (v38)
  {
    v49 = sub_16E62F4(*(a1 + 168));
    v32 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v38 & 2) == 0)
    {
LABEL_34:
      if ((v38 & 4) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_68;
    }
  }

  else if ((v38 & 2) == 0)
  {
    goto LABEL_34;
  }

  v50 = sub_1395E88(*(a1 + 176));
  v32 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v38 & 4) == 0)
  {
LABEL_35:
    if ((v38 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_69;
  }

LABEL_68:
  v51 = sub_1870490(*(a1 + 184));
  v32 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v38 & 8) == 0)
  {
LABEL_36:
    if ((v38 & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_70;
  }

LABEL_69:
  v52 = sub_138D068(*(a1 + 192));
  v32 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v38 & 0x10) == 0)
  {
LABEL_37:
    if ((v38 & 0x20) == 0)
    {
      goto LABEL_38;
    }

LABEL_71:
    v54 = sub_138EB48(*(a1 + 208));
    v32 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v38 & 0x40) == 0)
    {
LABEL_39:
      if ((v38 & 0x80) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    goto LABEL_72;
  }

LABEL_70:
  v53 = sub_13A9470(*(a1 + 200));
  v32 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v38 & 0x20) != 0)
  {
    goto LABEL_71;
  }

LABEL_38:
  if ((v38 & 0x40) == 0)
  {
    goto LABEL_39;
  }

LABEL_72:
  v55 = sub_1914C70(*(a1 + 216));
  v32 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v38 & 0x80) != 0)
  {
LABEL_40:
    v39 = sub_139B304(*(a1 + 224));
    v32 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_41:
  if ((v38 & 0xFF00) == 0)
  {
    goto LABEL_51;
  }

  if ((v38 & 0x100) != 0)
  {
    v56 = sub_13ADD88(*(a1 + 232));
    v32 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v38 & 0x200) == 0)
    {
LABEL_44:
      if ((v38 & 0x400) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_76;
    }
  }

  else if ((v38 & 0x200) == 0)
  {
    goto LABEL_44;
  }

  v57 = sub_138F6DC(*(a1 + 240));
  v32 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v38 & 0x400) == 0)
  {
LABEL_45:
    if ((v38 & 0x800) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_77;
  }

LABEL_76:
  v58 = sub_17649C8(*(a1 + 248));
  v32 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v38 & 0x800) == 0)
  {
LABEL_46:
    if ((v38 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_77:
  v59 = sub_1875820(*(a1 + 256));
  v32 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v38 & 0x1000) != 0)
  {
LABEL_47:
    v40 = sub_138F1C8(*(a1 + 264));
    v32 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_48:
  if ((v38 & 0x8000) != 0)
  {
    v32 += ((v38 >> 13) & 2) + ((v38 >> 12) & 2) + 3;
  }

  else
  {
    v32 += ((v38 >> 13) & 2) + ((v38 >> 12) & 2);
  }

LABEL_51:
  if ((v38 & 0x70000) != 0)
  {
    if ((v38 & 0x10000) != 0)
    {
      v32 += 3;
    }

    if ((v38 & 0x20000) != 0)
    {
      v41 = *(a1 + 276);
      v42 = ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v41 >= 0)
      {
        v43 = v42;
      }

      else
      {
        v43 = 12;
      }

      v32 += v43;
    }

    if ((v38 & 0x40000) != 0)
    {
      v44 = *(a1 + 280);
      v45 = ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v44 >= 0)
      {
        v46 = v45;
      }

      else
      {
        v46 = 12;
      }

      v32 += v46;
    }
  }

  v47 = *(a1 + 8);
  if (v47)
  {
    v60 = v47 & 0xFFFFFFFFFFFFFFFCLL;
    v61 = *((v47 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v61 < 0)
    {
      v61 = *(v60 + 16);
    }

    v32 += v61;
  }

  *(a1 + 44) = v32;
  return v32;
}