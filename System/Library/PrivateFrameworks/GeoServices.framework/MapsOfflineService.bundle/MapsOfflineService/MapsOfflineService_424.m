uint64_t sub_173C250(uint64_t a1)
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

void sub_173C2F0(uint64_t a1)
{
  sub_173C250(a1);

  operator delete();
}

uint64_t sub_173C328(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v30 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v30, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v30 + 1);
    v8 = **v30;
    if (**v30 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v30, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v30 + 2);
      }
    }

    *v30 = v7;
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
    v22 = v7 + 1;
    v21 = *v7;
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    v23 = *v22;
    v21 = (v23 << 7) + v21 - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_31:
      *v30 = v22;
      *(a1 + 36) = v21 != 0;
      goto LABEL_36;
    }

    v28 = sub_19587DC(v7, v21);
    *v30 = v28;
    *(a1 + 36) = v29 != 0;
    if (!v28)
    {
      goto LABEL_46;
    }

LABEL_36:
    if (sub_195ADC0(a3, v30, a3[11].i32[1]))
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

    v17 = v7 + 1;
    v18 = *v7;
    if (v18 < 0)
    {
      v19 = *v17;
      v20 = (v19 << 7) + v18;
      LODWORD(v18) = v20 - 128;
      if (v19 < 0)
      {
        *v30 = sub_19587DC(v7, (v20 - 128));
        if (!*v30)
        {
          goto LABEL_46;
        }

        LODWORD(v18) = v27;
        goto LABEL_25;
      }

      v17 = v7 + 2;
    }

    *v30 = v17;
LABEL_25:
    if (sub_140BCAC(v18))
    {
      *(a1 + 16) |= 2u;
      *(a1 + 32) = v18;
    }

    else
    {
      sub_12E8418();
    }

    goto LABEL_36;
  }

  if (v11 == 1 && v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v24 = *(a1 + 8);
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v25 = *v25;
    }

    v26 = sub_194DB04((a1 + 24), v25);
    v16 = sub_1958890(v26, *v30, a3);
LABEL_35:
    *v30 = v16;
    if (!v16)
    {
      goto LABEL_46;
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
      v7 = *v30;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_35;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_46:
  *v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v30;
}

char *sub_173C590(uint64_t a1, char *__dst, void *a3)
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

    v8 = *(a1 + 32);
    *v4 = 16;
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
  }

  else
  {
    v7 = v4;
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 36);
    *v7 = 24;
    v7[1] = v12;
    v7 += 2;
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v7;
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

  if (*a3 - v7 >= v16)
  {
    v18 = v16;
    memcpy(v7, v17, v16);
    v7 += v18;
    return v7;
  }

  return sub_1957130(a3, v17, v16, v7);
}

uint64_t sub_173C714(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_14;
  }

  if (v1)
  {
    v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v8;
  }

LABEL_13:
  v3 = v2 + ((v1 >> 1) & 2);
LABEL_14:
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

  *(a1 + 20) = v3;
  return v3;
}

double sub_173C7FC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_2705888;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

uint64_t sub_173C87C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2705908;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_173C91C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2705988;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_173C9A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2705A08;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 60) = 1;
  return result;
}

double sub_173CA50(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_2705A88;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  return result;
}

uint64_t sub_173CAD0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2705B08;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 36) = 1;
  return result;
}

uint64_t sub_173CB5C(int a1)
{
  result = 1;
  if (a1 <= 1300)
  {
    if (a1 > 1100)
    {
      if ((a1 - 1201) > 0x3E || ((1 << (a1 + 79)) & 0x7FFC0000000007E3) == 0)
      {
        v3 = a1 - 1101;
        if (v3 > 0xC || v3 == 8)
        {
          return 0;
        }
      }

      return result;
    }

    if (a1 < 0x14 || (a1 - 501) < 7 || (a1 - 1001) < 7)
    {
      return result;
    }

    return 0;
  }

  if (a1 <= 2050)
  {
    if ((a1 - 1701) < 0x14 || (a1 - 1301) < 6 || (a1 - 2001) < 3)
    {
      return result;
    }

    return 0;
  }

  if (a1 > 2400)
  {
    if (a1 <= 2600)
    {
      if ((a1 - 2501) < 7 || a1 == 2401)
      {
        return result;
      }
    }

    else if ((a1 - 2601) < 5 || (a1 - 5000) < 5 || a1 == 10000)
    {
      return result;
    }

    return 0;
  }

  if (((a1 - 2051) > 0x37 || ((1 << (a1 - 3)) & 0xFC00000000000FLL) == 0) && (a1 - 2201) >= 8 && (a1 - 2301) >= 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_173CCA4(int a1)
{
  result = 1;
  if (a1 > 1200)
  {
    if (a1 > 1800)
    {
      if (a1 <= 10000)
      {
        if ((a1 - 1801) >= 2 && (a1 - 2001) >= 2 && a1 != 1901)
        {
          return 0;
        }

        return result;
      }

      v3 = a1 - 10001;
    }

    else
    {
      if (a1 > 1300)
      {
        if ((a1 - 1301) >= 3 && (a1 - 1501) >= 2 && a1 != 1401)
        {
          return 0;
        }

        return result;
      }

      v3 = a1 - 1201;
    }

    if (v3 >= 4)
    {
      return 0;
    }
  }

  else if (a1 <= 600)
  {
    if ((a1 - 101) >= 9 && a1 >= 2)
    {
      return 0;
    }
  }

  else if ((a1 - 601) >= 8 && (a1 - 1101) >= 6)
  {
    return 0;
  }

  return result;
}

uint64_t sub_173CD78(uint64_t a1)
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

void sub_173CE18(uint64_t a1)
{
  sub_173CD78(a1);

  operator delete();
}

uint64_t sub_173CE50(uint64_t a1)
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

uint64_t sub_173CE94(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_173CFCC(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_173D094(uint64_t a1)
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

uint64_t sub_173D128(uint64_t a1)
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

  if (a1 != &off_27806A8)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      sub_173CD78(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_173D218(uint64_t a1)
{
  sub_173D128(a1);

  operator delete();
}

uint64_t sub_173D250(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
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
    result = sub_173CE50(*(a1 + 64));
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
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_173D32C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v37 = a2;
  if (sub_195ADC0(a3, v37, a3[11].i32[1]))
  {
    return *v37;
  }

  while (1)
  {
    v6 = (*v37 + 1);
    v7 = **v37;
    if (**v37 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v37, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v37 + 2);
      }
    }

    *v37 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      break;
    }

    if (v10 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 2u;
        v19 = *(a1 + 8);
        v17 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v17 = *v17;
        }

        v18 = (a1 + 56);
LABEL_30:
        v20 = sub_194DB04(v18, v17);
        v14 = sub_1958890(v20, *v37, a3);
        goto LABEL_57;
      }

      goto LABEL_50;
    }

    if (v10 == 4)
    {
      if (v7 == 34)
      {
        v21 = (v6 - 1);
        while (1)
        {
          v22 = (v21 + 1);
          *v37 = v21 + 1;
          v23 = *(a1 + 40);
          if (v23 && (v24 = *(a1 + 32), v24 < *v23))
          {
            *(a1 + 32) = v24 + 1;
            v25 = *&v23[2 * v24 + 2];
          }

          else
          {
            v26 = *(a1 + 24);
            if (!v26)
            {
              operator new();
            }

            *v28 = v27;
            v28[1] = sub_195A650;
            *v27 = 0;
            v27[1] = 0;
            v27[2] = 0;
            v25 = sub_19593CC(a1 + 24, v27);
            v22 = *v37;
          }

          v21 = sub_1958890(v25, v22, a3);
          *v37 = v21;
          if (!v21)
          {
            goto LABEL_66;
          }

          if (*a3 <= v21 || *v21 != 34)
          {
            goto LABEL_58;
          }
        }
      }

      goto LABEL_50;
    }

    if (v10 != 1000 || v7 != 66)
    {
      goto LABEL_50;
    }

    *(a1 + 16) |= 4u;
    v11 = *(a1 + 64);
    if (!v11)
    {
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_1749468(v13);
      *(a1 + 64) = v11;
      v6 = *v37;
    }

    v14 = sub_2239F64(a3, v11, v6);
LABEL_57:
    *v37 = v14;
    if (!v14)
    {
      goto LABEL_66;
    }

LABEL_58:
    if (sub_195ADC0(a3, v37, a3[11].i32[1]))
    {
      return *v37;
    }
  }

  if (v10 == 1)
  {
    if (v7 != 8)
    {
      goto LABEL_50;
    }

    v29 = (v6 + 1);
    v30 = *v6;
    if (v30 < 0)
    {
      v31 = *v29;
      v32 = (v31 << 7) + v30;
      LODWORD(v30) = v32 - 128;
      if (v31 < 0)
      {
        *v37 = sub_19587DC(v6, (v32 - 128));
        if (!*v37)
        {
          goto LABEL_66;
        }

        LODWORD(v30) = v36;
        goto LABEL_48;
      }

      v29 = (v6 + 2);
    }

    *v37 = v29;
LABEL_48:
    if (sub_173CB5C(v30))
    {
      *(a1 + 16) |= 8u;
      *(a1 + 72) = v30;
    }

    else
    {
      sub_12E8450();
    }

    goto LABEL_58;
  }

  if (v10 == 2 && v7 == 18)
  {
    *(a1 + 16) |= 1u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v18 = (a1 + 48);
    goto LABEL_30;
  }

LABEL_50:
  if (v7)
  {
    v33 = (v7 & 7) == 4;
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
      v6 = *v37;
    }

    v14 = sub_1952690(v7, v35, v6, a3);
    goto LABEL_57;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v37;
  }

