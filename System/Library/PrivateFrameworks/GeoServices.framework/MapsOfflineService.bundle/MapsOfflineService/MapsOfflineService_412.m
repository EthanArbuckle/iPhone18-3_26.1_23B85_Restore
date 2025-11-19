char *sub_16CA0F4(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_16C9664(v6, v8, a3);
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
      v12 = *(v11 + 20);
      v4[1] = v12;
      if (v12 > 0x7F)
      {
        v13 = sub_19575D0(v12, v4 + 1);
      }

      else
      {
        v13 = v4 + 2;
      }

      v4 = sub_16C9664(v11, v13, a3);
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

  if ((*a3 - v4) >= v17)
  {
    v19 = v17;
    memcpy(v4, v18, v17);
    v4 += v19;
    return v4;
  }

  return sub_1957130(a3, v18, v17, v4);
}

uint64_t sub_16CA29C(uint64_t a1)
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
      v7 = sub_16C98AC(v6);
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
    v8 = sub_16C98AC(*(a1 + 48));
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

std::string *sub_16CA378(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_16C5F58(result);

    return sub_16C7F04(v4, a2);
  }

  return result;
}

void *sub_16CA3DC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956AFC(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16CA458(void *a1)
{
  sub_16CA3DC(a1);

  operator delete();
}

uint64_t sub_16CA490(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v21 = a2;
  if ((sub_195ADC0(a3, v21, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = (*v21 + 1);
      v6 = **v21;
      if (**v21 < 0)
      {
        v7 = v6 + (*v5 << 7);
        v6 = v7 - 128;
        if (*v5 < 0)
        {
          v5 = sub_1958824(*v21, v7 - 128);
          v6 = v8;
        }

        else
        {
          v5 = (*v21 + 2);
        }
      }

      *v21 = v5;
      if (v6 == 10)
      {
        v12 = v5 - 1;
        while (1)
        {
          v13 = (v12 + 1);
          *v21 = v12 + 1;
          v14 = *(a1 + 32);
          if (v14 && (v15 = *(a1 + 24), v15 < *v14))
          {
            *(a1 + 24) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = *(a1 + 16);
            if (!v17)
            {
              operator new();
            }

            *v19 = v18;
            v19[1] = sub_195A650;
            *v18 = 0;
            v18[1] = 0;
            v18[2] = 0;
            v16 = sub_19593CC(a1 + 16, v18);
            v13 = *v21;
          }

          v12 = sub_1958890(v16, v13, a3);
          *v21 = v12;
          if (!v12)
          {
            goto LABEL_30;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_25;
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
        v5 = *v21;
      }

      *v21 = sub_1952690(v6, v11, v5, a3);
      if (!*v21)
      {
        goto LABEL_30;
      }

LABEL_25:
      if (sub_195ADC0(a3, v21, a3[11].i32[1]))
      {
        return *v21;
      }
    }

    if (v5)
    {
      a3[10].i32[0] = v6 - 1;
      return *v21;
    }

LABEL_30:
    *v21 = 0;
  }

  return *v21;
}

char *sub_16CA678(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_16CA7CC(uint64_t a1)
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

  *(a1 + 40) = v3;
  return v3;
}

uint64_t sub_16CA874(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_16E27A8((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16CA928(uint64_t a1)
{
  sub_16CA874(a1);

  operator delete();
}

uint64_t sub_16CA960(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v42 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v42, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v42 + 1);
    v8 = **v42;
    if (**v42 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v42, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v42 + 2);
      }
    }

    *v42 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      if (v11 != 4)
      {
        if (v11 == 5)
        {
          if (v8 != 41)
          {
            goto LABEL_53;
          }

          v36 = *v7;
          v16 = v7 + 2;
          v5 |= 2u;
          *(a1 + 80) = v36;
        }

        else
        {
          if (v11 != 6 || v8 != 49)
          {
            goto LABEL_53;
          }

          v17 = *v7;
          v16 = v7 + 2;
          v5 |= 4u;
          *(a1 + 88) = v17;
        }

        *v42 = v16;
        goto LABEL_61;
      }

      if (v8 != 34)
      {
        goto LABEL_53;
      }

      *(a1 + 16) |= 1u;
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v28 = sub_194DB04((a1 + 72), v27);
      v29 = sub_1958890(v28, *v42, a3);
LABEL_60:
      *v42 = v29;
      if (!v29)
      {
        goto LABEL_68;
      }

      goto LABEL_61;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 == 2)
    {
      if (v8 == 18)
      {
        v30 = v7 - 1;
        while (1)
        {
          v31 = v30 + 1;
          *v42 = v30 + 1;
          v32 = *(a1 + 64);
          if (v32 && (v33 = *(a1 + 56), v33 < *v32))
          {
            *(a1 + 56) = v33 + 1;
            v34 = *&v32[2 * v33 + 2];
          }

          else
          {
            v35 = sub_16D1038(*(a1 + 48));
            v34 = sub_19593CC(a1 + 48, v35);
            v31 = *v42;
          }

          v30 = sub_22352D4(a3, v34, v31);
          *v42 = v30;
          if (!v30)
          {
            goto LABEL_68;
          }

          if (*a3 <= v30 || *v30 != 18)
          {
            goto LABEL_61;
          }
        }
      }

      goto LABEL_53;
    }

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
      *v42 = v14;
      *(a1 + 96) = v13 != 0;
      goto LABEL_61;
    }

    v40 = sub_19587DC(v7, v13);
    *v42 = v40;
    *(a1 + 96) = v41 != 0;
    if (!v40)
    {
      goto LABEL_68;
    }

LABEL_61:
    if (sub_195ADC0(a3, v42, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 10)
  {
    v18 = v7 - 1;
    while (1)
    {
      v19 = (v18 + 1);
      *v42 = v18 + 1;
      v20 = *(a1 + 40);
      if (v20 && (v21 = *(a1 + 32), v21 < *v20))
      {
        *(a1 + 32) = v21 + 1;
        v22 = *&v20[2 * v21 + 2];
      }

      else
      {
        v23 = *(a1 + 24);
        if (!v23)
        {
          operator new();
        }

        *v25 = v24;
        v25[1] = sub_195A650;
        *v24 = 0;
        v24[1] = 0;
        v24[2] = 0;
        v22 = sub_19593CC(a1 + 24, v24);
        v19 = *v42;
      }

      v18 = sub_1958890(v22, v19, a3);
      *v42 = v18;
      if (!v18)
      {
        goto LABEL_68;
      }

      if (*a3 <= v18 || *v18 != 10)
      {
        goto LABEL_61;
      }
    }
  }

LABEL_53:
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
      v7 = *v42;
    }

    v29 = sub_1952690(v8, v39, v7, a3);
    goto LABEL_60;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_68:
  *v42 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v42;
}

char *sub_16CAD10(uint64_t a1, char *__dst, _DWORD *a3)
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
        memcpy(v10, v8, v9);
        __dst = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v13 = *(*(a1 + 64) + 8 * i + 8);
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

      __dst = sub_16CB560(v13, v15, a3);
    }
  }

  v16 = *(a1 + 16);
  if ((v16 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v17 = *(a1 + 96);
    *__dst = 24;
    __dst[1] = v17;
    __dst += 2;
    if ((v16 & 1) == 0)
    {
LABEL_22:
      if ((v16 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }
  }

  else if ((v16 & 1) == 0)
  {
    goto LABEL_22;
  }

  __dst = sub_128AEEC(a3, 4, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, __dst);
  if ((v16 & 2) == 0)
  {
LABEL_23:
    if ((v16 & 4) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

LABEL_29:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v18 = *(a1 + 80);
  *__dst = 41;
  *(__dst + 1) = v18;
  __dst += 9;
  if ((v16 & 4) != 0)
  {
LABEL_32:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v19 = *(a1 + 88);
    *__dst = 49;
    *(__dst + 1) = v19;
    __dst += 9;
  }

LABEL_35:
  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return __dst;
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

  if (*a3 - __dst >= v23)
  {
    v25 = v23;
    memcpy(__dst, v24, v23);
    __dst += v25;
    return __dst;
  }

  return sub_1957130(a3, v24, v23, __dst);
}

uint64_t sub_16CAFC4(uint64_t a1)
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
      v14 = sub_16CB6F0(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 0xF) != 0)
  {
    if (v15)
    {
      v16 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v17 = *(v16 + 23);
      v18 = *(v16 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v18 = v17;
      }

      v9 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v19 = v9 + 9;
    if ((v15 & 2) == 0)
    {
      v19 = v9;
    }

    if ((v15 & 4) != 0)
    {
      v19 += 9;
    }

    v9 = v19 + ((v15 >> 2) & 2);
  }

  v20 = *(a1 + 8);
  if (v20)
  {
    v22 = v20 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v20 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    v9 += v23;
  }

  *(a1 + 20) = v9;
  return v9;
}

uint64_t sub_16CB154(uint64_t a1)
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

void sub_16CB220(uint64_t a1)
{
  sub_16CB154(a1);

  operator delete();
}

uint64_t sub_16CB258(uint64_t a1)
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
  *(result + 40) = 0;
  *(result + 8) = 0;
  if (v6)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_16CB314(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v28 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v28, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v28 + 1);
    v8 = **v28;
    if (**v28 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v28, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v28 + 2);
      }
    }

    *v28 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v17 = *(a1 + 8);
          v14 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v14 = *v14;
          }

          v15 = (a1 + 24);
          goto LABEL_27;
        }
      }

      else if (v11 == 2 && v8 == 18)
      {
        *(a1 + 16) |= 2u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 32);
        goto LABEL_27;
      }

      goto LABEL_33;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_33;
    }

    v5 |= 8u;
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
      *v28 = v21;
      *(a1 + 48) = v20;
      goto LABEL_41;
    }

    v26 = sub_19587DC(v7, v20);
    *v28 = v26;
    *(a1 + 48) = v27;
    if (!v26)
    {
      goto LABEL_48;
    }

LABEL_41:
    if (sub_195ADC0(a3, v28, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4 && v8 == 34)
  {
    *(a1 + 16) |= 4u;
    v16 = *(a1 + 8);
    v14 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v14 = *v14;
    }

    v15 = (a1 + 40);
LABEL_27:
    v18 = sub_194DB04(v15, v14);
    v19 = sub_1958890(v18, *v28, a3);
LABEL_40:
    *v28 = v19;
    if (!v19)
    {
      goto LABEL_48;
    }

    goto LABEL_41;
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
      v7 = *v28;
    }

    v19 = sub_1952690(v8, v25, v7, a3);
    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_48:
  *v28 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v28;
}

char *sub_16CB560(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 8) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_14;
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 48);
  *v4 = 24;
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

LABEL_14:
  if ((v6 & 4) != 0)
  {
    v7 = sub_128AEEC(a3, 4, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v7);
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

uint64_t sub_16CB6F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_15;
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
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  v12 = *(v11 + 23);
  v13 = *(v11 + 8);
  if ((v12 & 0x80u) == 0)
  {
    v13 = v12;
  }

  v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 8) != 0)
  {
LABEL_14:
    v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_15:
  v9 = *(a1 + 8);
  if (v9)
  {
    v14 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v2 += v15;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_16CB84C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_16E282C(a1 + 7);
  sub_16E282C(a1 + 4);
  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16CB8E0(void *a1)
{
  sub_16CB84C(a1);

  operator delete();
}

char *sub_16CB918(uint64_t a1, char *a2, int32x2_t *a3)
{
  v36 = a2;
  if ((sub_195ADC0(a3, &v36, a3[11].i32[1]) & 1) == 0)
  {
    v6 = (a1 + 8);
    do
    {
      v7 = v36 + 1;
      v8 = *v36;
      if (*v36 < 0)
      {
        v9 = *v7;
        v10 = v8 + (v9 << 7);
        v8 = v10 - 128;
        if (v9 < 0)
        {
          v7 = sub_1958824(v36, v10 - 128);
          v8 = v11;
        }

        else
        {
          v7 = v36 + 2;
        }
      }

      v36 = v7;
      v12 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 26)
        {
          v27 = v7 - 1;
          while (1)
          {
            v28 = (v27 + 1);
            v36 = v27 + 1;
            v29 = *(a1 + 72);
            if (v29 && (v30 = *(a1 + 64), v30 < *v29))
            {
              *(a1 + 64) = v30 + 1;
              v31 = *&v29[2 * v30 + 2];
            }

            else
            {
              v32 = sub_16D1168(*(a1 + 56));
              v31 = sub_19593CC(a1 + 56, v32);
              v28 = v36;
            }

            v27 = sub_2235364(a3, v31, v28);
            v36 = v27;
            if (!v27)
            {
              return 0;
            }

            if (*a3 <= v27 || *v27 != 26)
            {
              goto LABEL_58;
            }
          }
        }
      }

      else if (v12 == 2)
      {
        if (v8 == 18)
        {
          v21 = v7 - 1;
          while (1)
          {
            v22 = (v21 + 1);
            v36 = v21 + 1;
            v23 = *(a1 + 48);
            if (v23 && (v24 = *(a1 + 40), v24 < *v23))
            {
              *(a1 + 40) = v24 + 1;
              v25 = *&v23[2 * v24 + 2];
            }

            else
            {
              v26 = sub_16D1168(*(a1 + 32));
              v25 = sub_19593CC(a1 + 32, v26);
              v22 = v36;
            }

            v21 = sub_2235364(a3, v25, v22);
            v36 = v21;
            if (!v21)
            {
              return 0;
            }

            if (*a3 <= v21 || *v21 != 18)
            {
              goto LABEL_58;
            }
          }
        }
      }

      else if (v12 == 1)
      {
        if (v8 == 8)
        {
          v13 = v7 - 1;
          while (1)
          {
            v36 = v13 + 1;
            v14 = v13[1];
            v15 = v13 + 2;
            if (v14 < 0)
            {
              v16 = *v15;
              v17 = (v16 << 7) + v14;
              LODWORD(v14) = v17 - 128;
              if (v16 < 0)
              {
                v36 = sub_19587DC((v13 + 1), (v17 - 128));
                if (!v36)
                {
                  return 0;
                }

                LODWORD(v14) = v20;
                goto LABEL_17;
              }

              v15 = v13 + 3;
            }

            v36 = v15;
LABEL_17:
            if (v14 > 3)
            {
              sub_12E8450();
            }

            else
            {
              v18 = *(a1 + 16);
              if (v18 == *(a1 + 20))
              {
                v19 = v18 + 1;
                sub_1958E5C((a1 + 16), v18 + 1);
                *(*(a1 + 24) + 4 * v18) = v14;
              }

              else
              {
                *(*(a1 + 24) + 4 * v18) = v14;
                v19 = v18 + 1;
              }

              *(a1 + 16) = v19;
            }

            v13 = v36;
            if (*a3 <= v36 || *v36 != 8)
            {
              goto LABEL_58;
            }
          }
        }

        if (v8 == 10)
        {
          *&v37 = a1 + 16;
          *(&v37 + 1) = sub_16C14EC;
          v38 = a1 + 8;
          v39 = 1;
          v33 = sub_1216588(a3, v7, &v37);
          goto LABEL_57;
        }
      }

      if (v8)
      {
        v34 = (v8 & 7) == 4;
      }

      else
      {
        v34 = 1;
      }

      if (v34)
      {
        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
          return v36;
        }

        return 0;
      }

      if (*v6)
      {
        v35 = (*v6 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v35 = sub_11F1920((a1 + 8));
        v7 = v36;
      }

      v33 = sub_1952690(v8, v35, v7, a3);
LABEL_57:
      v36 = v33;
      if (!v33)
      {
        return 0;
      }

LABEL_58:
      ;
    }

    while (!sub_195ADC0(a3, &v36, a3[11].i32[1]));
  }

  return v36;
}

