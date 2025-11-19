uint64_t sub_152DFAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_16E5370(*(a1 + 32));
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

  result = sub_16E5370(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_152E008(uint64_t a1)
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

  if (a1 != &off_2776430)
  {
    if (*(a1 + 24))
    {
      sub_186702C();
      operator delete();
    }

    if (*(a1 + 32))
    {
      sub_16E4E08();
      operator delete();
    }

    if (*(a1 + 40))
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
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_152E0F8(uint64_t a1)
{
  sub_152E008(a1);

  operator delete();
}

char *sub_152E130(uint64_t a1, char *a2, int32x2_t *a3)
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
        v16 = *(a1 + 40);
        if (!v16)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v16 = sub_16F5828(v20);
          *(a1 + 40) = v16;
LABEL_30:
          v6 = v26;
        }

LABEL_31:
        v15 = sub_21F4D60(a3, v16, v6);
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

          v16 = sub_16F5828(v18);
          *(a1 + 32) = v16;
          goto LABEL_30;
        }

        goto LABEL_31;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 24);
      if (!v21)
      {
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        sub_1868ECC(v23);
        v21 = v24;
        *(a1 + 24) = v24;
        v6 = v26;
      }

      v15 = sub_2200B30(a3, v21, v6);
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

char *sub_152E324(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_186732C(v7, v9, a3);
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
  if ((v6 & 4) != 0)
  {
LABEL_17:
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

    v4 = sub_16E5070(v13, v15, a3);
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

uint64_t sub_152E510(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (v2)
  {
    v4 = sub_1867668(*(a1 + 24));
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
  if ((v2 & 4) != 0)
  {
    v6 = sub_16E51F0(*(a1 + 40));
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

uint64_t sub_152E620(uint64_t a1)
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

  if (a1 != &off_2776460)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_15307A4(v6);
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

void sub_152E6EC(uint64_t a1)
{
  sub_152E620(a1);

  operator delete();
}

uint64_t sub_152E724(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1530378(v4);
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
  *(v6 + 48) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_152E7D8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v22 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v22, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v22 + 1);
    v7 = **v22;
    if (**v22 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v22, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v22 + 2);
      }
    }

    *v22 = v6;
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

          v15 = sub_1551248(v17);
          *(a1 + 32) = v15;
          v6 = *v22;
        }

        v14 = sub_2219FA8(a3, v15, v6);
        goto LABEL_28;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v20 = sub_194DB04((a1 + 24), v19);
      v14 = sub_1958890(v20, *v22, a3);
      goto LABEL_28;
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
        return *v22;
      }

LABEL_34:
      *v22 = 0;
      return *v22;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v22;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_28:
    *v22 = v14;
    if (!v14)
    {
      goto LABEL_34;
    }
  }

  return *v22;
}

char *sub_152E974(uint64_t a1, char *__dst, void *a3)
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

    v7 = *(a1 + 32);
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

    v4 = sub_1530ADC(v7, v9, a3);
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

uint64_t sub_152EAA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_1530CC0(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
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
    goto LABEL_9;
  }

LABEL_10:
  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v3 += v11;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_152EB7C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_156D3E4(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
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
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      size = v3->__r_.__value_.__l.__size_;
      v12 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v12 = *v12;
      }

      result = sub_194EA1C(&v3[2], (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
    }

    if ((v9 & 2) != 0)
    {
      LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_152ECA8(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_16;
    }
  }

  else if (v4)
  {
    goto LABEL_16;
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

  if (a1 != &off_2776488)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      sub_152E620(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_16:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_152EDB8(uint64_t a1)
{
  sub_152ECA8(a1);

  operator delete();
}

uint64_t sub_152EDF0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_18:
    v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
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
      goto LABEL_18;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_18;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_22:
  v7 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_26;
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  **v7 = 0;
  *(v7 + 8) = 0;
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_26:
  v8 = *(result + 48) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    result = sub_14FD644(*(result + 56));
    goto LABEL_8;
  }

  **v8 = 0;
  *(v8 + 8) = 0;
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 64) = 0;
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
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

uint64_t sub_152EF38(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v35 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v35, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v35 + 1);
    v8 = **v35;
    if (**v35 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v35, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v35 + 2);
      }
    }

    *v35 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      if (v8 >> 3 > 2)
      {
        if (v11 == 3)
        {
          if (v8 == 25)
          {
            v26 = *v7;
            v13 = v7 + 8;
            v5 |= 0x40u;
            *(a1 + 72) = v26;
            goto LABEL_50;
          }
        }

        else if (v11 == 4 && v8 == 34)
        {
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

            v18 = sub_1550FF8(v20);
            *(a1 + 56) = v18;
            v7 = *v35;
          }

          v21 = sub_22182F8(a3, v18, v7);
          goto LABEL_46;
        }
      }

      else if (v11 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v23 = *(a1 + 8);
          v16 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v16 = *v16;
          }

          v17 = (a1 + 24);
          goto LABEL_45;
        }
      }

      else if (v11 == 2 && v8 == 17)
      {
        v14 = *v7;
        v13 = v7 + 8;
        v5 |= 0x20u;
        *(a1 + 64) = v14;
LABEL_50:
        *v35 = v13;
        goto LABEL_56;
      }

      goto LABEL_58;
    }

    if (v8 >> 3 <= 6)
    {
      if (v11 == 5)
      {
        if (v8 == 42)
        {
          *(a1 + 16) |= 2u;
          v24 = *(a1 + 8);
          v16 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v16 = *v16;
          }

          v17 = (a1 + 32);
          goto LABEL_45;
        }
      }

      else if (v11 == 6 && v8 == 50)
      {
        *(a1 + 16) |= 4u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = (a1 + 40);
        goto LABEL_45;
      }

      goto LABEL_58;
    }

    if (v11 != 7)
    {
      break;
    }

    if (v8 != 56)
    {
      goto LABEL_58;
    }

    v5 |= 0x80u;
    v28 = (v7 + 1);
    v27 = *v7;
    if ((v27 & 0x8000000000000000) == 0)
    {
      goto LABEL_55;
    }

    v29 = *v28;
    v27 = (v29 << 7) + v27 - 128;
    if ((v29 & 0x80000000) == 0)
    {
      v28 = (v7 + 2);
LABEL_55:
      *v35 = v28;
      *(a1 + 80) = v27 != 0;
      goto LABEL_56;
    }

    v33 = sub_19587DC(v7, v27);
    *v35 = v33;
    *(a1 + 80) = v34 != 0;
    if (!v33)
    {
      goto LABEL_70;
    }

LABEL_56:
    if (sub_195ADC0(a3, v35, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 8 && v8 == 66)
  {
    *(a1 + 16) |= 8u;
    v22 = *(a1 + 8);
    v16 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v16 = *v16;
    }

    v17 = (a1 + 48);
LABEL_45:
    v25 = sub_194DB04(v17, v16);
    v21 = sub_1958890(v25, *v35, a3);
LABEL_46:
    *v35 = v21;
    if (!v21)
    {
      goto LABEL_70;
    }

    goto LABEL_56;
  }

LABEL_58:
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
      v7 = *v35;
    }

    v21 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_46;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_70:
  *v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v35;
}

char *sub_152F284(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
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

  v9 = *(a1 + 64);
  *v4 = 17;
  *(v4 + 1) = v9;
  v4 += 9;
  if ((v6 & 0x40) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_16:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 72);
  *v4 = 25;
  *(v4 + 1) = v10;
  v4 += 9;
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_19:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 56);
  *v4 = 34;
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

  v4 = sub_152E974(v11, v13, a3);
  if ((v6 & 2) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  v4 = sub_128AEEC(a3, 5, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) == 0)
  {
LABEL_7:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v4 = sub_128AEEC(a3, 6, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_27:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 80);
  *v4 = 56;
  v4[1] = v14;
  v4 += 2;
  if ((v6 & 8) != 0)
  {
LABEL_9:
    v4 = sub_128AEEC(a3, 8, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_10:
  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
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

uint64_t sub_152F4E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    result = 0;
    goto LABEL_21;
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

  v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v5 + 23);
  v7 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_26:
    v17 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v18 = *(v17 + 23);
    v19 = *(v17 + 8);
    if ((v18 & 0x80u) == 0)
    {
      v19 = v18;
    }

    v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v14 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  v16 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v16 = v15;
  }

  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_14:
  if ((v2 & 0x10) != 0)
  {
LABEL_15:
    v11 = sub_152EAA0(*(a1 + 56));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  v12 = v3 + 9;
  if ((v2 & 0x20) == 0)
  {
    v12 = v3;
  }

  if ((v2 & 0x40) != 0)
  {
    v12 += 9;
  }

  result = v12 + ((v2 >> 6) & 2);
LABEL_21:
  v13 = *(a1 + 8);
  if (v13)
  {
    v20 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    result += v21;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_152F6C0(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
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
          goto LABEL_5;
        }

        goto LABEL_22;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = *(a2 + 32);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v10 = v3->__r_.__value_.__l.__size_;
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    result = sub_194EA1C(&v3[1].__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }

LABEL_22:
    v12 = *(a2 + 40);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v13 = v3->__r_.__value_.__l.__size_;
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    result = sub_194EA1C(&v3[1].__r_.__value_.__r.__words[2], (v12 & 0xFFFFFFFFFFFFFFFELL), v14);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_28;
    }

LABEL_25:
    v15 = *(a2 + 48);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    v16 = v3->__r_.__value_.__l.__size_;
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    result = sub_194EA1C(&v3[2], (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_36;
    }

LABEL_28:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
    v18 = v3[2].__r_.__value_.__l.__size_;
    if (!v18)
    {
      v19 = v3->__r_.__value_.__l.__size_;
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_1550FF8(v20);
      v3[2].__r_.__value_.__l.__size_ = v18;
    }

    if (*(a2 + 56))
    {
      v21 = *(a2 + 56);
    }

    else
    {
      v21 = &off_2776460;
    }

    result = sub_14FD6D8(v18, v21);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_37;
    }

LABEL_36:
    v3[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      v3[3].__r_.__value_.__s.__data_[8] = *(a2 + 80);
      goto LABEL_11;
    }

LABEL_37:
    v3[3].__r_.__value_.__r.__words[0] = *(a2 + 72);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_152F8B0(uint64_t a1)
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
  sub_156C7F8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_152F988(uint64_t a1)
{
  sub_152F8B0(a1);

  operator delete();
}

uint64_t sub_152F9C0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v40 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v40, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v40 + 1);
    v8 = **v40;
    if (**v40 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v40, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v40 + 2);
      }
    }

    *v40 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 == 9)
        {
          v25 = *v7;
          v13 = (v7 + 2);
          v5 |= 8u;
          *(a1 + 72) = v25;
          goto LABEL_43;
        }
      }

      else if (v11 == 2 && v8 == 17)
      {
        v14 = *v7;
        v13 = (v7 + 2);
        v5 |= 0x40u;
        *(a1 + 88) = v14;
LABEL_43:
        *v40 = v13;
        goto LABEL_63;
      }

      goto LABEL_55;
    }

    if (v11 != 3)
    {
      if (v11 == 4 && v8 == 34)
      {
        *(a1 + 16) |= 1u;
        v21 = *(a1 + 8);
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        v23 = (a1 + 48);
        goto LABEL_48;
      }

      goto LABEL_55;
    }

    if (v8 != 24)
    {
      goto LABEL_55;
    }

    v5 |= 0x10u;
    LODWORD(v29) = *v7;
    if ((v29 & 0x80000000) == 0)
    {
      v30 = v7 + 1;
LABEL_67:
      *v40 = v30;
      *(a1 + 80) = v29;
      goto LABEL_63;
    }

    v29 = (*(v7 + 1) << 7) + v29 - 128;
    if ((*(v7 + 1) & 0x80000000) == 0)
    {
      v30 = v7 + 2;
      goto LABEL_67;
    }

    v36 = sub_19587DC(v7, v29);
    *v40 = v36;
    *(a1 + 80) = v37;
    if (!v36)
    {
      goto LABEL_78;
    }

