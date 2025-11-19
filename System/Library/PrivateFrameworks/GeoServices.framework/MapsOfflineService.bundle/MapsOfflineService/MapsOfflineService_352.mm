char *sub_147C020(uint64_t a1, char *a2, int32x2_t *a3)
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
        if (v7 == 34)
        {
          *(a1 + 16) |= 8u;
          v16 = *(a1 + 48);
          if (v16)
          {
            goto LABEL_50;
          }

          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          sub_14BB040(v24);
          v16 = v25;
          *(a1 + 48) = v25;
LABEL_49:
          v6 = v37;
          goto LABEL_50;
        }
      }

      else if (v10 == 5)
      {
        if (v7 == 42)
        {
          *(a1 + 16) |= 0x10u;
          v16 = *(a1 + 56);
          if (v16)
          {
            goto LABEL_50;
          }

          v30 = *(a1 + 8);
          v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
          if (v30)
          {
            v31 = *v31;
          }

          sub_14BB040(v31);
          v16 = v32;
          *(a1 + 56) = v32;
          goto LABEL_49;
        }
      }

      else if (v10 == 6 && v7 == 50)
      {
        *(a1 + 16) |= 0x20u;
        v16 = *(a1 + 64);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          sub_14BB040(v18);
          v16 = v19;
          *(a1 + 64) = v19;
          goto LABEL_49;
        }

LABEL_50:
        v29 = sub_220DFF8(a3, v16, v6);
        goto LABEL_58;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v12 = *(a1 + 24);
        if (v12)
        {
          goto LABEL_43;
        }

        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        sub_14BAE64(v21);
        v12 = v22;
        *(a1 + 24) = v22;
LABEL_42:
        v6 = v37;
        goto LABEL_43;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v12 = *(a1 + 32);
        if (v12)
        {
          goto LABEL_43;
        }

        v26 = *(a1 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        sub_14BAE64(v27);
        v12 = v28;
        *(a1 + 32) = v28;
        goto LABEL_42;
      }
    }

    else if (v10 == 3 && v7 == 26)
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

        sub_14BAE64(v14);
        v12 = v15;
        *(a1 + 40) = v15;
        goto LABEL_42;
      }

LABEL_43:
      v29 = sub_22095B8(a3, v12, v6);
      goto LABEL_58;
    }

    if (v7)
    {
      v33 = (v7 & 7) == 4;
    }

    else
    {
      v33 = 1;
    }

    if (v33)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v37;
      }

      return 0;
    }

    v34 = *(a1 + 8);
    if (v34)
    {
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v35 = sub_11F1920((a1 + 8));
      v6 = v37;
    }

    v29 = sub_1952690(v7, v35, v6, a3);
LABEL_58:
    v37 = v29;
    if (!v29)
    {
      return 0;
    }
  }

  return v37;
}

char *sub_147C300(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_14589F4(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
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

  v4 = sub_14589F4(v10, v12, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
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

  v4 = sub_14589F4(v13, v15, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
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

  v4 = sub_145A744(v16, v18, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

LABEL_32:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v19 = *(a1 + 56);
  *v4 = 42;
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

  v4 = sub_145A744(v19, v21, a3);
  if ((v6 & 0x20) != 0)
  {
LABEL_38:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v22 = *(a1 + 64);
    *v4 = 50;
    v23 = *(v22 + 20);
    v4[1] = v23;
    if (v23 > 0x7F)
    {
      v24 = sub_19575D0(v23, v4 + 1);
    }

    else
    {
      v24 = v4 + 2;
    }

    v4 = sub_145A744(v22, v24, a3);
  }

LABEL_44:
  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v28)
  {
    v30 = v28;
    memcpy(v4, v29, v28);
    v4 += v30;
    return v4;
  }

  return sub_1957130(a3, v29, v28, v4);
}

uint64_t sub_147C624(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v4 = sub_1458DB4(*(a1 + 24));
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
    v5 = sub_1458DB4(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v9 = sub_1458DB4(*(a1 + 40));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v10 = sub_145ABA0(*(a1 + 48));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_17:
  v11 = sub_145ABA0(*(a1 + 56));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_12:
    v6 = sub_145ABA0(*(a1 + 64));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  v7 = *(a1 + 8);
  if (v7)
  {
    v12 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v3 += v13;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_147C7C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) == 0)
  {
    goto LABEL_58;
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

      sub_14BAE64(v7);
      *(a1 + 24) = v5;
    }

    if (*(a2 + 24))
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = &off_2771738;
    }

    sub_144EF20(v5, v8);
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

    sub_14BAE64(v11);
    *(a1 + 32) = v9;
  }

  if (*(a2 + 32))
  {
    v12 = *(a2 + 32);
  }

  else
  {
    v12 = &off_2771738;
  }

  sub_144EF20(v9, v12);
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

      sub_14BAE64(v15);
      *(a1 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_2771738;
    }

    sub_144EF20(v13, v16);
  }

LABEL_30:
  if ((v4 & 8) != 0)
  {
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

      sub_14BB040(v19);
      *(a1 + 48) = v17;
    }

    if (*(a2 + 48))
    {
      v20 = *(a2 + 48);
    }

    else
    {
      v20 = &off_2771820;
    }

    sub_145ADE0(v17, v20);
    if ((v4 & 0x10) == 0)
    {
LABEL_32:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_50;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_32;
  }

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

    sub_14BB040(v23);
    *(a1 + 56) = v21;
  }

  if (*(a2 + 56))
  {
    v24 = *(a2 + 56);
  }

  else
  {
    v24 = &off_2771820;
  }

  sub_145ADE0(v21, v24);
  if ((v4 & 0x20) != 0)
  {
LABEL_50:
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

      sub_14BB040(v27);
      *(a1 + 64) = v25;
    }

    if (*(a2 + 64))
    {
      v28 = *(a2 + 64);
    }

    else
    {
      v28 = &off_2771820;
    }

    sub_145ADE0(v25, v28);
  }

LABEL_58:
  v29 = *(a2 + 8);
  if (v29)
  {

    sub_1957EF4((a1 + 8), (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_147C9F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_144F560(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_144F560(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_144F560(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_145B0DC(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = sub_145B0DC(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) == 0)
  {
    return 1;
  }

  result = sub_145B0DC(*(a1 + 64));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_147CA9C(uint64_t a1)
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

  sub_147CB20(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_147CB20(uint64_t (***result)()))()
{
  if (result != &off_2772418)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      sub_1458388(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_1458388(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_145A0CC(v4);
      operator delete();
    }

    result = v1[6];
    if (result)
    {
      sub_145A0CC(result);

      operator delete();
    }
  }

  return result;
}

void sub_147CBDC(uint64_t a1)
{
  sub_147CA9C(a1);

  operator delete();
}

uint64_t sub_147CC14(uint64_t result)
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

LABEL_12:
    result = sub_144E5CC(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_13;
  }

  result = sub_144E5CC(*(result + 24));
  if ((v2 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  result = sub_145A298(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_145A298(*(v1 + 48));
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

char *sub_147CCAC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v31 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v31, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v31 + 1;
    v7 = *v31;
    if (*v31 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v31, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v31 + 2;
      }
    }

    v31 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 4u;
          v16 = *(a1 + 40);
          if (!v16)
          {
            v24 = *(a1 + 8);
            v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
            if (v24)
            {
              v25 = *v25;
            }

            sub_14BB040(v25);
            v16 = v26;
            *(a1 + 40) = v26;
LABEL_37:
            v6 = v31;
          }

LABEL_38:
          v23 = sub_220DFF8(a3, v16, v6);
          goto LABEL_46;
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
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

          sub_14BB040(v18);
          v16 = v19;
          *(a1 + 48) = v19;
          goto LABEL_37;
        }

        goto LABEL_38;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v12 = *(a1 + 24);
        if (!v12)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          sub_14BAE64(v21);
          v12 = v22;
          *(a1 + 24) = v22;
LABEL_30:
          v6 = v31;
        }

LABEL_31:
        v23 = sub_22095B8(a3, v12, v6);
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

        sub_14BAE64(v14);
        v12 = v15;
        *(a1 + 32) = v15;
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    if (v7)
    {
      v27 = (v7 & 7) == 4;
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v31;
      }

      return 0;
    }

    v28 = *(a1 + 8);
    if (v28)
    {
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v29 = sub_11F1920((a1 + 8));
      v6 = v31;
    }

    v23 = sub_1952690(v7, v29, v6, a3);
LABEL_46:
    v31 = v23;
    if (!v23)
    {
      return 0;
    }
  }

  return v31;
}

char *sub_147CEF4(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_14589F4(v7, v9, a3);
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

  v4 = sub_14589F4(v10, v12, a3);
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

  v4 = sub_145A744(v13, v15, a3);
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

    v4 = sub_145A744(v16, v18, a3);
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

  if ((*a3 - v4) >= v22)
  {
    v24 = v22;
    memcpy(v4, v23, v22);
    v4 += v24;
    return v4;
  }

  return sub_1957130(a3, v23, v22, v4);
}

uint64_t sub_147D148(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_1458DB4(*(a1 + 24));
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
    v5 = sub_1458DB4(*(a1 + 32));
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

  v9 = sub_145ABA0(*(a1 + 40));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_10:
    v6 = sub_145ABA0(*(a1 + 48));
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

void sub_147D280(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
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

        sub_14BAE64(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2771738;
      }

      sub_144EF20(v5, v8);
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

        sub_14BAE64(v11);
        *(a1 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_2771738;
      }

      sub_144EF20(v9, v12);
    }

    if ((v4 & 4) != 0)
    {
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

        sub_14BB040(v15);
        *(a1 + 40) = v13;
      }

      if (*(a2 + 40))
      {
        v16 = *(a2 + 40);
      }

      else
      {
        v16 = &off_2771820;
      }

      sub_145ADE0(v13, v16);
    }

    if ((v4 & 8) != 0)
    {
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

        sub_14BB040(v19);
        *(a1 + 48) = v17;
      }

      if (*(a2 + 48))
      {
        v20 = *(a2 + 48);
      }

      else
      {
        v20 = &off_2771820;
      }

      sub_145ADE0(v17, v20);
    }
  }

  v21 = *(a2 + 8);
  if (v21)
  {

    sub_1957EF4((a1 + 8), (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_147D40C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_144F560(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_144F560(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_145B0DC(*(a1 + 40));
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

  result = sub_145B0DC(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_147D490(uint64_t a1)
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
  if (a1 != &off_2772450)
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

void sub_147D548(uint64_t a1)
{
  sub_147D490(a1);

  operator delete();
}

unsigned __int8 *sub_147D580(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2)
  {
    result = sub_16E5B70(*(result + 3));
  }

  if ((v2 & 0xE) != 0)
  {
    *(v1 + 4) = 0;
    *(v1 + 5) = 0;
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

char *sub_147D5E8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v34 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v34, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v34 + 1;
    v8 = *v34;
    if (*v34 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v34, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v34 + 2;
      }
    }

    v34 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_38;
      }

      v5 |= 2u;
      v22 = v7 + 1;
      v21 = *v7;
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      v23 = *v22;
      v21 = (v23 << 7) + v21 - 128;
      if ((v23 & 0x80000000) == 0)
      {
        v22 = v7 + 2;
LABEL_30:
        v34 = v22;
        *(a1 + 32) = v21;
        goto LABEL_46;
      }

      v32 = sub_19587DC(v7, v21);
      v34 = v32;
      *(a1 + 32) = v33;
      if (!v32)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_38;
      }

      v5 |= 4u;
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
        v34 = v13;
        *(a1 + 40) = v14;
        goto LABEL_46;
      }

      v30 = sub_1958770(v7, v14);
      v34 = v30;
      *(a1 + 40) = v31;
      if (!v30)
      {
        goto LABEL_58;
      }
    }

LABEL_46:
    if (sub_195ADC0(a3, &v34, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_38;
    }

    v25 = v7 + 1;
    v24 = *v7;
    if (v24 < 0)
    {
      v26 = *v25;
      v24 = (v26 << 7) + v24 - 128;
      if (v26 < 0)
      {
        v34 = sub_19587DC(v7, v24);
        if (!v34)
        {
          goto LABEL_58;
        }

        goto LABEL_36;
      }

      v25 = v7 + 2;
    }

    v34 = v25;
LABEL_36:
    if (v24 > 2)
    {
      sub_1313740();
    }

    else
    {
      *(a1 + 16) |= 8u;
      *(a1 + 44) = v24;
    }

    goto LABEL_46;
  }

  if (v11 == 4 && v8 == 34)
  {
    *(a1 + 16) |= 1u;
    v16 = *(a1 + 24);
    if (!v16)
    {
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_16F58FC(v18);
      v16 = v19;
      *(a1 + 24) = v19;
      v7 = v34;
    }

    v20 = sub_21F86E8(a3, v16, v7);
LABEL_45:
    v34 = v20;
    if (!v20)
    {
      goto LABEL_58;
    }

    goto LABEL_46;
  }

LABEL_38:
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
      v7 = v34;
    }

    v20 = sub_1952690(v8, v29, v7, a3);
    goto LABEL_45;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_58:
  v34 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v34;
}

char *sub_147D8A8(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 32);
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

    v12 = *(a1 + 40);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 44);
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
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 24);
    *v15 = 34;
    v21 = *(v20 + 20);
    v15[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, v15 + 1);
    }

    else
    {
      v22 = v15 + 2;
    }

    v15 = sub_16E5FE0(v20, v22, a3);
  }

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

  if (*a3 - v15 >= v26)
  {
    v28 = v26;
    memcpy(v15, v27, v26);
    v15 += v28;
    return v15;
  }

  return sub_1957130(a3, v27, v26, v15);
}

