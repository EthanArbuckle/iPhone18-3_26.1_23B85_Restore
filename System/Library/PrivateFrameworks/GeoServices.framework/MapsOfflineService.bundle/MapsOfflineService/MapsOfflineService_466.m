void sub_18E22A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_19457DC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

        sub_16F58FC(v12);
        *(a1 + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_277E650;
      }

      sub_16E645C(v10, v13);
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

BOOL sub_18E23D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_17A9D88(*(*(a1 + 40) + 8 * v2));
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

  result = sub_16E6614(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18E2444(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_271A858;
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
    sub_1945868((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
    sub_19458F4((a1 + 48), v12, (v11 + 8), v10, **(a1 + 64) - *(a1 + 56));
    v13 = *(a1 + 56) + v10;
    *(a1 + 56) = v13;
    v14 = *(a1 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 8);
  if (v15)
  {
    sub_1957EF4(v4, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void sub_18E259C(_Unwind_Exception *a1)
{
  sub_194407C(v3);
  sub_1943FF8(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18E25F4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_194407C(a1 + 6);
  sub_1943FF8(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18E2680(void *a1)
{
  sub_18E25F4(a1);

  operator delete();
}

uint64_t sub_18E26B8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_18E1380(v4);
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
      result = sub_18E1C60(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 64) = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

char *sub_18E2764(uint64_t a1, char *a2, int32x2_t *a3)
{
  v33 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v33, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v33 + 1;
    v7 = *v33;
    if (*v33 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v33, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v33 + 2;
      }
    }

    v33 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        v21 = v6 - 1;
        while (1)
        {
          v22 = (v21 + 1);
          v33 = v21 + 1;
          v23 = *(a1 + 64);
          if (v23 && (v24 = *(a1 + 56), v24 < *v23))
          {
            *(a1 + 56) = v24 + 1;
            v25 = *&v23[2 * v24 + 2];
          }

          else
          {
            v26 = sub_1905574(*(a1 + 48));
            v25 = sub_19593CC(a1 + 48, v26);
            v22 = v33;
          }

          v21 = sub_2255B20(a3, v25, v22);
          v33 = v21;
          if (!v21)
          {
            return 0;
          }

          if (*a3 <= v21 || *v21 != 26)
          {
            goto LABEL_47;
          }
        }
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        v15 = v6 - 1;
        while (1)
        {
          v16 = (v15 + 1);
          v33 = v15 + 1;
          v17 = *(a1 + 40);
          if (v17 && (v18 = *(a1 + 32), v18 < *v17))
          {
            *(a1 + 32) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = sub_19054D0(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = v33;
          }

          v15 = sub_2255A90(a3, v19, v16);
          v33 = v15;
          if (!v15)
          {
            return 0;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_47;
          }
        }
      }
    }

    else if (v10 == 1 && v7 == 8)
    {
      v27 = v6 + 1;
      v28 = *v6;
      if ((v28 & 0x8000000000000000) == 0)
      {
        goto LABEL_44;
      }

      v29 = *v27;
      v30 = (v29 << 7) + v28;
      LODWORD(v28) = v30 - 128;
      if (v29 < 0)
      {
        v33 = sub_19587DC(v6, (v30 - 128));
        if (!v33)
        {
          return 0;
        }

        LODWORD(v28) = v31;
      }

      else
      {
        v27 = v6 + 2;
LABEL_44:
        v33 = v27;
      }

      if (sub_14CB318(v28))
      {
        *(a1 + 16) |= 1u;
        *(a1 + 72) = v28;
      }

      else
      {
        sub_12E8450();
      }

      continue;
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
        return v33;
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
      v6 = v33;
    }

    v33 = sub_1952690(v7, v14, v6, a3);
    if (!v33)
    {
      return 0;
    }

LABEL_47:
    ;
  }

  return v33;
}

char *sub_18E2A10(uint64_t a1, char *__dst, _DWORD *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 72);
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

  v10 = *(a1 + 32);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v5)
      {
        v5 = sub_225EB68(a3, v5);
      }

      v12 = *(*(a1 + 40) + 8 * i + 8);
      *v5 = 18;
      v13 = *(v12 + 20);
      v5[1] = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, v5 + 1);
      }

      else
      {
        v14 = v5 + 2;
      }

      v5 = sub_18E1684(v12, v14, a3);
    }
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      if (*a3 <= v5)
      {
        v5 = sub_225EB68(a3, v5);
      }

      v17 = *(*(a1 + 64) + 8 * j + 8);
      *v5 = 26;
      v18 = *(v17 + 20);
      v5[1] = v18;
      if (v18 > 0x7F)
      {
        v19 = sub_19575D0(v18, v5 + 1);
      }

      else
      {
        v19 = v5 + 2;
      }

      v5 = sub_18E1F64(v17, v19, a3);
    }
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v5;
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

  if (*a3 - v5 >= v23)
  {
    v25 = v23;
    memcpy(v5, v24, v23);
    v5 += v25;
    return v5;
  }

  return sub_1957130(a3, v24, v23, v5);
}