LABEL_63:
    if (sub_195ADC0(a3, v40, a3[11].i32[1]))
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
        *(a1 + 16) |= 2u;
        v26 = *(a1 + 8);
        v22 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v22 = *v22;
        }

        v23 = (a1 + 56);
        goto LABEL_48;
      }
    }

    else if (v11 == 6 && v8 == 50)
    {
      v15 = v7 - 1;
      while (1)
      {
        v16 = v15 + 1;
        *v40 = v15 + 1;
        v17 = *(a1 + 40);
        if (v17 && (v18 = *(a1 + 32), v18 < *v17))
        {
          *(a1 + 32) = v18 + 1;
          v19 = *&v17[2 * v18 + 2];
        }

        else
        {
          v20 = sub_155107C(*(a1 + 24));
          v19 = sub_19593CC(a1 + 24, v20);
          v16 = *v40;
        }

        v15 = sub_221A038(a3, v19, v16);
        *v40 = v15;
        if (!v15)
        {
          goto LABEL_78;
        }

        if (*a3 <= v15 || *v15 != 50)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_55;
  }

  if (v11 == 7)
  {
    if (v8 != 56)
    {
      goto LABEL_55;
    }

    v5 |= 0x20u;
    LODWORD(v31) = *v7;
    if ((v31 & 0x80000000) == 0)
    {
      v32 = v7 + 1;
LABEL_70:
      *v40 = v32;
      *(a1 + 84) = v31;
      goto LABEL_63;
    }

    v31 = (*(v7 + 1) << 7) + v31 - 128;
    if ((*(v7 + 1) & 0x80000000) == 0)
    {
      v32 = v7 + 2;
      goto LABEL_70;
    }

    v38 = sub_19587DC(v7, v31);
    *v40 = v38;
    *(a1 + 84) = v39;
    if (!v38)
    {
      goto LABEL_78;
    }

    goto LABEL_63;
  }

  if (v11 == 8 && v8 == 66)
  {
    *(a1 + 16) |= 4u;
    v24 = *(a1 + 8);
    v22 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v22 = *v22;
    }

    v23 = (a1 + 64);
LABEL_48:
    v27 = sub_194DB04(v23, v22);
    v28 = sub_1958890(v27, *v40, a3);
LABEL_62:
    *v40 = v28;
    if (!v28)
    {
      goto LABEL_78;
    }

    goto LABEL_63;
  }

LABEL_55:
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
      v7 = *v40;
    }

    v28 = sub_1952690(v8, v35, v7, a3);
    goto LABEL_62;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_78:
  *v40 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v40;
}

char *sub_152FD68(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) == 0)
  {
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 88);
    *__dst = 17;
    *(__dst + 1) = v8;
    __dst += 9;
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v7 = *(a1 + 72);
  *__dst = 9;
  *(__dst + 1) = v7;
  __dst += 9;
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    v6 = __dst;
    goto LABEL_18;
  }

LABEL_11:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v9 = *(a1 + 80);
  *__dst = 24;
  __dst[1] = v9;
  if (v9 > 0x7F)
  {
    __dst[1] = v9 | 0x80;
    v10 = v9 >> 7;
    __dst[2] = v9 >> 7;
    v6 = __dst + 3;
    if (v9 >= 0x4000)
    {
      LOBYTE(v11) = __dst[2];
      do
      {
        *(v6 - 1) = v11 | 0x80;
        v11 = v10 >> 7;
        *v6++ = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }
  }

  else
  {
    v6 = __dst + 2;
  }

LABEL_18:
  if (v5)
  {
    v6 = sub_128AEEC(a3, 4, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  if ((v5 & 2) != 0)
  {
    v6 = sub_128AEEC(a3, 5, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v15 = *(*(a1 + 40) + 8 * i + 8);
      *v6 = 50;
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

      v6 = sub_152F284(v15, v17, a3);
    }
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v19 = *(a1 + 84);
    *v6 = 56;
    v6[1] = v19;
    if (v19 > 0x7F)
    {
      v6[1] = v19 | 0x80;
      v20 = v19 >> 7;
      v6[2] = v19 >> 7;
      v18 = v6 + 3;
      if (v19 >= 0x4000)
      {
        LOBYTE(v21) = v6[2];
        do
        {
          *(v18 - 1) = v21 | 0x80;
          v21 = v20 >> 7;
          *v18++ = v20 >> 7;
          v22 = v20 >> 14;
          v20 >>= 7;
        }

        while (v22);
      }
    }

    else
    {
      v18 = v6 + 2;
    }
  }

  else
  {
    v18 = v6;
  }

  if ((v5 & 4) != 0)
  {
    v18 = sub_128AEEC(a3, 8, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v18);
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

uint64_t sub_153007C(uint64_t a1)
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
      v7 = sub_152F4E4(v6);
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
  if ((v8 & 0x7F) == 0)
  {
    goto LABEL_38;
  }

  if ((v8 & 1) == 0)
  {
    if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v18 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(v18 + 23);
    v20 = *(v18 + 8);
    if ((v19 & 0x80u) == 0)
    {
      v20 = v19;
    }

    v2 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v15 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 23);
  v17 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v17 = v16;
  }

  v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 2) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
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
  v12 = v2 + 9;
  if ((v8 & 8) == 0)
  {
    v12 = v2;
  }

  if ((v8 & 0x10) != 0)
  {
    v13 = *(a1 + 80);
    if (v13 < 0)
    {
      v14 = 11;
    }

    else
    {
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v12 += v14;
  }

  if ((v8 & 0x20) != 0)
  {
    v21 = *(a1 + 84);
    if (v21 < 0)
    {
      v22 = 11;
    }

    else
    {
      v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v12 += v22;
  }

  if ((v8 & 0x40) != 0)
  {
    v2 = v12 + 9;
  }

  else
  {
    v2 = v12;
  }

LABEL_38:
  v23 = *(a1 + 8);
  if (v23)
  {
    v25 = v23 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v26 < 0)
    {
      v26 = *(v25 + 16);
    }

    v2 += v26;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_15302A0(uint64_t a1)
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

void sub_1530340(uint64_t a1)
{
  sub_15302A0(a1);

  operator delete();
}

uint64_t sub_1530378(uint64_t a1)
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
  *(result + 24) = 0;
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_15303C0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v22 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v22, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v22 + 1);
    v7 = **v22;
    if (**v22 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v22, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v22 + 2);
      }
    }

    *v22 = v6;
    if (v7 >> 3 != 2)
    {
      if (v7 >> 3 == 1 && v7 == 8)
      {
        v19 = v6 + 1;
        v18 = *v6;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if (v20 < 0)
        {
          *v22 = sub_19587DC(v6, v18);
          if (!*v22)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v19 = v6 + 2;
LABEL_28:
          *v22 = v19;
        }

        if (v18 > 9)
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
          return *v22;
        }

LABEL_39:
        *v22 = 0;
        return *v22;
      }

      v12 = *(a1 + 8);
      if (v12)
      {
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v13 = sub_11F1920((a1 + 8));
        v6 = *v22;
      }

      v14 = sub_1952690(v7, v13, v6, a3);
      goto LABEL_23;
    }

    if (v7 != 18)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = sub_194DB04((a1 + 24), v16);
    v14 = sub_1958890(v17, *v22, a3);
LABEL_23:
    *v22 = v14;
    if (!v14)
    {
      goto LABEL_39;
    }
  }

  return *v22;
}

char *sub_1530580(uint64_t a1, char *__dst, void *a3)
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
    v6 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v6);
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

uint64_t sub_15306C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_13;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_13;
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
    v6 = *(a1 + 32);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v7;
  }

LABEL_13:
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

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_15307A4(uint64_t a1)
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
  sub_156C87C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1530850(uint64_t a1)
{
  sub_15307A4(a1);

  operator delete();
}

uint64_t sub_1530888(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 != 3)
    {
      if (v10 == 2)
      {
        if (v7 == 18)
        {
          v16 = v6 - 1;
          while (1)
          {
            v17 = v16 + 1;
            *v29 = v16 + 1;
            v18 = *(a1 + 40);
            if (v18 && (v19 = *(a1 + 32), v19 < *v18))
            {
              *(a1 + 32) = v19 + 1;
              v20 = *&v18[2 * v19 + 2];
            }

            else
            {
              v21 = sub_15511C0(*(a1 + 24));
              v20 = sub_19593CC(a1 + 24, v21);
              v17 = *v29;
            }

            v16 = sub_221A0C8(a3, v20, v17);
            *v29 = v16;
            if (!v16)
            {
              break;
            }

            if (*a3 <= v16 || *v16 != 18)
            {
              goto LABEL_42;
            }
          }

LABEL_50:
          *v29 = 0;
          return *v29;
        }
      }

      else if (v10 == 1 && v7 == 8)
      {
        v26 = v6 + 1;
        v25 = *v6;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_39;
        }

        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if (v27 < 0)
        {
          *v29 = sub_19587DC(v6, v25);
          if (!*v29)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v26 = v6 + 2;
LABEL_39:
          *v29 = v26;
        }

        if (v25 > 5)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 56) = v25;
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
          return *v29;
        }

        goto LABEL_50;
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
      goto LABEL_34;
    }

    if (v7 != 26)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 1u;
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v24 = sub_194DB04((a1 + 48), v23);
    v15 = sub_1958890(v24, *v29, a3);
LABEL_34:
    *v29 = v15;
    if (!v15)
    {
      goto LABEL_50;
    }

LABEL_42:
    ;
  }

  return *v29;
}

char *sub_1530ADC(uint64_t a1, char *__dst, void *a3)
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

      v6 = sub_1530580(v13, v15, a3);
    }
  }

  if (v5)
  {
    v6 = sub_128AEEC(a3, 3, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v19)
  {
    v21 = v19;
    memcpy(v6, v20, v19);
    v6 += v21;
    return v6;
  }

  return sub_1957130(a3, v20, v19, v6);
}

uint64_t sub_1530CC0(uint64_t a1)
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
      v7 = sub_15306C8(v6);
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
      v12 = *(a1 + 56);
      if (v12 < 0)
      {
        v13 = 11;
      }

      else
      {
        v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

void *sub_1530E04(void *a1)
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

void sub_1530E78(void *a1)
{
  sub_1530E04(a1);

  operator delete();
}

uint64_t sub_1530EB0(uint64_t a1)
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

char *sub_1530ED8(uint64_t a1, char *a2, int32x2_t *a3)
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
    v20 = v7 + 1;
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_30:
      v31 = v20;
      *(a1 + 32) = v19 != 0;
      goto LABEL_35;
    }

    v29 = sub_19587DC(v7, v19);
    v31 = v29;
    *(a1 + 32) = v30 != 0;
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

char *sub_1531130(uint64_t a1, char *__dst, _DWORD *a3)
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

    v15 = *(a1 + 32);
    *v11 = 24;
    v11[1] = v15;
    v11 += 2;
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v11;
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

  if (*a3 - v11 >= v19)
  {
    v21 = v19;
    memcpy(v11, v20, v19);
    v11 += v21;
    return v11;
  }

  return sub_1957130(a3, v20, v19, v11);
}

