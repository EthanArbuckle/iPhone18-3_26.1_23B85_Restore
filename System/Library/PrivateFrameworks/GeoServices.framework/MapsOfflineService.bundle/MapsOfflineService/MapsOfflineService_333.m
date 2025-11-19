char *sub_13C5CF4(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 56);
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

    v4 = sub_1748FD8(v7, v9, a3);
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
      v13 = *(v12 + 20);
      v4[1] = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, v4 + 1);
      }

      else
      {
        v14 = v4 + 2;
      }

      v4 = sub_13C5540(v12, v14, a3);
    }
  }

  if ((v6 & 4) == 0)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_26:
    v4 = sub_128AEEC(a3, 4, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v16 = *(a1 + 64);
  *v4 = 26;
  v17 = *(v16 + 44);
  v4[1] = v17;
  if (v17 > 0x7F)
  {
    v18 = sub_19575D0(v17, v4 + 1);
  }

  else
  {
    v18 = v4 + 2;
  }

  v4 = sub_16E5070(v16, v18, a3);
  if (v6)
  {
    goto LABEL_26;
  }

LABEL_18:
  if ((v6 & 8) == 0)
  {
LABEL_19:
    v15 = v4;
    goto LABEL_34;
  }

LABEL_27:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v19 = *(a1 + 72);
  *v4 = 40;
  v4[1] = v19;
  if (v19 > 0x7F)
  {
    v4[1] = v19 | 0x80;
    v20 = v19 >> 7;
    v4[2] = v19 >> 7;
    v15 = v4 + 3;
    if (v19 >= 0x4000)
    {
      LOBYTE(v21) = v4[2];
      do
      {
        *(v15 - 1) = v21 | 0x80;
        v21 = v20 >> 7;
        *v15++ = v20 >> 7;
        v22 = v20 >> 14;
        v20 >>= 7;
      }

      while (v22);
    }
  }

  else
  {
    v15 = v4 + 2;
  }

LABEL_34:
  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v15;
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

  if ((*a3 - v15) >= v26)
  {
    v28 = v26;
    memcpy(v15, v27, v26);
    v15 += v28;
    return v15;
  }

  return sub_1957130(a3, v27, v26, v15);
}

uint64_t sub_13C5FAC(uint64_t a1)
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
      v7 = sub_13C56A8(v6);
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
    goto LABEL_15;
  }

  if ((v8 & 1) == 0)
  {
    if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    v14 = sub_1749214(*(a1 + 56));
    v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
LABEL_13:
      if ((v8 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_21;
  }

  v11 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v12 = *(v11 + 23);
  v13 = *(v11 + 8);
  if ((v12 & 0x80u) == 0)
  {
    v13 = v12;
  }

  v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((v8 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_21:
  v15 = sub_16E51F0(*(a1 + 64));
  v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) != 0)
  {
LABEL_14:
    v2 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  v9 = *(a1 + 8);
  if (v9)
  {
    v16 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v2 += v17;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_13C613C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13EC418((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
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

        goto LABEL_26;
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

      v14 = sub_174A1E4(v16);
      *(a1 + 56) = v14;
    }

    if (*(a2 + 56))
    {
      v17 = *(a2 + 56);
    }

    else
    {
      v17 = &off_2780BD0;
    }

    sub_170AF80(v14, v17);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
LABEL_10:
        *(a1 + 16) |= v9;
        goto LABEL_11;
      }

LABEL_9:
      *(a1 + 72) = *(a2 + 72);
      goto LABEL_10;
    }

LABEL_26:
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

      v18 = sub_16F5828(v20);
      *(a1 + 64) = v18;
    }

    if (*(a2 + 64))
    {
      v21 = *(a2 + 64);
    }

    else
    {
      v21 = &off_277E5E8;
    }

    sub_16E527C(v18, v21);
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

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13C62F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_170B2F0(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 64));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_13C6354(uint64_t a1)
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

void *sub_13C637C(void *a1)
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

  sub_13C6414(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_13EBF74(a1 + 6);
  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_13C6414(uint64_t a1)
{
  v3 = *(a1 + 72);
  v2 = (a1 + 72);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  if (*(a1 + 88) != &qword_278E990)
  {
    sub_194E89C((a1 + 88));
  }

  result = (a1 + 96);
  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276E580)
  {
    v5 = *(a1 + 104);
    if (v5)
    {
      sub_13D8BAC(v5);
      operator delete();
    }

    if (*(a1 + 112))
    {
      sub_16E4E08();
      operator delete();
    }

    result = *(a1 + 120);
    if (result)
    {
      sub_16EB0C0();

      operator delete();
    }
  }

  return result;
}

void sub_13C6514(void *a1)
{
  sub_13C637C(a1);

  operator delete();
}

uint64_t sub_13C654C(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_16EF1B4(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 16);
  if ((v6 & 0x7F) == 0)
  {
    goto LABEL_14;
  }

  if (v6)
  {
    v9 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_22;
      }
    }

LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_26:
    v11 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
      if ((v6 & 8) != 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
      if ((v6 & 8) != 0)
      {
        goto LABEL_30;
      }
    }

LABEL_10:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_34:
    result = sub_13C6354(*(a1 + 104));
    if ((v6 & 0x20) == 0)
    {
LABEL_12:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_35;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_22:
  v10 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v10 + 23) < 0)
  {
    **v10 = 0;
    *(v10 + 8) = 0;
    if ((v6 & 4) != 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    *v10 = 0;
    *(v10 + 23) = 0;
    if ((v6 & 4) != 0)
    {
      goto LABEL_26;
    }
  }

LABEL_9:
  if ((v6 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_30:
  v12 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v12 + 23) < 0)
  {
    **v12 = 0;
    *(v12 + 8) = 0;
    if ((v6 & 0x10) != 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    *v12 = 0;
    *(v12 + 23) = 0;
    if ((v6 & 0x10) != 0)
    {
      goto LABEL_34;
    }
  }

LABEL_11:
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_35:
  result = sub_16E4E44(*(a1 + 112));
  if ((v6 & 0x40) != 0)
  {
LABEL_13:
    result = sub_16EB0FC(*(a1 + 120));
  }

LABEL_14:
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 120) = 0;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_13C66E4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v51 = a2;
  if (sub_195ADC0(a3, v51, a3[11].i32[1]))
  {
    return *v51;
  }

  while (1)
  {
    v6 = (*v51 + 1);
    v7 = **v51;
    if (**v51 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v51, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v51 + 2);
      }
    }

    *v51 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 5)
    {
      if (v7 >> 3 <= 7)
      {
        if (v10 == 6)
        {
          if (v7 == 50)
          {
            v26 = (v6 - 1);
            while (1)
            {
              v27 = (v26 + 1);
              *v51 = v26 + 1;
              v28 = *(a1 + 40);
              if (v28 && (v29 = *(a1 + 32), v29 < *v28))
              {
                *(a1 + 32) = v29 + 1;
                v30 = *&v28[2 * v29 + 2];
              }

              else
              {
                v31 = *(a1 + 24);
                if (!v31)
                {
                  operator new();
                }

                *v33 = v32;
                v33[1] = sub_195A650;
                *v32 = 0;
                v32[1] = 0;
                v32[2] = 0;
                v30 = sub_19593CC(a1 + 24, v32);
                v27 = *v51;
              }

              v26 = sub_1958890(v30, v27, a3);
              *v51 = v26;
              if (!v26)
              {
                goto LABEL_103;
              }

              if (*a3 <= v26 || *v26 != 50)
              {
                goto LABEL_88;
              }
            }
          }

          goto LABEL_90;
        }

        if (v10 != 7 || v7 != 58)
        {
          goto LABEL_90;
        }

        *(a1 + 16) |= 2u;
        v22 = *(a1 + 8);
        v16 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v16 = *v16;
        }

        v17 = (a1 + 80);
      }

      else
      {
        if (v10 == 8)
        {
          if (v7 == 66)
          {
            v35 = (v6 - 1);
            while (1)
            {
              v36 = (v35 + 1);
              *v51 = v35 + 1;
              v37 = *(a1 + 64);
              if (v37 && (v38 = *(a1 + 56), v38 < *v37))
              {
                *(a1 + 56) = v38 + 1;
                v39 = *&v37[2 * v38 + 2];
              }

              else
              {
                sub_16F60C0(*(a1 + 48));
                v39 = sub_19593CC(a1 + 48, v40);
                v36 = *v51;
              }

              v35 = sub_21F9E88(a3, v39, v36);
              *v51 = v35;
              if (!v35)
              {
                goto LABEL_103;
              }

              if (*a3 <= v35 || *v35 != 66)
              {
                goto LABEL_88;
              }
            }
          }

          goto LABEL_90;
        }

        if (v10 == 9)
        {
          if (v7 != 74)
          {
            goto LABEL_90;
          }

          *(a1 + 16) |= 4u;
          v45 = *(a1 + 8);
          v16 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
          if (v45)
          {
            v16 = *v16;
          }

          v17 = (a1 + 88);
        }

        else
        {
          if (v10 != 10 || v7 != 82)
          {
            goto LABEL_90;
          }

          *(a1 + 16) |= 8u;
          v15 = *(a1 + 8);
          v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
          if (v15)
          {
            v16 = *v16;
          }

          v17 = (a1 + 96);
        }
      }

LABEL_86:
      v46 = sub_194DB04(v17, v16);
      v14 = sub_1958890(v46, *v51, a3);
      goto LABEL_87;
    }

    if (v7 >> 3 > 2)
    {
      break;
    }

    if (v10 == 1)
    {
      if (v7 != 10)
      {
        goto LABEL_90;
      }

      *(a1 + 16) |= 0x10u;
      v23 = *(a1 + 104);
      if (!v23)
      {
        v24 = *(a1 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        v23 = sub_13E188C(v25);
        *(a1 + 104) = v23;
        v6 = *v51;
      }

      v14 = sub_22059F0(a3, v23, v6);
    }

    else
    {
      if (v10 != 2 || v7 != 18)
      {
        goto LABEL_90;
      }

      *(a1 + 16) |= 0x20u;
      v19 = *(a1 + 112);
      if (!v19)
      {
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_16F5828(v21);
        *(a1 + 112) = v19;
        v6 = *v51;
      }

      v14 = sub_21F4D60(a3, v19, v6);
    }

LABEL_87:
    *v51 = v14;
    if (!v14)
    {
      goto LABEL_103;
    }

LABEL_88:
    if (sub_195ADC0(a3, v51, a3[11].i32[1]))
    {
      return *v51;
    }
  }

  if (v10 == 3)
  {
    if (v7 != 26)
    {
      goto LABEL_90;
    }

    *(a1 + 16) |= 1u;
    v34 = *(a1 + 8);
    v16 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
    if (v34)
    {
      v16 = *v16;
    }

    v17 = (a1 + 72);
    goto LABEL_86;
  }

  if (v10 != 4)
  {
    if (v10 != 5 || v7 != 42)
    {
      goto LABEL_90;
    }

    *(a1 + 16) |= 0x40u;
    v11 = *(a1 + 120);
    if (!v11)
    {
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_16F5DB8(v13);
      *(a1 + 120) = v11;
      v6 = *v51;
    }

    v14 = sub_21F8D18(a3, v11, v6);
    goto LABEL_87;
  }

  if (v7 == 32)
  {
    v41 = (v6 + 1);
    v42 = *v6;
    if ((v42 & 0x8000000000000000) == 0)
    {
      goto LABEL_79;
    }

    v43 = *v41;
    v44 = (v43 << 7) + v42;
    LODWORD(v42) = v44 - 128;
    if (v43 < 0)
    {
      *v51 = sub_19587DC(v6, (v44 - 128));
      if (!*v51)
      {
        goto LABEL_103;
      }

      LODWORD(v42) = v50;
    }

    else
    {
      v41 = (v6 + 2);
LABEL_79:
      *v51 = v41;
    }

    if (sub_1796880(v42))
    {
      *(a1 + 16) |= 0x80u;
      *(a1 + 128) = v42;
    }

    else
    {
      sub_12E8500();
    }

    goto LABEL_88;
  }

LABEL_90:
  if (v7)
  {
    v47 = (v7 & 7) == 4;
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
      v6 = *v51;
    }

    v14 = sub_1952690(v7, v49, v6, a3);
    goto LABEL_87;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v51;
  }

LABEL_103:
  *v51 = 0;
  return *v51;
}

char *sub_13C6C1C(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 104);
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

    v4 = sub_13D8E68(v8, v10, a3);
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_18:
      v4 = sub_128AEEC(a3, 3, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v4);
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 112);
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

  v4 = sub_16E5070(v11, v13, a3);
  if (v6)
  {
    goto LABEL_18;
  }

LABEL_4:
  if ((v6 & 0x80) == 0)
  {
LABEL_5:
    v7 = v4;
    goto LABEL_26;
  }

LABEL_19:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 128);
  *v4 = 32;
  v4[1] = v14;
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v15 = v14 >> 7;
    v4[2] = v14 >> 7;
    v7 = v4 + 3;
    if (v14 >= 0x4000)
    {
      LOBYTE(v16) = v4[2];
      do
      {
        *(v7 - 1) = v16 | 0x80;
        v16 = v15 >> 7;
        *v7++ = v15 >> 7;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_26:
  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v18 = *(a1 + 120);
    *v7 = 42;
    v19 = *(v18 + 20);
    v7[1] = v19;
    if (v19 > 0x7F)
    {
      v20 = sub_19575D0(v19, v7 + 1);
    }

    else
    {
      v20 = v7 + 2;
    }

    v7 = sub_16EBD38(v18, v20, a3);
  }

  v21 = *(a1 + 32);
  if (v21 >= 1)
  {
    v22 = 8;
    do
    {
      v23 = *(*(a1 + 40) + v22);
      v24 = *(v23 + 23);
      if (v24 < 0 && (v24 = v23[1], v24 > 127) || *a3 - v7 + 14 < v24)
      {
        v7 = sub_1957480(a3, 6, v23, v7);
      }

      else
      {
        *v7 = 50;
        v7[1] = v24;
        if (*(v23 + 23) < 0)
        {
          v23 = *v23;
        }

        v25 = v7 + 2;
        memcpy(v25, v23, v24);
        v7 = &v25[v24];
      }

      v22 += 8;
      --v21;
    }

    while (v21);
  }

  if ((v6 & 2) != 0)
  {
    v7 = sub_128AEEC(a3, 7, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v7);
  }

  v26 = *(a1 + 56);
  if (v26)
  {
    for (i = 0; i != v26; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v28 = *(*(a1 + 64) + 8 * i + 8);
      *v7 = 66;
      v29 = *(v28 + 20);
      v7[1] = v29;
      if (v29 > 0x7F)
      {
        v30 = sub_19575D0(v29, v7 + 1);
      }

      else
      {
        v30 = v7 + 2;
      }

      v7 = sub_16EF7E0(v28, v30, a3);
    }
  }

  if ((v6 & 4) != 0)
  {
    v7 = sub_128AEEC(a3, 9, *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL, v7);
  }

  if ((v6 & 8) != 0)
  {
    v7 = sub_128AEEC(a3, 10, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, v7);
  }

  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return v7;
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

  if (*a3 - v7 >= v34)
  {
    v36 = v34;
    memcpy(v7, v35, v34);
    v7 += v36;
    return v7;
  }

  return sub_1957130(a3, v35, v34, v7);
}

