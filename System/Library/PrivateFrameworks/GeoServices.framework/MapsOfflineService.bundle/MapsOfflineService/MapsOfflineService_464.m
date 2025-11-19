uint64_t sub_18CED10(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    v3 = *(a1 + 120);
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

  if ((v2 & 8) != 0)
  {
    result = sub_140441C(*(a1 + 128));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = sub_1447C10(*(a1 + 136));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = sub_140441C(*(a1 + 152));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) == 0)
  {
    return 1;
  }

  result = sub_18CBF50(*(a1 + 168));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18CEDB4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_27196D8;
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

  *(a1 + 32) = &qword_278E990;
  if ((v5 & 2) != 0)
  {
    v8 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v8 = *v8;
    }

    sub_194EA1C((a1 + 32), (*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL), v8);
    v5 = *(a2 + 16);
  }

  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t sub_18CEF20(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (a1 != &off_278A128)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_1869B9C(v6);
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

void sub_18CF008(uint64_t a1)
{
  sub_18CEF20(a1);

  operator delete();
}

unsigned __int8 *sub_18CF040(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v5 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_14;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  **v5 = 0;
  *(v5 + 8) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  v6 = *(result + 4) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    result = sub_1869C8C(*(result + 5));
    goto LABEL_6;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  v4 = v1[8];
  v3 = v1 + 8;
  *(v3 + 20) = 0;
  *(v3 + 11) = 15;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_18CF11C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 == 10)
      {
        *(a1 + 16) |= 1u;
        v18 = *(a1 + 8);
        v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v19 = *v19;
        }

        v20 = (a1 + 24);
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (v11 == 2)
    {
      if (v8 == 18)
      {
        *(a1 + 16) |= 4u;
        v24 = *(a1 + 40);
        if (!v24)
        {
          v25 = *(a1 + 8);
          v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
          if (v25)
          {
            v26 = *v26;
          }

          v24 = sub_18FF354(v26);
          *(a1 + 40) = v24;
          v7 = *v39;
        }

        v27 = sub_2201670(a3, v24, v7);
        goto LABEL_52;
      }

      goto LABEL_45;
    }

    if (v11 != 3 || v8 != 24)
    {
      goto LABEL_45;
    }

    v5 |= 0x20u;
    LODWORD(v13) = *v7;
    if ((v13 & 0x80000000) == 0)
    {
      v14 = v7 + 1;
LABEL_57:
      *v39 = v14;
      *(a1 + 52) = v13;
      goto LABEL_53;
    }

    v13 = (v7[1] << 7) + v13 - 128;
    if ((v7[1] & 0x80000000) == 0)
    {
      v14 = v7 + 2;
      goto LABEL_57;
    }

    v37 = sub_19587DC(v7, v13);
    *v39 = v37;
    *(a1 + 52) = v38;
    if (!v37)
    {
      goto LABEL_67;
    }

LABEL_53:
    if (sub_195ADC0(a3, v39, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_45;
    }

    v5 |= 8u;
    v22 = (v7 + 1);
    v21 = *v7;
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }

    v23 = *v22;
    v21 = (v23 << 7) + v21 - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v22 = (v7 + 2);
LABEL_33:
      *v39 = v22;
      *(a1 + 48) = v21 != 0;
      goto LABEL_53;
    }

    v33 = sub_19587DC(v7, v21);
    *v39 = v33;
    *(a1 + 48) = v34 != 0;
    if (!v33)
    {
      goto LABEL_67;
    }

    goto LABEL_53;
  }

  if (v11 != 5)
  {
    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_45;
    }

    v5 |= 0x10u;
    v16 = (v7 + 1);
    v15 = *v7;
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v17 = *v16;
    v15 = (v17 << 7) + v15 - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v16 = (v7 + 2);
LABEL_24:
      *v39 = v16;
      *(a1 + 49) = v15 != 0;
      goto LABEL_53;
    }

    v35 = sub_19587DC(v7, v15);
    *v39 = v35;
    *(a1 + 49) = v36 != 0;
    if (!v35)
    {
      goto LABEL_67;
    }

    goto LABEL_53;
  }

  if (v8 == 42)
  {
    *(a1 + 16) |= 2u;
    v28 = *(a1 + 8);
    v19 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v19 = *v19;
    }

    v20 = (a1 + 32);
LABEL_44:
    v29 = sub_194DB04(v20, v19);
    v27 = sub_1958890(v29, *v39, a3);
LABEL_52:
    *v39 = v27;
    if (!v27)
    {
      goto LABEL_67;
    }

    goto LABEL_53;
  }

LABEL_45:
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
      v7 = *v39;
    }

    v27 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_52;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_67:
  *v39 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v39;
}

char *sub_18CF470(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 40);
    *v4 = 18;
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
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  if ((v6 & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 0x20) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_19;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 52);
  *v4 = 24;
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

LABEL_19:
  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v15 = *(a1 + 48);
    *v7 = 32;
    v7[1] = v15;
    v7 += 2;
    if ((v6 & 2) == 0)
    {
LABEL_21:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_21;
  }

  v7 = sub_128AEEC(a3, 5, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v7);
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v16 = *(a1 + 49);
  *v7 = 48;
  v7[1] = v16;
  v7 += 2;
LABEL_30:
  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v7;
  }

  v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
  v20 = *(v19 + 31);
  if (v20 < 0)
  {
    v21 = *(v19 + 8);
    v20 = *(v19 + 16);
  }

  else
  {
    v21 = (v19 + 8);
  }

  if (*a3 - v7 >= v20)
  {
    v22 = v20;
    memcpy(v7, v21, v20);
    v7 += v22;
    return v7;
  }

  return sub_1957130(a3, v21, v20, v7);
}

uint64_t sub_18CF6C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    result = 0;
    goto LABEL_19;
  }

  if (v2)
  {
    v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v8 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v11 = sub_186A16C(*(a1 + 40));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result = v3 + ((v2 >> 3) & 2) + ((v2 >> 2) & 2);
  if ((v2 & 0x20) != 0)
  {
    v12 = *(a1 + 52);
    v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v12 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 11;
    }

    result += v14;
  }

LABEL_19:
  v15 = *(a1 + 8);
  if (v15)
  {
    v16 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    result += v17;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_18CF834(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_194EA1C((a1 + 24), (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_20;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = *(a2 + 32);
    *(a1 + 16) |= 2u;
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 32), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
    }

LABEL_20:
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

      v12 = sub_18FF354(v14);
      *(a1 + 40) = v12;
    }

    if (*(a2 + 40))
    {
      v15 = *(a2 + 40);
    }

    else
    {
      v15 = &off_2787BC0;
    }

    sub_186A25C(v12, v15);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_29;
    }

LABEL_28:
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
      *(a1 + 52) = *(a2 + 52);
      goto LABEL_9;
    }

LABEL_29:
    *(a1 + 49) = *(a2 + 49);
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

BOOL sub_18CF99C(uint64_t a1)
{
  if ((*(a1 + 16) & 4) == 0)
  {
    return 1;
  }

  v1 = *(a1 + 40);
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

uint64_t sub_18CF9E8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2719758;
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
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sub_18CFB24(uint64_t a1)
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

  if (a1 != &off_278A160)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1869B9C(v6);
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

void sub_18CFBF0(uint64_t a1)
{
  sub_18CFB24(a1);

  operator delete();
}

unsigned __int8 *sub_18CFC28(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
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
      result = sub_1869C8C(*(result + 4));
    }
  }

LABEL_7:
  if ((v2 & 0xC) != 0)
  {
    v1[40] = 0;
    *(v1 + 11) = 15;
  }

  v5 = v1[8];
  v4 = v1 + 8;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_18CFCD0(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_33;
      }

      v5 |= 8u;
      LODWORD(v23) = *v7;
      if ((v23 & 0x80000000) == 0)
      {
        v24 = v7 + 1;
LABEL_44:
        *v32 = v24;
        *(a1 + 44) = v23;
        goto LABEL_45;
      }

      v23 = (v7[1] << 7) + v23 - 128;
      if ((v7[1] & 0x80000000) == 0)
      {
        v24 = v7 + 2;
        goto LABEL_44;
      }

      v30 = sub_19587DC(v7, v23);
      *v32 = v30;
      *(a1 + 44) = v31;
      if (!v30)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_33;
      }

      v5 |= 4u;
      v18 = (v7 + 1);
      v17 = *v7;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }

      v19 = *v18;
      v17 = (v19 << 7) + v17 - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v18 = (v7 + 2);
LABEL_25:
        *v32 = v18;
        *(a1 + 40) = v17 != 0;
        goto LABEL_45;
      }

      v28 = sub_19587DC(v7, v17);
      *v32 = v28;
      *(a1 + 40) = v29 != 0;
      if (!v28)
      {
        goto LABEL_54;
      }
    }

LABEL_45:
    if (sub_195ADC0(a3, v32, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_33;
    }

    *(a1 + 16) |= 1u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    v22 = sub_194DB04((a1 + 24), v21);
    v16 = sub_1958890(v22, *v32, a3);
LABEL_40:
    *v32 = v16;
    if (!v16)
    {
      goto LABEL_54;
    }

    goto LABEL_45;
  }

  if (v11 == 2 && v8 == 18)
  {
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

      v13 = sub_18FF354(v15);
      *(a1 + 32) = v13;
      v7 = *v32;
    }

    v16 = sub_2201670(a3, v13, v7);
    goto LABEL_40;
  }

LABEL_33:
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
      v7 = *v32;
    }

    v16 = sub_1952690(v8, v27, v7, a3);
    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  *v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v32;
}

char *sub_18CFF74(uint64_t a1, char *__dst, _DWORD *a3)
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
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 32);
    *v4 = 18;
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
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
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
    goto LABEL_19;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 44);
  *v4 = 24;
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

LABEL_19:
  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v15 = *(a1 + 40);
    *v7 = 32;
    v7[1] = v15;
    v7 += 2;
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v7;
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

  if (*a3 - v7 >= v19)
  {
    v21 = v19;
    memcpy(v7, v20, v19);
    v7 += v21;
    return v7;
  }

  return sub_1957130(a3, v20, v19, v7);
}

uint64_t sub_18D0164(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    result = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v8 = sub_186A16C(*(a1 + 32));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  result = v3 + ((v2 >> 1) & 2);
  if ((v2 & 8) != 0)
  {
    v9 = *(a1 + 44);
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v9 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 11;
    }

    result += v11;
  }

LABEL_15:
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    result += v14;
  }

  *(a1 + 20) = result;
  return result;
}

BOOL sub_18D0284(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v1 = *(a1 + 32);
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

uint64_t sub_18D02D0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_27197D8;
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
    sub_1201B48(a1 + 24, v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

  *(a1 + 48) = &qword_278E990;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v12 = *v12;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v12);
    v11 = *(a2 + 16);
  }

  if ((v11 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  v13 = *(a2 + 64);
  v14 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v13;
  *(a1 + 80) = v14;
  return a1;
}

uint64_t sub_18D0498(uint64_t a1)
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

  if (a1 != &off_278A190)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      sub_1869B9C(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18D056C(uint64_t a1)
{
  sub_18D0498(a1);

  operator delete();
}

uint64_t sub_18D05A4(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
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
      result = sub_1869C8C(*(a1 + 56));
    }
  }

LABEL_7:
  if ((v3 & 0xFC) != 0)
  {
    *(a1 + 96) = 0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 100) = 15;
  }

  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

uint64_t sub_18D065C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_72;
        }

        *(a1 + 16) |= 1u;
        v31 = *(a1 + 8);
        v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v32 = *v32;
        }

        v33 = sub_194DB04((a1 + 48), v32);
        v24 = sub_1958890(v33, *v60, a3);
      }

      else
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_72;
        }

        *(a1 + 16) |= 2u;
        v21 = *(a1 + 56);
        if (!v21)
        {
          v22 = *(a1 + 8);
          v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v23 = *v23;
          }

          v21 = sub_18FF354(v23);
          *(a1 + 56) = v21;
          v7 = *v60;
        }

        v24 = sub_2201670(a3, v21, v7);
      }

