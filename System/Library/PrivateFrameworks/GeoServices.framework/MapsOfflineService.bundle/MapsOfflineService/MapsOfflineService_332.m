char *sub_13BDA28(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_15EE004(v6, v8, a3);
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

      v4 = sub_13DB6A8(v11, v13, a3);
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

uint64_t sub_13BDBD0(uint64_t a1)
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
      v7 = sub_13DB86C(v6);
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
    v8 = sub_15EE118(*(a1 + 48));
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

void sub_13BDCAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13EBDD8((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

      v10 = sub_15EE248(v12);
      *(a1 + 48) = v10;
      v9 = *(a2 + 48);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_2779E08;
    }

    sub_12EB184(v10, v13);
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13BDDC4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if ((*(v3 + 16) & 0x20) != 0)
    {
      result = sub_16E4B4C(*(v3 + 64));
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

uint64_t sub_13BDE30(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
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

    goto LABEL_19;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_15:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_19;
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  result = sub_13D5A9C(*(result + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_13D6034(*(v1 + 48));
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

uint64_t sub_13BDF10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_42;
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a1 + 16) & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_15:
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_5:
    if ((v1 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_23:
    v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_7:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_31:
    v7 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v1 & 0x40) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v1 & 0x40) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_9:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_42;
    }

LABEL_39:
    v9 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
    }

    goto LABEL_42;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v2 + 23) < 0)
  {
    **v2 = 0;
    *(v2 + 8) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_4:
  if ((v1 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *v4 = 0;
    *(v4 + 23) = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_23;
    }
  }

LABEL_6:
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_27:
  v6 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_31;
    }
  }

LABEL_8:
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_35:
  v8 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  *v8 = 0;
  *(v8 + 23) = 0;
  if (v1 < 0)
  {
    goto LABEL_39;
  }

LABEL_42:
  v11 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v11)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_13BE0C8(uint64_t a1)
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

  if (a1 != &off_276E2F8)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_13D65B4(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_13D86B0(v6);
      operator delete();
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      sub_13E27AC(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_13EBCC8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13BE1C4(uint64_t a1)
{
  sub_13BE0C8(a1);

  operator delete();
}

uint64_t sub_13BE1FC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13BA608(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      result = sub_13BDE30(*(v1 + 48));
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    result = sub_13BA608(*(v1 + 56));
    if ((v5 & 4) != 0)
    {
LABEL_9:
      result = sub_13BDF10(*(v1 + 64));
    }
  }

LABEL_10:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 64) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_13BE2BC(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 == 26)
        {
          v20 = v7 - 1;
          while (1)
          {
            v21 = (v20 + 1);
            v37 = v20 + 1;
            v22 = *(a1 + 40);
            if (v22 && (v23 = *(a1 + 32), v23 < *v22))
            {
              *(a1 + 32) = v23 + 1;
              v24 = *&v22[2 * v23 + 2];
            }

            else
            {
              v25 = sub_13E1810(*(a1 + 24));
              v24 = sub_19593CC(a1 + 24, v25);
              v21 = v37;
            }

            v20 = sub_2204E20(a3, v24, v21);
            v37 = v20;
            if (!v20)
            {
              goto LABEL_64;
            }

            if (*a3 <= v20 || *v20 != 26)
            {
              goto LABEL_57;
            }
          }
        }
      }

      else if (v11 == 4)
      {
        if (v8 == 34)
        {
          *(a1 + 16) |= 2u;
          v26 = *(a1 + 56);
          if (!v26)
          {
            v27 = *(a1 + 8);
            v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
            if (v27)
            {
              v28 = *v28;
            }

            v26 = sub_13E1810(v28);
            *(a1 + 56) = v26;
            v7 = v37;
          }

          v15 = sub_2204E20(a3, v26, v7);
          goto LABEL_56;
        }
      }

      else if (v11 == 10 && v8 == 82)
      {
        *(a1 + 16) |= 4u;
        v12 = *(a1 + 64);
        if (!v12)
        {
          v13 = *(a1 + 8);
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
          if (v13)
          {
            v14 = *v14;
          }

          v12 = sub_13E6FF0(v14);
          *(a1 + 64) = v12;
          v7 = v37;
        }

        v15 = sub_22053C0(a3, v12, v7);
        goto LABEL_56;
      }

      goto LABEL_49;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_49;
    }

    v5 |= 8u;
    v18 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_26;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_26:
      v37 = v18;
      *(a1 + 72) = v17 != 0;
      goto LABEL_57;
    }

    v35 = sub_19587DC(v7, v17);
    v37 = v35;
    *(a1 + 72) = v36 != 0;
    if (!v35)
    {
      goto LABEL_64;
    }

LABEL_57:
    if (sub_195ADC0(a3, &v37, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v29 = *(a1 + 48);
    if (!v29)
    {
      v30 = *(a1 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      v29 = sub_13D6D68(v31);
      *(a1 + 48) = v29;
      v7 = v37;
    }

    v15 = sub_2205330(a3, v29, v7);
LABEL_56:
    v37 = v15;
    if (!v15)
    {
      goto LABEL_64;
    }

    goto LABEL_57;
  }

LABEL_49:
  if (v8)
  {
    v32 = (v8 & 7) == 4;
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
      v7 = v37;
    }

    v15 = sub_1952690(v8, v34, v7, a3);
    goto LABEL_56;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_64:
  v37 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v37;
}

char *sub_13BE5F0(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_13D692C(v7, v9, a3);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 72);
    *v4 = 16;
    v4[1] = v10;
    v4 += 2;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
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

      v4 = sub_13D893C(v13, v15, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v16 = *(a1 + 56);
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

    v4 = sub_13D893C(v16, v18, a3);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v19 = *(a1 + 64);
    *v4 = 82;
    v20 = *(v19 + 20);
    v4[1] = v20;
    if (v20 > 0x7F)
    {
      v21 = sub_19575D0(v20, v4 + 1);
    }

    else
    {
      v21 = v4 + 2;
    }

    v4 = sub_13E2C48(v19, v21, a3);
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v25)
  {
    v27 = v25;
    memcpy(v4, v26, v25);
    v4 += v27;
    return v4;
  }

  return sub_1957130(a3, v26, v25, v4);
}