uint64_t sub_1531318(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_9;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v3 = v2 + ((v1 >> 1) & 2);
LABEL_9:
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

void *sub_15313D8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_156C900(a1 + 4);
  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1531460(void *a1)
{
  sub_15313D8(a1);

  operator delete();
}

uint64_t sub_1531498(uint64_t result)
{
  v1 = result;
  *(result + 16) = 0;
  v2 = *(result + 40);
  if (v2 >= 1)
  {
    v3 = (*(result + 48) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1530EB0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 40) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_1531518(uint64_t a1, char *a2, int32x2_t *a3)
{
  v29 = a2;
  if ((sub_195ADC0(a3, &v29, a3[11].i32[1]) & 1) == 0)
  {
    v6 = (a1 + 8);
    do
    {
      v7 = v29 + 1;
      v8 = *v29;
      if (*v29 < 0)
      {
        v9 = *v7;
        v10 = v8 + (v9 << 7);
        v8 = v10 - 128;
        if (v9 < 0)
        {
          v7 = sub_1958824(v29, v10 - 128);
          v8 = v11;
        }

        else
        {
          v7 = v29 + 2;
        }
      }

      v29 = v7;
      if (v8 >> 3 == 2)
      {
        if (v8 == 18)
        {
          v20 = v7 - 1;
          while (1)
          {
            v21 = (v20 + 1);
            v29 = v20 + 1;
            v22 = *(a1 + 48);
            if (v22 && (v23 = *(a1 + 40), v23 < *v22))
            {
              *(a1 + 40) = v23 + 1;
              v24 = *&v22[2 * v23 + 2];
            }

            else
            {
              v25 = sub_15512F0(*(a1 + 32));
              v24 = sub_19593CC(a1 + 32, v25);
              v21 = v29;
            }

            v20 = sub_221A158(a3, v24, v21);
            v29 = v20;
            if (!v20)
            {
              return 0;
            }

            if (*a3 <= v20 || *v20 != 18)
            {
              goto LABEL_47;
            }
          }
        }
      }

      else if (v8 >> 3 == 1)
      {
        if (v8 == 8)
        {
          v12 = v7 - 1;
          while (1)
          {
            v29 = v12 + 1;
            v13 = v12[1];
            v14 = v12 + 2;
            if (v13 < 0)
            {
              v15 = *v14;
              v16 = (v15 << 7) + v13;
              LODWORD(v13) = v16 - 128;
              if (v15 < 0)
              {
                v29 = sub_19587DC((v12 + 1), (v16 - 128));
                if (!v29)
                {
                  return 0;
                }

                LODWORD(v13) = v19;
                goto LABEL_16;
              }

              v14 = v12 + 3;
            }

            v29 = v14;
LABEL_16:
            if (v13 > 7)
            {
              sub_12E8450();
            }

            else
            {
              v17 = *(a1 + 16);
              if (v17 == *(a1 + 20))
              {
                v18 = v17 + 1;
                sub_1958E5C((a1 + 16), v17 + 1);
                *(*(a1 + 24) + 4 * v17) = v13;
              }

              else
              {
                *(*(a1 + 24) + 4 * v17) = v13;
                v18 = v17 + 1;
              }

              *(a1 + 16) = v18;
            }

            v12 = v29;
            if (*a3 <= v29 || *v29 != 8)
            {
              goto LABEL_47;
            }
          }
        }

        if (v8 == 10)
        {
          *&v30 = a1 + 16;
          *(&v30 + 1) = sub_14ECE38;
          v31 = a1 + 8;
          v32 = 1;
          v26 = sub_1216588(a3, v7, &v30);
          goto LABEL_46;
        }
      }

      if (v8)
      {
        v27 = (v8 & 7) == 4;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
          return v29;
        }

        return 0;
      }

      if (*v6)
      {
        v28 = (*v6 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v28 = sub_11F1920((a1 + 8));
        v7 = v29;
      }

      v26 = sub_1952690(v8, v28, v7, a3);
LABEL_46:
      v29 = v26;
      if (!v26)
      {
        return 0;
      }

LABEL_47:
      ;
    }

    while (!sub_195ADC0(a3, &v29, a3[11].i32[1]));
  }

  return v29;
}

char *sub_15317E4(uint64_t a1, char *a2, _DWORD *a3)
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

      v8 = sub_1531130(v14, v16, a3);
    }
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v8;
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

  if (*a3 - v8 >= v20)
  {
    v22 = v20;
    memcpy(v8, v21, v20);
    v8 += v22;
    return v8;
  }

  return sub_1957130(a3, v21, v20, v8);
}

uint64_t sub_15319C4(uint64_t a1)
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
      v14 = sub_1531318(v13);
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

  *(a1 + 56) = v9;
  return v9;
}

std::string *sub_1531AC0(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = &result->__r_.__value_.__r.__words[2];
    v6 = SLODWORD(result->__r_.__value_.__r.__words[2]);
    sub_1958E5C(&result->__r_.__value_.__r.__words[2], v6 + v4);
    data = v3[1].__r_.__value_.__l.__data_;
    *v5 += *(a2 + 16);
    result = memcpy(&data[4 * v6], *(a2 + 24), 4 * *(a2 + 16));
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = *(a2 + 48);
    v10 = sub_19592E8(&v3[1].__r_.__value_.__l.__size_, *(a2 + 40));
    result = sub_156D460(&v3[1].__r_.__value_.__l.__size_, v10, (v9 + 8), v8, *v3[2].__r_.__value_.__l.__data_ - LODWORD(v3[1].__r_.__value_.__r.__words[2]));
    v11 = LODWORD(v3[1].__r_.__value_.__r.__words[2]) + v8;
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) = v11;
    v12 = v3[2].__r_.__value_.__l.__data_;
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1531BD8(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_13;
    }
  }

  else if (v4)
  {
    goto LABEL_13;
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

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_13:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1531CB8(uint64_t a1)
{
  sub_1531BD8(a1);

  operator delete();
}

uint64_t sub_1531CF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) != 0)
  {
    if ((v1 & 1) == 0)
    {
      if ((v1 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v3 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
        if ((v1 & 4) != 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
        if ((v1 & 4) != 0)
        {
          goto LABEL_15;
        }
      }

LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_22;
      }

LABEL_19:
      v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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

      goto LABEL_22;
    }

    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_15:
    v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v1 & 8) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v1 & 8) == 0)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_19;
  }

LABEL_22:
  if ((v1 & 0x30) != 0)
  {
    *(a1 + 56) = 0;
  }

  v7 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v7)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1531DE8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v34 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v34, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v34 + 1);
    v8 = **v34;
    if (**v34 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v34, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v34 + 2);
      }
    }

    *v34 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 1u;
          v21 = *(a1 + 8);
          v14 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v14 = *v14;
          }

          v15 = (a1 + 24);
          goto LABEL_38;
        }
      }

      else if (v11 == 3 && v8 == 26)
      {
        *(a1 + 16) |= 2u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 32);
        goto LABEL_38;
      }

      goto LABEL_47;
    }

    if (v8 != 8)
    {
      goto LABEL_47;
    }

    v5 |= 0x10u;
    v18 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_29:
      *v34 = v18;
      *(a1 + 56) = v17 != 0;
      goto LABEL_40;
    }

    v30 = sub_19587DC(v7, v17);
    *v34 = v30;
    *(a1 + 56) = v31 != 0;
    if (!v30)
    {
      goto LABEL_61;
    }

LABEL_40:
    if (sub_195ADC0(a3, v34, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 34)
    {
      goto LABEL_47;
    }

    *(a1 + 16) |= 4u;
    v20 = *(a1 + 8);
    v14 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v14 = *v14;
    }

    v15 = (a1 + 40);
LABEL_38:
    v22 = sub_194DB04(v15, v14);
    v23 = sub_1958890(v22, *v34, a3);
LABEL_39:
    *v34 = v23;
    if (!v23)
    {
      goto LABEL_61;
    }

    goto LABEL_40;
  }

  if (v11 == 5)
  {
    if (v8 != 40)
    {
      goto LABEL_47;
    }

    v5 |= 0x20u;
    v24 = v7 + 1;
    v25 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    v26 = *v24;
    v25 = v25 + (v26 << 7) - 128;
    if ((v26 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_46:
      *v34 = v24;
      *(a1 + 60) = v25;
      goto LABEL_40;
    }

    v32 = sub_1958770(v7, v25);
    *v34 = v32;
    *(a1 + 60) = v33;
    if (!v32)
    {
      goto LABEL_61;
    }

    goto LABEL_40;
  }

  if (v11 == 6 && v8 == 50)
  {
    *(a1 + 16) |= 8u;
    v16 = *(a1 + 8);
    v14 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v14 = *v14;
    }

    v15 = (a1 + 48);
    goto LABEL_38;
  }

LABEL_47:
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
      v7 = *v34;
    }

    v23 = sub_1952690(v8, v29, v7, a3);
    goto LABEL_39;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_61:
  *v34 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v34;
}

char *sub_15320E4(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 56);
    *v4 = 8;
    v4[1] = v8;
    v4 += 2;
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    v4 = sub_128AEEC(a3, 4, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  v4 = sub_128AEEC(a3, 3, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v6 & 0x20) == 0)
  {
LABEL_6:
    v7 = v4;
    goto LABEL_20;
  }

LABEL_13:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 60);
  *v4 = 40;
  v4[1] = v9;
  if (v9 > 0x7F)
  {
    v4[1] = v9 | 0x80;
    v10 = v9 >> 7;
    v4[2] = v9 >> 7;
    v7 = v4 + 3;
    if (v9 >= 0x4000)
    {
      LOBYTE(v11) = v4[2];
      do
      {
        *(v7 - 1) = v11 | 0x80;
        v11 = v10 >> 7;
        *v7++ = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_20:
  if ((v6 & 8) != 0)
  {
    v7 = sub_128AEEC(a3, 6, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v7);
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

  if ((*a3 - v7) >= v16)
  {
    v18 = v16;
    memcpy(v7, v17, v16);
    v7 += v18;
    return v7;
  }

  return sub_1957130(a3, v17, v16, v7);
}

uint64_t sub_15322D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_19;
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

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    v15 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if ((v1 & 8) != 0)
  {
LABEL_14:
    v10 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  v3 = v2 + ((v1 >> 3) & 2);
  if ((v1 & 0x20) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  v13 = *(a1 + 8);
  if (v13)
  {
    v18 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v3 += v19;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_1532468(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) != 0)
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
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v10 = v3->__r_.__value_.__l.__size_;
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    result = sub_194EA1C(&v3[1].__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }

LABEL_20:
    v12 = *(a2 + 40);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v13 = v3->__r_.__value_.__l.__size_;
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    result = sub_194EA1C(&v3[1].__r_.__value_.__r.__words[2], (v12 & 0xFFFFFFFFFFFFFFFELL), v14);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }

LABEL_23:
    v15 = *(a2 + 48);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    v16 = v3->__r_.__value_.__l.__size_;
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    result = sub_194EA1C(&v3[2], (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
LABEL_9:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_10;
      }

LABEL_8:
      HIDWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
      goto LABEL_9;
    }

LABEL_26:
    v3[2].__r_.__value_.__s.__data_[8] = *(a2 + 56);
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

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_15325F8(uint64_t a1)
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
  sub_156C984((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15326A4(uint64_t a1)
{
  sub_15325F8(a1);

  operator delete();
}

uint64_t sub_15326DC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1531CF0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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
  }

  if ((v5 & 6) != 0)
  {
    *(v1 + 64) = 0;
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_153279C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v35 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v35, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v35 + 1);
    v8 = **v35;
    if (**v35 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v35, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v35 + 2);
      }
    }

    *v35 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 10)
      {
        goto LABEL_37;
      }

      *(a1 + 16) |= 1u;
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v23 = sub_194DB04((a1 + 48), v22);
      v24 = sub_1958890(v23, *v35, a3);
LABEL_44:
      *v35 = v24;
      if (!v24)
      {
        goto LABEL_58;
      }

      goto LABEL_49;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_37;
    }

    v5 |= 4u;
    LODWORD(v13) = *v7;
    if ((v13 & 0x80000000) == 0)
    {
      v14 = v7 + 1;
LABEL_48:
      *v35 = v14;
      *(a1 + 64) = v13;
      goto LABEL_49;
    }

    v13 = (v7[1] << 7) + v13 - 128;
    if ((v7[1] & 0x80000000) == 0)
    {
      v14 = v7 + 2;
      goto LABEL_48;
    }

    v31 = sub_19587DC(v7, v13);
    *v35 = v31;
    *(a1 + 64) = v32;
    if (!v31)
    {
      goto LABEL_58;
    }

LABEL_49:
    if (sub_195ADC0(a3, v35, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_37;
    }

    v5 |= 2u;
    v26 = (v7 + 1);
    v25 = *v7;
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_36;
    }

    v27 = *v26;
    v25 = (v27 << 7) + v25 - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v26 = (v7 + 2);
LABEL_36:
      *v35 = v26;
      *(a1 + 56) = v25;
      goto LABEL_49;
    }

    v33 = sub_19587DC(v7, v25);
    *v35 = v33;
    *(a1 + 56) = v34;
    if (!v33)
    {
      goto LABEL_58;
    }

    goto LABEL_49;
  }

  if (v11 == 4 && v8 == 34)
  {
    v15 = v7 - 1;
    while (1)
    {
      v16 = v15 + 1;
      *v35 = v15 + 1;
      v17 = *(a1 + 40);
      if (v17 && (v18 = *(a1 + 32), v18 < *v17))
      {
        *(a1 + 32) = v18 + 1;
        v19 = *&v17[2 * v18 + 2];
      }

      else
      {
        v20 = sub_1551410(*(a1 + 24));
        v19 = sub_19593CC(a1 + 24, v20);
        v16 = *v35;
      }

      v15 = sub_221A1E8(a3, v19, v16);
      *v35 = v15;
      if (!v15)
      {
        goto LABEL_58;
      }

      if (*a3 <= v15 || *v15 != 34)
      {
        goto LABEL_49;
      }
    }
  }