uint64_t sub_13C7034(uint64_t a1)
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
      v14 = sub_16EFD54(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if (v15)
  {
    if (*(a1 + 16))
    {
      v21 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v22 = *(v21 + 23);
      v23 = *(v21 + 8);
      if ((v22 & 0x80u) == 0)
      {
        v23 = v22;
      }

      v9 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((*(a1 + 16) & 2) == 0)
      {
LABEL_17:
        if ((*(a1 + 16) & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_35;
      }
    }

    else if ((*(a1 + 16) & 2) == 0)
    {
      goto LABEL_17;
    }

    v24 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v25 = *(v24 + 23);
    v26 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v26 = v25;
    }

    v9 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 4) == 0)
    {
LABEL_18:
      if ((*(a1 + 16) & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_38;
    }

LABEL_35:
    v27 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    v28 = *(v27 + 23);
    v29 = *(v27 + 8);
    if ((v28 & 0x80u) == 0)
    {
      v29 = v28;
    }

    v9 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 8) == 0)
    {
LABEL_19:
      if ((*(a1 + 16) & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_41;
    }

LABEL_38:
    v30 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    v31 = *(v30 + 23);
    v32 = *(v30 + 8);
    if ((v31 & 0x80u) == 0)
    {
      v32 = v31;
    }

    v9 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 0x10) == 0)
    {
LABEL_20:
      if ((*(a1 + 16) & 0x20) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_42;
    }

LABEL_41:
    v33 = sub_13D9018(*(a1 + 104));
    v9 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 0x20) == 0)
    {
LABEL_21:
      if ((v15 & 0x40) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_43;
    }

LABEL_42:
    v34 = sub_16E51F0(*(a1 + 112));
    v9 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 0x40) == 0)
    {
LABEL_22:
      if ((v15 & 0x80) == 0)
      {
        goto LABEL_27;
      }

LABEL_23:
      v16 = *(a1 + 128);
      v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v16 >= 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 11;
      }

      v9 += v18;
      goto LABEL_27;
    }

LABEL_43:
    v35 = sub_16EC25C(*(a1 + 120));
    v9 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