uint64_t sub_13BE898(uint64_t a1)
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
      v7 = sub_13D8AEC(v6);
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
  if ((v8 & 0xF) != 0)
  {
    if (v8)
    {
      v12 = sub_13D6AF8(*(a1 + 48));
      v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_12:
        if ((v8 & 4) == 0)
        {
LABEL_14:
          v2 += (v8 >> 2) & 2;
          goto LABEL_15;
        }

LABEL_13:
        v9 = sub_13E2E10(*(a1 + 64));
        v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
        goto LABEL_14;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    v13 = sub_13D8AEC(*(a1 + 56));
    v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  v10 = *(a1 + 8);
  if (v10)
  {
    v14 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v2 += v15;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_13BE9F4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_13EBE64(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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

        data = sub_13D6D68(v13);
        v3[2].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_276EB38;
      }

      result = sub_13BEBC8(data, v14);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_31;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v15 = v3[2].__r_.__value_.__l.__size_;
    if (!v15)
    {
      v16 = v3->__r_.__value_.__l.__size_;
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_13E1810(v17);
      v3[2].__r_.__value_.__l.__size_ = v15;
    }

    if (*(a2 + 56))
    {
      v18 = *(a2 + 56);
    }

    else
    {
      v18 = &off_276EC28;
    }

    result = sub_13BB240(v15, v18);
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
      v3[3].__r_.__value_.__s.__data_[0] = *(a2 + 72);
      goto LABEL_10;
    }

LABEL_31:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v19 = v3[2].__r_.__value_.__r.__words[2];
    if (!v19)
    {
      v20 = v3->__r_.__value_.__l.__size_;
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_13E6FF0(v21);
      v3[2].__r_.__value_.__r.__words[2] = v19;
    }

    if (*(a2 + 64))
    {
      v22 = *(a2 + 64);
    }

    else
    {
      v22 = &off_276F048;
    }

    result = sub_13BED44(v19, v22);
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

std::string *sub_13BEBC8(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0xF) == 0)
  {
    goto LABEL_29;
  }

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

  v8 = *(a2 + 32);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
  v9 = v3->__r_.__value_.__l.__size_;
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  result = sub_194EA1C(&v3[1].__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

LABEL_13:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
  v11 = v3[1].__r_.__value_.__r.__words[2];
  if (!v11)
  {
    v12 = v3->__r_.__value_.__l.__size_;
    v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    if (v12)
    {
      v13 = *v13;
    }

    v11 = sub_13D6C70(v13);
    v3[1].__r_.__value_.__r.__words[2] = v11;
  }

  if (*(a2 + 40))
  {
    v14 = *(a2 + 40);
  }

  else
  {
    v14 = &off_276EAE0;
  }

  result = sub_13D4848(v11, v14);
  if ((v4 & 8) != 0)
  {
LABEL_21:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    data = v3[2].__r_.__value_.__l.__data_;
    if (!data)
    {
      v16 = v3->__r_.__value_.__l.__size_;
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      sub_13D6CEC(v17);
      v3[2].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 48))
    {
      v18 = *(a2 + 48);
    }

    else
    {
      v18 = &off_276EB08;
    }

    result = sub_13D4FEC(data, v18);
  }

LABEL_29:
  v19 = *(a2 + 8);
  if (v19)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_13BED44(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_35;
  }

  if (*(a2 + 16))
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
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_17;
    }
  }

  else if ((*(a2 + 16) & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 32);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
  v9 = v3->__r_.__value_.__l.__size_;
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  result = sub_194EA1C(&v3[1].__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_17:
  v11 = *(a2 + 40);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
  v12 = v3->__r_.__value_.__l.__size_;
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  result = sub_194EA1C(&v3[1].__r_.__value_.__r.__words[2], (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_20:
  v14 = *(a2 + 48);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
  v15 = v3->__r_.__value_.__l.__size_;
  v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
  if (v15)
  {
    v16 = *v16;
  }

  result = sub_194EA1C(&v3[2], (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_23:
  v17 = *(a2 + 56);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
  v18 = v3->__r_.__value_.__l.__size_;
  v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
  if (v18)
  {
    v19 = *v19;
  }

  result = sub_194EA1C(&v3[2].__r_.__value_.__l.__size_, (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_26:
  v20 = *(a2 + 64);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x20u;
  v21 = v3->__r_.__value_.__l.__size_;
  v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
  if (v21)
  {
    v22 = *v22;
  }

  result = sub_194EA1C(&v3[2].__r_.__value_.__r.__words[2], (v20 & 0xFFFFFFFFFFFFFFFELL), v22);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

LABEL_29:
  v23 = *(a2 + 72);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x40u;
  v24 = v3->__r_.__value_.__l.__size_;
  v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
  if (v24)
  {
    v25 = *v25;
  }

  result = sub_194EA1C(&v3[3], (v23 & 0xFFFFFFFFFFFFFFFELL), v25);
  if (v4 < 0)
  {
LABEL_32:
    v26 = *(a2 + 80);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x80u;
    v27 = v3->__r_.__value_.__l.__size_;
    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v28 = *v28;
    }

    result = sub_194EA1C(&v3[3].__r_.__value_.__l.__size_, (v26 & 0xFFFFFFFFFFFFFFFELL), v28);
  }

LABEL_35:
  v29 = *(a2 + 8);
  if (v29)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_13BEF84(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
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

    goto LABEL_19;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_15:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_19;
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  result = sub_13D43F0(*(result + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_13D4A84(*(v1 + 48));
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

uint64_t sub_13BF064(uint64_t a1)
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

  if (a1 != &off_276E348)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_13D5158(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_13D86B0(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_13EBCC8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13BF140(uint64_t a1)
{
  sub_13BF064(a1);

  operator delete();
}

uint64_t sub_13BF178(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13BA608(v4);
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
      result = sub_13BEF84(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      result = sub_13BA608(*(v1 + 56));
    }
  }

  if ((v5 & 0xC) != 0)
  {
    *(v1 + 64) = 0;
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

char *sub_13BF228(uint64_t a1, char *a2, int32x2_t *a3)
{
  v39 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v39, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v39 + 1;
    v8 = *v39;
    if (*v39 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v39, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v39 + 2;
      }
    }

    v39 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 == 26)
        {
          v20 = v7 - 1;
          while (1)
          {
            v21 = (v20 + 1);
            v39 = v20 + 1;
            v22 = *(a1 + 40);
            if (v22 && (v23 = *(a1 + 32), v23 < *v22))
            {
              *(a1 + 32) = v23 + 1;
              v24 = *&v22[2 * v23 + 2];
            }

            else
            {
              v25 = sub_13E1810(*(a1 + 24));
              v24 = sub_19593CC(a1 + 24, v25);
              v21 = v39;
            }

            v20 = sub_2204E20(a3, v24, v21);
            v39 = v20;
            if (!v20)
            {
              goto LABEL_68;
            }

            if (*a3 <= v20 || *v20 != 26)
            {
              goto LABEL_58;
            }
          }
        }
      }

      else if (v11 == 4)
      {
        if (v8 == 34)
        {
          *(a1 + 16) |= 2u;
          v26 = *(a1 + 56);
          if (!v26)
          {
            v27 = *(a1 + 8);
            v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
            if (v27)
            {
              v28 = *v28;
            }

            v26 = sub_13E1810(v28);
            *(a1 + 56) = v26;
            v7 = v39;
          }

          v29 = sub_2204E20(a3, v26, v7);
          goto LABEL_57;
        }
      }

      else if (v11 == 5 && v8 == 40)
      {
        v12 = v7 + 1;
        v13 = *v7;
        if (v13 < 0)
        {
          v14 = *v12;
          v15 = (v14 << 7) + v13;
          LODWORD(v13) = v15 - 128;
          if (v14 < 0)
          {
            v39 = sub_19587DC(v7, (v15 - 128));
            if (!v39)
            {
              goto LABEL_68;
            }

            LODWORD(v13) = v36;
            goto LABEL_16;
          }

          v12 = v7 + 2;
        }

        v39 = v12;
LABEL_16:
        if (sub_13BF590(v13))
        {
          *(a1 + 16) |= 8u;
          *(a1 + 68) = v13;
        }

        else
        {
          sub_12E85B8();
        }

        goto LABEL_58;
      }

      goto LABEL_50;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_50;
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
      v39 = v18;
      *(a1 + 64) = v17 != 0;
      goto LABEL_58;
    }

    v37 = sub_19587DC(v7, v17);
    v39 = v37;
    *(a1 + 64) = v38 != 0;
    if (!v37)
    {
      goto LABEL_68;
    }

LABEL_58:
    if (sub_195ADC0(a3, &v39, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v30 = *(a1 + 48);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_13D590C(v32);
      *(a1 + 48) = v30;
      v7 = v39;
    }

    v29 = sub_2205450(a3, v30, v7);
LABEL_57:
    v39 = v29;
    if (!v29)
    {
      goto LABEL_68;
    }

    goto LABEL_58;
  }

LABEL_50:
  if (v8)
  {
    v33 = (v8 & 7) == 4;
  }

  else
  {
    v33 = 1;
  }

  if (!v33)
  {
    v34 = *(a1 + 8);
    if (v34)
    {
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v35 = sub_11F1920((a1 + 8));
      v7 = v39;
    }

    v29 = sub_1952690(v8, v35, v7, a3);
    goto LABEL_57;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_68:
  v39 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v39;
}

char *sub_13BF5B8(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_13D54D0(v7, v9, a3);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 64);
    *v4 = 16;
    v4[1] = v10;
    v4 += 2;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
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

      v4 = sub_13D893C(v13, v15, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v16 = *(a1 + 56);
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

    v4 = sub_13D893C(v16, v18, a3);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v20 = *(a1 + 68);
    *v4 = 40;
    v4[1] = v20;
    if (v20 > 0x7F)
    {
      v4[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v4[2] = v20 >> 7;
      v19 = v4 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v4) = v4[2];
        do
        {
          *(v19 - 1) = v4 | 0x80;
          v4 = (v21 >> 7);
          *v19++ = v21 >> 7;
          v22 = v21 >> 14;
          v21 >>= 7;
        }

        while (v22);
      }
    }

    else
    {
      v19 = v4 + 2;
    }
  }

  else
  {
    v19 = v4;
  }

  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v19;
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

  if ((*a3 - v19) >= v26)
  {
    v28 = v26;
    memcpy(v19, v27, v26);
    v19 += v28;
    return v19;
  }

  return sub_1957130(a3, v27, v26, v19);
}

uint64_t sub_13BF884(uint64_t a1)
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
      v7 = sub_13D8AEC(v6);
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
  if ((v8 & 0xF) != 0)
  {
    if (v8)
    {
      v9 = sub_13D569C(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = sub_13D8AEC(*(a1 + 56));
      v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += (v8 >> 1) & 2;
    if ((v8 & 8) != 0)
    {
      v11 = *(a1 + 68);
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v11 >= 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 11;
      }

      v2 += v13;
    }
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

    v2 += v17;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_13BF9D8(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_13EBE64(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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

        data = sub_13D590C(v13);
        v3[2].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_276EAA8;
      }

      result = sub_13BFB6C(data, v14);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_31;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v15 = v3[2].__r_.__value_.__l.__size_;
    if (!v15)
    {
      v16 = v3->__r_.__value_.__l.__size_;
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_13E1810(v17);
      v3[2].__r_.__value_.__l.__size_ = v15;
    }

    if (*(a2 + 56))
    {
      v18 = *(a2 + 56);
    }

    else
    {
      v18 = &off_276EC28;
    }

    result = sub_13BB240(v15, v18);
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

LABEL_31:
    v3[2].__r_.__value_.__s.__data_[16] = *(a2 + 64);
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

std::string *sub_13BFB6C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0xF) == 0)
  {
    goto LABEL_29;
  }

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

  v8 = *(a2 + 32);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
  v9 = v3->__r_.__value_.__l.__size_;
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  result = sub_194EA1C(&v3[1].__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

LABEL_13:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
  v11 = v3[1].__r_.__value_.__r.__words[2];
  if (!v11)
  {
    v12 = v3->__r_.__value_.__l.__size_;
    v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    if (v12)
    {
      v13 = *v13;
    }

    v11 = sub_13D5814(v13);
    v3[1].__r_.__value_.__r.__words[2] = v11;
  }

  if (*(a2 + 40))
  {
    v14 = *(a2 + 40);
  }

  else
  {
    v14 = &off_276EA50;
  }

  result = sub_13D4848(v11, v14);
  if ((v4 & 8) != 0)
  {
LABEL_21:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    data = v3[2].__r_.__value_.__l.__data_;
    if (!data)
    {
      v16 = v3->__r_.__value_.__l.__size_;
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      sub_13D5890(v17);
      v3[2].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 48))
    {
      v18 = *(a2 + 48);
    }

    else
    {
      v18 = &off_276EA78;
    }

    result = sub_13D4FEC(data, v18);
  }

LABEL_29:
  v19 = *(a2 + 8);
  if (v19)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_13BFD00(uint64_t a1)
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

  if (a1 != &off_276E390)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_13BD6B8(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_13BE0C8(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_13BF064(v7);
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

void sub_13BFDF0(uint64_t a1)
{
  sub_13BFD00(a1);

  operator delete();
}

uint64_t sub_13BFE28(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = sub_13BD7B4(*(result + 24));
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = sub_13BE1FC(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = sub_13BF178(*(v1 + 40));
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_13BFEB0(uint64_t a1, char *a2, int32x2_t *a3)
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

          v19 = sub_13C14E4(v21);
          *(a1 + 40) = v19;
          v6 = v26;
        }

        v15 = sub_2205600(a3, v19, v6);
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

          v16 = sub_13C1444(v18);
          *(a1 + 32) = v16;
          v6 = v26;
        }

        v15 = sub_2205570(a3, v16, v6);
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

        v22 = sub_13C13A8(v24);
        *(a1 + 24) = v22;
        v6 = v26;
      }

      v15 = sub_22054E0(a3, v22, v6);
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

char *sub_13C00B0(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_13BDA28(v7, v9, a3);
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

  v4 = sub_13BE5F0(v10, v12, a3);
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

    v4 = sub_13BF5B8(v13, v15, a3);
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

  if ((*a3 - v4) >= v19)
  {
    v21 = v19;
    memcpy(v4, v20, v19);
    v4 += v21;
    return v4;
  }

  return sub_1957130(a3, v20, v19, v4);
}

uint64_t sub_13C029C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (v2)
  {
    v4 = sub_13BDBD0(*(a1 + 24));
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
    v5 = sub_13BE898(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = sub_13BF884(*(a1 + 40));
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

void sub_13C039C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) == 0)
  {
    goto LABEL_30;
  }

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

      v5 = sub_13C13A8(v7);
      *(a1 + 24) = v5;
    }

    if (*(a2 + 24))
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = &off_276E2C0;
    }

    sub_13BDCAC(v5, v8);
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

    v9 = sub_13C1444(v11);
    *(a1 + 32) = v9;
  }

  if (*(a2 + 32))
  {
    v12 = *(a2 + 32);
  }

  else
  {
    v12 = &off_276E2F8;
  }

  sub_13BE9F4(v9, v12);
  if ((v4 & 4) != 0)
  {
LABEL_22:
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

      v13 = sub_13C14E4(v15);
      *(a1 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_276E348;
    }

    sub_13BF9D8(v13, v16);
  }

LABEL_30:
  v17 = *(a2 + 8);
  if (v17)
  {

    sub_1957EF4((a1 + 8), (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13C04F8(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_13BDDC4(*(a1 + 24) + 24);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_13C053C(uint64_t result)
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
      result = sub_13E0798(*(result + 32));
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 32) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

void *sub_13C05D4(void *a1)
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

  sub_13C0658(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_13C0658(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = (a1 + 24);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  result = (a1 + 40);
  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276E3C0)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_13E0BC4(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_13D86B0(v6);
      operator delete();
    }

    result = *(a1 + 64);
    if (result)
    {
      sub_13BFD00(result);

      operator delete();
    }
  }

  return result;
}

void sub_13C0744(void *a1)
{
  sub_13C05D4(a1);

  operator delete();
}

uint64_t sub_13C077C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_17:
    v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_25:
    result = sub_13C053C(*(result + 48));
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_26;
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

LABEL_21:
  v7 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_6:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_26:
  result = sub_13BA608(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
LABEL_8:
    result = sub_13BFE28(*(v1 + 64));
  }

LABEL_9:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_13C08A0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v33 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v33, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v33 + 1);
    v7 = **v33;
    if (**v33 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v33, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v33 + 2);
      }
    }

    *v33 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 3)
    {
      if (v10 == 4)
      {
        if (v7 == 34)
        {
          *(a1 + 16) |= 0x20u;
          v20 = *(a1 + 64);
          if (!v20)
          {
            v21 = *(a1 + 8);
            v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
            if (v21)
            {
              v22 = *v22;
            }

            sub_13C1584(v22);
            v20 = v23;
            *(a1 + 64) = v23;
            v6 = *v33;
          }

          v15 = sub_2205720(a3, v20, v6);
          goto LABEL_55;
        }
      }

      else if (v10 == 6)
      {
        if (v7 == 50)
        {
          *(a1 + 16) |= 2u;
          v27 = *(a1 + 8);
          v17 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
          if (v27)
          {
            v17 = *v17;
          }

          v18 = (a1 + 32);
          goto LABEL_47;
        }
      }

      else if (v10 == 9 && v7 == 74)
      {
        *(a1 + 16) |= 4u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = (a1 + 40);
        goto LABEL_47;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v19 = *(a1 + 8);
        v17 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v17 = *v17;
        }

        v18 = (a1 + 24);
LABEL_47:
        v28 = sub_194DB04(v18, v17);
        v15 = sub_1958890(v28, *v33, a3);
        goto LABEL_55;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 8u;
        v24 = *(a1 + 48);
        if (!v24)
        {
          v25 = *(a1 + 8);
          v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
          if (v25)
          {
            v26 = *v26;
          }

          v24 = sub_13E223C(v26);
          *(a1 + 48) = v24;
          v6 = *v33;
        }

        v15 = sub_2205690(a3, v24, v6);
        goto LABEL_55;
      }
    }

    else if (v10 == 3 && v7 == 26)
    {
      *(a1 + 16) |= 0x10u;
      v12 = *(a1 + 56);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_13E1810(v14);
        *(a1 + 56) = v12;
        v6 = *v33;
      }

      v15 = sub_2204E20(a3, v12, v6);
      goto LABEL_55;
    }

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
        return *v33;
      }

LABEL_61:
      *v33 = 0;
      return *v33;
    }

    v30 = *(a1 + 8);
    if (v30)
    {
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v31 = sub_11F1920((a1 + 8));
      v6 = *v33;
    }

    v15 = sub_1952690(v7, v31, v6, a3);
LABEL_55:
    *v33 = v15;
    if (!v15)
    {
      goto LABEL_61;
    }
  }

  return *v33;
}