LABEL_66:
  *v37 = 0;
  return *v37;
}

char *sub_173D698(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 72);
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
    v6 = sub_128AEEC(a3, 2, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  if ((v5 & 2) != 0)
  {
    v6 = sub_128AEEC(a3, 3, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v6);
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
        v6 = sub_1957480(a3, 4, v13, v6);
      }

      else
      {
        *v6 = 34;
        v6[1] = v14;
        if (*(v13 + 23) < 0)
        {
          v13 = *v13;
        }

        v15 = v6 + 2;
        memcpy(v15, v13, v14);
        v6 = &v15[v14];
      }

      v12 += 8;
      --v11;
    }

    while (v11);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v16 = *(a1 + 64);
    *v6 = 16066;
    v17 = *(v16 + 20);
    v6[2] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v6 + 2);
    }

    else
    {
      v18 = v6 + 3;
    }

    v6 = sub_173CFCC(v16, v18, a3);
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v22)
  {
    v24 = v22;
    memcpy(v6, v23, v22);
    v6 += v24;
    return v6;
  }

  return sub_1957130(a3, v23, v22, v6);
}

uint64_t sub_173D914(uint64_t a1)
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
  if ((v8 & 0xF) != 0)
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

      v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_11:
        if ((v8 & 4) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_20;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

    v12 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
LABEL_12:
      if ((v8 & 8) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_21;
    }

LABEL_20:
    v15 = sub_173D094(*(a1 + 64));
    v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v8 & 8) == 0)
    {
      goto LABEL_25;
    }

LABEL_21:
    v16 = *(a1 + 72);
    if (v16 < 0)
    {
      v17 = 11;
    }

    else
    {
      v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v17;
  }

LABEL_25:
  v18 = *(a1 + 8);
  if (v18)
  {
    v20 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    v4 += v21;
  }

  *(a1 + 20) = v4;
  return v4;
}

std::string *sub_173DAD0(std::string *result, uint64_t a2)
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
      LODWORD(v3[3].__r_.__value_.__l.__data_) = *(a2 + 72);
      goto LABEL_10;
    }

LABEL_21:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v17 = v3[2].__r_.__value_.__r.__words[2];
    if (!v17)
    {
      v18 = v3->__r_.__value_.__l.__size_;
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_1749468(v19);
      v3[2].__r_.__value_.__r.__words[2] = v17;
    }

    if (*(a2 + 64))
    {
      v20 = *(a2 + 64);
    }

    else
    {
      v20 = &off_2780688;
    }

    result = sub_132DE2C(v17, v20);
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