LABEL_37:
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
      v7 = *v35;
    }

    v24 = sub_1952690(v8, v30, v7, a3);
    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_58:
  *v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v35;
}

char *sub_1532A6C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 64);
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

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 56);
    *v7 = 24;
    v7[1] = v13;
    if (v13 > 0x7F)
    {
      v7[1] = v13 | 0x80;
      v14 = v13 >> 7;
      v7[2] = v13 >> 7;
      v12 = v7 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v15) = v7[2];
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
      v12 = v7 + 2;
    }
  }

  else
  {
    v12 = v7;
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v19 = *(*(a1 + 40) + 8 * i + 8);
      *v12 = 34;
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

      v12 = sub_15320E4(v19, v21, a3);
    }
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v12;
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

  if ((*a3 - v12) >= v25)
  {
    v27 = v25;
    memcpy(v12, v26, v25);
    v12 += v27;
    return v12;
  }

  return sub_1957130(a3, v26, v25, v12);
}

uint64_t sub_1532CD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 1) == 0)
  {
    result = 0;
    if ((v2 & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  result = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 4) != 0)
  {
LABEL_7:
    v7 = *(a1 + 64);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v8;
  }

  return result;
}

uint64_t sub_1532D64(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((~v2 & 5) != 0)
  {
    v10 = sub_1532CD8(a1);
  }

  else
  {
    v3 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    v7 = *(a1 + 64);
    v8 = (9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6;
    if (v7 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 10;
    }

    v10 = v5 + v6 + v9 + 2;
  }

  v11 = *(a1 + 32);
  v12 = v10 + v11;
  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = (v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v15 = 8 * v11;
    do
    {
      v16 = *v14++;
      v17 = sub_15322D0(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    v12 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

    v12 += v21;
  }

  *(a1 + 20) = v12;
  return v12;
}

std::string *sub_1532EB4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_156D4DC(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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

uint64_t sub_1533004(uint64_t a1)
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
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15330AC(uint64_t a1)
{
  sub_1533004(a1);

  operator delete();
}

uint64_t sub_15330E4(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  if (*(a1 + 16))
  {
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

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 48) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_153316C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v33 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v33, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v33 + 1);
    v8 = **v33;
    if (**v33 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v33, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v33 + 2);
      }
    }

    *v33 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      break;
    }

    if (v11 != 2)
    {
      if (v11 != 1 || v8 != 10)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v30 = sub_194DB04((a1 + 48), v29);
      v16 = sub_1958890(v30, *v33, a3);
LABEL_40:
      *v33 = v16;
      if (!v16)
      {
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (v8 != 16)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v17 = v7 + 1;
    v18 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    v19 = *v17;
    v18 = v18 + (v19 << 7) - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_24:
      *v33 = v17;
      *(a1 + 56) = v18;
      goto LABEL_41;
    }

    v31 = sub_1958770(v7, v18);
    *v33 = v31;
    *(a1 + 56) = v32;
    if (!v31)
    {
      goto LABEL_48;
    }

LABEL_41:
    if (sub_195ADC0(a3, v33, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    v20 = v7 - 1;
    while (1)
    {
      v21 = (v20 + 1);
      *v33 = v20 + 1;
      v22 = *(a1 + 40);
      if (v22 && (v23 = *(a1 + 32), v23 < *v22))
      {
        *(a1 + 32) = v23 + 1;
        v24 = *&v22[2 * v23 + 2];
      }

      else
      {
        v25 = *(a1 + 24);
        if (!v25)
        {
          operator new();
        }

        *v27 = v26;
        v27[1] = sub_195A650;
        *v26 = 0;
        v26[1] = 0;
        v26[2] = 0;
        v24 = sub_19593CC(a1 + 24, v26);
        v21 = *v33;
      }

      v20 = sub_1958890(v24, v21, a3);
      *v33 = v20;
      if (!v20)
      {
        goto LABEL_48;
      }

      if (*a3 <= v20 || *v20 != 26)
      {
        goto LABEL_41;
      }
    }
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
      v7 = *v33;
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
  *v33 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v33;
}

char *sub_1533424(uint64_t a1, char *__dst, void *a3)
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

    v8 = *(a1 + 56);
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

  v12 = *(a1 + 32);
  if (v12 >= 1)
  {
    v13 = 8;
    do
    {
      v14 = *(*(a1 + 40) + v13);
      v15 = *(v14 + 23);
      if (v15 < 0 && (v15 = v14[1], v15 > 127) || *a3 - v7 + 14 < v15)
      {
        v7 = sub_1957480(a3, 3, v14, v7);
      }

      else
      {
        *v7 = 26;
        v7[1] = v15;
        if (*(v14 + 23) < 0)
        {
          v14 = *v14;
        }

        v16 = v7 + 2;
        memcpy(v16, v14, v15);
        v7 = &v16[v15];
      }

      v13 += 8;
      --v12;
    }

    while (v12);
  }

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

uint64_t sub_1533620(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      return v2;
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t sub_15336A0(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v5 = sub_1533620(a1);
  }

  else
  {
    v2 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v5 = v4 + ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v6 = *(a1 + 32);
  result = v5 + v6;
  if (v6 >= 1)
  {
    v8 = (*(a1 + 40) + 8);
    do
    {
      v9 = *v8++;
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      result += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      --v6;
    }

    while (v6);
  }

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

std::string *sub_15337B8(std::string *result, uint64_t a2)
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
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      v10 = *(a2 + 48);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      size = v3->__r_.__value_.__l.__size_;
      v12 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v12 = *v12;
      }

      result = sub_194EA1C(&v3[2], (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
    }

    if ((v9 & 2) != 0)
    {
      LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_15338F0(uint64_t a1)
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

void sub_15339BC(uint64_t a1)
{
  sub_15338F0(a1);

  operator delete();
}

uint64_t sub_15339F4(uint64_t a1)
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

uint64_t sub_1533AAC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1533C68(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1533D7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((~v2 & 3) != 0)
  {
    result = sub_132CD7C(a1);
    if ((v2 & 4) == 0)
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

  v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
  v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  v8 = *(v7 + 23);
  v9 = *(v7 + 8);
  if ((v8 & 0x80u) == 0)
  {
    v9 = v8;
  }

  result = v5 + v9 + v6 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 4) != 0)
  {
LABEL_9:
    v11 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    result += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
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

  *(a1 + 20) = result;
  return result;
}

void *sub_1533EC0(void *a1)
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

void sub_1533F34(void *a1)
{
  sub_1533EC0(a1);

  operator delete();
}

uint64_t sub_1533F6C(uint64_t a1)
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

char *sub_1533F84(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_1534108(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

uint64_t sub_15341E8(uint64_t a1)
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

uint64_t sub_1534238(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26EC940;
  *(result + 8) = v3;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a2;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a2;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = a2;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 120) = a2;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = a2;
  *(result + 152) = 0;
  *(result + 160) = 0;
  *(result + 168) = a2;
  *(result + 176) = 0;
  *(result + 184) = 0;
  *(result + 192) = a2;
  *(result + 200) = 0;
  *(result + 208) = 0;
  *(result + 216) = a2;
  *(result + 224) = 0;
  *(result + 232) = 0;
  *(result + 240) = a2;
  *(result + 248) = 0;
  *(result + 256) = 0;
  *(result + 264) = &qword_278E990;
  *(result + 272) = &qword_278E990;
  *(result + 280) = &qword_278E990;
  *(result + 288) = &qword_278E990;
  *(result + 296) = &qword_278E990;
  *(result + 304) = &qword_278E990;
  *(result + 312) = &qword_278E990;
  *(result + 320) = 0;
  *(result + 344) = 0;
  *(result + 328) = 0;
  *(result + 336) = 0;
  return result;
}

void *sub_15342C4(void *a1)
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

  sub_15343B8(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_156CC9C(a1 + 30);
  sub_1956AFC(a1 + 27);
  sub_156CC18(a1 + 24);
  sub_156CB94(a1 + 21);
  sub_156CB10(a1 + 18);
  sub_13473FC(a1 + 15);
  sub_156CA8C(a1 + 12);
  sub_156CA08(a1 + 9);
  sub_1956AFC(a1 + 6);
  sub_1569688(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_15343B8(uint64_t result)
{
  if (*(result + 264) != &qword_278E990)
  {
    sub_194E89C((result + 264));
  }

  if (*(result + 272) != &qword_278E990)
  {
    sub_194E89C((result + 272));
  }

  if (*(result + 280) != &qword_278E990)
  {
    sub_194E89C((result + 280));
  }

  if (*(result + 288) != &qword_278E990)
  {
    sub_194E89C((result + 288));
  }

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

  if (result != &off_2776520)
  {
    result = *(result + 320);
    if (result)
    {
      sub_16E4E08();

      operator delete();
    }
  }

  return result;
}

void sub_15344B8(void *a1)
{
  sub_15342C4(a1);

  operator delete();
}

uint64_t sub_15344F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_14EAA78(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  sub_12A41D0(a1 + 48);
  v5 = *(a1 + 80);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 88) + 8);
    do
    {
      v7 = *v6++;
      sub_152E724(v7);
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
      sub_16EE624(v10);
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
      sub_1531498(v13);
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
      sub_15326DC(v16);
      --v14;
    }

    while (v14);
    *(a1 + 152) = 0;
  }

  v17 = *(a1 + 176);
  if (v17 >= 1)
  {
    v18 = (*(a1 + 184) + 8);
    do
    {
      v19 = *v18++;
      sub_15330E4(v19);
      --v17;
    }

    while (v17);
    *(a1 + 176) = 0;
  }

  v20 = *(a1 + 200);
  if (v20 >= 1)
  {
    v21 = (*(a1 + 208) + 8);
    do
    {
      v22 = *v21++;
      sub_15339F4(v22);
      --v20;
    }

    while (v20);
    *(a1 + 200) = 0;
  }

  sub_12A41D0(a1 + 216);
  result = sub_1563BF0(a1 + 240);
  v24 = *(a1 + 16);
  if (!v24)
  {
    goto LABEL_39;
  }

  if (v24)
  {
    v27 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v27 + 23) < 0)
    {
      **v27 = 0;
      *(v27 + 8) = 0;
      if ((v24 & 2) != 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      *v27 = 0;
      *(v27 + 23) = 0;
      if ((v24 & 2) != 0)
      {
        goto LABEL_49;
      }
    }

LABEL_32:
    if ((v24 & 4) == 0)
    {
      goto LABEL_33;
    }

LABEL_53:
    v29 = *(a1 + 280) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v29 + 23) < 0)
    {
      **v29 = 0;
      *(v29 + 8) = 0;
      if ((v24 & 8) != 0)
      {
        goto LABEL_57;
      }
    }

    else
    {
      *v29 = 0;
      *(v29 + 23) = 0;
      if ((v24 & 8) != 0)
      {
        goto LABEL_57;
      }
    }

LABEL_34:
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_35;
    }

LABEL_61:
    v31 = *(a1 + 296) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v31 + 23) < 0)
    {
      **v31 = 0;
      *(v31 + 8) = 0;
      if ((v24 & 0x20) != 0)
      {
        goto LABEL_65;
      }
    }

    else
    {
      *v31 = 0;
      *(v31 + 23) = 0;
      if ((v24 & 0x20) != 0)
      {
        goto LABEL_65;
      }
    }

LABEL_36:
    if ((v24 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_69;
  }

  if ((v24 & 2) == 0)
  {
    goto LABEL_32;
  }

LABEL_49:
  v28 = *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v28 + 23) < 0)
  {
    **v28 = 0;
    *(v28 + 8) = 0;
    if ((v24 & 4) != 0)
    {
      goto LABEL_53;
    }
  }

  else
  {
    *v28 = 0;
    *(v28 + 23) = 0;
    if ((v24 & 4) != 0)
    {
      goto LABEL_53;
    }
  }

LABEL_33:
  if ((v24 & 8) == 0)
  {
    goto LABEL_34;
  }

LABEL_57:
  v30 = *(a1 + 288) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v30 + 23) < 0)
  {
    **v30 = 0;
    *(v30 + 8) = 0;
    if ((v24 & 0x10) != 0)
    {
      goto LABEL_61;
    }
  }

  else
  {
    *v30 = 0;
    *(v30 + 23) = 0;
    if ((v24 & 0x10) != 0)
    {
      goto LABEL_61;
    }
  }