char *sub_16CBC78(uint64_t a1, char *a2, _DWORD *a3)
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

      v7 = *(*(a1 + 24) + 4 * i);
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

  v12 = *(a1 + 40);
  if (v12)
  {
    for (j = 0; j != v12; ++j)
    {
      if (*a3 <= v8)
      {
        v8 = sub_225EB68(a3, v8);
      }

      v14 = *(*(a1 + 48) + 8 * j + 8);
      *v8 = 18;
      v15 = *(v14 + 20);
      v8[1] = v15;
      if (v15 > 0x7F)
      {
        v16 = sub_19575D0(v15, v8 + 1);
      }

      else
      {
        v16 = v8 + 2;
      }

      v8 = sub_16CC274(v14, v16, a3);
    }
  }

  v17 = *(a1 + 64);
  if (v17)
  {
    for (k = 0; k != v17; ++k)
    {
      if (*a3 <= v8)
      {
        v8 = sub_225EB68(a3, v8);
      }

      v19 = *(*(a1 + 72) + 8 * k + 8);
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

      v8 = sub_16CC274(v19, v21, a3);
    }
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v8;
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

  if (*a3 - v8 >= v25)
  {
    v27 = v25;
    memcpy(v8, v26, v25);
    v8 += v27;
    return v8;
  }

  return sub_1957130(a3, v26, v25, v8);
}

uint64_t sub_16CBEDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 24) + 4 * v4);
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
  v8 = *(a1 + 40);
  v9 = v7 + v8;
  v10 = *(a1 + 48);
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
      v14 = sub_16CC38C(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 64);
  v16 = v9 + v15;
  v17 = *(a1 + 72);
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
      v21 = sub_16CC38C(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 8);
  if (v22)
  {
    v24 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v25 < 0)
    {
      v25 = *(v24 + 16);
    }

    v16 += v25;
  }

  *(a1 + 80) = v16;
  return v16;
}

void *sub_16CC040(void *a1)
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

void sub_16CC0B4(void *a1)
{
  sub_16CC040(a1);

  operator delete();
}

uint64_t sub_16CC0EC(uint64_t a1)
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

char *sub_16CC110(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_16CC274(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

uint64_t sub_16CC38C(uint64_t a1)
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

void *sub_16CC3F8(void *a1)
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

void sub_16CC46C(void *a1)
{
  sub_16CC3F8(a1);

  operator delete();
}

char *sub_16CC4A4(uint64_t a1, char *a2, int32x2_t *a3)
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
      v23 = v16;
      *(a1 + 28) = v15 != 0;
      goto LABEL_31;
    }

    v21 = sub_19587DC(v7, v15);
    v23 = v21;
    *(a1 + 28) = v22 != 0;
    if (!v21)
    {
      goto LABEL_41;
    }

LABEL_31:
    if (sub_195ADC0(a3, &v23, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 8)
  {
    v19 = v7 + 1;
    v18 = *v7;
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v19;
    v18 = (v20 << 7) + v18 - 128;
    if (v20 < 0)
    {
      v23 = sub_19587DC(v7, v18);
      if (!v23)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v19 = v7 + 2;
LABEL_28:
      v23 = v19;
    }

    if (v18 > 3)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 16) |= 1u;
      *(a1 + 24) = v18;
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
      v7 = v23;
    }

    v23 = sub_1952690(v8, v14, v7, a3);
    if (!v23)
    {
      goto LABEL_41;
    }

    goto LABEL_31;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_41:
  v23 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v23;
}

char *sub_16CC6B0(uint64_t a1, char *__dst, _DWORD *a3)
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

    v11 = *(a1 + 28);
    *v6 = 16;
    v6[1] = v11;
    v6 += 2;
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v15)
  {
    v17 = v15;
    memcpy(v6, v16, v15);
    v6 += v17;
    return v6;
  }

  return sub_1957130(a3, v16, v15, v6);
}

uint64_t sub_16CC810(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v4 = *(a1 + 24);
      if (v4 < 0)
      {
        v2 = 11;
      }

      else
      {
        v2 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }
    }

    else
    {
      v2 = 0;
    }

    v3 = v2 + (v1 & 2);
  }

  else
  {
    v3 = 0;
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

    v3 += v8;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_16CC8AC(void *a1)
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

  sub_16CC940(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956ABC((a1 + 6));
  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_16CC940(uint64_t a1)
{
  v3 = *(a1 + 64);
  v2 = (a1 + 64);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C((a1 + 72));
  }

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  if (*(a1 + 88) != &qword_278E990)
  {
    sub_194E89C((a1 + 88));
  }

  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C((a1 + 96));
  }

  result = (a1 + 104);
  if (*(a1 + 104) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_277DDE8)
  {
    if (*(a1 + 112))
    {
      sub_16E4E08();
      operator delete();
    }

    v5 = *(a1 + 120);
    if (v5)
    {
      sub_16E5B34(v5);
      operator delete();
    }

    if (*(a1 + 128))
    {
      sub_16E4E08();
      operator delete();
    }

    v6 = *(a1 + 136);
    if (v6)
    {
      sub_16CE318(v6);
      operator delete();
    }

    v7 = *(a1 + 144);
    if (v7)
    {
      sub_13987EC(v7);
      operator delete();
    }

    v8 = *(a1 + 152);
    if (v8)
    {
      sub_138F450(v8);
      operator delete();
    }

    result = *(a1 + 160);
    if (result)
    {
      sub_13F6DF4(result);

      operator delete();
    }
  }

  return result;
}

void sub_16CCAD8(void *a1)
{
  sub_16CC8AC(a1);

  operator delete();
}

unsigned __int8 *sub_16CCB10(unsigned __int8 *result)
{
  v1 = result;
  if (result[16])
  {
    result = sub_139AFB8(*(result + 3));
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

uint64_t sub_16CCB6C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v84 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v84, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (2)
  {
    v8 = (*v84 + 1);
    v9 = **v84;
    if (**v84 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(*v84, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = (*v84 + 2);
      }
    }

    *v84 = v8;
    switch(v9 >> 3)
    {
      case 1u:
        if (v9 != 10)
        {
          goto LABEL_152;
        }

        *(a1 + 16) |= 1u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 64);
        goto LABEL_124;
      case 2u:
        if (v9 != 18)
        {
          goto LABEL_152;
        }

        *(a1 + 16) |= 0x40u;
        v48 = *(a1 + 112);
        if (v48)
        {
          goto LABEL_82;
        }

        v51 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v7)
        {
          v51 = *v51;
        }

        v48 = sub_16F5828(v51);
        *(a1 + 112) = v48;
        goto LABEL_81;
      case 3u:
        if (v9 != 26)
        {
          goto LABEL_152;
        }

        *(a1 + 16) |= 0x80u;
        v41 = *(a1 + 120);
        if (!v41)
        {
          v42 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v42 = *v42;
          }

          sub_16F58FC(v42);
          v41 = v43;
          *(a1 + 120) = v43;
          v8 = *v84;
        }

        v44 = sub_21F86E8(a3, v41, v8);
        goto LABEL_125;
      case 4u:
        if (v9 != 34)
        {
          goto LABEL_152;
        }

        *(a1 + 16) |= 0x100u;
        v48 = *(a1 + 128);
        if (v48)
        {
          goto LABEL_82;
        }

        v49 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v7)
        {
          v49 = *v49;
        }

        v48 = sub_16F5828(v49);
        *(a1 + 128) = v48;
LABEL_81:
        v8 = *v84;
LABEL_82:
        v44 = sub_21F4D60(a3, v48, v8);
        goto LABEL_125;
      case 5u:
        if (v9 != 41)
        {
          goto LABEL_152;
        }

        v31 = *v8;
        v30 = v8 + 8;
        v5 |= 0x2000u;
        *(a1 + 168) = v31;
        goto LABEL_113;
      case 6u:
        if (v9 != 50)
        {
          goto LABEL_152;
        }

        *(a1 + 16) |= 2u;
        v58 = *(a1 + 8);
        v14 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
        if (v58)
        {
          v14 = *v14;
        }

        v15 = (a1 + 72);
        goto LABEL_124;
      case 7u:
        if (v9 != 58)
        {
          goto LABEL_152;
        }

        *(a1 + 16) |= 4u;
        v62 = *(a1 + 8);
        v14 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
        if (v62)
        {
          v14 = *v14;
        }

        v15 = (a1 + 80);
        goto LABEL_124;
      case 8u:
        if (v9 != 65)
        {
          goto LABEL_152;
        }

        v50 = *v8;
        v30 = v8 + 8;
        v5 |= 0x4000u;
        *(a1 + 176) = v50;
        goto LABEL_113;
      case 9u:
        if (v9 != 74)
        {
          goto LABEL_152;
        }

        *(a1 + 16) |= 8u;
        v66 = *(a1 + 8);
        v14 = (v66 & 0xFFFFFFFFFFFFFFFCLL);
        if (v66)
        {
          v14 = *v14;
        }

        v15 = (a1 + 88);
        goto LABEL_124;
      case 0xAu:
        if (v9 != 82)
        {
          goto LABEL_152;
        }

        *(a1 + 16) |= 0x10u;
        v40 = *(a1 + 8);
        v14 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
        if (v40)
        {
          v14 = *v14;
        }

        v15 = (a1 + 96);
        goto LABEL_124;
      case 0xBu:
        if (v9 != 90)
        {
          goto LABEL_152;
        }

        *(a1 + 16) |= 0x200u;
        v64 = *(a1 + 136);
        if (!v64)
        {
          v65 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v65 = *v65;
          }

          v64 = sub_16D1328(v65);
          *(a1 + 136) = v64;
          v8 = *v84;
        }

        v44 = sub_22353F4(a3, v64, v8);
        goto LABEL_125;
      case 0xCu:
        if (v9 != 98)
        {
          goto LABEL_152;
        }

        v22 = (v8 - 1);
        while (1)
        {
          v23 = (v22 + 1);
          *v84 = v22 + 1;
          v24 = *(a1 + 40);
          if (v24 && (v25 = *(a1 + 32), v25 < *v24))
          {
            *(a1 + 32) = v25 + 1;
            v26 = *&v24[2 * v25 + 2];
          }

          else
          {
            v27 = *(a1 + 24);
            if (!v27)
            {
              operator new();
            }

            *v29 = v28;
            v29[1] = sub_195A650;
            *v28 = 0;
            v28[1] = 0;
            v28[2] = 0;
            v26 = sub_19593CC(a1 + 24, v28);
            v23 = *v84;
          }

          v22 = sub_1958890(v26, v23, a3);
          *v84 = v22;
          if (!v22)
          {
            goto LABEL_162;
          }

          if (*a3 <= v22 || *v22 != 98)
          {
            goto LABEL_126;
          }
        }

      case 0xDu:
        if (v9 == 104)
        {
          v32 = (v8 - 1);
          while (1)
          {
            *v84 = v32 + 1;
            v33 = *(v32 + 1);
            v34 = (v32 + 2);
            if (v33 < 0)
            {
              v35 = *v34;
              v36 = (v35 << 7) + v33;
              LODWORD(v33) = v36 - 128;
              if (v35 < 0)
              {
                *v84 = sub_19587DC(v32 + 1, (v36 - 128));
                if (!*v84)
                {
                  goto LABEL_162;
                }

                LODWORD(v33) = v39;
                goto LABEL_43;
              }

              v34 = (v32 + 3);
            }

            *v84 = v34;
LABEL_43:
            if (sub_1916428(v33))
            {
              v37 = *(a1 + 48);
              if (v37 == *(a1 + 52))
              {
                v38 = v37 + 1;
                sub_1958E5C((a1 + 48), v37 + 1);
                *(*(a1 + 56) + 4 * v37) = v33;
              }

              else
              {
                *(*(a1 + 56) + 4 * v37) = v33;
                v38 = v37 + 1;
              }

              *(a1 + 48) = v38;
            }

            else
            {
              sub_13B6734();
            }

            v32 = *v84;
            if (*a3 <= *v84 || **v84 != 104)
            {
              goto LABEL_126;
            }
          }
        }

        if (v9 == 106)
        {
          *&v85 = a1 + 48;
          *(&v85 + 1) = sub_1916428;
          v86 = a1 + 8;
          v87 = 13;
          v44 = sub_1216588(a3, v8, &v85);
          goto LABEL_125;
        }