uint64_t sub_147DB40(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    result = 0;
    goto LABEL_16;
  }

  if (v2)
  {
    v4 = sub_16E62F4(*(a1 + 24));
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
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    result += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_16;
  }

  v5 = *(a1 + 44);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_16:
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    result += v9;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_147DC5C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
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

        sub_16F58FC(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277E650;
      }

      sub_16E645C(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_21;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
LABEL_7:
        *(a1 + 16) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(a1 + 44) = *(a2 + 44);
      goto LABEL_7;
    }

LABEL_21:
    *(a1 + 40) = *(a2 + 40);
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

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_147DD54(uint64_t a1)
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

uint64_t sub_147DD94(uint64_t a1)
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

  if (a1 != &off_2772480 && *(a1 + 24))
  {
    sub_16E4E08();
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

void sub_147DE4C(uint64_t a1)
{
  sub_147DD94(a1);

  operator delete();
}

unsigned __int8 *sub_147DE84(unsigned __int8 *result)
{
  v1 = result;
  if (result[16])
  {
    result = sub_16E4E44(*(result + 3));
  }

  v3 = v1[8];
  v2 = v1 + 8;
  *(v2 + 6) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_147DEE4(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 >> 3 != 2)
    {
      if (v7 >> 3 == 1 && v7 == 8)
      {
        v19 = v6 + 1;
        v18 = *v6;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if (v20 < 0)
        {
          v22 = sub_19587DC(v6, v18);
          if (!v22)
          {
            return 0;
          }
        }

        else
        {
          v19 = v6 + 2;
LABEL_30:
          v22 = v19;
        }

        if (v18 > 1)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v18;
        }

        continue;
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
      goto LABEL_25;
    }

    if (v7 != 18)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 24);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_16F5828(v17);
      *(a1 + 24) = v15;
      v6 = v22;
    }

    v14 = sub_21F4D60(a3, v15, v6);
LABEL_25:
    v22 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v22;
}

char *sub_147E0B0(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 32);
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

    v6 = sub_16E5070(v11, v13, a3);
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v17)
  {
    v19 = v17;
    memcpy(v6, v18, v17);
    v6 += v19;
    return v6;
  }

  return sub_1957130(a3, v18, v17, v6);
}

uint64_t sub_147E23C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_16E51F0(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 32);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_11:
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    result += v9;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_147E304(uint64_t a1, uint64_t a2)
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

        v5 = sub_16F5828(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_277E5E8;
      }

      sub_16E527C(v5, v8);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 32) = *(a2 + 32);
    }

    *(a1 + 16) |= v4;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_147E3D4(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_147E414(void *a1)
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

  sub_147E498(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_147E498(uint64_t result)
{
  if (result != &off_27724A8)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2)
    {
      sub_1458388(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_1458388(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_14B64B0(v4);
      operator delete();
    }

    v5 = v1[6];
    if (v5)
    {
      sub_1458388(v5);
      operator delete();
    }

    v6 = v1[7];
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }

    result = v1[8];
    if (result)
    {
      sub_147DD94(result);

      operator delete();
    }
  }

  return result;
}

void sub_147E584(void *a1)
{
  sub_147E414(a1);

  operator delete();
}

uint64_t sub_147E5BC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if (v2)
  {
    result = sub_144E5CC(*(result + 24));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_144E5CC(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_16:
    result = sub_144E5CC(*(v1 + 48));
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = sub_144E6A8(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_17:
  result = sub_144E5CC(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
LABEL_8:
    result = sub_147DE84(*(v1 + 64));
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

char *sub_147E674(uint64_t a1, char *a2, int32x2_t *a3)
{
  v36 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v36, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v36 + 1;
    v7 = *v36;
    if (*v36 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v36, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v36 + 2;
      }
    }

    v36 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 3)
    {
      if (v10 == 4)
      {
        if (v7 == 34)
        {
          *(a1 + 16) |= 8u;
          v19 = *(a1 + 48);
          if (!v19)
          {
            v23 = *(a1 + 8);
            v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
            if (v23)
            {
              v24 = *v24;
            }

            sub_14BAE64(v24);
            v19 = v25;
            *(a1 + 48) = v25;
LABEL_49:
            v6 = v36;
          }

LABEL_50:
          v15 = sub_22095B8(a3, v19, v6);
          goto LABEL_51;
        }
      }

      else if (v10 == 5)
      {
        if (v7 == 42)
        {
          *(a1 + 16) |= 0x10u;
          v19 = *(a1 + 56);
          if (!v19)
          {
            v29 = *(a1 + 8);
            v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
            if (v29)
            {
              v30 = *v30;
            }

            sub_14BAE64(v30);
            v19 = v31;
            *(a1 + 56) = v31;
            goto LABEL_49;
          }

          goto LABEL_50;
        }
      }

      else if (v10 == 6 && v7 == 50)
      {
        *(a1 + 16) |= 0x20u;
        v16 = *(a1 + 64);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_14BCCF8(v18);
          *(a1 + 64) = v16;
          v6 = v36;
        }

        v15 = sub_220E088(a3, v16, v6);
        goto LABEL_51;
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

          sub_14BAE64(v21);
          v19 = v22;
          *(a1 + 24) = v22;
          goto LABEL_49;
        }

        goto LABEL_50;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v19 = *(a1 + 32);
        if (!v19)
        {
          v26 = *(a1 + 8);
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v27 = *v27;
          }

          sub_14BAE64(v27);
          v19 = v28;
          *(a1 + 32) = v28;
          goto LABEL_49;
        }

        goto LABEL_50;
      }
    }

    else if (v10 == 3 && v7 == 26)
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

        v12 = sub_14BF484(v14);
        *(a1 + 40) = v12;
        v6 = v36;
      }

      v15 = sub_2209138(a3, v12, v6);
      goto LABEL_51;
    }

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
        return v36;
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
      v6 = v36;
    }

    v15 = sub_1952690(v7, v34, v6, a3);
LABEL_51:
    v36 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return v36;
}

char *sub_147E960(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_14589F4(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
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

  v4 = sub_14589F4(v10, v12, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
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

  v13 = *(a1 + 40);
  *v4 = 26;
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

  v4 = sub_14B6D24(v13, v15, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
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

  v4 = sub_14589F4(v16, v18, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

LABEL_32:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v19 = *(a1 + 56);
  *v4 = 42;
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

  v4 = sub_14589F4(v19, v21, a3);
  if ((v6 & 0x20) != 0)
  {
LABEL_38:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v22 = *(a1 + 64);
    *v4 = 50;
    v23 = *(v22 + 20);
    v4[1] = v23;
    if (v23 > 0x7F)
    {
      v24 = sub_19575D0(v23, v4 + 1);
    }

    else
    {
      v24 = v4 + 2;
    }

    v4 = sub_147E0B0(v22, v24, a3);
  }

LABEL_44:
  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v28)
  {
    v30 = v28;
    memcpy(v4, v29, v28);
    v4 += v30;
    return v4;
  }

  return sub_1957130(a3, v29, v28, v4);
}

uint64_t sub_147EC84(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v4 = sub_1458DB4(*(a1 + 24));
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
    v5 = sub_1458DB4(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v9 = sub_14B71B8(*(a1 + 40));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v10 = sub_1458DB4(*(a1 + 48));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_17:
  v11 = sub_1458DB4(*(a1 + 56));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_12:
    v6 = sub_147E23C(*(a1 + 64));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  v7 = *(a1 + 8);
  if (v7)
  {
    v12 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v3 += v13;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_147EE24(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) == 0)
  {
    goto LABEL_57;
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

      sub_14BAE64(v7);
      *(a1 + 24) = v5;
    }

    if (*(a2 + 24))
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = &off_2771738;
    }

    sub_144EF20(v5, v8);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_25;
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

    sub_14BAE64(v11);
    *(a1 + 32) = v9;
  }

  if (*(a2 + 32))
  {
    v12 = *(a2 + 32);
  }

  else
  {
    v12 = &off_2771738;
  }

  sub_144EF20(v9, v12);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_25:
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

    v13 = sub_14BF484(v15);
    *(a1 + 40) = v13;
  }

  if (*(a2 + 40))
  {
    v16 = *(a2 + 40);
  }

  else
  {
    v16 = &off_2773AC8;
  }

  sub_144F194(v13, v16);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

LABEL_33:
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

    sub_14BAE64(v19);
    *(a1 + 48) = v17;
  }

  if (*(a2 + 48))
  {
    v20 = *(a2 + 48);
  }

  else
  {
    v20 = &off_2771738;
  }

  sub_144EF20(v17, v20);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
  }