LABEL_35:
  if ((v24 & 0x20) == 0)
  {
    goto LABEL_36;
  }

LABEL_65:
  v32 = *(a1 + 304) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v32 + 23) & 0x80000000) == 0)
  {
    *v32 = 0;
    *(v32 + 23) = 0;
    if ((v24 & 0x40) != 0)
    {
      goto LABEL_69;
    }

LABEL_37:
    if ((v24 & 0x80) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  **v32 = 0;
  *(v32 + 8) = 0;
  if ((v24 & 0x40) == 0)
  {
    goto LABEL_37;
  }

LABEL_69:
  v33 = *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v33 + 23) & 0x80000000) == 0)
  {
    *v33 = 0;
    *(v33 + 23) = 0;
    if ((v24 & 0x80) == 0)
    {
      goto LABEL_39;
    }

LABEL_38:
    result = sub_16E4E44(*(a1 + 320));
    goto LABEL_39;
  }

  **v33 = 0;
  *(v33 + 8) = 0;
  if ((v24 & 0x80) != 0)
  {
    goto LABEL_38;
  }

LABEL_39:
  if ((v24 & 0x3F00) != 0)
  {
    *(a1 + 328) = 0;
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
  }

  v26 = *(a1 + 8);
  v25 = a1 + 8;
  *(v25 + 8) = 0;
  if (v26)
  {

    return sub_1957EA8(v25);
  }

  return result;
}

uint64_t sub_1534810(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v122 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v122, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v122 + 1);
    v8 = **v122;
    if (**v122 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v122, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v122 + 2);
      }
    }

    *v122 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 0x63)
    {
      break;
    }

    switch(v11)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_182;
        }

        v5 |= 0x100u;
        v13 = (v7 + 1);
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if (v14 < 0)
        {
          v112 = sub_19587DC(v7, v12);
          *v122 = v112;
          *(a1 + 328) = v113;
          if (!v112)
          {
            goto LABEL_207;
          }
        }

        else
        {
          v13 = (v7 + 2);
LABEL_13:
          *v122 = v13;
          *(a1 + 328) = v12;
        }

        break;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_182;
        }

        v5 |= 0x200u;
        LODWORD(v69) = *v7;
        if ((v69 & 0x80000000) == 0)
        {
          v70 = v7 + 1;
LABEL_191:
          *v122 = v70;
          *(a1 + 336) = v69;
          break;
        }

        v69 = (v7[1] << 7) + v69 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v70 = v7 + 2;
          goto LABEL_191;
        }

        v114 = sub_19587DC(v7, v69);
        *v122 = v114;
        *(a1 + 336) = v115;
        if (!v114)
        {
          goto LABEL_207;
        }

        break;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_182;
        }

        *(a1 + 16) |= 1u;
        v60 = *(a1 + 8);
        v32 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
        if (v60)
        {
          v32 = *v32;
        }

        v33 = (a1 + 264);
        goto LABEL_143;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_182;
        }

        *(a1 + 16) |= 2u;
        v67 = *(a1 + 8);
        v32 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
        if (v67)
        {
          v32 = *v32;
        }

        v33 = (a1 + 272);
        goto LABEL_143;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_182;
        }

        *(a1 + 16) |= 4u;
        v40 = *(a1 + 8);
        v32 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
        if (v40)
        {
          v32 = *v32;
        }

        v33 = (a1 + 280);
        goto LABEL_143;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_182;
        }

        *(a1 + 16) |= 8u;
        v77 = *(a1 + 8);
        v32 = (v77 & 0xFFFFFFFFFFFFFFFCLL);
        if (v77)
        {
          v32 = *v32;
        }

        v33 = (a1 + 288);
        goto LABEL_143;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_182;
        }

        *(a1 + 16) |= 0x10u;
        v84 = *(a1 + 8);
        v32 = (v84 & 0xFFFFFFFFFFFFFFFCLL);
        if (v84)
        {
          v32 = *v32;
        }

        v33 = (a1 + 296);
        goto LABEL_143;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_182;
        }

        *(a1 + 16) |= 0x20u;
        v68 = *(a1 + 8);
        v32 = (v68 & 0xFFFFFFFFFFFFFFFCLL);
        if (v68)
        {
          v32 = *v32;
        }

        v33 = (a1 + 304);
        goto LABEL_143;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_182;
        }

        v5 |= 0x400u;
        v99 = (v7 + 1);
        v98 = *v7;
        if ((v98 & 0x8000000000000000) == 0)
        {
          goto LABEL_171;
        }

        v100 = *v99;
        v98 = (v100 << 7) + v98 - 128;
        if (v100 < 0)
        {
          v120 = sub_19587DC(v7, v98);
          *v122 = v120;
          *(a1 + 340) = v121 != 0;
          if (!v120)
          {
            goto LABEL_207;
          }
        }

        else
        {
          v99 = (v7 + 2);
LABEL_171:
          *v122 = v99;
          *(a1 + 340) = v98 != 0;
        }

        break;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_182;
        }

        v5 |= 0x800u;
        v50 = (v7 + 1);
        v49 = *v7;
        if ((v49 & 0x8000000000000000) == 0)
        {
          goto LABEL_77;
        }

        v51 = *v50;
        v49 = (v51 << 7) + v49 - 128;
        if (v51 < 0)
        {
          v110 = sub_19587DC(v7, v49);
          *v122 = v110;
          *(a1 + 341) = v111 != 0;
          if (!v110)
          {
            goto LABEL_207;
          }
        }

        else
        {
          v50 = (v7 + 2);
LABEL_77:
          *v122 = v50;
          *(a1 + 341) = v49 != 0;
        }

        break;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_182;
        }

        v92 = v7 - 1;
        while (1)
        {
          v93 = v92 + 1;
          *v122 = v92 + 1;
          v94 = *(a1 + 40);
          if (v94 && (v95 = *(a1 + 32), v95 < *v94))
          {
            *(a1 + 32) = v95 + 1;
            v96 = *&v94[2 * v95 + 2];
          }

          else
          {
            v97 = sub_1551110(*(a1 + 24));
            v96 = sub_19593CC(a1 + 24, v97);
            v93 = *v122;
          }

          v92 = sub_2217458(a3, v96, v93);
          *v122 = v92;
          if (!v92)
          {
            goto LABEL_207;
          }

          if (*a3 <= v92 || *v92 != 90)
          {
            goto LABEL_145;
          }
        }

      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_182;
        }

        *(a1 + 16) |= 0x40u;
        v31 = *(a1 + 8);
        v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v32 = *v32;
        }

        v33 = (a1 + 312);