LABEL_152:
        if (v9)
        {
          v82 = (v9 & 7) == 4;
        }

        else
        {
          v82 = 1;
        }

        if (!v82)
        {
          if (*v7)
          {
            v83 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v83 = sub_11F1920((a1 + 8));
            v8 = *v84;
          }

          v44 = sub_1952690(v9, v83, v8, a3);
LABEL_125:
          *v84 = v44;
          if (!v44)
          {
            goto LABEL_162;
          }

LABEL_126:
          if (sub_195ADC0(a3, v84, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

        if (v8)
        {
          a3[10].i32[0] = v9 - 1;
        }

        else
        {
LABEL_162:
          *v84 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v84;
      case 0xEu:
        if (v9 != 114)
        {
          goto LABEL_152;
        }

        *(a1 + 16) |= 0x20u;
        v61 = *(a1 + 8);
        v14 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
        if (v61)
        {
          v14 = *v14;
        }

        v15 = (a1 + 104);
LABEL_124:
        v67 = sub_194DB04(v15, v14);
        v44 = sub_1958890(v67, *v84, a3);
        goto LABEL_125;
      case 0xFu:
        if (v9 != 120)
        {
          goto LABEL_152;
        }

        v5 |= 0x8000u;
        v20 = (v8 + 1);
        v19 = *v8;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_22;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          v74 = sub_19587DC(v8, v19);
          *v84 = v74;
          *(a1 + 184) = v75 != 0;
          if (!v74)
          {
            goto LABEL_162;
          }
        }

        else
        {
          v20 = (v8 + 2);
LABEL_22:
          *v84 = v20;
          *(a1 + 184) = v19 != 0;
        }

        goto LABEL_126;
      case 0x10u:
        if (v9 != 128)
        {
          goto LABEL_152;
        }

        v5 |= 0x10000u;
        v46 = (v8 + 1);
        v45 = *v8;
        if ((v45 & 0x8000000000000000) == 0)
        {
          goto LABEL_68;
        }

        v47 = *v46;
        v45 = (v47 << 7) + v45 - 128;
        if (v47 < 0)
        {
          v76 = sub_19587DC(v8, v45);
          *v84 = v76;
          *(a1 + 185) = v77 != 0;
          if (!v76)
          {
            goto LABEL_162;
          }
        }

        else
        {
          v46 = (v8 + 2);
LABEL_68:
          *v84 = v46;
          *(a1 + 185) = v45 != 0;
        }

        goto LABEL_126;
      case 0x11u:
        if (v9 != 136)
        {
          goto LABEL_152;
        }

        v5 |= 0x20000u;
        v16 = (v8 + 1);
        v17 = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        v18 = *v16;
        v17 = v17 + (v18 << 7) - 128;
        if (v18 < 0)
        {
          v72 = sub_1958770(v8, v17);
          *v84 = v72;
          *(a1 + 188) = v73;
          if (!v72)
          {
            goto LABEL_162;
          }
        }

        else
        {
          v16 = (v8 + 2);
LABEL_17:
          *v84 = v16;
          *(a1 + 188) = v17;
        }

        goto LABEL_126;
      case 0x12u:
        if (v9 != 144)
        {
          goto LABEL_152;
        }

        v5 |= 0x100000u;
        v52 = (v8 + 1);
        v53 = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_87;
        }

        v54 = *v52;
        v53 = v53 + (v54 << 7) - 128;
        if (v54 < 0)
        {
          v78 = sub_1958770(v8, v53);
          *v84 = v78;
          *(a1 + 208) = v79;
          if (!v78)
          {
            goto LABEL_162;
          }
        }

        else
        {
          v52 = (v8 + 2);
LABEL_87:
          *v84 = v52;
          *(a1 + 208) = v53;
        }

        goto LABEL_126;
      case 0x13u:
        if (v9 != 153)
        {
          goto LABEL_152;
        }

        v63 = *v8;
        v30 = v8 + 8;
        v5 |= 0x40000u;
        *(a1 + 192) = v63;
LABEL_113:
        *v84 = v30;
        goto LABEL_126;
      case 0x14u:
        if (v9 != 162)
        {
          goto LABEL_152;
        }

        *(a1 + 16) |= 0x400u;
        v70 = *(a1 + 144);
        if (!v70)
        {
          v71 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v71 = *v71;
          }

          v70 = sub_13AE7C0(v71);
          *(a1 + 144) = v70;
          v8 = *v84;
        }

        v44 = sub_222D024(a3, v70, v8);
        goto LABEL_125;
      case 0x15u:
        if (v9 != 168)
        {
          goto LABEL_152;
        }

        v5 |= 0x80000u;
        v56 = (v8 + 1);
        v55 = *v8;
        if ((v55 & 0x8000000000000000) == 0)
        {
          goto LABEL_92;
        }

        v57 = *v56;
        v55 = (v57 << 7) + v55 - 128;
        if (v57 < 0)
        {
          v80 = sub_19587DC(v8, v55);
          *v84 = v80;
          *(a1 + 200) = v81;
          if (!v80)
          {
            goto LABEL_162;
          }
        }

        else
        {
          v56 = (v8 + 2);
LABEL_92:
          *v84 = v56;
          *(a1 + 200) = v55;
        }

        goto LABEL_126;
      case 0x16u:
        if (v9 != 178)
        {
          goto LABEL_152;
        }

        *(a1 + 16) |= 0x800u;
        v59 = *(a1 + 152);
        if (!v59)
        {
          v60 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v60 = *v60;
          }

          v59 = sub_1392CF8(v60);
          *(a1 + 152) = v59;
          v8 = *v84;
        }

        v44 = sub_2235484(a3, v59, v8);
        goto LABEL_125;
      case 0x17u:
        if (v9 != 186)
        {
          goto LABEL_152;
        }

        *(a1 + 16) |= 0x1000u;
        v68 = *(a1 + 160);
        if (!v68)
        {
          v69 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v69 = *v69;
          }

          v68 = sub_140457C(v69);
          *(a1 + 160) = v68;
          v8 = *v84;
        }

        v44 = sub_2235514(a3, v68, v8);
        goto LABEL_125;
      default:
        goto LABEL_152;
    }
  }
}

char *sub_16CD4E4(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, a2);
    if ((v6 & 0x40) == 0)
    {
LABEL_3:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 112);
  *v4 = 18;
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
  if ((v6 & 0x80) == 0)
  {
LABEL_4:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_20:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 120);
  *v4 = 26;
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

  v4 = sub_16E5FE0(v10, v12, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_5:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_26:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 128);
  *v4 = 34;
  v14 = *(v13 + 44);
  v4[1] = v14;
  if (v14 > 0x7F)
  {
    v15 = sub_19575D0(v14, v4 + 1);
  }

  else
  {
    v15 = v4 + 2;
  }

  v4 = sub_16E5070(v13, v15, a3);
  if ((v6 & 0x2000) == 0)
  {
LABEL_6:
    if ((v6 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_32:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v16 = *(a1 + 168);
  *v4 = 41;
  *(v4 + 1) = v16;
  v4 += 9;
  if ((v6 & 2) == 0)
  {
LABEL_7:
    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  v4 = sub_128AEEC(a3, 6, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) == 0)
  {
LABEL_8:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  v4 = sub_128AEEC(a3, 7, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x4000) == 0)
  {
LABEL_9:
    if ((v6 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_37:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v17 = *(a1 + 176);
  *v4 = 65;
  *(v4 + 1) = v17;
  v4 += 9;
  if ((v6 & 8) == 0)
  {
LABEL_10:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  v4 = sub_128AEEC(a3, 9, *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_11:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_42;
  }

LABEL_41:
  v4 = sub_128AEEC(a3, 10, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x200) == 0)
  {
    goto LABEL_48;
  }

LABEL_42:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v18 = *(a1 + 136);
  *v4 = 90;
  v19 = *(v18 + 20);
  v4[1] = v19;
  if (v19 > 0x7F)
  {
    v20 = sub_19575D0(v19, v4 + 1);
  }

  else
  {
    v20 = v4 + 2;
  }

  v4 = sub_16CE54C(v18, v20, a3);
LABEL_48:
  v21 = *(a1 + 32);
  if (v21 >= 1)
  {
    v22 = 8;
    do
    {
      v23 = *(*(a1 + 40) + v22);
      v24 = *(v23 + 23);
      if (v24 < 0 && (v24 = v23[1], v24 > 127) || (*a3 - v4 + 14) < v24)
      {
        v4 = sub_1957480(a3, 12, v23, v4);
      }

      else
      {
        *v4 = 98;
        v4[1] = v24;
        if (*(v23 + 23) < 0)
        {
          v23 = *v23;
        }

        v25 = v4 + 2;
        memcpy(v4 + 2, v23, v24);
        v4 = &v25[v24];
      }

      v22 += 8;
      --v21;
    }

    while (v21);
  }

  v26 = *(a1 + 48);
  if (v26 < 1)
  {
    v29 = v4;
  }

  else
  {
    for (i = 0; i != v26; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v28 = *(*(a1 + 56) + 4 * i);
      *v4 = 104;
      v4[1] = v28;
      if (v28 > 0x7F)
      {
        v4[1] = v28 | 0x80;
        v30 = v28 >> 7;
        v4[2] = v28 >> 7;
        v29 = v4 + 3;
        if (v28 >= 0x4000)
        {
          LOBYTE(v31) = v4[2];
          do
          {
            *(v29 - 1) = v31 | 0x80;
            v31 = v30 >> 7;
            *v29++ = v30 >> 7;
            v32 = v30 >> 14;
            v30 >>= 7;
          }

          while (v32);
        }
      }

      else
      {
        v29 = v4 + 2;
      }

      v4 = v29;
    }
  }

  if ((v6 & 0x20) != 0)
  {
    v29 = sub_128AEEC(a3, 14, *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL, v29);
    if ((v6 & 0x8000) == 0)
    {
LABEL_73:
      if ((v6 & 0x10000) == 0)
      {
        goto LABEL_74;
      }

LABEL_80:
      if (*a3 <= v29)
      {
        v29 = sub_225EB68(a3, v29);
      }

      v35 = *(a1 + 185);
      *v29 = 384;
      v29[2] = v35;
      v29 += 3;
      if ((v6 & 0x20000) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_83;
    }
  }

  else if ((v6 & 0x8000) == 0)
  {
    goto LABEL_73;
  }

  if (*a3 <= v29)
  {
    v29 = sub_225EB68(a3, v29);
  }

  v34 = *(a1 + 184);
  *v29 = 120;
  v29[1] = v34;
  v29 += 2;
  if ((v6 & 0x10000) != 0)
  {
    goto LABEL_80;
  }

LABEL_74:
  if ((v6 & 0x20000) == 0)
  {
LABEL_75:
    v33 = v29;
    goto LABEL_90;
  }

LABEL_83:
  if (*a3 <= v29)
  {
    v29 = sub_225EB68(a3, v29);
  }

  v36 = *(a1 + 188);
  *v29 = 392;
  v29[2] = v36;
  if (v36 > 0x7F)
  {
    v29[2] = v36 | 0x80;
    v37 = v36 >> 7;
    v29[3] = v36 >> 7;
    v33 = v29 + 4;
    if (v36 >= 0x4000)
    {
      LOBYTE(v29) = v29[3];
      do
      {
        *(v33 - 1) = v29 | 0x80;
        LODWORD(v29) = v37 >> 7;
        *v33++ = v37 >> 7;
        v38 = v37 >> 14;
        v37 >>= 7;
      }

      while (v38);
    }
  }

  else
  {
    v33 = v29 + 3;
  }

LABEL_90:
  if ((v6 & 0x100000) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v40 = *(a1 + 208);
    *v33 = 400;
    v33[2] = v40;
    if (v40 > 0x7F)
    {
      v33[2] = v40 | 0x80;
      v41 = v40 >> 7;
      v33[3] = v40 >> 7;
      v39 = v33 + 4;
      if (v40 >= 0x4000)
      {
        LOBYTE(v33) = v33[3];
        do
        {
          *(v39 - 1) = v33 | 0x80;
          LODWORD(v33) = v41 >> 7;
          *v39++ = v41 >> 7;
          v42 = v41 >> 14;
          v41 >>= 7;
        }

        while (v42);
      }
    }

    else
    {
      v39 = v33 + 3;
    }
  }

  else
  {
    v39 = v33;
  }

  if ((v6 & 0x40000) == 0)
  {
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_101;
    }

LABEL_106:
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v45 = *(a1 + 144);
    *v39 = 418;
    v46 = *(v45 + 20);
    v39[2] = v46;
    if (v46 > 0x7F)
    {
      v47 = sub_19575D0(v46, v39 + 2);
    }

    else
    {
      v47 = v39 + 3;
    }

    v39 = sub_1398C24(v45, v47, a3);
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_112;
  }

  if (*a3 <= v39)
  {
    v39 = sub_225EB68(a3, v39);
  }

  v44 = *(a1 + 192);
  *v39 = 409;
  *(v39 + 2) = v44;
  v39 += 10;
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_106;
  }

LABEL_101:
  if ((v6 & 0x80000) == 0)
  {
LABEL_102:
    v43 = v39;
    goto LABEL_119;
  }

LABEL_112:
  if (*a3 <= v39)
  {
    v39 = sub_225EB68(a3, v39);
  }

  v48 = *(a1 + 200);
  *v39 = 424;
  v39[2] = v48;
  if (v48 > 0x7F)
  {
    v39[2] = v48 | 0x80;
    v49 = v48 >> 7;
    v39[3] = v48 >> 7;
    v43 = v39 + 4;
    if (v48 >= 0x4000)
    {
      LOBYTE(v39) = v39[3];
      do
      {
        *(v43 - 1) = v39 | 0x80;
        v39 = (v49 >> 7);
        *v43++ = v49 >> 7;
        v50 = v49 >> 14;
        v49 >>= 7;
      }

      while (v50);
    }
  }

  else
  {
    v43 = v39 + 3;
  }

LABEL_119:
  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= v43)
    {
      v43 = sub_225EB68(a3, v43);
    }

    v51 = *(a1 + 152);
    *v43 = 434;
    v52 = *(v51 + 40);
    v43[2] = v52;
    if (v52 > 0x7F)
    {
      v53 = sub_19575D0(v52, v43 + 2);
    }

    else
    {
      v53 = v43 + 3;
    }

    v43 = sub_138F614(v51, v53, a3);
  }

  if ((v6 & 0x1000) != 0)
  {
    if (*a3 <= v43)
    {
      v43 = sub_225EB68(a3, v43);
    }

    v54 = *(a1 + 160);
    *v43 = 442;
    v55 = *(v54 + 40);
    v43[2] = v55;
    if (v55 > 0x7F)
    {
      v56 = sub_19575D0(v55, v43 + 2);
    }

    else
    {
      v56 = v43 + 3;
    }

    v43 = sub_13F6FB8(v54, v56, a3);
  }

  v57 = *(a1 + 8);
  if ((v57 & 1) == 0)
  {
    return v43;
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

  if ((*a3 - v43) >= v60)
  {
    v62 = v60;
    memcpy(v43, v61, v60);
    v43 += v62;
    return v43;
  }

  return sub_1957130(a3, v61, v60, v43);
}

uint64_t sub_16CDD38(uint64_t a1)
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

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 56) + 4 * v9);
      if (v11 < 0)
      {
        v12 = 10;
      }

      else
      {
        v12 = (9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6;
      }

      v10 += v12;
      ++v9;
    }

    while (v8 != v9);
  }

  else
  {
    v10 = 0;
  }

  v13 = v4 + v8 + v10;
  v14 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

  if (v14)
  {
    v21 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    v22 = *(v21 + 23);
    v23 = *(v21 + 8);
    if ((v22 & 0x80u) == 0)
    {
      v23 = v22;
    }

    v13 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v14 & 2) == 0)
    {
LABEL_19:
      if ((v14 & 4) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_58;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_19;
  }

  v24 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v25 = *(v24 + 23);
  v26 = *(v24 + 8);
  if ((v25 & 0x80u) == 0)
  {
    v26 = v25;
  }

  v13 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v14 & 4) == 0)
  {
LABEL_20:
    if ((v14 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_58:
  v27 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v28 = *(v27 + 23);
  v29 = *(v27 + 8);
  if ((v28 & 0x80u) == 0)
  {
    v29 = v28;
  }

  v13 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v14 & 8) == 0)
  {
LABEL_21:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_64;
  }

LABEL_61:
  v30 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  v31 = *(v30 + 23);
  v32 = *(v30 + 8);
  if ((v31 & 0x80u) == 0)
  {
    v32 = v31;
  }

  v13 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v14 & 0x10) == 0)
  {
LABEL_22:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_23;
    }