uint64_t sub_18E2C58(uint64_t a1)
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
      v7 = sub_18E18AC(v6);
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
      v14 = sub_18E218C(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  if (*(a1 + 16))
  {
    v15 = *(a1 + 72);
    v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v15 >= 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 11;
    }

    v9 += v17;
  }

  v18 = *(a1 + 8);
  if (v18)
  {
    v20 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    v9 += v21;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_18E2D88(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1945868((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_19458F4((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  if (*(a2 + 16))
  {
    v14 = *(a2 + 72);
    *(a1 + 16) |= 1u;
    *(a1 + 72) = v14;
  }

  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_18E2EBC(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_18E1AF0(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if (!v4)
    {
      return 0;
    }
  }

  v6 = *(a1 + 56);
  do
  {
    v5 = v6 < 1;
    if (v6 < 1)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = sub_18E23D0(*(*(a1 + 64) + 8 * v6));
    v6 = v7;
  }

  while (v8);
  return v5;
}

uint64_t sub_18E2F4C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = off_271A8D8;
  *(a1 + 24) = 0;
  v5 = *(a2 + 16);
  if (v5)
  {
    sub_1959094((a1 + 16), v5);
    v6 = *(a1 + 24);
    *(a1 + 16) += *(a2 + 16);
    memcpy(v6, *(a2 + 24), 8 * *(a2 + 16));
  }

  *(a1 + 32) = 0;
  v7 = *(a2 + 8);
  if (v7)
  {
    sub_1957EF4(v4, (v7 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_18E2FFC(_Unwind_Exception *a1)
{
  sub_1956ABC(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18E303C(void *a1)
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

void sub_18E30B8(void *a1)
{
  sub_18E303C(a1);

  operator delete();
}

uint64_t sub_18E30F0(uint64_t a1)
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

char *sub_18E3104(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_18E32F4(uint64_t a1, char *a2, _DWORD *a3)
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

uint64_t sub_18E3444(uint64_t a1)
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

uint64_t sub_18E34B4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_271A958;
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
    sub_13B6038((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

uint64_t sub_18E3638(uint64_t a1)
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

  if (a1 != &off_278A828 && *(a1 + 48))
  {
    sub_16E4E08();
    operator delete();
  }

  if (*(a1 + 8))
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_13B5A00((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18E36FC(uint64_t a1)
{
  sub_18E3638(a1);

  operator delete();
}

unsigned __int8 *sub_18E3734(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_17A82BC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  if (v1[16])
  {
    result = sub_16E4E44(*(v1 + 6));
  }

  v6 = v1[8];
  v5 = v1 + 8;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_18E37C4(uint64_t a1, char *a2, int32x2_t *a3)
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
        v15 = v6 - 1;
        while (1)
        {
          v16 = (v15 + 1);
          v25 = v15 + 1;
          v17 = *(a1 + 40);
          if (v17 && (v18 = *(a1 + 32), v18 < *v17))
          {
            *(a1 + 32) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = sub_191BA60(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = v25;
          }

          v15 = sub_2201310(a3, v19, v16);
          v25 = v15;
          if (!v15)
          {
            return 0;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_35;
          }
        }
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 48);
      if (!v21)
      {
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v21 = sub_16F5828(v23);
        *(a1 + 48) = v21;
        v6 = v25;
      }

      v14 = sub_21F4D60(a3, v21, v6);
      goto LABEL_34;
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
LABEL_34:
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

char *sub_18E39A8(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
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

    v4 = sub_16E5070(v6, v8, a3);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v11 = *(*(a1 + 40) + 8 * i + 8);
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

      v4 = sub_1917694(v11, v13, a3);
    }
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v17)
  {
    v19 = v17;
    memcpy(v4, v18, v17);
    v4 += v19;
    return v4;
  }

  return sub_1957130(a3, v18, v17, v4);
}

uint64_t sub_18E3B50(uint64_t a1)
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
      v7 = sub_1917844(v6);
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
    v8 = sub_16E51F0(*(a1 + 48));
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

void sub_18E3C2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B6038((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

      v10 = sub_16F5828(v12);
      *(a1 + 48) = v10;
      v9 = *(a2 + 48);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_277E5E8;
    }

    sub_16E527C(v10, v13);
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_18E3D3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_17A8EF8(*(*(a1 + 40) + 8 * v2));
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

  result = sub_16E5370(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18E3DB0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = off_271A9D8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1945980(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
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

void sub_18E3E90(_Unwind_Exception *a1)
{
  sub_1944100(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18E3ED4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1944100(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18E3F54(void *a1)
{
  sub_18E3ED4(a1);

  operator delete();
}

unsigned __int8 *sub_18E3F8C(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = sub_17F4878(v4);
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

char *sub_18E4008(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_186294C(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_2255BB0(a3, v16, v13);
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

char *sub_18E4198(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_17F4B7C(v8, v10, a3);
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

uint64_t sub_18E42D8(uint64_t a1)
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
      v7 = sub_17F4D18(v6);
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

void sub_18E4380(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1945980((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
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

BOOL sub_18E443C(uint64_t a1)
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

void *sub_18E44A8(void *a1, uint64_t a2)
{
  a1[1] = 0;
  *a1 = off_271AA58;
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
  return a1;
}

uint64_t sub_18E45A4(uint64_t a1)
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
  if (a1 != &off_278A890)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_1869B9C(v6);
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

void sub_18E465C(uint64_t a1)
{
  sub_18E45A4(a1);

  operator delete();
}

unsigned __int8 *sub_18E4694(unsigned __int8 *result)
{
  v1 = result;
  if (result[16])
  {
    result = sub_1869C8C(*(result + 3));
  }

  v3 = v1[8];
  v2 = v1 + 8;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_18E46F0(uint64_t a1, char *a2, int32x2_t *a3)
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

        v14 = sub_18FF354(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_2201670(a3, v14, v6);
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

char *sub_18E4834(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_1869F58(v6, v8, a3);
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

uint64_t sub_18E4940(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_186A16C(*(a1 + 24));
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

BOOL sub_18E49C0(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  v1 = *(a1 + 24);
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

uint64_t sub_18E4A0C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_271AAD8;
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

void sub_18E4A88(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18E4AB8(void *a1)
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

void sub_18E4B2C(void *a1)
{
  sub_18E4AB8(a1);

  operator delete();
}

uint64_t sub_18E4B64(uint64_t a1)
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

char *sub_18E4B7C(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_18E4D00(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

uint64_t sub_18E4DE0(uint64_t a1)
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

void *sub_18E4E30(void *a1, uint64_t a2)
{
  a1[1] = 0;
  *a1 = off_271AB58;
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
  return a1;
}

uint64_t sub_18E4F2C(uint64_t a1)
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
  if (a1 != &off_278A8D0)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_18E4AB8(v6);
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

void sub_18E4FE4(uint64_t a1)
{
  sub_18E4F2C(a1);

  operator delete();
}

uint64_t sub_18E501C(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    v2 = *(result + 24);
    v3 = *(v2 + 8);
    result = v2 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v3)
    {
      result = sub_1957EA8(result);
    }
  }

  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

char *sub_18E5088(uint64_t a1, char *a2, int32x2_t *a3)
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

        v14 = sub_190590C(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_2255C40(a3, v14, v6);
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

char *sub_18E51CC(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_18E4D00(v6, v8, a3);
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

uint64_t sub_18E52D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    v3 = 2 * (*(v2 + 16) & 1);
    v4 = *(v2 + 8);
    if (v4)
    {
      v9 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      v10 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v10 < 0)
      {
        v10 = *(v9 + 16);
      }

      v3 += v10;
    }

    *(v2 + 20) = v3;
    v1 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

std::string *sub_18E5368(std::string *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 16))
  {
    v4 = *(a2 + 24);
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

      data = sub_190590C(v7);
      v3[1].__r_.__value_.__r.__words[0] = data;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_278A8B0;
    }

    result = sub_140C624(data, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_18E5428(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_271ABD8;
  *(a1 + 16) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    sub_1957EF4((a1 + 8), (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_18E5494(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18E54C4(void *a1)
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

void sub_18E5538(void *a1)
{
  sub_18E54C4(a1);

  operator delete();
}

uint64_t *sub_18E5570(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_18E5580(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_18E5614(uint64_t a1)
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

std::string *sub_18E5640(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_18E5674(void *a1, uint64_t a2)
{
  a1[1] = 0;
  *a1 = off_271AC58;
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
  return a1;
}

uint64_t sub_18E5770(uint64_t a1)
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
  if (a1 != &off_278A908)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_1812EE8(v6);
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

void sub_18E5828(uint64_t a1)
{
  sub_18E5770(a1);

  operator delete();
}

uint64_t sub_18E5860(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_1813018(*(result + 24));
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

char *sub_18E58BC(uint64_t a1, char *a2, int32x2_t *a3)
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

        v14 = sub_1862ABC(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_21FC6A0(a3, v14, v6);
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

char *sub_18E5A00(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_1813974(v6, v8, a3);
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

  if ((*a3 - v4) >= v12)
  {
    v14 = v12;
    memcpy(v4, v13, v12);
    v4 += v14;
    return v4;
  }

  return sub_1957130(a3, v13, v12, v4);
}

uint64_t sub_18E5B0C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_18141A8(*(a1 + 24));
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

void sub_18E5B8C(uint64_t a1, uint64_t a2)
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

      v5 = sub_1862ABC(v7);
      *(a1 + 24) = v5;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_2785600;
    }

    sub_1814564(v5, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_18E5C34(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_181489C(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18E5C74(uint64_t a1)
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

  if (a1 != &off_278A928)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_17F4780(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_17F3D00(v6);
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

void sub_18E5D44(uint64_t a1)
{
  sub_18E5C74(a1);

  operator delete();
}

uint64_t sub_18E5D7C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_17F4878(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_17F3E48(*(v1 + 32));
    }
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

char *sub_18E5DEC(uint64_t a1, char *a2, int32x2_t *a3)
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

          v15 = sub_18628F0(v17);
          *(a1 + 32) = v15;
          v6 = v22;
        }

        v14 = sub_2254188(a3, v15, v6);
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

        v18 = sub_186294C(v20);
        *(a1 + 24) = v18;
        v6 = v22;
      }

      v14 = sub_2255BB0(a3, v18, v6);
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

char *sub_18E5F94(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_17F4B7C(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 32);
    *v4 = 18;
    v11 = *(v10 + 44);
    v4[1] = v11;
    if (v11 > 0x7F)
    {
      v12 = sub_19575D0(v11, v4 + 1);
    }

    else
    {
      v12 = v4 + 2;
    }

    v4 = sub_17F41AC(v10, v12, a3);
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

uint64_t sub_18E6110(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_17F4D18(*(a1 + 24));
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
    v5 = sub_17F439C(*(a1 + 32));
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

void sub_18E61E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
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

        v5 = sub_186294C(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2784E80;
      }

      sub_17F4E34(v5, v8);
    }

    if ((v4 & 2) != 0)
    {
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

        v9 = sub_18628F0(v11);
        *(a1 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_2784E30;
      }

      sub_17F4500(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_18E62E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_195228C(*(a1 + 24) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = sub_17F4688(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18E6344(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = off_271AD58;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1945A0C(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
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

void sub_18E6424(_Unwind_Exception *a1)
{
  sub_1944184(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18E6468(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1944184(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18E64E8(void *a1)
{
  sub_18E6468(a1);

  operator delete();
}

uint64_t sub_18E6520(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_18E5D7C(v4);
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

char *sub_18E659C(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_1905AF0(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_2255D84(a3, v16, v13);
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

char *sub_18E672C(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_18E5F94(v8, v10, a3);
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

  if ((*a3 - __dst) >= v14)
  {
    v16 = v14;
    memcpy(__dst, v15, v14);
    __dst += v16;
    return __dst;
  }

  return sub_1957130(a3, v15, v14, __dst);
}

uint64_t sub_18E686C(uint64_t a1)
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
      v7 = sub_18E6110(v6);
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

void sub_18E6914(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1945A0C((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
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

BOOL sub_18E69D0(uint64_t a1)
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
    v5 = sub_18E62E4(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_18E6A38(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_271ADD8;
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
    sub_1945A98((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

uint64_t sub_18E6BBC(uint64_t a1)
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
  if (a1 != &off_278A980)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_154CF7C(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1944208((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18E6C80(uint64_t a1)
{
  sub_18E6BBC(a1);

  operator delete();
}

uint64_t sub_18E6CB8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_18E7460(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_14CC674(*(v1 + 48));
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

char *sub_18E6D48(uint64_t a1, char *a2, int32x2_t *a3)
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

          sub_1552584(v17);
          v15 = v18;
          *(a1 + 48) = v18;
          v6 = v26;
        }

        v14 = sub_220B2F8(a3, v15, v6);
        goto LABEL_25;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      v19 = v6 - 1;
      while (1)
      {
        v20 = (v19 + 1);
        v26 = v19 + 1;
        v21 = *(a1 + 40);
        if (v21 && (v22 = *(a1 + 32), v22 < *v21))
        {
          *(a1 + 32) = v22 + 1;
          v23 = *&v21[2 * v22 + 2];
        }

        else
        {
          v24 = sub_1905CA8(*(a1 + 24));
          v23 = sub_19593CC(a1 + 24, v24);
          v20 = v26;
        }

        v19 = sub_2255E14(a3, v23, v20);
        v26 = v19;
        if (!v19)
        {
          return 0;
        }

        if (*a3 <= v19 || *v19 != 10)
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
        return v26;
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
      v6 = v26;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_25:
    v26 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_35:
    ;
  }

  return v26;
}

char *sub_18E6F2C(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_18E7600(v8, v10, a3);
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
    v12 = *(v11 + 20);
    __dst[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, __dst + 1);
    }

    else
    {
      v13 = __dst + 2;
    }

    __dst = sub_154D580(v11, v13, a3);
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

  if (*a3 - __dst >= v17)
  {
    v19 = v17;
    memcpy(__dst, v18, v17);
    __dst += v19;
    return __dst;
  }

  return sub_1957130(a3, v18, v17, __dst);
}

uint64_t sub_18E70D4(uint64_t a1)
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
      v7 = sub_18E770C(v6);
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
    v8 = sub_154DABC(*(a1 + 48));
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

void sub_18E71B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1945A98((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

      sub_1552584(v12);
      *(a1 + 48) = v10;
      v9 = *(a2 + 48);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_2776FB8;
    }

    sub_14D0028(v10, v13);
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_18E72C0(uint64_t a1)
{
  result = sub_18E7304(a1 + 24);
  if (result)
  {
    if ((*(a1 + 16) & 1) == 0)
    {
      return 1;
    }

    result = sub_14D0578(*(a1 + 48));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_18E7304(uint64_t a1)
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
      result = sub_14D0578(*(v3 + 24));
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

uint64_t sub_18E7370(uint64_t a1)
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
  if (a1 != &off_278A9B8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_154CF7C(v6);
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

void sub_18E7428(uint64_t a1)
{
  sub_18E7370(a1);

  operator delete();
}

uint64_t sub_18E7460(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_14CC674(*(result + 24));
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

char *sub_18E74BC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v19, i) & 1) == 0; i = a3[11].i32[1])
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

        sub_1552584(v16);
        v14 = v17;
        *(a1 + 24) = v17;
        v6 = v19;
      }

      v13 = sub_220B2F8(a3, v14, v6);
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
          return v19;
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
        v6 = v19;
      }

      v13 = sub_1952690(v7, v12, v6, a3);
    }

    v19 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v19;
}

char *sub_18E7600(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_154D580(v6, v8, a3);
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

uint64_t sub_18E770C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_154DABC(*(a1 + 24));
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

void sub_18E778C(uint64_t a1, uint64_t a2)
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

      sub_1552584(v7);
      *(a1 + 24) = v5;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_2776FB8;
    }

    sub_14D0028(v5, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_18E7834(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_14D0578(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18E7874(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = off_271AED8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1945B24(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
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

void sub_18E7954(_Unwind_Exception *a1)
{
  sub_194428C(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18E7998(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_194428C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18E7A18(void *a1)
{
  sub_18E7998(a1);

  operator delete();
}

uint64_t sub_18E7A50(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_18E8008(v4);
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

char *sub_18E7ACC(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_1905DC0(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_2255EA4(a3, v16, v13);
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

char *sub_18E7C5C(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_18E81A8(v8, v10, a3);
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

uint64_t sub_18E7D9C(uint64_t a1)
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
      v7 = sub_18E82B4(v6);
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

void sub_18E7E44(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1945B24((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
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

uint64_t sub_18E7F18(uint64_t a1)
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
  if (a1 != &off_278AA08)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_154CF7C(v6);
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

void sub_18E7FD0(uint64_t a1)
{
  sub_18E7F18(a1);

  operator delete();
}

uint64_t sub_18E8008(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_14CC674(*(result + 24));
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

char *sub_18E8064(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v19, i) & 1) == 0; i = a3[11].i32[1])
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

        sub_1552584(v16);
        v14 = v17;
        *(a1 + 24) = v17;
        v6 = v19;
      }

      v13 = sub_220B2F8(a3, v14, v6);
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
          return v19;
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
        v6 = v19;
      }

      v13 = sub_1952690(v7, v12, v6, a3);
    }

    v19 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v19;
}

char *sub_18E81A8(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_154D580(v6, v8, a3);
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

uint64_t sub_18E82B4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_154DABC(*(a1 + 24));
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

uint64_t sub_18E8334(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_14D0578(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18E8374(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_271AFD8;
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
    sub_1945BA0((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

uint64_t sub_18E8500(uint64_t a1)
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
  if (a1 != &off_278AA28)
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
  sub_1944310((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18E85C4(uint64_t a1)
{
  sub_18E8500(a1);

  operator delete();
}

uint64_t sub_18E85FC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_17D0AA0(v4);
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

char *sub_18E8690(uint64_t a1, char *a2, int32x2_t *a3)
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

    v5 |= 2u;
    v24 = v7 + 1;
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_34:
      v31 = v24;
      *(a1 + 56) = v23 != 0;
      goto LABEL_41;
    }

    v29 = sub_19587DC(v7, v23);
    v31 = v29;
    *(a1 + 56) = v30 != 0;
    if (!v29)
    {
      goto LABEL_48;
    }

LABEL_41:
    if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2)
  {
    if (v8 == 18)
    {
      v17 = v7 - 1;
      while (1)
      {
        v18 = (v17 + 1);
        v31 = v17 + 1;
        v19 = *(a1 + 40);
        if (v19 && (v20 = *(a1 + 32), v20 < *v19))
        {
          *(a1 + 32) = v20 + 1;
          v21 = *&v19[2 * v20 + 2];
        }

        else
        {
          v22 = sub_18605C8(*(a1 + 24));
          v21 = sub_19593CC(a1 + 24, v22);
          v18 = v31;
        }

        v17 = sub_22493D4(a3, v21, v18);
        v31 = v17;
        if (!v17)
        {
          goto LABEL_48;
        }

        if (*a3 <= v17 || *v17 != 18)
        {
          goto LABEL_41;
        }
      }
    }
  }

  else if (v11 == 1 && v8 == 10)
  {
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

      v26 = sub_191BA60(v28);
      *(a1 + 48) = v26;
      v7 = v31;
    }

    v16 = sub_2201310(a3, v26, v7);
LABEL_40:
    v31 = v16;
    if (!v16)
    {
      goto LABEL_48;
    }

    goto LABEL_41;
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

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_48:
  v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

char *sub_18E890C(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_1917694(v7, v9, a3);
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

      v4 = sub_17D10A0(v12, v14, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v15 = *(a1 + 56);
    *v4 = 24;
    v4[1] = v15;
    v4 += 2;
  }

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

uint64_t sub_18E8AEC(uint64_t a1)
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
      v7 = sub_17D13B0(v6);
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
      v9 = sub_1917844(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v8 & 2;
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

    v2 += v13;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_18E8BD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1945BA0((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

uint64_t sub_18E8D04(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_195228C(*(*(a1 + 40) + 8 * v2) + 16);
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

  result = sub_17A8EF8(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18E8D7C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_271B058;
  *(a1 + 16) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    sub_1957EF4((a1 + 8), (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_18E8DE8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18E8E18(void *a1)
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

void sub_18E8E8C(void *a1)
{
  sub_18E8E18(a1);

  operator delete();
}

uint64_t *sub_18E8EC4(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_18E8ED4(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_18E8F68(uint64_t a1)
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

std::string *sub_18E8F94(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_18E8FC8(void *a1, uint64_t a2)
{
  a1[1] = 0;
  *a1 = off_271B0D8;
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
  return a1;
}

uint64_t sub_18E90C4(uint64_t a1)
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
  if (a1 != &off_278AA80)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_16E5B34(v6);
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

void sub_18E917C(uint64_t a1)
{
  sub_18E90C4(a1);

  operator delete();
}

unsigned __int8 *sub_18E91B4(unsigned __int8 *result)
{
  v1 = result;
  if (result[16])
  {
    result = sub_16E5B70(*(result + 3));
  }

  v3 = v1[8];
  v2 = v1 + 8;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_18E9210(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v19, i) & 1) == 0; i = a3[11].i32[1])
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

        sub_16F58FC(v16);
        v14 = v17;
        *(a1 + 24) = v17;
        v6 = v19;
      }

      v13 = sub_21F86E8(a3, v14, v6);
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
          return v19;
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
        v6 = v19;
      }

      v13 = sub_1952690(v7, v12, v6, a3);
    }

    v19 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v19;
}

char *sub_18E9354(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_16E5FE0(v6, v8, a3);
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

uint64_t sub_18E9460(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_16E62F4(*(a1 + 24));
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

void sub_18E94E0(uint64_t a1, uint64_t a2)
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

      sub_16F58FC(v7);
      *(a1 + 24) = v5;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_277E650;
    }

    sub_16E645C(v5, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_18E9588(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E6614(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_18E95C8(void *a1, uint64_t a2)
{
  a1[1] = 0;
  *a1 = off_271B158;
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
  return a1;
}

uint64_t sub_18E96C4(uint64_t a1)
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

  if (a1 != &off_278AAA0 && *(a1 + 24))
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

void sub_18E977C(uint64_t a1)
{
  sub_18E96C4(a1);

  operator delete();
}

uint64_t sub_18E97B4(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_16E72AC(*(result + 24));
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

char *sub_18E9810(uint64_t a1, char *a2, int32x2_t *a3)
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

        v14 = sub_16F5A54(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_22002C0(a3, v14, v6);
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

char *sub_18E9954(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_16E74A8(v6, v8, a3);
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

  if ((*a3 - v4) >= v12)
  {
    v14 = v12;
    memcpy(v4, v13, v12);
    v4 += v14;
    return v4;
  }

  return sub_1957130(a3, v13, v12, v4);
}

uint64_t sub_18E9A60(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_16E7590(*(a1 + 24));
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

std::string *sub_18E9AE0(std::string *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 16))
  {
    v4 = *(a2 + 24);
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

      data = sub_16F5A54(v7);
      v3[1].__r_.__value_.__r.__words[0] = data;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_277E6F0;
    }

    result = sub_12F5A34(data, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_18E9BA0(void *a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  a1[1] = v4;
  *a1 = off_271B1D8;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = &qword_278E990;
  a1[7] = 0;
  return a1;
}

void sub_18E9C10(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18E9C40(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_271B1D8;
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

  if ((v7 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  return a1;
}

uint64_t sub_18E9DA4(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_278AAC0)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      sub_1824B28(v6);
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

void sub_18E9E78(uint64_t a1)
{
  sub_18E9DA4(a1);

  operator delete();
}

uint64_t sub_18E9EB0(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if ((v3 & 3) != 0)
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_5;
    }

    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v4 + 23) & 0x80000000) == 0)
    {
      *v4 = 0;
      *(v4 + 23) = 0;
LABEL_5:
      if ((v3 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v3 & 2) != 0)
    {
LABEL_6:
      result = sub_17F9DD0(*(a1 + 56));
    }
  }

LABEL_7:
  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 32) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

uint64_t sub_18E9F4C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v21 = a2;
  if (sub_195ADC0(a3, v21, a3[11].i32[1]))
  {
    return *v21;
  }

  while (1)
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

      v13 = sub_1863600(v15);
      *(a1 + 56) = v13;
      v6 = *v21;
    }

    v12 = sub_22497C4(a3, v13, v6);
LABEL_30:
    *v21 = v12;
    if (!v12)
    {
      goto LABEL_36;
    }

    if (sub_195ADC0(a3, v21, a3[11].i32[1]))
    {
      return *v21;
    }
  }

  if (v7 >> 3 == 1 && v7 == 10)
  {
    *(a1 + 40) |= 1u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v18 = sub_194DB04((a1 + 48), v17);
    v12 = sub_1958890(v18, *v21, a3);
    goto LABEL_30;
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
    if (v7 - 800 > 0x31F)
    {
      v19 = *(a1 + 8);
      if (v19)
      {
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v20 = sub_11F1920((a1 + 8));
        v6 = *v21;
      }

      v12 = sub_1952690(v7, v20, v6, a3);
    }

    else
    {
      v12 = sub_19525AC((a1 + 16), v7, v6, &off_278AAC0, (a1 + 8), a3);
    }

    goto LABEL_30;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v21;
  }

LABEL_36:
  *v21 = 0;
  return *v21;
}

char *sub_18EA12C(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, a2);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v7 = *(a1 + 56);
    *v4 = 18;
    v8 = *(v7 + 112);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_1824F5C(v7, v9, a3);
  }

  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 100, 200, v4, a3);
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

uint64_t sub_18EA27C(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = v2;
  v4 = *(a1 + 40);
  if ((v4 & 3) != 0)
  {
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
    }

    if ((v4 & 2) != 0)
    {
      v8 = sub_18251DC(*(a1 + 56));
      v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

    v3 += v12;
  }

  *(a1 + 44) = v3;
  return v3;
}

void sub_18EA354(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 3) != 0)
  {
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
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 40) |= 2u;
      v8 = *(a1 + 56);
      if (!v8)
      {
        v9 = *(a1 + 8);
        v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
        if (v9)
        {
          v10 = *v10;
        }

        v8 = sub_1863600(v10);
        *(a1 + 56) = v8;
      }

      if (*(a2 + 56))
      {
        v11 = *(a2 + 56);
      }

      else
      {
        v11 = &off_2785FC8;
      }

      sub_1805A44(v8, v11);
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_18EA44C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 40) & 2) == 0)
    {
      return 1;
    }

    result = sub_195228C(*(a1 + 56) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_18EA4A4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_271B258;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  return a1;
}

void sub_18EA508(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18EA538(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a1 + 16;
  *a1 = off_271B258;
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

void sub_18EA5CC(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18EA608(void *a1)
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

void sub_18EA684(void *a1)
{
  sub_18EA608(a1);

  operator delete();
}

unsigned __int8 *sub_18EA6BC(uint64_t a1)
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

char *sub_18EA70C(uint64_t a1, char *a2, int32x2_t *a3)
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
        v10 = sub_19525AC((a1 + 16), v6, v5, &off_278AB00, (a1 + 8), a3);
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

char *sub_18EA844(uint64_t a1, char *a2, _DWORD *a3)
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

uint64_t sub_18EA90C(uint64_t a1)
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

uint64_t sub_18EA974(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_271B2D8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 552) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
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
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  return a1;
}

void sub_18EAA40(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18EAA70(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a1 + 16;
  *a1 = off_271B2D8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = 0;
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

  *(a1 + 56) = 0;
  if ((v6 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 64) = 0;
  if ((v6 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 72) = 0;
  if ((v6 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  if ((v6 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 88) = 0;
  if ((v6 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 96) = 0;
  if ((v6 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 104) = 0;
  if ((v6 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 112) = 0;
  if ((v6 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 120) = 0;
  if ((v6 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 128) = 0;
  if ((v6 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 136) = 0;
  if ((v6 & 0x800) != 0)
  {
    operator new();
  }

  *(a1 + 144) = 0;
  if ((v6 & 0x1000) != 0)
  {
    operator new();
  }

  *(a1 + 152) = 0;
  if ((v6 & 0x2000) != 0)
  {
    operator new();
  }

  *(a1 + 160) = 0;
  if ((v6 & 0x4000) != 0)
  {
    operator new();
  }

  *(a1 + 168) = 0;
  if ((v6 & 0x8000) != 0)
  {
    operator new();
  }

  *(a1 + 176) = 0;
  if ((v6 & 0x10000) != 0)
  {
    operator new();
  }

  *(a1 + 184) = 0;
  if ((v6 & 0x20000) != 0)
  {
    operator new();
  }

  *(a1 + 192) = 0;
  if ((v6 & 0x40000) != 0)
  {
    operator new();
  }

  *(a1 + 200) = 0;
  if ((v6 & 0x80000) != 0)
  {
    operator new();
  }

  *(a1 + 208) = 0;
  if ((v6 & 0x100000) != 0)
  {
    operator new();
  }

  *(a1 + 216) = 0;
  if ((v6 & 0x200000) != 0)
  {
    operator new();
  }

  *(a1 + 224) = 0;
  if ((v6 & 0x400000) != 0)
  {
    operator new();
  }

  *(a1 + 232) = 0;
  if ((v6 & 0x800000) != 0)
  {
    operator new();
  }

  *(a1 + 240) = 0;
  if ((v6 & 0x1000000) != 0)
  {
    operator new();
  }

  *(a1 + 248) = 0;
  if ((v6 & 0x2000000) != 0)
  {
    operator new();
  }

  *(a1 + 256) = 0;
  if ((v6 & 0x4000000) != 0)
  {
    operator new();
  }

  *(a1 + 264) = 0;
  if ((v6 & 0x8000000) != 0)
  {
    operator new();
  }

  *(a1 + 272) = 0;
  if ((v6 & 0x10000000) != 0)
  {
    operator new();
  }

  *(a1 + 280) = 0;
  if ((v6 & 0x20000000) != 0)
  {
    operator new();
  }

  *(a1 + 288) = 0;
  if ((v6 & 0x40000000) != 0)
  {
    operator new();
  }

  *(a1 + 296) = 0;
  if (v6 < 0)
  {
    operator new();
  }

  *(a1 + 304) = 0;
  v7 = *(a2 + 44);
  if (v7)
  {
    operator new();
  }

  *(a1 + 312) = 0;
  if ((v7 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 320) = 0;
  if ((v7 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 328) = 0;
  if ((v7 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 336) = 0;
  if ((v7 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 344) = 0;
  if ((v7 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 352) = 0;
  if ((v7 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 360) = 0;
  if ((v7 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 368) = 0;
  if ((v7 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 376) = 0;
  if ((v7 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 384) = 0;
  if ((v7 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 392) = 0;
  if ((v7 & 0x800) != 0)
  {
    operator new();
  }

  *(a1 + 400) = 0;
  if ((v7 & 0x1000) != 0)
  {
    operator new();
  }

  *(a1 + 408) = 0;
  if ((v7 & 0x2000) != 0)
  {
    operator new();
  }

  *(a1 + 416) = 0;
  if ((v7 & 0x4000) != 0)
  {
    operator new();
  }

  *(a1 + 424) = 0;
  if ((v7 & 0x8000) != 0)
  {
    operator new();
  }

  *(a1 + 432) = 0;
  if ((v7 & 0x10000) != 0)
  {
    operator new();
  }

  *(a1 + 440) = 0;
  if ((v7 & 0x20000) != 0)
  {
    operator new();
  }

  *(a1 + 448) = 0;
  if ((v7 & 0x40000) != 0)
  {
    operator new();
  }

  *(a1 + 456) = 0;
  if ((v7 & 0x80000) != 0)
  {
    operator new();
  }

  *(a1 + 464) = 0;
  if ((v7 & 0x100000) != 0)
  {
    operator new();
  }

  *(a1 + 472) = 0;
  if ((v7 & 0x200000) != 0)
  {
    operator new();
  }

  *(a1 + 480) = 0;
  if ((v7 & 0x400000) != 0)
  {
    operator new();
  }

  *(a1 + 488) = 0;
  if ((v7 & 0x800000) != 0)
  {
    operator new();
  }

  *(a1 + 496) = 0;
  if ((v7 & 0x1000000) != 0)
  {
    operator new();
  }

  *(a1 + 504) = 0;
  if ((v7 & 0x2000000) != 0)
  {
    operator new();
  }

  *(a1 + 512) = 0;
  if ((v7 & 0x4000000) != 0)
  {
    operator new();
  }

  *(a1 + 520) = 0;
  if ((v7 & 0x8000000) != 0)
  {
    operator new();
  }

  *(a1 + 528) = 0;
  if ((v7 & 0x10000000) != 0)
  {
    operator new();
  }

  *(a1 + 536) = 0;
  if ((v7 & 0x20000000) != 0)
  {
    operator new();
  }

  *(a1 + 544) = 0;
  if ((v7 & 0x40000000) != 0)
  {
    operator new();
  }

  *(a1 + 552) = 0;
  return a1;
}

void *sub_18EBC70(void *a1)
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

  sub_18EBCFC(a1);
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

uint64_t sub_18EBCFC(uint64_t result)
{
  if (result != &off_278AB30)
  {
    v1 = result;
    v2 = *(result + 56);
    if (v2)
    {
      sub_186CC88(v2);
      operator delete();
    }

    v3 = v1[8];
    if (v3)
    {
      sub_18A3C04(v3);
      operator delete();
    }

    v4 = v1[9];
    if (v4)
    {
      sub_18A3304(v4);
      operator delete();
    }

    v5 = v1[10];
    if (v5)
    {
      sub_18A66F8(v5);
      operator delete();
    }

    v6 = v1[11];
    if (v6)
    {
      sub_18A78E8(v6);
      operator delete();
    }

    v7 = v1[12];
    if (v7)
    {
      sub_18B2EA4(v7);
      operator delete();
    }

    v8 = v1[13];
    if (v8)
    {
      sub_18ACDB8(v8);
      operator delete();
    }

    v9 = v1[14];
    if (v9)
    {
      sub_18BB320(v9);
      operator delete();
    }

    v10 = v1[15];
    if (v10)
    {
      sub_18BDC44(v10);
      operator delete();
    }

    v11 = v1[16];
    if (v11)
    {
      sub_18D4FDC(v11);
      operator delete();
    }

    v12 = v1[17];
    if (v12)
    {
      sub_1875C18(v12);
      operator delete();
    }

    v13 = v1[18];
    if (v13)
    {
      sub_1898F2C(v13);
      operator delete();
    }

    v14 = v1[19];
    if (v14)
    {
      sub_189F008(v14);
      operator delete();
    }

    v15 = v1[20];
    if (v15)
    {
      sub_1895720(v15);
      operator delete();
    }

    v16 = v1[21];
    if (v16)
    {
      sub_18A232C(v16);
      operator delete();
    }

    v17 = v1[22];
    if (v17)
    {
      sub_18A0394(v17);
      operator delete();
    }

    v18 = v1[23];
    if (v18)
    {
      sub_18B1510(v18);
      operator delete();
    }

    v19 = v1[24];
    if (v19)
    {
      sub_18C0228(v19);
      operator delete();
    }

    v20 = v1[25];
    if (v20)
    {
      sub_18A54E8(v20);
      operator delete();
    }

    v21 = v1[26];
    if (v21)
    {
      sub_189730C(v21);
      operator delete();
    }

    v22 = v1[27];
    if (v22)
    {
      sub_18B8E4C(v22);
      operator delete();
    }

    v23 = v1[28];
    if (v23)
    {
      sub_18C129C(v23);
      operator delete();
    }

    v24 = v1[29];
    if (v24)
    {
      sub_18A9950(v24);
      operator delete();
    }

    v25 = v1[30];
    if (v25)
    {
      sub_18C2384(v25);
      operator delete();
    }

    v26 = v1[31];
    if (v26)
    {
      sub_18D6F50(v26);
      operator delete();
    }

    v27 = v1[32];
    if (v27)
    {
      sub_18D7B94(v27);
      operator delete();
    }

    v28 = v1[33];
    if (v28)
    {
      sub_18C308C(v28);
      operator delete();
    }

    v29 = v1[34];
    if (v29)
    {
      sub_18C3DDC(v29);
      operator delete();
    }

    v30 = v1[35];
    if (v30)
    {
      sub_18D8694(v30);
      operator delete();
    }

    v31 = v1[36];
    if (v31)
    {
      sub_18C4C60(v31);
      operator delete();
    }

    v32 = v1[37];
    if (v32)
    {
      sub_18DDCAC(v32);
      operator delete();
    }

    v33 = v1[38];
    if (v33)
    {
      sub_18DE75C(v33);
      operator delete();
    }

    v34 = v1[39];
    if (v34)
    {
      sub_18DEF88(v34);
      operator delete();
    }

    v35 = v1[40];
    if (v35)
    {
      sub_18E002C(v35);
      operator delete();
    }

    v36 = v1[41];
    if (v36)
    {
      sub_18E0A9C(v36);
      operator delete();
    }

    v37 = v1[42];
    if (v37)
    {
      sub_18E303C(v37);
      operator delete();
    }

    v38 = v1[43];
    if (v38)
    {
      sub_18E3638(v38);
      operator delete();
    }

    v39 = v1[44];
    if (v39)
    {
      sub_14183E4(v39);
      operator delete();
    }

    v40 = v1[45];
    if (v40)
    {
      sub_18E3ED4(v40);
      operator delete();
    }

    v41 = v1[46];
    if (v41)
    {
      sub_18D8DB4(v41);
      operator delete();
    }

    v42 = v1[47];
    if (v42)
    {
      sub_18DC068(v42);
      operator delete();
    }

    v43 = v1[48];
    if (v43)
    {
      sub_1877D34(v43);
      operator delete();
    }

    v44 = v1[49];
    if (v44)
    {
      sub_18816F8(v44);
      operator delete();
    }

    v45 = v1[50];
    if (v45)
    {
      sub_174AD00(v45);
      operator delete();
    }

    v46 = v1[51];
    if (v46)
    {
      sub_187ECF8(v46);
      operator delete();
    }

    v47 = v1[52];
    if (v47)
    {
      sub_187C150(v47);
      operator delete();
    }

    v48 = v1[53];
    if (v48)
    {
      sub_18AE514(v48);
      operator delete();
    }

    v49 = v1[54];
    if (v49)
    {
      sub_18AF1B4(v49);
      operator delete();
    }

    v50 = v1[55];
    if (v50)
    {
      sub_18E6BBC(v50);
      operator delete();
    }

    v51 = v1[56];
    if (v51)
    {
      sub_188A8C8(v51);
      operator delete();
    }

    v52 = v1[57];
    if (v52)
    {
      sub_1883F18(v52);
      operator delete();
    }

    v53 = v1[58];
    if (v53)
    {
      sub_1886F14(v53);
      operator delete();
    }

    v54 = v1[59];
    if (v54)
    {
      sub_18AFBFC(v54);
      operator delete();
    }

    v55 = v1[60];
    if (v55)
    {
      sub_188D380(v55);
      operator delete();
    }

    v56 = v1[61];
    if (v56)
    {
      sub_18A8EA8(v56);
      operator delete();
    }

    v57 = v1[62];
    if (v57)
    {
      sub_18E7998(v57);
      operator delete();
    }

    v58 = v1[63];
    if (v58)
    {
      sub_18E8500(v58);
      operator delete();
    }

    v59 = v1[64];
    if (v59)
    {
      sub_18E90C4(v59);
      operator delete();
    }

    v60 = v1[65];
    if (v60)
    {
      sub_18E45A4(v60);
      operator delete();
    }

    v61 = v1[66];
    if (v61)
    {
      sub_18A84E8(v61);
      operator delete();
    }

    v62 = v1[67];
    if (v62)
    {
      sub_18E9DA4(v62);
      operator delete();
    }

    v63 = v1[68];
    if (v63)
    {
      sub_18AA648(v63);
      operator delete();
    }

    result = v1[69];
    if (result)
    {
      sub_18AB5E4(result);

      operator delete();
    }
  }

  return result;
}

void sub_18EC4B8(void *a1)
{
  sub_18EBC70(a1);

  operator delete();
}

uint64_t sub_18EC4F0(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    result = sub_186D050(*(a1 + 56));
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_48;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_18A3DAC(*(a1 + 64));
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = sub_18A33DC(*(a1 + 72));
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = sub_18A67C4(*(a1 + 80));
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_51:
    result = sub_18B30F4(*(a1 + 96));
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_52;
  }

LABEL_50:
  result = sub_18A79E8(*(a1 + 88));
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_51;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_52:
  result = sub_18ACF54(*(a1 + 104));
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = sub_18BB4E8(*(a1 + 112));
  }

LABEL_11:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v3 & 0x100) != 0)
  {
    result = sub_18BDE0C(*(a1 + 120));
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_56;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = sub_18D5250(*(a1 + 128));
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = sub_1875DB0(*(a1 + 136));
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = sub_18991E0(*(a1 + 144));
  if ((v3 & 0x1000) == 0)
  {
LABEL_17:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = sub_189F10C(*(a1 + 152));
  if ((v3 & 0x2000) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = sub_1895828(*(a1 + 160));
  if ((v3 & 0x4000) == 0)
  {
LABEL_19:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_60:
  result = sub_18A241C(*(a1 + 168));
  if ((v3 & 0x8000) != 0)
  {
LABEL_20:
    result = sub_18A048C(*(a1 + 176));
  }

LABEL_21:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v3 & 0x10000) != 0)
  {
    result = sub_18B16B4(*(a1 + 184));
    if ((v3 & 0x20000) == 0)
    {
LABEL_24:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_64;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  result = sub_18C0330(*(a1 + 192));
  if ((v3 & 0x40000) == 0)
  {
LABEL_25:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = sub_18A55F4(*(a1 + 200));
  if ((v3 & 0x80000) == 0)
  {
LABEL_26:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = sub_18973B8(*(a1 + 208));
  if ((v3 & 0x100000) == 0)
  {
LABEL_27:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = sub_18B8F58(*(a1 + 216));
  if ((v3 & 0x200000) == 0)
  {
LABEL_28:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = sub_18C139C(*(a1 + 224));
  if ((v3 & 0x400000) == 0)
  {
LABEL_29:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_68:
  result = sub_18A9A10(*(a1 + 232));
  if ((v3 & 0x800000) != 0)
  {
LABEL_30:
    result = sub_18C2480(*(a1 + 240));
  }

LABEL_31:
  if (!HIBYTE(v3))
  {
    goto LABEL_40;
  }

  if ((v3 & 0x1000000) != 0)
  {
    result = sub_18D7010(*(a1 + 248));
    if ((v3 & 0x2000000) == 0)
    {
LABEL_34:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_142;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_34;
  }

  result = sub_18D7C58(*(a1 + 256));
  if ((v3 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_143;
  }

LABEL_142:
  result = sub_18C315C(*(a1 + 264));
  if ((v3 & 0x8000000) == 0)
  {
LABEL_36:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_144;
  }

LABEL_143:
  result = sub_18C3E94(*(a1 + 272));
  if ((v3 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_145;
  }

LABEL_144:
  result = sub_18D876C(*(a1 + 280));
  if ((v3 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_146:
    result = sub_18DDD64(*(a1 + 296));
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_147;
  }

LABEL_145:
  result = sub_18C4D18(*(a1 + 288));
  if ((v3 & 0x40000000) != 0)
  {
    goto LABEL_146;
  }

LABEL_39:
  if ((v3 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_147:
  result = sub_18DE84C(*(a1 + 304));
LABEL_40:
  v4 = *(a1 + 44);
  if (!v4)
  {
    goto LABEL_80;
  }

  if (v4)
  {
    result = sub_18DF060(*(a1 + 312));
    if ((v4 & 2) == 0)
    {
LABEL_43:
      if ((v4 & 4) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_72;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_43;
  }

  result = sub_18E011C(*(a1 + 320));
  if ((v4 & 4) == 0)
  {
LABEL_44:
    if ((v4 & 8) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_73;
  }

LABEL_72:
  result = sub_18E0B60(*(a1 + 328));
  if ((v4 & 8) == 0)
  {
    goto LABEL_75;
  }

LABEL_73:
  v5 = *(a1 + 336);
  v6 = *(v5 + 8);
  result = v5 + 8;
  *(result + 8) = 0;
  if (v6)
  {
    result = sub_1957EA8(result);
  }

LABEL_75:
  if ((v4 & 0x10) != 0)
  {
    result = sub_18E3734(*(a1 + 344));
    if ((v4 & 0x20) == 0)
    {
LABEL_77:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_115;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_77;
  }

  result = sub_1418420(*(a1 + 352));
  if ((v4 & 0x40) == 0)
  {
LABEL_78:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

LABEL_115:
  result = sub_18E3F8C(*(a1 + 360));
  if ((v4 & 0x80) != 0)
  {
LABEL_79:
    result = sub_18D8E6C(*(a1 + 368));
  }

LABEL_80:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_90;
  }

  if ((v4 & 0x100) != 0)
  {
    result = sub_18DC140(*(a1 + 376));
    if ((v4 & 0x200) == 0)
    {
LABEL_83:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_119;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_83;
  }

  result = sub_1877E44(*(a1 + 384));
  if ((v4 & 0x400) == 0)
  {
LABEL_84:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_120;
  }

LABEL_119:
  result = sub_18818C8(*(a1 + 392));
  if ((v4 & 0x800) == 0)
  {
LABEL_85:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_121;
  }

LABEL_120:
  result = sub_174AD3C(*(a1 + 400));
  if ((v4 & 0x1000) == 0)
  {
LABEL_86:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_122;
  }

LABEL_121:
  result = sub_187EE20(*(a1 + 408));
  if ((v4 & 0x2000) == 0)
  {
LABEL_87:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_123;
  }

LABEL_122:
  result = sub_187C278(*(a1 + 416));
  if ((v4 & 0x4000) == 0)
  {
LABEL_88:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

LABEL_123:
  result = sub_18AE62C(*(a1 + 424));
  if ((v4 & 0x8000) != 0)
  {
LABEL_89:
    result = sub_18AF26C(*(a1 + 432));
  }

LABEL_90:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_100;
  }

  if ((v4 & 0x10000) != 0)
  {
    result = sub_18E6CB8(*(a1 + 440));
    if ((v4 & 0x20000) == 0)
    {
LABEL_93:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_127;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_93;
  }

  result = sub_188A9B8(*(a1 + 448));
  if ((v4 & 0x40000) == 0)
  {
LABEL_94:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_128;
  }

LABEL_127:
  result = sub_1884008(*(a1 + 456));
  if ((v4 & 0x80000) == 0)
  {
LABEL_95:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_129;
  }

LABEL_128:
  result = sub_18870AC(*(a1 + 464));
  if ((v4 & 0x100000) == 0)
  {
LABEL_96:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_130;
  }

LABEL_129:
  result = sub_18AFD48(*(a1 + 472));
  if ((v4 & 0x200000) == 0)
  {
LABEL_97:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_131;
  }

LABEL_130:
  result = sub_188D4C4(*(a1 + 480));
  if ((v4 & 0x400000) == 0)
  {
LABEL_98:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

LABEL_131:
  result = sub_18A8F68(*(a1 + 488));
  if ((v4 & 0x800000) != 0)
  {
LABEL_99:
    result = sub_18E7A50(*(a1 + 496));
  }

LABEL_100:
  if ((v4 & 0x7F000000) == 0)
  {
    goto LABEL_109;
  }

  if ((v4 & 0x1000000) != 0)
  {
    result = sub_18E85FC(*(a1 + 504));
    if ((v4 & 0x2000000) == 0)
    {
LABEL_103:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_104;
      }

      goto LABEL_135;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_103;
  }

  result = sub_18E91B4(*(a1 + 512));
  if ((v4 & 0x4000000) == 0)
  {
LABEL_104:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_136;
  }

LABEL_135:
  result = sub_18E4694(*(a1 + 520));
  if ((v4 & 0x8000000) == 0)
  {
LABEL_105:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_137;
  }

LABEL_136:
  result = sub_18A85A8(*(a1 + 528));
  if ((v4 & 0x10000000) == 0)
  {
LABEL_106:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_138;
  }

LABEL_137:
  result = sub_18E9EB0(*(a1 + 536));
  if ((v4 & 0x20000000) == 0)
  {
LABEL_107:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

LABEL_138:
  result = sub_18AA75C(*(a1 + 544));
  if ((v4 & 0x40000000) != 0)
  {
LABEL_108:
    result = sub_18AB72C(*(a1 + 552));
  }

LABEL_109:
  v8 = *(a1 + 8);
  v7 = (a1 + 8);
  v7[4] = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

char *sub_18EC988(uint64_t a1, char *a2, int32x2_t *a3)
{
  v216 = a2;
  if (sub_195ADC0(a3, &v216, a3[11].i32[1]))
  {
    return v216;
  }

  while (2)
  {
    v6 = v216 + 1;
    v7 = *v216;
    if (*v216 < 0)
    {
      v7 = v7 + (*v6 << 7) - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v216, v7);
      }

      else
      {
        v6 = v216 + 2;
      }
    }

    v216 = v6;
    switch(v7 >> 3)
    {
      case 1u:
        if (v7 != 10)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 1u;
        v8 = *(a1 + 56);
        if (!v8)
        {
          v9 = *(a1 + 8);
          v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
          if (v9)
          {
            v10 = *v10;
          }

          v8 = sub_18FF57C(v10);
          *(a1 + 56) = v8;
          v6 = v216;
        }

        sub_2255FE8(a3, v8, v6);
        goto LABEL_395;
      case 2u:
        if (v7 != 18)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 2u;
        v101 = *(a1 + 64);
        if (!v101)
        {
          v102 = *(a1 + 8);
          v103 = (v102 & 0xFFFFFFFFFFFFFFFCLL);
          if (v102)
          {
            v103 = *v103;
          }

          v101 = sub_1901FAC(v103);
          *(a1 + 64) = v101;
          v6 = v216;
        }

        v11 = sub_225607C(a3, v101, v6);
        goto LABEL_395;
      case 3u:
        if (v7 != 26)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 4u;
        v78 = *(a1 + 72);
        if (!v78)
        {
          v79 = *(a1 + 8);
          v80 = (v79 & 0xFFFFFFFFFFFFFFFCLL);
          if (v79)
          {
            v80 = *v80;
          }

          v78 = sub_1901EB0(v80);
          *(a1 + 72) = v78;
          v6 = v216;
        }

        v11 = sub_225610C(a3, v78, v6);
        goto LABEL_395;
      case 4u:
        if (v7 != 34)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 8u;
        v128 = *(a1 + 80);
        if (!v128)
        {
          v129 = *(a1 + 8);
          v130 = (v129 & 0xFFFFFFFFFFFFFFFCLL);
          if (v129)
          {
            v130 = *v130;
          }

          v128 = sub_190211C(v130);
          *(a1 + 80) = v128;
          v6 = v216;
        }

        v11 = sub_225619C(a3, v128, v6);
        goto LABEL_395;
      case 5u:
        if (v7 != 42)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x10u;
        v134 = *(a1 + 88);
        if (!v134)
        {
          v135 = *(a1 + 8);
          v136 = (v135 & 0xFFFFFFFFFFFFFFFCLL);
          if (v135)
          {
            v136 = *v136;
          }

          v134 = sub_19021D4(v136);
          *(a1 + 88) = v134;
          v6 = v216;
        }

        v11 = sub_225622C(a3, v134, v6);
        goto LABEL_395;
      case 6u:
        if (v7 != 50)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x20u;
        v87 = *(a1 + 96);
        if (!v87)
        {
          v88 = *(a1 + 8);
          v89 = (v88 & 0xFFFFFFFFFFFFFFFCLL);
          if (v88)
          {
            v89 = *v89;
          }

          sub_1902CA0(v89);
          v87 = v90;
          *(a1 + 96) = v90;
          v6 = v216;
        }

        v11 = sub_22562BC(a3, v87, v6);
        goto LABEL_395;
      case 7u:
        if (v7 != 58)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x40u;
        v104 = *(a1 + 104);
        if (!v104)
        {
          v105 = *(a1 + 8);
          v106 = (v105 & 0xFFFFFFFFFFFFFFFCLL);
          if (v105)
          {
            v106 = *v106;
          }

          sub_19026F8(v106);
          v104 = v107;
          *(a1 + 104) = v107;
          v6 = v216;
        }

        v11 = sub_225634C(a3, v104, v6);
        goto LABEL_395;
      case 8u:
        if (v7 != 66)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x80u;
        v108 = *(a1 + 112);
        if (!v108)
        {
          v109 = *(a1 + 8);
          v110 = (v109 & 0xFFFFFFFFFFFFFFFCLL);
          if (v109)
          {
            v110 = *v110;
          }

          sub_1903364(v110);
          v108 = v111;
          *(a1 + 112) = v111;
          v6 = v216;
        }

        v11 = sub_22563DC(a3, v108, v6);
        goto LABEL_395;
      case 9u:
        if (v7 != 74)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x100u;
        v146 = *(a1 + 120);
        if (!v146)
        {
          v147 = *(a1 + 8);
          v148 = (v147 & 0xFFFFFFFFFFFFFFFCLL);
          if (v147)
          {
            v148 = *v148;
          }

          v146 = sub_1903554(v148);
          *(a1 + 120) = v146;
          v6 = v216;
        }

        v11 = sub_225646C(a3, v146, v6);
        goto LABEL_395;
      case 0xAu:
        if (v7 != 82)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x200u;
        v140 = *(a1 + 128);
        if (!v140)
        {
          v141 = *(a1 + 8);
          v142 = (v141 & 0xFFFFFFFFFFFFFFFCLL);
          if (v141)
          {
            v142 = *v142;
          }

          v140 = sub_190471C(v142);
          *(a1 + 128) = v140;
          v6 = v216;
        }

        v11 = sub_223EE78(a3, v140, v6);
        goto LABEL_395;
      case 0xBu:
        if (v7 != 90)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x400u;
        v57 = *(a1 + 136);
        if (!v57)
        {
          v58 = *(a1 + 8);
          v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
          if (v58)
          {
            v59 = *v59;
          }

          v57 = sub_18FF844(v59);
          *(a1 + 136) = v57;
          v6 = v216;
        }

        v11 = sub_2252424(a3, v57, v6);
        goto LABEL_395;
      case 0xCu:
        if (v7 != 98)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x800u;
        v91 = *(a1 + 144);
        if (!v91)
        {
          v92 = *(a1 + 8);
          v93 = (v92 & 0xFFFFFFFFFFFFFFFCLL);
          if (v92)
          {
            v93 = *v93;
          }

          sub_1901958(v93);
          v91 = v94;
          *(a1 + 144) = v94;
          v6 = v216;
        }

        v11 = sub_22564FC(a3, v91, v6);
        goto LABEL_395;
      case 0xDu:
        if (v7 != 106)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x1000u;
        v72 = *(a1 + 152);
        if (!v72)
        {
          v73 = *(a1 + 8);
          v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL);
          if (v73)
          {
            v74 = *v74;
          }

          v72 = sub_1901A14(v74);
          *(a1 + 152) = v72;
          v6 = v216;
        }

        v11 = sub_225658C(a3, v72, v6);
        goto LABEL_395;
      case 0xEu:
        if (v7 != 114)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x2000u;
        v47 = *(a1 + 160);
        if (!v47)
        {
          v48 = *(a1 + 8);
          v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
          if (v48)
          {
            v49 = *v49;
          }

          sub_19015E0(v49);
          v47 = v50;
          *(a1 + 160) = v50;
          v6 = v216;
        }

        v11 = sub_225661C(a3, v47, v6);
        goto LABEL_395;
      case 0xFu:
        if (v7 != 122)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x4000u;
        v116 = *(a1 + 168);
        if (!v116)
        {
          v117 = *(a1 + 8);
          v118 = (v117 & 0xFFFFFFFFFFFFFFFCLL);
          if (v117)
          {
            v118 = *v118;
          }

          v116 = sub_1901D90(v118);
          *(a1 + 168) = v116;
          v6 = v216;
        }

        v11 = sub_22566AC(a3, v116, v6);
        goto LABEL_395;
      case 0x10u:
        if (v7 != 130)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x8000u;
        v119 = *(a1 + 176);
        if (!v119)
        {
          v120 = *(a1 + 8);
          v121 = (v120 & 0xFFFFFFFFFFFFFFFCLL);
          if (v120)
          {
            v121 = *v121;
          }

          v119 = sub_1901B24(v121);
          *(a1 + 176) = v119;
          v6 = v216;
        }

        v11 = sub_225673C(a3, v119, v6);
        goto LABEL_395;
      case 0x11u:
        if (v7 != 138)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x10000u;
        v156 = *(a1 + 184);
        if (!v156)
        {
          v157 = *(a1 + 8);
          v158 = (v157 & 0xFFFFFFFFFFFFFFFCLL);
          if (v157)
          {
            v158 = *v158;
          }

          sub_1902B74(v158);
          v156 = v159;
          *(a1 + 184) = v159;
          v6 = v216;
        }

        v11 = sub_22567CC(a3, v156, v6);
        goto LABEL_395;
      case 0x12u:
        if (v7 != 146)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x20000u;
        v149 = *(a1 + 192);
        if (!v149)
        {
          v150 = *(a1 + 8);
          v151 = (v150 & 0xFFFFFFFFFFFFFFFCLL);
          if (v150)
          {
            v151 = *v151;
          }

          sub_19036E8(v151);
          v149 = v152;
          *(a1 + 192) = v152;
          v6 = v216;
        }

        v11 = sub_225685C(a3, v149, v6);
        goto LABEL_395;
      case 0x13u:
        if (v7 != 154)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x40000u;
        v41 = *(a1 + 200);
        if (!v41)
        {
          v42 = *(a1 + 8);
          v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
          if (v42)
          {
            v43 = *v43;
          }

          v41 = sub_1902064(v43);
          *(a1 + 200) = v41;
          v6 = v216;
        }

        v11 = sub_22568EC(a3, v41, v6);
        goto LABEL_395;
      case 0x14u:
        if (v7 != 162)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x80000u;
        v75 = *(a1 + 208);
        if (!v75)
        {
          v76 = *(a1 + 8);
          v77 = (v76 & 0xFFFFFFFFFFFFFFFCLL);
          if (v76)
          {
            v77 = *v77;
          }

          v75 = sub_19017A4(v77);
          *(a1 + 208) = v75;
          v6 = v216;
        }

        v11 = sub_225697C(a3, v75, v6);
        goto LABEL_395;
      case 0x15u:
        if (v7 != 170)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x100000u;
        v167 = *(a1 + 216);
        if (!v167)
        {
          v168 = *(a1 + 8);
          v169 = (v168 & 0xFFFFFFFFFFFFFFFCLL);
          if (v168)
          {
            v169 = *v169;
          }

          v167 = sub_19030EC(v169);
          *(a1 + 216) = v167;
          v6 = v216;
        }

        v11 = sub_2256A0C(a3, v167, v6);
        goto LABEL_395;
      case 0x16u:
        if (v7 != 178)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x200000u;
        v44 = *(a1 + 224);
        if (!v44)
        {
          v45 = *(a1 + 8);
          v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
          if (v45)
          {
            v46 = *v46;
          }

          v44 = sub_19037D4(v46);
          *(a1 + 224) = v44;
          v6 = v216;
        }

        v11 = sub_2256A9C(a3, v44, v6);
        goto LABEL_395;
      case 0x17u:
        if (v7 != 186)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x400000u;
        v69 = *(a1 + 232);
        if (!v69)
        {
          v70 = *(a1 + 8);
          v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL);
          if (v70)
          {
            v71 = *v71;
          }

          v69 = sub_19023D8(v71);
          *(a1 + 232) = v69;
          v6 = v216;
        }

        v11 = sub_2256B2C(a3, v69, v6);
        goto LABEL_395;
      case 0x18u:
        if (v7 != 194)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x800000u;
        v54 = *(a1 + 240);
        if (!v54)
        {
          v55 = *(a1 + 8);
          v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
          if (v55)
          {
            v56 = *v56;
          }

          v54 = sub_190388C(v56);
          *(a1 + 240) = v54;
          v6 = v216;
        }

        v11 = sub_2256BBC(a3, v54, v6);
        goto LABEL_395;
      case 0x19u:
        if (v7 != 202)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x1000000u;
        v95 = *(a1 + 248);
        if (!v95)
        {
          v96 = *(a1 + 8);
          v97 = (v96 & 0xFFFFFFFFFFFFFFFCLL);
          if (v96)
          {
            v97 = *v97;
          }

          v95 = sub_1904778(v97);
          *(a1 + 248) = v95;
          v6 = v216;
        }

        v11 = sub_2256C4C(a3, v95, v6);
        goto LABEL_395;
      case 0x1Au:
        if (v7 != 210)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x2000000u;
        v51 = *(a1 + 256);
        if (!v51)
        {
          v52 = *(a1 + 8);
          v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
          if (v52)
          {
            v53 = *v53;
          }

          v51 = sub_1904894(v53);
          *(a1 + 256) = v51;
          v6 = v216;
        }

        v11 = sub_2256CDC(a3, v51, v6);
        goto LABEL_395;
      case 0x1Cu:
        if (v7 != 226)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x4000000u;
        v182 = *(a1 + 264);
        if (!v182)
        {
          v183 = *(a1 + 8);
          v184 = (v183 & 0xFFFFFFFFFFFFFFFCLL);
          if (v183)
          {
            v184 = *v184;
          }

          v182 = sub_19039A0(v184);
          *(a1 + 264) = v182;
          v6 = v216;
        }

        v11 = sub_2256D6C(a3, v182, v6);
        goto LABEL_395;
      case 0x1Du:
        if (v7 != 234)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x8000000u;
        v179 = *(a1 + 272);
        if (!v179)
        {
          v180 = *(a1 + 8);
          v181 = (v180 & 0xFFFFFFFFFFFFFFFCLL);
          if (v180)
          {
            v181 = *v181;
          }

          v179 = sub_1903AC8(v181);
          *(a1 + 272) = v179;
          v6 = v216;
        }

        v11 = sub_2256DFC(a3, v179, v6);
        goto LABEL_395;
      case 0x1Eu:
        if (v7 != 242)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x10000000u;
        v63 = *(a1 + 280);
        if (!v63)
        {
          v64 = *(a1 + 8);
          v65 = (v64 & 0xFFFFFFFFFFFFFFFCLL);
          if (v64)
          {
            v65 = *v65;
          }

          v63 = sub_19049B0(v65);
          *(a1 + 280) = v63;
          v6 = v216;
        }

        v11 = sub_2256E8C(a3, v63, v6);
        goto LABEL_395;
      case 0x1Fu:
        if (v7 != 250)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x20000000u;
        v81 = *(a1 + 288);
        if (!v81)
        {
          v82 = *(a1 + 8);
          v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL);
          if (v82)
          {
            v83 = *v83;
          }

          v81 = sub_1903C04(v83);
          *(a1 + 288) = v81;
          v6 = v216;
        }

        v11 = sub_2256F1C(a3, v81, v6);
        goto LABEL_395;
      case 0x20u:
        if (v7 != 2)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x40000000u;
        v125 = *(a1 + 296);
        if (!v125)
        {
          v126 = *(a1 + 8);
          v127 = (v126 & 0xFFFFFFFFFFFFFFFCLL);
          if (v126)
          {
            v127 = *v127;
          }

          v125 = sub_1905020(v127);
          *(a1 + 296) = v125;
          v6 = v216;
        }

        v11 = sub_2256FAC(a3, v125, v6);
        goto LABEL_395;
      case 0x21u:
        if (v7 != 10)
        {
          goto LABEL_386;
        }

        *(a1 + 40) |= 0x80000000;
        v84 = *(a1 + 304);
        if (!v84)
        {
          v85 = *(a1 + 8);
          v86 = (v85 & 0xFFFFFFFFFFFFFFFCLL);
          if (v85)
          {
            v86 = *v86;
          }

          v84 = sub_1905138(v86);
          *(a1 + 304) = v84;
          v6 = v216;
        }

        v11 = sub_225703C(a3, v84, v6);
        goto LABEL_395;
      case 0x22u:
        if (v7 != 18)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 1u;
        v192 = *(a1 + 312);
        if (!v192)
        {
          v193 = *(a1 + 8);
          v194 = (v193 & 0xFFFFFFFFFFFFFFFCLL);
          if (v193)
          {
            v194 = *v194;
          }

          v192 = sub_1905228(v194);
          *(a1 + 312) = v192;
          v6 = v216;
        }

        v11 = sub_22570CC(a3, v192, v6);
        goto LABEL_395;
      case 0x23u:
        if (v7 != 26)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 2u;
        v60 = *(a1 + 320);
        if (!v60)
        {
          v61 = *(a1 + 8);
          v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
          if (v61)
          {
            v62 = *v62;
          }

          v60 = sub_1905338(v62);
          *(a1 + 320) = v60;
          v6 = v216;
        }

        v11 = sub_225715C(a3, v60, v6);
        goto LABEL_395;
      case 0x24u:
        if (v7 != 34)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 4u;
        v153 = *(a1 + 328);
        if (!v153)
        {
          v154 = *(a1 + 8);
          v155 = (v154 & 0xFFFFFFFFFFFFFFFCLL);
          if (v154)
          {
            v155 = *v155;
          }

          v153 = sub_190542C(v155);
          *(a1 + 328) = v153;
          v6 = v216;
        }

        v11 = sub_22571EC(a3, v153, v6);
        goto LABEL_395;
      case 0x25u:
        if (v7 != 42)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 8u;
        v189 = *(a1 + 336);
        if (!v189)
        {
          v190 = *(a1 + 8);
          v191 = (v190 & 0xFFFFFFFFFFFFFFFCLL);
          if (v190)
          {
            v191 = *v191;
          }

          v189 = sub_19056C4(v191);
          *(a1 + 336) = v189;
          v6 = v216;
        }

        v11 = sub_225727C(a3, v189, v6);
        goto LABEL_395;
      case 0x26u:
        if (v7 != 50)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x10u;
        v34 = *(a1 + 344);
        if (!v34)
        {
          v35 = *(a1 + 8);
          v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
          if (v35)
          {
            v36 = *v36;
          }

          v34 = sub_1905758(v36);
          *(a1 + 344) = v34;
          v6 = v216;
        }

        v11 = sub_225730C(a3, v34, v6);
        goto LABEL_395;
      case 0x27u:
        if (v7 != 58)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x20u;
        v137 = *(a1 + 352);
        if (!v137)
        {
          v138 = *(a1 + 8);
          v139 = (v138 & 0xFFFFFFFFFFFFFFFCLL);
          if (v138)
          {
            v139 = *v139;
          }

          v137 = sub_141BFE4(v139);
          *(a1 + 352) = v137;
          v6 = v216;
        }

        v11 = sub_225739C(a3, v137, v6);
        goto LABEL_395;
      case 0x28u:
        if (v7 != 66)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x40u;
        v31 = *(a1 + 360);
        if (!v31)
        {
          v32 = *(a1 + 8);
          v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
          if (v32)
          {
            v33 = *v33;
          }

          v31 = sub_19057F4(v33);
          *(a1 + 360) = v31;
          v6 = v216;
        }

        v11 = sub_225742C(a3, v31, v6);
        goto LABEL_395;
      case 0x29u:
        if (v7 != 74)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x80u;
        v28 = *(a1 + 368);
        if (!v28)
        {
          v29 = *(a1 + 8);
          v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v30 = *v30;
          }

          v28 = sub_1904AAC(v30);
          *(a1 + 368) = v28;
          v6 = v216;
        }

        v11 = sub_22574BC(a3, v28, v6);
        goto LABEL_395;
      case 0x2Au:
        if (v7 != 82)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x100u;
        v66 = *(a1 + 376);
        if (!v66)
        {
          v67 = *(a1 + 8);
          v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
          if (v67)
          {
            v68 = *v68;
          }

          v66 = sub_1904DEC(v68);
          *(a1 + 376) = v66;
          v6 = v216;
        }

        v11 = sub_225754C(a3, v66, v6);
        goto LABEL_395;
      case 0x2Bu:
        if (v7 != 90)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x200u;
        v98 = *(a1 + 384);
        if (!v98)
        {
          v99 = *(a1 + 8);
          v100 = (v99 & 0xFFFFFFFFFFFFFFFCLL);
          if (v99)
          {
            v100 = *v100;
          }

          v98 = sub_18FF990(v100);
          *(a1 + 384) = v98;
          v6 = v216;
        }

        v11 = sub_22524B4(a3, v98, v6);
        goto LABEL_395;
      case 0x2Cu:
        if (v7 != 98)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x400u;
        v163 = *(a1 + 392);
        if (!v163)
        {
          v164 = *(a1 + 8);
          v165 = (v164 & 0xFFFFFFFFFFFFFFFCLL);
          if (v164)
          {
            v165 = *v165;
          }

          sub_190037C(v165);
          v163 = v166;
          *(a1 + 392) = v166;
          v6 = v216;
        }

        v11 = sub_22575DC(a3, v163, v6);
        goto LABEL_395;
      case 0x2Du:
        if (v7 != 106)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x800u;
        v12 = *(a1 + 400);
        if (!v12)
        {
          v13 = *(a1 + 8);
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
          if (v13)
          {
            v14 = *v14;
          }

          v12 = sub_174DE74(v14);
          *(a1 + 400) = v12;
          v6 = v216;
        }

        v11 = sub_225766C(a3, v12, v6);
        goto LABEL_395;
      case 0x2Eu:
        if (v7 != 114)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x1000u;
        v37 = *(a1 + 408);
        if (!v37)
        {
          v38 = *(a1 + 8);
          v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
          if (v38)
          {
            v39 = *v39;
          }

          sub_19000E8(v39);
          v37 = v40;
          *(a1 + 408) = v40;
          v6 = v216;
        }

        v11 = sub_22576FC(a3, v37, v6);
        goto LABEL_395;
      case 0x2Fu:
        if (v7 != 122)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x2000u;
        v112 = *(a1 + 416);
        if (!v112)
        {
          v113 = *(a1 + 8);
          v114 = (v113 & 0xFFFFFFFFFFFFFFFCLL);
          if (v113)
          {
            v114 = *v114;
          }

          sub_18FFE54(v114);
          v112 = v115;
          *(a1 + 416) = v115;
          v6 = v216;
        }

        v11 = sub_225778C(a3, v112, v6);
        goto LABEL_395;
      case 0x30u:
        if (v7 != 130)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x4000u;
        v131 = *(a1 + 424);
        if (!v131)
        {
          v132 = *(a1 + 8);
          v133 = (v132 & 0xFFFFFFFFFFFFFFFCLL);
          if (v132)
          {
            v133 = *v133;
          }

          v131 = sub_1902820(v133);
          *(a1 + 424) = v131;
          v6 = v216;
        }

        v11 = sub_225781C(a3, v131, v6);
        goto LABEL_395;
      case 0x31u:
        if (v7 != 138)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x8000u;
        v195 = *(a1 + 432);
        if (!v195)
        {
          v196 = *(a1 + 8);
          v197 = (v196 & 0xFFFFFFFFFFFFFFFCLL);
          if (v196)
          {
            v197 = *v197;
          }

          v195 = sub_1902928(v197);
          *(a1 + 432) = v195;
          v6 = v216;
        }

        v11 = sub_22578AC(a3, v195, v6);
        goto LABEL_395;
      case 0x32u:
        if (v7 != 146)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x10000u;
        v122 = *(a1 + 440);
        if (!v122)
        {
          v123 = *(a1 + 8);
          v124 = (v123 & 0xFFFFFFFFFFFFFFFCLL);
          if (v123)
          {
            v124 = *v124;
          }

          v122 = sub_1905C0C(v124);
          *(a1 + 440) = v122;
          v6 = v216;
        }

        v11 = sub_225793C(a3, v122, v6);
        goto LABEL_395;
      case 0x33u:
        if (v7 != 154)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x20000u;
        v25 = *(a1 + 448);
        if (!v25)
        {
          v26 = *(a1 + 8);
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v27 = *v27;
          }

          v25 = sub_1900B84(v27);
          *(a1 + 448) = v25;
          v6 = v216;
        }

        v11 = sub_22579CC(a3, v25, v6);
        goto LABEL_395;
      case 0x34u:
        if (v7 != 162)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x40000u;
        v15 = *(a1 + 456);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_1900560(v17);
          *(a1 + 456) = v15;
          v6 = v216;
        }

        v11 = sub_2257A5C(a3, v15, v6);
        goto LABEL_395;
      case 0x35u:
        if (v7 != 170)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x80000u;
        v201 = *(a1 + 464);
        if (!v201)
        {
          v202 = *(a1 + 8);
          v203 = (v202 & 0xFFFFFFFFFFFFFFFCLL);
          if (v202)
          {
            v203 = *v203;
          }

          sub_19008C0(v203);
          v201 = v204;
          *(a1 + 464) = v204;
          v6 = v216;
        }

        v11 = sub_2257AEC(a3, v201, v6);
        goto LABEL_395;
      case 0x36u:
        if (v7 != 178)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x100000u;
        v185 = *(a1 + 472);
        if (!v185)
        {
          v186 = *(a1 + 8);
          v187 = (v186 & 0xFFFFFFFFFFFFFFFCLL);
          if (v186)
          {
            v187 = *v187;
          }

          sub_1902A40(v187);
          v185 = v188;
          *(a1 + 472) = v188;
          v6 = v216;
        }

        v11 = sub_2257B7C(a3, v185, v6);
        goto LABEL_395;
      case 0x37u:
        if (v7 != 186)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x200000u;
        v21 = *(a1 + 480);
        if (!v21)
        {
          v22 = *(a1 + 8);
          v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v23 = *v23;
          }

          sub_1900E78(v23);
          v21 = v24;
          *(a1 + 480) = v24;
          v6 = v216;
        }

        v11 = sub_2257C0C(a3, v21, v6);
        goto LABEL_395;
      case 0x38u:
        if (v7 != 194)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x400000u;
        v143 = *(a1 + 488);
        if (!v143)
        {
          v144 = *(a1 + 8);
          v145 = (v144 & 0xFFFFFFFFFFFFFFFCLL);
          if (v144)
          {
            v145 = *v145;
          }

          v143 = sub_1902304(v145);
          *(a1 + 488) = v143;
          v6 = v216;
        }

        v11 = sub_2257C9C(a3, v143, v6);
        goto LABEL_395;
      case 0x39u:
        if (v7 != 202)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x800000u;
        v160 = *(a1 + 496);
        if (!v160)
        {
          v161 = *(a1 + 8);
          v162 = (v161 & 0xFFFFFFFFFFFFFFFCLL);
          if (v161)
          {
            v162 = *v162;
          }

          v160 = sub_1905D20(v162);
          *(a1 + 496) = v160;
          v6 = v216;
        }

        v11 = sub_2257D2C(a3, v160, v6);
        goto LABEL_395;
      case 0x3Au:
        if (v7 != 210)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x1000000u;
        v18 = *(a1 + 504);
        if (!v18)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v18 = sub_1905E38(v20);
          *(a1 + 504) = v18;
          v6 = v216;
        }

        v11 = sub_2257DBC(a3, v18, v6);
        goto LABEL_395;
      case 0x3Bu:
        if (v7 != 218)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x2000000u;
        v176 = *(a1 + 512);
        if (!v176)
        {
          v177 = *(a1 + 8);
          v178 = (v177 & 0xFFFFFFFFFFFFFFFCLL);
          if (v177)
          {
            v178 = *v178;
          }

          v176 = sub_1905F54(v178);
          *(a1 + 512) = v176;
          v6 = v216;
        }

        v11 = sub_2257E4C(a3, v176, v6);
        goto LABEL_395;
      case 0x3Cu:
        if (v7 != 226)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x4000000u;
        v170 = *(a1 + 520);
        if (!v170)
        {
          v171 = *(a1 + 8);
          v172 = (v171 & 0xFFFFFFFFFFFFFFFCLL);
          if (v171)
          {
            v172 = *v172;
          }

          v170 = sub_1905894(v172);
          *(a1 + 520) = v170;
          v6 = v216;
        }

        v11 = sub_2257EDC(a3, v170, v6);
        goto LABEL_395;
      case 0x3Du:
        if (v7 != 234)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x8000000u;
        v208 = *(a1 + 528);
        if (!v208)
        {
          v209 = *(a1 + 8);
          v210 = (v209 & 0xFFFFFFFFFFFFFFFCLL);
          if (v209)
          {
            v210 = *v210;
          }

          v208 = sub_1902230(v210);
          *(a1 + 528) = v208;
          v6 = v216;
        }

        v11 = sub_2257F6C(a3, v208, v6);
        goto LABEL_395;
      case 0x3Eu:
        if (v7 != 242)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x10000000u;
        v198 = *(a1 + 536);
        if (!v198)
        {
          v199 = *(a1 + 8);
          v200 = (v199 & 0xFFFFFFFFFFFFFFFCLL);
          if (v199)
          {
            v200 = *v200;
          }

          v198 = sub_1906044(v200);
          *(a1 + 536) = v198;
          v6 = v216;
        }

        v11 = sub_2257FFC(a3, v198, v6);
        goto LABEL_395;
      case 0x3Fu:
        if (v7 != 250)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x20000000u;
        v205 = *(a1 + 544);
        if (!v205)
        {
          v206 = *(a1 + 8);
          v207 = (v206 & 0xFFFFFFFFFFFFFFFCLL);
          if (v206)
          {
            v207 = *v207;
          }

          v205 = sub_19024AC(v207);
          *(a1 + 544) = v205;
          v6 = v216;
        }

        v11 = sub_225808C(a3, v205, v6);
        goto LABEL_395;
      case 0x40u:
        if (v7 != 2)
        {
          goto LABEL_386;
        }

        *(a1 + 44) |= 0x40000000u;
        v173 = *(a1 + 552);
        if (!v173)
        {
          v174 = *(a1 + 8);
          v175 = (v174 & 0xFFFFFFFFFFFFFFFCLL);
          if (v174)
          {
            v175 = *v175;
          }

          v173 = sub_19025D0(v175);
          *(a1 + 552) = v173;
          v6 = v216;
        }

        v11 = sub_225811C(a3, v173, v6);
        goto LABEL_395;
      default:
LABEL_386:
        if (v7)
        {
          v211 = (v7 & 7) == 4;
        }

        else
        {
          v211 = 1;
        }

        if (!v211)
        {
          if (v7 - 8000 > 0x18F)
          {
            v212 = *(a1 + 8);
            if (v212)
            {
              v213 = (v212 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v215 = v7;
              v214 = sub_11F1920((a1 + 8));
              v7 = v215;
              v6 = v216;
              v213 = v214;
            }

            v11 = sub_1952690(v7, v213, v6, a3);
          }

          else
          {
            v11 = sub_19525AC((a1 + 16), v7, v6, &off_278AB30, (a1 + 8), a3);
          }

LABEL_395:
          v216 = v11;
          if (!v11)
          {
            return 0;
          }

          if (sub_195ADC0(a3, &v216, a3[11].i32[1]))
          {
            return v216;
          }

          continue;
        }

        if (!v6)
        {
          return 0;
        }

        a3[10].i32[0] = v7 - 1;
        return v216;
    }
  }
}