LABEL_27:
  v19 = *(a1 + 8);
  if (v19)
  {
    v36 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v37 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v37 < 0)
    {
      v37 = *(v36 + 16);
    }

    v9 += v37;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_13C7334(uint64_t a1, uint64_t a2)
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

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13EC494((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
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
      *(a1 + 16) |= 1u;
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_194EA1C((a1 + 72), (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
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
    *(a1 + 16) |= 2u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    sub_194EA1C((a1 + 80), (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
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
    *(a1 + 16) |= 4u;
    v23 = *(a1 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    sub_194EA1C((a1 + 88), (v22 & 0xFFFFFFFFFFFFFFFELL), v24);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_34;
    }

LABEL_31:
    v25 = *(a2 + 96);
    *(a1 + 16) |= 8u;
    v26 = *(a1 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    sub_194EA1C((a1 + 96), (v25 & 0xFFFFFFFFFFFFFFFELL), v27);
    if ((v14 & 0x10) == 0)
    {
LABEL_13:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_42;
    }

LABEL_34:
    *(a1 + 16) |= 0x10u;
    v28 = *(a1 + 104);
    if (!v28)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      v28 = sub_13E188C(v30);
      *(a1 + 104) = v28;
    }

    if (*(a2 + 104))
    {
      v31 = *(a2 + 104);
    }

    else
    {
      v31 = &off_276EC50;
    }

    sub_13BB240(v28, v31);
    if ((v14 & 0x20) == 0)
    {
LABEL_14:
      if ((v14 & 0x40) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_50;
    }

LABEL_42:
    *(a1 + 16) |= 0x20u;
    v32 = *(a1 + 112);
    if (!v32)
    {
      v33 = *(a1 + 8);
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      if (v33)
      {
        v34 = *v34;
      }

      v32 = sub_16F5828(v34);
      *(a1 + 112) = v32;
    }

    if (*(a2 + 112))
    {
      v35 = *(a2 + 112);
    }

    else
    {
      v35 = &off_277E5E8;
    }

    sub_16E527C(v32, v35);
    if ((v14 & 0x40) == 0)
    {
LABEL_15:
      if ((v14 & 0x80) == 0)
      {
LABEL_17:
        *(a1 + 16) |= v14;
        goto LABEL_18;
      }

LABEL_16:
      *(a1 + 128) = *(a2 + 128);
      goto LABEL_17;
    }

LABEL_50:
    *(a1 + 16) |= 0x40u;
    v36 = *(a1 + 120);
    if (!v36)
    {
      v37 = *(a1 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      v36 = sub_16F5DB8(v38);
      *(a1 + 120) = v36;
    }

    if (*(a2 + 120))
    {
      v39 = *(a2 + 120);
    }

    else
    {
      v39 = &off_277E820;
    }

    sub_16EC8A0(v36, v39);
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

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13C7644(uint64_t a1)
{
  v2 = *(a1 + 56);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_16F0144(*(*(a1 + 64) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if ((v6 & 0x20) != 0)
  {
    result = sub_16E5370(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x40) == 0)
  {
    return 1;
  }

  result = sub_16ECE70(*(a1 + 120));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_13C76CC(uint64_t a1)
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

  if (a1 != &off_276E608)
  {
    if (*(a1 + 48))
    {
      sub_191C4C0();
      operator delete();
    }

    if (*(a1 + 56))
    {
      sub_191D364();
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_13EC100((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13C77A8(uint64_t a1)
{
  sub_13C76CC(a1);

  operator delete();
}

uint64_t sub_13C77E0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_147984C(v4);
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
      result = sub_17F55B8(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      result = sub_17F5668(*(v1 + 56));
    }
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

char *sub_13C7884(uint64_t a1, char *a2, int32x2_t *a3)
{
  v29 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v29, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v29 + 1;
    v7 = *v29;
    if (*v29 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v29, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v29 + 2;
      }
    }

    v29 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 2u;
        v22 = *(a1 + 56);
        if (!v22)
        {
          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          v22 = sub_191FA80(v24);
          *(a1 + 56) = v22;
          v6 = v29;
        }

        v15 = sub_2205F00(a3, v22, v6);
        goto LABEL_41;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        v16 = v6 - 1;
        while (1)
        {
          v17 = (v16 + 1);
          v29 = v16 + 1;
          v18 = *(a1 + 40);
          if (v18 && (v19 = *(a1 + 32), v19 < *v18))
          {
            *(a1 + 32) = v19 + 1;
            v20 = *&v18[2 * v19 + 2];
          }

          else
          {
            v21 = sub_14BC948(*(a1 + 24));
            v20 = sub_19593CC(a1 + 24, v21);
            v17 = v29;
          }

          v16 = sub_2205E70(a3, v20, v17);
          v29 = v16;
          if (!v16)
          {
            return 0;
          }

          if (*a3 <= v16 || *v16 != 18)
          {
            goto LABEL_42;
          }
        }
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v25 = *(a1 + 48);
      if (!v25)
      {
        v26 = *(a1 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        v25 = sub_191F8BC(v27);
        *(a1 + 48) = v25;
        v6 = v29;
      }

      v15 = sub_2205DE0(a3, v25, v6);
      goto LABEL_41;
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
        return v29;
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
      v6 = v29;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_41:
    v29 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_42:
    ;
  }

  return v29;
}

char *sub_13C7AC0(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_191C804(v7, v9, a3);
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
      v13 = *(v12 + 40);
      v4[1] = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, v4 + 1);
      }

      else
      {
        v14 = v4 + 2;
      }

      v4 = sub_1479A58(v12, v14, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v15 = *(a1 + 56);
    *v4 = 26;
    v16 = *(v15 + 20);
    v4[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v4 + 1);
    }

    else
    {
      v17 = v4 + 2;
    }

    v4 = sub_191D640(v15, v17, a3);
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v21)
  {
    v23 = v21;
    memcpy(v4, v22, v21);
    v4 += v23;
    return v4;
  }

  return sub_1957130(a3, v22, v21, v4);
}

uint64_t sub_13C7CCC(uint64_t a1)
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
      v7 = sub_1479B98(v6);
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
      v9 = sub_191CAC4(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = sub_191D7E8(*(a1 + 56));
      v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    v2 += v14;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_13C7DE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13EC638((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

        v10 = sub_191F8BC(v12);
        *(a1 + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_278BAE0;
      }

      sub_18031A0(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
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

        v14 = sub_191FA80(v16);
        *(a1 + 56) = v14;
      }

      if (*(a2 + 56))
      {
        v17 = *(a2 + 56);
      }

      else
      {
        v17 = &off_278BB88;
      }

      sub_1803330(v14, v17);
    }
  }

  v18 = *(a2 + 8);
  if (v18)
  {

    sub_1957EF4((a1 + 8), (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13C7F40(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_1806C70(*(a1 + 48));
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

  result = sub_1806C78(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

unsigned __int8 *sub_13C7F9C(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13D91C8(v4);
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

void *sub_13C8018(void *a1)
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

  sub_13C80B4(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_12E6204(a1 + 6);
  sub_13EC184(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_13C80B4(uint64_t a1)
{
  v3 = *(a1 + 72);
  v2 = (a1 + 72);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 80);
  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276E648)
  {
    v5 = *(a1 + 88);
    if (v5)
    {
      sub_13D9BC0(v5);
      operator delete();
    }

    v6 = *(a1 + 96);
    if (v6)
    {
      sub_136DD98(v6);
      operator delete();
    }

    v7 = *(a1 + 104);
    if (v7)
    {
      sub_136DD98(v7);
      operator delete();
    }

    if (*(a1 + 112))
    {
      sub_16E4E08();
      operator delete();
    }

    if (*(a1 + 120))
    {
      sub_16E4E08();
      operator delete();
    }

    v8 = *(a1 + 128);
    if (v8)
    {
      sub_13DB2B8(v8);
      operator delete();
    }

    v9 = *(a1 + 136);
    if (v9)
    {
      sub_13C637C(v9);
      operator delete();
    }

    v10 = *(a1 + 144);
    if (v10)
    {
      sub_13C637C(v10);
      operator delete();
    }

    result = *(a1 + 152);
    if (result)
    {
      sub_13C76CC(result);

      operator delete();
    }
  }

  return result;
}

void sub_13C8234(void *a1)
{
  sub_13C8018(a1);

  operator delete();
}

uint64_t sub_13C826C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13DDA7C(v4);
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
      result = sub_16E4E44(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if (!v8)
  {
    goto LABEL_19;
  }

  if ((v8 & 1) == 0)
  {
    if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_39:
    v12 = *(v1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
      if ((v8 & 4) != 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
      if ((v8 & 4) != 0)
      {
        goto LABEL_43;
      }
    }

LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

  v11 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v11 + 23) < 0)
  {
    **v11 = 0;
    *(v11 + 8) = 0;
    if ((v8 & 2) != 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    *v11 = 0;
    *(v11 + 23) = 0;
    if ((v8 & 2) != 0)
    {
      goto LABEL_39;
    }
  }

LABEL_12:
  if ((v8 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_43:
  result = sub_13C7F9C(*(v1 + 88));
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = sub_136B92C(*(v1 + 96));
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_46:
    result = sub_16E4E44(*(v1 + 112));
    if ((v8 & 0x40) == 0)
    {
LABEL_17:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_45:
  result = sub_136B92C(*(v1 + 104));
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_46;
  }

LABEL_16:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_47:
  result = sub_16E4E44(*(v1 + 120));
  if ((v8 & 0x80) != 0)
  {
LABEL_18:
    result = sub_13C1C80(*(v1 + 128));
  }

LABEL_19:
  if ((v8 & 0x700) == 0)
  {
    goto LABEL_24;
  }

  if ((v8 & 0x100) != 0)
  {
    result = sub_13C654C(*(v1 + 136));
    if ((v8 & 0x200) == 0)
    {
LABEL_22:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_22;
  }

  result = sub_13C654C(*(v1 + 144));
  if ((v8 & 0x400) != 0)
  {
LABEL_23:
    result = sub_13C77E0(*(v1 + 152));
  }

LABEL_24:
  if ((v8 & 0xF800) != 0)
  {
    *(v1 + 160) = 0;
    *(v1 + 168) = 0;
    *(v1 + 176) = 0;
  }

  if ((v8 & 0x70000) != 0)
  {
    *(v1 + 186) = 0;
    *(v1 + 184) = 0;
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

uint64_t sub_13C8440(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v94 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v94, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v94 + 1);
    v8 = **v94;
    if (**v94 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v94, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v94 + 2);
      }
    }

    *v94 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_135;
        }

        v11 = (v7 + 1);
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v11;
        v14 = (v13 << 7) + v12;
        LODWORD(v12) = v14 - 128;
        if (v13 < 0)
        {
          *v94 = sub_19587DC(v7, (v14 - 128));
          if (!*v94)
          {
            goto LABEL_166;
          }

          LODWORD(v12) = v89;
        }

        else
        {
          v11 = (v7 + 2);
LABEL_12:
          *v94 = v11;
        }

        if (sub_1470AE4(v12))
        {
          *(a1 + 16) |= 0x1000u;
          *(a1 + 168) = v12;
        }

        else
        {
          sub_12E8450();
        }

        goto LABEL_143;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_135;
        }

        *(a1 + 16) |= 4u;
        v48 = *(a1 + 88);
        if (!v48)
        {
          v49 = *(a1 + 8);
          v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
          if (v49)
          {
            v50 = *v50;
          }

          v48 = sub_13E1988(v50);
          *(a1 + 88) = v48;
          v7 = *v94;
        }

        v44 = sub_2205F90(a3, v48, v7);
        goto LABEL_142;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_135;
        }

        *(a1 + 16) |= 8u;
        v33 = *(a1 + 96);
        if (v33)
        {
          goto LABEL_67;
        }

        v34 = *(a1 + 8);
        v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
        if (v34)
        {
          v35 = *v35;
        }

        v33 = sub_137A5B0(v35);
        *(a1 + 96) = v33;
        goto LABEL_66;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_135;
        }

        *(a1 + 16) |= 0x10u;
        v33 = *(a1 + 104);
        if (v33)
        {
          goto LABEL_67;
        }

        v42 = *(a1 + 8);
        v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
        if (v42)
        {
          v43 = *v43;
        }

        v33 = sub_137A5B0(v43);
        *(a1 + 104) = v33;
LABEL_66:
        v7 = *v94;
LABEL_67:
        v44 = sub_2201A60(a3, v33, v7);
        goto LABEL_142;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_135;
        }

        v5 |= 0x800u;
        v25 = (v7 + 1);
        v24 = *v7;
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

        v26 = *v25;
        v24 = (v26 << 7) + v24 - 128;
        if (v26 < 0)
        {
          v85 = sub_19587DC(v7, v24);
          *v94 = v85;
          *(a1 + 160) = v86;
          if (!v85)
          {
            goto LABEL_166;
          }
        }

        else
        {
          v25 = (v7 + 2);
LABEL_36:
          *v94 = v25;
          *(a1 + 160) = v24;
        }

        goto LABEL_143;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_135;
        }

        *(a1 + 16) |= 0x20u;
        v57 = *(a1 + 112);
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = *(a1 + 8);
        v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
        if (v58)
        {
          v59 = *v59;
        }

        v57 = sub_16F5828(v59);
        *(a1 + 112) = v57;
        goto LABEL_107;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_135;
        }

        *(a1 + 16) |= 0x40u;
        v57 = *(a1 + 120);
        if (v57)
        {
          goto LABEL_108;
        }

        v62 = *(a1 + 8);
        v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
        if (v62)
        {
          v63 = *v63;
        }

        v57 = sub_16F5828(v63);
        *(a1 + 120) = v57;
LABEL_107:
        v7 = *v94;
LABEL_108:
        v44 = sub_21F4D60(a3, v57, v7);
        goto LABEL_142;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_135;
        }

        v5 |= 0x10000u;
        v46 = (v7 + 1);
        v45 = *v7;
        if ((v45 & 0x8000000000000000) == 0)
        {
          goto LABEL_72;
        }

        v47 = *v46;
        v45 = (v47 << 7) + v45 - 128;
        if (v47 < 0)
        {
          v87 = sub_19587DC(v7, v45);
          *v94 = v87;
          *(a1 + 184) = v88 != 0;
          if (!v87)
          {
            goto LABEL_166;
          }
        }

        else
        {
          v46 = (v7 + 2);
LABEL_72:
          *v94 = v46;
          *(a1 + 184) = v45 != 0;
        }

        goto LABEL_143;
      case 9u:
        if (v8 != 74)
        {
          goto LABEL_135;
        }

        *(a1 + 16) |= 0x80u;
        v69 = *(a1 + 128);
        if (!v69)
        {
          v70 = *(a1 + 8);
          v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL);
          if (v70)
          {
            v71 = *v71;
          }

          v69 = sub_13E1B40(v71);
          *(a1 + 128) = v69;
          v7 = *v94;
        }

        v44 = sub_22052A0(a3, v69, v7);
        goto LABEL_142;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_135;
        }

        *(a1 + 16) |= 1u;
        v30 = *(a1 + 8);
        v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
        if (v30)
        {
          v31 = *v31;
        }

        v32 = (a1 + 72);
        goto LABEL_113;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_135;
        }

        v5 |= 0x2000u;
        v67 = (v7 + 1);
        LODWORD(v66) = *v7;
        if ((v66 & 0x80) == 0)
        {
          goto LABEL_118;
        }

        v68 = *v67;
        v66 = v66 + (v68 << 7) - 128;
        if (v68 < 0)
        {
          v92 = sub_19587DC(v7, v66);
          *v94 = v92;
          *(a1 + 172) = v93;
          if (!v92)
          {
            goto LABEL_166;
          }
        }

        else
        {
          v67 = (v7 + 2);
LABEL_118:
          *v94 = v67;
          *(a1 + 172) = v66;
        }

        goto LABEL_143;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_135;
        }

        v5 |= 0x4000u;
        v22 = (v7 + 1);
        LODWORD(v21) = *v7;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_31;
        }

        v23 = *v22;
        v21 = v21 + (v23 << 7) - 128;
        if (v23 < 0)
        {
          v83 = sub_19587DC(v7, v21);
          *v94 = v83;
          *(a1 + 176) = v84;
          if (!v83)
          {
            goto LABEL_166;
          }
        }

        else
        {
          v22 = (v7 + 2);
LABEL_31:
          *v94 = v22;
          *(a1 + 176) = v21;
        }

        goto LABEL_143;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_135;
        }

        *(a1 + 16) |= 0x100u;
        v27 = *(a1 + 136);
        if (v27)
        {
          goto LABEL_101;
        }

        v28 = *(a1 + 8);
        v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (v28)
        {
          v29 = *v29;
        }

        v27 = sub_13D3B98(v29);
        *(a1 + 136) = v27;
        goto LABEL_100;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_135;
        }

        *(a1 + 16) |= 0x200u;
        v27 = *(a1 + 144);
        if (v27)
        {
          goto LABEL_101;
        }

        v60 = *(a1 + 8);
        v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
        if (v60)
        {
          v61 = *v61;
        }

        v27 = sub_13D3B98(v61);
        *(a1 + 144) = v27;
LABEL_100:
        v7 = *v94;
LABEL_101:
        v44 = sub_2206020(a3, v27, v7);
        goto LABEL_142;
      case 0xFu:
        if (v8 != 120)
        {
          goto LABEL_135;
        }

        v19 = (v7 + 1);
        v18 = *v7;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if (v20 < 0)
        {
          *v94 = sub_19587DC(v7, v18);
          if (!*v94)
          {
            goto LABEL_166;
          }
        }

        else
        {
          v19 = (v7 + 2);
LABEL_24:
          *v94 = v19;
        }

        if (v18 > 3)
        {
          sub_12E8538();
        }

        else
        {
          *(a1 + 16) |= 0x8000u;
          *(a1 + 180) = v18;
        }

        goto LABEL_143;
      case 0x10u:
        if (v8 != 130)
        {
          goto LABEL_135;
        }

        v36 = (v7 - 2);
        while (1)
        {
          v37 = (v36 + 2);
          *v94 = v36 + 2;
          v38 = *(a1 + 40);
          if (v38 && (v39 = *(a1 + 32), v39 < *v38))
          {
            *(a1 + 32) = v39 + 1;
            v40 = *&v38[2 * v39 + 2];
          }

          else
          {
            v41 = sub_13E1E38(*(a1 + 24));
            v40 = sub_19593CC(a1 + 24, v41);
            v37 = *v94;
          }

          v36 = sub_22060B0(a3, v40, v37);
          *v94 = v36;
          if (!v36)
          {
            goto LABEL_166;
          }

          if (*a3 <= v36 || *v36 != 386)
          {
            goto LABEL_143;
          }
        }

      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_135;
        }

        v5 |= 0x20000u;
        v16 = (v7 + 1);
        v15 = *v7;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if (v17 < 0)
        {
          v81 = sub_19587DC(v7, v15);
          *v94 = v81;
          *(a1 + 185) = v82 != 0;
          if (!v81)
          {
            goto LABEL_166;
          }
        }

        else
        {
          v16 = (v7 + 2);
LABEL_19:
          *v94 = v16;
          *(a1 + 185) = v15 != 0;
        }

        goto LABEL_143;
      case 0x12u:
        if (v8 != 146)
        {
          goto LABEL_135;
        }

        *(a1 + 16) |= 0x400u;
        v51 = *(a1 + 152);
        if (!v51)
        {
          v52 = *(a1 + 8);
          v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
          if (v52)
          {
            v53 = *v53;
          }

          v51 = sub_13D3C58(v53);
          *(a1 + 152) = v51;
          v7 = *v94;
        }

        v44 = sub_2206140(a3, v51, v7);
        goto LABEL_142;
      case 0x13u:
        if (v8 != 154)
        {
          goto LABEL_135;
        }

        *(a1 + 16) |= 2u;
        v64 = *(a1 + 8);
        v31 = (v64 & 0xFFFFFFFFFFFFFFFCLL);
        if (v64)
        {
          v31 = *v31;
        }

        v32 = (a1 + 80);
LABEL_113:
        v65 = sub_194DB04(v32, v31);
        v44 = sub_1958890(v65, *v94, a3);
        goto LABEL_142;
      case 0x14u:
        if (v8 != 162)
        {
          goto LABEL_135;
        }

        v72 = (v7 - 2);
        while (1)
        {
          v73 = (v72 + 2);
          *v94 = v72 + 2;
          v74 = *(a1 + 64);
          if (v74 && (v75 = *(a1 + 56), v75 < *v74))
          {
            *(a1 + 56) = v75 + 1;
            v76 = *&v74[2 * v75 + 2];
          }

          else
          {
            v77 = sub_16F5828(*(a1 + 48));
            v76 = sub_19593CC(a1 + 48, v77);
            v73 = *v94;
          }

          v72 = sub_21F4D60(a3, v76, v73);
          *v94 = v72;
          if (!v72)
          {
            goto LABEL_166;
          }

          if (*a3 <= v72 || *v72 != 418)
          {
            goto LABEL_143;
          }
        }

      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_135;
        }

        v5 |= 0x40000u;
        v55 = (v7 + 1);
        v54 = *v7;
        if ((v54 & 0x8000000000000000) == 0)
        {
          goto LABEL_89;
        }

        v56 = *v55;
        v54 = (v56 << 7) + v54 - 128;
        if (v56 < 0)
        {
          v90 = sub_19587DC(v7, v54);
          *v94 = v90;
          *(a1 + 186) = v91 != 0;
          if (!v90)
          {
            goto LABEL_166;
          }
        }

        else
        {
          v55 = (v7 + 2);
LABEL_89:
          *v94 = v55;
          *(a1 + 186) = v54 != 0;
        }

        goto LABEL_143;
      default:
LABEL_135:
        if (v8)
        {
          v78 = (v8 & 7) == 4;
        }

        else
        {
          v78 = 1;
        }

        if (!v78)
        {
          v79 = *(a1 + 8);
          if (v79)
          {
            v80 = (v79 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v80 = sub_11F1920((a1 + 8));
            v7 = *v94;
          }

          v44 = sub_1952690(v8, v80, v7, a3);
LABEL_142:
          *v94 = v44;
          if (!v44)
          {
            goto LABEL_166;
          }

LABEL_143:
          if (sub_195ADC0(a3, v94, a3[11].i32[1]))
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
LABEL_166:
          *v94 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v94;
    }
  }
}

char *sub_13C8D64(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 168);
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

    v12 = *(a1 + 88);
    *v6 = 18;
    v13 = *(v12 + 40);
    v6[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, v6 + 1);
    }

    else
    {
      v14 = v6 + 2;
    }

    v6 = sub_13D9E08(v12, v14, a3);
    if ((v5 & 8) == 0)
    {
LABEL_12:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_13;
      }

LABEL_27:
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v18 = *(a1 + 104);
      *v6 = 34;
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

      v6 = sub_136E0E0(v18, v20, a3);
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_33;
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

  v15 = *(a1 + 96);
  *v6 = 26;
  v16 = *(v15 + 20);
  v6[1] = v16;
  if (v16 > 0x7F)
  {
    v17 = sub_19575D0(v16, v6 + 1);
  }

  else
  {
    v17 = v6 + 2;
  }

  v6 = sub_136E0E0(v15, v17, a3);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_27;
  }

LABEL_13:
  if ((v5 & 0x800) == 0)
  {
LABEL_14:
    v11 = v6;
    goto LABEL_40;
  }

LABEL_33:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v21 = *(a1 + 160);
  *v6 = 40;
  v6[1] = v21;
  if (v21 > 0x7F)
  {
    v6[1] = v21 | 0x80;
    v22 = v21 >> 7;
    v6[2] = v21 >> 7;
    v11 = v6 + 3;
    if (v21 >= 0x4000)
    {
      LOBYTE(v6) = v6[2];
      do
      {
        *(v11 - 1) = v6 | 0x80;
        v6 = (v22 >> 7);
        *v11++ = v22 >> 7;
        v23 = v22 >> 14;
        v22 >>= 7;
      }

      while (v23);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

LABEL_40:
  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v25 = *(a1 + 112);
    *v11 = 50;
    v26 = *(v25 + 44);
    v11[1] = v26;
    if (v26 > 0x7F)
    {
      v27 = sub_19575D0(v26, v11 + 1);
    }

    else
    {
      v27 = v11 + 2;
    }

    v11 = sub_16E5070(v25, v27, a3);
    if ((v5 & 0x40) == 0)
    {
LABEL_42:
      if ((v5 & 0x10000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_42;
  }

  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v28 = *(a1 + 120);
  *v11 = 58;
  v29 = *(v28 + 44);
  v11[1] = v29;
  if (v29 > 0x7F)
  {
    v30 = sub_19575D0(v29, v11 + 1);
  }

  else
  {
    v30 = v11 + 2;
  }

  v11 = sub_16E5070(v28, v30, a3);
  if ((v5 & 0x10000) == 0)
  {
LABEL_43:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_62;
  }

LABEL_59:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v31 = *(a1 + 184);
  *v11 = 64;
  v11[1] = v31;
  v11 += 2;
  if ((v5 & 0x80) == 0)
  {
LABEL_44:
    if ((v5 & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_68:
    v11 = sub_128AEEC(a3, 10, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v11);
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_69;
  }

LABEL_62:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v32 = *(a1 + 128);
  *v11 = 74;
  v33 = *(v32 + 20);
  v11[1] = v33;
  if (v33 > 0x7F)
  {
    v34 = sub_19575D0(v33, v11 + 1);
  }

  else
  {
    v34 = v11 + 2;
  }

  v11 = sub_13DB6A8(v32, v34, a3);
  if (v5)
  {
    goto LABEL_68;
  }

LABEL_45:
  if ((v5 & 0x2000) == 0)
  {
LABEL_46:
    v24 = v11;
    goto LABEL_76;
  }

LABEL_69:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v35 = *(a1 + 172);
  *v11 = 88;
  v11[1] = v35;
  if (v35 > 0x7F)
  {
    v11[1] = v35 | 0x80;
    v36 = v35 >> 7;
    v11[2] = v35 >> 7;
    v24 = v11 + 3;
    if (v35 >= 0x4000)
    {
      LOBYTE(v37) = v11[2];
      do
      {
        *(v24 - 1) = v37 | 0x80;
        v37 = v36 >> 7;
        *v24++ = v36 >> 7;
        v38 = v36 >> 14;
        v36 >>= 7;
      }

      while (v38);
    }
  }

  else
  {
    v24 = v11 + 2;
  }

LABEL_76:
  if ((v5 & 0x4000) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v40 = *(a1 + 176);
    *v24 = 96;
    v24[1] = v40;
    if (v40 > 0x7F)
    {
      v24[1] = v40 | 0x80;
      v41 = v40 >> 7;
      v24[2] = v40 >> 7;
      v39 = v24 + 3;
      if (v40 >= 0x4000)
      {
        LOBYTE(v24) = v24[2];
        do
        {
          *(v39 - 1) = v24 | 0x80;
          v24 = (v41 >> 7);
          *v39++ = v41 >> 7;
          v42 = v41 >> 14;
          v41 >>= 7;
        }

        while (v42);
      }
    }

    else
    {
      v39 = v24 + 2;
    }
  }

  else
  {
    v39 = v24;
  }

  if ((v5 & 0x100) == 0)
  {
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_87;
    }

LABEL_95:
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v47 = *(a1 + 144);
    *v39 = 114;
    v48 = *(v47 + 20);
    v39[1] = v48;
    if (v48 > 0x7F)
    {
      v49 = sub_19575D0(v48, v39 + 1);
    }

    else
    {
      v49 = v39 + 2;
    }

    v39 = sub_13C6C1C(v47, v49, a3);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_101;
  }

  if (*a3 <= v39)
  {
    v39 = sub_225EB68(a3, v39);
  }

  v44 = *(a1 + 136);
  *v39 = 106;
  v45 = *(v44 + 20);
  v39[1] = v45;
  if (v45 > 0x7F)
  {
    v46 = sub_19575D0(v45, v39 + 1);
  }

  else
  {
    v46 = v39 + 2;
  }

  v39 = sub_13C6C1C(v44, v46, a3);
  if ((v5 & 0x200) != 0)
  {
    goto LABEL_95;
  }

LABEL_87:
  if ((v5 & 0x8000) == 0)
  {
LABEL_88:
    v43 = v39;
    goto LABEL_108;
  }

LABEL_101:
  if (*a3 <= v39)
  {
    v39 = sub_225EB68(a3, v39);
  }

  v50 = *(a1 + 180);
  *v39 = 120;
  v39[1] = v50;
  if (v50 > 0x7F)
  {
    v39[1] = v50 | 0x80;
    v51 = v50 >> 7;
    v39[2] = v50 >> 7;
    v43 = v39 + 3;
    if (v50 >= 0x4000)
    {
      LOBYTE(v39) = v39[2];
      do
      {
        *(v43 - 1) = v39 | 0x80;
        v39 = (v51 >> 7);
        *v43++ = v51 >> 7;
        v52 = v51 >> 14;
        v51 >>= 7;
      }

      while (v52);
    }
  }

  else
  {
    v43 = v39 + 2;
  }

LABEL_108:
  v53 = *(a1 + 32);
  if (v53)
  {
    for (i = 0; i != v53; ++i)
    {
      if (*a3 <= v43)
      {
        v43 = sub_225EB68(a3, v43);
      }

      v55 = *(*(a1 + 40) + 8 * i + 8);
      *v43 = 386;
      v56 = *(v55 + 20);
      v43[2] = v56;
      if (v56 > 0x7F)
      {
        v57 = sub_19575D0(v56, v43 + 2);
      }

      else
      {
        v57 = v43 + 3;
      }

      v43 = sub_13DDD08(v55, v57, a3);
    }
  }

  if ((v5 & 0x20000) != 0)
  {
    if (*a3 <= v43)
    {
      v43 = sub_225EB68(a3, v43);
    }

    v66 = *(a1 + 185);
    *v43 = 392;
    v43[2] = v66;
    v43 += 3;
    if ((v5 & 0x400) == 0)
    {
LABEL_118:
      if ((v5 & 2) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_119;
    }
  }

  else if ((v5 & 0x400) == 0)
  {
    goto LABEL_118;
  }

  if (*a3 <= v43)
  {
    v43 = sub_225EB68(a3, v43);
  }

  v67 = *(a1 + 152);
  *v43 = 402;
  v68 = *(v67 + 20);
  v43[2] = v68;
  if (v68 > 0x7F)
  {
    v69 = sub_19575D0(v68, v43 + 2);
  }

  else
  {
    v69 = v43 + 3;
  }

  v43 = sub_13C7AC0(v67, v69, a3);
  if ((v5 & 2) != 0)
  {
LABEL_119:
    v43 = sub_128AEEC(a3, 19, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v43);
  }

LABEL_120:
  v58 = *(a1 + 56);
  if (v58)
  {
    for (j = 0; j != v58; ++j)
    {
      if (*a3 <= v43)
      {
        v43 = sub_225EB68(a3, v43);
      }

      v60 = *(*(a1 + 64) + 8 * j + 8);
      *v43 = 418;
      v61 = *(v60 + 44);
      v43[2] = v61;
      if (v61 > 0x7F)
      {
        v62 = sub_19575D0(v61, v43 + 2);
      }

      else
      {
        v62 = v43 + 3;
      }

      v43 = sub_16E5070(v60, v62, a3);
    }
  }

  if ((v5 & 0x40000) != 0)
  {
    if (*a3 <= v43)
    {
      v43 = sub_225EB68(a3, v43);
    }

    v63 = *(a1 + 186);
    *v43 = 424;
    v43[2] = v63;
    v43 += 3;
  }

  v64 = *(a1 + 8);
  if ((v64 & 1) == 0)
  {
    return v43;
  }

  v70 = v64 & 0xFFFFFFFFFFFFFFFCLL;
  v71 = *(v70 + 31);
  if (v71 < 0)
  {
    v72 = *(v70 + 8);
    v71 = *(v70 + 16);
  }

  else
  {
    v72 = (v70 + 8);
  }

  if ((*a3 - v43) >= v71)
  {
    v73 = v71;
    memcpy(v43, v72, v71);
    v43 += v73;
    return v43;
  }

  return sub_1957130(a3, v72, v71, v43);
}

uint64_t sub_13C9668(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 2 * v2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  if (v2)
  {
    v6 = 8 * v2;
    do
    {
      v7 = *v5++;
      v8 = sub_13DDECC(v7);
      v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      v6 -= 8;
    }

    while (v6);
  }

  v9 = *(a1 + 56);
  v10 = v3 + 2 * v9;
  v11 = *(a1 + 64);
  if (v11)
  {
    v12 = (v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = 8 * v9;
    do
    {
      v14 = *v12++;
      v15 = sub_16E51F0(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  if (v16)
  {
    v24 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v25 = *(v24 + 23);
    v26 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v26 = v25;
    }

    v10 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v16 & 2) == 0)
    {
LABEL_16:
      if ((v16 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_51;
    }
  }

  else if ((v16 & 2) == 0)
  {
    goto LABEL_16;
  }

  v27 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v28 = *(v27 + 23);
  v29 = *(v27 + 8);
  if ((v28 & 0x80u) == 0)
  {
    v29 = v28;
  }

  v10 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v16 & 4) == 0)
  {
LABEL_17:
    if ((v16 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_52;
  }

LABEL_51:
  v30 = sub_13D9F48(*(a1 + 88));
  v10 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v16 & 8) == 0)
  {
LABEL_18:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_52:
  v31 = sub_136E388(*(a1 + 96));
  v10 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v16 & 0x10) == 0)
  {
LABEL_19:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_54:
    v33 = sub_16E51F0(*(a1 + 112));
    v10 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v16 & 0x40) == 0)
    {
LABEL_21:
      if ((v16 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_53:
  v32 = sub_136E388(*(a1 + 104));
  v10 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v16 & 0x20) != 0)
  {
    goto LABEL_54;
  }

LABEL_20:
  if ((v16 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_55:
  v34 = sub_16E51F0(*(a1 + 120));
  v10 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v16 & 0x80) != 0)
  {
LABEL_22:
    v17 = sub_13DB86C(*(a1 + 128));
    v10 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_23:
  if ((v16 & 0xFF00) == 0)
  {
    goto LABEL_36;
  }

  if ((v16 & 0x100) != 0)
  {
    v35 = sub_13C7034(*(a1 + 136));
    v10 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v16 & 0x200) == 0)
    {
LABEL_26:
      if ((v16 & 0x400) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_59;
    }
  }

  else if ((v16 & 0x200) == 0)
  {
    goto LABEL_26;
  }

  v36 = sub_13C7034(*(a1 + 144));
  v10 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v16 & 0x400) == 0)
  {
LABEL_27:
    if ((v16 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  v37 = sub_13C7CCC(*(a1 + 152));
  v10 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v16 & 0x800) == 0)
  {
LABEL_28:
    if ((v16 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  v10 += ((9 * (__clz(*(a1 + 160) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v16 & 0x1000) == 0)
  {
LABEL_29:
    if ((v16 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_61:
  v38 = *(a1 + 168);
  v39 = ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v38 >= 0)
  {
    v40 = v39;
  }

  else
  {
    v40 = 11;
  }

  v10 += v40;
  if ((v16 & 0x2000) == 0)
  {
LABEL_30:
    if ((v16 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_69;
  }

LABEL_65:
  v41 = *(a1 + 172);
  v42 = ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v41 >= 0)
  {
    v43 = v42;
  }

  else
  {
    v43 = 11;
  }

  v10 += v43;
  if ((v16 & 0x4000) == 0)
  {
LABEL_31:
    if ((v16 & 0x8000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

LABEL_69:
  v44 = *(a1 + 176);
  v45 = ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v44 >= 0)
  {
    v46 = v45;
  }

  else
  {
    v46 = 11;
  }

  v10 += v46;
  if ((v16 & 0x8000) != 0)
  {
LABEL_32:
    v18 = *(a1 + 180);
    v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v18 >= 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 11;
    }

    v10 += v20;
  }

LABEL_36:
  v21 = v10 + ((v16 >> 15) & 2);
  if ((v16 & 0x20000) != 0)
  {
    v21 += 3;
  }

  if ((v16 & 0x40000) != 0)
  {
    v21 += 3;
  }

  if ((v16 & 0x70000) != 0)
  {
    result = v21;
  }

  else
  {
    result = v10;
  }

  v23 = *(a1 + 8);
  if (v23)
  {
    v47 = v23 & 0xFFFFFFFFFFFFFFFCLL;
    v48 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v48 < 0)
    {
      v48 = *(v47 + 16);
    }

    result += v48;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_13C9B04(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13EC6C4((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_11F1A54((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if (!v14)
  {
    goto LABEL_72;
  }

  if ((v14 & 1) == 0)
  {
    if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_15:
    v18 = *(a2 + 80);
    *(a1 + 16) |= 2u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    sub_194EA1C((a1 + 80), (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
    if ((v14 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  v15 = *(a2 + 72);
  *(a1 + 16) |= 1u;
  v16 = *(a1 + 8);
  v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
  if (v16)
  {
    v17 = *v17;
  }

  sub_194EA1C((a1 + 72), (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
  if ((v14 & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  if ((v14 & 4) != 0)
  {
LABEL_18:
    *(a1 + 16) |= 4u;
    v21 = *(a1 + 88);
    if (!v21)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_13E1988(v23);
      *(a1 + 88) = v21;
    }

    if (*(a2 + 88))
    {
      v24 = *(a2 + 88);
    }

    else
    {
      v24 = &off_276ECB8;
    }

    sub_13C9FF0(v21, v24);
  }

LABEL_26:
  if ((v14 & 8) != 0)
  {
    *(a1 + 16) |= 8u;
    v25 = *(a1 + 96);
    if (!v25)
    {
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_137A5B0(v27);
      *(a1 + 96) = v25;
    }

    if (*(a2 + 96))
    {
      v28 = *(a2 + 96);
    }

    else
    {
      v28 = &off_276CB50;
    }

    sub_136CCE8(v25, v28);
  }

  if ((v14 & 0x10) != 0)
  {
    *(a1 + 16) |= 0x10u;
    v29 = *(a1 + 104);
    if (!v29)
    {
      v30 = *(a1 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      v29 = sub_137A5B0(v31);
      *(a1 + 104) = v29;
    }

    if (*(a2 + 104))
    {
      v32 = *(a2 + 104);
    }

    else
    {
      v32 = &off_276CB50;
    }

    sub_136CCE8(v29, v32);
  }

  if ((v14 & 0x20) != 0)
  {
    *(a1 + 16) |= 0x20u;
    v33 = *(a1 + 112);
    if (!v33)
    {
      v34 = *(a1 + 8);
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      if (v34)
      {
        v35 = *v35;
      }

      v33 = sub_16F5828(v35);
      *(a1 + 112) = v33;
    }

    if (*(a2 + 112))
    {
      v36 = *(a2 + 112);
    }

    else
    {
      v36 = &off_277E5E8;
    }

    sub_16E527C(v33, v36);
    if ((v14 & 0x40) == 0)
    {
LABEL_46:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_64;
    }
  }

  else if ((v14 & 0x40) == 0)
  {
    goto LABEL_46;
  }

  *(a1 + 16) |= 0x40u;
  v37 = *(a1 + 120);
  if (!v37)
  {
    v38 = *(a1 + 8);
    v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
    if (v38)
    {
      v39 = *v39;
    }

    v37 = sub_16F5828(v39);
    *(a1 + 120) = v37;
  }

  if (*(a2 + 120))
  {
    v40 = *(a2 + 120);
  }

  else
  {
    v40 = &off_277E5E8;
  }

  sub_16E527C(v37, v40);
  if ((v14 & 0x80) != 0)
  {
LABEL_64:
    *(a1 + 16) |= 0x80u;
    v41 = *(a1 + 128);
    if (!v41)
    {
      v42 = *(a1 + 8);
      v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
      if (v42)
      {
        v43 = *v43;
      }

      v41 = sub_13E1B40(v43);
      *(a1 + 128) = v41;
    }

    if (*(a2 + 128))
    {
      v44 = *(a2 + 128);
    }

    else
    {
      v44 = &off_276ED70;
    }

    sub_13C45EC(v41, v44);
  }

LABEL_72:
  if ((v14 & 0xFF00) == 0)
  {
    goto LABEL_83;
  }

  if ((v14 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v46 = *(a1 + 136);
    if (!v46)
    {
      v47 = *(a1 + 8);
      v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
      if (v47)
      {
        v48 = *v48;
      }

      v46 = sub_13D3B98(v48);
      *(a1 + 136) = v46;
    }

    if (*(a2 + 136))
    {
      v49 = *(a2 + 136);
    }

    else
    {
      v49 = &off_276E580;
    }

    sub_13C7334(v46, v49);
    if ((v14 & 0x200) == 0)
    {
LABEL_75:
      if ((v14 & 0x400) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_109;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 16) |= 0x200u;
  v50 = *(a1 + 144);
  if (!v50)
  {
    v51 = *(a1 + 8);
    v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
    if (v51)
    {
      v52 = *v52;
    }

    v50 = sub_13D3B98(v52);
    *(a1 + 144) = v50;
  }

  if (*(a2 + 144))
  {
    v53 = *(a2 + 144);
  }

  else
  {
    v53 = &off_276E580;
  }

  sub_13C7334(v50, v53);
  if ((v14 & 0x400) == 0)
  {
LABEL_76:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_117;
  }

LABEL_109:
  *(a1 + 16) |= 0x400u;
  v54 = *(a1 + 152);
  if (!v54)
  {
    v55 = *(a1 + 8);
    v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
    if (v55)
    {
      v56 = *v56;
    }

    v54 = sub_13D3C58(v56);
    *(a1 + 152) = v54;
  }

  if (*(a2 + 152))
  {
    v57 = *(a2 + 152);
  }

  else
  {
    v57 = &off_276E608;
  }

  sub_13C7DE0(v54, v57);
  if ((v14 & 0x800) == 0)
  {
LABEL_77:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_118;
  }

LABEL_117:
  *(a1 + 160) = *(a2 + 160);
  if ((v14 & 0x1000) == 0)
  {
LABEL_78:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_119;
  }

LABEL_118:
  *(a1 + 168) = *(a2 + 168);
  if ((v14 & 0x2000) == 0)
  {
LABEL_79:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_80;
    }

LABEL_120:
    *(a1 + 176) = *(a2 + 176);
    if ((v14 & 0x8000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

LABEL_119:
  *(a1 + 172) = *(a2 + 172);
  if ((v14 & 0x4000) != 0)
  {
    goto LABEL_120;
  }

LABEL_80:
  if ((v14 & 0x8000) != 0)
  {
LABEL_81:
    *(a1 + 180) = *(a2 + 180);
  }

LABEL_82:
  *(a1 + 16) |= v14;
LABEL_83:
  if ((v14 & 0x70000) == 0)
  {
    goto LABEL_89;
  }

  if ((v14 & 0x10000) == 0)
  {
    if ((v14 & 0x20000) == 0)
    {
      goto LABEL_86;
    }

LABEL_123:
    *(a1 + 185) = *(a2 + 185);
    if ((v14 & 0x40000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  *(a1 + 184) = *(a2 + 184);
  if ((v14 & 0x20000) != 0)
  {
    goto LABEL_123;
  }

LABEL_86:
  if ((v14 & 0x40000) != 0)
  {
LABEL_87:
    *(a1 + 186) = *(a2 + 186);
  }

LABEL_88:
  *(a1 + 16) |= v14;
LABEL_89:
  v45 = *(a2 + 8);
  if (v45)
  {

    sub_1957EF4((a1 + 8), (v45 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_13C9FF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_13ECC8C((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
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

uint64_t sub_13CA0AC(uint64_t a1)
{
  v2 = *(a1 + 56);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_16E5370(*(*(a1 + 64) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    result = sub_12B329C(*(a1 + 88) + 16);
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 8) != 0)
  {
    result = sub_136CF2C(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x10) != 0)
  {
    result = sub_136CF2C(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x20) != 0)
  {
    result = sub_16E5370(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x40) != 0)
  {
    result = sub_16E5370(*(a1 + 120));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x80) != 0)
  {
    v7 = *(a1 + 128);
    if ((*(v7 + 16) & 0x20) != 0)
    {
      result = sub_16E4B4C(*(v7 + 64));
      if (!result)
      {
        return result;
      }

      v6 = *(a1 + 16);
    }
  }

  if ((v6 & 0x100) != 0)
  {
    result = sub_13C7644(*(a1 + 136));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x200) != 0)
  {
    result = sub_13C7644(*(a1 + 144));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x400) == 0)
  {
    return 1;
  }

  result = sub_13C7F40(*(a1 + 152));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_13CA1D8(void *a1)
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

  sub_13CA25C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_13CA25C(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = (a1 + 24);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 32);
  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276E708)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      sub_13DB2B8(v5);
      operator delete();
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      sub_13DB2B8(v6);
      operator delete();
    }

    result = *(a1 + 56);
    if (result)
    {
      sub_16E4E08();

      operator delete();
    }
  }

  return result;
}

void sub_13CA32C(void *a1)
{
  sub_13CA1D8(a1);

  operator delete();
}

uint64_t sub_13CA364(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
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
    result = sub_13C1C80(*(result + 40));
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_25;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_20:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_25:
  result = sub_13C1C80(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = sub_16E4E44(*(v1 + 56));
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 64) = 0;
  }

  if ((v2 & 0xF00) != 0)
  {
    *(v1 + 84) = 0;
    *(v1 + 76) = 0;
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

uint64_t sub_13CA474(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v65 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v65, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v65 + 1);
    v8 = **v65;
    if (**v65 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v65, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v65 + 2);
      }
    }

    *v65 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 6)
    {
      if (v8 >> 3 <= 3)
      {
        if (v11 != 1)
        {
          if (v11 != 2)
          {
            if (v11 == 3 && v8 == 24)
            {
              v13 = (v7 + 1);
              v14 = *v7;
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_19;
              }

              v15 = *v13;
              v16 = (v15 << 7) + v14;
              LODWORD(v14) = v16 - 128;
              if (v15 < 0)
              {
                *v65 = sub_19587DC(v7, (v16 - 128));
                if (!*v65)
                {
                  goto LABEL_120;
                }

                LODWORD(v14) = v53;
              }

              else
              {
                v13 = (v7 + 2);
LABEL_19:
                *v65 = v13;
              }

              if (sub_140BCB8(v14))
              {
                *(a1 + 16) |= 0x80u;
                *(a1 + 72) = v14;
              }

              else
              {
                sub_1313740();
              }

              goto LABEL_99;
            }

            goto LABEL_91;
          }

          if (v8 != 16)
          {
            goto LABEL_91;
          }

          v38 = (v7 + 1);
          v39 = *v7;
          if (v39 < 0)
          {
            v40 = *v38;
            v41 = (v40 << 7) + v39;
            LODWORD(v39) = v41 - 128;
            if (v40 < 0)
            {
              *v65 = sub_19587DC(v7, (v41 - 128));
              if (!*v65)
              {
                goto LABEL_120;
              }

              LODWORD(v39) = v60;
              goto LABEL_72;
            }

            v38 = (v7 + 2);
          }

          *v65 = v38;
LABEL_72:
          if (sub_1454008(v39))
          {
            *(a1 + 16) |= 0x40u;
            *(a1 + 68) = v39;
          }

          else
          {
            sub_12E8418();
          }

          goto LABEL_99;
        }

        if (v8 != 8)
        {
          goto LABEL_91;
        }

        v5 |= 0x20u;
        v27 = (v7 + 1);
        v28 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_52;
        }

        v29 = *v27;
        v28 = v28 + (v29 << 7) - 128;
        if ((v29 & 0x80000000) == 0)
        {
          v27 = (v7 + 2);
LABEL_52:
          *v65 = v27;
          *(a1 + 64) = v28;
          goto LABEL_99;
        }

        v56 = sub_1958770(v7, v28);
        *v65 = v56;
        *(a1 + 64) = v57;
        if (!v56)
        {
          goto LABEL_120;
        }

        goto LABEL_99;
      }

      if (v11 == 4)
      {
        if (v8 != 34)
        {
          goto LABEL_91;
        }

        *(a1 + 16) |= 1u;
        v33 = *(a1 + 8);
        v31 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        if (v33)
        {
          v31 = *v31;
        }

        v32 = (a1 + 24);
LABEL_61:
        v34 = sub_194DB04(v32, v31);
        v26 = sub_1958890(v34, *v65, a3);
        goto LABEL_98;
      }

      if (v11 == 5)
      {
        if (v8 != 42)
        {
          goto LABEL_91;
        }

        *(a1 + 16) |= 4u;
        v20 = *(a1 + 40);
        if (!v20)
        {
          v45 = *(a1 + 8);
          v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
          if (v45)
          {
            v46 = *v46;
          }

          v20 = sub_13E1B40(v46);
          *(a1 + 40) = v20;
          goto LABEL_84;
        }
      }

      else
      {
        if (v11 != 6 || v8 != 50)
        {
          goto LABEL_91;
        }

        *(a1 + 16) |= 8u;
        v20 = *(a1 + 48);
        if (!v20)
        {
          v21 = *(a1 + 8);
          v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v22 = *v22;
          }

          v20 = sub_13E1B40(v22);
          *(a1 + 48) = v20;
LABEL_84:
          v7 = *v65;
        }
      }

      v26 = sub_22052A0(a3, v20, v7);
      goto LABEL_98;
    }

    if (v8 >> 3 > 9)
    {
      break;
    }

    if (v11 == 7)
    {
      if (v8 != 58)
      {
        goto LABEL_91;
      }

      *(a1 + 16) |= 2u;
      v30 = *(a1 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      v32 = (a1 + 32);
      goto LABEL_61;
    }

    if (v11 == 8)
    {
      if (v8 != 64)
      {
        goto LABEL_91;
      }

      v5 |= 0x100u;
      v42 = (v7 + 1);
      v43 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_78;
      }

      v44 = *v42;
      v43 = v43 + (v44 << 7) - 128;
      if ((v44 & 0x80000000) == 0)
      {
        v42 = (v7 + 2);
LABEL_78:
        *v65 = v42;
        *(a1 + 76) = v43;
        goto LABEL_99;
      }

      v61 = sub_1958770(v7, v43);
      *v65 = v61;
      *(a1 + 76) = v62;
      if (!v61)
      {
        goto LABEL_120;
      }
    }

    else
    {
      if (v11 != 9 || v8 != 72)
      {
        goto LABEL_91;
      }

      v5 |= 0x200u;
      v17 = (v7 + 1);
      v18 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v19 = *v17;
      v18 = v18 + (v19 << 7) - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v17 = (v7 + 2);
LABEL_30:
        *v65 = v17;
        *(a1 + 80) = v18;
        goto LABEL_99;
      }

      v54 = sub_1958770(v7, v18);
      *v65 = v54;
      *(a1 + 80) = v55;
      if (!v54)
      {
        goto LABEL_120;
      }
    }

LABEL_99:
    if (sub_195ADC0(a3, v65, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 10)
  {
    if (v8 != 80)
    {
      goto LABEL_91;
    }

    v5 |= 0x400u;
    v35 = (v7 + 1);
    v36 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

    v37 = *v35;
    v36 = v36 + (v37 << 7) - 128;
    if ((v37 & 0x80000000) == 0)
    {
      v35 = (v7 + 2);
LABEL_66:
      *v65 = v35;
      *(a1 + 84) = v36;
      goto LABEL_99;
    }

    v58 = sub_1958770(v7, v36);
    *v65 = v58;
    *(a1 + 84) = v59;
    if (!v58)
    {
      goto LABEL_120;
    }

    goto LABEL_99;
  }

  if (v11 == 11)
  {
    if (v8 != 88)
    {
      goto LABEL_91;
    }

    v5 |= 0x800u;
    v47 = (v7 + 1);
    v48 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_90;
    }

    v49 = *v47;
    v48 = v48 + (v49 << 7) - 128;
    if ((v49 & 0x80000000) == 0)
    {
      v47 = (v7 + 2);
LABEL_90:
      *v65 = v47;
      *(a1 + 88) = v48;
      goto LABEL_99;
    }

    v63 = sub_1958770(v7, v48);
    *v65 = v63;
    *(a1 + 88) = v64;
    if (!v63)
    {
      goto LABEL_120;
    }

    goto LABEL_99;
  }

  if (v11 == 12 && v8 == 98)
  {
    *(a1 + 16) |= 0x10u;
    v23 = *(a1 + 56);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_16F5828(v25);
      *(a1 + 56) = v23;
      v7 = *v65;
    }

    v26 = sub_21F4D60(a3, v23, v7);
LABEL_98:
    *v65 = v26;
    if (!v26)
    {
      goto LABEL_120;
    }

    goto LABEL_99;
  }

LABEL_91:
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
      v7 = *v65;
    }

    v26 = sub_1952690(v8, v52, v7, a3);
    goto LABEL_98;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_120:
  *v65 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v65;
}

char *sub_13CAA38(uint64_t a1, char *__dst, void *a3)
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

  if ((v5 & 0x40) != 0)
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

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 72);
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
        LOBYTE(v18) = v11[2];
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
      v15 = v11 + 2;
    }
  }

  else
  {
    v15 = v11;
  }

  if (v5)
  {
    v15 = sub_128AEEC(a3, 4, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v15);
    if ((v5 & 4) == 0)
    {
LABEL_30:
      if ((v5 & 8) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_41;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_30;
  }

  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v21 = *(a1 + 40);
  *v15 = 42;
  v22 = *(v21 + 20);
  v15[1] = v22;
  if (v22 > 0x7F)
  {
    v23 = sub_19575D0(v22, v15 + 1);
  }

  else
  {
    v23 = v15 + 2;
  }

  v15 = sub_13DB6A8(v21, v23, a3);
  if ((v5 & 8) == 0)
  {
LABEL_31:
    if ((v5 & 2) == 0)
    {
      goto LABEL_32;
    }

LABEL_47:
    v15 = sub_128AEEC(a3, 7, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v15);
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_48;
  }

LABEL_41:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v24 = *(a1 + 48);
  *v15 = 50;
  v25 = *(v24 + 20);
  v15[1] = v25;
  if (v25 > 0x7F)
  {
    v26 = sub_19575D0(v25, v15 + 1);
  }

  else
  {
    v26 = v15 + 2;
  }

  v15 = sub_13DB6A8(v24, v26, a3);
  if ((v5 & 2) != 0)
  {
    goto LABEL_47;
  }

LABEL_32:
  if ((v5 & 0x100) == 0)
  {
LABEL_33:
    v20 = v15;
    goto LABEL_55;
  }

LABEL_48:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v27 = *(a1 + 76);
  *v15 = 64;
  v15[1] = v27;
  if (v27 > 0x7F)
  {
    v15[1] = v27 | 0x80;
    v28 = v27 >> 7;
    v15[2] = v27 >> 7;
    v20 = v15 + 3;
    if (v27 >= 0x4000)
    {
      LOBYTE(v29) = v15[2];
      do
      {
        *(v20 - 1) = v29 | 0x80;
        v29 = v28 >> 7;
        *v20++ = v28 >> 7;
        v30 = v28 >> 14;
        v28 >>= 7;
      }

      while (v30);
    }
  }

  else
  {
    v20 = v15 + 2;
  }

LABEL_55:
  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v32 = *(a1 + 80);
    *v20 = 72;
    v20[1] = v32;
    if (v32 > 0x7F)
    {
      v20[1] = v32 | 0x80;
      v33 = v32 >> 7;
      v20[2] = v32 >> 7;
      v31 = v20 + 3;
      if (v32 >= 0x4000)
      {
        LOBYTE(v34) = v20[2];
        do
        {
          *(v31 - 1) = v34 | 0x80;
          v34 = v33 >> 7;
          *v31++ = v33 >> 7;
          v35 = v33 >> 14;
          v33 >>= 7;
        }

        while (v35);
      }
    }

    else
    {
      v31 = v20 + 2;
    }
  }

  else
  {
    v31 = v20;
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v37 = *(a1 + 84);
    *v31 = 80;
    v31[1] = v37;
    if (v37 > 0x7F)
    {
      v31[1] = v37 | 0x80;
      v38 = v37 >> 7;
      v31[2] = v37 >> 7;
      v36 = v31 + 3;
      if (v37 >= 0x4000)
      {
        LOBYTE(v31) = v31[2];
        do
        {
          *(v36 - 1) = v31 | 0x80;
          LODWORD(v31) = v38 >> 7;
          *v36++ = v38 >> 7;
          v39 = v38 >> 14;
          v38 >>= 7;
        }

        while (v39);
      }
    }

    else
    {
      v36 = v31 + 2;
    }
  }

  else
  {
    v36 = v31;
  }

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v41 = *(a1 + 88);
    *v36 = 88;
    v36[1] = v41;
    if (v41 > 0x7F)
    {
      v36[1] = v41 | 0x80;
      v42 = v41 >> 7;
      v36[2] = v41 >> 7;
      v40 = v36 + 3;
      if (v41 >= 0x4000)
      {
        LOBYTE(v43) = v36[2];
        do
        {
          *(v40 - 1) = v43 | 0x80;
          v43 = v42 >> 7;
          *v40++ = v42 >> 7;
          v44 = v42 >> 14;
          v42 >>= 7;
        }

        while (v44);
      }
    }

    else
    {
      v40 = v36 + 2;
    }
  }

  else
  {
    v40 = v36;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v40)
    {
      v40 = sub_225EB68(a3, v40);
    }

    v45 = *(a1 + 56);
    *v40 = 98;
    v46 = *(v45 + 44);
    v40[1] = v46;
    if (v46 > 0x7F)
    {
      v47 = sub_19575D0(v46, v40 + 1);
    }

    else
    {
      v47 = v40 + 2;
    }

    v40 = sub_16E5070(v45, v47, a3);
  }

  v48 = *(a1 + 8);
  if ((v48 & 1) == 0)
  {
    return v40;
  }

  v50 = v48 & 0xFFFFFFFFFFFFFFFCLL;
  v51 = *(v50 + 31);
  if (v51 < 0)
  {
    v52 = *(v50 + 8);
    v51 = *(v50 + 16);
  }

  else
  {
    v52 = (v50 + 8);
  }

  if (*a3 - v40 >= v51)
  {
    v53 = v51;
    memcpy(v40, v52, v51);
    v40 += v53;
    return v40;
  }

  return sub_1957130(a3, v52, v51, v40);
}

uint64_t sub_13CAFF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_31;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
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
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v10 = sub_13DB86C(*(a1 + 40));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v11 = sub_13DB86C(*(a1 + 48));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

LABEL_21:
  v12 = sub_16E51F0(*(a1 + 56));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_23;
  }

LABEL_22:
  v3 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

LABEL_23:
  v13 = *(a1 + 68);
  if (v13 < 0)
  {
    v14 = 11;
  }

  else
  {
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v14;
  if ((v2 & 0x80) != 0)
  {
LABEL_27:
    v15 = *(a1 + 72);
    if (v15 < 0)
    {
      v16 = 11;
    }

    else
    {
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v16;
  }

LABEL_31:
  if ((v2 & 0xF00) == 0)
  {
    goto LABEL_37;
  }

  if ((v2 & 0x100) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 76) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_34:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_41;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_34;
  }

  v3 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x400) == 0)
  {
LABEL_35:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_41:
  v3 += ((9 * (__clz(*(a1 + 84) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x800) != 0)
  {
LABEL_36:
    v3 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_37:
  v17 = *(a1 + 8);
  if (v17)
  {
    v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v3 += v20;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_13CB2E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
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
    }

    if ((v4 & 2) != 0)
    {
      v8 = *(a2 + 32);
      *(a1 + 16) |= 2u;
      v9 = *(a1 + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      sub_194EA1C((a1 + 32), (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
    }

    if ((v4 & 4) != 0)
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

        v12 = sub_13E1B40(v14);
        *(a1 + 40) = v12;
      }

      if (*(a2 + 40))
      {
        v15 = *(a2 + 40);
      }

      else
      {
        v15 = &off_276ED70;
      }

      sub_13C45EC(v12, v15);
      if ((v4 & 8) == 0)
      {
LABEL_12:
        if ((v4 & 0x10) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_45;
      }
    }

    else if ((v4 & 8) == 0)
    {
      goto LABEL_12;
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

      v16 = sub_13E1B40(v18);
      *(a1 + 48) = v16;
    }

    if (*(a2 + 48))
    {
      v19 = *(a2 + 48);
    }

    else
    {
      v19 = &off_276ED70;
    }

    sub_13C45EC(v16, v19);
    if ((v4 & 0x10) == 0)
    {
LABEL_13:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_53;
    }

LABEL_45:
    *(a1 + 16) |= 0x10u;
    v20 = *(a1 + 56);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_16F5828(v22);
      *(a1 + 56) = v20;
    }

    if (*(a2 + 56))
    {
      v23 = *(a2 + 56);
    }

    else
    {
      v23 = &off_277E5E8;
    }

    sub_16E527C(v20, v23);
    if ((v4 & 0x20) == 0)
    {
LABEL_14:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_54;
    }

LABEL_53:
    *(a1 + 64) = *(a2 + 64);
    if ((v4 & 0x40) == 0)
    {
LABEL_15:
      if ((v4 & 0x80) == 0)
      {
LABEL_17:
        *(a1 + 16) |= v4;
        goto LABEL_18;
      }

LABEL_16:
      *(a1 + 72) = *(a2 + 72);
      goto LABEL_17;
    }

LABEL_54:
    *(a1 + 68) = *(a2 + 68);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  if ((v4 & 0xF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 76) = *(a2 + 76);
    if ((v4 & 0x200) == 0)
    {
LABEL_21:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_22;
      }

LABEL_58:
      *(a1 + 84) = *(a2 + 84);
      if ((v4 & 0x800) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_21;
  }

  *(a1 + 80) = *(a2 + 80);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_58;
  }

LABEL_22:
  if ((v4 & 0x800) != 0)
  {
LABEL_23:
    *(a1 + 88) = *(a2 + 88);
  }

LABEL_24:
  *(a1 + 16) |= v4;
LABEL_25:
  v11 = *(a2 + 8);
  if (v11)
  {

    sub_1957EF4((a1 + 8), (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13CB52C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    v3 = *(a1 + 40);
    if ((*(v3 + 16) & 0x20) != 0)
    {
      result = sub_16E4B4C(*(v3 + 64));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 8) != 0)
  {
    v5 = *(a1 + 48);
    if ((*(v5 + 16) & 0x20) != 0)
    {
      result = sub_16E4B4C(*(v5 + 64));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x10) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_13CB5B4(uint64_t a1)
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

  if (a1 != &off_276E768)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_13663C4(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_13C57C8(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_13EC208((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13CB690(uint64_t a1)
{
  sub_13CB5B4(a1);

  operator delete();
}

uint64_t sub_13CB6C8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13CA364(v4);
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
      result = sub_1359188(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      result = sub_13C58F8(*(v1 + 56));
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 56) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_13CB770(uint64_t a1, char *a2, int32x2_t *a3)
{
  v34 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v34, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v34 + 1;
    v7 = *v34;
    if (*v34 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v34, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v34 + 2;
      }
    }

    v34 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v22 = v6 + 1;
          v23 = *v6;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_35;
          }

          v24 = *v22;
          v25 = (v24 << 7) + v23;
          LODWORD(v23) = v25 - 128;
          if (v24 < 0)
          {
            v34 = sub_19587DC(v6, (v25 - 128));
            if (!v34)
            {
              return 0;
            }

            LODWORD(v23) = v32;
          }

          else
          {
            v22 = v6 + 2;
LABEL_35:
            v34 = v22;
          }

          if (sub_1393054(v23))
          {
            *(a1 + 16) |= 4u;
            *(a1 + 64) = v23;
          }

          else
          {
            sub_12E8450();
          }

          continue;
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        v12 = v6 - 1;
        while (1)
        {
          v13 = (v12 + 1);
          v34 = v12 + 1;
          v14 = *(a1 + 40);
          if (v14 && (v15 = *(a1 + 32), v15 < *v14))
          {
            *(a1 + 32) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            sub_13D3DC4(*(a1 + 24));
            v16 = sub_19593CC(a1 + 24, v17);
            v13 = v34;
          }

          v12 = sub_22061D0(a3, v16, v13);
          v34 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 18)
          {
            goto LABEL_52;
          }
        }
      }

LABEL_44:
      if (v7)
      {
        v29 = (v7 & 7) == 4;
      }

      else
      {
        v29 = 1;
      }

      if (v29)
      {
        if (v6)
        {
          a3[10].i32[0] = v7 - 1;
          return v34;
        }

        return 0;
      }

      v30 = *(a1 + 8);
      if (v30)
      {
        v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v31 = sub_11F1920((a1 + 8));
        v6 = v34;
      }

      v21 = sub_1952690(v7, v31, v6, a3);
      goto LABEL_51;
    }

    if (v10 == 3)
    {
      if (v7 != 26)
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

        v26 = sub_1379F3C(v28);
        *(a1 + 48) = v26;
        v6 = v34;
      }

      v21 = sub_2200590(a3, v26, v6);
    }

    else
    {
      if (v10 != 4 || v7 != 34)
      {
        goto LABEL_44;
      }

      *(a1 + 16) |= 2u;
      v18 = *(a1 + 56);
      if (!v18)
      {
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v18 = sub_13D3AEC(v20);
        *(a1 + 56) = v18;
        v6 = v34;
      }

      v21 = sub_2205B10(a3, v18, v6);
    }

LABEL_51:
    v34 = v21;
    if (!v21)
    {
      return 0;
    }

LABEL_52:
    ;
  }

  return v34;
}

char *sub_13CBA40(uint64_t a1, char *__dst, unint64_t *a3)
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

      v6 = sub_13CAA38(v13, v15, a3);
    }
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v16 = *(a1 + 48);
    *v6 = 26;
    v17 = *(v16 + 20);
    v6[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v6 + 1);
    }

    else
    {
      v18 = v6 + 2;
    }

    v6 = sub_136659C(v16, v18, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v19 = *(a1 + 56);
    *v6 = 34;
    v20 = *(v19 + 20);
    v6[1] = v20;
    if (v20 > 0x7F)
    {
      v21 = sub_19575D0(v20, v6 + 1);
    }

    else
    {
      v21 = v6 + 2;
    }

    v6 = sub_13C5CF4(v19, v21, a3);
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v25)
  {
    v27 = v25;
    memcpy(v6, v26, v25);
    v6 += v27;
    return v6;
  }

  return sub_1957130(a3, v26, v25, v6);
}

uint64_t sub_13CBCCC(uint64_t a1)
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
      v7 = sub_13CAFF8(v6);
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
    goto LABEL_20;
  }

  if (v8)
  {
    v9 = sub_1366718(*(a1 + 48));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v10 = sub_13C5FAC(*(a1 + 56));
  v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v11 = *(a1 + 64);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v12;
LABEL_20:
  v13 = *(a1 + 8);
  if (v13)
  {
    v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v2 += v16;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_13CBE20(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13EC750((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
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
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 48);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_1379F3C(v13);
        *(a1 + 48) = v11;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_276C8F0;
      }

      sub_131B904(v11, v14);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
LABEL_9:
          *(a1 + 16) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        *(a1 + 64) = *(a2 + 64);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 16) |= 2u;
    v15 = *(a1 + 56);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_13D3AEC(v17);
      *(a1 + 56) = v15;
    }

    if (*(a2 + 56))
    {
      v18 = *(a2 + 56);
    }

    else
    {
      v18 = &off_276E530;
    }

    sub_13C613C(v15, v18);
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

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13CBFA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_13CB52C(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    result = sub_135B770(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 2) == 0)
  {
    return 1;
  }

  result = sub_13C62F8(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_13CC02C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) == 0)
  {
    goto LABEL_32;
  }

  if ((v1 & 1) == 0)
  {
    if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_5:
    if ((v1 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_21:
    v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_25;
      }
    }

LABEL_7:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_32;
    }

LABEL_29:
    v7 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
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

    goto LABEL_32;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v2 + 23) < 0)
  {
    **v2 = 0;
    *(v2 + 8) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_4:
  if ((v1 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_17:
  v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *v4 = 0;
    *(v4 + 23) = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_6:
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_25:
  v6 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v1 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_32:
  v9 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v9)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_13CC180(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13DBB90(v4);
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
      result = sub_13DBB90(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  *(v1 + 64) = 0;
  v8 = *(v1 + 88);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 96) + 8);
    do
    {
      v10 = *v9++;
      result = sub_13DBB90(v10);
      --v8;
    }

    while (v8);
    *(v1 + 88) = 0;
  }

  v11 = *(v1 + 112);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 120) + 8);
    do
    {
      v13 = *v12++;
      result = sub_13DBB90(v13);
      --v11;
    }

    while (v11);
    *(v1 + 112) = 0;
  }

  v14 = *(v1 + 136);
  if (v14 >= 1)
  {
    v15 = (*(v1 + 144) + 8);
    do
    {
      v16 = *v15++;
      result = sub_13DBB90(v16);
      --v14;
    }

    while (v14);
    *(v1 + 136) = 0;
  }

  v18 = *(v1 + 8);
  v17 = (v1 + 8);
  if (v18)
  {

    return sub_1957EA8(v17);
  }

  return result;
}

void *sub_13CC2A0(void *a1)
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

  sub_13CC334(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956ABC((a1 + 5));
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_13CC334(uint64_t a1)
{
  v3 = *(a1 + 56);
  v2 = (a1 + 56);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
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

  if (*(a1 + 88) != &qword_278E990)
  {
    sub_194E89C((a1 + 88));
  }

  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C((a1 + 96));
  }

  if (*(a1 + 104) != &qword_278E990)
  {
    sub_194E89C((a1 + 104));
  }

  result = (a1 + 112);
  if (*(a1 + 112) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276E7B0)
  {
    v5 = *(a1 + 120);
    if (v5)
    {
      sub_13D86B0(v5);
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
      sub_16E5B34(v6);
      operator delete();
    }

    v7 = *(a1 + 144);
    if (v7)
    {
      sub_13DAB74(v7);
      operator delete();
    }

    if (*(a1 + 152))
    {
      sub_17998B0();
      operator delete();
    }

    if (*(a1 + 160))
    {
      sub_16EB0C0();
      operator delete();
    }

    v8 = *(a1 + 168);
    if (v8)
    {
      sub_13DC130(v8);
      operator delete();
    }

    v9 = *(a1 + 176);
    if (v9)
    {
      sub_13DFF7C(v9);
      operator delete();
    }

    if (*(a1 + 184))
    {
      sub_16E4E08();
      operator delete();
    }

    if (*(a1 + 192))
    {
      sub_16E4E08();
      operator delete();
    }

    result = *(a1 + 200);
    if (result)
    {
      sub_13E755C(result);

      operator delete();
    }
  }

  return result;
}

void sub_13CC574(void *a1)
{
  sub_13CC2A0(a1);

  operator delete();
}

uint64_t sub_13CC5AC(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  *(result + 40) = 0;
  v2 = *(result + 16);
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      if ((v2 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      v4 = *(result + 64) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v2 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v4 = 0;
        *(v4 + 23) = 0;
        if ((v2 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_23:
      v6 = *(result + 80) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v2 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *v6 = 0;
        *(v6 + 23) = 0;
        if ((v2 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_8;
      }

LABEL_31:
      v8 = *(result + 96) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v8 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
        if ((v2 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
        if ((v2 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }

LABEL_39:
      v10 = *(result + 112) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
      }

      else
      {
        *v10 = 0;
        *(v10 + 23) = 0;
      }

      goto LABEL_42;
    }

    v3 = *(result + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
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

LABEL_19:
    v5 = *(result + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_27:
    v7 = *(result + 88) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_8:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v9 = *(result + 104) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_39;
  }

LABEL_42:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_52;
  }

  if ((v2 & 0x100) != 0)
  {
    result = sub_13BA608(*(result + 120));
    if ((v2 & 0x200) == 0)
    {
LABEL_45:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_65;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  result = sub_16E4E44(*(v1 + 128));
  if ((v2 & 0x400) == 0)
  {
LABEL_46:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = sub_16E5B70(*(v1 + 136));
  if ((v2 & 0x800) == 0)
  {
LABEL_47:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = sub_13CC02C(*(v1 + 144));
  if ((v2 & 0x1000) == 0)
  {
LABEL_48:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = sub_17998EC(*(v1 + 152));
  if ((v2 & 0x2000) == 0)
  {
LABEL_49:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = sub_16EB0FC(*(v1 + 160));
  if ((v2 & 0x4000) == 0)
  {
LABEL_50:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_69:
  result = sub_13CC180(*(v1 + 168));
  if ((v2 & 0x8000) != 0)
  {
LABEL_51:
    result = sub_13BC600(*(v1 + 176));
  }

LABEL_52:
  if ((v2 & 0x70000) == 0)
  {
    goto LABEL_57;
  }

  if ((v2 & 0x10000) != 0)
  {
    result = sub_16E4E44(*(v1 + 184));
    if ((v2 & 0x20000) == 0)
    {
LABEL_55:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_55;
  }

  result = sub_16E4E44(*(v1 + 192));
  if ((v2 & 0x40000) != 0)
  {
LABEL_56:
    result = sub_13C168C(*(v1 + 200));
  }

LABEL_57:
  if ((v2 & 0x780000) != 0)
  {
    *(v1 + 208) = 0;
  }

  v12 = *(v1 + 8);
  v11 = v1 + 8;
  *(v11 + 8) = 0;
  if (v12)
  {

    return sub_1957EA8(v11);
  }

  return result;
}

uint64_t sub_13CC874(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v83 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v83, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (2)
  {
    v8 = (*v83 + 1);
    v9 = **v83;
    if (**v83 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(*v83, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = (*v83 + 2);
      }
    }

    *v83 = v8;
    switch(v9 >> 3)
    {
      case 1u:
        if (v9 != 10)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 1u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 56);
        goto LABEL_162;
      case 2u:
        if (v9 != 18)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x100u;
        v44 = *(a1 + 120);
        if (!v44)
        {
          v45 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v45 = *v45;
          }

          v44 = sub_13E1810(v45);
          *(a1 + 120) = v44;
          v8 = *v83;
        }

        v32 = sub_2204E20(a3, v44, v8);
        goto LABEL_163;
      case 3u:
        if (v9 != 26)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x200u;
        v16 = *(a1 + 128);
        if (v16)
        {
          goto LABEL_73;
        }

        v37 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v7)
        {
          v37 = *v37;
        }

        v16 = sub_16F5828(v37);
        *(a1 + 128) = v16;
        goto LABEL_72;
      case 4u:
        if (v9 != 34)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x400u;
        v39 = *(a1 + 136);
        if (!v39)
        {
          v40 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v40 = *v40;
          }

          sub_16F58FC(v40);
          v39 = v41;
          *(a1 + 136) = v41;
          v8 = *v83;
        }

        v32 = sub_21F86E8(a3, v39, v8);
        goto LABEL_163;
      case 5u:
        if (v9 != 42)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 2u;
        v29 = *(a1 + 8);
        v14 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v14 = *v14;
        }

        v15 = (a1 + 64);
        goto LABEL_162;
      case 6u:
        if (v9 != 50)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 4u;
        v50 = *(a1 + 8);
        v14 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
        if (v50)
        {
          v14 = *v14;
        }

        v15 = (a1 + 72);
        goto LABEL_162;
      case 7u:
        if (v9 != 56)
        {
          goto LABEL_179;
        }

        v5 |= 0x80000u;
        v55 = (v8 + 1);
        v54 = *v8;
        if ((v54 & 0x8000000000000000) == 0)
        {
          goto LABEL_121;
        }

        v56 = *v55;
        v54 = (v56 << 7) + v54 - 128;
        if (v56 < 0)
        {
          v76 = sub_19587DC(v8, v54);
          *v83 = v76;
          *(a1 + 208) = v77 != 0;
          if (!v76)
          {
            goto LABEL_190;
          }
        }

        else
        {
          v55 = (v8 + 2);
LABEL_121:
          *v83 = v55;
          *(a1 + 208) = v54 != 0;
        }

        goto LABEL_164;
      case 8u:
        if (v9 != 66)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x800u;
        v42 = *(a1 + 144);
        if (!v42)
        {
          v43 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v43 = *v43;
          }

          v42 = sub_13E1AB4(v43);
          *(a1 + 144) = v42;
          v8 = *v83;
        }

        v32 = sub_2206410(a3, v42, v8);
        goto LABEL_163;
      case 9u:
        if (v9 != 72)
        {
          goto LABEL_179;
        }

        v5 |= 0x100000u;
        v61 = (v8 + 1);
        v60 = *v8;
        if ((v60 & 0x8000000000000000) == 0)
        {
          goto LABEL_136;
        }

        v62 = *v61;
        v60 = (v62 << 7) + v60 - 128;
        if (v62 < 0)
        {
          v78 = sub_19587DC(v8, v60);
          *v83 = v78;
          *(a1 + 209) = v79 != 0;
          if (!v78)
          {
            goto LABEL_190;
          }
        }

        else
        {
          v61 = (v8 + 2);
LABEL_136:
          *v83 = v61;
          *(a1 + 209) = v60 != 0;
        }

        goto LABEL_164;
      case 0xAu:
        if (v9 != 82)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x1000u;
        v33 = *(a1 + 152);
        if (!v33)
        {
          v34 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v34 = *v34;
          }

          v33 = sub_185D614(v34);
          *(a1 + 152) = v33;
          v8 = *v83;
        }

        v32 = sub_21F51E0(a3, v33, v8);
        goto LABEL_163;
      case 0xBu:
        if (v9 != 90)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x2000u;
        v58 = *(a1 + 160);
        if (!v58)
        {
          v59 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v59 = *v59;
          }

          v58 = sub_16F5DB8(v59);
          *(a1 + 160) = v58;
          v8 = *v83;
        }

        v32 = sub_21F8D18(a3, v58, v8);
        goto LABEL_163;
      case 0xCu:
        if (v9 != 96)
        {
          goto LABEL_179;
        }

        v5 |= 0x200000u;
        v27 = (v8 + 1);
        v26 = *v8;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_39;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if (v28 < 0)
        {
          v74 = sub_19587DC(v8, v26);
          *v83 = v74;
          *(a1 + 210) = v75 != 0;
          if (!v74)
          {
            goto LABEL_190;
          }
        }

        else
        {
          v27 = (v8 + 2);
LABEL_39:
          *v83 = v27;
          *(a1 + 210) = v26 != 0;
        }

        goto LABEL_164;
      case 0xDu:
        if (v9 != 106)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x4000u;
        v30 = *(a1 + 168);
        if (!v30)
        {
          v31 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v31 = *v31;
          }

          v30 = sub_13E1C54(v31);
          *(a1 + 168) = v30;
          v8 = *v83;
        }

        v32 = sub_22064A0(a3, v30, v8);
        goto LABEL_163;
      case 0xEu:
        if (v9 != 114)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x8000u;
        v52 = *(a1 + 176);
        if (!v52)
        {
          v53 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v53 = *v53;
          }

          v52 = sub_13E2128(v53);
          *(a1 + 176) = v52;
          v8 = *v83;
        }

        v32 = sub_2205060(a3, v52, v8);
        goto LABEL_163;
      case 0xFu:
        if (v9 == 120)
        {
          v18 = (v8 - 1);
          while (1)
          {
            *v83 = v18 + 1;
            v19 = *(v18 + 1);
            v20 = (v18 + 2);
            if (v19 < 0)
            {
              v21 = *v20;
              v22 = (v21 << 7) + v19;
              LODWORD(v19) = v22 - 128;
              if (v21 < 0)
              {
                *v83 = sub_19587DC(v18 + 1, (v22 - 128));
                if (!*v83)
                {
                  goto LABEL_190;
                }

                LODWORD(v19) = v25;
                goto LABEL_24;
              }

              v20 = (v18 + 3);
            }

            *v83 = v20;
LABEL_24:
            if (v19 > 6)
            {
              sub_12E8538();
            }

            else
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

            v18 = *v83;
            if (*a3 <= *v83 || **v83 != 120)
            {
              goto LABEL_164;
            }
          }
        }

        if (v9 != 122)
        {
          goto LABEL_179;
        }

        *&v84 = a1 + 24;
        *(&v84 + 1) = sub_13CD324;
        v85 = a1 + 8;
        v80 = 15;
        goto LABEL_178;
      case 0x10u:
        if (v9 != 130)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x10000u;
        v16 = *(a1 + 184);
        if (v16)
        {
          goto LABEL_73;
        }

        v38 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v7)
        {
          v38 = *v38;
        }

        v16 = sub_16F5828(v38);
        *(a1 + 184) = v16;
        goto LABEL_72;
      case 0x11u:
        if (v9 != 138)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x20000u;
        v16 = *(a1 + 192);
        if (v16)
        {
          goto LABEL_73;
        }

        v17 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v7)
        {
          v17 = *v17;
        }

        v16 = sub_16F5828(v17);
        *(a1 + 192) = v16;
LABEL_72:
        v8 = *v83;
LABEL_73:
        v32 = sub_21F4D60(a3, v16, v8);
        goto LABEL_163;
      case 0x12u:
        if (v9 != 144)
        {
          goto LABEL_179;
        }

        v47 = (v8 + 1);
        v46 = *v8;
        if ((v46 & 0x8000000000000000) == 0)
        {
          goto LABEL_96;
        }

        v48 = *v47;
        v46 = (v48 << 7) + v46 - 128;
        if (v48 < 0)
        {
          *v83 = sub_19587DC(v8, v46);
          if (!*v83)
          {
            goto LABEL_190;
          }
        }

        else
        {
          v47 = (v8 + 2);
LABEL_96:
          *v83 = v47;
        }

        if (v46 > 9)
        {
          sub_13ED138();
        }

        else
        {
          *(a1 + 16) |= 0x400000u;
          *(a1 + 212) = v46;
        }

        goto LABEL_164;
      case 0x13u:
        if (v9 != 154)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 8u;
        v57 = *(a1 + 8);
        v14 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
        if (v57)
        {
          v14 = *v14;
        }

        v15 = (a1 + 80);
        goto LABEL_162;
      case 0x14u:
        if (v9 == 160)
        {
          v64 = (v8 - 2);
          while (1)
          {
            *v83 = v64 + 2;
            v65 = *(v64 + 2);
            v66 = (v64 + 3);
            if (v65 < 0)
            {
              v67 = *v66;
              v68 = (v67 << 7) + v65;
              LODWORD(v65) = v68 - 128;
              if (v67 < 0)
              {
                *v83 = sub_19587DC(v64 + 2, (v68 - 128));
                if (!*v83)
                {
                  goto LABEL_190;
                }

                LODWORD(v65) = v71;
                goto LABEL_147;
              }

              v66 = (v64 + 4);
            }

            *v83 = v66;
LABEL_147:
            if (v65 > 1)
            {
              sub_13B6824();
            }

            else
            {
              v69 = *(a1 + 40);
              if (v69 == *(a1 + 44))
              {
                v70 = v69 + 1;
                sub_1958E5C((a1 + 40), v69 + 1);
                *(*(a1 + 48) + 4 * v69) = v65;
              }

              else
              {
                *(*(a1 + 48) + 4 * v69) = v65;
                v70 = v69 + 1;
              }

              *(a1 + 40) = v70;
            }

            v64 = *v83;
            if (*a3 <= *v83 || **v83 != 416)
            {
              goto LABEL_164;
            }
          }
        }

        if (v9 == 162)
        {
          *&v84 = a1 + 40;
          *(&v84 + 1) = sub_13CD330;
          v85 = a1 + 8;
          v80 = 20;
LABEL_178:
          v86 = v80;
          v32 = sub_1216588(a3, v8, &v84);
LABEL_163:
          *v83 = v32;
          if (!v32)
          {
            goto LABEL_190;
          }

LABEL_164:
          if (sub_195ADC0(a3, v83, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_179:
        if (v9)
        {
          v81 = (v9 & 7) == 4;
        }

        else
        {
          v81 = 1;
        }

        if (!v81)
        {
          if (*v7)
          {
            v82 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v82 = sub_11F1920((a1 + 8));
            v8 = *v83;
          }

          v32 = sub_1952690(v9, v82, v8, a3);
          goto LABEL_163;
        }

        if (v8)
        {
          a3[10].i32[0] = v9 - 1;
        }

        else
        {
LABEL_190:
          *v83 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v83;
      case 0x15u:
        if (v9 != 170)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x10u;
        v49 = *(a1 + 8);
        v14 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
        if (v49)
        {
          v14 = *v14;
        }

        v15 = (a1 + 88);
        goto LABEL_162;
      case 0x16u:
        if (v9 != 178)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x20u;
        v51 = *(a1 + 8);
        v14 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
        if (v51)
        {
          v14 = *v14;
        }

        v15 = (a1 + 96);
        goto LABEL_162;
      case 0x17u:
        if (v9 != 186)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x40u;
        v63 = *(a1 + 8);
        v14 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
        if (v63)
        {
          v14 = *v14;
        }

        v15 = (a1 + 104);
        goto LABEL_162;
      case 0x18u:
        if (v9 != 194)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x80u;
        v72 = *(a1 + 8);
        v14 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
        if (v72)
        {
          v14 = *v14;
        }

        v15 = (a1 + 112);
LABEL_162:
        v73 = sub_194DB04(v15, v14);
        v32 = sub_1958890(v73, *v83, a3);
        goto LABEL_163;
      case 0x19u:
        if (v9 != 202)
        {
          goto LABEL_179;
        }

        *(a1 + 16) |= 0x40000u;
        v35 = *(a1 + 200);
        if (!v35)
        {
          v36 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v36 = *v36;
          }

          v35 = sub_13E9684(v36);
          *(a1 + 200) = v35;
          v8 = *v83;
        }

        v32 = sub_22057B0(a3, v35, v8);
        goto LABEL_163;
      default:
        goto LABEL_179;
    }
  }
}

char *sub_13CD33C(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, a2);
    if ((v6 & 0x100) == 0)
    {
LABEL_3:
      if ((v6 & 0x200) == 0)
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

  v7 = *(a1 + 120);
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

  v4 = sub_13D893C(v7, v9, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_4:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_23:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 128);
  *v4 = 26;
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

  v4 = sub_16E5070(v10, v12, a3);
  if ((v6 & 0x400) == 0)
  {
LABEL_5:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_29:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 136);
  *v4 = 34;
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

  v4 = sub_16E5FE0(v13, v15, a3);
  if ((v6 & 2) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  v4 = sub_128AEEC(a3, 5, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) == 0)
  {
LABEL_7:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  v4 = sub_128AEEC(a3, 6, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x80000) == 0)
  {
LABEL_8:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_37:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v16 = *(a1 + 208);
  *v4 = 56;
  v4[1] = v16;
  v4 += 2;
  if ((v6 & 0x800) == 0)
  {
LABEL_9:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_40:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v17 = *(a1 + 144);
  *v4 = 66;
  v18 = *(v17 + 20);
  v4[1] = v18;
  if (v18 > 0x7F)
  {
    v19 = sub_19575D0(v18, v4 + 1);
  }

  else
  {
    v19 = v4 + 2;
  }

  v4 = sub_13DAF2C(v17, v19, a3);
  if ((v6 & 0x100000) == 0)
  {
LABEL_10:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_46:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v20 = *(a1 + 209);
  *v4 = 72;
  v4[1] = v20;
  v4 += 2;
  if ((v6 & 0x1000) == 0)
  {
LABEL_11:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_49:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v21 = *(a1 + 152);
  *v4 = 82;
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

  v4 = sub_1799A68(v21, v23, a3);
  if ((v6 & 0x2000) == 0)
  {
LABEL_12:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_61;
  }

LABEL_55:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v24 = *(a1 + 160);
  *v4 = 90;
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

  v4 = sub_16EBD38(v24, v26, a3);
  if ((v6 & 0x200000) == 0)
  {
LABEL_13:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_64;
  }

LABEL_61:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v27 = *(a1 + 210);
  *v4 = 96;
  v4[1] = v27;
  v4 += 2;
  if ((v6 & 0x4000) == 0)
  {
LABEL_14:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_70;
  }

LABEL_64:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v28 = *(a1 + 168);
  *v4 = 106;
  v29 = *(v28 + 152);
  v4[1] = v29;
  if (v29 > 0x7F)
  {
    v30 = sub_19575D0(v29, v4 + 1);
  }

  else
  {
    v30 = v4 + 2;
  }

  v4 = sub_13DC704(v28, v30, a3);
  if ((v6 & 0x8000) != 0)
  {
LABEL_70:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v31 = *(a1 + 176);
    *v4 = 114;
    v32 = *(v31 + 20);
    v4[1] = v32;
    if (v32 > 0x7F)
    {
      v33 = sub_19575D0(v32, v4 + 1);
    }

    else
    {
      v33 = v4 + 2;
    }

    v4 = sub_13E0334(v31, v33, a3);
  }

LABEL_76:
  v34 = *(a1 + 24);
  if (v34 < 1)
  {
    v37 = v4;
  }

  else
  {
    for (i = 0; i != v34; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v36 = *(*(a1 + 32) + 4 * i);
      *v4 = 120;
      v4[1] = v36;
      if (v36 > 0x7F)
      {
        v4[1] = v36 | 0x80;
        v38 = v36 >> 7;
        v4[2] = v36 >> 7;
        v37 = v4 + 3;
        if (v36 >= 0x4000)
        {
          LOBYTE(v39) = v4[2];
          do
          {
            *(v37 - 1) = v39 | 0x80;
            v39 = v38 >> 7;
            *v37++ = v38 >> 7;
            v40 = v38 >> 14;
            v38 >>= 7;
          }

          while (v40);
        }
      }

      else
      {
        v37 = v4 + 2;
      }

      v4 = v37;
    }
  }

  if ((v6 & 0x10000) == 0)
  {
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_90;
    }

LABEL_98:
    if (*a3 <= v37)
    {
      v37 = sub_225EB68(a3, v37);
    }

    v45 = *(a1 + 192);
    *v37 = 394;
    v46 = *(v45 + 44);
    v37[2] = v46;
    if (v46 > 0x7F)
    {
      v47 = sub_19575D0(v46, v37 + 2);
    }

    else
    {
      v47 = v37 + 3;
    }

    v37 = sub_16E5070(v45, v47, a3);
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_104;
  }

  if (*a3 <= v37)
  {
    v37 = sub_225EB68(a3, v37);
  }

  v42 = *(a1 + 184);
  *v37 = 386;
  v43 = *(v42 + 44);
  v37[2] = v43;
  if (v43 > 0x7F)
  {
    v44 = sub_19575D0(v43, v37 + 2);
  }

  else
  {
    v44 = v37 + 3;
  }

  v37 = sub_16E5070(v42, v44, a3);
  if ((v6 & 0x20000) != 0)
  {
    goto LABEL_98;
  }

LABEL_90:
  if ((v6 & 0x400000) == 0)
  {
LABEL_91:
    v41 = v37;
    goto LABEL_111;
  }

LABEL_104:
  if (*a3 <= v37)
  {
    v37 = sub_225EB68(a3, v37);
  }

  v48 = *(a1 + 212);
  *v37 = 400;
  v37[2] = v48;
  if (v48 > 0x7F)
  {
    v37[2] = v48 | 0x80;
    v49 = v48 >> 7;
    v37[3] = v48 >> 7;
    v41 = v37 + 4;
    if (v48 >= 0x4000)
    {
      LOBYTE(v37) = v37[3];
      do
      {
        *(v41 - 1) = v37 | 0x80;
        v37 = (v49 >> 7);
        *v41++ = v49 >> 7;
        v50 = v49 >> 14;
        v49 >>= 7;
      }

      while (v50);
    }
  }

  else
  {
    v41 = v37 + 3;
  }

LABEL_111:
  if ((v6 & 8) != 0)
  {
    v41 = sub_128AEEC(a3, 19, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v41);
  }

  v51 = *(a1 + 40);
  if (v51 < 1)
  {
    v54 = v41;
  }

  else
  {
    for (j = 0; j != v51; ++j)
    {
      if (*a3 <= v41)
      {
        v41 = sub_225EB68(a3, v41);
      }

      v53 = *(*(a1 + 48) + 4 * j);
      *v41 = 416;
      v41[2] = v53;
      if (v53 > 0x7F)
      {
        v41[2] = v53 | 0x80;
        v55 = v53 >> 7;
        v41[3] = v53 >> 7;
        v54 = v41 + 4;
        if (v53 >= 0x4000)
        {
          LOBYTE(v56) = v41[3];
          do
          {
            *(v54 - 1) = v56 | 0x80;
            v56 = v55 >> 7;
            *v54++ = v55 >> 7;
            v57 = v55 >> 14;
            v55 >>= 7;
          }

          while (v57);
        }
      }

      else
      {
        v54 = v41 + 3;
      }

      v41 = v54;
    }
  }

  if ((v6 & 0x10) != 0)
  {
    v54 = sub_128AEEC(a3, 21, *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL, v54);
    if ((v6 & 0x20) == 0)
    {
LABEL_127:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_133;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_127;
  }

  v54 = sub_128AEEC(a3, 22, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, v54);
  if ((v6 & 0x40) == 0)
  {
LABEL_128:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_134;
  }

LABEL_133:
  v54 = sub_128AEEC(a3, 23, *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL, v54);
  if ((v6 & 0x80) == 0)
  {
LABEL_129:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_135;
  }

LABEL_134:
  v54 = sub_128AEEC(a3, 24, *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL, v54);
  if ((v6 & 0x40000) == 0)
  {
    goto LABEL_141;
  }

LABEL_135:
  if (*a3 <= v54)
  {
    v54 = sub_225EB68(a3, v54);
  }

  v58 = *(a1 + 200);
  *v54 = 458;
  v59 = *(v58 + 40);
  v54[2] = v59;
  if (v59 > 0x7F)
  {
    v60 = sub_19575D0(v59, v54 + 2);
  }

  else
  {
    v60 = v54 + 3;
  }

  v54 = sub_13E77A4(v58, v60, a3);
LABEL_141:
  v61 = *(a1 + 8);
  if ((v61 & 1) == 0)
  {
    return v54;
  }

  v63 = v61 & 0xFFFFFFFFFFFFFFFCLL;
  v64 = *(v63 + 31);
  if (v64 < 0)
  {
    v65 = *(v63 + 8);
    v64 = *(v63 + 16);
  }

  else
  {
    v65 = (v63 + 8);
  }

  if (*a3 - v54 >= v64)
  {
    v66 = v64;
    memcpy(v54, v65, v64);
    v54 += v66;
    return v54;
  }

  return sub_1957130(a3, v65, v64, v54);
}

uint64_t sub_13CDC0C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 32) + 4 * v3);
      if (v5 < 0)
      {
        v6 = 10;
      }

      else
      {
        v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
      }

      v4 += v6;
      ++v3;
    }

    while (v2 != v3);
  }

  else
  {
    v4 = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(*(a1 + 48) + 4 * v8);
      if (v10 < 0)
      {
        v11 = 10;
      }

      else
      {
        v11 = (9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6;
      }

      v9 += v11;
      ++v8;
    }

    while (v7 != v8);
  }

  else
  {
    v9 = 0;
  }

  v12 = v4 + v2 + 2 * v7 + v9;
  v13 = *(a1 + 16);
  if (!v13)
  {
    goto LABEL_29;
  }

  if (v13)
  {
    v24 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v25 = *(v24 + 23);
    v26 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v26 = v25;
    }

    v12 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v13 & 2) == 0)
    {
LABEL_20:
      if ((v13 & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_57;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_20;
  }

  v27 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v28 = *(v27 + 23);
  v29 = *(v27 + 8);
  if ((v28 & 0x80u) == 0)
  {
    v29 = v28;
  }

  v12 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 4) == 0)
  {
LABEL_21:
    if ((v13 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_57:
  v30 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v31 = *(v30 + 23);
  v32 = *(v30 + 8);
  if ((v31 & 0x80u) == 0)
  {
    v32 = v31;
  }

  v12 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 8) == 0)
  {
LABEL_22:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_60:
  v33 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v34 = *(v33 + 23);
  v35 = *(v33 + 8);
  if ((v34 & 0x80u) == 0)
  {
    v35 = v34;
  }

  v12 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x10) == 0)
  {
LABEL_23:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_66;
  }

LABEL_63:
  v36 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  v37 = *(v36 + 23);
  v38 = *(v36 + 8);
  if ((v37 & 0x80u) == 0)
  {
    v38 = v37;
  }

  v12 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x20) == 0)
  {
LABEL_24:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_69;
  }

LABEL_66:
  v39 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  v40 = *(v39 + 23);
  v41 = *(v39 + 8);
  if ((v40 & 0x80u) == 0)
  {
    v41 = v40;
  }

  v12 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x40) == 0)
  {
LABEL_25:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

LABEL_69:
  v42 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  v43 = *(v42 + 23);
  v44 = *(v42 + 8);
  if ((v43 & 0x80u) == 0)
  {
    v44 = v43;
  }

  v12 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x80) != 0)
  {
LABEL_26:
    v14 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v14 + 23);
    v16 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v15;
    }

    v12 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_29:
  if ((v13 & 0xFF00) == 0)
  {
    goto LABEL_39;
  }

  if ((v13 & 0x100) != 0)
  {
    v45 = sub_13D8AEC(*(a1 + 120));
    v12 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v13 & 0x200) == 0)
    {
LABEL_32:
      if ((v13 & 0x400) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_75;
    }
  }

  else if ((v13 & 0x200) == 0)
  {
    goto LABEL_32;
  }

  v46 = sub_16E51F0(*(a1 + 128));
  v12 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x400) == 0)
  {
LABEL_33:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_76;
  }

LABEL_75:
  v47 = sub_16E62F4(*(a1 + 136));
  v12 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x800) == 0)
  {
LABEL_34:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_77;
  }

LABEL_76:
  v48 = sub_13DB0AC(*(a1 + 144));
  v12 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x1000) == 0)
  {
LABEL_35:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_78;
  }

LABEL_77:
  v49 = sub_1799B30(*(a1 + 152));
  v12 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x2000) == 0)
  {
LABEL_36:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_79;
  }

LABEL_78:
  v50 = sub_16EC25C(*(a1 + 160));
  v12 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x4000) == 0)
  {
LABEL_37:
    if ((v13 & 0x8000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_79:
  v51 = sub_13DCAFC(*(a1 + 168));
  v12 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x8000) != 0)
  {
LABEL_38:
    v17 = sub_13E04B4(*(a1 + 176));
    v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_39:
  if ((v13 & 0x7F0000) == 0)
  {
    goto LABEL_49;
  }

  if ((v13 & 0x10000) != 0)
  {
    v52 = sub_16E51F0(*(a1 + 184));
    v12 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v13 & 0x20000) == 0)
    {
LABEL_42:
      if ((v13 & 0x40000) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }
  }

  else if ((v13 & 0x20000) == 0)
  {
    goto LABEL_42;
  }

  v53 = sub_16E51F0(*(a1 + 192));
  v12 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v13 & 0x40000) != 0)
  {
LABEL_43:
    v18 = sub_13E78E4(*(a1 + 200));
    v12 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_44:
  v12 += ((v13 >> 19) & 2) + ((v13 >> 18) & 2) + ((v13 >> 20) & 2);
  if ((v13 & 0x400000) != 0)
  {
    v19 = *(a1 + 212);
    v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v19 >= 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 12;
    }

    v12 += v21;
  }

LABEL_49:
  v22 = *(a1 + 8);
  if (v22)
  {
    v54 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v55 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v55 < 0)
    {
      v55 = *(v54 + 16);
    }

    v12 += v55;
  }

  *(a1 + 20) = v12;
  return v12;
}