LABEL_67:
    v36 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
    v37 = *(v36 + 23);
    v38 = *(v36 + 8);
    if ((v37 & 0x80u) == 0)
    {
      v38 = v37;
    }

    v13 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v14 & 0x40) == 0)
    {
LABEL_24:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    goto LABEL_70;
  }

LABEL_64:
  v33 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  v34 = *(v33 + 23);
  v35 = *(v33 + 8);
  if ((v34 & 0x80u) == 0)
  {
    v35 = v34;
  }

  v13 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v14 & 0x20) != 0)
  {
    goto LABEL_67;
  }

LABEL_23:
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_24;
  }

LABEL_70:
  v39 = sub_16E51F0(*(a1 + 112));
  v13 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v14 & 0x80) != 0)
  {
LABEL_25:
    v15 = sub_16E62F4(*(a1 + 120));
    v13 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_26:
  if ((v14 & 0xFF00) == 0)
  {
    goto LABEL_38;
  }

  if ((v14 & 0x100) != 0)
  {
    v40 = sub_16E51F0(*(a1 + 128));
    v13 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v14 & 0x200) == 0)
    {
LABEL_29:
      if ((v14 & 0x400) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_74;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_29;
  }

  v41 = sub_16CE658(*(a1 + 136));
  v13 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v14 & 0x400) == 0)
  {
LABEL_30:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_31;
    }

LABEL_75:
    v43 = sub_138F6DC(*(a1 + 152));
    v13 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_74:
  v42 = sub_1398EEC(*(a1 + 144));
  v13 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v14 & 0x800) != 0)
  {
    goto LABEL_75;
  }