LABEL_79:
      *v60 = v24;
      if (!v24)
      {
        goto LABEL_101;
      }

      goto LABEL_84;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_72;
      }

      v5 |= 0x80u;
      LODWORD(v34) = *v7;
      if ((v34 & 0x80000000) == 0)
      {
        v35 = v7 + 1;
LABEL_83:
        *v60 = v35;
        *(a1 + 100) = v34;
        goto LABEL_84;
      }

      v34 = (v7[1] << 7) + v34 - 128;
      if ((v7[1] & 0x80000000) == 0)
      {
        v35 = v7 + 2;
        goto LABEL_83;
      }

      v52 = sub_19587DC(v7, v34);
      *v60 = v52;
      *(a1 + 100) = v53;
      if (!v52)
      {
        goto LABEL_101;
      }
    }

    else
    {
      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_72;
      }

      v5 |= 0x40u;
      v26 = (v7 + 1);
      v25 = *v7;
      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_42;
      }

      v27 = *v26;
      v25 = (v27 << 7) + v25 - 128;
      if ((v27 & 0x80000000) == 0)
      {
        v26 = (v7 + 2);
LABEL_42:
        *v60 = v26;
        *(a1 + 96) = v25 != 0;
        goto LABEL_84;
      }

      v48 = sub_19587DC(v7, v25);
      *v60 = v48;
      *(a1 + 96) = v49 != 0;
      if (!v48)
      {
        goto LABEL_101;
      }
    }

LABEL_84:
    if (sub_195ADC0(a3, v60, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 6)
  {
    if (v11 == 5)
    {
      if (v8 != 40)
      {
        goto LABEL_72;
      }

      v5 |= 4u;
      v40 = (v7 + 1);
      v39 = *v7;
      if ((v39 & 0x8000000000000000) == 0)
      {
        goto LABEL_66;
      }

      v41 = *v40;
      v39 = (v41 << 7) + v39 - 128;
      if ((v41 & 0x80000000) == 0)
      {
        v40 = (v7 + 2);
LABEL_66:
        *v60 = v40;
        *(a1 + 64) = v39;
        goto LABEL_84;
      }

      v56 = sub_19587DC(v7, v39);
      *v60 = v56;
      *(a1 + 64) = v57;
      if (!v56)
      {
        goto LABEL_101;
      }
    }

    else
    {
      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_72;
      }

      v5 |= 8u;
      v29 = (v7 + 1);
      v28 = *v7;
      if ((v28 & 0x8000000000000000) == 0)
      {
        goto LABEL_49;
      }

      v30 = *v29;
      v28 = (v30 << 7) + v28 - 128;
      if ((v30 & 0x80000000) == 0)
      {
        v29 = (v7 + 2);
LABEL_49:
        *v60 = v29;
        *(a1 + 72) = v28;
        goto LABEL_84;
      }

      v50 = sub_19587DC(v7, v28);
      *v60 = v50;
      *(a1 + 72) = v51;
      if (!v50)
      {
        goto LABEL_101;
      }
    }

    goto LABEL_84;
  }

  if (v11 == 7)
  {
    if (v8 != 56)
    {
      goto LABEL_72;
    }

    v5 |= 0x10u;
    v37 = (v7 + 1);
    v36 = *v7;
    if ((v36 & 0x8000000000000000) == 0)
    {
      goto LABEL_61;
    }

    v38 = *v37;
    v36 = (v38 << 7) + v36 - 128;
    if ((v38 & 0x80000000) == 0)
    {
      v37 = (v7 + 2);
LABEL_61:
      *v60 = v37;
      *(a1 + 80) = v36;
      goto LABEL_84;
    }

    v54 = sub_19587DC(v7, v36);
    *v60 = v54;
    *(a1 + 80) = v55;
    if (!v54)
    {
      goto LABEL_101;
    }

    goto LABEL_84;
  }

  if (v11 == 8)
  {
    if (v8 != 64)
    {
      goto LABEL_72;
    }

    v5 |= 0x20u;
    v43 = (v7 + 1);
    v42 = *v7;
    if ((v42 & 0x8000000000000000) == 0)
    {
      goto LABEL_71;
    }

    v44 = *v43;
    v42 = (v44 << 7) + v42 - 128;
    if ((v44 & 0x80000000) == 0)
    {
      v43 = (v7 + 2);
LABEL_71:
      *v60 = v43;
      *(a1 + 88) = v42;
      goto LABEL_84;
    }

    v58 = sub_19587DC(v7, v42);
    *v60 = v58;
    *(a1 + 88) = v59;
    if (!v58)
    {
      goto LABEL_101;
    }

    goto LABEL_84;
  }

  if (v11 == 9 && v8 == 74)
  {
    v12 = (v7 - 1);
    while (1)
    {
      v13 = (v12 + 1);
      *v60 = v12 + 1;
      v14 = *(a1 + 40);
      if (v14 && (v15 = *(a1 + 32), v15 < *v14))
      {
        *(a1 + 32) = v15 + 1;
        v16 = *&v14[2 * v15 + 2];
      }

      else
      {
        v17 = *(a1 + 24);
        if (!v17)
        {
          operator new();
        }

        *v19 = v18;
        v19[1] = sub_195A650;
        *v18 = 0;
        v18[1] = 0;
        v18[2] = 0;
        v16 = sub_19593CC(a1 + 24, v18);
        v13 = *v60;
      }

      v12 = sub_1958890(v16, v13, a3);
      *v60 = v12;
      if (!v12)
      {
        goto LABEL_101;
      }

      if (*a3 <= v12 || *v12 != 74)
      {
        goto LABEL_84;
      }
    }
  }

LABEL_72:
  if (v8)
  {
    v45 = (v8 & 7) == 4;
  }

  else
  {
    v45 = 1;
  }

  if (!v45)
  {
    v46 = *(a1 + 8);
    if (v46)
    {
      v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v47 = sub_11F1920((a1 + 8));
      v7 = *v60;
    }

    v24 = sub_1952690(v8, v47, v7, a3);
    goto LABEL_79;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_101:
  *v60 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v60;
}

char *sub_18D0B8C(uint64_t a1, char *__dst, _DWORD *a3)
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
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 56);
    *v4 = 18;
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
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 0x80) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_19;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 100);
  *v4 = 24;
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

LABEL_19:
  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v15 = *(a1 + 96);
    *v7 = 32;
    v7[1] = v15;
    v7 += 2;
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v17 = *(a1 + 64);
    *v7 = 40;
    v7[1] = v17;
    if (v17 > 0x7F)
    {
      v7[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v7[2] = v17 >> 7;
      v16 = v7 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v19) = v7[2];
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
      v16 = v7 + 2;
    }
  }

  else
  {
    v16 = v7;
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v22 = *(a1 + 72);
    *v16 = 48;
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

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v26 = *(a1 + 80);
    *v21 = 56;
    v21[1] = v26;
    if (v26 > 0x7F)
    {
      v21[1] = v26 | 0x80;
      v27 = v26 >> 7;
      v21[2] = v26 >> 7;
      v25 = v21 + 3;
      if (v26 >= 0x4000)
      {
        LOBYTE(v28) = v21[2];
        do
        {
          *(v25 - 1) = v28 | 0x80;
          v28 = v27 >> 7;
          *v25++ = v27 >> 7;
          v29 = v27 >> 14;
          v27 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v25 = v21 + 2;
    }
  }

  else
  {
    v25 = v21;
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v31 = *(a1 + 88);
    *v25 = 64;
    v25[1] = v31;
    if (v31 > 0x7F)
    {
      v25[1] = v31 | 0x80;
      v32 = v31 >> 7;
      v25[2] = v31 >> 7;
      v30 = v25 + 3;
      if (v31 >= 0x4000)
      {
        LOBYTE(v25) = v25[2];
        do
        {
          *(v30 - 1) = v25 | 0x80;
          v25 = (v32 >> 7);
          *v30++ = v32 >> 7;
          v33 = v32 >> 14;
          v32 >>= 7;
        }

        while (v33);
      }
    }

    else
    {
      v30 = v25 + 2;
    }
  }

  else
  {
    v30 = v25;
  }

  v34 = *(a1 + 32);
  if (v34 >= 1)
  {
    v35 = 8;
    do
    {
      v36 = *(*(a1 + 40) + v35);
      v37 = *(v36 + 23);
      if (v37 < 0 && (v37 = v36[1], v37 > 127) || *a3 - v30 + 14 < v37)
      {
        v30 = sub_1957480(a3, 9, v36, v30);
      }

      else
      {
        *v30 = 74;
        v30[1] = v37;
        if (*(v36 + 23) < 0)
        {
          v36 = *v36;
        }

        v38 = v30 + 2;
        memcpy(v38, v36, v37);
        v30 = &v38[v37];
      }

      v35 += 8;
      --v34;
    }

    while (v34);
  }

  v39 = *(a1 + 8);
  if ((v39 & 1) == 0)
  {
    return v30;
  }

  v41 = v39 & 0xFFFFFFFFFFFFFFFCLL;
  v42 = *(v41 + 31);
  if (v42 < 0)
  {
    v43 = *(v41 + 8);
    v42 = *(v41 + 16);
  }

  else
  {
    v43 = (v41 + 8);
  }

  if (*a3 - v30 >= v42)
  {
    v44 = v42;
    memcpy(v30, v43, v42);
    v30 += v44;
    return v30;
  }

  return sub_1957130(a3, v43, v42, v30);
}

uint64_t sub_18D1040(uint64_t a1)
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
  if (*(a1 + 16))
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

      v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_11:
        if ((v8 & 4) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_27;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

    v17 = sub_186A16C(*(a1 + 56));
    v4 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
LABEL_12:
      if ((v8 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_28;
    }

LABEL_27:
    v4 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v8 & 8) == 0)
    {
LABEL_13:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_29;
    }

LABEL_28:
    v4 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v8 & 0x10) == 0)
    {
LABEL_14:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_29:
    v4 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v8 & 0x20) == 0)
    {
LABEL_16:
      v4 += (v8 >> 5) & 2;
      if ((v8 & 0x80) != 0)
      {
        v9 = *(a1 + 100);
        v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if (v9 >= 0)
        {
          v11 = v10;
        }

        else
        {
          v11 = 11;
        }

        v4 += v11;
      }

      goto LABEL_21;
    }

LABEL_15:
    v4 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
    goto LABEL_16;
  }

LABEL_21:
  v12 = *(a1 + 8);
  if (v12)
  {
    v18 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v4 += v19;
  }

  *(a1 + 20) = v4;
  return v4;
}

void sub_18D125C(uint64_t a1, uint64_t a2)
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

      v14 = sub_18FF354(v16);
      *(a1 + 56) = v14;
    }

    if (*(a2 + 56))
    {
      v17 = *(a2 + 56);
    }

    else
    {
      v17 = &off_2787BC0;
    }

    sub_186A25C(v14, v17);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }

LABEL_30:
    *(a1 + 64) = *(a2 + 64);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_32;
    }

LABEL_31:
    *(a1 + 72) = *(a2 + 72);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_33;
    }

LABEL_32:
    *(a1 + 80) = *(a2 + 80);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_34;
    }

LABEL_33:
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
      *(a1 + 100) = *(a2 + 100);
      goto LABEL_14;
    }

LABEL_34:
    *(a1 + 96) = *(a2 + 96);
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