uint64_t sub_173DC8C(uint64_t a1)
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
  if (a1 != &off_27806F8)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_173D128(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1763AB8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_173DD50(uint64_t a1)
{
  sub_173DC8C(a1);

  operator delete();
}

uint64_t sub_173DD88(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_173D250(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_173D250(*(v1 + 48));
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

char *sub_173DE18(uint64_t a1, char *a2, int32x2_t *a3)
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

          v15 = sub_17494EC(v17);
          *(a1 + 48) = v15;
          v6 = v25;
        }

        v14 = sub_2239FF4(a3, v15, v6);
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
          v23 = sub_17494EC(*(a1 + 24));
          v22 = sub_19593CC(a1 + 24, v23);
          v19 = v25;
        }

        v18 = sub_2239FF4(a3, v22, v19);
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

char *sub_173DFFC(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_173D698(v8, v10, a3);
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

    __dst = sub_173D698(v11, v13, a3);
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

uint64_t sub_173E1A4(uint64_t a1)
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
      v7 = sub_173D914(v6);
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
    v8 = sub_173D914(*(a1 + 48));
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

std::string *sub_173E280(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_1763C44(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    data = v3[2].__r_.__value_.__l.__data_;
    if (!data)
    {
      size = v3->__r_.__value_.__l.__size_;
      v12 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v12 = *v12;
      }

      data = sub_17494EC(v12);
      v3[2].__r_.__value_.__r.__words[0] = data;
      v9 = *(a2 + 48);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_27806A8;
    }

    result = sub_173DAD0(data, v13);
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_173E3A8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1763AB8(a1 + 5);
  sub_1763AB8(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_173E434(void *a1)
{
  sub_173E3A8(a1);

  operator delete();
}

uint64_t sub_173E46C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_173D250(v4);
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
      result = sub_173D250(v7);
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

char *sub_173E510(uint64_t a1, char *a2, int32x2_t *a3)
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
              v19 = sub_17494EC(*(a1 + 40));
              v18 = sub_19593CC(a1 + 40, v19);
              v15 = v26;
            }

            v14 = sub_2239FF4(a3, v18, v15);
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
            v25 = sub_17494EC(*(a1 + 16));
            v24 = sub_19593CC(a1 + 16, v25);
            v21 = v26;
          }

          v20 = sub_2239FF4(a3, v24, v21);
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

char *sub_173E744(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_173D698(v8, v10, a3);
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

      __dst = sub_173D698(v13, v15, a3);
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

uint64_t sub_173E908(uint64_t a1)
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
      v7 = sub_173D914(v6);
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
      v14 = sub_173D914(v13);
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

std::string *sub_173EA00(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_1763C44(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
    v7 = LODWORD(v3[1].__r_.__value_.__l.__data_) + v4;
    LODWORD(v3[1].__r_.__value_.__l.__data_) = v7;
    size = v3[1].__r_.__value_.__l.__size_;
    if (*size < v7)
    {
      *size = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a2 + 56);
    v11 = sub_19592E8(&v3[1].__r_.__value_.__r.__words[2], *(a2 + 48));
    result = sub_1763C44(&v3[1].__r_.__value_.__r.__words[2], v11, (v10 + 8), v9, *v3[2].__r_.__value_.__l.__size_ - LODWORD(v3[2].__r_.__value_.__l.__data_));
    v12 = LODWORD(v3[2].__r_.__value_.__l.__data_) + v9;
    LODWORD(v3[2].__r_.__value_.__l.__data_) = v12;
    v13 = v3[2].__r_.__value_.__l.__size_;
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_173EB30(uint64_t a1)
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

void sub_173EBE8(uint64_t a1)
{
  sub_173EB30(a1);

  operator delete();
}

uint64_t sub_173EC20(uint64_t a1)
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

uint64_t sub_173EC9C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_173EE1C(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_173EF04(uint64_t a1)
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

void *sub_173EFF0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956AFC(a1 + 8);
  sub_1956AFC(a1 + 5);
  sub_1956AFC(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_173F07C(void *a1)
{
  sub_173EFF0(a1);

  operator delete();
}

uint64_t sub_173F0B4(uint64_t a1)
{
  sub_12A41D0(a1 + 16);
  sub_12A41D0(a1 + 40);
  result = sub_12A41D0(a1 + 64);
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_173F114(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v39 = a2;
  if ((sub_195ADC0(a3, v39, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = (*v39 + 1);
      v7 = **v39;
      if (**v39 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          v6 = sub_1958824(*v39, v8 - 128);
          v7 = v9;
        }

        else
        {
          v6 = (*v39 + 2);
        }
      }

      *v39 = v6;
      v10 = v7 >> 3;
      if (v7 >> 3 == 3)
      {
        if (v7 == 26)
        {
          v23 = v6 - 1;
          while (1)
          {
            v24 = (v23 + 1);
            *v39 = v23 + 1;
            v25 = *(a1 + 80);
            if (v25 && (v26 = *(a1 + 72), v26 < *v25))
            {
              *(a1 + 72) = v26 + 1;
              v27 = *&v25[2 * v26 + 2];
            }

            else
            {
              v28 = *(a1 + 64);
              if (!v28)
              {
                operator new();
              }

              *v30 = v29;
              v30[1] = sub_195A650;
              *v29 = 0;
              v29[1] = 0;
              v29[2] = 0;
              v27 = sub_19593CC(a1 + 64, v29);
              v24 = *v39;
            }

            v23 = sub_1958890(v27, v24, a3);
            *v39 = v23;
            if (!v23)
            {
              goto LABEL_60;
            }

            if (*a3 <= v23 || *v23 != 26)
            {
              goto LABEL_55;
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
            *v39 = v15 + 1;
            v17 = *(a1 + 56);
            if (v17 && (v18 = *(a1 + 48), v18 < *v17))
            {
              *(a1 + 48) = v18 + 1;
              v19 = *&v17[2 * v18 + 2];
            }

            else
            {
              v20 = *(a1 + 40);
              if (!v20)
              {
                operator new();
              }

              *v22 = v21;
              v22[1] = sub_195A650;
              *v21 = 0;
              v21[1] = 0;
              v21[2] = 0;
              v19 = sub_19593CC(a1 + 40, v21);
              v16 = *v39;
            }

            v15 = sub_1958890(v19, v16, a3);
            *v39 = v15;
            if (!v15)
            {
              goto LABEL_60;
            }

            if (*a3 <= v15 || *v15 != 18)
            {
              goto LABEL_55;
            }
          }
        }
      }

      else if (v10 == 1 && v7 == 10)
      {
        v31 = v6 - 1;
        while (1)
        {
          v32 = (v31 + 1);
          *v39 = v31 + 1;
          v33 = *(a1 + 32);
          if (v33 && (v34 = *(a1 + 24), v34 < *v33))
          {
            *(a1 + 24) = v34 + 1;
            v35 = *&v33[2 * v34 + 2];
          }

          else
          {
            v36 = *(a1 + 16);
            if (!v36)
            {
              operator new();
            }

            *v38 = v37;
            v38[1] = sub_195A650;
            *v37 = 0;
            v37[1] = 0;
            v37[2] = 0;
            v35 = sub_19593CC(a1 + 16, v37);
            v32 = *v39;
          }

          v31 = sub_1958890(v35, v32, a3);
          *v39 = v31;
          if (!v31)
          {
            goto LABEL_60;
          }

          if (*a3 <= v31 || *v31 != 10)
          {
            goto LABEL_55;
          }
        }
      }

      if (!v7 || (v7 & 7) == 4)
      {
        break;
      }

      v13 = *(a1 + 8);
      if (v13)
      {
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v14 = sub_11F1920((a1 + 8));
        v6 = *v39;
      }

      *v39 = sub_1952690(v7, v14, v6, a3);
      if (!*v39)
      {
        goto LABEL_60;
      }

LABEL_55:
      if (sub_195ADC0(a3, v39, a3[11].i32[1]))
      {
        return *v39;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return *v39;
    }

LABEL_60:
    *v39 = 0;
  }

  return *v39;
}

char *sub_173F4A4(uint64_t a1, char *__dst, _DWORD *a3)
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

  v11 = *(a1 + 48);
  if (v11 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = *(*(a1 + 56) + v12);
      v14 = *(v13 + 23);
      if (v14 < 0 && (v14 = v13[1], v14 > 127) || *a3 - __dst + 14 < v14)
      {
        __dst = sub_1957480(a3, 2, v13, __dst);
      }

      else
      {
        *__dst = 18;
        __dst[1] = v14;
        if (*(v13 + 23) < 0)
        {
          v13 = *v13;
        }

        v15 = __dst + 2;
        memcpy(v15, v13, v14);
        __dst = &v15[v14];
      }

      v12 += 8;
      --v11;
    }

    while (v11);
  }

  v16 = *(a1 + 72);
  if (v16 >= 1)
  {
    v17 = 8;
    do
    {
      v18 = *(*(a1 + 80) + v17);
      v19 = *(v18 + 23);
      if (v19 < 0 && (v19 = v18[1], v19 > 127) || *a3 - __dst + 14 < v19)
      {
        __dst = sub_1957480(a3, 3, v18, __dst);
      }

      else
      {
        *__dst = 26;
        __dst[1] = v19;
        if (*(v18 + 23) < 0)
        {
          v18 = *v18;
        }

        v20 = __dst + 2;
        memcpy(v20, v18, v19);
        __dst = &v20[v19];
      }

      v17 += 8;
      --v16;
    }

    while (v16);
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return __dst;
  }

  v23 = v21 & 0xFFFFFFFFFFFFFFFCLL;
  v24 = *(v23 + 31);
  if (v24 < 0)
  {
    v25 = *(v23 + 8);
    v24 = *(v23 + 16);
  }

  else
  {
    v25 = (v23 + 8);
  }

  if (*a3 - __dst >= v24)
  {
    v26 = v24;
    memcpy(__dst, v25, v24);
    __dst += v26;
    return __dst;
  }

  return sub_1957130(a3, v25, v24, __dst);
}

uint64_t sub_173F728(uint64_t a1)
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

  v7 = *(a1 + 48);
  v8 = v3 + v7;
  if (v7 >= 1)
  {
    v9 = (*(a1 + 56) + 8);
    do
    {
      v10 = *v9++;
      v11 = *(v10 + 23);
      v12 = *(v10 + 8);
      if ((v11 & 0x80u) == 0)
      {
        v12 = v11;
      }

      v8 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      --v7;
    }

    while (v7);
  }

  v13 = *(a1 + 72);
  v14 = v8 + v13;
  if (v13 >= 1)
  {
    v15 = (*(a1 + 80) + 8);
    do
    {
      v16 = *v15++;
      v17 = *(v16 + 23);
      v18 = *(v16 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v18 = v17;
      }

      v14 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6);
      --v13;
    }

    while (v13);
  }

  v19 = *(a1 + 8);
  if (v19)
  {
    v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v14 += v22;
  }

  *(a1 + 88) = v14;
  return v14;
}

std::string *sub_173F868(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_1201B48(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
    v7 = LODWORD(v3[1].__r_.__value_.__l.__data_) + v4;
    LODWORD(v3[1].__r_.__value_.__l.__data_) = v7;
    size = v3[1].__r_.__value_.__l.__size_;
    if (*size < v7)
    {
      *size = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a2 + 56);
    v11 = sub_19592E8(&v3[1].__r_.__value_.__r.__words[2], *(a2 + 48));
    result = sub_1201B48(&v3[1].__r_.__value_.__r.__words[2], v11, (v10 + 8), v9, *v3[2].__r_.__value_.__l.__size_ - LODWORD(v3[2].__r_.__value_.__l.__data_));
    v12 = LODWORD(v3[2].__r_.__value_.__l.__data_) + v9;
    LODWORD(v3[2].__r_.__value_.__l.__data_) = v12;
    v13 = v3[2].__r_.__value_.__l.__size_;
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = *(a2 + 80);
    v16 = sub_19592E8(&v3[2].__r_.__value_.__r.__words[2], *(a2 + 72));
    result = sub_1201B48(&v3[2].__r_.__value_.__r.__words[2], v16, (v15 + 8), v14, *v3[3].__r_.__value_.__l.__size_ - LODWORD(v3[3].__r_.__value_.__l.__data_));
    v17 = LODWORD(v3[3].__r_.__value_.__l.__data_) + v14;
    LODWORD(v3[3].__r_.__value_.__l.__data_) = v17;
    v18 = v3[3].__r_.__value_.__l.__size_;
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 8);
  if (v19)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_173F9F4(void *a1)
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

  sub_173FA78(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_173FA78(uint64_t result)
{
  if (result != &off_2780800)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2)
    {
      sub_16E4D90(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_16E4D90(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_1740670(v4);
      operator delete();
    }

    result = v1[6];
    if (result)
    {
      sub_1740670(result);

      operator delete();
    }
  }

  return result;
}

void sub_173FB34(void *a1)
{
  sub_173F9F4(a1);

  operator delete();
}

uint64_t sub_173FB6C(uint64_t result)
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
    result = sub_16E4E44(*(v1 + 32));
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

  result = sub_16E4E44(*(result + 24));
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
  result = sub_173FC04(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_173FC04(*(v1 + 48));
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

uint64_t sub_173FC04(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_136980C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    v5 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
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

char *sub_173FCB4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v27 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v27, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v27 + 1;
    v7 = *v27;
    if (*v27 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v27, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v27 + 2;
      }
    }

    v27 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 4u;
          v15 = *(a1 + 40);
          if (!v15)
          {
            v21 = *(a1 + 8);
            v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
            if (v21)
            {
              v22 = *v22;
            }

            v15 = sub_174988C(v22);
            *(a1 + 40) = v15;
LABEL_37:
            v6 = v27;
          }

LABEL_38:
          v20 = sub_223A084(a3, v15, v6);
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

          v15 = sub_174988C(v17);
          *(a1 + 48) = v15;
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
          v18 = *(a1 + 8);
          v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
          if (v18)
          {
            v19 = *v19;
          }

          v12 = sub_16F5828(v19);
          *(a1 + 24) = v12;
LABEL_30:
          v6 = v27;
        }

LABEL_31:
        v20 = sub_21F4D60(a3, v12, v6);
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

        v12 = sub_16F5828(v14);
        *(a1 + 32) = v12;
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    if (v7)
    {
      v23 = (v7 & 7) == 4;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v27;
      }

      return 0;
    }

    v24 = *(a1 + 8);
    if (v24)
    {
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v25 = sub_11F1920((a1 + 8));
      v6 = v27;
    }

    v20 = sub_1952690(v7, v25, v6, a3);
LABEL_46:
    v27 = v20;
    if (!v20)
    {
      return 0;
    }
  }

  return v27;
}

char *sub_173FEFC(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_16E5070(v7, v9, a3);
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

  v4 = sub_174092C(v13, v15, a3);
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

    v4 = sub_174092C(v16, v18, a3);
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

uint64_t sub_1740150(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_16E51F0(*(a1 + 24));
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
    v5 = sub_16E51F0(*(a1 + 32));
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

  v9 = sub_1740A90(*(a1 + 40));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_10:
    v6 = sub_1740A90(*(a1 + 48));
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

void sub_1740288(uint64_t a1, uint64_t a2)
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

        v9 = sub_16F5828(v11);
        *(a1 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_277E5E8;
      }

      sub_16E527C(v9, v12);
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

        v13 = sub_174988C(v15);
        *(a1 + 40) = v13;
      }

      if (*(a2 + 40))
      {
        v16 = *(a2 + 40);
      }

      else
      {
        v16 = &off_2780838;
      }

      sub_1740414(v13, v16);
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

        v17 = sub_174988C(v19);
        *(a1 + 48) = v17;
      }

      if (*(a2 + 48))
      {
        v20 = *(a2 + 48);
      }

      else
      {
        v20 = &off_2780838;
      }

      sub_1740414(v17, v20);
    }
  }

  v21 = *(a2 + 8);
  if (v21)
  {

    sub_1957EF4((a1 + 8), (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_1740414(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_13B4424(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    size = v3->__r_.__value_.__l.__size_;
    v11 = (size & 0xFFFFFFFFFFFFFFFCLL);
    if (size)
    {
      v11 = *v11;
    }

    result = sub_194EA1C(&v3[2], (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1740508(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  v7 = *(a1 + 24);
  if (!sub_195228C(v7 + 16) || (~*(v7 + 40) & 3) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
LABEL_11:
    v8 = *(a1 + 32);
    if (sub_195228C(v8 + 16) && (~*(v8 + 40) & 3) == 0)
    {
      v2 = *(a1 + 16);
      if ((v2 & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }

    return 0;
  }

LABEL_3:
  if ((v2 & 4) != 0)
  {
LABEL_4:
    v3 = *(a1 + 40);
    v4 = *(v3 + 32);
    while (v4 >= 1)
    {
      v5 = v4 - 1;
      v6 = sub_136A598(*(*(v3 + 40) + 8 * v4));
      v4 = v5;
      if (!v6)
      {
        return 0;
      }
    }

    if ((*(a1 + 16) & 8) != 0)
    {
      goto LABEL_19;
    }

    return 1;
  }

LABEL_14:
  if ((v2 & 8) == 0)
  {
    return 1;
  }

LABEL_19:
  v11 = *(a1 + 48);
  v12 = *(v11 + 32);
  do
  {
    v9 = v12 < 1;
    if (v12 < 1)
    {
      break;
    }

    v13 = v12 - 1;
    v14 = sub_136A598(*(*(v11 + 40) + 8 * v12));
    v12 = v13;
  }

  while (v14);
  return v9;
}

BOOL sub_1740608(uint64_t a1)
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
    v5 = sub_136A598(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while (v5);
  return v3 < 1;
}

uint64_t sub_1740670(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_13B3894((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_174071C(uint64_t a1)
{
  sub_1740670(a1);

  operator delete();
}

uint64_t sub_1740754(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

        v17 = sub_194DB04((a1 + 48), v16);
        v14 = sub_1958890(v17, *v25, a3);
        goto LABEL_23;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      v18 = v6 - 1;
      while (1)
      {
        v19 = (v18 + 1);
        *v25 = v18 + 1;
        v20 = *(a1 + 40);
        if (v20 && (v21 = *(a1 + 32), v21 < *v20))
        {
          *(a1 + 32) = v21 + 1;
          v22 = *&v20[2 * v21 + 2];
        }

        else
        {
          v23 = sub_137A304(*(a1 + 24));
          v22 = sub_19593CC(a1 + 24, v23);
          v19 = *v25;
        }

        v18 = sub_2201700(a3, v22, v19);
        *v25 = v18;
        if (!v18)
        {
          break;
        }

        if (*a3 <= v18 || *v18 != 10)
        {
          goto LABEL_33;
        }
      }

LABEL_38:
      *v25 = 0;
      return *v25;
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
        return *v25;
      }

      goto LABEL_38;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v25;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_23:
    *v25 = v14;
    if (!v14)
    {
      goto LABEL_38;
    }

LABEL_33:
    ;
  }

  return *v25;
}

char *sub_174092C(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_1369D68(v8, v10, a3);
    }
  }

  if (*(a1 + 16))
  {
    __dst = sub_128AEEC(a3, 2, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
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

uint64_t sub_1740A90(uint64_t a1)
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
      v7 = sub_136A254(v6);
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
    v8 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

void *sub_1740B90(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 6));
  sub_1956ABC((a1 + 4));
  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1740C1C(void *a1)
{
  sub_1740B90(a1);

  operator delete();
}

uint64_t sub_1740C54(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_1740C70(uint64_t a1, char *a2, int32x2_t *a3)
{
  v34 = a2;
  if (sub_195ADC0(a3, &v34, a3[11].i32[1]))
  {
    return v34;
  }

  while (1)
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
    if (v7 >> 3 == 3)
    {
      if (v7 == 24)
      {
        v23 = v6 - 1;
        while (1)
        {
          v34 = v23 + 1;
          v24 = v23[1];
          if (v24 < 0)
          {
            v25 = (v23[2] << 7) + v24;
            v24 = (v25 - 128);
            if (v23[2] < 0)
            {
              v23 = sub_19587DC((v23 + 1), (v25 - 128));
              v24 = v26;
            }

            else
            {
              v23 += 3;
            }
          }

          else
          {
            v23 += 2;
          }

          v34 = v23;
          v27 = *(a1 + 48);
          if (v27 == *(a1 + 52))
          {
            v28 = v27 + 1;
            sub_1959094((a1 + 48), v27 + 1);
            *(*(a1 + 56) + 8 * v27) = v24;
            v23 = v34;
          }

          else
          {
            *(*(a1 + 56) + 8 * v27) = v24;
            v28 = v27 + 1;
          }

          *(a1 + 48) = v28;
          if (!v23)
          {
            return 0;
          }

          if (*a3 <= v23 || *v23 != 24)
          {
            goto LABEL_67;
          }
        }
      }

      if (v7 == 26)
      {
        v29 = (a1 + 48);
        goto LABEL_58;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 16)
      {
        v17 = v6 - 1;
        while (1)
        {
          v34 = v17 + 1;
          v18 = v17[1];
          if (v18 < 0)
          {
            v19 = (v17[2] << 7) + v18;
            v18 = (v19 - 128);
            if (v17[2] < 0)
            {
              v17 = sub_19587DC((v17 + 1), (v19 - 128));
              v18 = v20;
            }

            else
            {
              v17 += 3;
            }
          }

          else
          {
            v17 += 2;
          }

          v34 = v17;
          v21 = *(a1 + 32);
          if (v21 == *(a1 + 36))
          {
            v22 = v21 + 1;
            sub_1959094((a1 + 32), v21 + 1);
            *(*(a1 + 40) + 8 * v21) = v18;
            v17 = v34;
          }

          else
          {
            *(*(a1 + 40) + 8 * v21) = v18;
            v22 = v21 + 1;
          }

          *(a1 + 32) = v22;
          if (!v17)
          {
            return 0;
          }

          if (*a3 <= v17 || *v17 != 16)
          {
            goto LABEL_67;
          }
        }
      }

      if (v7 == 18)
      {
        v29 = (a1 + 32);
LABEL_58:
        v30 = sub_1958938(v29, v6, a3);
        goto LABEL_66;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 8)
      {
        v11 = v6 - 1;
        while (1)
        {
          v34 = v11 + 1;
          v12 = v11[1];
          if (v12 < 0)
          {
            v13 = (v11[2] << 7) + v12;
            v12 = (v13 - 128);
            if (v11[2] < 0)
            {
              v11 = sub_19587DC((v11 + 1), (v13 - 128));
              v12 = v14;
            }

            else
            {
              v11 += 3;
            }
          }

          else
          {
            v11 += 2;
          }

          v34 = v11;
          v15 = *(a1 + 16);
          if (v15 == *(a1 + 20))
          {
            v16 = v15 + 1;
            sub_1959094((a1 + 16), v15 + 1);
            *(*(a1 + 24) + 8 * v15) = v12;
            v11 = v34;
          }

          else
          {
            *(*(a1 + 24) + 8 * v15) = v12;
            v16 = v15 + 1;
          }

          *(a1 + 16) = v16;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 8)
          {
            goto LABEL_67;
          }
        }
      }

      if (v7 == 10)
      {
        v29 = (a1 + 16);
        goto LABEL_58;
      }
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v32 = *(a1 + 8);
    if (v32)
    {
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v33 = sub_11F1920((a1 + 8));
      v6 = v34;
    }

    v30 = sub_1952690(v7, v33, v6, a3);
LABEL_66:
    v34 = v30;
    if (!v30)
    {
      return 0;
    }

LABEL_67:
    if (sub_195ADC0(a3, &v34, a3[11].i32[1]))
    {
      return v34;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return v34;
  }

  return 0;
}

char *sub_1741010(uint64_t a1, char *a2, _DWORD *a3)
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

  v12 = *(a1 + 32);
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

      v14 = *(*(a1 + 40) + 8 * j);
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
            v8 = (v16 >> 7);
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

  v18 = *(a1 + 48);
  if (v18 < 1)
  {
    v21 = v15;
  }

  else
  {
    for (k = 0; k != v18; ++k)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v20 = *(*(a1 + 56) + 8 * k);
      *v15 = 24;
      v15[1] = v20;
      if (v20 > 0x7F)
      {
        v15[1] = v20 | 0x80;
        v22 = v20 >> 7;
        v15[2] = v20 >> 7;
        v21 = v15 + 3;
        if (v20 >= 0x4000)
        {
          LOBYTE(v15) = v15[2];
          do
          {
            *(v21 - 1) = v15 | 0x80;
            v15 = (v22 >> 7);
            *v21++ = v22 >> 7;
            v23 = v22 >> 14;
            v22 >>= 7;
          }

          while (v23);
        }
      }

      else
      {
        v21 = v15 + 2;
      }

      v15 = v21;
    }
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v21;
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

  if (*a3 - v21 >= v27)
  {
    v29 = v27;
    memcpy(v21, v28, v27);
    v21 += v29;
    return v21;
  }

  return sub_1957130(a3, v28, v27, v21);
}

uint64_t sub_17412B0(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 16));
  v3 = *(a1 + 16);
  v4 = sub_1959F14((a1 + 32));
  v5 = *(a1 + 32);
  result = v2 + v4 + v3 + v5 + sub_1959F14((a1 + 48)) + *(a1 + 48);
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

  *(a1 + 64) = result;
  return result;
}

void *sub_1741360(void *a1)
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

void sub_17413D4(void *a1)
{
  sub_1741360(a1);

  operator delete();
}

uint64_t sub_174140C(uint64_t a1)
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

char *sub_1741424(uint64_t a1, char *a2, int32x2_t *a3)
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
      v25 = v16;
      *(a1 + 25) = v15 != 0;
      goto LABEL_29;
    }

    v21 = sub_19587DC(v7, v15);
    v25 = v21;
    *(a1 + 25) = v22 != 0;
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
    v19 = v7 + 1;
    v18 = *v7;
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v19;
    v18 = (v20 << 7) + v18 - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_28:
      v25 = v19;
      *(a1 + 24) = v18 != 0;
      goto LABEL_29;
    }

    v23 = sub_19587DC(v7, v18);
    v25 = v23;
    *(a1 + 24) = v24 != 0;
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

char *sub_1741628(uint64_t a1, unint64_t __dst, _DWORD *a3)
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
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 25);
    *v4 = 16;
    v4[1] = v8;
    v4 += 2;
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

uint64_t sub_1741740(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    v1 = 2 * (*(a1 + 16) & 1) + (*(a1 + 16) & 2u);
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

void *sub_17417A0(void *a1)
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

void sub_1741814(void *a1)
{
  sub_17417A0(a1);

  operator delete();
}

uint64_t sub_174184C(uint64_t a1)
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

char *sub_1741870(uint64_t a1, char *a2, int32x2_t *a3)
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
      v25 = v16;
      *(a1 + 32) = v15;
      goto LABEL_29;
    }

    v21 = sub_19587DC(v7, v15);
    v25 = v21;
    *(a1 + 32) = v22;
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
    v19 = v7 + 1;
    v18 = *v7;
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v19;
    v18 = (v20 << 7) + v18 - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_28:
      v25 = v19;
      *(a1 + 24) = v18;
      goto LABEL_29;
    }

    v23 = sub_19587DC(v7, v18);
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

char *sub_1741A54(uint64_t a1, char *__dst, _DWORD *a3)
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

unint64_t sub_1741C04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_8;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
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
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

void *sub_1741CB4(void *a1)
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

void sub_1741D28(void *a1)
{
  sub_1741CB4(a1);

  operator delete();
}

uint64_t sub_1741D60(uint64_t a1)
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

char *sub_1741D84(uint64_t a1, char *a2, int32x2_t *a3)
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
      v25 = v16;
      *(a1 + 32) = v15;
      goto LABEL_29;
    }

    v21 = sub_19587DC(v7, v15);
    v25 = v21;
    *(a1 + 32) = v22;
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
    v19 = v7 + 1;
    v18 = *v7;
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v19;
    v18 = (v20 << 7) + v18 - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_28:
      v25 = v19;
      *(a1 + 24) = v18;
      goto LABEL_29;
    }

    v23 = sub_19587DC(v7, v18);
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

char *sub_1741F68(uint64_t a1, char *__dst, _DWORD *a3)
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

unint64_t sub_1742118(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_8;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
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
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

void *sub_17421C8(void *a1)
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

void sub_174223C(void *a1)
{
  sub_17421C8(a1);

  operator delete();
}

uint64_t sub_1742274(uint64_t a1)
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

char *sub_1742298(uint64_t a1, char *a2, int32x2_t *a3)
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
    v16 = v7 + 1;
    LODWORD(v15) = *v7;
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    v17 = *v16;
    v15 = v15 + (v17 << 7) - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_24:
      v25 = v16;
      *(a1 + 28) = v15;
      goto LABEL_29;
    }

    v21 = sub_19587DC(v7, v15);
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
    v19 = v7 + 1;
    LODWORD(v18) = *v7;
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v19;
    v18 = v18 + (v20 << 7) - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_28:
      v25 = v19;
      *(a1 + 24) = v18;
      goto LABEL_29;
    }

    v23 = sub_19587DC(v7, v18);
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

char *sub_1742474(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_1742624(uint64_t a1)
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

void *sub_17426F4(void *a1)
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

void sub_1742768(void *a1)
{
  sub_17426F4(a1);

  operator delete();
}

uint64_t sub_17427A0(uint64_t a1)
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

char *sub_17427C4(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_17429A8(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_1742B58(uint64_t a1)
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

void *sub_1742C0C(void *a1)
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

void sub_1742C80(void *a1)
{
  sub_1742C0C(a1);

  operator delete();
}

uint64_t sub_1742CB8(uint64_t a1)
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

char *sub_1742CDC(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_1742E40(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

uint64_t sub_1742F58(uint64_t a1)
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

void *sub_1742FC4(void *a1)
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

void sub_1743038(void *a1)
{
  sub_1742FC4(a1);

  operator delete();
}

uint64_t sub_1743070(uint64_t a1)
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

char *sub_1743094(uint64_t a1, char *a2, int32x2_t *a3)
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
      if (v7 == 21)
      {
        v15 = *v6;
        v14 = v6 + 4;
        v5 |= 2u;
        *(a1 + 28) = v15;
LABEL_22:
        v18 = v14;
        goto LABEL_23;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 13)
    {
      v16 = *v6;
      v14 = v6 + 4;
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

char *sub_17431F8(uint64_t a1, unint64_t __dst, _DWORD *a3)
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
    *v4 = 13;
    *(v4 + 1) = v7;
    v4 += 5;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 28);
    *v4 = 21;
    *(v4 + 1) = v8;
    v4 += 5;
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

uint64_t sub_1743310(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = 5;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 5;
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

std::string *sub_1743364(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      LODWORD(result[1].__r_.__value_.__l.__data_) = *(a2 + 24);
    }

    if ((v2 & 2) != 0)
    {
      HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
    }

    LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_17433C8(uint64_t a1)
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

void sub_1743480(uint64_t a1)
{
  sub_17433C8(a1);

  operator delete();
}

uint64_t sub_17434B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
        if ((v1 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v2 = 0;
      *(v2 + 23) = 0;
    }

    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }

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
  if ((v1 & 0x1C) != 0)
  {
    *(a1 + 48) = 0;
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1743544(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_40;
      }

      v5 |= 4u;
      v26 = v7 + 1;
      LODWORD(v25) = *v7;
      if ((v25 & 0x80) == 0)
      {
        goto LABEL_39;
      }

      v27 = *v26;
      v25 = v25 + (v27 << 7) - 128;
      if ((v27 & 0x80000000) == 0)
      {
        v26 = v7 + 2;
LABEL_39:
        *v37 = v26;
        *(a1 + 40) = v25;
        goto LABEL_48;
      }

      v33 = sub_19587DC(v7, v25);
      *v37 = v33;
      *(a1 + 40) = v34;
      if (!v33)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_40;
      }

      v5 |= 8u;
      v17 = v7 + 1;
      LODWORD(v16) = *v7;
      if ((v16 & 0x80) == 0)
      {
        goto LABEL_24;
      }

      v18 = *v17;
      v16 = v16 + (v18 << 7) - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = v7 + 2;
LABEL_24:
        *v37 = v17;
        *(a1 + 44) = v16;
        goto LABEL_48;
      }

      v35 = sub_19587DC(v7, v16);
      *v37 = v35;
      *(a1 + 44) = v36;
      if (!v35)
      {
        goto LABEL_59;
      }
    }

LABEL_48:
    if (sub_195ADC0(a3, v37, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_40;
    }

    v5 |= 0x10u;
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
      *v37 = v19;
      *(a1 + 48) = v20;
      goto LABEL_48;
    }

    v31 = sub_1958770(v7, v20);
    *v37 = v31;
    *(a1 + 48) = v32;
    if (!v31)
    {
      goto LABEL_59;
    }

    goto LABEL_48;
  }

  if (v11 == 4)
  {
    if (v8 != 34)
    {
      goto LABEL_40;
    }

    *(a1 + 16) |= 1u;
    v22 = *(a1 + 8);
    v13 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v13 = *v13;
    }

    v14 = (a1 + 24);
LABEL_34:
    v23 = sub_194DB04(v14, v13);
    v24 = sub_1958890(v23, *v37, a3);
LABEL_47:
    *v37 = v24;
    if (!v24)
    {
      goto LABEL_59;
    }

    goto LABEL_48;
  }

  if (v11 == 5 && v8 == 42)
  {
    *(a1 + 16) |= 2u;
    v12 = *(a1 + 8);
    v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    if (v12)
    {
      v13 = *v13;
    }

    v14 = (a1 + 32);
    goto LABEL_34;
  }

LABEL_40:
  if (v8)
  {
    v28 = (v8 & 7) == 4;
  }

  else
  {
    v28 = 1;
  }

  if (!v28)
  {
    v29 = *(a1 + 8);
    if (v29)
    {
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v30 = sub_11F1920((a1 + 8));
      v7 = *v37;
    }

    v24 = sub_1952690(v8, v30, v7, a3);
    goto LABEL_47;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_59:
  *v37 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v37;
}

char *sub_1743814(uint64_t a1, char *__dst, void *a3)
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

  if ((v5 & 8) != 0)
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 48);
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

  if (v5)
  {
    v15 = sub_128AEEC(a3, 4, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v15);
  }

  if ((v5 & 2) != 0)
  {
    v15 = sub_128AEEC(a3, 5, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v15);
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

uint64_t sub_1743A8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) == 0)
  {
    v2 = 0;
    goto LABEL_16;
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
    v11 = *(a1 + 40);
    if (v11 < 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v12;
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  v13 = *(a1 + 44);
  if (v13 < 0)
  {
    v14 = 11;
  }

  else
  {
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v14;
  if ((v1 & 0x10) != 0)
  {
LABEL_15:
    v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  v9 = *(a1 + 8);
  if (v9)
  {
    v15 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v2 += v16;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_1743C14(uint64_t a1)
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

  if (a1 != &off_27809E8)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_16F66CC(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_16F66CC(v6);
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

void sub_1743CE4(uint64_t a1)
{
  sub_1743C14(a1);

  operator delete();
}

uint64_t sub_1743D1C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_16F6778(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_16F6778(*(v1 + 32));
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

char *sub_1743D8C(uint64_t a1, char *a2, int32x2_t *a3)
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

          v15 = sub_16F9DC8(v17);
          *(a1 + 32) = v15;
LABEL_28:
          v6 = v21;
        }

LABEL_29:
        v14 = sub_2227FB4(a3, v15, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v15 = *(a1 + 24);
      if (!v15)
      {
        v18 = *(a1 + 8);
        v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v19 = *v19;
        }

        v15 = sub_16F9DC8(v19);
        *(a1 + 24) = v15;
        goto LABEL_28;
      }

      goto LABEL_29;
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

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_30:
    v21 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v21;
}

char *sub_1743F28(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_16F6980(v7, v9, a3);
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

    v4 = sub_16F6980(v10, v12, a3);
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

uint64_t sub_17440A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_16F6B30(*(a1 + 24));
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
    v5 = sub_16F6B30(*(a1 + 32));
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

std::string *sub_1744174(std::string *result, uint64_t a2)
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

        data = sub_16F9DC8(v7);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_277EC20;
      }

      result = sub_13BB240(data, v8);
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

        v9 = sub_16F9DC8(v11);
        v3[1].__r_.__value_.__l.__size_ = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_277EC20;
      }

      result = sub_13BB240(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_17442C4(uint64_t a1)
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

void sub_1744390(uint64_t a1)
{
  sub_17442C4(a1);

  operator delete();
}

uint64_t sub_17443C8(uint64_t a1)
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

uint64_t sub_1744480(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
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

    else if (v10 == 2)
    {
      if (v7 == 18)
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

    else if (v10 == 1 && v7 == 10)
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

char *sub_174463C(uint64_t a1, char *__dst, void *a3)
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
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) != 0)
  {
LABEL_4:
    v4 = sub_128AEEC(a3, 3, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
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

uint64_t sub_1744750(uint64_t a1)
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

uint64_t sub_1744880(uint64_t a1)
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

void sub_1744938(uint64_t a1)
{
  sub_1744880(a1);

  operator delete();
}

uint64_t sub_1744970(uint64_t a1)
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

uint64_t sub_17449EC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1744B6C(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1744C54(uint64_t a1)
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

uint64_t sub_1744D40(uint64_t a1)
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

  if (a1 != &off_2780A40)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_173EB30(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_173EFF0(v6);
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

void sub_1744E10(uint64_t a1)
{
  sub_1744D40(a1);

  operator delete();
}

uint64_t sub_1744E48(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_173EC20(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_173F0B4(*(v1 + 32));
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

char *sub_1744EB8(uint64_t a1, char *a2, int32x2_t *a3)
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

          v15 = sub_174975C(v17);
          *(a1 + 32) = v15;
          v6 = v22;
        }

        v14 = sub_223A1A4(a3, v15, v6);
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

        v18 = sub_17496D8(v20);
        *(a1 + 24) = v18;
        v6 = v22;
      }

      v14 = sub_223A114(a3, v18, v6);
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

char *sub_1745060(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_173EE1C(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 32);
    *v4 = 18;
    v11 = *(v10 + 88);
    v4[1] = v11;
    if (v11 > 0x7F)
    {
      v12 = sub_19575D0(v11, v4 + 1);
    }

    else
    {
      v12 = v4 + 2;
    }

    v4 = sub_173F4A4(v10, v12, a3);
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

uint64_t sub_17451DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_173EF04(*(a1 + 24));
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
    v5 = sub_173F728(*(a1 + 32));
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

std::string *sub_17452AC(std::string *result, uint64_t a2)
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

        data = sub_17496D8(v7);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2780778;
      }

      result = sub_12F5A34(data, v8);
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

        v9 = sub_174975C(v11);
        v3[1].__r_.__value_.__l.__size_ = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_27807A0;
      }

      result = sub_173F868(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_17453C8(void *a1)
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

  sub_1745464(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1763B3C(a1 + 6);
  sub_13EC07C(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_1745464(uint64_t result)
{
  if (result != &off_2780A68)
  {
    v1 = result;
    v2 = *(result + 72);
    if (v2)
    {
      sub_173DC8C(v2);
      operator delete();
    }

    v3 = v1[10];
    if (v3)
    {
      sub_173E3A8(v3);
      operator delete();
    }

    v4 = v1[11];
    if (v4)
    {
      sub_173EB30(v4);
      operator delete();
    }

    v5 = v1[12];
    if (v5)
    {
      sub_173EFF0(v5);
      operator delete();
    }

    v6 = v1[13];
    if (v6)
    {
      sub_1743C14(v6);
      operator delete();
    }

    v7 = v1[14];
    if (v7)
    {
      sub_173F9F4(v7);
      operator delete();
    }

    v8 = v1[15];
    if (v8)
    {
      sub_1741360(v8);
      operator delete();
    }

    v9 = v1[16];
    if (v9)
    {
      sub_17417A0(v9);
      operator delete();
    }

    v10 = v1[17];
    if (v10)
    {
      sub_1741CB4(v10);
      operator delete();
    }

    v11 = v1[18];
    if (v11)
    {
      sub_17421C8(v11);
      operator delete();
    }

    v12 = v1[19];
    if (v12)
    {
      sub_17426F4(v12);
      operator delete();
    }

    v13 = v1[20];
    if (v13)
    {
      sub_1742C0C(v13);
      operator delete();
    }

    v14 = v1[21];
    if (v14)
    {
      sub_1742FC4(v14);
      operator delete();
    }

    v15 = v1[22];
    if (v15)
    {
      sub_1740670(v15);
      operator delete();
    }

    v16 = v1[23];
    if (v16)
    {
      sub_16F911C(v16);
      operator delete();
    }

    v17 = v1[24];
    if (v17)
    {
      sub_1740B90(v17);
      operator delete();
    }

    v18 = v1[25];
    if (v18)
    {
      sub_17433C8(v18);
      operator delete();
    }

    v19 = v1[26];
    if (v19)
    {
      sub_17442C4(v19);
      operator delete();
    }

    result = v1[27];
    if (result)
    {
      sub_1744D40(result);

      operator delete();
    }
  }

  return result;
}

void sub_17456EC(void *a1)
{
  sub_17453C8(a1);

  operator delete();
}

uint64_t sub_1745724(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16F73C0(v4);
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
      result = sub_1744970(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if (v8)
  {
    if (v8)
    {
      result = sub_173DD88(*(v1 + 72));
      if ((v8 & 2) == 0)
      {
LABEL_12:
        if ((v8 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_20;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    result = sub_173E46C(*(v1 + 80));
    if ((v8 & 4) == 0)
    {
LABEL_13:
      if ((v8 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }

LABEL_20:
    result = sub_173EC20(*(v1 + 88));
    if ((v8 & 8) == 0)
    {
LABEL_14:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }

LABEL_21:
    result = sub_173F0B4(*(v1 + 96));
    if ((v8 & 0x10) == 0)
    {
LABEL_15:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }

LABEL_22:
    result = sub_1743D1C(*(v1 + 104));
    if ((v8 & 0x20) == 0)
    {
LABEL_16:
      if ((v8 & 0x40) == 0)
      {
LABEL_26:
        if ((v8 & 0x80) != 0)
        {
          result = sub_174184C(*(v1 + 128));
        }

        goto LABEL_28;
      }

LABEL_24:
      v9 = *(v1 + 120);
      v10 = *(v9 + 8);
      result = v9 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v10)
      {
        result = sub_1957EA8(result);
      }

      goto LABEL_26;
    }

LABEL_23:
    result = sub_173FB6C(*(v1 + 112));
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

LABEL_28:
  if ((v8 & 0xFF00) == 0)
  {
    goto LABEL_47;
  }

  if ((v8 & 0x100) != 0)
  {
    result = sub_1741D60(*(v1 + 136));
    if ((v8 & 0x200) == 0)
    {
LABEL_31:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_40;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_31;
  }

  result = sub_1742274(*(v1 + 144));
  if ((v8 & 0x400) == 0)
  {
LABEL_32:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = sub_17427A0(*(v1 + 152));
  if ((v8 & 0x800) == 0)
  {
LABEL_33:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = sub_1742CB8(*(v1 + 160));
  if ((v8 & 0x1000) == 0)
  {
LABEL_34:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = sub_1743070(*(v1 + 168));
  if ((v8 & 0x2000) == 0)
  {
LABEL_35:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = sub_173FC04(*(v1 + 176));
  if ((v8 & 0x4000) == 0)
  {
LABEL_36:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = sub_16F91E8(*(v1 + 184));
  if ((v8 & 0x8000) == 0)
  {
    goto LABEL_47;
  }

LABEL_45:
  v11 = *(v1 + 192);
  v12 = *(v11 + 8);
  result = v11 + 8;
  *(result + 8) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  if (v12)
  {
    result = sub_1957EA8(result);
  }

LABEL_47:
  if ((v8 & 0x70000) == 0)
  {
    goto LABEL_52;
  }

  if ((v8 & 0x10000) != 0)
  {
    result = sub_17434B8(*(v1 + 200));
    if ((v8 & 0x20000) == 0)
    {
LABEL_50:
      if ((v8 & 0x40000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }
  }

  else if ((v8 & 0x20000) == 0)
  {
    goto LABEL_50;
  }

  result = sub_17443C8(*(v1 + 208));
  if ((v8 & 0x40000) != 0)
  {
LABEL_51:
    result = sub_1744E48(*(v1 + 216));
  }

LABEL_52:
  v14 = *(v1 + 8);
  v13 = v1 + 8;
  *(v13 + 216) = 0;
  *(v13 + 8) = 0;
  if (v14)
  {

    return sub_1957EA8(v13);
  }

  return result;
}

char *sub_174593C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v93 = a2;
  v5 = a3[11].i32[1];
  while (2)
  {
    if (sub_195ADC0(a3, &v93, v5))
    {
      return v93;
    }

    v6 = v93 + 1;
    v7 = *v93;
    if (*v93 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v93, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v93 + 2;
      }
    }

    v93 = v6;
    switch(v7 >> 3)
    {
      case 1u:
        if (v7 != 8)
        {
          goto LABEL_153;
        }

        v10 = v6 + 1;
        v11 = *v6;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v12 = *v10;
        v13 = (v12 << 7) + v11;
        v11 = (v13 - 128);
        if (v12 < 0)
        {
          v93 = sub_19587DC(v6, (v13 - 128));
          if (!v93)
          {
            return 0;
          }

          v11 = v89;
        }

        else
        {
          v10 = v6 + 2;
LABEL_12:
          v93 = v10;
        }

        if (v11 > 0x15 || v11 == 8)
        {
          v90 = *(a1 + 8);
          if (v90)
          {
            v91 = ((v90 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }

          else
          {
            v91 = sub_11F1920((a1 + 8));
          }

          sub_19586BC(1, v11, v91);
        }

        else
        {
          *(a1 + 16) |= 0x80000u;
          *(a1 + 224) = v11;
        }

        goto LABEL_161;
      case 2u:
        if (v7 != 18)
        {
          goto LABEL_153;
        }

        *(a1 + 16) |= 1u;
        v44 = *(a1 + 72);
        if (!v44)
        {
          v45 = *(a1 + 8);
          v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
          if (v45)
          {
            v46 = *v46;
          }

          v44 = sub_1749598(v46);
          *(a1 + 72) = v44;
          v6 = v93;
        }

        v18 = sub_223A234(a3, v44, v6);
        goto LABEL_160;
      case 3u:
        if (v7 != 26)
        {
          goto LABEL_153;
        }

        *(a1 + 16) |= 2u;
        v47 = *(a1 + 80);
        if (!v47)
        {
          v48 = *(a1 + 8);
          v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
          if (v48)
          {
            v49 = *v49;
          }

          v47 = sub_1749634(v49);
          *(a1 + 80) = v47;
          v6 = v93;
        }

        v18 = sub_223A2C4(a3, v47, v6);
        goto LABEL_160;
      case 4u:
        if (v7 != 34)
        {
          goto LABEL_153;
        }

        *(a1 + 16) |= 4u;
        v50 = *(a1 + 88);
        if (!v50)
        {
          v51 = *(a1 + 8);
          v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
          if (v51)
          {
            v52 = *v52;
          }

          v50 = sub_17496D8(v52);
          *(a1 + 88) = v50;
          v6 = v93;
        }

        v18 = sub_223A114(a3, v50, v6);
        goto LABEL_160;
      case 5u:
        if (v7 != 42)
        {
          goto LABEL_153;
        }

        *(a1 + 16) |= 8u;
        v53 = *(a1 + 96);
        if (!v53)
        {
          v54 = *(a1 + 8);
          v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
          if (v54)
          {
            v55 = *v55;
          }

          v53 = sub_174975C(v55);
          *(a1 + 96) = v53;
          v6 = v93;
        }

        v18 = sub_223A1A4(a3, v53, v6);
        goto LABEL_160;
      case 6u:
        if (v7 != 50)
        {
          goto LABEL_153;
        }

        *(a1 + 16) |= 0x10u;
        v71 = *(a1 + 104);
        if (!v71)
        {
          v72 = *(a1 + 8);
          v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
          if (v72)
          {
            v73 = *v73;
          }

          v71 = sub_1749DC4(v73);
          *(a1 + 104) = v71;
          v6 = v93;
        }

        v18 = sub_223A354(a3, v71, v6);
        goto LABEL_160;
      case 7u:
        if (v7 != 58)
        {
          goto LABEL_153;
        }

        *(a1 + 16) |= 0x20u;
        v37 = *(a1 + 112);
        if (!v37)
        {
          v38 = *(a1 + 8);
          v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
          if (v38)
          {
            v39 = *v39;
          }

          sub_174980C(v39);
          v37 = v40;
          *(a1 + 112) = v40;
          v6 = v93;
        }

        v18 = sub_223A3E4(a3, v37, v6);
        goto LABEL_160;
      case 8u:
        if (v7 != 66)
        {
          goto LABEL_153;
        }

        *(a1 + 16) |= 0x40u;
        v41 = *(a1 + 120);
        if (!v41)
        {
          v42 = *(a1 + 8);
          v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
          if (v42)
          {
            v43 = *v43;
          }

          v41 = sub_17499E4(v43);
          *(a1 + 120) = v41;
          v6 = v93;
        }

        v18 = sub_223A474(a3, v41, v6);
        goto LABEL_160;
      case 9u:
        goto LABEL_153;
      case 0xAu:
        if (v7 != 82)
        {
          goto LABEL_153;
        }

        *(a1 + 16) |= 0x80u;
        v28 = *(a1 + 128);
        if (!v28)
        {
          v29 = *(a1 + 8);
          v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v30 = *v30;
          }

          v28 = sub_1749A60(v30);
          *(a1 + 128) = v28;
          v6 = v93;
        }

        v18 = sub_223A504(a3, v28, v6);
        goto LABEL_160;
      case 0xBu:
        if (v7 != 90)
        {
          goto LABEL_153;
        }

        *(a1 + 16) |= 0x100u;
        v65 = *(a1 + 136);
        if (!v65)
        {
          v66 = *(a1 + 8);
          v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL);
          if (v66)
          {
            v67 = *v67;
          }

          v65 = sub_1749ADC(v67);
          *(a1 + 136) = v65;
          v6 = v93;
        }

        v18 = sub_223A594(a3, v65, v6);
        goto LABEL_160;
      case 0xCu:
        if (v7 != 98)
        {
          goto LABEL_153;
        }

        *(a1 + 16) |= 0x200u;
        v74 = *(a1 + 144);
        if (!v74)
        {
          v75 = *(a1 + 8);
          v76 = (v75 & 0xFFFFFFFFFFFFFFFCLL);
          if (v75)
          {
            v76 = *v76;
          }

          v74 = sub_1749B58(v76);
          *(a1 + 144) = v74;
          v6 = v93;
        }

        v18 = sub_223A624(a3, v74, v6);
        goto LABEL_160;
      case 0xDu:
        if (v7 != 106)
        {
          goto LABEL_153;
        }

        *(a1 + 16) |= 0x400u;
        v25 = *(a1 + 152);
        if (!v25)
        {
          v26 = *(a1 + 8);
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v27 = *v27;
          }

          v25 = sub_1749BD0(v27);
          *(a1 + 152) = v25;
          v6 = v93;
        }

        v18 = sub_223A6B4(a3, v25, v6);
        goto LABEL_160;
      case 0xEu:
        if (v7 != 114)
        {
          goto LABEL_153;
        }

        *(a1 + 16) |= 0x800u;
        v34 = *(a1 + 160);
        if (!v34)
        {
          v35 = *(a1 + 8);
          v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
          if (v35)
          {
            v36 = *v36;
          }

          v34 = sub_1749C48(v36);
          *(a1 + 160) = v34;
          v6 = v93;
        }

        v18 = sub_223A744(a3, v34, v6);
        goto LABEL_160;
      case 0xFu:
        if (v7 != 122)
        {
          goto LABEL_153;
        }

        *(a1 + 16) |= 0x1000u;
        v77 = *(a1 + 168);
        if (!v77)
        {
          v78 = *(a1 + 8);
          v79 = (v78 & 0xFFFFFFFFFFFFFFFCLL);
          if (v78)
          {
            v79 = *v79;
          }

          v77 = sub_1749CC4(v79);
          *(a1 + 168) = v77;
          v6 = v93;
        }

        v18 = sub_223A7D4(a3, v77, v6);
        goto LABEL_160;
      case 0x10u:
        if (v7 != 130)
        {
          goto LABEL_153;
        }

        v56 = v6 - 2;
        while (1)
        {
          v57 = (v56 + 2);
          v93 = v56 + 2;
          v58 = *(a1 + 40);
          if (v58 && (v59 = *(a1 + 32), v59 < *v58))
          {
            *(a1 + 32) = v59 + 1;
            v60 = *&v58[2 * v59 + 2];
          }

          else
          {
            v61 = sub_16F9ECC(*(a1 + 24));
            v60 = sub_19593CC(a1 + 24, v61);
            v57 = v93;
          }

          v56 = sub_2205C30(a3, v60, v57);
          v93 = v56;
          if (!v56)
          {
            return 0;
          }

          if (*a3 <= v56 || *v56 != 386)
          {
            goto LABEL_161;
          }
        }

      case 0x11u:
        if (v7 != 138)
        {
          goto LABEL_153;
        }

        *(a1 + 16) |= 0x2000u;
        v22 = *(a1 + 176);
        if (!v22)
        {
          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          v22 = sub_174988C(v24);
          *(a1 + 176) = v22;
          v6 = v93;
        }

        v18 = sub_223A084(a3, v22, v6);
        goto LABEL_160;
      case 0x12u:
        if (v7 != 146)
        {
          goto LABEL_153;
        }

        *(a1 + 16) |= 0x4000u;
        v31 = *(a1 + 184);
        if (!v31)
        {
          v32 = *(a1 + 8);
          v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
          if (v32)
          {
            v33 = *v33;
          }

          v31 = sub_16FA088(v33);
          *(a1 + 184) = v31;
          v6 = v93;
        }

        v18 = sub_2205D50(a3, v31, v6);
        goto LABEL_160;
      case 0x13u:
        if (v7 != 154)
        {
          goto LABEL_153;
        }

        *(a1 + 16) |= 0x8000u;
        v68 = *(a1 + 192);
        if (!v68)
        {
          v69 = *(a1 + 8);
          v70 = (v69 & 0xFFFFFFFFFFFFFFFCLL);
          if (v69)
          {
            v70 = *v70;
          }

          v68 = sub_1749930(v70);
          *(a1 + 192) = v68;
          v6 = v93;
        }

        v18 = sub_223A864(a3, v68, v6);
        goto LABEL_160;
      case 0x14u:
        if (v7 != 162)
        {
          goto LABEL_153;
        }

        *(a1 + 16) |= 0x10000u;
        v19 = *(a1 + 200);
        if (!v19)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v19 = sub_1749D3C(v21);
          *(a1 + 200) = v19;
          v6 = v93;
        }

        v18 = sub_223A8F4(a3, v19, v6);
        goto LABEL_160;
      case 0x15u:
        if (v7 != 170)
        {
          goto LABEL_153;
        }

        *(a1 + 16) |= 0x20000u;
        v62 = *(a1 + 208);
        if (!v62)
        {
          v63 = *(a1 + 8);
          v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
          if (v63)
          {
            v64 = *v64;
          }

          v62 = sub_1749E40(v64);
          *(a1 + 208) = v62;
          v6 = v93;
        }

        v18 = sub_223A984(a3, v62, v6);
        goto LABEL_160;
      case 0x16u:
        if (v7 != 178)
        {
          goto LABEL_153;
        }

        v80 = v6 - 2;
        while (1)
        {
          v81 = (v80 + 2);
          v93 = v80 + 2;
          v82 = *(a1 + 64);
          if (v82 && (v83 = *(a1 + 56), v83 < *v82))
          {
            *(a1 + 56) = v83 + 1;
            v84 = *&v82[2 * v83 + 2];
          }

          else
          {
            v85 = sub_1749EC8(*(a1 + 48));
            v84 = sub_19593CC(a1 + 48, v85);
            v81 = v93;
          }

          v80 = sub_223AA14(a3, v84, v81);
          v93 = v80;
          if (!v80)
          {
            return 0;
          }

          if (*a3 <= v80 || *v80 != 434)
          {
            goto LABEL_161;
          }
        }

      default:
        if (v7 >> 3 == 1000 && v7 == 66)
        {
          *(a1 + 16) |= 0x40000u;
          v15 = *(a1 + 216);
          if (!v15)
          {
            v16 = *(a1 + 8);
            v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
            if (v16)
            {
              v17 = *v17;
            }

            v15 = sub_1749F4C(v17);
            *(a1 + 216) = v15;
            v6 = v93;
          }

          v18 = sub_223AAA4(a3, v15, v6);
LABEL_160:
          v93 = v18;
          if (!v18)
          {
            return 0;
          }

LABEL_161:
          v5 = a3[11].i32[1];
          continue;
        }

LABEL_153:
        if (v7)
        {
          v86 = (v7 & 7) == 4;
        }

        else
        {
          v86 = 1;
        }

        if (!v86)
        {
          v87 = *(a1 + 8);
          if (v87)
          {
            v88 = (v87 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v88 = sub_11F1920((a1 + 8));
            v6 = v93;
          }

          v18 = sub_1952690(v7, v88, v6, a3);
          goto LABEL_160;
        }

        if (!v6)
        {
          return 0;
        }

        a3[10].i32[0] = v7 - 1;
        return v93;
    }
  }
}