LABEL_31:
  if ((v14 & 0x1000) != 0)
  {
LABEL_32:
    v16 = sub_13F7080(*(a1 + 160));
    v13 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_33:
  v17 = v13 + 9;
  if ((v14 & 0x2000) == 0)
  {
    v17 = v13;
  }

  if ((v14 & 0x4000) != 0)
  {
    v17 += 9;
  }

  v13 = v17 + ((v14 >> 14) & 2);
LABEL_38:
  if ((v14 & 0x1F0000) != 0)
  {
    v18 = v13 + 3;
    if ((v14 & 0x10000) == 0)
    {
      v18 = v13;
    }

    if ((v14 & 0x20000) != 0)
    {
      v18 += ((9 * (__clz(*(a1 + 188) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v14 & 0x40000) != 0)
    {
      v13 = v18 + 10;
    }

    else
    {
      v13 = v18;
    }

    if ((v14 & 0x80000) != 0)
    {
      v13 += ((9 * (__clz(*(a1 + 200) | 1) ^ 0x3F) + 73) >> 6) + 2;
    }

    if ((v14 & 0x100000) != 0)
    {
      v13 += ((9 * (__clz(*(a1 + 208) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

  v19 = *(a1 + 8);
  if (v19)
  {
    v44 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v45 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v45 < 0)
    {
      v45 = *(v44 + 16);
    }

    v13 += v45;
  }

  *(a1 + 20) = v13;
  return v13;
}

void sub_16CE230(uint64_t a1, uint64_t a2)
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

      v5 = sub_13AEA28(v7);
      *(a1 + 24) = v5;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_276DAA8;
    }

    sub_139B3AC(v5, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_16CE2D8(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_139B468(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_16CE318(uint64_t a1)
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
  if (a1 != &off_277DEC0)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_139AF7C(v6);
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

void sub_16CE3D0(uint64_t a1)
{
  sub_16CE318(a1);

  operator delete();
}

char *sub_16CE408(uint64_t a1, char *a2, int32x2_t *a3)
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

        v14 = sub_13AEA28(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_2204370(a3, v14, v6);
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

char *sub_16CE54C(uint64_t a1, unint64_t __dst, unint64_t *a3)
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
    v7 = *(v6 + 40);
    v4[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, v4 + 1);
    }

    else
    {
      v8 = v4 + 2;
    }

    v4 = sub_139B1C4(v6, v8, a3);
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

uint64_t sub_16CE658(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_139B304(*(a1 + 24));
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

void *sub_16CE6E8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_15B472C(a1 + 5);
  sub_1311EE8(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16CE774(void *a1)
{
  sub_16CE6E8(a1);

  operator delete();
}

char *sub_16CE7AC(uint64_t a1, char *a2, int32x2_t *a3)
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
              v19 = sub_157B8A8(*(a1 + 40));
              v18 = sub_19593CC(a1 + 40, v19);
              v15 = v26;
            }

            v14 = sub_221EA2C(a3, v18, v15);
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
            v25 = sub_157B674(*(a1 + 16));
            v24 = sub_19593CC(a1 + 16, v25);
            v21 = v26;
          }

          v20 = sub_21F8DA8(a3, v24, v21);
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

char *sub_16CE9E0(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_157926C(v8, v10, a3);
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

      __dst = sub_157A5D0(v13, v15, a3);
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

uint64_t sub_16CEBA4(uint64_t a1)
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
      v7 = sub_1579354(v6);
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
      v14 = sub_157A6D0(v13);
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

void *sub_16CECB4(void *a1)
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

  sub_16CED48(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956ABC((a1 + 6));
  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_16CED48(uint64_t result)
{
  if (result != &off_277DF28)
  {
    v1 = result;
    v2 = *(result + 64);
    if (v2)
    {
      sub_15B1D28(v2);
      operator delete();
    }

    v3 = v1[9];
    if (v3)
    {
      sub_15B17DC(v3);
      operator delete();
    }

    v4 = v1[10];
    if (v4)
    {
      sub_16CE6E8(v4);
      operator delete();
    }

    result = v1[11];
    if (result)
    {
      sub_16D0254(result);

      operator delete();
    }
  }

  return result;
}

void sub_16CEE14(void *a1)
{
  sub_16CECB4(a1);

  operator delete();
}

uint64_t sub_16CEE4C(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  *(a1 + 48) = 0;
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

LABEL_14:
    result = sub_15B0E08(*(a1 + 72));
    if ((v3 & 4) == 0)
    {
LABEL_5:
      if ((v3 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_15;
  }

  result = sub_1580044(*(a1 + 64));
  if ((v3 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v3 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  result = sub_16C1804(*(a1 + 80));
  if ((v3 & 8) != 0)
  {
LABEL_6:
    result = sub_16CEF00(*(a1 + 88));
  }

LABEL_7:
  if ((v3 & 0xF0) != 0)
  {
    *(a1 + 101) = 0;
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

uint64_t sub_16CEF00(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_16CEF00(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  if (*(a1 + 16))
  {
    result = sub_1580044(*(a1 + 72));
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 72) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_16CEF9C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v61 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v61, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v61 + 1);
    v8 = **v61;
    if (**v61 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v61, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v61 + 2);
      }
    }

    *v61 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      break;
    }

    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 18)
        {
          v23 = (v7 - 1);
          while (1)
          {
            v24 = (v23 + 1);
            *v61 = v23 + 1;
            v25 = *(a1 + 40);
            if (v25 && (v26 = *(a1 + 32), v26 < *v25))
            {
              *(a1 + 32) = v26 + 1;
              v27 = *&v25[2 * v26 + 2];
            }

            else
            {
              v28 = *(a1 + 24);
              if (!v28)
              {
                operator new();
              }

              *v30 = v29;
              v30[1] = sub_195A650;
              *v29 = 0;
              v29[1] = 0;
              v29[2] = 0;
              v27 = sub_19593CC(a1 + 24, v29);
              v24 = *v61;
            }

            v23 = sub_1958890(v27, v24, a3);
            *v61 = v23;
            if (!v23)
            {
              goto LABEL_119;
            }

            if (*a3 <= v23 || *v23 != 18)
            {
              goto LABEL_113;
            }
          }
        }

        goto LABEL_105;
      }

      if (v8 != 8)
      {
        goto LABEL_105;
      }

      v35 = (v7 + 1);
      v34 = *v7;
      if (v34 < 0)
      {
        v36 = *v35;
        v34 = (v36 << 7) + v34 - 128;
        if ((v36 & 0x80000000) == 0)
        {
          v35 = (v7 + 2);
          goto LABEL_65;
        }

        *v61 = sub_19587DC(v7, v34);
        if (!*v61)
        {
          goto LABEL_119;
        }
      }

      else
      {
LABEL_65:
        *v61 = v35;
      }

      if (v34 > 0x1A)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 0x10u;
        *(a1 + 96) = v34;
      }

      goto LABEL_113;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_105;
      }

      v5 |= 0x20u;
      v41 = (v7 + 1);
      LODWORD(v40) = *v7;
      if ((v40 & 0x80) == 0)
      {
        goto LABEL_78;
      }

      v42 = *v41;
      v40 = v40 + (v42 << 7) - 128;
      if ((v42 & 0x80000000) == 0)
      {
        v41 = (v7 + 2);
LABEL_78:
        *v61 = v41;
        *(a1 + 100) = v40;
        goto LABEL_113;
      }

      v52 = sub_19587DC(v7, v40);
      *v61 = v52;
      *(a1 + 100) = v53;
      if (!v52)
      {
        goto LABEL_119;
      }
    }

    else
    {
      if (v11 != 4)
      {
        if (v11 != 5 || v8 != 42)
        {
          goto LABEL_105;
        }

        *(a1 + 16) |= 1u;
        v12 = *(a1 + 64);
        if (!v12)
        {
          v13 = *(a1 + 8);
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
          if (v13)
          {
            v14 = *v14;
          }

          v12 = sub_15B234C(v14);
          *(a1 + 64) = v12;
          v7 = *v61;
        }

        v15 = sub_221ECFC(a3, v12, v7);
        goto LABEL_112;
      }

      if (v8 != 32)
      {
        goto LABEL_105;
      }

      v5 |= 0x40u;
      v47 = (v7 + 1);
      LODWORD(v46) = *v7;
      if ((v46 & 0x80) == 0)
      {
        goto LABEL_88;
      }

      v48 = *v47;
      v46 = v46 + (v48 << 7) - 128;
      if ((v48 & 0x80000000) == 0)
      {
        v47 = (v7 + 2);
LABEL_88:
        *v61 = v47;
        *(a1 + 104) = v46;
        goto LABEL_113;
      }

      v56 = sub_19587DC(v7, v46);
      *v61 = v56;
      *(a1 + 104) = v57;
      if (!v56)
      {
        goto LABEL_119;
      }
    }

LABEL_113:
    if (sub_195ADC0(a3, v61, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 7)
  {
    if (v11 == 6)
    {
      if (v8 != 50)
      {
        goto LABEL_105;
      }

      *(a1 + 16) |= 2u;
      v37 = *(a1 + 72);
      if (!v37)
      {
        v38 = *(a1 + 8);
        v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        if (v38)
        {
          v39 = *v39;
        }

        v37 = sub_15B22D4(v39);
        *(a1 + 72) = v37;
        v7 = *v61;
      }

      v15 = sub_22213CC(a3, v37, v7);
    }

    else
    {
      if (v11 != 7 || v8 != 58)
      {
        goto LABEL_105;
      }

      *(a1 + 16) |= 4u;
      v31 = *(a1 + 80);
      if (!v31)
      {
        v32 = *(a1 + 8);
        v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
        if (v32)
        {
          v33 = *v33;
        }

        v31 = sub_16D13A0(v33);
        *(a1 + 80) = v31;
        v7 = *v61;
      }

      v15 = sub_22339EC(a3, v31, v7);
    }

    goto LABEL_112;
  }

  switch(v11)
  {
    case 8u:
      if (v8 != 64)
      {
        break;
      }

      v5 |= 0x80u;
      v44 = (v7 + 1);
      v43 = *v7;
      if ((v43 & 0x8000000000000000) == 0)
      {
        goto LABEL_83;
      }

      v45 = *v44;
      v43 = (v45 << 7) + v43 - 128;
      if ((v45 & 0x80000000) == 0)
      {
        v44 = (v7 + 2);
LABEL_83:
        *v61 = v44;
        *(a1 + 108) = v43 != 0;
        goto LABEL_113;
      }

      v54 = sub_19587DC(v7, v43);
      *v61 = v54;
      *(a1 + 108) = v55 != 0;
      if (!v54)
      {
        goto LABEL_119;
      }

      goto LABEL_113;
    case 9u:
      if (v8 != 74)
      {
        break;
      }

      *(a1 + 16) |= 8u;
      v49 = *(a1 + 88);
      if (!v49)
      {
        v50 = *(a1 + 8);
        v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
        if (v50)
        {
          v51 = *v51;
        }

        v49 = sub_16D14F0(v51);
        *(a1 + 88) = v49;
        v7 = *v61;
      }

      v15 = sub_22355A4(a3, v49, v7);
LABEL_112:
      *v61 = v15;
      if (!v15)
      {
        goto LABEL_119;
      }

      goto LABEL_113;
    case 0xAu:
      if (v8 == 80)
      {
        v16 = v7 - 1;
        while (1)
        {
          *v61 = v16 + 1;
          v17 = v16[1];
          if (v17 < 0)
          {
            v18 = (v16[2] << 7) + v17;
            v17 = (v18 - 128);
            if (v16[2] < 0)
            {
              v16 = sub_19587DC((v16 + 1), (v18 - 128));
              v17 = v19;
            }

            else
            {
              v16 += 3;
            }
          }

          else
          {
            v16 += 2;
          }

          *v61 = v16;
          v20 = *(a1 + 48);
          if (v20 == *(a1 + 52))
          {
            v21 = v20 + 1;
            sub_1959094((a1 + 48), v20 + 1);
            *(*(a1 + 56) + 8 * v20) = v17;
            v16 = *v61;
          }

          else
          {
            *(*(a1 + 56) + 8 * v20) = v17;
            v21 = v20 + 1;
          }

          *(a1 + 48) = v21;
          if (!v16)
          {
            goto LABEL_119;
          }

          if (*a3 <= v16 || *v16 != 80)
          {
            goto LABEL_113;
          }
        }
      }

      if (v8 == 82)
      {
        v15 = sub_1958938((a1 + 48), v7, a3);
        goto LABEL_112;
      }

      break;
  }

LABEL_105:
  if (v8)
  {
    v58 = (v8 & 7) == 4;
  }

  else
  {
    v58 = 1;
  }

  if (!v58)
  {
    v59 = *(a1 + 8);
    if (v59)
    {
      v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v60 = sub_11F1920((a1 + 8));
      v7 = *v61;
    }

    v15 = sub_1952690(v8, v60, v7, a3);
    goto LABEL_112;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_119:
  *v61 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v61;
}

char *sub_16CF5B4(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 96);
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
        v6 = sub_1957480(a3, 2, v13, v6);
      }

      else
      {
        *v6 = 18;
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

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v17 = *(a1 + 100);
    *v6 = 24;
    v6[1] = v17;
    if (v17 > 0x7F)
    {
      v6[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v6[2] = v17 >> 7;
      v16 = v6 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v19) = v6[2];
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
      v16 = v6 + 2;
    }
  }

  else
  {
    v16 = v6;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v22 = *(a1 + 104);
    *v16 = 32;
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
          v16 = (v23 >> 7);
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

  if (v5)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v25 = *(a1 + 64);
    *v21 = 42;
    v26 = *(v25 + 20);
    v21[1] = v26;
    if (v26 > 0x7F)
    {
      v27 = sub_19575D0(v26, v21 + 1);
    }

    else
    {
      v27 = v21 + 2;
    }

    v21 = sub_15B1F3C(v25, v27, a3);
    if ((v5 & 2) == 0)
    {
LABEL_41:
      if ((v5 & 4) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_57;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_41;
  }

  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v28 = *(a1 + 72);
  *v21 = 50;
  v29 = *(v28 + 20);
  v21[1] = v29;
  if (v29 > 0x7F)
  {
    v30 = sub_19575D0(v29, v21 + 1);
  }

  else
  {
    v30 = v21 + 2;
  }

  v21 = sub_15B1A04(v28, v30, a3);
  if ((v5 & 4) == 0)
  {
LABEL_42:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_63;
  }

LABEL_57:
  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v31 = *(a1 + 80);
  *v21 = 58;
  v32 = *(v31 + 64);
  v21[1] = v32;
  if (v32 > 0x7F)
  {
    v33 = sub_19575D0(v32, v21 + 1);
  }

  else
  {
    v33 = v21 + 2;
  }

  v21 = sub_16CE9E0(v31, v33, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_43:
    if ((v5 & 8) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_66;
  }

LABEL_63:
  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v34 = *(a1 + 108);
  *v21 = 64;
  v21[1] = v34;
  v21 += 2;
  if ((v5 & 8) != 0)
  {
LABEL_66:
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v35 = *(a1 + 88);
    *v21 = 74;
    v36 = *(v35 + 20);
    v21[1] = v36;
    if (v36 > 0x7F)
    {
      v37 = sub_19575D0(v36, v21 + 1);
    }

    else
    {
      v37 = v21 + 2;
    }

    v21 = sub_16D06C0(v35, v37, a3);
  }

LABEL_72:
  v38 = *(a1 + 48);
  if (v38 < 1)
  {
    v41 = v21;
  }

  else
  {
    for (i = 0; i != v38; ++i)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v40 = *(*(a1 + 56) + 8 * i);
      *v21 = 80;
      v21[1] = v40;
      if (v40 > 0x7F)
      {
        v21[1] = v40 | 0x80;
        v42 = v40 >> 7;
        v21[2] = v40 >> 7;
        v41 = v21 + 3;
        if (v40 >= 0x4000)
        {
          LOBYTE(v21) = v21[2];
          do
          {
            *(v41 - 1) = v21 | 0x80;
            v21 = (v42 >> 7);
            *v41++ = v42 >> 7;
            v43 = v42 >> 14;
            v42 >>= 7;
          }

          while (v43);
        }
      }

      else
      {
        v41 = v21 + 2;
      }

      v21 = v41;
    }
  }

  v44 = *(a1 + 8);
  if ((v44 & 1) == 0)
  {
    return v41;
  }

  v46 = v44 & 0xFFFFFFFFFFFFFFFCLL;
  v47 = *(v46 + 31);
  if (v47 < 0)
  {
    v48 = *(v46 + 8);
    v47 = *(v46 + 16);
  }

  else
  {
    v48 = (v46 + 8);
  }

  if (*a3 - v41 >= v47)
  {
    v49 = v47;
    memcpy(v41, v48, v47);
    v41 += v49;
    return v41;
  }

  return sub_1957130(a3, v48, v47, v41);
}

uint64_t sub_16CFB1C(uint64_t a1)
{
  if ((*(a1 + 16) & 0x10) != 0)
  {
    v3 = *(a1 + 96);
    if (v3 < 0)
    {
      v2 = 11;
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = *(a1 + 32);
  v5 = v2 + v4;
  if (v4 >= 1)
  {
    v6 = (*(a1 + 40) + 8);
    do
    {
      v7 = *v6++;
      v8 = *(v7 + 23);
      v9 = *(v7 + 8);
      if ((v8 & 0x80u) == 0)
      {
        v9 = v8;
      }

      v5 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      --v4;
    }

    while (v4);
  }

  v10 = sub_1959F14((a1 + 48)) + *(a1 + 48) + v5;
  v11 = *(a1 + 16);
  if ((v11 & 0xF) == 0)
  {
    goto LABEL_17;
  }

  if ((v11 & 1) == 0)
  {
    if ((v11 & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_32:
    v22 = sub_15B1BB4(*(a1 + 72));
    v10 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v11 & 4) == 0)
    {
LABEL_15:
      if ((v11 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_33;
  }

  v21 = sub_15B20A0(*(a1 + 64));
  v10 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v11 & 2) != 0)
  {
    goto LABEL_32;
  }

LABEL_14:
  if ((v11 & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_33:
  v23 = sub_16CEBA4(*(a1 + 80));
  v10 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v11 & 8) != 0)
  {
LABEL_16:
    v12 = sub_16D0984(*(a1 + 88));
    v10 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v11 & 0xE0) != 0)
  {
    if ((v11 & 0x20) != 0)
    {
      v13 = *(a1 + 100);
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v13 >= 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 11;
      }

      v10 += v15;
    }

    if ((v11 & 0x40) != 0)
    {
      v16 = *(a1 + 104);
      v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v16 >= 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 11;
      }

      v10 += v18;
    }

    v10 += (v11 >> 6) & 2;
  }

  v19 = *(a1 + 8);
  if (v19)
  {
    v24 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v25 < 0)
    {
      v25 = *(v24 + 16);
    }

    v10 += v25;
  }

  *(a1 + 20) = v10;
  return v10;
}

std::string *sub_16CFD70(std::string *result, uint64_t a2)
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

  v9 = *(a2 + 48);
  if (v9)
  {
    data_low = SLODWORD(v3[2].__r_.__value_.__l.__data_);
    sub_1959094(&v3[2], data_low + v9);
    size = v3[2].__r_.__value_.__l.__size_;
    LODWORD(v3[2].__r_.__value_.__l.__data_) += *(a2 + 48);
    result = memcpy((size + 8 * data_low), *(a2 + 56), 8 * *(a2 + 48));
  }

  v12 = *(a2 + 16);
  if (v12)
  {
    if (v12)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v14 = v3[2].__r_.__value_.__r.__words[2];
      if (!v14)
      {
        v15 = v3->__r_.__value_.__l.__size_;
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_15B234C(v16);
        v3[2].__r_.__value_.__r.__words[2] = v14;
      }

      if (*(a2 + 64))
      {
        v17 = *(a2 + 64);
      }

      else
      {
        v17 = &off_27789A0;
      }

      result = sub_1581C8C(v14, v17);
      if ((v12 & 2) == 0)
      {
LABEL_9:
        if ((v12 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_37;
      }
    }

    else if ((v12 & 2) == 0)
    {
      goto LABEL_9;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    data = v3[3].__r_.__value_.__l.__data_;
    if (!data)
    {
      v19 = v3->__r_.__value_.__l.__size_;
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      data = sub_15B22D4(v20);
      v3[3].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 72))
    {
      v21 = *(a2 + 72);
    }

    else
    {
      v21 = &off_2778980;
    }

    result = sub_128F8FC(data, v21);
    if ((v12 & 4) == 0)
    {
LABEL_10:
      if ((v12 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_45;
    }

LABEL_37:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v22 = v3[3].__r_.__value_.__l.__size_;
    if (!v22)
    {
      v23 = v3->__r_.__value_.__l.__size_;
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_16D13A0(v24);
      v3[3].__r_.__value_.__l.__size_ = v22;
    }

    if (*(a2 + 80))
    {
      v25 = *(a2 + 80);
    }

    else
    {
      v25 = &off_277DEE0;
    }

    result = sub_16C2234(v22, v25);
    if ((v12 & 8) == 0)
    {
LABEL_11:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_53;
    }

LABEL_45:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    v26 = v3[3].__r_.__value_.__r.__words[2];
    if (!v26)
    {
      v27 = v3->__r_.__value_.__l.__size_;
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      v26 = sub_16D14F0(v28);
      v3[3].__r_.__value_.__r.__words[2] = v26;
    }

    if (*(a2 + 88))
    {
      v29 = *(a2 + 88);
    }

    else
    {
      v29 = &off_277DF98;
    }

    result = sub_16D0008(v26, v29);
    if ((v12 & 0x10) == 0)
    {
LABEL_12:
      if ((v12 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_54;
    }

LABEL_53:
    LODWORD(v3[4].__r_.__value_.__l.__data_) = *(a2 + 96);
    if ((v12 & 0x20) == 0)
    {
LABEL_13:
      if ((v12 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_55;
    }

LABEL_54:
    HIDWORD(v3[4].__r_.__value_.__r.__words[0]) = *(a2 + 100);
    if ((v12 & 0x40) == 0)
    {
LABEL_14:
      if ((v12 & 0x80) == 0)
      {
LABEL_16:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v12;
        goto LABEL_17;
      }

LABEL_15:
      v3[4].__r_.__value_.__s.__data_[12] = *(a2 + 108);
      goto LABEL_16;
    }

LABEL_55:
    LODWORD(v3[4].__r_.__value_.__r.__words[1]) = *(a2 + 104);
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_16D0008(std::string *result, uint64_t a2)
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
    result = sub_16E2AB8(&v3[2], v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
    v12 = LODWORD(v3[2].__r_.__value_.__r.__words[1]) + v9;
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = v12;
    v13 = v3[2].__r_.__value_.__r.__words[2];
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if ((v14 & 3) != 0)
  {
    if (v14)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      data = v3[3].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v17 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v17 = *v17;
        }

        data = sub_15B234C(v17);
        v3[3].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 72))
      {
        v18 = *(a2 + 72);
      }

      else
      {
        v18 = &off_27789A0;
      }

      result = sub_1581C8C(data, v18);
    }

    if ((v14 & 2) != 0)
    {
      LODWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 80);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v14;
  }

  v19 = *(a2 + 8);
  if (v19)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_16D0190(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x10) == 0)
  {
    return 0;
  }

  if (v1)
  {
    result = sub_1581E0C(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 16);
  }

  if ((v1 & 2) != 0)
  {
    result = sub_15B1748(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 16);
  }

  if ((v1 & 8) == 0)
  {
    return 1;
  }

  result = sub_16D0200(*(a1 + 88));
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL sub_16D0200(uint64_t a1)
{
  result = sub_16D0AF8(a1 + 48);
  if (result)
  {
    if ((*(a1 + 16) & 1) == 0)
    {
      return 1;
    }

    result = sub_1581E0C(*(a1 + 72));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_16D0254(uint64_t a1)
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
  if (a1 != &off_277DF98)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      sub_15B1D28(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_16E28B0((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16D0320(uint64_t a1)
{
  sub_16D0254(a1);

  operator delete();
}

uint64_t sub_16D0358(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v35 = a2;
  if (sub_195ADC0(a3, v35, a3[11].i32[1]))
  {
    return *v35;
  }

  while (1)
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
    if (v7 >> 3 <= 2)
    {
      break;
    }

    if (v10 == 3)
    {
      if (v7 == 26)
      {
        v27 = v6 - 1;
        while (1)
        {
          *v35 = v27 + 1;
          v28 = *(a1 + 64);
          if (v28 && (v29 = *(a1 + 56), v29 < *v28))
          {
            *(a1 + 56) = v29 + 1;
            v30 = *&v28[2 * v29 + 2];
          }

          else
          {
            v31 = sub_16D14F0(*(a1 + 48));
            v30 = sub_19593CC(a1 + 48, v31);
          }

          v27 = sub_22355A4(a3, v30);
          *v35 = v27;
          if (!v27)
          {
            goto LABEL_66;
          }

          if (*a3 <= v27 || *v27 != 26)
          {
            goto LABEL_58;
          }
        }
      }

      goto LABEL_50;
    }

    if (v10 != 4 || v7 != 34)
    {
      goto LABEL_50;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 72);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_15B234C(v17);
      *(a1 + 72) = v15;
      v6 = *v35;
    }

    v18 = sub_221ECFC(a3, v15, v6);
LABEL_57:
    *v35 = v18;
    if (!v18)
    {
      goto LABEL_66;
    }

LABEL_58:
    if (sub_195ADC0(a3, v35, a3[11].i32[1]))
    {
      return *v35;
    }
  }

  if (v10 == 1)
  {
    if (v7 == 10)
    {
      v19 = (v6 - 1);
      while (1)
      {
        v20 = (v19 + 1);
        *v35 = v19 + 1;
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
          v20 = *v35;
        }

        v19 = sub_1958890(v23, v20, a3);
        *v35 = v19;
        if (!v19)
        {
          goto LABEL_66;
        }

        if (*a3 <= v19 || *v19 != 10)
        {
          goto LABEL_58;
        }
      }
    }
  }

  else if (v10 == 2 && v7 == 16)
  {
    v13 = (v6 + 1);
    v12 = *v6;
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    v14 = *v13;
    v12 = (v14 << 7) + v12 - 128;
    if (v14 < 0)
    {
      *v35 = sub_19587DC(v6, v12);
      if (!*v35)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v13 = (v6 + 2);
LABEL_17:
      *v35 = v13;
    }

    if (v12 > 2)
    {
      sub_12E8418();
    }

    else
    {
      *(a1 + 16) |= 2u;
      *(a1 + 80) = v12;
    }

    goto LABEL_58;
  }

LABEL_50:
  if (v7)
  {
    v32 = (v7 & 7) == 4;
  }

  else
  {
    v32 = 1;
  }

  if (!v32)
  {
    v33 = *(a1 + 8);
    if (v33)
    {
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v34 = sub_11F1920((a1 + 8));
      v6 = *v35;
    }

    v18 = sub_1952690(v7, v34, v6, a3);
    goto LABEL_57;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v35;
  }

LABEL_66:
  *v35 = 0;
  return *v35;
}

char *sub_16D06C0(uint64_t a1, char *a2, _DWORD *a3)
{
  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 40) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || *a3 - a2 + 14 < v9)
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
        memcpy(a2 + 2, v8, v9);
        a2 = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 16);
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
        LOBYTE(v15) = a2[2];
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
      v12 = a2 + 2;
    }
  }

  else
  {
    v12 = a2;
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v19 = *(*(a1 + 64) + 8 * i + 8);
      *v12 = 26;
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

      v12 = sub_16D06C0(v19, v21, a3);
    }
  }

  if (v11)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v22 = *(a1 + 72);
    *v12 = 34;
    v23 = *(v22 + 20);
    v12[1] = v23;
    if (v23 > 0x7F)
    {
      v24 = sub_19575D0(v23, v12 + 1);
    }

    else
    {
      v24 = v12 + 2;
    }

    v12 = sub_15B1F3C(v22, v24, a3);
  }

  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return v12;
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

  if (*a3 - v12 >= v28)
  {
    v30 = v28;
    memcpy(v12, v29, v28);
    v12 += v30;
    return v12;
  }

  return sub_1957130(a3, v29, v28, v12);
}

uint64_t sub_16D0984(uint64_t a1)
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
      v14 = sub_16D0984(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 3) != 0)
  {
    if (v15)
    {
      v16 = sub_15B20A0(*(a1 + 72));
      v9 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v15 & 2) != 0)
    {
      v17 = *(a1 + 80);
      v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v17 >= 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 11;
      }

      v9 += v19;
    }
  }

  v20 = *(a1 + 8);
  if (v20)
  {
    v22 = v20 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v20 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    v9 += v23;
  }

  *(a1 + 20) = v9;
  return v9;
}

BOOL sub_16D0AF8(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_16D0200(*(*(a1 + 16) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_16D0B60(uint64_t a1)
{
  if (!a1)
  {

    sub_16E2B44();
  }

  return sub_16C2C78(v3, a1, 0);
}

void *sub_16D0BBC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FFA18;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_16D0C38(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *&result = sub_16C5ADC(v2, a1, 0).n128_u64[0];
  return result;
}

void *sub_16D0C98(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FFB18;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_16D0D14(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26FFB98;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_16D0D9C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26FFC18;
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

void *sub_16D0E44(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26FFC98;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_16D0EE0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FFD18;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_16D0F80(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FFD98;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = &qword_278E990;
  *(result + 96) = 0;
  return result;
}

void *sub_16D1038(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FFE18;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = 0;
  return result;
}

uint64_t sub_16D10C0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FFE98;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = a1;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  return result;
}

void *sub_16D1168(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FFF18;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_16D11E4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FFF98;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

double sub_16D1260(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_2700018;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = a1;
  *(v2 + 64) = &qword_278E990;
  *(v2 + 72) = &qword_278E990;
  *(v2 + 80) = &qword_278E990;
  *(v2 + 88) = &qword_278E990;
  *(v2 + 96) = &qword_278E990;
  *(v2 + 104) = &qword_278E990;
  result = 0.0;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0;
  return result;
}

void *sub_16D1328(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2700098;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_16D13A0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2700118;
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

uint64_t sub_16D1444(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2700198;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = a1;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 93) = 0u;
  return result;
}

uint64_t sub_16D14F0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2700218;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  return result;
}

uint64_t sub_16D1598(uint64_t a1)
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

  v5 = (a1 + 40);
  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C((a1 + 48));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16D1658(uint64_t a1)
{
  sub_16D1598(a1);

  operator delete();
}

uint64_t sub_16D1690(uint64_t a1)
{
  *(a1 + 24) = 0;
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

  v2 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_11:
  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 48) = 0;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_16D1714(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v36 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v36, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = (*v36 + 1);
    v9 = **v36;
    if (**v36 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(*v36, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = (*v36 + 2);
      }
    }

    *v36 = v8;
    v13 = v9 >> 3;
    if (v9 >> 3 <= 2)
    {
      if (v13 == 1)
      {
        if (v9 != 10)
        {
          goto LABEL_51;
        }

        *(a1 + 16) |= 1u;
        v26 = *(a1 + 8);
        v16 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v16 = *v16;
        }

        v17 = (a1 + 40);
      }

      else
      {
        if (v13 != 2 || v9 != 18)
        {
          goto LABEL_51;
        }

        *(a1 + 16) |= 2u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = (a1 + 48);
      }

      v27 = sub_194DB04(v17, v16);
      v28 = sub_1958890(v27, *v36, a3);
      goto LABEL_58;
    }

    if (v13 != 3)
    {
      break;
    }

    if (v9 != 24)
    {
      goto LABEL_51;
    }

    v5 |= 4u;
    v30 = v8 + 1;
    LODWORD(v29) = *v8;
    if ((v29 & 0x80) != 0)
    {
      v31 = *v30;
      v29 = v29 + (v31 << 7) - 128;
      if (v31 < 0)
      {
        v32 = sub_19587DC(v8, v29);
        *v36 = v32;
        *(a1 + 56) = v33;
        if (!v32)
        {
          goto LABEL_64;
        }

        goto LABEL_59;
      }

      v30 = v8 + 2;
    }

    *v36 = v30;
    *(a1 + 56) = v29;
LABEL_59:
    if (sub_195ADC0(a3, v36, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v13 != 4)
  {
    goto LABEL_51;
  }

  if (v9 == 32)
  {
    v18 = (v8 - 1);
    while (1)
    {
      *v36 = v18 + 1;
      v19 = *(v18 + 1);
      v20 = (v18 + 2);
      if (v19 < 0)
      {
        v21 = *v20;
        v22 = (v21 << 7) + v19;
        LODWORD(v19) = v22 - 128;
        if (v21 < 0)
        {
          *v36 = sub_19587DC(v18 + 1, (v22 - 128));
          if (!*v36)
          {
            goto LABEL_64;
          }

          LODWORD(v19) = v25;
          goto LABEL_26;
        }

        v20 = (v18 + 3);
      }

      *v36 = v20;
LABEL_26:
      if (sub_1578F74(v19))
      {
        v23 = *(a1 + 24);
        if (v23 == *(a1 + 28))
        {
          v24 = v23 + 1;
          sub_1958E5C((a1 + 24), v23 + 1);
          *(*(a1 + 32) + 4 * v23) = v19;
        }

        else
        {
          *(*(a1 + 32) + 4 * v23) = v19;
          v24 = v23 + 1;
        }

        *(a1 + 24) = v24;
      }

      else
      {
        sub_12E8500();
      }

      v18 = *v36;
      if (*a3 <= *v36 || **v36 != 32)
      {
        goto LABEL_59;
      }
    }
  }

  if (v9 == 34)
  {
    *&v37 = a1 + 24;
    *(&v37 + 1) = sub_1578F74;
    v38 = a1 + 8;
    v39 = 4;
    v28 = sub_1216588(a3, v8, &v37);
    goto LABEL_58;
  }

LABEL_51:
  if (v9)
  {
    v34 = (v9 & 7) == 4;
  }

  else
  {
    v34 = 1;
  }

  if (!v34)
  {
    if (*v7)
    {
      v35 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v35 = sub_11F1920((a1 + 8));
      v8 = *v36;
    }

    v28 = sub_1952690(v9, v35, v8, a3);
LABEL_58:
    *v36 = v28;
    if (!v28)
    {
      goto LABEL_64;
    }

    goto LABEL_59;
  }

  if (v8)
  {
    a3[10].i32[0] = v9 - 1;
  }

  else
  {
LABEL_64:
    *v36 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return *v36;
}

char *sub_16D1A54(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = sub_128AEEC(a3, 2, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, a2);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_14;
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 56);
  *v4 = 24;
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

LABEL_14:
  v12 = *(a1 + 24);
  if (v12 < 1)
  {
    v15 = v7;
  }

  else
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v14 = *(*(a1 + 32) + 4 * i);
      *v7 = 32;
      v7[1] = v14;
      if (v14 > 0x7F)
      {
        v7[1] = v14 | 0x80;
        v16 = v14 >> 7;
        v7[2] = v14 >> 7;
        v15 = v7 + 3;
        if (v14 >= 0x4000)
        {
          LOBYTE(v17) = v7[2];
          do
          {
            *(v15 - 1) = v17 | 0x80;
            v17 = v16 >> 7;
            *v15++ = v16 >> 7;
            v18 = v16 >> 14;
            v16 >>= 7;
          }

          while (v18);
        }
      }

      else
      {
        v15 = v7 + 2;
      }

      v7 = v15;
    }
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

uint64_t sub_16D1C74(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 32) + 4 * v2);
      if (v4 < 0)
      {
        v5 = 10;
      }

      else
      {
        v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
      }

      v3 += v5;
      ++v2;
    }

    while (v1 != v2);
  }

  else
  {
    v3 = 0;
  }

  v6 = v3 + v1;
  v7 = *(a1 + 16);
  if ((v7 & 7) == 0)
  {
    goto LABEL_24;
  }

  if (v7)
  {
    v8 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v6 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 2) == 0)
    {
LABEL_12:
      if ((v7 & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_12;
  }

  v11 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v12 = *(v11 + 23);
  v13 = *(v11 + 8);
  if ((v12 & 0x80u) == 0)
  {
    v13 = v12;
  }

  v6 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 4) != 0)
  {
LABEL_20:
    v14 = *(a1 + 56);
    if (v14 < 0)
    {
      v15 = 11;
    }

    else
    {
      v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v6 += v15;
  }

LABEL_24:
  v16 = *(a1 + 8);
  if (v16)
  {
    v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v6 += v19;
  }

  *(a1 + 20) = v6;
  return v6;
}

std::string *sub_16D1DD0(std::string *result, uint64_t a2)
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

  v8 = *(a2 + 16);
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      v10 = *(a2 + 40);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v11 = v3->__r_.__value_.__l.__size_;
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      result = sub_194EA1C(&v3[1].__r_.__value_.__r.__words[2], (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
      if ((v8 & 2) == 0)
      {
LABEL_6:
        if ((v8 & 4) == 0)
        {
LABEL_8:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v8;
          goto LABEL_9;
        }

LABEL_7:
        LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
        goto LABEL_8;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    v13 = *(a2 + 48);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v14 = v3->__r_.__value_.__l.__size_;
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    result = sub_194EA1C(&v3[2], (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
    if ((v8 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_16D1F24(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_15B4E5C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16D1FA4(void *a1)
{
  sub_16D1F24(a1);

  operator delete();
}

uint64_t sub_16D1FDC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1579FA0(v4);
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

char *sub_16D2058(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_157B820(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_221FA7C(a3, v16, v13);
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

char *sub_16D21E8(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_157A174(v8, v10, a3);
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

uint64_t sub_16D2328(uint64_t a1)
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
      v7 = sub_157A274(v6);
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

std::string *sub_16D23D0(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_15B5CDC(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
    v7 = LODWORD(v3[1].__r_.__value_.__l.__data_) + v4;
    LODWORD(v3[1].__r_.__value_.__l.__data_) = v7;
    size = v3[1].__r_.__value_.__l.__size_;
    if (*size < v7)
    {
      *size = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

double sub_16D24A4(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_2700398;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
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
  *(a1 + 152) = 0;
  *(a1 + 160) = a2;
  *(a1 + 168) = &qword_278E990;
  *(a1 + 176) = &qword_278E990;
  *(a1 + 184) = &qword_278E990;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0x100000000;
  return result;
}

uint64_t sub_16D2514(uint64_t a1)
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

  v5 = (a1 + 168);
  if (*(a1 + 168) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 176) != &qword_278E990)
  {
    sub_194E89C((a1 + 176));
  }

  if (*(a1 + 184) != &qword_278E990)
  {
    sub_194E89C((a1 + 184));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_11:
  sub_1956ABC(a1 + 152);
  sub_16E2CB8((a1 + 128));
  sub_1956AFC((a1 + 104));
  sub_1956AFC((a1 + 80));
  sub_16E2C34((a1 + 56));
  sub_1956ABC(a1 + 40);
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16D2620(uint64_t a1)
{
  sub_16D2514(a1);

  operator delete();
}

uint64_t sub_16D2658(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  v2 = *(a1 + 64);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 72) + 8);
    do
    {
      v4 = *v3++;
      sub_16D1FDC(v4);
      --v2;
    }

    while (v2);
    *(a1 + 64) = 0;
  }

  sub_12A41D0(a1 + 80);
  result = sub_12A41D0(a1 + 104);
  v6 = *(a1 + 136);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 144) + 8);
    do
    {
      v8 = *v7++;
      result = sub_16D1690(v8);
      --v6;
    }

    while (v6);
    *(a1 + 136) = 0;
  }

  *(a1 + 152) = 0;
  v9 = *(a1 + 16);
  if ((v9 & 7) != 0)
  {
    if ((v9 & 1) == 0)
    {
      if ((v9 & 2) == 0)
      {
        goto LABEL_12;
      }

LABEL_18:
      v11 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v11 + 23) < 0)
      {
        **v11 = 0;
        *(v11 + 8) = 0;
        if ((v9 & 4) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        *v11 = 0;
        *(v11 + 23) = 0;
        if ((v9 & 4) == 0)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_22;
    }

    v10 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v9 & 2) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v9 & 2) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_12:
    if ((v9 & 4) == 0)
    {
      goto LABEL_25;
    }

LABEL_22:
    v12 = *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
    }
  }

LABEL_25:
  if ((v9 & 0xF8) != 0)
  {
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
  }

  if ((v9 & 0x7F00) != 0)
  {
    *(a1 + 217) = 0;
    *(a1 + 209) = 0;
    *(a1 + 224) = 0x100000000;
  }

  v14 = *(a1 + 8);
  v13 = a1 + 8;
  *(v13 + 8) = 0;
  if (v14)
  {

    return sub_1957EA8(v13);
  }

  return result;
}

uint64_t sub_16D27E8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v126 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, v126, a3[11].i32[1]) & 1) == 0)
  {
    v7 = (a1 + 8);
    while (1)
    {
      v8 = (*v126 + 1);
      v9 = **v126;
      if (**v126 < 0)
      {
        v10 = *v8;
        v11 = v9 + (v10 << 7);
        v9 = v11 - 128;
        if (v10 < 0)
        {
          v8 = sub_1958824(*v126, v11 - 128);
          v9 = v12;
        }

        else
        {
          v8 = (*v126 + 2);
        }
      }

      *v126 = v8;
      switch(v9 >> 3)
      {
        case 1u:
          if (v9 == 8)
          {
            v13 = (v8 - 1);
            while (1)
            {
              *v126 = v13 + 1;
              v14 = *(v13 + 1);
              v15 = (v13 + 2);
              if (v14 < 0)
              {
                v16 = *v15;
                v17 = (v16 << 7) + v14;
                LODWORD(v14) = v17 - 128;
                if (v16 < 0)
                {
                  *v126 = sub_19587DC(v13 + 1, (v17 - 128));
                  if (!*v126)
                  {
                    goto LABEL_231;
                  }

                  LODWORD(v14) = v20;
                  goto LABEL_15;
                }

                v15 = (v13 + 3);
              }

              *v126 = v15;
LABEL_15:
              if (sub_157DA94(v14))
              {
                v18 = *(a1 + 24);
                if (v18 == *(a1 + 28))
                {
                  v19 = v18 + 1;
                  sub_1958E5C((a1 + 24), v18 + 1);
                  *(*(a1 + 32) + 4 * v18) = v14;
                }

                else
                {
                  *(*(a1 + 32) + 4 * v18) = v14;
                  v19 = v18 + 1;
                }

                *(a1 + 24) = v19;
              }

              else
              {
                sub_12E8450();
              }

              v13 = *v126;
              if (*a3 <= *v126 || **v126 != 8)
              {
                goto LABEL_219;
              }
            }
          }

          if (v9 != 10)
          {
            goto LABEL_211;
          }

          *&v127 = a1 + 24;
          *(&v127 + 1) = sub_157DA94;
          v128 = a1 + 8;
          v129 = 1;
          v94 = sub_1216588(a3, v8, &v127);
LABEL_218:
          *v126 = v94;
          if (!v94)
          {
            goto LABEL_231;
          }

LABEL_219:
          if (sub_195ADC0(a3, v126, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          break;
        case 2u:
          if (v9 == 16)
          {
            v59 = v8 - 1;
            while (1)
            {
              *v126 = v59 + 1;
              v60 = v59[1];
              if (v59[1] < 0)
              {
                v61 = v60 + (v59[2] << 7);
                v60 = v61 - 128;
                if (v59[2] < 0)
                {
                  v59 = sub_1958770((v59 + 1), v61 - 128);
                  v60 = v62;
                }

                else
                {
                  v59 += 3;
                }
              }

              else
              {
                v59 += 2;
              }

              *v126 = v59;
              v63 = *(a1 + 40);
              if (v63 == *(a1 + 44))
              {
                v64 = v63 + 1;
                sub_1958E5C((a1 + 40), v63 + 1);
                *(*(a1 + 48) + 4 * v63) = v60;
                v59 = *v126;
              }

              else
              {
                *(*(a1 + 48) + 4 * v63) = v60;
                v64 = v63 + 1;
              }

              *(a1 + 40) = v64;
              if (!v59)
              {
                goto LABEL_231;
              }

              if (*a3 <= v59 || *v59 != 16)
              {
                goto LABEL_219;
              }
            }
          }

          if (v9 == 18)
          {
            v123 = (a1 + 40);
LABEL_210:
            v94 = sub_1958918(v123, v8, a3);
          }

          else
          {
LABEL_211:
            if (v9)
            {
              v124 = (v9 & 7) == 4;
            }

            else
            {
              v124 = 1;
            }

            if (v124)
            {
              if (v8)
              {
                a3[10].i32[0] = v9 - 1;
                goto LABEL_2;
              }

LABEL_231:
              *v126 = 0;
              goto LABEL_2;
            }

            if (*v7)
            {
              v125 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v125 = sub_11F1920((a1 + 8));
              v8 = *v126;
            }

            v94 = sub_1952690(v9, v125, v8, a3);
          }

          goto LABEL_218;
        case 3u:
          if (v9 != 24)
          {
            goto LABEL_211;
          }

          v48 = v8 + 1;
          v49 = *v8;
          if ((v49 & 0x8000000000000000) == 0)
          {
            goto LABEL_77;
          }

          v50 = *v48;
          v51 = (v50 << 7) + v49;
          LODWORD(v49) = v51 - 128;
          if (v50 < 0)
          {
            *v126 = sub_19587DC(v8, (v51 - 128));
            if (!*v126)
            {
              goto LABEL_231;
            }

            LODWORD(v49) = v113;
          }

          else
          {
            v48 = v8 + 2;
LABEL_77:
            *v126 = v48;
          }

          if (sub_13560D8(v49))
          {
            *(a1 + 16) |= 8u;
            *(a1 + 192) = v49;
          }

          else
          {
            sub_12E8578();
          }

          goto LABEL_219;
        case 4u:
          if (v9 != 32)
          {
            goto LABEL_211;
          }

          v83 = v8 + 1;
          v84 = *v8;
          if ((v84 & 0x8000000000000000) == 0)
          {
            goto LABEL_141;
          }

          v85 = *v83;
          v86 = (v85 << 7) + v84;
          LODWORD(v84) = v86 - 128;
          if (v85 < 0)
          {
            *v126 = sub_19587DC(v8, (v86 - 128));
            if (!*v126)
            {
              goto LABEL_231;
            }

            LODWORD(v84) = v118;
          }

          else
          {
            v83 = v8 + 2;
LABEL_141:
            *v126 = v83;
          }

          if (sub_13560D8(v84))
          {
            *(a1 + 16) |= 0x10u;
            *(a1 + 196) = v84;
          }

          else
          {
            sub_12E8500();
          }

          goto LABEL_219;
        case 5u:
          if (v9 != 42)
          {
            goto LABEL_211;
          }

          *(a1 + 16) |= 1u;
          v87 = *(a1 + 8);
          v39 = (v87 & 0xFFFFFFFFFFFFFFFCLL);
          if (v87)
          {
            v39 = *v39;
          }

          v40 = (a1 + 168);
          goto LABEL_159;
        case 0xAu:
          if (v9 != 80)
          {
            goto LABEL_211;
          }

          v5 |= 0x80u;
          v53 = v8 + 1;
          v52 = *v8;
          if ((v52 & 0x8000000000000000) == 0)
          {
            goto LABEL_84;
          }

          v54 = *v53;
          v52 = (v54 << 7) + v52 - 128;
          if (v54 < 0)
          {
            v114 = sub_19587DC(v8, v52);
            *v126 = v114;
            *(a1 + 208) = v115 != 0;
            if (!v114)
            {
              goto LABEL_231;
            }
          }

          else
          {
            v53 = v8 + 2;
LABEL_84:
            *v126 = v53;
            *(a1 + 208) = v52 != 0;
          }

          goto LABEL_219;
        case 0xBu:
          if (v9 != 90)
          {
            goto LABEL_211;
          }

          v65 = v8 - 1;
          while (1)
          {
            v66 = (v65 + 1);
            *v126 = v65 + 1;
            v67 = *(a1 + 72);
            if (v67 && (v68 = *(a1 + 64), v68 < *v67))
            {
              *(a1 + 64) = v68 + 1;
              v69 = *&v67[2 * v68 + 2];
            }

            else
            {
              v70 = sub_16D48F0(*(a1 + 56));
              v69 = sub_19593CC(a1 + 56, v70);
              v66 = *v126;
            }

            v65 = sub_2235754(a3, v69, v66);
            *v126 = v65;
            if (!v65)
            {
              goto LABEL_231;
            }

            if (*a3 <= v65 || *v65 != 90)
            {
              goto LABEL_219;
            }
          }

        case 0xCu:
          if (v9 != 98)
          {
            goto LABEL_211;
          }

          v71 = v8 - 1;
          while (1)
          {
            v72 = (v71 + 1);
            *v126 = v71 + 1;
            v73 = *(a1 + 96);
            if (v73 && (v74 = *(a1 + 88), v74 < *v73))
            {
              *(a1 + 88) = v74 + 1;
              v75 = *&v73[2 * v74 + 2];
            }

            else
            {
              v76 = *(a1 + 80);
              if (!v76)
              {
                operator new();
              }

              *v78 = v77;
              v78[1] = sub_195A650;
              *v77 = 0;
              v77[1] = 0;
              v77[2] = 0;
              v75 = sub_19593CC(a1 + 80, v77);
              v72 = *v126;
            }

            v71 = sub_1958890(v75, v72, a3);
            *v126 = v71;
            if (!v71)
            {
              goto LABEL_231;
            }

            if (*a3 <= v71 || *v71 != 98)
            {
              goto LABEL_219;
            }
          }

        case 0xDu:
          if (v9 != 106)
          {
            goto LABEL_211;
          }

          *(a1 + 16) |= 2u;
          v92 = *(a1 + 8);
          v39 = (v92 & 0xFFFFFFFFFFFFFFFCLL);
          if (v92)
          {
            v39 = *v39;
          }

          v40 = (a1 + 176);
          goto LABEL_159;
        case 0xEu:
          if (v9 != 112)
          {
            goto LABEL_211;
          }

          v88 = v8 + 1;
          v89 = *v8;
          if ((v89 & 0x8000000000000000) == 0)
          {
            goto LABEL_152;
          }

          v90 = *v88;
          v91 = (v90 << 7) + v89;
          LODWORD(v89) = v91 - 128;
          if (v90 < 0)
          {
            *v126 = sub_19587DC(v8, (v91 - 128));
            if (!*v126)
            {
              goto LABEL_231;
            }

            LODWORD(v89) = v119;
          }

          else
          {
            v88 = v8 + 2;
LABEL_152:
            *v126 = v88;
          }

          if (sub_144E2C4(v89))
          {
            *(a1 + 16) |= 0x20u;
            *(a1 + 200) = v89;
          }

          else
          {
            sub_1313778();
          }

          goto LABEL_219;
        case 0xFu:
          if (v9 != 122)
          {
            goto LABEL_211;
          }

          *(a1 + 16) |= 4u;
          v38 = *(a1 + 8);
          v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
          if (v38)
          {
            v39 = *v39;
          }

          v40 = (a1 + 184);
LABEL_159:
          v93 = sub_194DB04(v40, v39);
          v94 = sub_1958890(v93, *v126, a3);
          goto LABEL_218;
        case 0x10u:
          if (v9 != 128)
          {
            goto LABEL_211;
          }

          v55 = v8 + 1;
          v56 = *v8;
          if ((v56 & 0x8000000000000000) == 0)
          {
            goto LABEL_89;
          }

          v57 = *v55;
          v58 = (v57 << 7) + v56;
          LODWORD(v56) = v58 - 128;
          if (v57 < 0)
          {
            *v126 = sub_19587DC(v8, (v58 - 128));
            if (!*v126)
            {
              goto LABEL_231;
            }

            LODWORD(v56) = v116;
          }

          else
          {
            v55 = v8 + 2;
LABEL_89:
            *v126 = v55;
          }

          if (sub_12AE1F4(v56))
          {
            *(a1 + 16) |= 0x40u;
            *(a1 + 204) = v56;
          }

          else
          {
            sub_144E0FC();
          }

          goto LABEL_219;
        case 0x11u:
          if (v9 != 136)
          {
            goto LABEL_211;
          }

          v5 |= 0x100u;
          v42 = v8 + 1;
          v41 = *v8;
          if ((v41 & 0x8000000000000000) == 0)
          {
            goto LABEL_65;
          }

          v43 = *v42;
          v41 = (v43 << 7) + v41 - 128;
          if (v43 < 0)
          {
            v110 = sub_19587DC(v8, v41);
            *v126 = v110;
            *(a1 + 209) = v111 != 0;
            if (!v110)
            {
              goto LABEL_231;
            }
          }

          else
          {
            v42 = v8 + 2;
LABEL_65:
            *v126 = v42;
            *(a1 + 209) = v41 != 0;
          }

          goto LABEL_219;
        case 0x12u:
          if (v9 != 144)
          {
            goto LABEL_211;
          }

          v5 |= 0x200u;
          v36 = v8 + 1;
          v35 = *v8;
          if ((v35 & 0x8000000000000000) == 0)
          {
            goto LABEL_56;
          }

          v37 = *v36;
          v35 = (v37 << 7) + v35 - 128;
          if (v37 < 0)
          {
            v108 = sub_19587DC(v8, v35);
            *v126 = v108;
            *(a1 + 210) = v109 != 0;
            if (!v108)
            {
              goto LABEL_231;
            }
          }

          else
          {
            v36 = v8 + 2;
LABEL_56:
            *v126 = v36;
            *(a1 + 210) = v35 != 0;
          }

          goto LABEL_219;
        case 0x13u:
          if (v9 != 152)
          {
            goto LABEL_211;
          }

          v79 = v8 + 1;
          v80 = *v8;
          if ((v80 & 0x8000000000000000) == 0)
          {
            goto LABEL_132;
          }

          v81 = *v79;
          v82 = (v81 << 7) + v80;
          LODWORD(v80) = v82 - 128;
          if (v81 < 0)
          {
            *v126 = sub_19587DC(v8, (v82 - 128));
            if (!*v126)
            {
              goto LABEL_231;
            }

            LODWORD(v80) = v117;
          }

          else
          {
            v79 = v8 + 2;
LABEL_132:
            *v126 = v79;
          }

          if (sub_12AE1F4(v80))
          {
            *(a1 + 16) |= 0x800u;
            *(a1 + 212) = v80;
          }

          else
          {
            sub_16E37C4();
          }

          goto LABEL_219;
        case 0x14u:
          if (v9 != 161)
          {
            goto LABEL_211;
          }

          v5 |= 0x1000u;
          *(a1 + 216) = *v8;
          *v126 = v8 + 8;
          goto LABEL_219;
        case 0x15u:
          if (v9 != 168)
          {
            goto LABEL_211;
          }

          v98 = v8 + 1;
          v99 = *v8;
          if ((v99 & 0x8000000000000000) == 0)
          {
            goto LABEL_169;
          }

          v100 = *v98;
          v101 = (v100 << 7) + v99;
          LODWORD(v99) = v101 - 128;
          if (v100 < 0)
          {
            *v126 = sub_19587DC(v8, (v101 - 128));
            if (!*v126)
            {
              goto LABEL_231;
            }

            LODWORD(v99) = v122;
          }

          else
          {
            v98 = v8 + 2;
LABEL_169:
            *v126 = v98;
          }

          if (sub_1590DBC(v99))
          {
            *(a1 + 16) |= 0x4000u;
            *(a1 + 228) = v99;
          }

          else
          {
            sub_1313640();
          }

          goto LABEL_219;
        case 0x16u:
          if (v9 != 176)
          {
            goto LABEL_211;
          }

          v5 |= 0x400u;
          v96 = v8 + 1;
          v95 = *v8;
          if ((v95 & 0x8000000000000000) == 0)
          {
            goto LABEL_164;
          }

          v97 = *v96;
          v95 = (v97 << 7) + v95 - 128;
          if (v97 < 0)
          {
            v120 = sub_19587DC(v8, v95);
            *v126 = v120;
            *(a1 + 211) = v121 != 0;
            if (!v120)
            {
              goto LABEL_231;
            }
          }

          else
          {
            v96 = v8 + 2;
LABEL_164:
            *v126 = v96;
            *(a1 + 211) = v95 != 0;
          }

          goto LABEL_219;
        case 0x17u:
          if (v9 != 186)
          {
            goto LABEL_211;
          }

          v21 = v8 - 2;
          while (1)
          {
            v22 = (v21 + 2);
            *v126 = v21 + 2;
            v23 = *(a1 + 120);
            if (v23 && (v24 = *(a1 + 112), v24 < *v23))
            {
              *(a1 + 112) = v24 + 1;
              v25 = *&v23[2 * v24 + 2];
            }

            else
            {
              v26 = *(a1 + 104);
              if (!v26)
              {
                operator new();
              }

              *v28 = v27;
              v28[1] = sub_195A650;
              *v27 = 0;
              v27[1] = 0;
              v27[2] = 0;
              v25 = sub_19593CC(a1 + 104, v27);
              v22 = *v126;
            }

            v21 = sub_1958890(v25, v22, a3);
            *v126 = v21;
            if (!v21)
            {
              goto LABEL_231;
            }

            if (*a3 <= v21 || *v21 != 442)
            {
              goto LABEL_219;
            }
          }

        case 0x18u:
          if (v9 != 192)
          {
            goto LABEL_211;
          }

          v44 = v8 + 1;
          v45 = *v8;
          if ((v45 & 0x8000000000000000) == 0)
          {
            goto LABEL_70;
          }

          v46 = *v44;
          v47 = (v46 << 7) + v45;
          LODWORD(v45) = v47 - 128;
          if (v46 < 0)
          {
            *v126 = sub_19587DC(v8, (v47 - 128));
            if (!*v126)
            {
              goto LABEL_231;
            }

            LODWORD(v45) = v112;
          }

          else
          {
            v44 = v8 + 2;
LABEL_70:
            *v126 = v44;
          }

          if (sub_1470AE4(v45))
          {
            *(a1 + 16) |= 0x2000u;
            *(a1 + 224) = v45;
          }

          else
          {
            sub_13136C0();
          }

          goto LABEL_219;
        case 0x19u:
          if (v9 != 202)
          {
            goto LABEL_211;
          }

          v102 = v8 - 2;
          while (1)
          {
            v103 = (v102 + 2);
            *v126 = v102 + 2;
            v104 = *(a1 + 144);
            if (v104 && (v105 = *(a1 + 136), v105 < *v104))
            {
              *(a1 + 136) = v105 + 1;
              v106 = *&v104[2 * v105 + 2];
            }

            else
            {
              v107 = sub_16D4848(*(a1 + 128));
              v106 = sub_19593CC(a1 + 128, v107);
              v103 = *v126;
            }

            v102 = sub_22357E4(a3, v106, v103);
            *v126 = v102;
            if (!v102)
            {
              goto LABEL_231;
            }

            if (*a3 <= v102 || *v102 != 458)
            {
              goto LABEL_219;
            }
          }

        case 0x1Au:
          if (v9 == 208)
          {
            v29 = (v8 - 2);
            while (1)
            {
              *v126 = v29 + 2;
              v30 = *(v29 + 2);
              if (*(v29 + 2) < 0)
              {
                v31 = v30 + (*(v29 + 3) << 7);
                v30 = v31 - 128;
                if (*(v29 + 3) < 0)
                {
                  v29 = sub_1958770(v29 + 2, v31 - 128);
                  v30 = v32;
                }

                else
                {
                  v29 += 4;
                }
              }

              else
              {
                v29 += 3;
              }

              *v126 = v29;
              v33 = *(a1 + 152);
              if (v33 == *(a1 + 156))
              {
                v34 = v33 + 1;
                sub_1958E5C((a1 + 152), v33 + 1);
                *(*(a1 + 160) + 4 * v33) = v30;
                v29 = *v126;
              }

              else
              {
                *(*(a1 + 160) + 4 * v33) = v30;
                v34 = v33 + 1;
              }

              *(a1 + 152) = v34;
              if (!v29)
              {
                goto LABEL_231;
              }

              if (*a3 <= v29 || *v29 != 464)
              {
                goto LABEL_219;
              }
            }
          }

          if (v9 != 210)
          {
            goto LABEL_211;
          }

          v123 = (a1 + 152);
          goto LABEL_210;
        default:
          goto LABEL_211;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return *v126;
}

char *sub_16D353C(uint64_t a1, char *a2, void *a3)
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

      v7 = *(*(a1 + 32) + 4 * i);
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

  v12 = *(a1 + 40);
  if (v12 < 1)
  {
    v15 = v8;
  }

  else
  {
    for (j = 0; j != v12; ++j)
    {
      if (*a3 <= v8)
      {
        v8 = sub_225EB68(a3, v8);
      }

      v14 = *(*(a1 + 48) + 4 * j);
      *v8 = 16;
      v8[1] = v14;
      if (v14 > 0x7F)
      {
        v8[1] = v14 | 0x80;
        v16 = v14 >> 7;
        v8[2] = v14 >> 7;
        v15 = v8 + 3;
        if (v14 >= 0x4000)
        {
          LOBYTE(v8) = v8[2];
          do
          {
            *(v15 - 1) = v8 | 0x80;
            LODWORD(v8) = v16 >> 7;
            *v15++ = v16 >> 7;
            v17 = v16 >> 14;
            v16 >>= 7;
          }

          while (v17);
        }
      }

      else
      {
        v15 = v8 + 2;
      }

      v8 = v15;
    }
  }

  v18 = *(a1 + 16);
  if ((v18 & 8) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 192);
    *v15 = 24;
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v15[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[2] = v20 >> 7;
      v19 = v15 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v15) = v15[2];
        do
        {
          *(v19 - 1) = v15 | 0x80;
          v15 = (v21 >> 7);
          *v19++ = v21 >> 7;
          v22 = v21 >> 14;
          v21 >>= 7;
        }

        while (v22);
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

  if ((v18 & 0x10) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v24 = *(a1 + 196);
    *v19 = 32;
    v19[1] = v24;
    if (v24 > 0x7F)
    {
      v19[1] = v24 | 0x80;
      v25 = v24 >> 7;
      v19[2] = v24 >> 7;
      v23 = v19 + 3;
      if (v24 >= 0x4000)
      {
        LOBYTE(v26) = v19[2];
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
      v23 = v19 + 2;
    }
  }

  else
  {
    v23 = v19;
  }

  if (v18)
  {
    v23 = sub_128AEEC(a3, 5, *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL, v23);
  }

  if ((v18 & 0x80) != 0)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v28 = *(a1 + 208);
    *v23 = 80;
    v23[1] = v28;
    v23 += 2;
  }

  v29 = *(a1 + 64);
  if (v29)
  {
    for (k = 0; k != v29; ++k)
    {
      if (*a3 <= v23)
      {
        v23 = sub_225EB68(a3, v23);
      }

      v31 = *(*(a1 + 72) + 8 * k + 8);
      *v23 = 90;
      v32 = *(v31 + 40);
      v23[1] = v32;
      if (v32 > 0x7F)
      {
        v33 = sub_19575D0(v32, v23 + 1);
      }

      else
      {
        v33 = v23 + 2;
      }

      v23 = sub_16D21E8(v31, v33, a3);
    }
  }

  v34 = *(a1 + 88);
  if (v34 >= 1)
  {
    v35 = 8;
    do
    {
      v36 = *(*(a1 + 96) + v35);
      v37 = *(v36 + 23);
      if (v37 < 0 && (v37 = v36[1], v37 > 127) || *a3 - v23 + 14 < v37)
      {
        v23 = sub_1957480(a3, 12, v36, v23);
      }

      else
      {
        *v23 = 98;
        v23[1] = v37;
        if (*(v36 + 23) < 0)
        {
          v36 = *v36;
        }

        v38 = v23 + 2;
        memcpy(v23 + 2, v36, v37);
        v23 = &v38[v37];
      }

      v35 += 8;
      --v34;
    }

    while (v34);
  }

  if ((v18 & 2) != 0)
  {
    v23 = sub_128AEEC(a3, 13, *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL, v23);
  }

  if ((v18 & 0x20) != 0)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v40 = *(a1 + 200);
    *v23 = 112;
    v23[1] = v40;
    if (v40 > 0x7F)
    {
      v23[1] = v40 | 0x80;
      v41 = v40 >> 7;
      v23[2] = v40 >> 7;
      v39 = v23 + 3;
      if (v40 >= 0x4000)
      {
        LOBYTE(v42) = v23[2];
        do
        {
          *(v39 - 1) = v42 | 0x80;
          v42 = v41 >> 7;
          *v39++ = v41 >> 7;
          v43 = v41 >> 14;
          v41 >>= 7;
        }

        while (v43);
      }
    }

    else
    {
      v39 = v23 + 2;
    }
  }

  else
  {
    v39 = v23;
  }

  if ((v18 & 4) != 0)
  {
    v39 = sub_128AEEC(a3, 15, *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL, v39);
  }

  if ((v18 & 0x40) != 0)
  {
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v45 = *(a1 + 204);
    *v39 = 384;
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

  if ((v18 & 0x100) == 0)
  {
    if ((v18 & 0x200) == 0)
    {
      goto LABEL_92;
    }

LABEL_97:
    if (*a3 <= v44)
    {
      v44 = sub_225EB68(a3, v44);
    }

    v50 = *(a1 + 210);
    *v44 = 400;
    v44[2] = v50;
    v44 += 3;
    if ((v18 & 0x800) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_100;
  }

  if (*a3 <= v44)
  {
    v44 = sub_225EB68(a3, v44);
  }

  v49 = *(a1 + 209);
  *v44 = 392;
  v44[2] = v49;
  v44 += 3;
  if ((v18 & 0x200) != 0)
  {
    goto LABEL_97;
  }

LABEL_92:
  if ((v18 & 0x800) == 0)
  {
LABEL_93:
    v48 = v44;
    goto LABEL_107;
  }

LABEL_100:
  if (*a3 <= v44)
  {
    v44 = sub_225EB68(a3, v44);
  }

  v51 = *(a1 + 212);
  *v44 = 408;
  v44[2] = v51;
  if (v51 > 0x7F)
  {
    v44[2] = v51 | 0x80;
    v52 = v51 >> 7;
    v44[3] = v51 >> 7;
    v48 = v44 + 4;
    if (v51 >= 0x4000)
    {
      LOBYTE(v53) = v44[3];
      do
      {
        *(v48 - 1) = v53 | 0x80;
        v53 = v52 >> 7;
        *v48++ = v52 >> 7;
        v54 = v52 >> 14;
        v52 >>= 7;
      }

      while (v54);
    }
  }

  else
  {
    v48 = v44 + 3;
  }

LABEL_107:
  if ((v18 & 0x1000) != 0)
  {
    if (*a3 <= v48)
    {
      v48 = sub_225EB68(a3, v48);
    }

    v55 = *(a1 + 216);
    *v48 = 417;
    *(v48 + 2) = v55;
    v48 += 10;
  }

  if ((v18 & 0x4000) != 0)
  {
    if (*a3 <= v48)
    {
      v48 = sub_225EB68(a3, v48);
    }

    v57 = *(a1 + 228);
    *v48 = 424;
    v48[2] = v57;
    if (v57 > 0x7F)
    {
      v48[2] = v57 | 0x80;
      v58 = v57 >> 7;
      v48[3] = v57 >> 7;
      v56 = v48 + 4;
      if (v57 >= 0x4000)
      {
        LOBYTE(v48) = v48[3];
        do
        {
          *(v56 - 1) = v48 | 0x80;
          v48 = (v58 >> 7);
          *v56++ = v58 >> 7;
          v59 = v58 >> 14;
          v58 >>= 7;
        }

        while (v59);
      }
    }

    else
    {
      v56 = v48 + 3;
    }
  }

  else
  {
    v56 = v48;
  }

  if ((v18 & 0x400) != 0)
  {
    if (*a3 <= v56)
    {
      v56 = sub_225EB68(a3, v56);
    }

    v60 = *(a1 + 211);
    *v56 = 432;
    v56[2] = v60;
    v56 += 3;
  }

  v61 = *(a1 + 112);
  if (v61 >= 1)
  {
    v62 = 8;
    do
    {
      v63 = *(*(a1 + 120) + v62);
      v64 = *(v63 + 23);
      if (v64 < 0 && (v64 = v63[1], v64 > 127) || *a3 - v56 + 13 < v64)
      {
        v56 = sub_1957480(a3, 23, v63, v56);
      }

      else
      {
        *v56 = 442;
        v56[2] = v64;
        if (*(v63 + 23) < 0)
        {
          v63 = *v63;
        }

        v65 = v56 + 3;
        memcpy(v56 + 3, v63, v64);
        v56 = &v65[v64];
      }

      v62 += 8;
      --v61;
    }

    while (v61);
  }

  if ((v18 & 0x2000) != 0)
  {
    if (*a3 <= v56)
    {
      v56 = sub_225EB68(a3, v56);
    }

    v67 = *(a1 + 224);
    *v56 = 448;
    v56[2] = v67;
    if (v67 > 0x7F)
    {
      v56[2] = v67 | 0x80;
      v68 = v67 >> 7;
      v56[3] = v67 >> 7;
      v66 = v56 + 4;
      if (v67 >= 0x4000)
      {
        LOBYTE(v69) = v56[3];
        do
        {
          *(v66 - 1) = v69 | 0x80;
          v69 = v68 >> 7;
          *v66++ = v68 >> 7;
          v70 = v68 >> 14;
          v68 >>= 7;
        }

        while (v70);
      }
    }

    else
    {
      v66 = v56 + 3;
    }
  }

  else
  {
    v66 = v56;
  }

  v71 = *(a1 + 136);
  if (v71)
  {
    for (m = 0; m != v71; ++m)
    {
      if (*a3 <= v66)
      {
        v66 = sub_225EB68(a3, v66);
      }

      v73 = *(*(a1 + 144) + 8 * m + 8);
      *v66 = 458;
      v74 = *(v73 + 20);
      v66[2] = v74;
      if (v74 > 0x7F)
      {
        v75 = sub_19575D0(v74, v66 + 2);
      }

      else
      {
        v75 = v66 + 3;
      }

      v66 = sub_16D1A54(v73, v75, a3);
    }
  }

  v76 = *(a1 + 152);
  if (v76 < 1)
  {
    v79 = v66;
  }

  else
  {
    for (n = 0; n != v76; ++n)
    {
      if (*a3 <= v66)
      {
        v66 = sub_225EB68(a3, v66);
      }

      v78 = *(*(a1 + 160) + 4 * n);
      *v66 = 464;
      v66[2] = v78;
      if (v78 > 0x7F)
      {
        v66[2] = v78 | 0x80;
        v80 = v78 >> 7;
        v66[3] = v78 >> 7;
        v79 = v66 + 4;
        if (v78 >= 0x4000)
        {
          LOBYTE(v66) = v66[3];
          do
          {
            *(v79 - 1) = v66 | 0x80;
            LODWORD(v66) = v80 >> 7;
            *v79++ = v80 >> 7;
            v81 = v80 >> 14;
            v80 >>= 7;
          }

          while (v81);
        }
      }

      else
      {
        v79 = v66 + 3;
      }

      v66 = v79;
    }
  }

  v82 = *(a1 + 8);
  if ((v82 & 1) == 0)
  {
    return v79;
  }

  v84 = v82 & 0xFFFFFFFFFFFFFFFCLL;
  v85 = *(v84 + 31);
  if (v85 < 0)
  {
    v86 = *(v84 + 8);
    v85 = *(v84 + 16);
  }

  else
  {
    v86 = (v84 + 8);
  }

  if (*a3 - v79 >= v85)
  {
    v87 = v85;
    memcpy(v79, v86, v85);
    v79 += v87;
    return v79;
  }

  return sub_1957130(a3, v86, v85, v79);
}