char *sub_13C0B6C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
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

  v9 = *(a1 + 48);
  *v4 = 18;
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

  v4 = sub_13E0EE0(v9, v11, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v12 = *(a1 + 56);
  *v4 = 26;
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

  v4 = sub_13D893C(v12, v14, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_23:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v15 = *(a1 + 64);
  *v4 = 34;
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

  v4 = sub_13C00B0(v15, v17, a3);
  if ((v6 & 2) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_29:
  v4 = sub_128AEEC(a3, 6, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) != 0)
  {
LABEL_7:
    v4 = sub_128AEEC(a3, 9, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_8:
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

  if ((*a3 - v4) >= v19)
  {
    v21 = v19;
    memcpy(v4, v20, v19);
    v4 += v21;
    return v4;
  }

  return sub_1957130(a3, v20, v19, v4);
}

uint64_t sub_13C0DC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_17;
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
    v13 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v16 = sub_13E1098(*(a1 + 48));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_23:
  v17 = sub_13D8AEC(*(a1 + 56));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_16:
    v10 = sub_13C029C(*(a1 + 64));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  v11 = *(a1 + 8);
  if (v11)
  {
    v18 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v3 += v19;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_13C0FA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) == 0)
  {
    goto LABEL_42;
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

      goto LABEL_15;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 32);
  *(a1 + 16) |= 2u;
  v9 = *(a1 + 8);
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  sub_194EA1C((a1 + 32), (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_15:
  v11 = *(a2 + 40);
  *(a1 + 16) |= 4u;
  v12 = *(a1 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  sub_194EA1C((a1 + 40), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_18:
  *(a1 + 16) |= 8u;
  v14 = *(a1 + 48);
  if (!v14)
  {
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v14 = sub_13E223C(v16);
    *(a1 + 48) = v14;
  }

  if (*(a2 + 48))
  {
    v17 = *(a2 + 48);
  }

  else
  {
    v17 = &off_276EFA8;
  }

  sub_13C11A4(v14, v17);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_34;
  }

LABEL_26:
  *(a1 + 16) |= 0x10u;
  v18 = *(a1 + 56);
  if (!v18)
  {
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    v18 = sub_13E1810(v20);
    *(a1 + 56) = v18;
  }

  if (*(a2 + 56))
  {
    v21 = *(a2 + 56);
  }

  else
  {
    v21 = &off_276EC28;
  }

  sub_13BB240(v18, v21);
  if ((v4 & 0x20) != 0)
  {
LABEL_34:
    *(a1 + 16) |= 0x20u;
    v22 = *(a1 + 64);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      sub_13C1584(v24);
      *(a1 + 64) = v22;
    }

    if (*(a2 + 64))
    {
      v25 = *(a2 + 64);
    }

    else
    {
      v25 = &off_276E390;
    }

    sub_13C039C(v22, v25);
  }

LABEL_42:
  v26 = *(a2 + 8);
  if (v26)
  {

    sub_1957EF4((a1 + 8), (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_13C11A4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      size = result->__r_.__value_.__l.__size_;
      v8 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v8 = *v8;
      }

      result = sub_194EA1C(&result[1], (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
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
        LODWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
        goto LABEL_6;
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

      v9 = sub_13E21B4(v11);
      v3[1].__r_.__value_.__l.__size_ = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_276EF80;
    }

    result = sub_12B0A14(v9, v12);
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

uint64_t sub_13C12B4(uint64_t a1)
{
  if ((*(a1 + 16) & 0x20) == 0)
  {
    return 1;
  }

  v1 = *(a1 + 64);
  if ((*(v1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_13BDDC4(*(v1 + 24) + 24);
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_13C1304(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26DC2B8;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

void *sub_13C13A8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26DC338;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_13C1444(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26DC3B8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 57) = 0u;
  return result;
}

uint64_t sub_13C14E4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26DC438;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  return result;
}

double sub_13C1584(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26DC4B8;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

void *sub_13C1600(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26DC538;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  return result;
}

uint64_t sub_13C168C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13E7A88(v4);
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

void sub_13C1708(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_13ED008((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
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

uint64_t sub_13C17C4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (*(result + 16))
  {
    result = sub_13C20AC(*(result + 24));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_17;
    }
  }

  else if ((*(result + 16) & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_13C4990(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = sub_13CC5AC(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = sub_13CFA4C(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    result = sub_13CB6C8(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = sub_13C826C(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_21:
  result = sub_13C58F8(*(v1 + 72));
  if (v2 < 0)
  {
LABEL_10:
    result = sub_13BC910(*(v1 + 80));
  }

LABEL_11:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

void sub_13C1898(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_75;
  }

  if (*(a2 + 16))
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

      sub_13D3918(v7);
      *(a1 + 24) = v5;
    }

    if (*(a2 + 24))
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = &off_276E408;
    }

    sub_13C3FB8(v5, v8);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_27;
    }
  }

  else if ((*(a2 + 16) & 2) == 0)
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

    v9 = sub_13D39BC(v11);
    *(a1 + 32) = v9;
  }

  if (*(a2 + 32))
  {
    v12 = *(a2 + 32);
  }

  else
  {
    v12 = &off_276E4E8;
  }

  sub_13C503C(v9, v12);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_27:
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

    sub_13D3EFC(v15);
    *(a1 + 40) = v13;
  }

  if (*(a2 + 40))
  {
    v16 = *(a2 + 40);
  }

  else
  {
    v16 = &off_276E7B0;
  }

  sub_13CE204(v13, v16);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_35:
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

    sub_13D4090(v19);
    *(a1 + 48) = v17;
  }

  if (*(a2 + 48))
  {
    v20 = *(a2 + 48);
  }

  else
  {
    v20 = &off_276E8C8;
  }

  sub_13D14C8(v17, v20);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_43:
  *(a1 + 16) |= 0x10u;
  v21 = *(a1 + 56);
  if (!v21)
  {
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    sub_13D3CF4(v23);
    *(a1 + 56) = v21;
  }

  if (*(a2 + 56))
  {
    v24 = *(a2 + 56);
  }

  else
  {
    v24 = &off_276E648;
  }

  sub_13C9B04(v21, v24);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_59;
  }

LABEL_51:
  *(a1 + 16) |= 0x20u;
  v25 = *(a1 + 64);
  if (!v25)
  {
    v26 = *(a1 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    v25 = sub_13D3E5C(v27);
    *(a1 + 64) = v25;
  }

  if (*(a2 + 64))
  {
    v28 = *(a2 + 64);
  }

  else
  {
    v28 = &off_276E768;
  }

  sub_13CBE20(v25, v28);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_67;
  }

LABEL_59:
  *(a1 + 16) |= 0x40u;
  v29 = *(a1 + 72);
  if (!v29)
  {
    v30 = *(a1 + 8);
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v31 = *v31;
    }

    v29 = sub_13D3AEC(v31);
    *(a1 + 72) = v29;
  }

  if (*(a2 + 72))
  {
    v32 = *(a2 + 72);
  }

  else
  {
    v32 = &off_276E530;
  }

  sub_13C613C(v29, v32);
  if (v4 < 0)
  {
LABEL_67:
    *(a1 + 16) |= 0x80u;
    v33 = *(a1 + 80);
    if (!v33)
    {
      v34 = *(a1 + 8);
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      if (v34)
      {
        v35 = *v35;
      }

      sub_13D80D4(v35);
      *(a1 + 80) = v33;
    }

    if (*(a2 + 80))
    {
      v36 = *(a2 + 80);
    }

    else
    {
      v36 = &off_276EB70;
    }

    sub_13BCB04(v33, v36);
  }

LABEL_75:
  v37 = *(a2 + 8);
  if (v37)
  {

    sub_1957EF4((a1 + 8), (v37 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13C1B80(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!sub_13C47C0(*(a1 + 24)))
    {
      return 0;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    if (!sub_13BDDC4(*(a1 + 32) + 24))
    {
      return 0;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    if (!sub_13CEAF4(*(a1 + 40)))
    {
      return 0;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    if (!sub_13D2128(*(a1 + 48)))
    {
      return 0;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    if (!sub_13CA0AC(*(a1 + 56)))
    {
      return 0;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) != 0)
  {
    if (!sub_13CBFA4(*(a1 + 64)))
    {
      return 0;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) == 0)
  {
    goto LABEL_22;
  }

  if (!sub_13C62F8(*(a1 + 72)))
  {
    return 0;
  }

  v2 = *(a1 + 16);
LABEL_22:
  if ((v2 & 0x80) == 0)
  {
    return 1;
  }

  v5 = *(a1 + 80);
  v6 = *(v5 + 48);
  do
  {
    v3 = v6 < 1;
    if (v6 < 1)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = sub_16E5370(*(*(v5 + 56) + 8 * v6));
    v6 = v7;
  }

  while ((v8 & 1) != 0);
  return v3;
}

uint64_t sub_13C1C80(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_9;
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

LABEL_21:
    v7 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_25;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_17:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_25:
  v8 = *(result + 48) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_29;
    }

LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  **v8 = 0;
  *(v8 + 8) = 0;
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_29:
  v9 = *(result + 56) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v9 + 23) & 0x80000000) == 0)
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    result = sub_16E48B0(*(result + 64));
    goto LABEL_9;
  }

  **v9 = 0;
  *(v9 + 8) = 0;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

void *sub_13C1DEC(void *a1)
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

  sub_13C1E80(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956AFC(a1 + 5);
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_13C1E80(uint64_t a1)
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

  if (*(a1 + 104) != &qword_278E990)
  {
    sub_194E89C((a1 + 104));
  }

  if (*(a1 + 112) != &qword_278E990)
  {
    sub_194E89C((a1 + 112));
  }

  if (*(a1 + 120) != &qword_278E990)
  {
    sub_194E89C((a1 + 120));
  }

  result = (a1 + 128);
  if (*(a1 + 128) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276E408)
  {
    v5 = *(a1 + 136);
    if (v5)
    {
      sub_13D86B0(v5);
      operator delete();
    }

    v6 = *(a1 + 144);
    if (v6)
    {
      sub_13D81B4(v6);
      operator delete();
    }

    if (*(a1 + 152))
    {
      sub_16E4E08();
      operator delete();
    }

    if (*(a1 + 160))
    {
      sub_16E4E08();
      operator delete();
    }

    v7 = *(a1 + 168);
    if (v7)
    {
      sub_16E5B34(v7);
      operator delete();
    }

    v8 = *(a1 + 176);
    if (v8)
    {
      sub_13DB2B8(v8);
      operator delete();
    }

    if (*(a1 + 184))
    {
      sub_16F8B5C();
      operator delete();
    }

    result = *(a1 + 192);
    if (result)
    {
      sub_170E740();

      operator delete();
    }
  }

  return result;
}

void sub_13C2074(void *a1)
{
  sub_13C1DEC(a1);

  operator delete();
}

uint64_t sub_13C20AC(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_12A41D0(a1 + 40);
  v3 = *(a1 + 16);
  if (v3)
  {
    if ((v3 & 1) == 0)
    {
      if ((v3 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      v5 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v5 + 23) < 0)
      {
        **v5 = 0;
        *(v5 + 8) = 0;
        if ((v3 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v5 = 0;
        *(v5 + 23) = 0;
        if ((v3 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

LABEL_5:
      if ((v3 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_23:
      v7 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v3 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
        if ((v3 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

LABEL_7:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_8;
      }

LABEL_31:
      v9 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v9 + 23) < 0)
      {
        **v9 = 0;
        *(v9 + 8) = 0;
        if ((v3 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *v9 = 0;
        *(v9 + 23) = 0;
        if ((v3 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_42;
      }

LABEL_39:
      v11 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v11 + 23) < 0)
      {
        **v11 = 0;
        *(v11 + 8) = 0;
      }

      else
      {
        *v11 = 0;
        *(v11 + 23) = 0;
      }

      goto LABEL_42;
    }

    v4 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    v6 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_27:
    v8 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v10 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_39;
  }

LABEL_42:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_52;
  }

  if ((v3 & 0x100) != 0)
  {
    v14 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v14 + 23) < 0)
    {
      **v14 = 0;
      *(v14 + 8) = 0;
      if ((v3 & 0x200) != 0)
      {
        goto LABEL_66;
      }
    }

    else
    {
      *v14 = 0;
      *(v14 + 23) = 0;
      if ((v3 & 0x200) != 0)
      {
        goto LABEL_66;
      }
    }

LABEL_45:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_67;
  }

  if ((v3 & 0x200) == 0)
  {
    goto LABEL_45;
  }

LABEL_66:
  result = sub_13BA608(*(a1 + 136));
  if ((v3 & 0x400) == 0)
  {
LABEL_46:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = sub_13BA630(*(a1 + 144));
  if ((v3 & 0x800) == 0)
  {
LABEL_47:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = sub_16E4E44(*(a1 + 152));
  if ((v3 & 0x1000) == 0)
  {
LABEL_48:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_70;
  }

LABEL_69:
  result = sub_16E4E44(*(a1 + 160));
  if ((v3 & 0x2000) == 0)
  {
LABEL_49:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_71;
  }

LABEL_70:
  result = sub_16E5B70(*(a1 + 168));
  if ((v3 & 0x4000) == 0)
  {
LABEL_50:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_71:
  result = sub_13C1C80(*(a1 + 176));
  if ((v3 & 0x8000) != 0)
  {
LABEL_51:
    result = sub_16F8B98(*(a1 + 184));
  }

LABEL_52:
  if ((v3 & 0x10000) != 0)
  {
    result = sub_170E77C(*(a1 + 192));
  }

  if ((v3 & 0xFE0000) != 0)
  {
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
  }

  if ((v3 & 0x3000000) != 0)
  {
    *(a1 + 220) = 0;
    *(a1 + 216) = 0;
  }

  v13 = *(a1 + 8);
  v12 = a1 + 8;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

uint64_t sub_13C2380(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v103 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v103, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (2)
  {
    v8 = (*v103 + 1);
    v9 = **v103;
    if (**v103 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(*v103, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = (*v103 + 2);
      }
    }

    *v103 = v8;
    switch(v9 >> 3)
    {
      case 1u:
        if (v9 != 10)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x200u;
        v13 = *(a1 + 136);
        if (!v13)
        {
          v14 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v14 = *v14;
          }

          v13 = sub_13E1810(v14);
          *(a1 + 136) = v13;
          v8 = *v103;
        }

        v15 = sub_2204E20(a3, v13, v8);
        goto LABEL_174;
      case 2u:
        if (v9 != 18)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x400u;
        v51 = *(a1 + 144);
        if (!v51)
        {
          v52 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v52 = *v52;
          }

          v51 = sub_13E1794(v52);
          *(a1 + 144) = v51;
          v8 = *v103;
        }

        v15 = sub_2204EB0(a3, v51, v8);
        goto LABEL_174;
      case 3u:
        if (v9 != 24)
        {
          goto LABEL_197;
        }

        v42 = (v8 + 1);
        v41 = *v8;
        if ((v41 & 0x8000000000000000) == 0)
        {
          goto LABEL_70;
        }

        v43 = *v42;
        v41 = (v43 << 7) + v41 - 128;
        if (v43 < 0)
        {
          *v103 = sub_19587DC(v8, v41);
          if (!*v103)
          {
            goto LABEL_210;
          }
        }

        else
        {
          v42 = (v8 + 2);
LABEL_70:
          *v103 = v42;
        }

        if (v41 > 5)
        {
          sub_1313740();
        }

        else
        {
          *(a1 + 16) |= 0x20000u;
          *(a1 + 200) = v41;
        }

        goto LABEL_175;
      case 4u:
        if (v9 != 34)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 1u;
        v47 = *(a1 + 8);
        v17 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
        if (v47)
        {
          v17 = *v17;
        }

        v18 = (a1 + 64);
        goto LABEL_173;
      case 5u:
        if (v9 != 42)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x800u;
        v33 = *(a1 + 152);
        if (v33)
        {
          goto LABEL_126;
        }

        v34 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v7)
        {
          v34 = *v34;
        }

        v33 = sub_16F5828(v34);
        *(a1 + 152) = v33;
        goto LABEL_125;
      case 6u:
        if (v9 != 48)
        {
          goto LABEL_197;
        }

        v58 = (v8 + 1);
        v59 = *v8;
        if ((v59 & 0x8000000000000000) == 0)
        {
          goto LABEL_109;
        }

        v60 = *v58;
        v61 = (v60 << 7) + v59;
        LODWORD(v59) = v61 - 128;
        if (v60 < 0)
        {
          *v103 = sub_19587DC(v8, (v61 - 128));
          if (!*v103)
          {
            goto LABEL_210;
          }

          LODWORD(v59) = v95;
        }

        else
        {
          v58 = (v8 + 2);
LABEL_109:
          *v103 = v58;
        }

        if (sub_144E2E8(v59))
        {
          *(a1 + 16) |= 0x40000u;
          *(a1 + 204) = v59;
        }

        else
        {
          sub_12E84C8();
        }

        goto LABEL_175;
      case 7u:
        if (v9 != 58)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x1000u;
        v33 = *(a1 + 160);
        if (v33)
        {
          goto LABEL_126;
        }

        v64 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v7)
        {
          v64 = *v64;
        }

        v33 = sub_16F5828(v64);
        *(a1 + 160) = v33;
LABEL_125:
        v8 = *v103;
LABEL_126:
        v15 = sub_21F4D60(a3, v33, v8);
        goto LABEL_174;
      case 8u:
        if (v9 != 66)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x2000u;
        v48 = *(a1 + 168);
        if (!v48)
        {
          v49 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v49 = *v49;
          }

          sub_16F58FC(v49);
          v48 = v50;
          *(a1 + 168) = v50;
          v8 = *v103;
        }

        v15 = sub_21F86E8(a3, v48, v8);
        goto LABEL_174;
      case 9u:
        if (v9 == 72)
        {
          v70 = (v8 - 1);
          while (1)
          {
            *v103 = v70 + 1;
            v71 = *(v70 + 1);
            v72 = (v70 + 2);
            if (v71 < 0)
            {
              v73 = *v72;
              v74 = (v73 << 7) + v71;
              LODWORD(v71) = v74 - 128;
              if (v73 < 0)
              {
                *v103 = sub_19587DC(v70 + 1, (v74 - 128));
                if (!*v103)
                {
                  goto LABEL_210;
                }

                LODWORD(v71) = v77;
                goto LABEL_144;
              }

              v72 = (v70 + 3);
            }

            *v103 = v72;
LABEL_144:
            if (sub_13560C0(v71))
            {
              v75 = *(a1 + 24);
              if (v75 == *(a1 + 28))
              {
                v76 = v75 + 1;
                sub_1958E5C((a1 + 24), v75 + 1);
                *(*(a1 + 32) + 4 * v75) = v71;
              }

              else
              {
                *(*(a1 + 32) + 4 * v75) = v71;
                v76 = v75 + 1;
              }

              *(a1 + 24) = v76;
            }

            else
            {
              sub_1348EF8();
            }

            v70 = *v103;
            if (*a3 <= *v103 || **v103 != 72)
            {
              goto LABEL_175;
            }
          }
        }

        if (v9 == 74)
        {
          *&v104 = a1 + 24;
          *(&v104 + 1) = sub_13560C0;
          v105 = a1 + 8;
          v106 = 9;
          v15 = sub_1216588(a3, v8, &v104);
          goto LABEL_174;
        }

LABEL_197:
        if (v9)
        {
          v101 = (v9 & 7) == 4;
        }

        else
        {
          v101 = 1;
        }

        if (!v101)
        {
          if (*v7)
          {
            v102 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v102 = sub_11F1920((a1 + 8));
            v8 = *v103;
          }

          v15 = sub_1952690(v9, v102, v8, a3);
LABEL_174:
          *v103 = v15;
          if (!v15)
          {
            goto LABEL_210;
          }

LABEL_175:
          if (sub_195ADC0(a3, v103, a3[11].i32[1]))
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
LABEL_210:
          *v103 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v103;
      case 0xAu:
        if (v9 != 82)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x4000u;
        v37 = *(a1 + 176);
        if (!v37)
        {
          v38 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v38 = *v38;
          }

          v37 = sub_13E1B40(v38);
          *(a1 + 176) = v37;
          v8 = *v103;
        }

        v15 = sub_22052A0(a3, v37, v8);
        goto LABEL_174;
      case 0xBu:
        if (v9 != 88)
        {
          goto LABEL_197;
        }

        v66 = (v8 + 1);
        v67 = *v8;
        if ((v67 & 0x8000000000000000) == 0)
        {
          goto LABEL_135;
        }

        v68 = *v66;
        v69 = (v68 << 7) + v67;
        LODWORD(v67) = v69 - 128;
        if (v68 < 0)
        {
          *v103 = sub_19587DC(v8, (v69 - 128));
          if (!*v103)
          {
            goto LABEL_210;
          }

          LODWORD(v67) = v96;
        }

        else
        {
          v66 = (v8 + 2);
LABEL_135:
          *v103 = v66;
        }

        if (sub_16E4BF0(v67))
        {
          *(a1 + 16) |= 0x80000u;
          *(a1 + 208) = v67;
        }

        else
        {
          sub_1313680();
        }

        goto LABEL_175;
      case 0xCu:
        if (v9 != 98)
        {
          goto LABEL_197;
        }

        v25 = (v8 - 1);
        while (1)
        {
          v26 = (v25 + 1);
          *v103 = v25 + 1;
          v27 = *(a1 + 56);
          if (v27 && (v28 = *(a1 + 48), v28 < *v27))
          {
            *(a1 + 48) = v28 + 1;
            v29 = *&v27[2 * v28 + 2];
          }

          else
          {
            v30 = *(a1 + 40);
            if (!v30)
            {
              operator new();
            }

            *v32 = v31;
            v32[1] = sub_195A650;
            *v31 = 0;
            v31[1] = 0;
            v31[2] = 0;
            v29 = sub_19593CC(a1 + 40, v31);
            v26 = *v103;
          }

          v25 = sub_1958890(v29, v26, a3);
          *v103 = v25;
          if (!v25)
          {
            goto LABEL_210;
          }

          if (*a3 <= v25 || *v25 != 98)
          {
            goto LABEL_175;
          }
        }

      case 0xDu:
        if (v9 != 106)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x8000u;
        v35 = *(a1 + 184);
        if (!v35)
        {
          v36 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v36 = *v36;
          }

          v35 = sub_16F9FEC(v36);
          *(a1 + 184) = v35;
          v8 = *v103;
        }

        v15 = sub_2201EE0(a3, v35, v8);
        goto LABEL_174;
      case 0xEu:
        if (v9 != 114)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 2u;
        v63 = *(a1 + 8);
        v17 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
        if (v63)
        {
          v17 = *v17;
        }

        v18 = (a1 + 72);
        goto LABEL_173;
      case 0xFu:
        if (v9 != 120)
        {
          goto LABEL_197;
        }

        v5 |= 0x100000u;
        v23 = (v8 + 1);
        v22 = *v8;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if (v24 < 0)
        {
          v89 = sub_19587DC(v8, v22);
          *v103 = v89;
          *(a1 + 212) = v90 != 0;
          if (!v89)
          {
            goto LABEL_210;
          }
        }

        else
        {
          v23 = (v8 + 2);
LABEL_28:
          *v103 = v23;
          *(a1 + 212) = v22 != 0;
        }

        goto LABEL_175;
      case 0x10u:
        if (v9 != 128)
        {
          goto LABEL_197;
        }

        v5 |= 0x200000u;
        v45 = (v8 + 1);
        v44 = *v8;
        if ((v44 & 0x8000000000000000) == 0)
        {
          goto LABEL_77;
        }

        v46 = *v45;
        v44 = (v46 << 7) + v44 - 128;
        if (v46 < 0)
        {
          v91 = sub_19587DC(v8, v44);
          *v103 = v91;
          *(a1 + 213) = v92 != 0;
          if (!v91)
          {
            goto LABEL_210;
          }
        }

        else
        {
          v45 = (v8 + 2);
LABEL_77:
          *v103 = v45;
          *(a1 + 213) = v44 != 0;
        }

        goto LABEL_175;
      case 0x11u:
        if (v9 != 136)
        {
          goto LABEL_197;
        }

        v5 |= 0x400000u;
        v20 = (v8 + 1);
        v19 = *v8;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          v87 = sub_19587DC(v8, v19);
          *v103 = v87;
          *(a1 + 214) = v88 != 0;
          if (!v87)
          {
            goto LABEL_210;
          }
        }

        else
        {
          v20 = (v8 + 2);
LABEL_23:
          *v103 = v20;
          *(a1 + 214) = v19 != 0;
        }

        goto LABEL_175;
      case 0x12u:
        if (v9 != 144)
        {
          goto LABEL_197;
        }

        v5 |= 0x1000000u;
        v54 = (v8 + 1);
        LODWORD(v53) = *v8;
        if ((v53 & 0x80) == 0)
        {
          goto LABEL_98;
        }

        v55 = *v54;
        v53 = v53 + (v55 << 7) - 128;
        if (v55 < 0)
        {
          v93 = sub_19587DC(v8, v53);
          *v103 = v93;
          *(a1 + 216) = v94;
          if (!v93)
          {
            goto LABEL_210;
          }
        }

        else
        {
          v54 = (v8 + 2);
LABEL_98:
          *v103 = v54;
          *(a1 + 216) = v53;
        }

        goto LABEL_175;
      case 0x13u:
        if (v9 != 154)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 4u;
        v65 = *(a1 + 8);
        v17 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
        if (v65)
        {
          v17 = *v17;
        }

        v18 = (a1 + 80);
        goto LABEL_173;
      case 0x14u:
        if (v9 != 160)
        {
          goto LABEL_197;
        }

        v5 |= 0x800000u;
        v82 = (v8 + 1);
        v81 = *v8;
        if ((v81 & 0x8000000000000000) == 0)
        {
          goto LABEL_164;
        }

        v83 = *v82;
        v81 = (v83 << 7) + v81 - 128;
        if (v83 < 0)
        {
          v99 = sub_19587DC(v8, v81);
          *v103 = v99;
          *(a1 + 215) = v100 != 0;
          if (!v99)
          {
            goto LABEL_210;
          }
        }

        else
        {
          v82 = (v8 + 2);
LABEL_164:
          *v103 = v82;
          *(a1 + 215) = v81 != 0;
        }

        goto LABEL_175;
      case 0x15u:
        if (v9 != 170)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x10000u;
        v56 = *(a1 + 192);
        if (!v56)
        {
          v57 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v57 = *v57;
          }

          v56 = sub_1728C2C(v57);
          *(a1 + 192) = v56;
          v8 = *v103;
        }

        v15 = sub_2204FD0(a3, v56, v8);
        goto LABEL_174;
      case 0x16u:
        if (v9 != 178)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 8u;
        v62 = *(a1 + 8);
        v17 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
        if (v62)
        {
          v17 = *v17;
        }

        v18 = (a1 + 88);
        goto LABEL_173;
      case 0x17u:
        if (v9 != 184)
        {
          goto LABEL_197;
        }

        v5 |= 0x2000000u;
        v79 = (v8 + 1);
        v78 = *v8;
        if ((v78 & 0x8000000000000000) == 0)
        {
          goto LABEL_159;
        }

        v80 = *v79;
        v78 = (v80 << 7) + v78 - 128;
        if (v80 < 0)
        {
          v97 = sub_19587DC(v8, v78);
          *v103 = v97;
          *(a1 + 220) = v98 != 0;
          if (!v97)
          {
            goto LABEL_210;
          }
        }

        else
        {
          v79 = (v8 + 2);
LABEL_159:
          *v103 = v79;
          *(a1 + 220) = v78 != 0;
        }

        goto LABEL_175;
      case 0x18u:
        if (v9 != 194)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x10u;
        v84 = *(a1 + 8);
        v17 = (v84 & 0xFFFFFFFFFFFFFFFCLL);
        if (v84)
        {
          v17 = *v17;
        }

        v18 = (a1 + 96);
        goto LABEL_173;
      case 0x19u:
        if (v9 != 202)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x20u;
        v40 = *(a1 + 8);
        v17 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
        if (v40)
        {
          v17 = *v17;
        }

        v18 = (a1 + 104);
        goto LABEL_173;
      case 0x1Au:
        if (v9 != 210)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x40u;
        v39 = *(a1 + 8);
        v17 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
        if (v39)
        {
          v17 = *v17;
        }

        v18 = (a1 + 112);
        goto LABEL_173;
      case 0x1Bu:
        if (v9 != 218)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x80u;
        v85 = *(a1 + 8);
        v17 = (v85 & 0xFFFFFFFFFFFFFFFCLL);
        if (v85)
        {
          v17 = *v17;
        }

        v18 = (a1 + 120);
        goto LABEL_173;
      case 0x1Cu:
        if (v9 != 226)
        {
          goto LABEL_197;
        }

        *(a1 + 16) |= 0x100u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = (a1 + 128);
LABEL_173:
        v86 = sub_194DB04(v18, v17);
        v15 = sub_1958890(v86, *v103, a3);
        goto LABEL_174;
      default:
        goto LABEL_197;
    }
  }
}

char *sub_13C2F98(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 0x200) == 0)
  {
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 144);
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

    v4 = sub_13D8440(v11, v13, a3);
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  if (*a3 <= a2)
  {
    v4 = sub_225EB68(a3, a2);
  }

  v8 = *(a1 + 136);
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

  v4 = sub_13D893C(v8, v10, a3);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v6 & 0x20000) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_24;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 200);
  *v4 = 24;
  v4[1] = v14;
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v15 = v14 >> 7;
    v4[2] = v14 >> 7;
    v7 = v4 + 3;
    if (v14 >= 0x4000)
    {
      LOBYTE(v4) = v4[2];
      do
      {
        *(v7 - 1) = v4 | 0x80;
        v4 = (v15 >> 7);
        *v7++ = v15 >> 7;
        v16 = v15 >> 14;
        v15 >>= 7;
      }

      while (v16);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_24:
  if ((v6 & 1) == 0)
  {
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_26;
    }

LABEL_29:
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v18 = *(a1 + 152);
    *v7 = 42;
    v19 = *(v18 + 44);
    v7[1] = v19;
    if (v19 > 0x7F)
    {
      v20 = sub_19575D0(v19, v7 + 1);
    }

    else
    {
      v20 = v7 + 2;
    }

    v7 = sub_16E5070(v18, v20, a3);
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_35;
  }

  v7 = sub_128AEEC(a3, 4, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v7);
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_29;
  }

LABEL_26:
  if ((v6 & 0x40000) == 0)
  {
LABEL_27:
    v17 = v7;
    goto LABEL_42;
  }

LABEL_35:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v21 = *(a1 + 204);
  *v7 = 48;
  v7[1] = v21;
  if (v21 > 0x7F)
  {
    v7[1] = v21 | 0x80;
    v22 = v21 >> 7;
    v7[2] = v21 >> 7;
    v17 = v7 + 3;
    if (v21 >= 0x4000)
    {
      LOBYTE(v23) = v7[2];
      do
      {
        *(v17 - 1) = v23 | 0x80;
        v23 = v22 >> 7;
        *v17++ = v22 >> 7;
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
    }
  }

  else
  {
    v17 = v7 + 2;
  }

LABEL_42:
  if ((v6 & 0x1000) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v25 = *(a1 + 160);
    *v17 = 58;
    v26 = *(v25 + 44);
    v17[1] = v26;
    if (v26 > 0x7F)
    {
      v27 = sub_19575D0(v26, v17 + 1);
    }

    else
    {
      v27 = v17 + 2;
    }

    v17 = sub_16E5070(v25, v27, a3);
  }

  if ((v6 & 0x2000) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v28 = *(a1 + 168);
    *v17 = 66;
    v29 = *(v28 + 20);
    v17[1] = v29;
    if (v29 > 0x7F)
    {
      v30 = sub_19575D0(v29, v17 + 1);
    }

    else
    {
      v30 = v17 + 2;
    }

    v17 = sub_16E5FE0(v28, v30, a3);
  }

  v31 = *(a1 + 24);
  if (v31 < 1)
  {
    v34 = v17;
  }

  else
  {
    for (i = 0; i != v31; ++i)
    {
      if (*a3 <= v17)
      {
        v17 = sub_225EB68(a3, v17);
      }

      v33 = *(*(a1 + 32) + 4 * i);
      *v17 = 72;
      v17[1] = v33;
      if (v33 > 0x7F)
      {
        v17[1] = v33 | 0x80;
        v35 = v33 >> 7;
        v17[2] = v33 >> 7;
        v34 = v17 + 3;
        if (v33 >= 0x4000)
        {
          LOBYTE(v17) = v17[2];
          do
          {
            *(v34 - 1) = v17 | 0x80;
            v17 = (v35 >> 7);
            *v34++ = v35 >> 7;
            v36 = v35 >> 14;
            v35 >>= 7;
          }

          while (v36);
        }
      }

      else
      {
        v34 = v17 + 2;
      }

      v17 = v34;
    }
  }

  if ((v6 & 0x4000) != 0)
  {
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v37 = *(a1 + 176);
    *v34 = 82;
    v38 = *(v37 + 20);
    v34[1] = v38;
    if (v38 > 0x7F)
    {
      v39 = sub_19575D0(v38, v34 + 1);
    }

    else
    {
      v39 = v34 + 2;
    }

    v34 = sub_13DB6A8(v37, v39, a3);
  }

  if ((v6 & 0x80000) != 0)
  {
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v41 = *(a1 + 208);
    *v34 = 88;
    v34[1] = v41;
    if (v41 > 0x7F)
    {
      v34[1] = v41 | 0x80;
      v42 = v41 >> 7;
      v34[2] = v41 >> 7;
      v40 = v34 + 3;
      if (v41 >= 0x4000)
      {
        LOBYTE(v34) = v34[2];
        do
        {
          *(v40 - 1) = v34 | 0x80;
          v34 = (v42 >> 7);
          *v40++ = v42 >> 7;
          v43 = v42 >> 14;
          v42 >>= 7;
        }

        while (v43);
      }
    }

    else
    {
      v40 = v34 + 2;
    }
  }

  else
  {
    v40 = v34;
  }

  v44 = *(a1 + 48);
  if (v44 >= 1)
  {
    v45 = 8;
    do
    {
      v46 = *(*(a1 + 56) + v45);
      v47 = *(v46 + 23);
      if (v47 < 0 && (v47 = v46[1], v47 > 127) || *a3 - v40 + 14 < v47)
      {
        v40 = sub_1957480(a3, 12, v46, v40);
      }

      else
      {
        *v40 = 98;
        v40[1] = v47;
        if (*(v46 + 23) < 0)
        {
          v46 = *v46;
        }

        v48 = v40 + 2;
        memcpy(v40 + 2, v46, v47);
        v40 = &v48[v47];
      }

      v45 += 8;
      --v44;
    }

    while (v44);
  }

  if ((v6 & 0x8000) != 0)
  {
    if (*a3 <= v40)
    {
      v40 = sub_225EB68(a3, v40);
    }

    v50 = *(a1 + 184);
    *v40 = 106;
    v51 = *(v50 + 20);
    v40[1] = v51;
    if (v51 > 0x7F)
    {
      v52 = sub_19575D0(v51, v40 + 1);
    }

    else
    {
      v52 = v40 + 2;
    }

    v40 = sub_16F8E64(v50, v52, a3);
    if ((v6 & 2) == 0)
    {
LABEL_97:
      if ((v6 & 0x100000) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_109;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_97;
  }

  v40 = sub_128AEEC(a3, 14, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v40);
  if ((v6 & 0x100000) == 0)
  {
LABEL_98:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_112;
  }

LABEL_109:
  if (*a3 <= v40)
  {
    v40 = sub_225EB68(a3, v40);
  }

  v53 = *(a1 + 212);
  *v40 = 120;
  v40[1] = v53;
  v40 += 2;
  if ((v6 & 0x200000) == 0)
  {
LABEL_99:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_100;
    }

LABEL_115:
    if (*a3 <= v40)
    {
      v40 = sub_225EB68(a3, v40);
    }

    v55 = *(a1 + 214);
    *v40 = 392;
    v40[2] = v55;
    v40 += 3;
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_118;
  }

LABEL_112:
  if (*a3 <= v40)
  {
    v40 = sub_225EB68(a3, v40);
  }

  v54 = *(a1 + 213);
  *v40 = 384;
  v40[2] = v54;
  v40 += 3;
  if ((v6 & 0x400000) != 0)
  {
    goto LABEL_115;
  }

LABEL_100:
  if ((v6 & 0x1000000) == 0)
  {
LABEL_101:
    v49 = v40;
    goto LABEL_125;
  }

LABEL_118:
  if (*a3 <= v40)
  {
    v40 = sub_225EB68(a3, v40);
  }

  v56 = *(a1 + 216);
  *v40 = 400;
  v40[2] = v56;
  if (v56 > 0x7F)
  {
    v40[2] = v56 | 0x80;
    v57 = v56 >> 7;
    v40[3] = v56 >> 7;
    v49 = v40 + 4;
    if (v56 >= 0x4000)
    {
      LOBYTE(v58) = v40[3];
      do
      {
        *(v49 - 1) = v58 | 0x80;
        v58 = v57 >> 7;
        *v49++ = v57 >> 7;
        v59 = v57 >> 14;
        v57 >>= 7;
      }

      while (v59);
    }
  }

  else
  {
    v49 = v40 + 3;
  }

LABEL_125:
  if ((v6 & 4) != 0)
  {
    v49 = sub_128AEEC(a3, 19, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v49);
    if ((v6 & 0x800000) == 0)
    {
LABEL_127:
      if ((v6 & 0x10000) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_142;
    }
  }

  else if ((v6 & 0x800000) == 0)
  {
    goto LABEL_127;
  }

  if (*a3 <= v49)
  {
    v49 = sub_225EB68(a3, v49);
  }

  v62 = *(a1 + 215);
  *v49 = 416;
  v49[2] = v62;
  v49 += 3;
  if ((v6 & 0x10000) == 0)
  {
LABEL_128:
    if ((v6 & 8) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_148;
  }

LABEL_142:
  if (*a3 <= v49)
  {
    v49 = sub_225EB68(a3, v49);
  }

  v63 = *(a1 + 192);
  *v49 = 426;
  v64 = *(v63 + 56);
  v49[2] = v64;
  if (v64 > 0x7F)
  {
    v65 = sub_19575D0(v64, v49 + 2);
  }

  else
  {
    v65 = v49 + 3;
  }

  v49 = sub_170EAF8(v63, v65, a3);
  if ((v6 & 8) == 0)
  {
LABEL_129:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_149;
  }

LABEL_148:
  v49 = sub_128AEEC(a3, 22, *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL, v49);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_130:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_152;
  }

LABEL_149:
  if (*a3 <= v49)
  {
    v49 = sub_225EB68(a3, v49);
  }

  v66 = *(a1 + 220);
  *v49 = 440;
  v49[2] = v66;
  v49 += 3;
  if ((v6 & 0x10) == 0)
  {
LABEL_131:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_153;
  }

LABEL_152:
  v49 = sub_128AEEC(a3, 24, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, v49);
  if ((v6 & 0x20) == 0)
  {
LABEL_132:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_154;
  }

LABEL_153:
  v49 = sub_128AEEC(a3, 25, *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL, v49);
  if ((v6 & 0x40) == 0)
  {
LABEL_133:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_155;
  }

LABEL_154:
  v49 = sub_128AEEC(a3, 26, *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL, v49);
  if ((v6 & 0x80) == 0)
  {
LABEL_134:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_135;
  }

LABEL_155:
  v49 = sub_128AEEC(a3, 27, *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL, v49);
  if ((v6 & 0x100) != 0)
  {
LABEL_135:
    v49 = sub_128AEEC(a3, 28, *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL, v49);
  }

LABEL_136:
  v60 = *(a1 + 8);
  if ((v60 & 1) == 0)
  {
    return v49;
  }

  v67 = v60 & 0xFFFFFFFFFFFFFFFCLL;
  v68 = *(v67 + 31);
  if (v68 < 0)
  {
    v69 = *(v67 + 8);
    v68 = *(v67 + 16);
  }

  else
  {
    v69 = (v67 + 8);
  }

  if (*a3 - v49 >= v68)
  {
    v70 = v68;
    memcpy(v49, v69, v68);
    v49 += v70;
    return v49;
  }

  return sub_1957130(a3, v69, v68, v49);
}

uint64_t sub_13C3950(uint64_t a1)
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

  v7 = v4 + v2;
  v8 = *(a1 + 48);
  v9 = v7 + v8;
  if (v8 >= 1)
  {
    v10 = (*(a1 + 56) + 8);
    do
    {
      v11 = *v10++;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v9 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      --v8;
    }

    while (v8);
  }

  v14 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

  if (v14)
  {
    v28 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(v28 + 23);
    v30 = *(v28 + 8);
    if ((v29 & 0x80u) == 0)
    {
      v30 = v29;
    }

    v9 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v14 & 2) == 0)
    {
LABEL_17:
      if ((v14 & 4) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_68;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_17;
  }

  v31 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v32 = *(v31 + 23);
  v33 = *(v31 + 8);
  if ((v32 & 0x80u) == 0)
  {
    v33 = v32;
  }

  v9 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v14 & 4) == 0)
  {
LABEL_18:
    if ((v14 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_71;
  }

LABEL_68:
  v34 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(v34 + 23);
  v36 = *(v34 + 8);
  if ((v35 & 0x80u) == 0)
  {
    v36 = v35;
  }

  v9 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v14 & 8) == 0)
  {
LABEL_19:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_74;
  }

LABEL_71:
  v37 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  v38 = *(v37 + 23);
  v39 = *(v37 + 8);
  if ((v38 & 0x80u) == 0)
  {
    v39 = v38;
  }

  v9 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v14 & 0x10) == 0)
  {
LABEL_20:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_21;
    }

LABEL_77:
    v43 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
    v44 = *(v43 + 23);
    v45 = *(v43 + 8);
    if ((v44 & 0x80u) == 0)
    {
      v45 = v44;
    }

    v9 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v14 & 0x40) == 0)
    {
LABEL_22:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    goto LABEL_80;
  }

LABEL_74:
  v40 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  v41 = *(v40 + 23);
  v42 = *(v40 + 8);
  if ((v41 & 0x80u) == 0)
  {
    v42 = v41;
  }

  v9 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v14 & 0x20) != 0)
  {
    goto LABEL_77;
  }

LABEL_21:
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_22;
  }

LABEL_80:
  v46 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
  v47 = *(v46 + 23);
  v48 = *(v46 + 8);
  if ((v47 & 0x80u) == 0)
  {
    v48 = v47;
  }

  v9 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v14 & 0x80) != 0)
  {
LABEL_23:
    v15 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v9 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_26:
  if ((v14 & 0xFF00) == 0)
  {
    goto LABEL_36;
  }

  if ((v14 & 0x100) != 0)
  {
    v49 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
    v50 = *(v49 + 23);
    v51 = *(v49 + 8);
    if ((v50 & 0x80u) == 0)
    {
      v51 = v50;
    }

    v9 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v14 & 0x200) == 0)
    {
LABEL_29:
      if ((v14 & 0x400) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_88;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_29;
  }

  v52 = sub_13D8AEC(*(a1 + 136));
  v9 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v14 & 0x400) == 0)
  {
LABEL_30:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_89;
  }