LABEL_41:
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

    sub_14BAE64(v23);
    *(a1 + 56) = v21;
  }

  if (*(a2 + 56))
  {
    v24 = *(a2 + 56);
  }

  else
  {
    v24 = &off_2771738;
  }

  sub_144EF20(v21, v24);
  if ((v4 & 0x20) != 0)
  {
LABEL_49:
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

      v25 = sub_14BCCF8(v27);
      *(a1 + 64) = v25;
    }

    if (*(a2 + 64))
    {
      v28 = *(a2 + 64);
    }

    else
    {
      v28 = &off_2772480;
    }

    sub_147E304(v25, v28);
  }

LABEL_57:
  v29 = *(a2 + 8);
  if (v29)
  {

    sub_1957EF4((a1 + 8), (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_147F058(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_144F560(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_144F560(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_144F5D0(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_144F560(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = sub_144F560(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) == 0)
  {
    return 1;
  }

  v4 = *(a1 + 64);
  if ((*(v4 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(v4 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_147F110(uint64_t a1)
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
  if (a1 != &off_27724F0)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_147E414(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_147F1D0(uint64_t a1)
{
  sub_147F110(a1);

  operator delete();
}

uint64_t sub_147F208(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if (v3)
  {
    result = sub_147E5BC(*(a1 + 48));
  }

  if ((v3 & 6) != 0)
  {
    *(a1 + 56) = 0;
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

uint64_t sub_147F278(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v39 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v39, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v39 + 1);
    v8 = **v39;
    if (**v39 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v39, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v39 + 2);
      }
    }

    *v39 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 10)
      {
        goto LABEL_43;
      }

      *(a1 + 16) |= 1u;
      v24 = *(a1 + 48);
      if (!v24)
      {
        v25 = *(a1 + 8);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        sub_14BCD74(v26);
        v24 = v27;
        *(a1 + 48) = v27;
        v7 = *v39;
      }

      v28 = sub_220E118(a3, v24, v7);
LABEL_50:
      *v39 = v28;
      if (!v28)
      {
        goto LABEL_60;
      }

      goto LABEL_51;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_43;
    }

    v5 |= 2u;
    v13 = (v7 + 1);
    v14 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v13;
    v14 = v14 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v13 = (v7 + 2);
LABEL_17:
      *v39 = v13;
      *(a1 + 56) = v14;
      goto LABEL_51;
    }

    v35 = sub_1958770(v7, v14);
    *v39 = v35;
    *(a1 + 56) = v36;
    if (!v35)
    {
      goto LABEL_60;
    }

LABEL_51:
    if (sub_195ADC0(a3, v39, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_43;
    }

    v5 |= 4u;
    v29 = (v7 + 1);
    v30 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    v31 = *v29;
    v30 = v30 + (v31 << 7) - 128;
    if ((v31 & 0x80000000) == 0)
    {
      v29 = (v7 + 2);
LABEL_42:
      *v39 = v29;
      *(a1 + 60) = v30;
      goto LABEL_51;
    }

    v37 = sub_1958770(v7, v30);
    *v39 = v37;
    *(a1 + 60) = v38;
    if (!v37)
    {
      goto LABEL_60;
    }

    goto LABEL_51;
  }

  if (v11 == 4 && v8 == 34)
  {
    v16 = (v7 - 1);
    while (1)
    {
      v17 = (v16 + 1);
      *v39 = v16 + 1;
      v18 = *(a1 + 40);
      if (v18 && (v19 = *(a1 + 32), v19 < *v18))
      {
        *(a1 + 32) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
      }

      else
      {
        v21 = *(a1 + 24);
        if (!v21)
        {
          operator new();
        }

        *v23 = v22;
        v23[1] = sub_195A650;
        *v22 = 0;
        v22[1] = 0;
        v22[2] = 0;
        v20 = sub_19593CC(a1 + 24, v22);
        v17 = *v39;
      }

      v16 = sub_1958890(v20, v17, a3);
      *v39 = v16;
      if (!v16)
      {
        goto LABEL_60;
      }

      if (*a3 <= v16 || *v16 != 34)
      {
        goto LABEL_51;
      }
    }
  }

LABEL_43:
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
      v7 = *v39;
    }

    v28 = sub_1952690(v8, v34, v7, a3);
    goto LABEL_50;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_60:
  *v39 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v39;
}

char *sub_147F5A8(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 48);
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

    __dst = sub_147E960(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 56);
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

    v15 = *(a1 + 60);
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

  v18 = *(a1 + 32);
  if (v18 >= 1)
  {
    v19 = 8;
    do
    {
      v20 = *(*(a1 + 40) + v19);
      v21 = *(v20 + 23);
      if (v21 < 0 && (v21 = v20[1], v21 > 127) || (*a3 - v14 + 14) < v21)
      {
        v14 = sub_1957480(a3, 4, v20, v14);
      }

      else
      {
        *v14 = 34;
        v14[1] = v21;
        if (*(v20 + 23) < 0)
        {
          v20 = *v20;
        }

        v22 = v14 + 2;
        memcpy(v22, v20, v21);
        v14 = &v22[v21];
      }

      v19 += 8;
      --v18;
    }

    while (v18);
  }

  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v14;
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

  if ((*a3 - v14) >= v26)
  {
    v28 = v26;
    memcpy(v14, v27, v26);
    v14 += v28;
    return v14;
  }

  return sub_1957130(a3, v27, v26, v14);
}

uint64_t sub_147F86C(uint64_t a1)
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
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      v11 = sub_147EC84(*(a1 + 48));
      v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_11:
        if ((v8 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

    v4 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) != 0)
    {
LABEL_12:
      v4 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

    v4 += v13;
  }

  *(a1 + 20) = v4;
  return v4;
}

void sub_147F9B8(uint64_t a1, uint64_t a2)
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

        sub_14BCD74(v13);
        *(a1 + 48) = v11;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_27724A8;
      }

      sub_147EE24(v11, v14);
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
        *(a1 + 60) = *(a2 + 60);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 56) = *(a2 + 56);
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

uint64_t sub_147FAFC(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_147F058(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_147FB3C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26E57C0;
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
  *(a1 + 56) = 0;
  v7 = *(a2 + 48);
  if (v7)
  {
    v8 = *(a2 + 56);
    v9 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_15666C4((a1 + 40), v9, (v8 + 8), v7, **(a1 + 56) - *(a1 + 48));
    v10 = *(a1 + 48) + v7;
    *(a1 + 48) = v10;
    v11 = *(a1 + 56);
    if (*v11 < v10)
    {
      *v11 = v10;
    }
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v12 = *(a2 + 72);
  if (v12)
  {
    v13 = *(a2 + 80);
    v14 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_1566750((a1 + 64), v14, (v13 + 8), v12, **(a1 + 80) - *(a1 + 72));
    v15 = *(a1 + 72) + v12;
    *(a1 + 72) = v15;
    v16 = *(a1 + 80);
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v17 = *(a2 + 96);
  if (v17)
  {
    v18 = *(a2 + 104);
    v19 = sub_19592E8(a1 + 88, *(a2 + 96));
    sub_1201B48(a1 + 88, v19, (v18 + 8), v17, **(a1 + 104) - *(a1 + 96));
    v20 = *(a1 + 96) + v17;
    *(a1 + 96) = v20;
    v21 = *(a1 + 104);
    if (*v21 < v20)
    {
      *v21 = v20;
    }
  }

  v22 = *(a2 + 8);
  if (v22)
  {
    sub_1957EF4(v4, (v22 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  v23 = *(a2 + 16);
  if (v23)
  {
    operator new();
  }

  *(a1 + 112) = 0;
  if ((v23 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 120) = 0;
  if ((v23 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

uint64_t sub_147FE94(uint64_t a1)
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

  if (a1 != &off_2772530)
  {
    v5 = *(a1 + 112);
    if (v5)
    {
      sub_1458388(v5);
      operator delete();
    }

    v6 = *(a1 + 120);
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }

    v7 = *(a1 + 128);
    if (v7)
    {
      sub_14B64B0(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_1956AFC((a1 + 88));
  sub_15649BC((a1 + 64));
  sub_1564938((a1 + 40));
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_147FFAC(uint64_t a1)
{
  sub_147FE94(a1);

  operator delete();
}

uint64_t sub_147FFE4(uint64_t a1)
{
  *(a1 + 24) = 0;
  v2 = *(a1 + 48);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 56) + 8);
    do
    {
      v4 = *v3++;
      sub_147E5BC(v4);
      --v2;
    }

    while (v2);
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 72);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 80) + 8);
    do
    {
      v7 = *v6++;
      sub_147F208(v7);
      --v5;
    }

    while (v5);
    *(a1 + 72) = 0;
  }

  result = sub_12A41D0(a1 + 88);
  v9 = *(a1 + 16);
  if ((v9 & 7) != 0)
  {
    if (v9)
    {
      result = sub_144E5CC(*(a1 + 112));
      if ((v9 & 2) == 0)
      {
LABEL_12:
        if ((v9 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_12;
    }

    result = sub_144E5CC(*(a1 + 120));
    if ((v9 & 4) != 0)
    {
LABEL_13:
      result = sub_144E6A8(*(a1 + 128));
    }
  }

LABEL_14:
  if ((v9 & 0x18) != 0)
  {
    *(a1 + 136) = 0;
  }

  v11 = *(a1 + 8);
  v10 = a1 + 8;
  *(v10 + 8) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_14800E0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v60 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v60, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v60 + 1);
    v8 = **v60;
    if (**v60 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v60, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v60 + 2);
      }
    }

    *v60 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_101;
        }

        if (v8 == 16)
        {
          v15 = v7 - 1;
          while (1)
          {
            *v60 = v15 + 1;
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

            *v60 = v15;
            v19 = *(a1 + 24);
            if (v19 == *(a1 + 28))
            {
              v20 = v19 + 1;
              sub_1958E5C((a1 + 24), v19 + 1);
              *(*(a1 + 32) + 4 * v19) = v16;
              v15 = *v60;
            }

            else
            {
              *(*(a1 + 32) + 4 * v19) = v16;
              v20 = v19 + 1;
            }

            *(a1 + 24) = v20;
            if (!v15)
            {
              goto LABEL_115;
            }

            if (*a3 <= v15 || *v15 != 16)
            {
              goto LABEL_109;
            }
          }
        }

        if (v8 != 18)
        {
          goto LABEL_101;
        }

        v31 = sub_1958918((a1 + 24), v7, a3);
LABEL_108:
        *v60 = v31;
        if (!v31)
        {
          goto LABEL_115;
        }

        goto LABEL_109;
      }

      if (v8 != 10)
      {
        goto LABEL_101;
      }

      *(a1 + 16) |= 1u;
      v24 = *(a1 + 112);
      if (!v24)
      {
        v28 = *(a1 + 8);
        v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (v28)
        {
          v29 = *v29;
        }

        sub_14BAE64(v29);
        v24 = v30;
        *(a1 + 112) = v30;
LABEL_55:
        v7 = *v60;
      }

LABEL_56:
      v31 = sub_22095B8(a3, v24, v7);
      goto LABEL_108;
    }

    if (v11 == 3)
    {
      if (v8 == 26)
      {
        v32 = v7 - 1;
        while (1)
        {
          v33 = (v32 + 1);
          *v60 = v32 + 1;
          v34 = *(a1 + 56);
          if (v34 && (v35 = *(a1 + 48), v35 < *v34))
          {
            *(a1 + 48) = v35 + 1;
            v36 = *&v34[2 * v35 + 2];
          }

          else
          {
            sub_14BCD74(*(a1 + 40));
            v36 = sub_19593CC(a1 + 40, v37);
            v33 = *v60;
          }

          v32 = sub_220E118(a3, v36, v33);
          *v60 = v32;
          if (!v32)
          {
            goto LABEL_115;
          }

          if (*a3 <= v32 || *v32 != 26)
          {
            goto LABEL_109;
          }
        }
      }

      goto LABEL_101;
    }

    if (v11 != 4 || v8 != 32)
    {
      goto LABEL_101;
    }

    v5 |= 8u;
    v22 = v7 + 1;
    v21 = *v7;
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_42;
    }

    v23 = *v22;
    v21 = (v23 << 7) + v21 - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_42:
      *v60 = v22;
      *(a1 + 136) = v21 != 0;
      goto LABEL_109;
    }

    v55 = sub_19587DC(v7, v21);
    *v60 = v55;
    *(a1 + 136) = v56 != 0;
    if (!v55)
    {
      goto LABEL_115;
    }

LABEL_109:
    if (sub_195ADC0(a3, v60, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 6)
  {
    if (v11 == 5)
    {
      if (v8 == 42)
      {
        v41 = v7 - 1;
        while (1)
        {
          v42 = (v41 + 1);
          *v60 = v41 + 1;
          v43 = *(a1 + 80);
          if (v43 && (v44 = *(a1 + 72), v44 < *v43))
          {
            *(a1 + 72) = v44 + 1;
            v45 = *&v43[2 * v44 + 2];
          }

          else
          {
            v46 = sub_14BCDF8(*(a1 + 64));
            v45 = sub_19593CC(a1 + 64, v46);
            v42 = *v60;
          }

          v41 = sub_220E1A8(a3, v45, v42);
          *v60 = v41;
          if (!v41)
          {
            goto LABEL_115;
          }

          if (*a3 <= v41 || *v41 != 42)
          {
            goto LABEL_109;
          }
        }
      }

      goto LABEL_101;
    }

    if (v11 != 6 || v8 != 50)
    {
      goto LABEL_101;
    }

    *(a1 + 16) |= 2u;
    v24 = *(a1 + 120);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      sub_14BAE64(v26);
      v24 = v27;
      *(a1 + 120) = v27;
      goto LABEL_55;
    }

    goto LABEL_56;
  }

  if (v11 == 7)
  {
    if (v8 != 58)
    {
      goto LABEL_101;
    }

    *(a1 + 16) |= 4u;
    v38 = *(a1 + 128);
    if (!v38)
    {
      v39 = *(a1 + 8);
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
      if (v39)
      {
        v40 = *v40;
      }

      v38 = sub_14BF484(v40);
      *(a1 + 128) = v38;
      v7 = *v60;
    }

    v31 = sub_2209138(a3, v38, v7);
    goto LABEL_108;
  }

  if (v11 == 8)
  {
    if (v8 == 66)
    {
      v47 = v7 - 1;
      while (1)
      {
        v48 = (v47 + 1);
        *v60 = v47 + 1;
        v49 = *(a1 + 104);
        if (v49 && (v50 = *(a1 + 96), v50 < *v49))
        {
          *(a1 + 96) = v50 + 1;
          v51 = *&v49[2 * v50 + 2];
        }

        else
        {
          v52 = *(a1 + 88);
          if (!v52)
          {
            operator new();
          }

          *v54 = v53;
          v54[1] = sub_195A650;
          *v53 = 0;
          v53[1] = 0;
          v53[2] = 0;
          v51 = sub_19593CC(a1 + 88, v53);
          v48 = *v60;
        }

        v47 = sub_1958890(v51, v48, a3);
        *v60 = v47;
        if (!v47)
        {
          goto LABEL_115;
        }

        if (*a3 <= v47 || *v47 != 66)
        {
          goto LABEL_109;
        }
      }
    }
  }

  else if (v11 == 9 && v8 == 72)
  {
    v13 = v7 + 1;
    v12 = *v7;
    if (v12 < 0)
    {
      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if (v14 < 0)
      {
        *v60 = sub_19587DC(v7, v12);
        if (!*v60)
        {
          goto LABEL_115;
        }

        goto LABEL_17;
      }

      v13 = v7 + 2;
    }

    *v60 = v13;
LABEL_17:
    if (v12 > 1)
    {
      sub_13B6774();
    }

    else
    {
      *(a1 + 16) |= 0x10u;
      *(a1 + 140) = v12;
    }

    goto LABEL_109;
  }

LABEL_101:
  if (v8)
  {
    v57 = (v8 & 7) == 4;
  }

  else
  {
    v57 = 1;
  }

  if (!v57)
  {
    v58 = *(a1 + 8);
    if (v58)
    {
      v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v59 = sub_11F1920((a1 + 8));
      v7 = *v60;
    }

    v31 = sub_1952690(v8, v59, v7, a3);
    goto LABEL_108;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_115:
  *v60 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v60;
}

char *sub_1480700(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 112);
    *a2 = 10;
    v7 = *(v6 + 20);
    a2[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, a2 + 1);
    }

    else
    {
      v8 = a2 + 2;
    }

    a2 = sub_14589F4(v6, v8, a3);
  }

  v9 = *(a1 + 24);
  if (v9 < 1)
  {
    v12 = a2;
  }

  else
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v11 = *(*(a1 + 32) + 4 * i);
      *a2 = 16;
      a2[1] = v11;
      if (v11 > 0x7F)
      {
        a2[1] = v11 | 0x80;
        v13 = v11 >> 7;
        a2[2] = v11 >> 7;
        v12 = a2 + 3;
        if (v11 >= 0x4000)
        {
          LOBYTE(v14) = a2[2];
          do
          {
            *(v12 - 1) = v14 | 0x80;
            v14 = v13 >> 7;
            *v12++ = v13 >> 7;
            v15 = v13 >> 14;
            v13 >>= 7;
          }

          while (v15);
        }
      }

      else
      {
        v12 = a2 + 2;
      }

      a2 = v12;
    }
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    for (j = 0; j != v16; ++j)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v18 = *(*(a1 + 56) + 8 * j + 8);
      *v12 = 26;
      v19 = *(v18 + 20);
      v12[1] = v19;
      if (v19 > 0x7F)
      {
        v20 = sub_19575D0(v19, v12 + 1);
      }

      else
      {
        v20 = v12 + 2;
      }

      v12 = sub_147E960(v18, v20, a3);
    }
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v21 = *(a1 + 136);
    *v12 = 32;
    v12[1] = v21;
    v12 += 2;
  }

  v22 = *(a1 + 72);
  if (v22)
  {
    for (k = 0; k != v22; ++k)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v24 = *(*(a1 + 80) + 8 * k + 8);
      *v12 = 42;
      v25 = *(v24 + 20);
      v12[1] = v25;
      if (v25 > 0x7F)
      {
        v26 = sub_19575D0(v25, v12 + 1);
      }

      else
      {
        v26 = v12 + 2;
      }

      v12 = sub_147F5A8(v24, v26, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v27 = *(a1 + 120);
    *v12 = 50;
    v28 = *(v27 + 20);
    v12[1] = v28;
    if (v28 > 0x7F)
    {
      v29 = sub_19575D0(v28, v12 + 1);
    }

    else
    {
      v29 = v12 + 2;
    }

    v12 = sub_14589F4(v27, v29, a3);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v30 = *(a1 + 128);
    *v12 = 58;
    v31 = *(v30 + 44);
    v12[1] = v31;
    if (v31 > 0x7F)
    {
      v32 = sub_19575D0(v31, v12 + 1);
    }

    else
    {
      v32 = v12 + 2;
    }

    v12 = sub_14B6D24(v30, v32, a3);
  }

  v33 = *(a1 + 96);
  if (v33 >= 1)
  {
    v34 = 8;
    do
    {
      v35 = *(*(a1 + 104) + v34);
      v36 = *(v35 + 23);
      if (v36 < 0 && (v36 = v35[1], v36 > 127) || (*a3 - v12 + 14) < v36)
      {
        v12 = sub_1957480(a3, 8, v35, v12);
      }

      else
      {
        *v12 = 66;
        v12[1] = v36;
        if (*(v35 + 23) < 0)
        {
          v35 = *v35;
        }

        v37 = v12 + 2;
        memcpy(v12 + 2, v35, v36);
        v12 = &v37[v36];
      }

      v34 += 8;
      --v33;
    }

    while (v33);
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v39 = *(a1 + 140);
    *v12 = 72;
    v12[1] = v39;
    if (v39 > 0x7F)
    {
      v12[1] = v39 | 0x80;
      v40 = v39 >> 7;
      v12[2] = v39 >> 7;
      v38 = v12 + 3;
      if (v39 >= 0x4000)
      {
        LOBYTE(v41) = v12[2];
        do
        {
          *(v38 - 1) = v41 | 0x80;
          v41 = v40 >> 7;
          *v38++ = v40 >> 7;
          v42 = v40 >> 14;
          v40 >>= 7;
        }

        while (v42);
      }
    }

    else
    {
      v38 = v12 + 2;
    }
  }

  else
  {
    v38 = v12;
  }

  v43 = *(a1 + 8);
  if ((v43 & 1) == 0)
  {
    return v38;
  }

  v45 = v43 & 0xFFFFFFFFFFFFFFFCLL;
  v46 = *(v45 + 31);
  if (v46 < 0)
  {
    v47 = *(v45 + 8);
    v46 = *(v45 + 16);
  }

  else
  {
    v47 = (v45 + 8);
  }

  if ((*a3 - v38) >= v46)
  {
    v48 = v46;
    memcpy(v38, v47, v46);
    v38 += v48;
    return v38;
  }

  return sub_1957130(a3, v47, v46, v38);
}