LABEL_143:
        v85 = sub_194DB04(v33, v32);
        v24 = sub_1958890(v85, *v122, a3);
        goto LABEL_144;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_182;
        }

        v41 = (v7 - 1);
        while (1)
        {
          v42 = (v41 + 1);
          *v122 = v41 + 1;
          v43 = *(a1 + 64);
          if (v43 && (v44 = *(a1 + 56), v44 < *v43))
          {
            *(a1 + 56) = v44 + 1;
            v45 = *&v43[2 * v44 + 2];
          }

          else
          {
            v46 = *(a1 + 48);
            if (!v46)
            {
              operator new();
            }

            *v48 = v47;
            v48[1] = sub_195A650;
            *v47 = 0;
            v47[1] = 0;
            v47[2] = 0;
            v45 = sub_19593CC(a1 + 48, v47);
            v42 = *v122;
          }

          v41 = sub_1958890(v45, v42, a3);
          *v122 = v41;
          if (!v41)
          {
            goto LABEL_207;
          }

          if (*a3 <= v41 || *v41 != 106)
          {
            goto LABEL_145;
          }
        }

      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_182;
        }

        v78 = v7 - 1;
        while (1)
        {
          v79 = v78 + 1;
          *v122 = v78 + 1;
          v80 = *(a1 + 88);
          if (v80 && (v81 = *(a1 + 80), v81 < *v80))
          {
            *(a1 + 80) = v81 + 1;
            v82 = *&v80[2 * v81 + 2];
          }

          else
          {
            v83 = sub_1551248(*(a1 + 72));
            v82 = sub_19593CC(a1 + 72, v83);
            v79 = *v122;
          }

          v78 = sub_2219FA8(a3, v82, v79);
          *v122 = v78;
          if (!v78)
          {
            goto LABEL_207;
          }

          if (*a3 <= v78 || *v78 != 114)
          {
            goto LABEL_145;
          }
        }

      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_182;
        }

        v25 = v7 - 1;
        while (1)
        {
          v26 = v25 + 1;
          *v122 = v25 + 1;
          v27 = *(a1 + 112);
          if (v27 && (v28 = *(a1 + 104), v28 < *v27))
          {
            *(a1 + 104) = v28 + 1;
            v29 = *&v27[2 * v28 + 2];
          }

          else
          {
            v30 = sub_16F5FB4(*(a1 + 96));
            v29 = sub_19593CC(a1 + 96, v30);
            v26 = *v122;
          }

          v25 = sub_221A278(a3, v29, v26);
          *v122 = v25;
          if (!v25)
          {
            goto LABEL_207;
          }

          if (*a3 <= v25 || *v25 != 122)
          {
            goto LABEL_145;
          }
        }

      case 0x10u:
        if (v8 != 130)
        {
          goto LABEL_182;
        }

        v61 = (v7 - 2);
        while (1)
        {
          v62 = (v61 + 2);
          *v122 = v61 + 2;
          v63 = *(a1 + 136);
          if (v63 && (v64 = *(a1 + 128), v64 < *v63))
          {
            *(a1 + 128) = v64 + 1;
            v65 = *&v63[2 * v64 + 2];
          }

          else
          {
            v66 = sub_155136C(*(a1 + 120));
            v65 = sub_19593CC(a1 + 120, v66);
            v62 = *v122;
          }

          v61 = sub_21FC4F0(a3, v65, v62);
          *v122 = v61;
          if (!v61)
          {
            goto LABEL_207;
          }

          if (*a3 <= v61 || *v61 != 386)
          {
            goto LABEL_145;
          }
        }

      case 0x11u:
        if (v8 != 138)
        {
          goto LABEL_182;
        }

        *(a1 + 16) |= 0x80u;
        v21 = *(a1 + 320);
        if (!v21)
        {
          v22 = *(a1 + 8);
          v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v23 = *v23;
          }

          v21 = sub_16F5828(v23);
          *(a1 + 320) = v21;
          v7 = *v122;
        }

        v24 = sub_21F4D60(a3, v21, v7);
        goto LABEL_144;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_182;
        }

        v5 |= 0x2000u;
        v71 = (v7 + 1);
        v72 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_119;
        }

        v73 = *v71;
        v72 = v72 + (v73 << 7) - 128;
        if (v73 < 0)
        {
          v116 = sub_1958770(v7, v72);
          *v122 = v116;
          *(a1 + 344) = v117;
          if (!v116)
          {
            goto LABEL_207;
          }
        }

        else
        {
          v71 = (v7 + 2);
LABEL_119:
          *v122 = v71;
          *(a1 + 344) = v72;
        }

        break;
      case 0x13u:
        if (v8 != 154)
        {
          goto LABEL_182;
        }

        v86 = v7 - 2;
        while (1)
        {
          v87 = v86 + 2;
          *v122 = v86 + 2;
          v88 = *(a1 + 160);
          if (v88 && (v89 = *(a1 + 152), v89 < *v88))
          {
            *(a1 + 152) = v89 + 1;
            v90 = *&v88[2 * v89 + 2];
          }

          else
          {
            v91 = sub_155149C(*(a1 + 144));
            v90 = sub_19593CC(a1 + 144, v91);
            v87 = *v122;
          }

          v86 = sub_221A308(a3, v90, v87);
          *v122 = v86;
          if (!v86)
          {
            goto LABEL_207;
          }

          if (*a3 <= v86 || *v86 != 410)
          {
            goto LABEL_145;
          }
        }

      case 0x14u:
        if (v8 != 162)
        {
          goto LABEL_182;
        }

        v101 = v7 - 2;
        while (1)
        {
          v102 = v101 + 2;
          *v122 = v101 + 2;
          v103 = *(a1 + 184);
          if (v103 && (v104 = *(a1 + 176), v104 < *v103))
          {
            *(a1 + 176) = v104 + 1;
            v105 = *&v103[2 * v104 + 2];
          }

          else
          {
            v106 = sub_1551544(*(a1 + 168));
            v105 = sub_19593CC(a1 + 168, v106);
            v102 = *v122;
          }

          v101 = sub_221A398(a3, v105, v102);
          *v122 = v101;
          if (!v101)
          {
            goto LABEL_207;
          }

          if (*a3 <= v101 || *v101 != 418)
          {
            goto LABEL_145;
          }
        }

      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_182;
        }

        v5 |= 0x1000u;
        v75 = (v7 + 1);
        v74 = *v7;
        if ((v74 & 0x8000000000000000) == 0)
        {
          goto LABEL_124;
        }

        v76 = *v75;
        v74 = (v76 << 7) + v74 - 128;
        if (v76 < 0)
        {
          v118 = sub_19587DC(v7, v74);
          *v122 = v118;
          *(a1 + 342) = v119 != 0;
          if (!v118)
          {
            goto LABEL_207;
          }
        }

        else
        {
          v75 = (v7 + 2);
LABEL_124:
          *v122 = v75;
          *(a1 + 342) = v74 != 0;
        }

        break;
      default:
        goto LABEL_182;
    }

LABEL_145:
    if (sub_195ADC0(a3, v122, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 100)
  {
    if (v8 == 34)
    {
      v34 = v7 - 2;
      while (1)
      {
        v35 = v34 + 2;
        *v122 = v34 + 2;
        v36 = *(a1 + 208);
        if (v36 && (v37 = *(a1 + 200), v37 < *v36))
        {
          *(a1 + 200) = v37 + 1;
          v38 = *&v36[2 * v37 + 2];
        }

        else
        {
          v39 = sub_15515EC(*(a1 + 192));
          v38 = sub_19593CC(a1 + 192, v39);
          v35 = *v122;
        }

        v34 = sub_221A428(a3, v38, v35);
        *v122 = v34;
        if (!v34)
        {
          goto LABEL_207;
        }

        if (*a3 <= v34 || *v34 != 1698)
        {
          goto LABEL_145;
        }
      }
    }
  }

  else if (v11 == 101)
  {
    if (v8 == 42)
    {
      v52 = (v7 - 2);
      while (1)
      {
        v53 = (v52 + 2);
        *v122 = v52 + 2;
        v54 = *(a1 + 232);
        if (v54 && (v55 = *(a1 + 224), v55 < *v54))
        {
          *(a1 + 224) = v55 + 1;
          v56 = *&v54[2 * v55 + 2];
        }

        else
        {
          v57 = *(a1 + 216);
          if (!v57)
          {
            operator new();
          }

          *v59 = v58;
          v59[1] = sub_195A650;
          *v58 = 0;
          v58[1] = 0;
          v58[2] = 0;
          v56 = sub_19593CC(a1 + 216, v58);
          v53 = *v122;
        }

        v52 = sub_1958890(v56, v53, a3);
        *v122 = v52;
        if (!v52)
        {
          goto LABEL_207;
        }

        if (*a3 <= v52 || *v52 != 1706)
        {
          goto LABEL_145;
        }
      }
    }
  }

  else if (v11 == 102 && v8 == 50)
  {
    v15 = (v7 - 2);
    while (1)
    {
      v16 = (v15 + 2);
      *v122 = v15 + 2;
      v17 = *(a1 + 256);
      if (v17 && (v18 = *(a1 + 248), v18 < *v17))
      {
        *(a1 + 248) = v18 + 1;
        v19 = *&v17[2 * v18 + 2];
      }

      else
      {
        v20 = sub_1551674(*(a1 + 240));
        v19 = sub_19593CC(a1 + 240, v20);
        v16 = *v122;
      }

      v15 = sub_221A4B8(a3, v19, v16);
      *v122 = v15;
      if (!v15)
      {
        goto LABEL_207;
      }

      if (*a3 <= v15 || *v15 != 1714)
      {
        goto LABEL_145;
      }
    }
  }

LABEL_182:
  if (v8)
  {
    v107 = (v8 & 7) == 4;
  }

  else
  {
    v107 = 1;
  }

  if (!v107)
  {
    v108 = *(a1 + 8);
    if (v108)
    {
      v109 = (v108 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v109 = sub_11F1920((a1 + 8));
      v7 = *v122;
    }

    v24 = sub_1952690(v8, v109, v7, a3);
LABEL_144:
    *v122 = v24;
    if (!v24)
    {
      goto LABEL_207;
    }

    goto LABEL_145;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_207:
  *v122 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v122;
}

char *sub_1535400(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 328);
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

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 336);
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
    v11 = sub_128AEEC(a3, 3, *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL, v11);
    if ((v5 & 2) == 0)
    {
LABEL_21:
      if ((v5 & 4) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_21;
  }

  v11 = sub_128AEEC(a3, 4, *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL, v11);
  if ((v5 & 4) == 0)
  {
LABEL_22:
    if ((v5 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_31;
  }

LABEL_30:
  v11 = sub_128AEEC(a3, 5, *(a1 + 280) & 0xFFFFFFFFFFFFFFFELL, v11);
  if ((v5 & 8) == 0)
  {
LABEL_23:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_32;
  }

LABEL_31:
  v11 = sub_128AEEC(a3, 6, *(a1 + 288) & 0xFFFFFFFFFFFFFFFELL, v11);
  if ((v5 & 0x10) == 0)
  {
LABEL_24:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

LABEL_32:
  v11 = sub_128AEEC(a3, 7, *(a1 + 296) & 0xFFFFFFFFFFFFFFFELL, v11);
  if ((v5 & 0x20) == 0)
  {
LABEL_25:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

LABEL_33:
  v11 = sub_128AEEC(a3, 8, *(a1 + 304) & 0xFFFFFFFFFFFFFFFELL, v11);
  if ((v5 & 0x400) == 0)
  {
LABEL_26:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

LABEL_34:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v15 = *(a1 + 340);
  *v11 = 72;
  v11[1] = v15;
  v11 += 2;
  if ((v5 & 0x800) != 0)
  {
LABEL_37:
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 341);
    *v11 = 80;
    v11[1] = v16;
    v11 += 2;
  }

LABEL_40:
  v17 = *(a1 + 32);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v19 = *(*(a1 + 40) + 8 * i + 8);
      *v11 = 90;
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

      v11 = sub_152FD68(v19, v21, a3);
    }
  }

  if ((v5 & 0x40) != 0)
  {
    v11 = sub_128AEEC(a3, 12, *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL, v11);
  }

  v22 = *(a1 + 56);
  if (v22 >= 1)
  {
    v23 = 8;
    do
    {
      v24 = *(*(a1 + 64) + v23);
      v25 = *(v24 + 23);
      if (v25 < 0 && (v25 = v24[1], v25 > 127) || (*a3 - v11 + 14) < v25)
      {
        v11 = sub_1957480(a3, 13, v24, v11);
      }

      else
      {
        *v11 = 106;
        v11[1] = v25;
        if (*(v24 + 23) < 0)
        {
          v24 = *v24;
        }

        v26 = v11 + 2;
        memcpy(v11 + 2, v24, v25);
        v11 = &v26[v25];
      }

      v23 += 8;
      --v22;
    }

    while (v22);
  }

  v27 = *(a1 + 80);
  if (v27)
  {
    for (j = 0; j != v27; ++j)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v29 = *(*(a1 + 88) + 8 * j + 8);
      *v11 = 114;
      v30 = *(v29 + 20);
      v11[1] = v30;
      if (v30 > 0x7F)
      {
        v31 = sub_19575D0(v30, v11 + 1);
      }

      else
      {
        v31 = v11 + 2;
      }

      v11 = sub_1530ADC(v29, v31, a3);
    }
  }

  v32 = *(a1 + 104);
  if (v32)
  {
    for (k = 0; k != v32; ++k)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v34 = *(*(a1 + 112) + 8 * k + 8);
      *v11 = 122;
      v35 = *(v34 + 20);
      v11[1] = v35;
      if (v35 > 0x7F)
      {
        v36 = sub_19575D0(v35, v11 + 1);
      }

      else
      {
        v36 = v11 + 2;
      }

      v11 = sub_16EE820(v34, v36, a3);
    }
  }

  v37 = *(a1 + 128);
  if (v37)
  {
    for (m = 0; m != v37; ++m)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v39 = *(*(a1 + 136) + 8 * m + 8);
      *v11 = 386;
      v40 = *(v39 + 56);
      v11[2] = v40;
      if (v40 > 0x7F)
      {
        v41 = sub_19575D0(v40, v11 + 2);
      }

      else
      {
        v41 = v11 + 3;
      }

      v11 = sub_15317E4(v39, v41, a3);
    }
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v42 = *(a1 + 320);
    *v11 = 394;
    v43 = *(v42 + 44);
    v11[2] = v43;
    if (v43 > 0x7F)
    {
      v44 = sub_19575D0(v43, v11 + 2);
    }

    else
    {
      v44 = v11 + 3;
    }

    v11 = sub_16E5070(v42, v44, a3);
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v46 = *(a1 + 344);
    *v11 = 400;
    v11[2] = v46;
    if (v46 > 0x7F)
    {
      v11[2] = v46 | 0x80;
      v47 = v46 >> 7;
      v11[3] = v46 >> 7;
      v45 = v11 + 4;
      if (v46 >= 0x4000)
      {
        LOBYTE(v48) = v11[3];
        do
        {
          *(v45 - 1) = v48 | 0x80;
          v48 = v47 >> 7;
          *v45++ = v47 >> 7;
          v49 = v47 >> 14;
          v47 >>= 7;
        }

        while (v49);
      }
    }

    else
    {
      v45 = v11 + 3;
    }
  }

  else
  {
    v45 = v11;
  }

  v50 = *(a1 + 152);
  if (v50)
  {
    for (n = 0; n != v50; ++n)
    {
      if (*a3 <= v45)
      {
        v45 = sub_225EB68(a3, v45);
      }

      v52 = *(*(a1 + 160) + 8 * n + 8);
      *v45 = 410;
      v53 = *(v52 + 20);
      v45[2] = v53;
      if (v53 > 0x7F)
      {
        v54 = sub_19575D0(v53, v45 + 2);
      }

      else
      {
        v54 = v45 + 3;
      }

      v45 = sub_1532A6C(v52, v54, a3);
    }
  }

  v55 = *(a1 + 176);
  if (v55)
  {
    for (ii = 0; ii != v55; ++ii)
    {
      if (*a3 <= v45)
      {
        v45 = sub_225EB68(a3, v45);
      }

      v57 = *(*(a1 + 184) + 8 * ii + 8);
      *v45 = 418;
      v58 = *(v57 + 20);
      v45[2] = v58;
      if (v58 > 0x7F)
      {
        v59 = sub_19575D0(v58, v45 + 2);
      }

      else
      {
        v59 = v45 + 3;
      }

      v45 = sub_1533424(v57, v59, a3);
    }
  }

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= v45)
    {
      v45 = sub_225EB68(a3, v45);
    }

    v60 = *(a1 + 342);
    *v45 = 424;
    v45[2] = v60;
    v45 += 3;
  }

  v61 = *(a1 + 200);
  if (v61)
  {
    for (jj = 0; jj != v61; ++jj)
    {
      if (*a3 <= v45)
      {
        v45 = sub_225EB68(a3, v45);
      }

      v63 = *(*(a1 + 208) + 8 * jj + 8);
      *v45 = 1698;
      v64 = *(v63 + 20);
      v45[2] = v64;
      if (v64 > 0x7F)
      {
        v65 = sub_19575D0(v64, v45 + 2);
      }

      else
      {
        v65 = v45 + 3;
      }

      v45 = sub_1533C68(v63, v65, a3);
    }
  }

  v66 = *(a1 + 224);
  if (v66 >= 1)
  {
    v67 = 8;
    do
    {
      v68 = *(*(a1 + 232) + v67);
      v69 = *(v68 + 23);
      if (v69 < 0 && (v69 = v68[1], v69 > 127) || (*a3 - v45 + 13) < v69)
      {
        v45 = sub_1957480(a3, 101, v68, v45);
      }

      else
      {
        *v45 = 1706;
        v45[2] = v69;
        if (*(v68 + 23) < 0)
        {
          v68 = *v68;
        }

        v70 = v45 + 3;
        memcpy(v70, v68, v69);
        v45 = &v70[v69];
      }

      v67 += 8;
      --v66;
    }

    while (v66);
  }

  v71 = *(a1 + 248);
  if (v71)
  {
    for (kk = 0; kk != v71; ++kk)
    {
      if (*a3 <= v45)
      {
        v45 = sub_225EB68(a3, v45);
      }

      v73 = *(*(a1 + 256) + 8 * kk + 8);
      *v45 = 1714;
      v74 = *(v73 + 20);
      v45[2] = v74;
      if (v74 > 0x7F)
      {
        v75 = sub_19575D0(v74, v45 + 2);
      }

      else
      {
        v75 = v45 + 3;
      }

      v45 = sub_1534108(v73, v75, a3);
    }
  }

  v76 = *(a1 + 8);
  if ((v76 & 1) == 0)
  {
    return v45;
  }

  v78 = v76 & 0xFFFFFFFFFFFFFFFCLL;
  v79 = *(v78 + 31);
  if (v79 < 0)
  {
    v80 = *(v78 + 8);
    v79 = *(v78 + 16);
  }

  else
  {
    v80 = (v78 + 8);
  }

  if ((*a3 - v45) >= v79)
  {
    v81 = v79;
    memcpy(v45, v80, v79);
    v45 += v81;
    return v45;
  }

  return sub_1957130(a3, v80, v79, v45);
}