BOOL sub_18D1418(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v1 = *(a1 + 56);
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

uint64_t sub_18D1464(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2719858;
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
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sub_18D15A0(uint64_t a1)
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

  if (a1 != &off_278A1F8)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1869B9C(v6);
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

void sub_18D166C(uint64_t a1)
{
  sub_18D15A0(a1);

  operator delete();
}

unsigned __int8 *sub_18D16A4(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
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
      result = sub_1869C8C(*(result + 4));
    }
  }

LABEL_7:
  if ((v2 & 0xC) != 0)
  {
    v1[40] = 0;
    *(v1 + 11) = 15;
  }

  v5 = v1[8];
  v4 = v1 + 8;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_18D174C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_33;
      }

      v5 |= 8u;
      LODWORD(v23) = *v7;
      if ((v23 & 0x80000000) == 0)
      {
        v24 = v7 + 1;
LABEL_44:
        *v32 = v24;
        *(a1 + 44) = v23;
        goto LABEL_45;
      }

      v23 = (v7[1] << 7) + v23 - 128;
      if ((v7[1] & 0x80000000) == 0)
      {
        v24 = v7 + 2;
        goto LABEL_44;
      }

      v30 = sub_19587DC(v7, v23);
      *v32 = v30;
      *(a1 + 44) = v31;
      if (!v30)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_33;
      }

      v5 |= 4u;
      v18 = (v7 + 1);
      v17 = *v7;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }

      v19 = *v18;
      v17 = (v19 << 7) + v17 - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v18 = (v7 + 2);
LABEL_25:
        *v32 = v18;
        *(a1 + 40) = v17 != 0;
        goto LABEL_45;
      }

      v28 = sub_19587DC(v7, v17);
      *v32 = v28;
      *(a1 + 40) = v29 != 0;
      if (!v28)
      {
        goto LABEL_54;
      }
    }

LABEL_45:
    if (sub_195ADC0(a3, v32, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_33;
    }

    *(a1 + 16) |= 1u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    v22 = sub_194DB04((a1 + 24), v21);
    v16 = sub_1958890(v22, *v32, a3);
LABEL_40:
    *v32 = v16;
    if (!v16)
    {
      goto LABEL_54;
    }

    goto LABEL_45;
  }

  if (v11 == 2 && v8 == 18)
  {
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

      v13 = sub_18FF354(v15);
      *(a1 + 32) = v13;
      v7 = *v32;
    }

    v16 = sub_2201670(a3, v13, v7);
    goto LABEL_40;
  }

LABEL_33:
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
      v7 = *v32;
    }

    v16 = sub_1952690(v8, v27, v7, a3);
    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  *v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v32;
}

char *sub_18D19F0(uint64_t a1, char *__dst, _DWORD *a3)
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
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 32);
    *v4 = 18;
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
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
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
    goto LABEL_19;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 44);
  *v4 = 24;
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

LABEL_19:
  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v15 = *(a1 + 40);
    *v7 = 32;
    v7[1] = v15;
    v7 += 2;
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v7;
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

  if (*a3 - v7 >= v19)
  {
    v21 = v19;
    memcpy(v7, v20, v19);
    v7 += v21;
    return v7;
  }

  return sub_1957130(a3, v20, v19, v7);
}

uint64_t sub_18D1BE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    result = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v8 = sub_186A16C(*(a1 + 32));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  result = v3 + ((v2 >> 1) & 2);
  if ((v2 & 8) != 0)
  {
    v9 = *(a1 + 44);
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v9 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 11;
    }

    result += v11;
  }

LABEL_15:
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    result += v14;
  }

  *(a1 + 20) = result;
  return result;
}

BOOL sub_18D1D00(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v1 = *(a1 + 32);
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

uint64_t sub_18D1D4C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_27198D8;
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
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sub_18D1E88(uint64_t a1)
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

  if (a1 != &off_278A228)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1869B9C(v6);
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

void sub_18D1F54(uint64_t a1)
{
  sub_18D1E88(a1);

  operator delete();
}

unsigned __int8 *sub_18D1F8C(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
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
      result = sub_1869C8C(*(result + 4));
    }
  }

LABEL_7:
  if ((v2 & 0xC) != 0)
  {
    v1[40] = 0;
    *(v1 + 11) = 15;
  }

  v5 = v1[8];
  v4 = v1 + 8;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_18D2034(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_33;
      }

      v5 |= 8u;
      LODWORD(v23) = *v7;
      if ((v23 & 0x80000000) == 0)
      {
        v24 = v7 + 1;
LABEL_44:
        *v32 = v24;
        *(a1 + 44) = v23;
        goto LABEL_45;
      }

      v23 = (v7[1] << 7) + v23 - 128;
      if ((v7[1] & 0x80000000) == 0)
      {
        v24 = v7 + 2;
        goto LABEL_44;
      }

      v30 = sub_19587DC(v7, v23);
      *v32 = v30;
      *(a1 + 44) = v31;
      if (!v30)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_33;
      }

      v5 |= 4u;
      v18 = (v7 + 1);
      v17 = *v7;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }

      v19 = *v18;
      v17 = (v19 << 7) + v17 - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v18 = (v7 + 2);
LABEL_25:
        *v32 = v18;
        *(a1 + 40) = v17 != 0;
        goto LABEL_45;
      }

      v28 = sub_19587DC(v7, v17);
      *v32 = v28;
      *(a1 + 40) = v29 != 0;
      if (!v28)
      {
        goto LABEL_54;
      }
    }

LABEL_45:
    if (sub_195ADC0(a3, v32, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_33;
    }

    *(a1 + 16) |= 1u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    v22 = sub_194DB04((a1 + 24), v21);
    v16 = sub_1958890(v22, *v32, a3);
LABEL_40:
    *v32 = v16;
    if (!v16)
    {
      goto LABEL_54;
    }

    goto LABEL_45;
  }

  if (v11 == 2 && v8 == 18)
  {
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

      v13 = sub_18FF354(v15);
      *(a1 + 32) = v13;
      v7 = *v32;
    }

    v16 = sub_2201670(a3, v13, v7);
    goto LABEL_40;
  }

LABEL_33:
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
      v7 = *v32;
    }

    v16 = sub_1952690(v8, v27, v7, a3);
    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  *v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v32;
}

char *sub_18D22D8(uint64_t a1, char *__dst, _DWORD *a3)
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
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 32);
    *v4 = 18;
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
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
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
    goto LABEL_19;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 44);
  *v4 = 24;
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

LABEL_19:
  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v15 = *(a1 + 40);
    *v7 = 32;
    v7[1] = v15;
    v7 += 2;
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v7;
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

  if (*a3 - v7 >= v19)
  {
    v21 = v19;
    memcpy(v7, v20, v19);
    v7 += v21;
    return v7;
  }

  return sub_1957130(a3, v20, v19, v7);
}

uint64_t sub_18D24C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    result = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v8 = sub_186A16C(*(a1 + 32));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  result = v3 + ((v2 >> 1) & 2);
  if ((v2 & 8) != 0)
  {
    v9 = *(a1 + 44);
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v9 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 11;
    }

    result += v11;
  }

LABEL_15:
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    result += v14;
  }

  *(a1 + 20) = result;
  return result;
}

BOOL sub_18D25E8(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v1 = *(a1 + 32);
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

uint64_t sub_18D2634(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2719958;
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
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sub_18D2770(uint64_t a1)
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

  if (a1 != &off_278A258)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1869B9C(v6);
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

void sub_18D283C(uint64_t a1)
{
  sub_18D2770(a1);

  operator delete();
}

unsigned __int8 *sub_18D2874(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
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
      result = sub_1869C8C(*(result + 4));
    }
  }

LABEL_7:
  if ((v2 & 0xC) != 0)
  {
    v1[40] = 0;
    *(v1 + 11) = 15;
  }

  v5 = v1[8];
  v4 = v1 + 8;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_18D291C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_33;
      }

      v5 |= 8u;
      LODWORD(v23) = *v7;
      if ((v23 & 0x80000000) == 0)
      {
        v24 = v7 + 1;
LABEL_44:
        *v32 = v24;
        *(a1 + 44) = v23;
        goto LABEL_45;
      }

      v23 = (v7[1] << 7) + v23 - 128;
      if ((v7[1] & 0x80000000) == 0)
      {
        v24 = v7 + 2;
        goto LABEL_44;
      }

      v30 = sub_19587DC(v7, v23);
      *v32 = v30;
      *(a1 + 44) = v31;
      if (!v30)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_33;
      }

      v5 |= 4u;
      v18 = (v7 + 1);
      v17 = *v7;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }

      v19 = *v18;
      v17 = (v19 << 7) + v17 - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v18 = (v7 + 2);
LABEL_25:
        *v32 = v18;
        *(a1 + 40) = v17 != 0;
        goto LABEL_45;
      }

      v28 = sub_19587DC(v7, v17);
      *v32 = v28;
      *(a1 + 40) = v29 != 0;
      if (!v28)
      {
        goto LABEL_54;
      }
    }

LABEL_45:
    if (sub_195ADC0(a3, v32, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_33;
    }

    *(a1 + 16) |= 1u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    v22 = sub_194DB04((a1 + 24), v21);
    v16 = sub_1958890(v22, *v32, a3);
LABEL_40:
    *v32 = v16;
    if (!v16)
    {
      goto LABEL_54;
    }

    goto LABEL_45;
  }

  if (v11 == 2 && v8 == 18)
  {
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

      v13 = sub_18FF354(v15);
      *(a1 + 32) = v13;
      v7 = *v32;
    }

    v16 = sub_2201670(a3, v13, v7);
    goto LABEL_40;
  }

LABEL_33:
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
      v7 = *v32;
    }

    v16 = sub_1952690(v8, v27, v7, a3);
    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  *v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v32;
}

char *sub_18D2BC0(uint64_t a1, char *__dst, _DWORD *a3)
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
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 32);
    *v4 = 18;
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
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
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
    goto LABEL_19;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 44);
  *v4 = 24;
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

LABEL_19:
  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v15 = *(a1 + 40);
    *v7 = 32;
    v7[1] = v15;
    v7 += 2;
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v7;
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

  if (*a3 - v7 >= v19)
  {
    v21 = v19;
    memcpy(v7, v20, v19);
    v7 += v21;
    return v7;
  }

  return sub_1957130(a3, v20, v19, v7);
}

uint64_t sub_18D2DB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    result = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v8 = sub_186A16C(*(a1 + 32));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  result = v3 + ((v2 >> 1) & 2);
  if ((v2 & 8) != 0)
  {
    v9 = *(a1 + 44);
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v9 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 11;
    }

    result += v11;
  }

LABEL_15:
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    result += v14;
  }

  *(a1 + 20) = result;
  return result;
}

BOOL sub_18D2ED0(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v1 = *(a1 + 32);
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

uint64_t sub_18D2F1C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_27199D8;
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

  *(a1 + 48) = &qword_278E990;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v12 = *v12;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v12);
    v11 = *(a2 + 16);
  }

  if ((v11 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  return a1;
}

uint64_t sub_18D30D8(uint64_t a1)
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

  if (a1 != &off_278A288)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      sub_1869B9C(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_13B5A00((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18D31B0(uint64_t a1)
{
  sub_18D30D8(a1);

  operator delete();
}

unsigned __int8 *sub_18D31E8(unsigned __int8 *result)
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

  v5 = *(v1 + 4);
  if ((v5 & 3) != 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    v6 = *(v1 + 6) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v6 + 23) & 0x80000000) == 0)
    {
      *v6 = 0;
      *(v6 + 23) = 0;
LABEL_9:
      if ((v5 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v5 & 2) != 0)
    {
LABEL_10:
      result = sub_1869C8C(*(v1 + 7));
    }
  }

LABEL_11:
  v8 = v1[8];
  v7 = v1 + 8;
  *(v7 + 2) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_18D32B0(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        v19 = (v6 - 1);
        while (1)
        {
          v20 = (v19 + 1);
          *v29 = v19 + 1;
          v21 = *(a1 + 40);
          if (v21 && (v22 = *(a1 + 32), v22 < *v21))
          {
            *(a1 + 32) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_191BA60(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = *v29;
          }

          v19 = sub_2201310(a3, v23, v20);
          *v29 = v19;
          if (!v19)
          {
            break;
          }

          if (*a3 <= v19 || *v19 != 26)
          {
            goto LABEL_40;
          }
        }

LABEL_45:
        *v29 = 0;
        return *v29;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v16 = *(a1 + 56);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_18FF354(v18);
          *(a1 + 56) = v16;
          v6 = *v29;
        }

        v15 = sub_2201670(a3, v16, v6);
        goto LABEL_39;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v27 = sub_194DB04((a1 + 48), v26);
      v15 = sub_1958890(v27, *v29, a3);
      goto LABEL_39;
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
        return *v29;
      }

      goto LABEL_45;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v6 = *v29;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_39:
    *v29 = v15;
    if (!v15)
    {
      goto LABEL_45;
    }

LABEL_40:
    ;
  }

  return *v29;
}