uint64_t sub_1480BE8(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 24));
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
      v9 = sub_147EC84(v8);
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
      v16 = sub_147F86C(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 96);
  v18 = v11 + v17;
  if (v17 >= 1)
  {
    v19 = (*(a1 + 104) + 8);
    do
    {
      v20 = *v19++;
      v21 = *(v20 + 23);
      v22 = *(v20 + 8);
      if ((v21 & 0x80u) == 0)
      {
        v22 = v21;
      }

      v18 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      --v17;
    }

    while (v17);
  }

  v23 = *(a1 + 16);
  if ((v23 & 0x1F) != 0)
  {
    if (v23)
    {
      v30 = sub_1458DB4(*(a1 + 112));
      v18 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v23 & 2) == 0)
      {
LABEL_21:
        if ((v23 & 4) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    else if ((v23 & 2) == 0)
    {
      goto LABEL_21;
    }

    v31 = sub_1458DB4(*(a1 + 120));
    v18 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 4) == 0)
    {
LABEL_23:
      v18 += (v23 >> 2) & 2;
      if ((v23 & 0x10) != 0)
      {
        v25 = *(a1 + 140);
        v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if (v25 >= 0)
        {
          v27 = v26;
        }

        else
        {
          v27 = 11;
        }

        v18 += v27;
      }

      goto LABEL_28;
    }