uint64_t sub_1535D8C(uint64_t a1)
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
      v7 = sub_153007C(v6);
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
  if (v8 >= 1)
  {
    v10 = (*(a1 + 64) + 8);
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

  v14 = *(a1 + 80);
  v15 = v9 + v14;
  v16 = *(a1 + 88);
  if (v16)
  {
    v17 = (v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  if (v14)
  {
    v18 = 8 * v14;
    do
    {
      v19 = *v17++;
      v20 = sub_1530CC0(v19);
      v15 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      v18 -= 8;
    }

    while (v18);
  }

  v21 = *(a1 + 104);
  v22 = v15 + v21;
  v23 = *(a1 + 112);
  if (v23)
  {
    v24 = (v23 + 8);
  }

  else
  {
    v24 = 0;
  }

  if (v21)
  {
    v25 = 8 * v21;
    do
    {
      v26 = *v24++;
      v27 = sub_16EE908(v26);
      v22 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6);
      v25 -= 8;
    }

    while (v25);
  }

  v28 = *(a1 + 128);
  v29 = v22 + 2 * v28;
  v30 = *(a1 + 136);
  if (v30)
  {
    v31 = (v30 + 8);
  }

  else
  {
    v31 = 0;
  }

  if (v28)
  {
    v32 = 8 * v28;
    do
    {
      v33 = *v31++;
      v34 = sub_15319C4(v33);
      v29 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6);
      v32 -= 8;
    }

    while (v32);
  }

  v35 = *(a1 + 152);
  v36 = v29 + 2 * v35;
  v37 = *(a1 + 160);
  if (v37)
  {
    v38 = (v37 + 8);
  }

  else
  {
    v38 = 0;
  }

  if (v35)
  {
    v39 = 8 * v35;
    do
    {
      v40 = *v38++;
      v41 = sub_1532D64(v40);
      v36 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6);
      v39 -= 8;
    }

    while (v39);
  }

  v42 = *(a1 + 176);
  v43 = v36 + 2 * v42;
  v44 = *(a1 + 184);
  if (v44)
  {
    v45 = (v44 + 8);
  }

  else
  {
    v45 = 0;
  }

  if (v42)
  {
    v46 = 8 * v42;
    do
    {
      v47 = *v45++;
      v48 = sub_15336A0(v47);
      v43 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6);
      v46 -= 8;
    }

    while (v46);
  }

  v49 = *(a1 + 200);
  v50 = v43 + 2 * v49;
  v51 = *(a1 + 208);
  if (v51)
  {
    v52 = (v51 + 8);
  }

  else
  {
    v52 = 0;
  }

  if (v49)
  {
    v53 = 8 * v49;
    do
    {
      v54 = *v52++;
      v55 = sub_1533D7C(v54);
      v50 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6);
      v53 -= 8;
    }

    while (v53);
  }

  v56 = *(a1 + 224);
  v57 = v50 + 2 * v56;
  if (v56 >= 1)
  {
    v58 = (*(a1 + 232) + 8);
    do
    {
      v59 = *v58++;
      v60 = *(v59 + 23);
      v61 = *(v59 + 8);
      if ((v60 & 0x80u) == 0)
      {
        v61 = v60;
      }

      v57 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6);
      --v56;
    }

    while (v56);
  }

  v62 = *(a1 + 248);
  v63 = v57 + 2 * v62;
  v64 = *(a1 + 256);
  if (v64)
  {
    v65 = v64 + 8;
  }

  else
  {
    v65 = 0;
  }

  if (v62)
  {
    v66 = 8 * v62;
    do
    {
      v67 = 2 * (*(*v65 + 16) & 1);
      v68 = *(*v65 + 8);
      if (v68)
      {
        v69 = v68 & 0xFFFFFFFFFFFFFFFCLL;
        v70 = *((v68 & 0xFFFFFFFFFFFFFFFCLL) + 31);
        if (v70 < 0)
        {
          v70 = *(v69 + 16);
        }

        v67 += v70;
      }

      *(*v65 + 20) = v67;
      v63 += v67 + ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6);
      v65 += 8;
      v66 -= 8;
    }

    while (v66);
  }

  v71 = *(a1 + 16);
  if (!v71)
  {
    goto LABEL_76;
  }

  if (v71)
  {
    v78 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
    v79 = *(v78 + 23);
    v80 = *(v78 + 8);
    if ((v79 & 0x80u) == 0)
    {
      v80 = v79;
    }

    v63 += v80 + ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v71 & 2) == 0)
    {
LABEL_69:
      if ((v71 & 4) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_97;
    }
  }

  else if ((v71 & 2) == 0)
  {
    goto LABEL_69;
  }

  v81 = *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL;
  v82 = *(v81 + 23);
  v83 = *(v81 + 8);
  if ((v82 & 0x80u) == 0)
  {
    v83 = v82;
  }

  v63 += v83 + ((9 * (__clz(v83 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v71 & 4) == 0)
  {
LABEL_70:
    if ((v71 & 8) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_100;
  }

LABEL_97:
  v84 = *(a1 + 280) & 0xFFFFFFFFFFFFFFFELL;
  v85 = *(v84 + 23);
  v86 = *(v84 + 8);
  if ((v85 & 0x80u) == 0)
  {
    v86 = v85;
  }

  v63 += v86 + ((9 * (__clz(v86 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v71 & 8) == 0)
  {
LABEL_71:
    if ((v71 & 0x10) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_103;
  }

LABEL_100:
  v87 = *(a1 + 288) & 0xFFFFFFFFFFFFFFFELL;
  v88 = *(v87 + 23);
  v89 = *(v87 + 8);
  if ((v88 & 0x80u) == 0)
  {
    v89 = v88;
  }

  v63 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v71 & 0x10) == 0)
  {
LABEL_72:
    if ((v71 & 0x20) == 0)
    {
      goto LABEL_73;
    }

LABEL_106:
    v93 = *(a1 + 304) & 0xFFFFFFFFFFFFFFFELL;
    v94 = *(v93 + 23);
    v95 = *(v93 + 8);
    if ((v94 & 0x80u) == 0)
    {
      v95 = v94;
    }

    v63 += v95 + ((9 * (__clz(v95 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v71 & 0x40) == 0)
    {
LABEL_74:
      if ((v71 & 0x80) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_75;
    }

    goto LABEL_109;
  }

LABEL_103:
  v90 = *(a1 + 296) & 0xFFFFFFFFFFFFFFFELL;
  v91 = *(v90 + 23);
  v92 = *(v90 + 8);
  if ((v91 & 0x80u) == 0)
  {
    v92 = v91;
  }

  v63 += v92 + ((9 * (__clz(v92 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v71 & 0x20) != 0)
  {
    goto LABEL_106;
  }

LABEL_73:
  if ((v71 & 0x40) == 0)
  {
    goto LABEL_74;
  }

LABEL_109:
  v96 = *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL;
  v97 = *(v96 + 23);
  v98 = *(v96 + 8);
  if ((v97 & 0x80u) == 0)
  {
    v98 = v97;
  }

  v63 += v98 + ((9 * (__clz(v98 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v71 & 0x80) != 0)
  {
LABEL_75:
    v72 = sub_16E51F0(*(a1 + 320));
    v63 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_76:
  if ((v71 & 0x3F00) != 0)
  {
    if ((v71 & 0x100) != 0)
    {
      v63 += ((9 * (__clz(*(a1 + 328) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v71 & 0x200) != 0)
    {
      v73 = *(a1 + 336);
      v74 = ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v73 >= 0)
      {
        v75 = v74;
      }

      else
      {
        v75 = 11;
      }

      v63 += v75;
    }

    if ((v71 & 0x1000) != 0)
    {
      v63 += ((v71 >> 10) & 2) + ((v71 >> 9) & 2) + 3;
    }

    else
    {
      v63 += ((v71 >> 10) & 2) + ((v71 >> 9) & 2);
    }

    if ((v71 & 0x2000) != 0)
    {
      v63 += ((9 * (__clz(*(a1 + 344) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

  v76 = *(a1 + 8);
  if (v76)
  {
    v99 = v76 & 0xFFFFFFFFFFFFFFFCLL;
    v100 = *((v76 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v100 < 0)
    {
      v100 = *(v99 + 16);
    }

    v63 += v100;
  }

  *(a1 + 20) = v63;
  return v63;
}

void sub_1536428(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_156B558((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_1201B48(a1 + 48, v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_156D568((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 104);
  if (v19)
  {
    v20 = *(a2 + 112);
    v21 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_156D5F4((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
    v22 = *(a1 + 104) + v19;
    *(a1 + 104) = v22;
    v23 = *(a1 + 112);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 128);
  if (v24)
  {
    v25 = *(a2 + 136);
    v26 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_1347FD8((a1 + 120), v26, (v25 + 8), v24, **(a1 + 136) - *(a1 + 128));
    v27 = *(a1 + 128) + v24;
    *(a1 + 128) = v27;
    v28 = *(a1 + 136);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 152);
  if (v29)
  {
    v30 = *(a2 + 160);
    v31 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_156D670((a1 + 144), v31, (v30 + 8), v29, **(a1 + 160) - *(a1 + 152));
    v32 = *(a1 + 152) + v29;
    *(a1 + 152) = v32;
    v33 = *(a1 + 160);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 176);
  if (v34)
  {
    v35 = *(a2 + 184);
    v36 = sub_19592E8(a1 + 168, *(a2 + 176));
    sub_156D6FC((a1 + 168), v36, (v35 + 8), v34, **(a1 + 184) - *(a1 + 176));
    v37 = *(a1 + 176) + v34;
    *(a1 + 176) = v37;
    v38 = *(a1 + 184);
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  v39 = *(a2 + 200);
  if (v39)
  {
    v40 = *(a2 + 208);
    v41 = sub_19592E8(a1 + 192, *(a2 + 200));
    sub_156D788((a1 + 192), v41, (v40 + 8), v39, **(a1 + 208) - *(a1 + 200));
    v42 = *(a1 + 200) + v39;
    *(a1 + 200) = v42;
    v43 = *(a1 + 208);
    if (*v43 < v42)
    {
      *v43 = v42;
    }
  }

  v44 = *(a2 + 224);
  if (v44)
  {
    v45 = *(a2 + 232);
    v46 = sub_19592E8(a1 + 216, *(a2 + 224));
    sub_1201B48(a1 + 216, v46, (v45 + 8), v44, **(a1 + 232) - *(a1 + 224));
    v47 = *(a1 + 224) + v44;
    *(a1 + 224) = v47;
    v48 = *(a1 + 232);
    if (*v48 < v47)
    {
      *v48 = v47;
    }
  }

  v49 = *(a2 + 248);
  if (v49)
  {
    v50 = *(a2 + 256);
    v51 = sub_19592E8(a1 + 240, *(a2 + 248));
    sub_156D804((a1 + 240), v51, (v50 + 8), v49, **(a1 + 256) - *(a1 + 248));
    v52 = *(a1 + 248) + v49;
    *(a1 + 248) = v52;
    v53 = *(a1 + 256);
    if (*v53 < v52)
    {
      *v53 = v52;
    }
  }

  v54 = *(a2 + 16);
  if (!v54)
  {
    goto LABEL_70;
  }

  if (v54)
  {
    v55 = *(a2 + 264);
    *(a1 + 16) |= 1u;
    v56 = *(a1 + 8);
    v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
    if (v56)
    {
      v57 = *v57;
    }

    sub_194EA1C((a1 + 264), (v55 & 0xFFFFFFFFFFFFFFFELL), v57);
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

  v58 = *(a2 + 272);
  *(a1 + 16) |= 2u;
  v59 = *(a1 + 8);
  v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
  if (v59)
  {
    v60 = *v60;
  }

  sub_194EA1C((a1 + 272), (v58 & 0xFFFFFFFFFFFFFFFELL), v60);
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
  v61 = *(a2 + 280);
  *(a1 + 16) |= 4u;
  v62 = *(a1 + 8);
  v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
  if (v62)
  {
    v63 = *v63;
  }

  sub_194EA1C((a1 + 280), (v61 & 0xFFFFFFFFFFFFFFFELL), v63);
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
  v64 = *(a2 + 288);
  *(a1 + 16) |= 8u;
  v65 = *(a1 + 8);
  v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
  if (v65)
  {
    v66 = *v66;
  }

  sub_194EA1C((a1 + 288), (v64 & 0xFFFFFFFFFFFFFFFELL), v66);
  if ((v54 & 0x10) == 0)
  {
LABEL_37:
    if ((v54 & 0x20) == 0)
    {
      goto LABEL_38;
    }

LABEL_56:
    v70 = *(a2 + 304);
    *(a1 + 16) |= 0x20u;
    v71 = *(a1 + 8);
    v72 = (v71 & 0xFFFFFFFFFFFFFFFCLL);
    if (v71)
    {
      v72 = *v72;
    }

    sub_194EA1C((a1 + 304), (v70 & 0xFFFFFFFFFFFFFFFELL), v72);
    if ((v54 & 0x40) == 0)
    {
LABEL_39:
      if ((v54 & 0x80) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_62;
    }

    goto LABEL_59;
  }

LABEL_53:
  v67 = *(a2 + 296);
  *(a1 + 16) |= 0x10u;
  v68 = *(a1 + 8);
  v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL);
  if (v68)
  {
    v69 = *v69;
  }

  sub_194EA1C((a1 + 296), (v67 & 0xFFFFFFFFFFFFFFFELL), v69);
  if ((v54 & 0x20) != 0)
  {
    goto LABEL_56;
  }

LABEL_38:
  if ((v54 & 0x40) == 0)
  {
    goto LABEL_39;
  }

LABEL_59:
  v73 = *(a2 + 312);
  *(a1 + 16) |= 0x40u;
  v74 = *(a1 + 8);
  v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
  if (v74)
  {
    v75 = *v75;
  }

  sub_194EA1C((a1 + 312), (v73 & 0xFFFFFFFFFFFFFFFELL), v75);
  if ((v54 & 0x80) != 0)
  {
LABEL_62:
    *(a1 + 16) |= 0x80u;
    v76 = *(a1 + 320);
    if (!v76)
    {
      v77 = *(a1 + 8);
      v78 = (v77 & 0xFFFFFFFFFFFFFFFCLL);
      if (v77)
      {
        v78 = *v78;
      }

      v76 = sub_16F5828(v78);
      *(a1 + 320) = v76;
    }

    if (*(a2 + 320))
    {
      v79 = *(a2 + 320);
    }

    else
    {
      v79 = &off_277E5E8;
    }

    sub_16E527C(v76, v79);
  }

LABEL_70:
  if ((v54 & 0x3F00) == 0)
  {
    goto LABEL_79;
  }

  if ((v54 & 0x100) != 0)
  {
    *(a1 + 328) = *(a2 + 328);
    if ((v54 & 0x200) == 0)
    {
LABEL_73:
      if ((v54 & 0x400) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_85;
    }
  }

  else if ((v54 & 0x200) == 0)
  {
    goto LABEL_73;
  }

  *(a1 + 336) = *(a2 + 336);
  if ((v54 & 0x400) == 0)
  {
LABEL_74:
    if ((v54 & 0x800) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(a1 + 340) = *(a2 + 340);
  if ((v54 & 0x800) == 0)
  {
LABEL_75:
    if ((v54 & 0x1000) == 0)
    {
      goto LABEL_76;
    }

LABEL_87:
    *(a1 + 342) = *(a2 + 342);
    if ((v54 & 0x2000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

LABEL_86:
  *(a1 + 341) = *(a2 + 341);
  if ((v54 & 0x1000) != 0)
  {
    goto LABEL_87;
  }

LABEL_76:
  if ((v54 & 0x2000) != 0)
  {
LABEL_77:
    *(a1 + 344) = *(a2 + 344);
  }

LABEL_78:
  *(a1 + 16) |= v54;
LABEL_79:
  v80 = *(a2 + 8);
  if (v80)
  {

    sub_1957EF4((a1 + 8), (v80 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1536A78(uint64_t a1)
{
  v2 = *(a1 + 104);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_16EE9E0(*(*(a1 + 112) + 8 * v2));
    v2 = v3;
    if (!v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 152);
  while (v5 >= 1)
  {
    v6 = *(*(a1 + 160) + 8 * v5--);
    if ((~*(v6 + 16) & 5) != 0)
    {
      return 0;
    }
  }

  v7 = *(a1 + 176);
  while (v7 >= 1)
  {
    v8 = *(*(a1 + 184) + 8 * v7--);
    if ((~*(v8 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  v9 = *(a1 + 200);
  while (v9 >= 1)
  {
    v10 = *(*(a1 + 208) + 8 * v9--);
    if ((~*(v10 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 0x80) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 320));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1536B70(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26EC9C0;
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

void sub_1536BEC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1536C1C(void *a1)
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

void sub_1536C90(void *a1)
{
  sub_1536C1C(a1);

  operator delete();
}

uint64_t sub_1536CC8(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
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

char *sub_1536CEC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v35 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v35, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v35 + 1;
    v8 = *v35;
    if (*v35 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v35, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v35 + 2;
      }
    }

    v35 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_33;
      }

      v5 |= 1u;
      v19 = v7 + 1;
      v18 = *v7;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v20 = *v19;
      v18 = (v20 << 7) + v18 - 128;
      if ((v20 & 0x80000000) == 0)
      {
        v19 = v7 + 2;
LABEL_27:
        v35 = v19;
        *(a1 + 24) = v18 != 0;
        goto LABEL_44;
      }

      v31 = sub_19587DC(v7, v18);
      v35 = v31;
      *(a1 + 24) = v32 != 0;
      if (!v31)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_33;
      }

      v5 |= 2u;
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
        v35 = v14;
        *(a1 + 25) = v13 != 0;
        goto LABEL_44;
      }

      v29 = sub_19587DC(v7, v13);
      v35 = v29;
      *(a1 + 25) = v30 != 0;
      if (!v29)
      {
        goto LABEL_57;
      }
    }

LABEL_44:
    if (sub_195ADC0(a3, &v35, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_33;
    }

    v5 |= 4u;
    v22 = v7 + 1;
    v21 = *v7;
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_32;
    }

    v23 = *v22;
    v21 = (v23 << 7) + v21 - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_32:
      v35 = v22;
      *(a1 + 26) = v21 != 0;
      goto LABEL_44;
    }

    v33 = sub_19587DC(v7, v21);
    v35 = v33;
    *(a1 + 26) = v34 != 0;
    if (!v33)
    {
      goto LABEL_57;
    }

    goto LABEL_44;
  }

  if (v11 == 4 && v8 == 32)
  {
    v5 |= 8u;
    LODWORD(v16) = *v7;
    if ((v16 & 0x80000000) != 0)
    {
      v16 = (v7[1] << 7) + v16 - 128;
      if (v7[1] < 0)
      {
        v27 = sub_19587DC(v7, v16);
        v35 = v27;
        *(a1 + 28) = v28;
        if (!v27)
        {
          goto LABEL_57;
        }

        goto LABEL_44;
      }

      v17 = v7 + 2;
    }

    else
    {
      v17 = v7 + 1;
    }

    v35 = v17;
    *(a1 + 28) = v16;
    goto LABEL_44;
  }

LABEL_33:
  if (v8)
  {
    v24 = (v8 & 7) == 4;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    v25 = *(a1 + 8);
    if (v25)
    {
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v26 = sub_11F1920((a1 + 8));
      v7 = v35;
    }

    v35 = sub_1952690(v8, v26, v7, a3);
    if (!v35)
    {
      goto LABEL_57;
    }

    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_57:
  v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v35;
}