char *sub_18D34E0(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v7 = *(a1 + 56);
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

    v4 = sub_1869F58(v7, v9, a3);
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

      v4 = sub_1917694(v12, v14, a3);
    }
  }

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v18)
  {
    v20 = v18;
    memcpy(v4, v19, v18);
    v4 += v20;
    return v4;
  }

  return sub_1957130(a3, v19, v18, v4);
}

uint64_t sub_18D36A8(uint64_t a1)
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

  v8 = *(a1 + 16);
  if ((v8 & 3) != 0)
  {
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
    }

    if ((v8 & 2) != 0)
    {
      v12 = sub_186A16C(*(a1 + 56));
      v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

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

void sub_18D37D0(uint64_t a1, uint64_t a2)
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

  v9 = *(a2 + 16);
  if ((v9 & 3) != 0)
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
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v13 = *(a1 + 56);
      if (!v13)
      {
        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v13 = sub_18FF354(v15);
        *(a1 + 56) = v13;
      }

      if (*(a2 + 56))
      {
        v16 = *(a2 + 56);
      }

      else
      {
        v16 = &off_2787BC0;
      }

      sub_186A25C(v13, v16);
    }
  }

  v17 = *(a2 + 8);
  if (v17)
  {

    sub_1957EF4((a1 + 8), (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_18D3918(uint64_t a1)
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

  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v6 = *(a1 + 56);
  if ((*(v6 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E6614(*(v6 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18D3998(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2719A58;
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

  v11 = *(a2 + 8);
  if (v11)
  {
    sub_1957EF4(v4, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  v12 = *(a2 + 16);
  if (v12)
  {
    operator new();
  }

  *(a1 + 72) = 0;
  if ((v12 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t sub_18D3BC8(uint64_t a1)
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

  if (a1 != &off_278A2C8)
  {
    v5 = *(a1 + 72);
    if (v5)
    {
      sub_139617C(v5);
      operator delete();
    }

    v6 = *(a1 + 80);
    if (v6)
    {
      sub_13968D0(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1956ABC(a1 + 56);
  sub_1956ABC(a1 + 40);
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18D3CB0(uint64_t a1)
{
  sub_18D3BC8(a1);

  operator delete();
}

uint64_t sub_18D3CE8(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 56) = 0;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_138741C(*(result + 72));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_1387434(*(v1 + 80));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 80) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_18D3D68(uint64_t a1, char *a2, int32x2_t *a3)
{
  v51 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v51, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = v51 + 1;
    v9 = *v51;
    if (*v51 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(v51, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = v51 + 2;
      }
    }

    v51 = v8;
    v13 = v9 >> 3;
    if (v9 >> 3 <= 3)
    {
      if (v13 != 1)
      {
        if (v13 == 2)
        {
          if (v9 == 18)
          {
            *(a1 + 16) |= 1u;
            v36 = *(a1 + 72);
            if (!v36)
            {
              v37 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
              if (*v7)
              {
                v37 = *v37;
              }

              v36 = sub_13AE4CC(v37);
              *(a1 + 72) = v36;
              v8 = v51;
            }

            v24 = sub_2202C60(a3, v36, v8);
            goto LABEL_99;
          }

          goto LABEL_92;
        }

        if (v13 != 3)
        {
          goto LABEL_92;
        }

        if (v9 == 24)
        {
          v14 = v8 - 1;
          while (1)
          {
            v51 = v14 + 1;
            v15 = v14[1];
            v16 = v14 + 2;
            if (v15 < 0)
            {
              v17 = *v16;
              v18 = (v17 << 7) + v15;
              LODWORD(v15) = v18 - 128;
              if (v17 < 0)
              {
                v51 = sub_19587DC((v14 + 1), (v18 - 128));
                if (!v51)
                {
                  goto LABEL_105;
                }

                LODWORD(v15) = v21;
                goto LABEL_18;
              }

              v16 = v14 + 3;
            }

            v51 = v16;
LABEL_18:
            if (sub_1796880(v15))
            {
              v19 = *(a1 + 40);
              if (v19 == *(a1 + 44))
              {
                v20 = v19 + 1;
                sub_1958E5C((a1 + 40), v19 + 1);
                *(*(a1 + 48) + 4 * v19) = v15;
              }

              else
              {
                *(*(a1 + 48) + 4 * v19) = v15;
                v20 = v19 + 1;
              }

              *(a1 + 40) = v20;
            }

            else
            {
              sub_1313740();
            }

            v14 = v51;
            if (*a3 <= v51 || *v51 != 24)
            {
              goto LABEL_100;
            }
          }
        }

        if (v9 != 26)
        {
          goto LABEL_92;
        }

        *&v52 = a1 + 40;
        *(&v52 + 1) = sub_1796880;
        v53 = a1 + 8;
        v48 = 3;
LABEL_91:
        v54 = v48;
        v24 = sub_1216588(a3, v8, &v52);
        goto LABEL_99;
      }

      if (v9 != 8)
      {
        if (v9 != 10)
        {
          goto LABEL_92;
        }

        *&v52 = a1 + 24;
        *(&v52 + 1) = sub_13F67A0;
        v53 = a1 + 8;
        v48 = 1;
        goto LABEL_91;
      }

      v25 = v8 - 1;
      while (1)
      {
        v51 = v25 + 1;
        v26 = v25[1];
        v27 = v25 + 2;
        if (v26 < 0)
        {
          v28 = *v27;
          v29 = (v28 << 7) + v26;
          LODWORD(v26) = v29 - 128;
          if (v28 < 0)
          {
            v51 = sub_19587DC((v25 + 1), (v29 - 128));
            if (!v51)
            {
              goto LABEL_105;
            }

            LODWORD(v26) = v32;
            goto LABEL_44;
          }

          v27 = v25 + 3;
        }

        v51 = v27;
LABEL_44:
        if (sub_13F67A0(v26))
        {
          v30 = *(a1 + 24);
          if (v30 == *(a1 + 28))
          {
            v31 = v30 + 1;
            sub_1958E5C((a1 + 24), v30 + 1);
            *(*(a1 + 32) + 4 * v30) = v26;
          }

          else
          {
            *(*(a1 + 32) + 4 * v30) = v26;
            v31 = v30 + 1;
          }

          *(a1 + 24) = v31;
        }

        else
        {
          sub_12E8450();
        }

        v25 = v51;
        if (*a3 <= v51 || *v51 != 8)
        {
          goto LABEL_100;
        }
      }
    }

    if (v13 != 4)
    {
      break;
    }

    if (v9 != 32)
    {
      goto LABEL_92;
    }

    v5 |= 4u;
    v34 = v8 + 1;
    v33 = *v8;
    if (v33 < 0)
    {
      v35 = *v34;
      v33 = (v35 << 7) + v33 - 128;
      if (v35 < 0)
      {
        v46 = sub_19587DC(v8, v33);
        v51 = v46;
        *(a1 + 88) = v47 != 0;
        if (!v46)
        {
          goto LABEL_105;
        }

        goto LABEL_100;
      }

      v34 = v8 + 2;
    }

    v51 = v34;
    *(a1 + 88) = v33 != 0;
LABEL_100:
    if (sub_195ADC0(a3, &v51, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v13 == 8)
  {
    if (v9 != 64)
    {
      if (v9 != 66)
      {
        goto LABEL_92;
      }

      *&v52 = a1 + 56;
      *(&v52 + 1) = sub_1393030;
      v53 = a1 + 8;
      v48 = 8;
      goto LABEL_91;
    }

    v38 = v8 - 1;
    while (1)
    {
      v51 = v38 + 1;
      v39 = v38[1];
      v40 = v38 + 2;
      if (v39 < 0)
      {
        v41 = *v40;
        v42 = (v41 << 7) + v39;
        LODWORD(v39) = v42 - 128;
        if (v41 < 0)
        {
          v51 = sub_19587DC((v38 + 1), (v42 - 128));
          if (!v51)
          {
            goto LABEL_105;
          }

          LODWORD(v39) = v45;
          goto LABEL_72;
        }

        v40 = v38 + 3;
      }

      v51 = v40;
LABEL_72:
      if (sub_1393030(v39))
      {
        v43 = *(a1 + 56);
        if (v43 == *(a1 + 60))
        {
          v44 = v43 + 1;
          sub_1958E5C((a1 + 56), v43 + 1);
          *(*(a1 + 64) + 4 * v43) = v39;
        }

        else
        {
          *(*(a1 + 64) + 4 * v43) = v39;
          v44 = v43 + 1;
        }

        *(a1 + 56) = v44;
      }

      else
      {
        sub_12E85F0();
      }

      v38 = v51;
      if (*a3 <= v51 || *v51 != 64)
      {
        goto LABEL_100;
      }
    }
  }

  if (v13 == 9 && v9 == 74)
  {
    *(a1 + 16) |= 2u;
    v22 = *(a1 + 80);
    if (!v22)
    {
      v23 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (*v7)
      {
        v23 = *v23;
      }

      v22 = sub_13AE574(v23);
      *(a1 + 80) = v22;
      v8 = v51;
    }

    v24 = sub_2202D80(a3, v22, v8);
LABEL_99:
    v51 = v24;
    if (!v24)
    {
      goto LABEL_105;
    }

    goto LABEL_100;
  }

LABEL_92:
  if (v9)
  {
    v49 = (v9 & 7) == 4;
  }

  else
  {
    v49 = 1;
  }

  if (!v49)
  {
    if (*v7)
    {
      v50 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v50 = sub_11F1920((a1 + 8));
      v8 = v51;
    }

    v24 = sub_1952690(v9, v50, v8, a3);
    goto LABEL_99;
  }

  if (v8)
  {
    a3[10].i32[0] = v9 - 1;
  }

  else
  {
LABEL_105:
    v51 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v51;
}

char *sub_18D42F0(uint64_t a1, char *a2, _DWORD *a3)
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

  v12 = *(a1 + 16);
  if (v12)
  {
    if (*a3 <= v8)
    {
      v8 = sub_225EB68(a3, v8);
    }

    v13 = *(a1 + 72);
    *v8 = 18;
    v14 = *(v13 + 48);
    v8[1] = v14;
    if (v14 > 0x7F)
    {
      v15 = sub_19575D0(v14, v8 + 1);
    }

    else
    {
      v15 = v8 + 2;
    }

    v8 = sub_1396484(v13, v15, a3);
  }

  v16 = *(a1 + 40);
  if (v16 < 1)
  {
    v19 = v8;
  }

  else
  {
    for (j = 0; j != v16; ++j)
    {
      if (*a3 <= v8)
      {
        v8 = sub_225EB68(a3, v8);
      }

      v18 = *(*(a1 + 48) + 4 * j);
      *v8 = 24;
      v8[1] = v18;
      if (v18 > 0x7F)
      {
        v8[1] = v18 | 0x80;
        v20 = v18 >> 7;
        v8[2] = v18 >> 7;
        v19 = v8 + 3;
        if (v18 >= 0x4000)
        {
          LOBYTE(v8) = v8[2];
          do
          {
            *(v19 - 1) = v8 | 0x80;
            v8 = (v20 >> 7);
            *v19++ = v20 >> 7;
            v21 = v20 >> 14;
            v20 >>= 7;
          }

          while (v21);
        }
      }

      else
      {
        v19 = v8 + 2;
      }

      v8 = v19;
    }
  }

  if ((v12 & 4) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v22 = *(a1 + 88);
    *v19 = 32;
    v19[1] = v22;
    v19 += 2;
  }

  v23 = *(a1 + 56);
  if (v23 < 1)
  {
    v26 = v19;
  }

  else
  {
    for (k = 0; k != v23; ++k)
    {
      if (*a3 <= v19)
      {
        v19 = sub_225EB68(a3, v19);
      }

      v25 = *(*(a1 + 64) + 4 * k);
      *v19 = 64;
      v19[1] = v25;
      if (v25 > 0x7F)
      {
        v19[1] = v25 | 0x80;
        v27 = v25 >> 7;
        v19[2] = v25 >> 7;
        v26 = v19 + 3;
        if (v25 >= 0x4000)
        {
          LOBYTE(v19) = v19[2];
          do
          {
            *(v26 - 1) = v19 | 0x80;
            v19 = (v27 >> 7);
            *v26++ = v27 >> 7;
            v28 = v27 >> 14;
            v27 >>= 7;
          }

          while (v28);
        }
      }

      else
      {
        v26 = v19 + 2;
      }

      v19 = v26;
    }
  }

  if ((v12 & 2) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v29 = *(a1 + 80);
    *v26 = 74;
    v30 = *(v29 + 48);
    v26[1] = v30;
    if (v30 > 0x7F)
    {
      v31 = sub_19575D0(v30, v26 + 1);
    }

    else
    {
      v31 = v26 + 2;
    }

    v26 = sub_1396C4C(v29, v31, a3);
  }

  v32 = *(a1 + 8);
  if ((v32 & 1) == 0)
  {
    return v26;
  }

  v34 = v32 & 0xFFFFFFFFFFFFFFFCLL;
  v35 = *(v34 + 31);
  if (v35 < 0)
  {
    v36 = *(v34 + 8);
    v35 = *(v34 + 16);
  }

  else
  {
    v36 = (v34 + 8);
  }

  if (*a3 - v26 >= v35)
  {
    v37 = v35;
    memcpy(v26, v36, v35);
    v26 += v37;
    return v26;
  }

  return sub_1957130(a3, v36, v35, v26);
}

uint64_t sub_18D46A0(uint64_t a1)
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

  v17 = v3 + v2 + v7 + v9 + v12 + v14;
  v18 = *(a1 + 16);
  if ((v18 & 7) != 0)
  {
    if (v18)
    {
      v19 = sub_139667C(*(a1 + 72));
      v17 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v18 & 2) != 0)
    {
      v20 = sub_1396E44(*(a1 + 80));
      v17 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v17 += (v18 >> 1) & 2;
  }

  v21 = *(a1 + 8);
  if (v21)
  {
    v23 = v21 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v21 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    v17 += v24;
  }

  *(a1 + 20) = v17;
  return v17;
}

std::string *sub_18D487C(std::string *result, uint64_t a2)
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

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = SLODWORD(v3[1].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[1].__r_.__value_.__r.__words[2], v9 + v8);
    data = v3[2].__r_.__value_.__l.__data_;
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) += *(a2 + 40);
    result = memcpy(&data[4 * v9], *(a2 + 48), 4 * *(a2 + 40));
  }

  v11 = *(a2 + 56);
  if (v11)
  {
    v12 = SLODWORD(v3[2].__r_.__value_.__r.__words[1]);
    sub_1958E5C(&v3[2].__r_.__value_.__r.__words[1], v12 + v11);
    v13 = v3[2].__r_.__value_.__r.__words[2];
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) += *(a2 + 56);
    result = memcpy((v13 + 4 * v12), *(a2 + 64), 4 * *(a2 + 56));
  }

  v14 = *(a2 + 16);
  if ((v14 & 7) != 0)
  {
    if (v14)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v16 = v3[3].__r_.__value_.__l.__data_;
      if (!v16)
      {
        v17 = v3->__r_.__value_.__l.__size_;
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v16 = sub_13AE4CC(v18);
        v3[3].__r_.__value_.__r.__words[0] = v16;
      }

      if (*(a2 + 72))
      {
        v19 = *(a2 + 72);
      }

      else
      {
        v19 = &off_276D8D8;
      }

      result = sub_1319618(v16, v19);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
LABEL_12:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v14;
          goto LABEL_13;
        }

LABEL_11:
        v3[3].__r_.__value_.__s.__data_[16] = *(a2 + 88);
        goto LABEL_12;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v20 = v3[3].__r_.__value_.__l.__size_;
    if (!v20)
    {
      v21 = v3->__r_.__value_.__l.__size_;
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_13AE574(v22);
      v3[3].__r_.__value_.__l.__size_ = v20;
    }

    if (*(a2 + 80))
    {
      v23 = *(a2 + 80);
    }

    else
    {
      v23 = &off_276D910;
    }

    result = sub_1319618(v20, v23);
    if ((v14 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  v15 = *(a2 + 8);
  if (v15)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_18D4A88(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_2719AD8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 158) = 0u;
  return a1;
}

void sub_18D4B08(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18D4B38(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_2719AD8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 60) = 0;
  *(a1 + 44) = 0;
  *(a1 + 52) = 0;
  v6 = *(a2 + 48);
  if (v6)
  {
    sub_1958E5C((a1 + 48), v6);
    v7 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy(v7, *(a2 + 56), 4 * *(a2 + 48));
  }

  v8 = *(a2 + 8);
  if (v8)
  {
    sub_1957EF4(v4, (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  v9 = *(a2 + 40);
  if (v9)
  {
    operator new();
  }

  *(a1 + 64) = 0;
  if ((v9 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 72) = 0;
  if ((v9 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  if ((v9 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 88) = 0;
  if ((v9 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 96) = 0;
  if ((v9 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 104) = 0;
  if ((v9 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 112) = 0;
  if ((v9 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 120) = 0;
  if ((v9 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 128) = 0;
  if ((v9 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 136) = 0;
  if ((v9 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 144) = 0;
  if ((v9 & 0x800) != 0)
  {
    operator new();
  }

  *(a1 + 152) = 0;
  if ((v9 & 0x1000) != 0)
  {
    operator new();
  }

  *(a1 + 160) = 0;
  v10 = *(a2 + 168);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 168) = v10;
  return a1;
}

void *sub_18D4FDC(void *a1)
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

  sub_18D5070(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956ABC((a1 + 6));
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_18D5070(uint64_t result)
{
  if (result != &off_278A328)
  {
    v1 = result;
    v2 = *(result + 64);
    if (v2)
    {
      sub_18C93F8(v2);
      operator delete();
    }

    v3 = v1[9];
    if (v3)
    {
      sub_18C9E00(v3);
      operator delete();
    }

    v4 = v1[10];
    if (v4)
    {
      sub_18CA6E8(v4);
      operator delete();
    }

    v5 = v1[11];
    if (v5)
    {
      sub_18CC4C8(v5);
      operator delete();
    }

    v6 = v1[12];
    if (v6)
    {
      sub_18CEF20(v6);
      operator delete();
    }

    v7 = v1[13];
    if (v7)
    {
      sub_18CFB24(v7);
      operator delete();
    }

    v8 = v1[14];
    if (v8)
    {
      sub_18D0498(v8);
      operator delete();
    }

    v9 = v1[15];
    if (v9)
    {
      sub_18D15A0(v9);
      operator delete();
    }

    v10 = v1[16];
    if (v10)
    {
      sub_18D1E88(v10);
      operator delete();
    }

    v11 = v1[17];
    if (v11)
    {
      sub_18D2770(v11);
      operator delete();
    }

    v12 = v1[18];
    if (v12)
    {
      sub_18D3BC8(v12);
      operator delete();
    }

    v13 = v1[19];
    if (v13)
    {
      sub_13F6DF4(v13);
      operator delete();
    }

    result = v1[20];
    if (result)
    {
      sub_18D30D8(result);

      operator delete();
    }
  }

  return result;
}

void sub_18D5218(void *a1)
{
  sub_18D4FDC(a1);

  operator delete();
}

uint64_t sub_18D5250(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  *(a1 + 48) = 0;
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    result = sub_18C94FC(*(a1 + 64));
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_26;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_18C9F04(*(a1 + 72));
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = sub_18CA7EC(*(a1 + 80));
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = sub_18CC700(*(a1 + 88));
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_29:
    result = sub_18CFC28(*(a1 + 104));
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_28:
  result = sub_18CF040(*(a1 + 96));
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_30:
  result = sub_18D05A4(*(a1 + 112));
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = sub_18D16A4(*(a1 + 120));
  }

LABEL_11:
  if ((v3 & 0x1F00) == 0)
  {
    goto LABEL_18;
  }

  if ((v3 & 0x100) != 0)
  {
    result = sub_18D1F8C(*(a1 + 128));
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_34;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = sub_18D2874(*(a1 + 136));
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = sub_18D3CE8(*(a1 + 144));
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  result = sub_13F6E30(*(a1 + 152));
  if ((v3 & 0x1000) != 0)
  {
LABEL_17:
    result = sub_18D31E8(*(a1 + 160));
  }

LABEL_18:
  if ((v3 & 0xE000) != 0)
  {
    *(a1 + 172) = 0;
    *(a1 + 168) = 0;
  }

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 32) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

char *sub_18D539C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v66 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v66, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (2)
  {
    v8 = v66 + 1;
    v9 = *v66;
    if (*v66 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(v66, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = v66 + 2;
      }
    }

    v66 = v8;
    switch(v9 >> 3)
    {
      case 1u:
        if (v9 != 8)
        {
          goto LABEL_129;
        }

        v14 = v8 + 1;
        v13 = *v8;
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }

        v15 = *v14;
        v13 = (v15 << 7) + v13 - 128;
        if (v15 < 0)
        {
          v66 = sub_19587DC(v8, v13);
          if (!v66)
          {
            goto LABEL_145;
          }
        }

        else
        {
          v14 = v8 + 2;
LABEL_13:
          v66 = v14;
        }

        if (v13 > 0xA)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 40) |= 0x2000u;
          *(a1 + 168) = v13;
        }

        goto LABEL_139;
      case 2u:
        if (v9 != 18)
        {
          goto LABEL_129;
        }

        *(a1 + 40) |= 1u;
        v47 = *(a1 + 64);
        if (!v47)
        {
          v48 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v48 = *v48;
          }

          v47 = sub_1903ECC(v48);
          *(a1 + 64) = v47;
          v8 = v66;
        }

        v26 = sub_22549D4(a3, v47, v8);
        goto LABEL_138;
      case 3u:
        if (v9 != 26)
        {
          goto LABEL_129;
        }

        *(a1 + 40) |= 2u;
        v38 = *(a1 + 72);
        if (!v38)
        {
          v39 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v39 = *v39;
          }

          v38 = sub_1903F5C(v39);
          *(a1 + 72) = v38;
          v8 = v66;
        }

        v26 = sub_2254A64(a3, v38, v8);
        goto LABEL_138;
      case 4u:
        if (v9 != 34)
        {
          goto LABEL_129;
        }

        *(a1 + 40) |= 4u;
        v42 = *(a1 + 80);
        if (!v42)
        {
          v43 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v43 = *v43;
          }

          v42 = sub_1903FEC(v43);
          *(a1 + 80) = v42;
          v8 = v66;
        }

        v26 = sub_2254AF4(a3, v42, v8);
        goto LABEL_138;
      case 5u:
        if (v9 != 42)
        {
          goto LABEL_129;
        }

        *(a1 + 40) |= 8u;
        v30 = *(a1 + 88);
        if (!v30)
        {
          v31 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v31 = *v31;
          }

          sub_1904174(v31);
          v30 = v32;
          *(a1 + 88) = v32;
          v8 = v66;
        }

        v26 = sub_2254B84(a3, v30, v8);
        goto LABEL_138;
      case 6u:
        if (v9 != 50)
        {
          goto LABEL_129;
        }

        *(a1 + 40) |= 0x10u;
        v49 = *(a1 + 96);
        if (!v49)
        {
          v50 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v50 = *v50;
          }

          v49 = sub_190422C(v50);
          *(a1 + 96) = v49;
          v8 = v66;
        }

        v26 = sub_2254C14(a3, v49, v8);
        goto LABEL_138;
      case 7u:
        if (v9 != 58)
        {
          goto LABEL_129;
        }

        *(a1 + 40) |= 0x20u;
        v54 = *(a1 + 104);
        if (!v54)
        {
          v55 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v55 = *v55;
          }

          v54 = sub_19042C0(v55);
          *(a1 + 104) = v54;
          v8 = v66;
        }

        v26 = sub_2254CA4(a3, v54, v8);
        goto LABEL_138;
      case 8u:
        if (v9 != 66)
        {
          goto LABEL_129;
        }

        *(a1 + 40) |= 0x40u;
        v44 = *(a1 + 112);
        if (!v44)
        {
          v45 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v45 = *v45;
          }

          sub_1904350(v45);
          v44 = v46;
          *(a1 + 112) = v46;
          v8 = v66;
        }

        v26 = sub_2254D34(a3, v44, v8);
        goto LABEL_138;
      case 9u:
        if (v9 != 74)
        {
          goto LABEL_129;
        }

        *(a1 + 40) |= 0x80u;
        v58 = *(a1 + 120);
        if (!v58)
        {
          v59 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v59 = *v59;
          }

          v58 = sub_190440C(v59);
          *(a1 + 120) = v58;
          v8 = v66;
        }

        v26 = sub_2254DC4(a3, v58, v8);
        goto LABEL_138;
      case 0xAu:
        if (v9 != 82)
        {
          goto LABEL_129;
        }

        *(a1 + 40) |= 0x100u;
        v36 = *(a1 + 128);
        if (!v36)
        {
          v37 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v37 = *v37;
          }

          v36 = sub_190449C(v37);
          *(a1 + 128) = v36;
          v8 = v66;
        }

        v26 = sub_2254E54(a3, v36, v8);
        goto LABEL_138;
      case 0xBu:
        if (v9 != 90)
        {
          goto LABEL_129;
        }

        *(a1 + 40) |= 0x200u;
        v56 = *(a1 + 136);
        if (!v56)
        {
          v57 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v57 = *v57;
          }

          v56 = sub_190452C(v57);
          *(a1 + 136) = v56;
          v8 = v66;
        }

        v26 = sub_2254EE4(a3, v56, v8);
        goto LABEL_138;
      case 0xCu:
        if (v9 != 98)
        {
          goto LABEL_129;
        }

        *(a1 + 40) |= 0x400u;
        v27 = *(a1 + 144);
        if (!v27)
        {
          v28 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v28 = *v28;
          }

          sub_1904660(v28);
          v27 = v29;
          *(a1 + 144) = v29;
          v8 = v66;
        }

        v26 = sub_2254F74(a3, v27, v8);
        goto LABEL_138;
      case 0xDu:
        if (v9 != 104)
        {
          goto LABEL_129;
        }

        v5 |= 0x4000u;
        v34 = v8 + 1;
        v33 = *v8;
        if ((v33 & 0x8000000000000000) == 0)
        {
          goto LABEL_55;
        }

        v35 = *v34;
        v33 = (v35 << 7) + v33 - 128;
        if (v35 < 0)
        {
          v60 = sub_19587DC(v8, v33);
          v66 = v60;
          *(a1 + 172) = v61 != 0;
          if (!v60)
          {
            goto LABEL_145;
          }
        }

        else
        {
          v34 = v8 + 2;
LABEL_55:
          v66 = v34;
          *(a1 + 172) = v33 != 0;
        }

        goto LABEL_139;
      case 0xEu:
        if (v9 != 112)
        {
          goto LABEL_129;
        }

        v5 |= 0x8000u;
        v52 = v8 + 1;
        v51 = *v8;
        if ((v51 & 0x8000000000000000) == 0)
        {
          goto LABEL_102;
        }

        v53 = *v52;
        v51 = (v53 << 7) + v51 - 128;
        if (v53 < 0)
        {
          v62 = sub_19587DC(v8, v51);
          v66 = v62;
          *(a1 + 173) = v63 != 0;
          if (!v62)
          {
            goto LABEL_145;
          }
        }

        else
        {
          v52 = v8 + 2;
LABEL_102:
          v66 = v52;
          *(a1 + 173) = v51 != 0;
        }

        goto LABEL_139;
      case 0xFu:
        if (v9 != 122)
        {
          goto LABEL_129;
        }

        *(a1 + 40) |= 0x800u;
        v24 = *(a1 + 152);
        if (!v24)
        {
          v25 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v25 = *v25;
          }

          v24 = sub_140457C(v25);
          *(a1 + 152) = v24;
          v8 = v66;
        }

        v26 = sub_2235514(a3, v24, v8);
        goto LABEL_138;
      case 0x10u:
        if (v9 != 130)
        {
          goto LABEL_129;
        }

        *(a1 + 40) |= 0x1000u;
        v40 = *(a1 + 160);
        if (!v40)
        {
          v41 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v41 = *v41;
          }

          v40 = sub_19045BC(v41);
          *(a1 + 160) = v40;
          v8 = v66;
        }

        v26 = sub_2255004(a3, v40, v8);
        goto LABEL_138;
      case 0x11u:
        if (v9 == 136)
        {
          v16 = v8 - 2;
          while (1)
          {
            v66 = v16 + 2;
            v17 = v16[2];
            v18 = v16 + 3;
            if (v17 < 0)
            {
              v19 = *v18;
              v20 = (v19 << 7) + v17;
              LODWORD(v17) = v20 - 128;
              if (v19 < 0)
              {
                v66 = sub_19587DC((v16 + 2), (v20 - 128));
                if (!v66)
                {
                  goto LABEL_145;
                }

                LODWORD(v17) = v23;
                goto LABEL_22;
              }

              v18 = v16 + 4;
            }

            v66 = v18;
LABEL_22:
            if (v17 > 6)
            {
              sub_156E760();
            }

            else
            {
              v21 = *(a1 + 48);
              if (v21 == *(a1 + 52))
              {
                v22 = v21 + 1;
                sub_1958E5C((a1 + 48), v21 + 1);
                *(*(a1 + 56) + 4 * v21) = v17;
              }

              else
              {
                *(*(a1 + 56) + 4 * v21) = v17;
                v22 = v21 + 1;
              }

              *(a1 + 48) = v22;
            }

            v16 = v66;
            if (*a3 <= v66 || *v66 != 392)
            {
              goto LABEL_139;
            }
          }
        }

        if (v9 == 138)
        {
          *&v67 = a1 + 48;
          *(&v67 + 1) = sub_183A874;
          v68 = a1 + 8;
          v69 = 17;
          v26 = sub_1216588(a3, v8, &v67);
LABEL_138:
          v66 = v26;
          if (!v26)
          {
            goto LABEL_145;
          }

LABEL_139:
          if (sub_195ADC0(a3, &v66, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_129:
        if (v9)
        {
          v64 = (v9 & 7) == 4;
        }

        else
        {
          v64 = 1;
        }

        if (!v64)
        {
          if ((v9 - 8000) >> 6 > 0x7C)
          {
            if (*v7)
            {
              v65 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v65 = sub_11F1920((a1 + 8));
              v8 = v66;
            }

            v26 = sub_1952690(v9, v65, v8, a3);
          }

          else
          {
            v26 = sub_19525AC((a1 + 16), v9, v8, &off_278A328, (a1 + 8), a3);
          }

          goto LABEL_138;
        }

        if (v8)
        {
          a3[10].i32[0] = v9 - 1;
        }

        else
        {
LABEL_145:
          v66 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return v66;
      default:
        goto LABEL_129;
    }
  }
}

char *sub_18D5C20(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 168);
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
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 64);
    *v6 = 18;
    v12 = *(v11 + 20);
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v6 + 1);
    }

    else
    {
      v13 = v6 + 2;
    }

    v6 = sub_18C9848(v11, v13, a3);
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_38;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_12;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v14 = *(a1 + 72);
  *v6 = 26;
  v15 = *(v14 + 20);
  v6[1] = v15;
  if (v15 > 0x7F)
  {
    v16 = sub_19575D0(v15, v6 + 1);
  }

  else
  {
    v16 = v6 + 2;
  }

  v6 = sub_18CA250(v14, v16, a3);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_38:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v17 = *(a1 + 80);
  *v6 = 34;
  v18 = *(v17 + 20);
  v6[1] = v18;
  if (v18 > 0x7F)
  {
    v19 = sub_19575D0(v18, v6 + 1);
  }

  else
  {
    v19 = v6 + 2;
  }

  v6 = sub_18CAB38(v17, v19, a3);
  if ((v5 & 8) == 0)
  {
LABEL_14:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_44:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v20 = *(a1 + 88);
  *v6 = 42;
  v21 = *(v20 + 20);
  v6[1] = v21;
  if (v21 > 0x7F)
  {
    v22 = sub_19575D0(v21, v6 + 1);
  }

  else
  {
    v22 = v6 + 2;
  }

  v6 = sub_18CD788(v20, v22, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_15:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_56;
  }

LABEL_50:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v23 = *(a1 + 96);
  *v6 = 50;
  v24 = *(v23 + 20);
  v6[1] = v24;
  if (v24 > 0x7F)
  {
    v25 = sub_19575D0(v24, v6 + 1);
  }

  else
  {
    v25 = v6 + 2;
  }

  v6 = sub_18CF470(v23, v25, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_16:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_62;
  }

LABEL_56:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v26 = *(a1 + 104);
  *v6 = 58;
  v27 = *(v26 + 20);
  v6[1] = v27;
  if (v27 > 0x7F)
  {
    v28 = sub_19575D0(v27, v6 + 1);
  }

  else
  {
    v28 = v6 + 2;
  }

  v6 = sub_18CFF74(v26, v28, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_17:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_68;
  }

LABEL_62:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v29 = *(a1 + 112);
  *v6 = 66;
  v30 = *(v29 + 20);
  v6[1] = v30;
  if (v30 > 0x7F)
  {
    v31 = sub_19575D0(v30, v6 + 1);
  }

  else
  {
    v31 = v6 + 2;
  }

  v6 = sub_18D0B8C(v29, v31, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_18:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_74;
  }

LABEL_68:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v32 = *(a1 + 120);
  *v6 = 74;
  v33 = *(v32 + 20);
  v6[1] = v33;
  if (v33 > 0x7F)
  {
    v34 = sub_19575D0(v33, v6 + 1);
  }

  else
  {
    v34 = v6 + 2;
  }

  v6 = sub_18D19F0(v32, v34, a3);
  if ((v5 & 0x100) == 0)
  {
LABEL_19:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_80;
  }

LABEL_74:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v35 = *(a1 + 128);
  *v6 = 82;
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

  v6 = sub_18D22D8(v35, v37, a3);
  if ((v5 & 0x200) == 0)
  {
LABEL_20:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_86;
  }

LABEL_80:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v38 = *(a1 + 136);
  *v6 = 90;
  v39 = *(v38 + 20);
  v6[1] = v39;
  if (v39 > 0x7F)
  {
    v40 = sub_19575D0(v39, v6 + 1);
  }

  else
  {
    v40 = v6 + 2;
  }

  v6 = sub_18D2BC0(v38, v40, a3);
  if ((v5 & 0x400) == 0)
  {
LABEL_21:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_92;
  }

LABEL_86:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v41 = *(a1 + 144);
  *v6 = 98;
  v42 = *(v41 + 20);
  v6[1] = v42;
  if (v42 > 0x7F)
  {
    v43 = sub_19575D0(v42, v6 + 1);
  }

  else
  {
    v43 = v6 + 2;
  }

  v6 = sub_18D42F0(v41, v43, a3);
  if ((v5 & 0x4000) == 0)
  {
LABEL_22:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_95;
  }

LABEL_92:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v44 = *(a1 + 172);
  *v6 = 104;
  v6[1] = v44;
  v6 += 2;
  if ((v5 & 0x8000) == 0)
  {
LABEL_23:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_98;
  }

LABEL_95:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v45 = *(a1 + 173);
  *v6 = 112;
  v6[1] = v45;
  v6 += 2;
  if ((v5 & 0x800) == 0)
  {
LABEL_24:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_104;
  }

LABEL_98:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v46 = *(a1 + 152);
  *v6 = 122;
  v47 = *(v46 + 40);
  v6[1] = v47;
  if (v47 > 0x7F)
  {
    v48 = sub_19575D0(v47, v6 + 1);
  }

  else
  {
    v48 = v6 + 2;
  }

  v6 = sub_13F6FB8(v46, v48, a3);
  if ((v5 & 0x1000) != 0)
  {
LABEL_104:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v49 = *(a1 + 160);
    *v6 = 386;
    v50 = *(v49 + 20);
    v6[2] = v50;
    if (v50 > 0x7F)
    {
      v51 = sub_19575D0(v50, v6 + 2);
    }

    else
    {
      v51 = v6 + 3;
    }

    v6 = sub_18D34E0(v49, v51, a3);
  }

LABEL_110:
  v52 = *(a1 + 48);
  if (v52 < 1)
  {
    v55 = v6;
  }

  else
  {
    for (i = 0; i != v52; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v54 = *(*(a1 + 56) + 4 * i);
      *v6 = 392;
      v6[2] = v54;
      if (v54 > 0x7F)
      {
        v6[2] = v54 | 0x80;
        v56 = v54 >> 7;
        v6[3] = v54 >> 7;
        v55 = v6 + 4;
        if (v54 >= 0x4000)
        {
          LOBYTE(v6) = v6[3];
          do
          {
            *(v55 - 1) = v6 | 0x80;
            v6 = (v56 >> 7);
            *v55++ = v56 >> 7;
            v57 = v56 >> 14;
            v56 >>= 7;
          }

          while (v57);
        }
      }

      else
      {
        v55 = v6 + 3;
      }

      v6 = v55;
    }
  }

  if (*(a1 + 26))
  {
    v55 = sub_1953428(a1 + 16, 1000, 2000, v55, a3);
  }

  v58 = *(a1 + 8);
  if ((v58 & 1) == 0)
  {
    return v55;
  }

  v60 = v58 & 0xFFFFFFFFFFFFFFFCLL;
  v61 = *(v60 + 31);
  if (v61 < 0)
  {
    v62 = *(v60 + 8);
    v61 = *(v60 + 16);
  }

  else
  {
    v62 = (v60 + 8);
  }

  if ((*a3 - v55) >= v61)
  {
    v63 = v61;
    memcpy(v55, v62, v61);
    v55 += v63;
    return v55;
  }

  return sub_1957130(a3, v62, v61, v55);
}

uint64_t sub_18D63E0(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(*(a1 + 56) + 4 * v4);
      if (v6 < 0)
      {
        v7 = 10;
      }

      else
      {
        v7 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
      }

      v5 += v7;
      ++v4;
    }

    while (v3 != v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = v2 + 2 * v3 + v5;
  v9 = *(a1 + 40);
  if (!v9)
  {
    goto LABEL_19;
  }

  if (v9)
  {
    v16 = sub_18C9A38(*(a1 + 64));
    v8 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 2) == 0)
    {
LABEL_12:
      if ((v9 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_35;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_12;
  }

  v17 = sub_18CA440(*(a1 + 72));
  v8 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 4) == 0)
  {
LABEL_13:
    if ((v9 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  v18 = sub_18CAD28(*(a1 + 80));
  v8 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 8) == 0)
  {
LABEL_14:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  v19 = sub_18CE288(*(a1 + 88));
  v8 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 0x10) == 0)
  {
LABEL_15:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_38:
    v21 = sub_18D0164(*(a1 + 104));
    v8 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 0x40) == 0)
    {
LABEL_17:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_37:
  v20 = sub_18CF6C4(*(a1 + 96));
  v8 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_16:
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_39:
  v22 = sub_18D1040(*(a1 + 112));
  v8 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 0x80) != 0)
  {
LABEL_18:
    v10 = sub_18D1BE0(*(a1 + 120));
    v8 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_31;
  }

  if ((v9 & 0x100) != 0)
  {
    v23 = sub_18D24C8(*(a1 + 128));
    v8 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 0x200) == 0)
    {
LABEL_22:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_43;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_22;
  }

  v24 = sub_18D2DB0(*(a1 + 136));
  v8 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 0x400) == 0)
  {
LABEL_23:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

LABEL_43:
  v25 = sub_18D46A0(*(a1 + 144));
  v8 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 0x800) == 0)
  {
LABEL_24:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

LABEL_45:
    v27 = sub_18D36A8(*(a1 + 160));
    v8 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 0x2000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_30;
  }

LABEL_44:
  v26 = sub_13F7080(*(a1 + 152));
  v8 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 0x1000) != 0)
  {
    goto LABEL_45;
  }

LABEL_25:
  if ((v9 & 0x2000) != 0)
  {
LABEL_26:
    v11 = *(a1 + 168);
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v11 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 11;
    }

    v8 += v13;
  }

LABEL_30:
  v8 += ((v9 >> 14) & 2) + ((v9 >> 13) & 2);
LABEL_31:
  v14 = *(a1 + 8);
  if (v14)
  {
    v28 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v29 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v29 < 0)
    {
      v29 = *(v28 + 16);
    }

    v8 += v29;
  }

  *(a1 + 44) = v8;
  return v8;
}