LABEL_88:
  v53 = sub_13D85F0(*(a1 + 144));
  v9 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v14 & 0x800) == 0)
  {
LABEL_31:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_90;
  }

LABEL_89:
  v54 = sub_16E51F0(*(a1 + 152));
  v9 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v14 & 0x1000) == 0)
  {
LABEL_32:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_91;
  }

LABEL_90:
  v55 = sub_16E51F0(*(a1 + 160));
  v9 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v14 & 0x2000) == 0)
  {
LABEL_33:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_92;
  }

LABEL_91:
  v56 = sub_16E62F4(*(a1 + 168));
  v9 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v14 & 0x4000) == 0)
  {
LABEL_34:
    if ((v14 & 0x8000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_92:
  v57 = sub_13DB86C(*(a1 + 176));
  v9 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v14 & 0x8000) != 0)
  {
LABEL_35:
    v18 = sub_16F903C(*(a1 + 184));
    v9 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_36:
  if ((v14 & 0xFF0000) == 0)
  {
    goto LABEL_52;
  }

  if ((v14 & 0x10000) != 0)
  {
    v58 = sub_170ECEC(*(a1 + 192));
    v9 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v14 & 0x20000) == 0)
    {
LABEL_39:
      if ((v14 & 0x40000) == 0)
      {
        goto LABEL_40;
      }

LABEL_99:
      v62 = *(a1 + 204);
      v63 = ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v62 >= 0)
      {
        v64 = v63;
      }

      else
      {
        v64 = 11;
      }

      v9 += v64;
      if ((v14 & 0x80000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }
  }

  else if ((v14 & 0x20000) == 0)
  {
    goto LABEL_39;
  }

  v59 = *(a1 + 200);
  v60 = ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v59 >= 0)
  {
    v61 = v60;
  }

  else
  {
    v61 = 11;
  }

  v9 += v61;
  if ((v14 & 0x40000) != 0)
  {
    goto LABEL_99;
  }