LABEL_22:
    v24 = sub_14B71B8(*(a1 + 128));
    v18 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_23;
  }

LABEL_28:
  v28 = *(a1 + 8);
  if (v28)
  {
    v32 = v28 & 0xFFFFFFFFFFFFFFFCLL;
    v33 = *((v28 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v33 < 0)
    {
      v33 = *(v32 + 16);
    }

    v18 += v33;
  }

  *(a1 + 20) = v18;
  return v18;
}

void sub_1480E2C(uint64_t a1, uint64_t a2)
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
    sub_15666C4((a1 + 40), v10, (v9 + 8), v8, **(a1 + 56) - *(a1 + 48));
    v11 = *(a1 + 48) + v8;
    *(a1 + 48) = v11;
    v12 = *(a1 + 56);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 72);
  if (v13)
  {
    v14 = *(a2 + 80);
    v15 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_1566750((a1 + 64), v15, (v14 + 8), v13, **(a1 + 80) - *(a1 + 72));
    v16 = *(a1 + 72) + v13;
    *(a1 + 72) = v16;
    v17 = *(a1 + 80);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  v18 = *(a2 + 96);
  if (v18)
  {
    v19 = *(a2 + 104);
    v20 = sub_19592E8(a1 + 88, *(a2 + 96));
    sub_1201B48(a1 + 88, v20, (v19 + 8), v18, **(a1 + 104) - *(a1 + 96));
    v21 = *(a1 + 96) + v18;
    *(a1 + 96) = v21;
    v22 = *(a1 + 104);
    if (*v22 < v21)
    {
      *v22 = v21;
    }
  }

  v23 = *(a2 + 16);
  if ((v23 & 0x1F) != 0)
  {
    if (v23)
    {
      *(a1 + 16) |= 1u;
      v25 = *(a1 + 112);
      if (!v25)
      {
        v26 = *(a1 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        sub_14BAE64(v27);
        *(a1 + 112) = v25;
      }

      if (*(a2 + 112))
      {
        v28 = *(a2 + 112);
      }

      else
      {
        v28 = &off_2771738;
      }

      sub_144EF20(v25, v28);
      if ((v23 & 2) == 0)
      {
LABEL_15:
        if ((v23 & 4) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_40;
      }
    }

    else if ((v23 & 2) == 0)
    {
      goto LABEL_15;
    }

    *(a1 + 16) |= 2u;
    v29 = *(a1 + 120);
    if (!v29)
    {
      v30 = *(a1 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      sub_14BAE64(v31);
      *(a1 + 120) = v29;
    }

    if (*(a2 + 120))
    {
      v32 = *(a2 + 120);
    }

    else
    {
      v32 = &off_2771738;
    }

    sub_144EF20(v29, v32);
    if ((v23 & 4) == 0)
    {
LABEL_16:
      if ((v23 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_48;
    }

LABEL_40:
    *(a1 + 16) |= 4u;
    v33 = *(a1 + 128);
    if (!v33)
    {
      v34 = *(a1 + 8);
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      if (v34)
      {
        v35 = *v35;
      }

      v33 = sub_14BF484(v35);
      *(a1 + 128) = v33;
    }

    if (*(a2 + 128))
    {
      v36 = *(a2 + 128);
    }

    else
    {
      v36 = &off_2773AC8;
    }

    sub_144F194(v33, v36);
    if ((v23 & 8) == 0)
    {
LABEL_17:
      if ((v23 & 0x10) == 0)
      {
LABEL_19:
        *(a1 + 16) |= v23;
        goto LABEL_20;
      }

LABEL_18:
      *(a1 + 140) = *(a2 + 140);
      goto LABEL_19;
    }

LABEL_48:
    *(a1 + 136) = *(a2 + 136);
    if ((v23 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_20:
  v24 = *(a2 + 8);
  if (v24)
  {

    sub_1957EF4((a1 + 8), (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1481104(uint64_t a1)
{
  v2 = *(a1 + 48);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_147F058(*(*(a1 + 56) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_148119C(a1 + 64);
  if (result)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      result = sub_144F560(*(a1 + 112));
      if (!result)
      {
        return result;
      }

      v6 = *(a1 + 16);
    }

    if ((v6 & 2) != 0)
    {
      result = sub_144F560(*(a1 + 120));
      if (!result)
      {
        return result;
      }

      v6 = *(a1 + 16);
    }

    if ((v6 & 4) == 0)
    {
      return 1;
    }

    result = sub_144F5D0(*(a1 + 128));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_148119C(uint64_t a1)
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
      result = sub_147F058(*(v3 + 48));
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

uint64_t sub_1481208(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26E5840;
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
    sub_15667DC((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
    sub_15667DC((a1 + 48), v12, (v11 + 8), v10, **(a1 + 64) - *(a1 + 56));
    v13 = *(a1 + 56) + v10;
    *(a1 + 56) = v13;
    v14 = *(a1 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = *(a2 + 88);
    v17 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_15667DC((a1 + 72), v17, (v16 + 8), v15, **(a1 + 88) - *(a1 + 80));
    v18 = *(a1 + 80) + v15;
    *(a1 + 80) = v18;
    v19 = *(a1 + 88);
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

  v21 = *(a2 + 16);
  if (v21)
  {
    operator new();
  }

  *(a1 + 96) = 0;
  if ((v21 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 104) = 0;
  if ((v21 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 112) = 0;
  return a1;
}

uint64_t sub_1481514(uint64_t a1)
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

  if (a1 != &off_27725C0)
  {
    v5 = *(a1 + 96);
    if (v5)
    {
      sub_14B3C28(v5);
      operator delete();
    }

    v6 = *(a1 + 104);
    if (v6)
    {
      sub_147FE94(v6);
      operator delete();
    }

    v7 = *(a1 + 112);
    if (v7)
    {
      sub_147FE94(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_1564A40((a1 + 72));
  sub_1564A40((a1 + 48));
  sub_1564A40((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1481628(uint64_t a1)
{
  sub_1481514(a1);

  operator delete();
}

uint64_t sub_1481660(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_147FFE4(v4);
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
      result = sub_147FFE4(v7);
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
      result = sub_147FFE4(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 16);
  if ((v11 & 7) != 0)
  {
    if (v11)
    {
      result = sub_148176C(*(v1 + 96));
      if ((v11 & 2) == 0)
      {
LABEL_16:
        if ((v11 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_16;
    }

    result = sub_147FFE4(*(v1 + 104));
    if ((v11 & 4) != 0)
    {
LABEL_17:
      result = sub_147FFE4(*(v1 + 112));
    }
  }

LABEL_18:
  v13 = *(v1 + 8);
  v12 = v1 + 8;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

uint64_t sub_148176C(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  if (*(result + 16))
  {
    result = sub_144E5CC(*(result + 40));
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

char *sub_14817CC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v43 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v43, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v43 + 1;
    v7 = *v43;
    if (*v43 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v43, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v43 + 2;
      }
    }

    v43 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 3)
    {
      if (v10 == 4)
      {
        if (v7 == 34)
        {
          *(a1 + 16) |= 4u;
          v12 = *(a1 + 112);
          if (!v12)
          {
            v27 = *(a1 + 8);
            v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
            if (v27)
            {
              v28 = *v28;
            }

            v12 = sub_14BCE94(v28);
            *(a1 + 112) = v12;
LABEL_47:
            v6 = v43;
          }

LABEL_48:
          v29 = sub_220E238(a3, v12, v6);
          goto LABEL_72;
        }
      }

      else if (v10 == 5)
      {
        if (v7 == 42)
        {
          v33 = v6 - 1;
          while (1)
          {
            v34 = (v33 + 1);
            v43 = v33 + 1;
            v35 = *(a1 + 64);
            if (v35 && (v36 = *(a1 + 56), v36 < *v35))
            {
              *(a1 + 56) = v36 + 1;
              v37 = *&v35[2 * v36 + 2];
            }

            else
            {
              v38 = sub_14BCE94(*(a1 + 48));
              v37 = sub_19593CC(a1 + 48, v38);
              v34 = v43;
            }

            v33 = sub_220E238(a3, v37, v34);
            v43 = v33;
            if (!v33)
            {
              return 0;
            }

            if (*a3 <= v33 || *v33 != 42)
            {
              goto LABEL_73;
            }
          }
        }
      }

      else if (v10 == 6 && v7 == 50)
      {
        v15 = v6 - 1;
        while (1)
        {
          v16 = (v15 + 1);
          v43 = v15 + 1;
          v17 = *(a1 + 88);
          if (v17 && (v18 = *(a1 + 80), v18 < *v17))
          {
            *(a1 + 80) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = sub_14BCE94(*(a1 + 72));
            v19 = sub_19593CC(a1 + 72, v20);
            v16 = v43;
          }

          v15 = sub_220E238(a3, v19, v16);
          v43 = v15;
          if (!v15)
          {
            return 0;
          }

          if (*a3 <= v15 || *v15 != 50)
          {
            goto LABEL_73;
          }
        }
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        v21 = v6 - 1;
        while (1)
        {
          v22 = (v21 + 1);
          v43 = v21 + 1;
          v23 = *(a1 + 40);
          if (v23 && (v24 = *(a1 + 32), v24 < *v23))
          {
            *(a1 + 32) = v24 + 1;
            v25 = *&v23[2 * v24 + 2];
          }

          else
          {
            v26 = sub_14BCE94(*(a1 + 24));
            v25 = sub_19593CC(a1 + 24, v26);
            v22 = v43;
          }

          v21 = sub_220E238(a3, v25, v22);
          v43 = v21;
          if (!v21)
          {
            return 0;
          }

          if (*a3 <= v21 || *v21 != 10)
          {
            goto LABEL_73;
          }
        }
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 1u;
        v30 = *(a1 + 96);
        if (!v30)
        {
          v31 = *(a1 + 8);
          v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
          if (v31)
          {
            v32 = *v32;
          }

          v30 = sub_14BF2AC(v32);
          *(a1 + 96) = v30;
          v6 = v43;
        }

        v29 = sub_220E2C8(a3, v30, v6);
        goto LABEL_72;
      }
    }

    else if (v10 == 3 && v7 == 26)
    {
      *(a1 + 16) |= 2u;
      v12 = *(a1 + 104);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_14BCE94(v14);
        *(a1 + 104) = v12;
        goto LABEL_47;
      }

      goto LABEL_48;
    }

    if (v7)
    {
      v39 = (v7 & 7) == 4;
    }

    else
    {
      v39 = 1;
    }

    if (v39)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v43;
      }

      return 0;
    }

    v40 = *(a1 + 8);
    if (v40)
    {
      v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v41 = sub_11F1920((a1 + 8));
      v6 = v43;
    }

    v29 = sub_1952690(v7, v41, v6, a3);
LABEL_72:
    v43 = v29;
    if (!v29)
    {
      return 0;
    }

LABEL_73:
    ;
  }

  return v43;
}

char *sub_1481B84(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_1480700(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v12 = *(a1 + 96);
    *__dst = 18;
    v13 = *(v12 + 20);
    __dst[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, __dst + 1);
    }

    else
    {
      v14 = __dst + 2;
    }

    __dst = sub_14B3F58(v12, v14, a3);
    if ((v11 & 2) == 0)
    {
LABEL_11:
      if ((v11 & 4) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_11;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v15 = *(a1 + 104);
  *__dst = 26;
  v16 = *(v15 + 20);
  __dst[1] = v16;
  if (v16 > 0x7F)
  {
    v17 = sub_19575D0(v16, __dst + 1);
  }

  else
  {
    v17 = __dst + 2;
  }

  __dst = sub_1480700(v15, v17, a3);
  if ((v11 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v18 = *(a1 + 112);
    *__dst = 34;
    v19 = *(v18 + 20);
    __dst[1] = v19;
    if (v19 > 0x7F)
    {
      v20 = sub_19575D0(v19, __dst + 1);
    }

    else
    {
      v20 = __dst + 2;
    }

    __dst = sub_1480700(v18, v20, a3);
  }

LABEL_31:
  v21 = *(a1 + 56);
  if (v21)
  {
    for (j = 0; j != v21; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v23 = *(*(a1 + 64) + 8 * j + 8);
      *__dst = 42;
      v24 = *(v23 + 20);
      __dst[1] = v24;
      if (v24 > 0x7F)
      {
        v25 = sub_19575D0(v24, __dst + 1);
      }

      else
      {
        v25 = __dst + 2;
      }

      __dst = sub_1480700(v23, v25, a3);
    }
  }

  v26 = *(a1 + 80);
  if (v26)
  {
    for (k = 0; k != v26; ++k)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v28 = *(*(a1 + 88) + 8 * k + 8);
      *__dst = 50;
      v29 = *(v28 + 20);
      __dst[1] = v29;
      if (v29 > 0x7F)
      {
        v30 = sub_19575D0(v29, __dst + 1);
      }

      else
      {
        v30 = __dst + 2;
      }

      __dst = sub_1480700(v28, v30, a3);
    }
  }

  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return __dst;
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

  if ((*a3 - __dst) >= v34)
  {
    v36 = v34;
    memcpy(__dst, v35, v34);
    __dst += v36;
    return __dst;
  }

  return sub_1957130(a3, v35, v34, __dst);
}

uint64_t sub_1481F08(uint64_t a1)
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
      v7 = sub_1480BE8(v6);
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
      v14 = sub_1480BE8(v13);
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
      v21 = sub_1480BE8(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 16);
  if ((v22 & 7) != 0)
  {
    if (v22)
    {
      v26 = sub_14B4110(*(a1 + 96));
      v16 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v22 & 2) == 0)
      {
LABEL_24:
        if ((v22 & 4) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    else if ((v22 & 2) == 0)
    {
      goto LABEL_24;
    }

    v27 = sub_1480BE8(*(a1 + 104));
    v16 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 4) != 0)
    {
LABEL_25:
      v23 = sub_1480BE8(*(a1 + 112));
      v16 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_26:
  v24 = *(a1 + 8);
  if (v24)
  {
    v28 = v24 & 0xFFFFFFFFFFFFFFFCLL;
    v29 = *((v24 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v29 < 0)
    {
      v29 = *(v28 + 16);
    }

    v16 += v29;
  }

  *(a1 + 20) = v16;
  return v16;
}

void sub_14820F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15667DC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_15667DC((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_15667DC((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if ((v19 & 7) != 0)
  {
    if (v19)
    {
      *(a1 + 16) |= 1u;
      v20 = *(a1 + 96);
      if (!v20)
      {
        v21 = *(a1 + 8);
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        v20 = sub_14BF2AC(v22);
        *(a1 + 96) = v20;
      }

      if (*(a2 + 96))
      {
        v23 = *(a2 + 96);
      }

      else
      {
        v23 = &off_27739D8;
      }

      sub_1482354(v20, v23);
    }

    if ((v19 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v24 = *(a1 + 104);
      if (!v24)
      {
        v25 = *(a1 + 8);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        v24 = sub_14BCE94(v26);
        *(a1 + 104) = v24;
      }

      if (*(a2 + 104))
      {
        v27 = *(a2 + 104);
      }

      else
      {
        v27 = &off_2772530;
      }

      sub_1480E2C(v24, v27);
    }

    if ((v19 & 4) != 0)
    {
      *(a1 + 16) |= 4u;
      v28 = *(a1 + 112);
      if (!v28)
      {
        v29 = *(a1 + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        v28 = sub_14BCE94(v30);
        *(a1 + 112) = v28;
      }

      if (*(a2 + 112))
      {
        v31 = *(a2 + 112);
      }

      else
      {
        v31 = &off_2772530;
      }

      sub_1480E2C(v28, v31);
    }
  }

  v32 = *(a2 + 8);
  if (v32)
  {

    sub_1957EF4((a1 + 8), (v32 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1482354(uint64_t a1, uint64_t a2)
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

      sub_14BAE64(v11);
      *(a1 + 40) = v9;
      v8 = *(a2 + 40);
    }

    if (v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = &off_2771738;
    }

    sub_144EF20(v9, v12);
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_148244C(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_1481104(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 56);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = sub_1481104(*(*(a1 + 64) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 80);
  while (v8 >= 1)
  {
    v9 = v8 - 1;
    v10 = sub_1481104(*(*(a1 + 88) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(a1 + 96);
    if (*(v13 + 16))
    {
      result = sub_144F560(*(v13 + 40));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 16);
    }
  }

  if ((v12 & 2) != 0)
  {
    result = sub_1481104(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 16);
  }

  if ((v12 & 4) == 0)
  {
    return 1;
  }

  result = sub_1481104(*(a1 + 112));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1482534(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1482574(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E58C0;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return a1;
}

void sub_14825E8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1482618(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1564AC4(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14826A0(void *a1)
{
  sub_1482618(a1);

  operator delete();
}

unsigned __int8 *sub_14826D8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_147D580(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  if ((*(a1 + 40) & 7) != 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 72) = 0;
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 32) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_1482774(uint64_t a1, char *a2, int32x2_t *a3)
{
  v31 = a2;
  if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
  {
    return v31;
  }

  while (1)
  {
    v6 = v31 + 1;
    v7 = *v31;
    if (*v31 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v31, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v31 + 2;
      }
    }

    v31 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 != 3)
      {
        if (v10 != 4 || v7 != 32)
        {
          goto LABEL_46;
        }

        v16 = v6 + 1;
        v15 = *v6;
        if (v15 < 0)
        {
          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if (v17 < 0)
          {
            v31 = sub_19587DC(v6, v15);
            if (!v31)
            {
              return 0;
            }

            goto LABEL_27;
          }

          v16 = v6 + 2;
        }

        v31 = v16;
LABEL_27:
        if (v15 > 7)
        {
          sub_12E8500();
        }

        else
        {
          *(a1 + 40) |= 4u;
          *(a1 + 80) = v15;
        }

        goto LABEL_56;
      }

      if (v7 != 24)
      {
        goto LABEL_46;
      }

      v25 = v6 + 1;
      v24 = *v6;
      if (v24 < 0)
      {
        v26 = *v25;
        v24 = (v26 << 7) + v24 - 128;
        if (v26 < 0)
        {
          v31 = sub_19587DC(v6, v24);
          if (!v31)
          {
            return 0;
          }

          goto LABEL_44;
        }

        v25 = v6 + 2;
      }

      v31 = v25;
LABEL_44:
      if (v24 > 7)
      {
        sub_1313740();
      }

      else
      {
        *(a1 + 40) |= 2u;
        *(a1 + 76) = v24;
      }

      goto LABEL_56;
    }

    if (v10 == 1)
    {
      if (v7 == 10)
      {
        v18 = v6 - 1;
        while (1)
        {
          v19 = (v18 + 1);
          v31 = v18 + 1;
          v20 = *(a1 + 64);
          if (v20 && (v21 = *(a1 + 56), v21 < *v20))
          {
            *(a1 + 56) = v21 + 1;
            v22 = *&v20[2 * v21 + 2];
          }

          else
          {
            sub_14BCC7C(*(a1 + 48));
            v22 = sub_19593CC(a1 + 48, v23);
            v19 = v31;
          }

          v18 = sub_220E358(a3, v22, v19);
          v31 = v18;
          if (!v18)
          {
            return 0;
          }

          if (*a3 <= v18 || *v18 != 10)
          {
            goto LABEL_56;
          }
        }
      }
    }

    else if (v10 == 2 && v7 == 16)
    {
      v13 = v6 + 1;
      v12 = *v6;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if (v14 < 0)
      {
        v31 = sub_19587DC(v6, v12);
        if (!v31)
        {
          return 0;
        }
      }

      else
      {
        v13 = v6 + 2;
LABEL_17:
        v31 = v13;
      }

      if (v12 > 7)
      {
        sub_12E8418();
      }

      else
      {
        *(a1 + 40) |= 1u;
        *(a1 + 72) = v12;
      }

      goto LABEL_56;
    }

LABEL_46:
    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    if (v7 - 8000 > 0x647)
    {
      v29 = *(a1 + 8);
      if (v29)
      {
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v30 = sub_11F1920((a1 + 8));
        v6 = v31;
      }

      v28 = sub_1952690(v7, v30, v6, a3);
    }

    else
    {
      v28 = sub_19525AC((a1 + 16), v7, v6, &off_2772638, (a1 + 8), a3);
    }

    v31 = v28;
    if (!v28)
    {
      return 0;
    }

LABEL_56:
    if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
    {
      return v31;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return v31;
  }

  return 0;
}

char *sub_1482ACC(uint64_t a1, char *a2, _DWORD *a3)
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

      a2 = sub_147D8A8(v8, v10, a3);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v13 = *(a1 + 72);
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
          a2 = (v14 >> 7);
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

  if ((v11 & 2) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v17 = *(a1 + 76);
    *v12 = 24;
    v12[1] = v17;
    if (v17 > 0x7F)
    {
      v12[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v12[2] = v17 >> 7;
      v16 = v12 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v12) = v12[2];
        do
        {
          *(v16 - 1) = v12 | 0x80;
          v12 = (v18 >> 7);
          *v16++ = v18 >> 7;
          v19 = v18 >> 14;
          v18 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v16 = v12 + 2;
    }
  }

  else
  {
    v16 = v12;
  }

  if ((v11 & 4) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v21 = *(a1 + 80);
    *v16 = 32;
    v16[1] = v21;
    if (v21 > 0x7F)
    {
      v16[1] = v21 | 0x80;
      v22 = v21 >> 7;
      v16[2] = v21 >> 7;
      v20 = v16 + 3;
      if (v21 >= 0x4000)
      {
        LOBYTE(v23) = v16[2];
        do
        {
          *(v20 - 1) = v23 | 0x80;
          v23 = v22 >> 7;
          *v20++ = v22 >> 7;
          v24 = v22 >> 14;
          v22 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v20 = v16 + 2;
    }
  }

  else
  {
    v20 = v16;
  }

  if (*(a1 + 26))
  {
    v20 = sub_1953428(a1 + 16, 1000, 1201, v20, a3);
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

uint64_t sub_1482DBC(uint64_t a1)
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
      v9 = sub_147DB40(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if ((v10 & 7) != 0)
  {
    if (v10)
    {
      v11 = *(a1 + 72);
      if (v11 < 0)
      {
        v12 = 11;
      }

      else
      {
        v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v4 += v12;
      if ((v10 & 2) == 0)
      {
LABEL_10:
        if ((v10 & 4) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_20;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_10;
    }

    v13 = *(a1 + 76);
    if (v13 < 0)
    {
      v14 = 11;
    }

    else
    {
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v14;
    if ((v10 & 4) != 0)
    {
LABEL_20:
      v15 = *(a1 + 80);
      if (v15 < 0)
      {
        v16 = 11;
      }

      else
      {
        v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v4 += v16;
    }
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

    v4 += v20;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_1482F1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1566868((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 7) != 0)
  {
    if (v9)
    {
      *(a1 + 72) = *(a2 + 72);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
LABEL_9:
          *(a1 + 40) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        *(a1 + 80) = *(a2 + 80);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 76) = *(a2 + 76);
    if ((v9 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  sub_225EA0C(a1 + 16, a2 + 16);
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_148302C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {

    return sub_1483078(a1 + 48);
  }

  return result;
}

BOOL sub_1483078(uint64_t a1)
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
      result = sub_16E6614(*(v3 + 24));
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

void *sub_14830E4(void *a1)
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

void sub_1483158(void *a1)
{
  sub_14830E4(a1);

  operator delete();
}

uint64_t sub_1483190(uint64_t a1)
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

char *sub_14831B4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v21 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v21, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v21 + 1;
    v7 = *v21;
    if (*v21 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v21, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v21 + 2;
      }
    }

    v21 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 16)
      {
        v15 = v6 + 1;
        v14 = *v6;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if (v16 < 0)
        {
          v21 = sub_19587DC(v6, v14);
          if (!v21)
          {
            return 0;
          }
        }

        else
        {
          v15 = v6 + 2;
LABEL_24:
          v21 = v15;
        }

        if (v14 > 3)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 28) = v14;
        }

        continue;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 8)
    {
      v18 = v6 + 1;
      v17 = *v6;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      v19 = *v18;
      v17 = (v19 << 7) + v17 - 128;
      if (v19 < 0)
      {
        v21 = sub_19587DC(v6, v17);
        if (!v21)
        {
          return 0;
        }
      }

      else
      {
        v18 = v6 + 2;
LABEL_30:
        v21 = v18;
      }

      if (v17 > 3)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 24) = v17;
      }

      continue;
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
        return v21;
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
      v6 = v21;
    }

    v21 = sub_1952690(v7, v13, v6, a3);
    if (!v21)
    {
      return 0;
    }
  }

  return v21;
}

char *sub_14833A4(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_1483554(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_14;
  }

  if (v1)
  {
    v3 = *(a1 + 24);
    if (v3 < 0)
    {
      v2 = 11;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v4 = *(a1 + 28);
  if (v4 < 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v5;
LABEL_14:
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

  *(a1 + 20) = v2;
  return v2;
}

void *sub_1483624(void *a1)
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

  sub_14836B4(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_144A1C8(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_14836B4(uint64_t result)
{
  if (result != &off_27726B0)
  {
    v1 = result;
    v2 = *(result + 48);
    if (v2)
    {
      sub_145C090(v2);
      operator delete();
    }

    v3 = v1[7];
    if (v3)
    {
      sub_1458388(v3);
      operator delete();
    }

    v4 = v1[8];
    if (v4)
    {
      sub_1458388(v4);
      operator delete();
    }

    v5 = v1[9];
    if (v5)
    {
      sub_1481514(v5);
      operator delete();
    }

    v6 = v1[10];
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }

    v7 = v1[11];
    if (v7)
    {
      sub_14B64B0(v7);
      operator delete();
    }

    v8 = v1[12];
    if (v8)
    {
      sub_14B64B0(v8);
      operator delete();
    }

    v9 = v1[13];
    if (v9)
    {
      sub_14830E4(v9);
      operator delete();
    }

    v10 = v1[14];
    if (v10)
    {
      sub_1458388(v10);
      operator delete();
    }

    result = v1[15];
    if (result)
    {
      sub_1458388(result);

      operator delete();
    }
  }

  return result;
}

void sub_1483818(void *a1)
{
  sub_1483624(a1);

  operator delete();
}

uint64_t sub_1483850(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_144E5CC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (!v5)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    result = sub_145C210(*(v1 + 48));
    if ((v5 & 2) == 0)
    {
LABEL_8:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

  result = sub_144E5CC(*(v1 + 56));
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = sub_144E5CC(*(v1 + 64));
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = sub_1481660(*(v1 + 72));
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_29:
    result = sub_144E6A8(*(v1 + 88));
    if ((v5 & 0x40) == 0)
    {
LABEL_13:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_28:
  result = sub_144E5CC(*(v1 + 80));
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_12:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_30:
  result = sub_144E6A8(*(v1 + 96));
  if ((v5 & 0x80) != 0)
  {
LABEL_14:
    result = sub_1483190(*(v1 + 104));
  }

LABEL_15:
  if ((v5 & 0x300) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      result = sub_144E5CC(*(v1 + 112));
    }

    if ((v5 & 0x200) != 0)
    {
      result = sub_144E5CC(*(v1 + 120));
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

char *sub_148397C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v54 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v54, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v54 + 1;
    v7 = *v54;
    if (*v54 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v54, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v54 + 2;
      }
    }

    v54 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 5)
    {
      if (v7 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v7 == 10)
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

              sub_14BB174(v28);
              v26 = v29;
              *(a1 + 48) = v29;
              v6 = v54;
            }

            v14 = sub_220E3E8(a3, v26, v6);
            goto LABEL_98;
          }
        }

        else if (v10 == 2 && v7 == 18)
        {
          *(a1 + 16) |= 2u;
          v15 = *(a1 + 56);
          if (!v15)
          {
            v23 = *(a1 + 8);
            v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
            if (v23)
            {
              v24 = *v24;
            }

            sub_14BAE64(v24);
            v15 = v25;
            *(a1 + 56) = v25;
LABEL_72:
            v6 = v54;
          }

LABEL_73:
          v14 = sub_22095B8(a3, v15, v6);
          goto LABEL_98;
        }
      }

      else if (v10 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 4u;
          v15 = *(a1 + 64);
          if (!v15)
          {
            v39 = *(a1 + 8);
            v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
            if (v39)
            {
              v40 = *v40;
            }

            sub_14BAE64(v40);
            v15 = v41;
            *(a1 + 64) = v41;
            goto LABEL_72;
          }

          goto LABEL_73;
        }
      }

      else if (v10 == 4)
      {
        if (v7 == 34)
        {
          *(a1 + 16) |= 8u;
          v30 = *(a1 + 72);
          if (!v30)
          {
            v31 = *(a1 + 8);
            v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
            if (v31)
            {
              v32 = *v32;
            }

            v30 = sub_14BCF4C(v32);
            *(a1 + 72) = v30;
            v6 = v54;
          }

          v14 = sub_2209D08(a3, v30, v6);
          goto LABEL_98;
        }
      }

      else if (v10 == 5 && v7 == 42)
      {
        *(a1 + 16) |= 0x10u;
        v15 = *(a1 + 80);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          sub_14BAE64(v17);
          v15 = v18;
          *(a1 + 80) = v18;
          goto LABEL_72;
        }

        goto LABEL_73;
      }
    }

    else if (v7 >> 3 > 8)
    {
      if (v10 == 9)
      {
        if (v7 == 74)
        {
          v44 = v6 - 1;
          while (1)
          {
            v45 = (v44 + 1);
            v54 = v44 + 1;
            v46 = *(a1 + 40);
            if (v46 && (v47 = *(a1 + 32), v47 < *v46))
            {
              *(a1 + 32) = v47 + 1;
              v48 = *&v46[2 * v47 + 2];
            }

            else
            {
              sub_14BAE64(*(a1 + 24));
              v48 = sub_19593CC(a1 + 24, v49);
              v45 = v54;
            }

            v44 = sub_22095B8(a3, v48, v45);
            v54 = v44;
            if (!v44)
            {
              return 0;
            }

            if (*a3 <= v44 || *v44 != 74)
            {
              goto LABEL_99;
            }
          }
        }
      }

      else if (v10 == 10)
      {
        if (v7 == 82)
        {
          *(a1 + 16) |= 0x100u;
          v15 = *(a1 + 112);
          if (!v15)
          {
            v36 = *(a1 + 8);
            v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
            if (v36)
            {
              v37 = *v37;
            }

            sub_14BAE64(v37);
            v15 = v38;
            *(a1 + 112) = v38;
            goto LABEL_72;
          }

          goto LABEL_73;
        }
      }

      else if (v10 == 11 && v7 == 90)
      {
        *(a1 + 16) |= 0x200u;
        v15 = *(a1 + 120);
        if (!v15)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          sub_14BAE64(v20);
          v15 = v21;
          *(a1 + 120) = v21;
          goto LABEL_72;
        }

        goto LABEL_73;
      }
    }

    else if (v10 == 6)
    {
      if (v7 == 50)
      {
        *(a1 + 16) |= 0x20u;
        v33 = *(a1 + 88);
        if (!v33)
        {
          v42 = *(a1 + 8);
          v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
          if (v42)
          {
            v43 = *v43;
          }

          v33 = sub_14BF484(v43);
          *(a1 + 88) = v33;
LABEL_79:
          v6 = v54;
        }

LABEL_80:
        v14 = sub_2209138(a3, v33, v6);
        goto LABEL_98;
      }
    }

    else if (v10 == 7)
    {
      if (v7 == 58)
      {
        *(a1 + 16) |= 0x40u;
        v33 = *(a1 + 96);
        if (!v33)
        {
          v34 = *(a1 + 8);
          v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
          if (v34)
          {
            v35 = *v35;
          }

          v33 = sub_14BF484(v35);
          *(a1 + 96) = v33;
          goto LABEL_79;
        }

        goto LABEL_80;
      }
    }

    else if (v10 == 8 && v7 == 66)
    {
      *(a1 + 16) |= 0x80u;
      v11 = *(a1 + 104);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_14BD058(v13);
        *(a1 + 104) = v11;
        v6 = v54;
      }

      v14 = sub_220E478(a3, v11, v6);
      goto LABEL_98;
    }

    if (v7)
    {
      v50 = (v7 & 7) == 4;
    }

    else
    {
      v50 = 1;
    }

    if (v50)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v54;
      }

      return 0;
    }

    v51 = *(a1 + 8);
    if (v51)
    {
      v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v52 = sub_11F1920((a1 + 8));
      v6 = v54;
    }

    v14 = sub_1952690(v7, v52, v6, a3);
LABEL_98:
    v54 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_99:
    ;
  }

  return v54;
}

char *sub_1483E54(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_145C564(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
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
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_22:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 64);
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

  v4 = sub_14589F4(v13, v15, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_28:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v16 = *(a1 + 72);
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

  v4 = sub_1481B84(v16, v18, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_34:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v19 = *(a1 + 80);
  *v4 = 42;
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

  v4 = sub_14589F4(v19, v21, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_40:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v22 = *(a1 + 88);
  *v4 = 50;
  v23 = *(v22 + 44);
  v4[1] = v23;
  if (v23 > 0x7F)
  {
    v24 = sub_19575D0(v23, v4 + 1);
  }

  else
  {
    v24 = v4 + 2;
  }

  v4 = sub_14B6D24(v22, v24, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

LABEL_46:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v25 = *(a1 + 96);
  *v4 = 58;
  v26 = *(v25 + 44);
  v4[1] = v26;
  if (v26 > 0x7F)
  {
    v27 = sub_19575D0(v26, v4 + 1);
  }

  else
  {
    v27 = v4 + 2;
  }

  v4 = sub_14B6D24(v25, v27, a3);
  if ((v6 & 0x80) != 0)
  {
LABEL_52:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v28 = *(a1 + 104);
    *v4 = 66;
    v29 = *(v28 + 20);
    v4[1] = v29;
    if (v29 > 0x7F)
    {
      v30 = sub_19575D0(v29, v4 + 1);
    }

    else
    {
      v30 = v4 + 2;
    }

    v4 = sub_14833A4(v28, v30, a3);
  }

LABEL_58:
  v31 = *(a1 + 32);
  if (v31)
  {
    for (i = 0; i != v31; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v33 = *(*(a1 + 40) + 8 * i + 8);
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

      v4 = sub_14589F4(v33, v35, a3);
    }
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v36 = *(a1 + 112);
    *v4 = 82;
    v37 = *(v36 + 20);
    v4[1] = v37;
    if (v37 > 0x7F)
    {
      v38 = sub_19575D0(v37, v4 + 1);
    }

    else
    {
      v38 = v4 + 2;
    }

    v4 = sub_14589F4(v36, v38, a3);
  }

  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v39 = *(a1 + 120);
    *v4 = 90;
    v40 = *(v39 + 20);
    v4[1] = v40;
    if (v40 > 0x7F)
    {
      v41 = sub_19575D0(v40, v4 + 1);
    }

    else
    {
      v41 = v4 + 2;
    }

    v4 = sub_14589F4(v39, v41, a3);
  }

  v42 = *(a1 + 8);
  if ((v42 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v45)
  {
    v47 = v45;
    memcpy(v4, v46, v45);
    v4 += v47;
    return v4;
  }

  return sub_1957130(a3, v46, v45, v4);
}

uint64_t sub_14843A0(uint64_t a1)
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
      v7 = sub_1458DB4(v6);
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
    v14 = sub_145C7DC(*(a1 + 48));
    v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_28;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v15 = sub_1458DB4(*(a1 + 56));
  v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = sub_1458DB4(*(a1 + 64));
  v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  v17 = sub_1481F08(*(a1 + 72));
  v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_31:
    v19 = sub_14B71B8(*(a1 + 88));
    v2 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x40) == 0)
    {
LABEL_17:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_30:
  v18 = sub_1458DB4(*(a1 + 80));
  v2 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_32:
  v20 = sub_14B71B8(*(a1 + 96));
  v2 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x80) != 0)
  {
LABEL_18:
    v9 = sub_1483554(*(a1 + 104));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v8 & 0x300) != 0)
  {
    if ((v8 & 0x100) != 0)
    {
      v10 = sub_1458DB4(*(a1 + 112));
      v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 0x200) != 0)
    {
      v11 = sub_1458DB4(*(a1 + 120));
      v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v12 = *(a1 + 8);
  if (v12)
  {
    v21 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v2 += v22;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_148465C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_144A454((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
    goto LABEL_79;
  }

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

      sub_14BB174(v12);
      *(a1 + 48) = v10;
    }

    if (*(a2 + 48))
    {
      v13 = *(a2 + 48);
    }

    else
    {
      v13 = &off_27718F8;
    }

    sub_145C95C(v10, v13);
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

      sub_14BAE64(v16);
      *(a1 + 56) = v14;
    }

    if (*(a2 + 56))
    {
      v17 = *(a2 + 56);
    }

    else
    {
      v17 = &off_2771738;
    }

    sub_144EF20(v14, v17);
    if ((v9 & 4) == 0)
    {
LABEL_16:
      if ((v9 & 8) == 0)
      {
        goto LABEL_17;
      }

LABEL_35:
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

        v22 = sub_14BCF4C(v24);
        *(a1 + 72) = v22;
      }

      if (*(a2 + 72))
      {
        v25 = *(a2 + 72);
      }

      else
      {
        v25 = &off_27725C0;
      }

      sub_14820F8(v22, v25);
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_43;
    }
  }

  else if ((v9 & 4) == 0)
  {
    goto LABEL_16;
  }

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

    sub_14BAE64(v20);
    *(a1 + 64) = v18;
  }

  if (*(a2 + 64))
  {
    v21 = *(a2 + 64);
  }

  else
  {
    v21 = &off_2771738;
  }

  sub_144EF20(v18, v21);
  if ((v9 & 8) != 0)
  {
    goto LABEL_35;
  }

LABEL_17:
  if ((v9 & 0x10) != 0)
  {
LABEL_43:
    *(a1 + 16) |= 0x10u;
    v26 = *(a1 + 80);
    if (!v26)
    {
      v27 = *(a1 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      sub_14BAE64(v28);
      *(a1 + 80) = v26;
    }

    if (*(a2 + 80))
    {
      v29 = *(a2 + 80);
    }

    else
    {
      v29 = &off_2771738;
    }

    sub_144EF20(v26, v29);
  }

LABEL_51:
  if ((v9 & 0x20) != 0)
  {
    *(a1 + 16) |= 0x20u;
    v30 = *(a1 + 88);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_14BF484(v32);
      *(a1 + 88) = v30;
    }

    if (*(a2 + 88))
    {
      v33 = *(a2 + 88);
    }

    else
    {
      v33 = &off_2773AC8;
    }

    sub_144F194(v30, v33);
    if ((v9 & 0x40) == 0)
    {
LABEL_53:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_71;
    }
  }

  else if ((v9 & 0x40) == 0)
  {
    goto LABEL_53;
  }

  *(a1 + 16) |= 0x40u;
  v34 = *(a1 + 96);
  if (!v34)
  {
    v35 = *(a1 + 8);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    v34 = sub_14BF484(v36);
    *(a1 + 96) = v34;
  }

  if (*(a2 + 96))
  {
    v37 = *(a2 + 96);
  }

  else
  {
    v37 = &off_2773AC8;
  }

  sub_144F194(v34, v37);
  if ((v9 & 0x80) != 0)
  {
LABEL_71:
    *(a1 + 16) |= 0x80u;
    v38 = *(a1 + 104);
    if (!v38)
    {
      v39 = *(a1 + 8);
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
      if (v39)
      {
        v40 = *v40;
      }

      v38 = sub_14BD058(v40);
      *(a1 + 104) = v38;
    }

    if (*(a2 + 104))
    {
      v41 = *(a2 + 104);
    }

    else
    {
      v41 = &off_2772690;
    }

    sub_128F8FC(v38, v41);
  }

LABEL_79:
  if ((v9 & 0x300) != 0)
  {
    if ((v9 & 0x100) != 0)
    {
      *(a1 + 16) |= 0x100u;
      v42 = *(a1 + 112);
      if (!v42)
      {
        v43 = *(a1 + 8);
        v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
        if (v43)
        {
          v44 = *v44;
        }

        sub_14BAE64(v44);
        *(a1 + 112) = v42;
      }

      if (*(a2 + 112))
      {
        v45 = *(a2 + 112);
      }

      else
      {
        v45 = &off_2771738;
      }

      sub_144EF20(v42, v45);
    }

    if ((v9 & 0x200) != 0)
    {
      *(a1 + 16) |= 0x200u;
      v46 = *(a1 + 120);
      if (!v46)
      {
        v47 = *(a1 + 8);
        v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
        if (v47)
        {
          v48 = *v48;
        }

        sub_14BAE64(v48);
        *(a1 + 120) = v46;
      }

      if (*(a2 + 120))
      {
        v49 = *(a2 + 120);
      }

      else
      {
        v49 = &off_2771738;
      }

      sub_144EF20(v46, v49);
    }
  }

  v50 = *(a2 + 8);
  if (v50)
  {

    sub_1957EF4((a1 + 8), (v50 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1484A28(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_144F560(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    result = sub_145CB24(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 2) != 0)
  {
    result = sub_144F560(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 4) != 0)
  {
    result = sub_144F560(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 8) != 0)
  {
    result = sub_148244C(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x10) != 0)
  {
    result = sub_144F560(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x20) != 0)
  {
    result = sub_144F5D0(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x40) != 0)
  {
    result = sub_144F5D0(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x100) != 0)
  {
    result = sub_144F560(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x200) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 120));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1484B3C(uint64_t a1)
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
  if (a1 != &off_2772730)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_147CA9C(v6);
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

void sub_1484BF4(uint64_t a1)
{
  sub_1484B3C(a1);

  operator delete();
}

uint64_t sub_1484C2C(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_147CC14(*(result + 24));
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

char *sub_1484C88(uint64_t a1, char *a2, int32x2_t *a3)
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

        sub_14BCBFC(v16);
        v14 = v17;
        *(a1 + 24) = v17;
        v6 = v19;
      }

      v13 = sub_220E508(a3, v14, v6);
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