void sub_18D67A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = (a1 + 48);
    v6 = *(a1 + 48);
    sub_1958E5C((a1 + 48), v6 + v4);
    v7 = *(a1 + 56);
    *v5 += *(a2 + 48);
    memcpy((v7 + 4 * v6), *(a2 + 56), 4 * *(a2 + 48));
  }

  v8 = *(a2 + 40);
  if (!v8)
  {
    goto LABEL_77;
  }

  if (v8)
  {
    *(a1 + 40) |= 1u;
    v9 = *(a1 + 64);
    if (!v9)
    {
      v10 = *(a1 + 8);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      v9 = sub_1903ECC(v11);
      *(a1 + 64) = v9;
    }

    if (*(a2 + 64))
    {
      v12 = *(a2 + 64);
    }

    else
    {
      v12 = &off_2789F80;
    }

    sub_18C9B58(v9, v12);
    if ((v8 & 2) == 0)
    {
LABEL_6:
      if ((v8 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_29;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_6;
  }

  *(a1 + 40) |= 2u;
  v13 = *(a1 + 72);
  if (!v13)
  {
    v14 = *(a1 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    v13 = sub_1903F5C(v15);
    *(a1 + 72) = v13;
  }

  if (*(a2 + 72))
  {
    v16 = *(a2 + 72);
  }

  else
  {
    v16 = &off_2789FB0;
  }

  sub_18C9B58(v13, v16);
  if ((v8 & 4) == 0)
  {
LABEL_7:
    if ((v8 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_29:
  *(a1 + 40) |= 4u;
  v17 = *(a1 + 80);
  if (!v17)
  {
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    v17 = sub_1903FEC(v19);
    *(a1 + 80) = v17;
  }

  if (*(a2 + 80))
  {
    v20 = *(a2 + 80);
  }

  else
  {
    v20 = &off_2789FE0;
  }

  sub_18C9B58(v17, v20);
  if ((v8 & 8) == 0)
  {
LABEL_8:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_37:
  *(a1 + 40) |= 8u;
  v21 = *(a1 + 88);
  if (!v21)
  {
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    sub_1904174(v23);
    *(a1 + 88) = v21;
  }

  if (*(a2 + 88))
  {
    v24 = *(a2 + 88);
  }

  else
  {
    v24 = &off_278A060;
  }

  sub_18CE7C0(v21, v24);
  if ((v8 & 0x10) == 0)
  {
LABEL_9:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_53:
    *(a1 + 40) |= 0x20u;
    v29 = *(a1 + 104);
    if (!v29)
    {
      v30 = *(a1 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      v29 = sub_19042C0(v31);
      *(a1 + 104) = v29;
    }

    if (*(a2 + 104))
    {
      v32 = *(a2 + 104);
    }

    else
    {
      v32 = &off_278A160;
    }

    sub_18C9B58(v29, v32);
    if ((v8 & 0x40) == 0)
    {
LABEL_11:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_69;
    }

    goto LABEL_61;
  }

LABEL_45:
  *(a1 + 40) |= 0x10u;
  v25 = *(a1 + 96);
  if (!v25)
  {
    v26 = *(a1 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    v25 = sub_190422C(v27);
    *(a1 + 96) = v25;
  }

  if (*(a2 + 96))
  {
    v28 = *(a2 + 96);
  }

  else
  {
    v28 = &off_278A128;
  }

  sub_18CF834(v25, v28);
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_10:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_61:
  *(a1 + 40) |= 0x40u;
  v33 = *(a1 + 112);
  if (!v33)
  {
    v34 = *(a1 + 8);
    v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
    if (v34)
    {
      v35 = *v35;
    }

    sub_1904350(v35);
    *(a1 + 112) = v33;
  }

  if (*(a2 + 112))
  {
    v36 = *(a2 + 112);
  }

  else
  {
    v36 = &off_278A190;
  }

  sub_18D125C(v33, v36);
  if ((v8 & 0x80) != 0)
  {
LABEL_69:
    *(a1 + 40) |= 0x80u;
    v37 = *(a1 + 120);
    if (!v37)
    {
      v38 = *(a1 + 8);
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
      if (v38)
      {
        v39 = *v39;
      }

      v37 = sub_190440C(v39);
      *(a1 + 120) = v37;
    }

    if (*(a2 + 120))
    {
      v40 = *(a2 + 120);
    }

    else
    {
      v40 = &off_278A1F8;
    }

    sub_18C9B58(v37, v40);
  }

LABEL_77:
  if ((v8 & 0xFF00) == 0)
  {
    goto LABEL_88;
  }

  if ((v8 & 0x100) != 0)
  {
    *(a1 + 40) |= 0x100u;
    v42 = *(a1 + 128);
    if (!v42)
    {
      v43 = *(a1 + 8);
      v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
      if (v43)
      {
        v44 = *v44;
      }

      v42 = sub_190449C(v44);
      *(a1 + 128) = v42;
    }

    if (*(a2 + 128))
    {
      v45 = *(a2 + 128);
    }

    else
    {
      v45 = &off_278A228;
    }

    sub_18C9B58(v42, v45);
    if ((v8 & 0x200) == 0)
    {
LABEL_80:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_108;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_80;
  }

  *(a1 + 40) |= 0x200u;
  v46 = *(a1 + 136);
  if (!v46)
  {
    v47 = *(a1 + 8);
    v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
    if (v47)
    {
      v48 = *v48;
    }

    v46 = sub_190452C(v48);
    *(a1 + 136) = v46;
  }

  if (*(a2 + 136))
  {
    v49 = *(a2 + 136);
  }

  else
  {
    v49 = &off_278A258;
  }

  sub_18C9B58(v46, v49);
  if ((v8 & 0x400) == 0)
  {
LABEL_81:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_116;
  }

LABEL_108:
  *(a1 + 40) |= 0x400u;
  v50 = *(a1 + 144);
  if (!v50)
  {
    v51 = *(a1 + 8);
    v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
    if (v51)
    {
      v52 = *v52;
    }

    sub_1904660(v52);
    *(a1 + 144) = v50;
  }

  if (*(a2 + 144))
  {
    v53 = *(a2 + 144);
  }

  else
  {
    v53 = &off_278A2C8;
  }

  sub_18D487C(v50, v53);
  if ((v8 & 0x800) == 0)
  {
LABEL_82:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_124;
  }

LABEL_116:
  *(a1 + 40) |= 0x800u;
  v54 = *(a1 + 152);
  if (!v54)
  {
    v55 = *(a1 + 8);
    v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
    if (v55)
    {
      v56 = *v56;
    }

    v54 = sub_140457C(v56);
    *(a1 + 152) = v54;
  }

  if (*(a2 + 152))
  {
    v57 = *(a2 + 152);
  }

  else
  {
    v57 = &off_276F658;
  }

  sub_138F72C(v54, v57);
  if ((v8 & 0x1000) == 0)
  {
LABEL_83:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_132;
  }

LABEL_124:
  *(a1 + 40) |= 0x1000u;
  v58 = *(a1 + 160);
  if (!v58)
  {
    v59 = *(a1 + 8);
    v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
    if (v59)
    {
      v60 = *v60;
    }

    v58 = sub_19045BC(v60);
    *(a1 + 160) = v58;
  }

  if (*(a2 + 160))
  {
    v61 = *(a2 + 160);
  }

  else
  {
    v61 = &off_278A288;
  }

  sub_18D37D0(v58, v61);
  if ((v8 & 0x2000) == 0)
  {
LABEL_84:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_85;
    }

LABEL_133:
    *(a1 + 172) = *(a2 + 172);
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

LABEL_132:
  *(a1 + 168) = *(a2 + 168);
  if ((v8 & 0x4000) != 0)
  {
    goto LABEL_133;
  }

LABEL_85:
  if ((v8 & 0x8000) != 0)
  {
LABEL_86:
    *(a1 + 173) = *(a2 + 173);
  }

LABEL_87:
  *(a1 + 40) |= v8;
LABEL_88:
  sub_225EA0C(a1 + 16, a2 + 16);
  v41 = *(a2 + 8);
  if (v41)
  {

    sub_1957EF4((a1 + 8), (v41 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_18D6CB0(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      result = sub_18C9C78(*(a1 + 64));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 2) != 0)
    {
      result = sub_18CA560(*(a1 + 72));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 4) != 0)
    {
      result = sub_18CAE48(*(a1 + 80));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 8) != 0)
    {
      result = sub_18CED10(*(a1 + 88));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x10) != 0)
    {
      result = sub_18CF99C(*(a1 + 96));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x20) != 0)
    {
      result = sub_18D0284(*(a1 + 104));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x40) != 0)
    {
      result = sub_18D1418(*(a1 + 112));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x80) != 0)
    {
      result = sub_18D1D00(*(a1 + 120));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x100) != 0)
    {
      result = sub_18D25E8(*(a1 + 128));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x200) != 0)
    {
      result = sub_18D2ED0(*(a1 + 136));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x800) != 0)
    {
      result = sub_13F70D0(*(a1 + 152));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x1000) == 0)
    {
      return 1;
    }

    result = sub_18D3918(*(a1 + 160));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_18D6DE0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = off_2719B58;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1409AF8(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
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
  v11 = *(a2 + 40);
  if (v11)
  {
    sub_1958E5C((a1 + 40), v11);
    v12 = *(a1 + 48);
    *(a1 + 40) += *(a2 + 40);
    memcpy(v12, *(a2 + 48), 4 * *(a2 + 40));
  }

  *(a1 + 56) = 0;
  v13 = *(a2 + 8);
  if (v13)
  {
    sub_1957EF4(v4, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_18D6EFC(_Unwind_Exception *a1)
{
  sub_1956ABC(v4);
  sub_140996C(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18D6F50(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 5));
  sub_140996C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18D6FD8(void *a1)
{
  sub_18D6F50(a1);

  operator delete();
}

uint64_t sub_18D7010(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E48B0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 32) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_18D7090(uint64_t a1, char *a2, int32x2_t *a3)
{
  v30 = a2;
  if (sub_195ADC0(a3, &v30, a3[11].i32[1]))
  {
    return v30;
  }

  v6 = (a1 + 8);
  while (1)
  {
    v7 = v30 + 1;
    v8 = *v30;
    if (*v30 < 0)
    {
      v9 = *v7;
      v10 = v8 + (v9 << 7);
      v8 = v10 - 128;
      if (v9 < 0)
      {
        v7 = sub_1958824(v30, v10 - 128);
        v8 = v11;
      }

      else
      {
        v7 = v30 + 2;
      }
    }

    v30 = v7;
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 == 16)
    {
      v16 = v7 - 1;
      while (1)
      {
        v30 = v16 + 1;
        v17 = v16[1];
        v18 = v16 + 2;
        if (v17 < 0)
        {
          v19 = *v18;
          v20 = (v19 << 7) + v17;
          LODWORD(v17) = v20 - 128;
          if (v19 < 0)
          {
            v30 = sub_19587DC((v16 + 1), (v20 - 128));
            if (!v30)
            {
              return 0;
            }

            LODWORD(v17) = v23;
            goto LABEL_28;
          }

          v18 = v16 + 3;
        }

        v30 = v18;
LABEL_28:
        if (sub_1796880(v17))
        {
          v21 = *(a1 + 40);
          if (v21 == *(a1 + 44))
          {
            v22 = v21 + 1;
            sub_1958E5C((a1 + 40), v21 + 1);
            *(*(a1 + 48) + 4 * v21) = v17;
          }

          else
          {
            *(*(a1 + 48) + 4 * v21) = v17;
            v22 = v21 + 1;
          }

          *(a1 + 40) = v22;
        }

        else
        {
          sub_12E8418();
        }

        v16 = v30;
        if (*a3 <= v30 || *v30 != 16)
        {
          goto LABEL_47;
        }
      }
    }

    if (v8 == 18)
    {
      *&v31 = a1 + 40;
      *(&v31 + 1) = sub_1796880;
      v32 = a1 + 8;
      v33 = 2;
      v15 = sub_1216588(a3, v7, &v31);
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

    if (v13)
    {
      if (!v7)
      {
        return 0;
      }

      a3[10].i32[0] = v8 - 1;
      return v30;
    }

    if (*v6)
    {
      v14 = (*v6 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v7 = v30;
    }

    v15 = sub_1952690(v8, v14, v7, a3);
LABEL_20:
    v30 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_47:
    if (sub_195ADC0(a3, &v30, a3[11].i32[1]))
    {
      return v30;
    }
  }

  if (v8 >> 3 != 1 || v8 != 10)
  {
    goto LABEL_13;
  }

  v24 = v7 - 1;
  while (1)
  {
    v25 = (v24 + 1);
    v30 = v24 + 1;
    v26 = *(a1 + 32);
    if (v26 && (v27 = *(a1 + 24), v27 < *v26))
    {
      *(a1 + 24) = v27 + 1;
      v28 = *&v26[2 * v27 + 2];
    }

    else
    {
      v29 = sub_16F5BD8(*(a1 + 16));
      v28 = sub_19593CC(a1 + 16, v29);
      v25 = v30;
    }

    v24 = sub_21F7188(a3, v28, v25);
    v30 = v24;
    if (!v24)
    {
      return 0;
    }

    if (*a3 <= v24 || *v24 != 10)
    {
      goto LABEL_47;
    }
  }
}

char *sub_18D735C(uint64_t a1, char *a2, _DWORD *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 32) + 8 * i + 8);
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

      a2 = sub_16E886C(v8, v10, a3);
    }
  }

  v11 = *(a1 + 40);
  if (v11 < 1)
  {
    v14 = a2;
  }

  else
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v13 = *(*(a1 + 48) + 4 * j);
      *a2 = 16;
      a2[1] = v13;
      if (v13 > 0x7F)
      {
        a2[1] = v13 | 0x80;
        v15 = v13 >> 7;
        a2[2] = v13 >> 7;
        v14 = a2 + 3;
        if (v13 >= 0x4000)
        {
          LOBYTE(a2) = a2[2];
          do
          {
            *(v14 - 1) = a2 | 0x80;
            a2 = (v15 >> 7);
            *v14++ = v15 >> 7;
            v16 = v15 >> 14;
            v15 >>= 7;
          }

          while (v16);
        }
      }

      else
      {
        v14 = a2 + 2;
      }

      a2 = v14;
    }
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v14;
  }

  v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
  v20 = *(v19 + 31);
  if (v20 < 0)
  {
    v21 = *(v19 + 8);
    v20 = *(v19 + 16);
  }

  else
  {
    v21 = (v19 + 8);
  }

  if (*a3 - v14 >= v20)
  {
    v22 = v20;
    memcpy(v14, v21, v20);
    v14 += v22;
    return v14;
  }

  return sub_1957130(a3, v21, v20, v14);
}

uint64_t sub_18D7538(uint64_t a1)
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

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 48) + 4 * v9);
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

  result = v2 + v8 + v10;
  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    result += v16;
  }

  *(a1 + 56) = result;
  return result;
}