LABEL_40:
  if ((v14 & 0x80000) != 0)
  {
LABEL_41:
    v19 = *(a1 + 208);
    v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v19 >= 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 11;
    }

    v9 += v21;
  }

LABEL_45:
  v22 = v9 + ((v14 >> 19) & 2);
  if ((v14 & 0x200000) != 0)
  {
    v22 += 3;
  }

  if ((v14 & 0x400000) != 0)
  {
    v22 += 3;
  }

  if ((v14 & 0x800000) != 0)
  {
    v9 = v22 + 3;
  }

  else
  {
    v9 = v22;
  }

LABEL_52:
  if ((v14 & 0x3000000) != 0)
  {
    if ((v14 & 0x1000000) != 0)
    {
      v23 = *(a1 + 216);
      v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v23 >= 0)
      {
        v25 = v24;
      }

      else
      {
        v25 = 12;
      }

      v9 += v25;
    }

    if ((v14 & 0x2000000) != 0)
    {
      v9 += 3;
    }
  }

  v26 = *(a1 + 8);
  if (v26)
  {
    v65 = v26 & 0xFFFFFFFFFFFFFFFCLL;
    v66 = *((v26 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v66 < 0)
    {
      v66 = *(v65 + 16);
    }

    v9 += v66;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_13C3FB8(uint64_t a1, uint64_t a2)
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

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 56);
    v10 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_1201B48(a1 + 40, v10, (v9 + 8), v8, **(a1 + 56) - *(a1 + 48));
    v11 = *(a1 + 48) + v8;
    *(a1 + 48) = v11;
    v12 = *(a1 + 56);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 16);
  if (!v13)
  {
    goto LABEL_40;
  }

  if (v13)
  {
    v14 = *(a2 + 64);
    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 64), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v13 & 2) == 0)
    {
LABEL_9:
      if ((v13 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_9;
  }

  v17 = *(a2 + 72);
  *(a1 + 16) |= 2u;
  v18 = *(a1 + 8);
  v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
  if (v18)
  {
    v19 = *v19;
  }

  sub_194EA1C((a1 + 72), (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
  if ((v13 & 4) == 0)
  {
LABEL_10:
    if ((v13 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_22:
  v20 = *(a2 + 80);
  *(a1 + 16) |= 4u;
  v21 = *(a1 + 8);
  v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
  if (v21)
  {
    v22 = *v22;
  }

  sub_194EA1C((a1 + 80), (v20 & 0xFFFFFFFFFFFFFFFELL), v22);
  if ((v13 & 8) == 0)
  {
LABEL_11:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_25:
  v23 = *(a2 + 88);
  *(a1 + 16) |= 8u;
  v24 = *(a1 + 8);
  v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
  if (v24)
  {
    v25 = *v25;
  }

  sub_194EA1C((a1 + 88), (v23 & 0xFFFFFFFFFFFFFFFELL), v25);
  if ((v13 & 0x10) == 0)
  {
LABEL_12:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_31:
    v29 = *(a2 + 104);
    *(a1 + 16) |= 0x20u;
    v30 = *(a1 + 8);
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v31 = *v31;
    }

    sub_194EA1C((a1 + 104), (v29 & 0xFFFFFFFFFFFFFFFELL), v31);
    if ((v13 & 0x40) == 0)
    {
LABEL_14:
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    goto LABEL_34;
  }

LABEL_28:
  v26 = *(a2 + 96);
  *(a1 + 16) |= 0x10u;
  v27 = *(a1 + 8);
  v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
  if (v27)
  {
    v28 = *v28;
  }

  sub_194EA1C((a1 + 96), (v26 & 0xFFFFFFFFFFFFFFFELL), v28);
  if ((v13 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_13:
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_34:
  v32 = *(a2 + 112);
  *(a1 + 16) |= 0x40u;
  v33 = *(a1 + 8);
  v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
  if (v33)
  {
    v34 = *v34;
  }

  sub_194EA1C((a1 + 112), (v32 & 0xFFFFFFFFFFFFFFFELL), v34);
  if ((v13 & 0x80) != 0)
  {
LABEL_37:
    v35 = *(a2 + 120);
    *(a1 + 16) |= 0x80u;
    v36 = *(a1 + 8);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    sub_194EA1C((a1 + 120), (v35 & 0xFFFFFFFFFFFFFFFELL), v37);
  }

LABEL_40:
  if ((v13 & 0xFF00) == 0)
  {
    goto LABEL_110;
  }

  if ((v13 & 0x100) != 0)
  {
    v38 = *(a2 + 128);
    *(a1 + 16) |= 0x100u;
    v39 = *(a1 + 8);
    v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
    if (v39)
    {
      v40 = *v40;
    }

    sub_194EA1C((a1 + 128), (v38 & 0xFFFFFFFFFFFFFFFELL), v40);
    if ((v13 & 0x200) == 0)
    {
LABEL_43:
      if ((v13 & 0x400) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_56;
    }
  }

  else if ((v13 & 0x200) == 0)
  {
    goto LABEL_43;
  }

  *(a1 + 16) |= 0x200u;
  v41 = *(a1 + 136);
  if (!v41)
  {
    v42 = *(a1 + 8);
    v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
    if (v42)
    {
      v43 = *v43;
    }

    v41 = sub_13E1810(v43);
    *(a1 + 136) = v41;
  }

  if (*(a2 + 136))
  {
    v44 = *(a2 + 136);
  }

  else
  {
    v44 = &off_276EC28;
  }

  sub_13BB240(v41, v44);
  if ((v13 & 0x400) != 0)
  {
LABEL_56:
    *(a1 + 16) |= 0x400u;
    v45 = *(a1 + 144);
    if (!v45)
    {
      v46 = *(a1 + 8);
      v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
      if (v46)
      {
        v47 = *v47;
      }

      v45 = sub_13E1794(v47);
      *(a1 + 144) = v45;
    }

    if (*(a2 + 144))
    {
      v48 = *(a2 + 144);
    }

    else
    {
      v48 = &off_276EC00;
    }

    sub_13BB240(v45, v48);
  }

LABEL_64:
  if ((v13 & 0x800) != 0)
  {
    *(a1 + 16) |= 0x800u;
    v49 = *(a1 + 152);
    if (!v49)
    {
      v50 = *(a1 + 8);
      v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
      if (v50)
      {
        v51 = *v51;
      }

      v49 = sub_16F5828(v51);
      *(a1 + 152) = v49;
    }

    if (*(a2 + 152))
    {
      v52 = *(a2 + 152);
    }

    else
    {
      v52 = &off_277E5E8;
    }

    sub_16E527C(v49, v52);
    if ((v13 & 0x1000) == 0)
    {
LABEL_66:
      if ((v13 & 0x2000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_86;
    }
  }

  else if ((v13 & 0x1000) == 0)
  {
    goto LABEL_66;
  }

  *(a1 + 16) |= 0x1000u;
  v53 = *(a1 + 160);
  if (!v53)
  {
    v54 = *(a1 + 8);
    v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
    if (v54)
    {
      v55 = *v55;
    }

    v53 = sub_16F5828(v55);
    *(a1 + 160) = v53;
  }

  if (*(a2 + 160))
  {
    v56 = *(a2 + 160);
  }

  else
  {
    v56 = &off_277E5E8;
  }

  sub_16E527C(v53, v56);
  if ((v13 & 0x2000) == 0)
  {
LABEL_67:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_94;
  }

LABEL_86:
  *(a1 + 16) |= 0x2000u;
  v57 = *(a1 + 168);
  if (!v57)
  {
    v58 = *(a1 + 8);
    v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
    if (v58)
    {
      v59 = *v59;
    }

    sub_16F58FC(v59);
    *(a1 + 168) = v57;
  }

  if (*(a2 + 168))
  {
    v60 = *(a2 + 168);
  }

  else
  {
    v60 = &off_277E650;
  }

  sub_16E645C(v57, v60);
  if ((v13 & 0x4000) == 0)
  {
LABEL_68:
    if ((v13 & 0x8000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_102;
  }

LABEL_94:
  *(a1 + 16) |= 0x4000u;
  v61 = *(a1 + 176);
  if (!v61)
  {
    v62 = *(a1 + 8);
    v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
    if (v62)
    {
      v63 = *v63;
    }

    v61 = sub_13E1B40(v63);
    *(a1 + 176) = v61;
  }

  if (*(a2 + 176))
  {
    v64 = *(a2 + 176);
  }

  else
  {
    v64 = &off_276ED70;
  }

  sub_13C45EC(v61, v64);
  if ((v13 & 0x8000) != 0)
  {
LABEL_102:
    *(a1 + 16) |= 0x8000u;
    v65 = *(a1 + 184);
    if (!v65)
    {
      v66 = *(a1 + 8);
      v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL);
      if (v66)
      {
        v67 = *v67;
      }

      v65 = sub_16F9FEC(v67);
      *(a1 + 184) = v65;
    }

    if (*(a2 + 184))
    {
      v68 = *(a2 + 184);
    }

    else
    {
      v68 = &off_277ED18;
    }

    sub_1645A7C(v65, v68);
  }

LABEL_110:
  if ((v13 & 0xFF0000) == 0)
  {
    goto LABEL_121;
  }

  if ((v13 & 0x10000) != 0)
  {
    *(a1 + 16) |= 0x10000u;
    v70 = *(a1 + 192);
    if (!v70)
    {
      v71 = *(a1 + 8);
      v72 = (v71 & 0xFFFFFFFFFFFFFFFCLL);
      if (v71)
      {
        v72 = *v72;
      }

      v70 = sub_1728C2C(v72);
      *(a1 + 192) = v70;
    }

    if (*(a2 + 192))
    {
      v73 = *(a2 + 192);
    }

    else
    {
      v73 = &off_277F500;
    }

    sub_170EDCC(v70, v73);
    if ((v13 & 0x20000) == 0)
    {
LABEL_113:
      if ((v13 & 0x40000) == 0)
      {
        goto LABEL_114;
      }

      goto LABEL_140;
    }
  }

  else if ((v13 & 0x20000) == 0)
  {
    goto LABEL_113;
  }

  *(a1 + 200) = *(a2 + 200);
  if ((v13 & 0x40000) == 0)
  {
LABEL_114:
    if ((v13 & 0x80000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_141;
  }

LABEL_140:
  *(a1 + 204) = *(a2 + 204);
  if ((v13 & 0x80000) == 0)
  {
LABEL_115:
    if ((v13 & 0x100000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_142;
  }

LABEL_141:
  *(a1 + 208) = *(a2 + 208);
  if ((v13 & 0x100000) == 0)
  {
LABEL_116:
    if ((v13 & 0x200000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_143;
  }

LABEL_142:
  *(a1 + 212) = *(a2 + 212);
  if ((v13 & 0x200000) == 0)
  {
LABEL_117:
    if ((v13 & 0x400000) == 0)
    {
      goto LABEL_118;
    }

LABEL_144:
    *(a1 + 214) = *(a2 + 214);
    if ((v13 & 0x800000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_119;
  }

LABEL_143:
  *(a1 + 213) = *(a2 + 213);
  if ((v13 & 0x400000) != 0)
  {
    goto LABEL_144;
  }

LABEL_118:
  if ((v13 & 0x800000) != 0)
  {
LABEL_119:
    *(a1 + 215) = *(a2 + 215);
  }

LABEL_120:
  *(a1 + 16) |= v13;
LABEL_121:
  if ((v13 & 0x3000000) != 0)
  {
    if ((v13 & 0x1000000) != 0)
    {
      *(a1 + 216) = *(a2 + 216);
    }

    if ((v13 & 0x2000000) != 0)
    {
      *(a1 + 220) = *(a2 + 220);
    }

    *(a1 + 16) |= v13;
  }

  v69 = *(a2 + 8);
  if (v69)
  {

    sub_1957EF4((a1 + 8), (v69 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_13C45EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) == 0)
  {
    goto LABEL_32;
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

      goto LABEL_15;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 32);
  *(a1 + 16) |= 2u;
  v9 = *(a1 + 8);
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  sub_194EA1C((a1 + 32), (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_15:
  v11 = *(a2 + 40);
  *(a1 + 16) |= 4u;
  v12 = *(a1 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  sub_194EA1C((a1 + 40), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_18:
  v14 = *(a2 + 48);
  *(a1 + 16) |= 8u;
  v15 = *(a1 + 8);
  v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
  if (v15)
  {
    v16 = *v16;
  }

  sub_194EA1C((a1 + 48), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_24;
  }

LABEL_21:
  v17 = *(a2 + 56);
  *(a1 + 16) |= 0x10u;
  v18 = *(a1 + 8);
  v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
  if (v18)
  {
    v19 = *v19;
  }

  sub_194EA1C((a1 + 56), (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
  if ((v4 & 0x20) != 0)
  {
LABEL_24:
    *(a1 + 16) |= 0x20u;
    v20 = *(a1 + 64);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_16F5BD8(v22);
      *(a1 + 64) = v20;
    }

    if (*(a2 + 64))
    {
      v23 = *(a2 + 64);
    }

    else
    {
      v23 = &off_277E738;
    }

    sub_16E4964(v20, v23);
  }

LABEL_32:
  v24 = *(a2 + 8);
  if (v24)
  {

    sub_1957EF4((a1 + 8), (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13C47C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x800) != 0)
  {
    result = sub_16E5370(*(a1 + 152));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000) != 0)
  {
    result = sub_16E5370(*(a1 + 160));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x2000) != 0)
  {
    result = sub_16E6614(*(a1 + 168));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x4000) == 0)
  {
    return 1;
  }

  v4 = *(a1 + 176);
  if ((*(v4 + 16) & 0x20) == 0)
  {
    return 1;
  }

  result = sub_16E4B4C(*(v4 + 64));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_13C4840(uint64_t a1)
{
  if ((*(a1 + 16) & 0x20) == 0)
  {
    return 1;
  }

  result = sub_16E4B4C(*(a1 + 64));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_13C4880(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C((a1 + 64));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_11:
  sub_13EBC44((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13C4958(uint64_t a1)
{
  sub_13C4880(a1);

  operator delete();
}

uint64_t sub_13C4990(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13C1C80(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
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
      v7 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
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

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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
    v8 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
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
  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

uint64_t sub_13C4AB4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
          v19 = v6 - 1;
          while (1)
          {
            v20 = v19 + 1;
            *v29 = v19 + 1;
            v21 = *(a1 + 40);
            if (v21 && (v22 = *(a1 + 32), v22 < *v21))
            {
              *(a1 + 32) = v22 + 1;
              v23 = *&v21[2 * v22 + 2];
            }

            else
            {
              v24 = sub_13E1B40(*(a1 + 24));
              v23 = sub_19593CC(a1 + 24, v24);
              v20 = *v29;
            }

            v19 = sub_22052A0(a3, v23, v20);
            *v29 = v19;
            if (!v19)
            {
              break;
            }

            if (*a3 <= v19 || *v19 != 26)
            {
              goto LABEL_46;
            }
          }

LABEL_51:
          *v29 = 0;
          return *v29;
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
        *(a1 + 16) |= 4u;
        v15 = *(a1 + 8);
        v13 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v13 = *v13;
        }

        v14 = (a1 + 64);
        goto LABEL_27;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v16 = *(a1 + 8);
        v13 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v13 = *v13;
        }

        v14 = (a1 + 48);
        goto LABEL_27;
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 2u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v14 = (a1 + 56);
LABEL_27:
      v17 = sub_194DB04(v14, v13);
      v18 = sub_1958890(v17, *v29, a3);
      goto LABEL_45;
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

      goto LABEL_51;
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

    v18 = sub_1952690(v7, v27, v6, a3);
LABEL_45:
    *v29 = v18;
    if (!v18)
    {
      goto LABEL_51;
    }

LABEL_46:
    ;
  }

  return *v29;
}

char *sub_13C4D0C(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 2, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

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
      *v4 = 26;
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

      v4 = sub_13DB6A8(v9, v11, a3);
    }
  }

  if ((v6 & 4) != 0)
  {
    v4 = sub_128AEEC(a3, 4, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v15)
  {
    v17 = v15;
    memcpy(v4, v16, v15);
    v4 += v17;
    return v4;
  }

  return sub_1957130(a3, v16, v15, v4);
}

uint64_t sub_13C4EB0(uint64_t a1)
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
      v7 = sub_13DB86C(v6);
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
    goto LABEL_16;
  }

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
      if ((v8 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v17 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v17 + 23);
  v19 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v19 = v18;
  }

  v2 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) != 0)
  {
LABEL_13:
    v9 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
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

void sub_13C503C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13EBDD8((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
      v10 = *(a2 + 48);
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      sub_194EA1C((a1 + 48), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    v13 = *(a2 + 56);
    *(a1 + 16) |= 2u;
    v14 = *(a1 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    sub_194EA1C((a1 + 56), (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
    if ((v9 & 4) != 0)
    {
LABEL_15:
      v16 = *(a2 + 64);
      *(a1 + 16) |= 4u;
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_194EA1C((a1 + 64), (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
    }
  }

LABEL_18:
  v19 = *(a2 + 8);
  if (v19)
  {

    sub_1957EF4((a1 + 8), (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13C51C4(uint64_t a1)
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

void sub_13C527C(uint64_t a1)
{
  sub_13C51C4(a1);

  operator delete();
}

uint64_t sub_13C52B4(uint64_t a1)
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
  *(result + 32) = 0;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_13C5334(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v27 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v27, i) & 1) == 0; i = a3[11].i32[1])
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
    if (v7 >> 3 == 3)
    {
      if (v7 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v19 = *(a1 + 8);
      v17 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v17 = *v17;
      }

      v18 = (a1 + 32);
    }

    else
    {
      if (v10 != 2)
      {
        if (v10 == 1 && v7 == 8)
        {
          v21 = v6 + 1;
          v22 = *v6;
          if ((v22 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v23 = *v21;
          v24 = (v23 << 7) + v22;
          LODWORD(v22) = v24 - 128;
          if (v23 < 0)
          {
            *v27 = sub_19587DC(v6, (v24 - 128));
            if (!*v27)
            {
              goto LABEL_45;
            }

            LODWORD(v22) = v25;
          }

          else
          {
            v21 = v6 + 2;
LABEL_34:
            *v27 = v21;
          }

          if (sub_173CCA4(v22))
          {
            *(a1 + 16) |= 4u;
            *(a1 + 40) = v22;
          }

          else
          {
            sub_12E8450();
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
            return *v27;
          }

LABEL_45:
          *v27 = 0;
          return *v27;
        }

        v13 = *(a1 + 8);
        if (v13)
        {
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v14 = sub_11F1920((a1 + 8));
          v6 = *v27;
        }

        v15 = sub_1952690(v7, v14, v6, a3);
        goto LABEL_29;
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

      v18 = (a1 + 24);
    }

    v20 = sub_194DB04(v18, v17);
    v15 = sub_1958890(v20, *v27, a3);
LABEL_29:
    *v27 = v15;
    if (!v15)
    {
      goto LABEL_45;
    }
  }

  return *v27;
}

char *sub_13C5540(uint64_t a1, char *__dst, void *a3)
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
    v6 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  if ((v5 & 2) != 0)
  {
    v6 = sub_128AEEC(a3, 3, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v14)
  {
    v16 = v14;
    memcpy(v6, v15, v14);
    v6 += v16;
    return v6;
  }

  return sub_1957130(a3, v15, v14, v6);
}

uint64_t sub_13C56A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_17;
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
    v9 = *(a1 + 40);
    if (v9 < 0)
    {
      v10 = 11;
    }

    else
    {
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v10;
  }

LABEL_17:
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

uint64_t sub_13C57C8(uint64_t a1)
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

  if (a1 != &off_276E530)
  {
    if (*(a1 + 56))
    {
      sub_1748C44();
      operator delete();
    }

    if (*(a1 + 64))
    {
      sub_16E4E08();
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_13EBEF0((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_13C58C0(uint64_t a1)
{
  sub_13C57C8(a1);

  operator delete();
}

uint64_t sub_13C58F8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13C52B4(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 7) == 0)
  {
    goto LABEL_10;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  v8 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_18;
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *v8 = 0;
  *(v8 + 23) = 0;
  if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_18:
  result = sub_17095C0(*(v1 + 56));
  if ((v5 & 4) != 0)
  {
LABEL_9:
    result = sub_16E4E44(*(v1 + 64));
  }

LABEL_10:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 64) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_13C59DC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v37 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v37, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v37 + 1);
    v8 = **v37;
    if (**v37 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v37, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v37 + 2);
      }
    }

    *v37 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 18)
        {
          v16 = v7 - 1;
          while (1)
          {
            v17 = v16 + 1;
            *v37 = v16 + 1;
            v18 = *(a1 + 40);
            if (v18 && (v19 = *(a1 + 32), v19 < *v18))
            {
              *(a1 + 32) = v19 + 1;
              v20 = *&v18[2 * v19 + 2];
            }

            else
            {
              v21 = sub_13D3A64(*(a1 + 24));
              v20 = sub_19593CC(a1 + 24, v21);
              v17 = *v37;
            }

            v16 = sub_2205960(a3, v20, v17);
            *v37 = v16;
            if (!v16)
            {
              goto LABEL_62;
            }

            if (*a3 <= v16 || *v16 != 18)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_47;
      }

      if (v8 != 10)
      {
        goto LABEL_47;
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

        v29 = sub_174A1E4(v31);
        *(a1 + 56) = v29;
        v7 = *v37;
      }

      v25 = sub_22058D0(a3, v29, v7);
LABEL_54:
      *v37 = v25;
      if (!v25)
      {
        goto LABEL_62;
      }

      goto LABEL_55;
    }

    if (v11 == 3)
    {
      if (v8 != 26)
      {
        goto LABEL_47;
      }

      *(a1 + 16) |= 4u;
      v22 = *(a1 + 64);
      if (!v22)
      {
        v23 = *(a1 + 8);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        v22 = sub_16F5828(v24);
        *(a1 + 64) = v22;
        v7 = *v37;
      }

      v25 = sub_21F4D60(a3, v22, v7);
      goto LABEL_54;
    }

    if (v11 == 4)
    {
      break;
    }

    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_47;
    }

    v5 |= 8u;
    v12 = (v7 + 1);
    v13 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v14 = *v12;
    v13 = v13 + (v14 << 7) - 128;
    if ((v14 & 0x80000000) == 0)
    {
      v12 = (v7 + 2);
LABEL_15:
      *v37 = v12;
      *(a1 + 72) = v13;
      goto LABEL_55;
    }

    v35 = sub_1958770(v7, v13);
    *v37 = v35;
    *(a1 + 72) = v36;
    if (!v35)
    {
      goto LABEL_62;
    }

LABEL_55:
    if (sub_195ADC0(a3, v37, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 34)
  {
    *(a1 + 16) |= 1u;
    v26 = *(a1 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    v28 = sub_194DB04((a1 + 48), v27);
    v25 = sub_1958890(v28, *v37, a3);
    goto LABEL_54;
  }

LABEL_47:
  if (v8)
  {
    v32 = (v8 & 7) == 4;
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
      v7 = *v37;
    }

    v25 = sub_1952690(v8, v34, v7, a3);
    goto LABEL_54;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_62:
  *v37 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v37;
}