void sub_18D7638(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1409AF8((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
    v7 = *(a1 + 24) + v4;
    *(a1 + 24) = v7;
    v8 = *(a1 + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if (v9)
  {
    v10 = *(a1 + 40);
    sub_1958E5C((a1 + 40), v10 + v9);
    v11 = *(a1 + 48);
    *(a1 + 40) += *(a2 + 40);
    memcpy((v11 + 4 * v10), *(a2 + 48), 4 * *(a2 + 40));
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_18D7738(uint64_t a1)
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

uint64_t sub_18D77A0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_2719BD8;
  *(a1 + 16) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    sub_1957EF4((a1 + 8), (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_18D780C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18D783C(void *a1)
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

void sub_18D78B0(void *a1)
{
  sub_18D783C(a1);

  operator delete();
}

uint64_t *sub_18D78E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_18D78F8(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_18D798C(uint64_t a1)
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

std::string *sub_18D79B8(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_18D79EC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = off_2719C58;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_11F1A54(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
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
    sub_19451E8((a1 + 40), v13, (v12 + 8), v11, **(a1 + 56) - *(a1 + 48));
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

void sub_18D7B3C(_Unwind_Exception *a1)
{
  sub_19439C8(v4);
  sub_12E6204(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18D7B94(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_19439C8(a1 + 5);
  sub_12E6204(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18D7C20(void *a1)
{
  sub_18D7B94(a1);

  operator delete();
}

uint64_t sub_18D7C58(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E4E44(v4);
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
      result = sub_1750E64(v7);
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

char *sub_18D7CFC(uint64_t a1, char *a2, int32x2_t *a3)
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
              v19 = sub_1753288(*(a1 + 40));
              v18 = sub_19593CC(a1 + 40, v19);
              v15 = v26;
            }

            v14 = sub_2254458(a3, v18, v15);
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
            v25 = sub_16F5828(*(a1 + 16));
            v24 = sub_19593CC(a1 + 16, v25);
            v21 = v26;
          }

          v20 = sub_21F4D60(a3, v24, v21);
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

char *sub_18D7F30(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_16E5070(v8, v10, a3);
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

      __dst = sub_175108C(v13, v15, a3);
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

uint64_t sub_18D80F4(uint64_t a1)
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
      v7 = sub_16E51F0(v6);
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
      v14 = sub_1751208(v13);
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

void sub_18D81EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_11F1A54((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
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
    sub_19451E8((a1 + 40), v11, (v10 + 8), v9, **(a1 + 56) - *(a1 + 48));
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

BOOL sub_18D8304(uint64_t a1)
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
    v5 = sub_16E5370(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_18D836C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_2719CD8;
  *(a1 + 16) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    sub_1957EF4((a1 + 8), (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}