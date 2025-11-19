uint64_t sub_1401148(uint64_t a1)
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

  if (a1 != &off_276FA60 && *(a1 + 24))
  {
    sub_1839D0C();
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

void sub_1401200(uint64_t a1)
{
  sub_1401148(a1);

  operator delete();
}

uint64_t sub_1401238(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_1839D48(*(result + 24));
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

char *sub_1401294(uint64_t a1, char *a2, int32x2_t *a3)
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

        v14 = sub_1864918(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_2208718(a3, v14, v6);
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

char *sub_14013D8(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_183A034(v6, v8, a3);
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

uint64_t sub_14014E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_183A234(*(a1 + 24));
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

std::string *sub_1401564(std::string *result, uint64_t a2)
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

      data = sub_1864918(v7);
      v3[1].__r_.__value_.__r.__words[0] = data;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_2786948;
    }

    result = sub_183A338(data, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1401624(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26DFC48;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_1957EF4((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  v5 = *(a2 + 24);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 24) = v5;
  return a1;
}

void sub_14016A8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_14016D8(void *a1)
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

void sub_140174C(void *a1)
{
  sub_14016D8(a1);

  operator delete();
}

uint64_t sub_1401784(uint64_t a1)
{
  if ((*(a1 + 16) & 0x1F) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 48) = 0;
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

char *sub_14017B0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v30 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v30, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v30 + 1;
    v8 = *v30;
    if (*v30 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v30, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v30 + 2;
      }
    }

    v30 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 == 25)
      {
        v18 = *v7;
        v16 = v7 + 8;
        v5 |= 4u;
        *(a1 + 40) = v18;
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_33;
      }

      v5 |= 8u;
      v20 = v7 + 1;
      v19 = *v7;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_29;
      }

      v21 = *v20;
      v19 = (v21 << 7) + v19 - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v20 = v7 + 2;
LABEL_29:
        v30 = v20;
        *(a1 + 48) = v19 != 0;
        goto LABEL_40;
      }

      v26 = sub_19587DC(v7, v19);
      v30 = v26;
      *(a1 + 48) = v27 != 0;
      if (!v26)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_33;
      }

      v5 |= 0x10u;
      v13 = v7 + 1;
      v12 = *v7;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = v7 + 2;
LABEL_15:
        v30 = v13;
        *(a1 + 49) = v12 != 0;
        goto LABEL_40;
      }

      v28 = sub_19587DC(v7, v12);
      v30 = v28;
      *(a1 + 49) = v29 != 0;
      if (!v28)
      {
        goto LABEL_49;
      }
    }

LABEL_40:
    if (sub_195ADC0(a3, &v30, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 == 9)
    {
      v22 = *v7;
      v16 = v7 + 8;
      v5 |= 1u;
      *(a1 + 24) = v22;
      goto LABEL_32;
    }
  }

  else if (v11 == 2 && v8 == 17)
  {
    v17 = *v7;
    v16 = v7 + 8;
    v5 |= 2u;
    *(a1 + 32) = v17;
LABEL_32:
    v30 = v16;
    goto LABEL_40;
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
      v7 = v30;
    }

    v30 = sub_1952690(v8, v25, v7, a3);
    if (!v30)
    {
      goto LABEL_49;
    }

    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_49:
  v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

char *sub_1401A2C(uint64_t a1, unint64_t __dst, _DWORD *a3)
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
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
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

  v8 = *(a1 + 32);
  *v4 = 17;
  *(v4 + 1) = v8;
  v4 += 9;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 40);
  *v4 = 25;
  *(v4 + 1) = v9;
  v4 += 9;
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_16:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 48);
  *v4 = 32;
  v4[1] = v10;
  v4 += 2;
  if ((v6 & 0x10) != 0)
  {
LABEL_19:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 49);
    *v4 = 40;
    v4[1] = v11;
    v4 += 2;
  }

LABEL_22:
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

uint64_t sub_1401C00(uint64_t a1)
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

  if ((v1 & 4) != 0)
  {
    v2 += 9;
  }

  v3 = v2 + ((v1 >> 3) & 2) + ((v1 >> 2) & 2);
  if ((v1 & 0x1F) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
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

    v4 += v8;
  }

  *(a1 + 20) = v4;
  return v4;
}

uint64_t sub_1401C90(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_26DFCC8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = &qword_278E990;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 180) = 0u;
  return a1;
}

void sub_1401D28(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1401D58(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_26DFCC8;
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
  if ((v7 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 64) = 0;
  if ((v7 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 72) = 0;
  if ((v7 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  if ((v7 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 88) = 0;
  if ((v7 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 96) = 0;
  if ((v7 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 104) = 0;
  if ((v7 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 112) = 0;
  if ((v7 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 120) = 0;
  if ((v7 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 128) = 0;
  if ((v7 & 0x800) != 0)
  {
    operator new();
  }

  *(a1 + 136) = 0;
  if ((v7 & 0x1000) != 0)
  {
    operator new();
  }

  *(a1 + 144) = 0;
  if ((v7 & 0x2000) != 0)
  {
    operator new();
  }

  *(a1 + 152) = 0;
  if ((v7 & 0x4000) != 0)
  {
    operator new();
  }

  *(a1 + 160) = 0;
  if ((v7 & 0x8000) != 0)
  {
    operator new();
  }

  *(a1 + 168) = 0;
  v9 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 176) = v9;
  return a1;
}

void *sub_1402298(void *a1)
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

  sub_1402324(a1);
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

void ***sub_1402324(uint64_t a1)
{
  v3 = *(a1 + 48);
  result = (a1 + 48);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276FAB8)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      sub_13FB55C(v4);
      operator delete();
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      sub_13FB55C(v5);
      operator delete();
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      sub_13FC94C(v6);
      operator delete();
    }

    v7 = *(a1 + 80);
    if (v7)
    {
      sub_13FD7A0(v7);
      operator delete();
    }

    v8 = *(a1 + 88);
    if (v8)
    {
      sub_13FE5E0(v8);
      operator delete();
    }

    v9 = *(a1 + 96);
    if (v9)
    {
      sub_13FFD8C(v9);
      operator delete();
    }

    v10 = *(a1 + 104);
    if (v10)
    {
      sub_1400808(v10);
      operator delete();
    }

    v11 = *(a1 + 112);
    if (v11)
    {
      sub_13FF3BC(v11);
      operator delete();
    }

    v12 = *(a1 + 120);
    if (v12)
    {
      sub_1400C64(v12);
      operator delete();
    }

    v13 = *(a1 + 128);
    if (v13)
    {
      sub_1401148(v13);
      operator delete();
    }

    v14 = *(a1 + 136);
    if (v14)
    {
      sub_139532C(v14);
      operator delete();
    }

    v15 = *(a1 + 144);
    if (v15)
    {
      sub_14016D8(v15);
      operator delete();
    }

    v16 = *(a1 + 152);
    if (v16)
    {
      sub_13FABB0(v16);
      operator delete();
    }

    v17 = *(a1 + 160);
    if (v17)
    {
      sub_13FBD24(v17);
      operator delete();
    }

    result = *(a1 + 168);
    if (result)
    {
      sub_13FC324(result);

      operator delete();
    }
  }

  return result;
}

void sub_1402550(void *a1)
{
  sub_1402298(a1);

  operator delete();
}

uint64_t sub_1402588(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    v6 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_41;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_41:
  result = sub_13FB640(*(a1 + 56));
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = sub_13FB640(*(a1 + 64));
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = sub_13FCA5C(*(a1 + 72));
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_45:
    result = sub_13FE6F0(*(a1 + 88));
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_44:
  result = sub_13FD8D0(*(a1 + 80));
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_45;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_46:
  result = sub_13FFED0(*(a1 + 96));
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = sub_14008E0(*(a1 + 104));
  }

LABEL_11:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_34;
  }

  if ((v3 & 0x100) != 0)
  {
    result = sub_13FF4B4(*(a1 + 112));
  }

  if ((v3 & 0x200) != 0)
  {
    v4 = *(a1 + 120);
    v5 = *(v4 + 8);
    result = v4 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v5)
    {
      result = sub_1957EA8(result);
    }
  }

  if ((v3 & 0x400) != 0)
  {
    result = sub_1401238(*(a1 + 128));
    if ((v3 & 0x800) == 0)
    {
LABEL_19:
      if ((v3 & 0x1000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }
  }

  else if ((v3 & 0x800) == 0)
  {
    goto LABEL_19;
  }

  result = sub_1395368(*(a1 + 136));
  if ((v3 & 0x1000) == 0)
  {
LABEL_20:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

LABEL_28:
    v7 = *(a1 + 152);
    v8 = *(v7 + 8);
    result = v7 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v8)
    {
      result = sub_1957EA8(result);
    }

    goto LABEL_30;
  }

LABEL_27:
  result = sub_1401784(*(a1 + 144));
  if ((v3 & 0x2000) != 0)
  {
    goto LABEL_28;
  }

LABEL_30:
  if ((v3 & 0x4000) != 0)
  {
    result = sub_13FBE14(*(a1 + 160));
  }

  if ((v3 & 0x8000) != 0)
  {
    result = sub_13FC414(*(a1 + 168));
  }

LABEL_34:
  if ((v3 & 0x1F0000) != 0)
  {
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
  }

  v10 = *(a1 + 8);
  v9 = a1 + 8;
  *(v9 + 32) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

uint64_t sub_1402734(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v86 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v86, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v86 + 1);
    v8 = **v86;
    if (**v86 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v86, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v86 + 2);
      }
    }

    *v86 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_131;
        }

        *(a1 + 40) |= 2u;
        v11 = *(a1 + 56);
        if (v11)
        {
          goto LABEL_80;
        }

        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_1404AD4(v13);
        *(a1 + 56) = v11;
        goto LABEL_79;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_131;
        }

        *(a1 + 40) |= 4u;
        v11 = *(a1 + 64);
        if (!v11)
        {
          v47 = *(a1 + 8);
          v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
          if (v47)
          {
            v48 = *v48;
          }

          v11 = sub_1404AD4(v48);
          *(a1 + 64) = v11;
LABEL_79:
          v7 = *v86;
        }

LABEL_80:
        v24 = sub_22087A8(a3, v11, v7);
        goto LABEL_141;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_131;
        }

        v36 = (v7 + 1);
        v35 = *v7;
        if ((v35 & 0x8000000000000000) == 0)
        {
          goto LABEL_53;
        }

        v37 = *v36;
        v35 = (v37 << 7) + v35 - 128;
        if (v37 < 0)
        {
          *v86 = sub_19587DC(v7, v35);
          if (!*v86)
          {
            goto LABEL_159;
          }
        }

        else
        {
          v36 = (v7 + 2);
LABEL_53:
          *v86 = v36;
        }

        if (v35 > 9)
        {
          sub_1313740();
        }

        else
        {
          *(a1 + 40) |= 0x10000u;
          *(a1 + 176) = v35;
        }

        goto LABEL_142;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_131;
        }

        *(a1 + 40) |= 8u;
        v41 = *(a1 + 72);
        if (!v41)
        {
          v42 = *(a1 + 8);
          v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
          if (v42)
          {
            v43 = *v43;
          }

          v41 = sub_1404C68(v43);
          *(a1 + 72) = v41;
          v7 = *v86;
        }

        v24 = sub_2208838(a3, v41, v7);
        goto LABEL_141;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_131;
        }

        *(a1 + 40) |= 0x10u;
        v25 = *(a1 + 80);
        if (!v25)
        {
          v26 = *(a1 + 8);
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v27 = *v27;
          }

          v25 = sub_1404D10(v27);
          *(a1 + 80) = v25;
          v7 = *v86;
        }

        v24 = sub_22088C8(a3, v25, v7);
        goto LABEL_141;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_131;
        }

        *(a1 + 40) |= 0x20u;
        v55 = *(a1 + 88);
        if (!v55)
        {
          v56 = *(a1 + 8);
          v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
          if (v56)
          {
            v57 = *v57;
          }

          v55 = sub_1404D6C(v57);
          *(a1 + 88) = v55;
          v7 = *v86;
        }

        v24 = sub_2208958(a3, v55, v7);
        goto LABEL_141;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_131;
        }

        *(a1 + 40) |= 0x40u;
        v61 = *(a1 + 96);
        if (!v61)
        {
          v62 = *(a1 + 8);
          v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
          if (v62)
          {
            v63 = *v63;
          }

          v61 = sub_1404E24(v63);
          *(a1 + 96) = v61;
          v7 = *v86;
        }

        v24 = sub_22089E8(a3, v61, v7);
        goto LABEL_141;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_131;
        }

        *(a1 + 40) |= 0x80u;
        v44 = *(a1 + 104);
        if (!v44)
        {
          v45 = *(a1 + 8);
          v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
          if (v45)
          {
            v46 = *v46;
          }

          v44 = sub_1404EAC(v46);
          *(a1 + 104) = v44;
          v7 = *v86;
        }

        v24 = sub_2208A78(a3, v44, v7);
        goto LABEL_141;
      case 9u:
        if (v8 != 74)
        {
          goto LABEL_131;
        }

        *(a1 + 40) |= 0x100u;
        v70 = *(a1 + 112);
        if (!v70)
        {
          v71 = *(a1 + 8);
          v72 = (v71 & 0xFFFFFFFFFFFFFFFCLL);
          if (v71)
          {
            v72 = *v72;
          }

          v70 = sub_1404DC8(v72);
          *(a1 + 112) = v70;
          v7 = *v86;
        }

        v24 = sub_2208B08(a3, v70, v7);
        goto LABEL_141;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_131;
        }

        *(a1 + 40) |= 0x200u;
        v32 = *(a1 + 120);
        if (!v32)
        {
          v33 = *(a1 + 8);
          v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
          if (v33)
          {
            v34 = *v34;
          }

          v32 = sub_1404F30(v34);
          *(a1 + 120) = v32;
          v7 = *v86;
        }

        v24 = sub_2208B98(a3, v32, v7);
        goto LABEL_141;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_131;
        }

        *(a1 + 40) |= 0x400u;
        v67 = *(a1 + 128);
        if (!v67)
        {
          v68 = *(a1 + 8);
          v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL);
          if (v68)
          {
            v69 = *v69;
          }

          v67 = sub_1404FAC(v69);
          *(a1 + 128) = v67;
          v7 = *v86;
        }

        v24 = sub_2208C28(a3, v67, v7);
        goto LABEL_141;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_131;
        }

        *(a1 + 40) |= 0x800u;
        v21 = *(a1 + 136);
        if (!v21)
        {
          v22 = *(a1 + 8);
          v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v23 = *v23;
          }

          v21 = sub_13AE3BC(v23);
          *(a1 + 136) = v21;
          v7 = *v86;
        }

        v24 = sub_2208CB8(a3, v21, v7);
        goto LABEL_141;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_131;
        }

        *(a1 + 40) |= 0x1000u;
        v28 = *(a1 + 144);
        if (!v28)
        {
          v29 = *(a1 + 8);
          v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v30 = *v30;
          }

          sub_1405024(v30);
          v28 = v31;
          *(a1 + 144) = v31;
          v7 = *v86;
        }

        v24 = sub_2208D48(a3, v28, v7);
        goto LABEL_141;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_131;
        }

        v5 |= 0x20000u;
        v59 = (v7 + 1);
        LODWORD(v58) = *v7;
        if ((v58 & 0x80) == 0)
        {
          goto LABEL_100;
        }

        v60 = *v59;
        v58 = v58 + (v60 << 7) - 128;
        if (v60 < 0)
        {
          v84 = sub_19587DC(v7, v58);
          *v86 = v84;
          *(a1 + 180) = v85;
          if (!v84)
          {
            goto LABEL_159;
          }
        }

        else
        {
          v59 = (v7 + 2);
LABEL_100:
          *v86 = v59;
          *(a1 + 180) = v58;
        }

        goto LABEL_142;
      case 0xFu:
        if (v8 != 120)
        {
          goto LABEL_131;
        }

        v17 = (v7 + 1);
        v18 = *v7;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_22;
        }

        v19 = *v17;
        v20 = (v19 << 7) + v18;
        LODWORD(v18) = v20 - 128;
        if (v19 < 0)
        {
          *v86 = sub_19587DC(v7, (v20 - 128));
          if (!*v86)
          {
            goto LABEL_159;
          }

          LODWORD(v18) = v81;
        }

        else
        {
          v17 = (v7 + 2);
LABEL_22:
          *v86 = v17;
        }

        if (sub_18CD77C(v18))
        {
          *(a1 + 40) |= 0x40000u;
          *(a1 + 184) = v18;
        }

        else
        {
          sub_12E8538();
        }

        goto LABEL_142;
      case 0x10u:
        if (v8 != 130)
        {
          goto LABEL_131;
        }

        *(a1 + 40) |= 0x2000u;
        v38 = *(a1 + 152);
        if (!v38)
        {
          v39 = *(a1 + 8);
          v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
          if (v39)
          {
            v40 = *v40;
          }

          v38 = sub_14049E0(v40);
          *(a1 + 152) = v38;
          v7 = *v86;
        }

        v24 = sub_2208DD8(a3, v38, v7);
        goto LABEL_141;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_131;
        }

        v5 |= 0x80000u;
        v15 = (v7 + 1);
        v14 = *v7;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if (v16 < 0)
        {
          v79 = sub_19587DC(v7, v14);
          *v86 = v79;
          *(a1 + 188) = v80 != 0;
          if (!v79)
          {
            goto LABEL_159;
          }
        }

        else
        {
          v15 = (v7 + 2);
LABEL_17:
          *v86 = v15;
          *(a1 + 188) = v14 != 0;
        }

        goto LABEL_142;
      case 0x12u:
        if (v8 != 146)
        {
          goto LABEL_131;
        }

        *(a1 + 40) |= 1u;
        v49 = *(a1 + 8);
        v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
        if (v49)
        {
          v50 = *v50;
        }

        v51 = sub_194DB04((a1 + 48), v50);
        v24 = sub_1958890(v51, *v86, a3);
        goto LABEL_141;
      case 0x13u:
        if (v8 != 154)
        {
          goto LABEL_131;
        }

        *(a1 + 40) |= 0x4000u;
        v64 = *(a1 + 160);
        if (!v64)
        {
          v65 = *(a1 + 8);
          v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
          if (v65)
          {
            v66 = *v66;
          }

          v64 = sub_1404B78(v66);
          *(a1 + 160) = v64;
          v7 = *v86;
        }

        v24 = sub_2208E68(a3, v64, v7);
        goto LABEL_141;
      case 0x14u:
        if (v8 != 162)
        {
          goto LABEL_131;
        }

        *(a1 + 40) |= 0x8000u;
        v73 = *(a1 + 168);
        if (!v73)
        {
          v74 = *(a1 + 8);
          v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
          if (v74)
          {
            v75 = *v75;
          }

          v73 = sub_1404BF0(v75);
          *(a1 + 168) = v73;
          v7 = *v86;
        }

        v24 = sub_2208EF8(a3, v73, v7);
        goto LABEL_141;
      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_131;
        }

        v5 |= 0x100000u;
        v52 = (v7 + 1);
        v53 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_89;
        }

        v54 = *v52;
        v53 = v53 + (v54 << 7) - 128;
        if (v54 < 0)
        {
          v82 = sub_1958770(v7, v53);
          *v86 = v82;
          *(a1 + 192) = v83;
          if (!v82)
          {
            goto LABEL_159;
          }
        }

        else
        {
          v52 = (v7 + 2);
LABEL_89:
          *v86 = v52;
          *(a1 + 192) = v53;
        }

        goto LABEL_142;
      default:
LABEL_131:
        if (v8)
        {
          v76 = (v8 & 7) == 4;
        }

        else
        {
          v76 = 1;
        }

        if (!v76)
        {
          if (v8 - 800 < 0x320 || v8 - 80000 <= 0x31F)
          {
            v24 = sub_19525AC((a1 + 16), v8, v7, &off_276FAB8, (a1 + 8), a3);
          }

          else
          {
            v77 = *(a1 + 8);
            if (v77)
            {
              v78 = (v77 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v78 = sub_11F1920((a1 + 8));
              v7 = *v86;
            }

            v24 = sub_1952690(v8, v78, v7, a3);
          }

LABEL_141:
          *v86 = v24;
          if (!v24)
          {
            goto LABEL_159;
          }

LABEL_142:
          if (sub_195ADC0(a3, v86, a3[11].i32[1]))
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
LABEL_159:
          *v86 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return *v86;
    }
  }
}

char *sub_1403020(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if ((v6 & 2) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 64);
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

    v4 = sub_13FB8C8(v11, v13, a3);
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  if (*a3 <= a2)
  {
    v4 = sub_225EB68(a3, a2);
  }

  v8 = *(a1 + 56);
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

  v4 = sub_13FB8C8(v8, v10, a3);
  if ((v6 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v6 & 0x10000) == 0)
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

  v14 = *(a1 + 176);
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
  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v18 = *(a1 + 72);
    *v7 = 34;
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

    v7 = sub_13FCEF4(v18, v20, a3);
    if ((v6 & 0x10) == 0)
    {
LABEL_26:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_48;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_26;
  }

  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v21 = *(a1 + 80);
  *v7 = 42;
  v22 = *(v21 + 44);
  v7[1] = v22;
  if (v22 > 0x7F)
  {
    v23 = sub_19575D0(v22, v7 + 1);
  }

  else
  {
    v23 = v7 + 2;
  }

  v7 = sub_13FDCD8(v21, v23, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_27:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_54;
  }

LABEL_48:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v24 = *(a1 + 88);
  *v7 = 50;
  v25 = *(v24 + 44);
  v7[1] = v25;
  if (v25 > 0x7F)
  {
    v26 = sub_19575D0(v25, v7 + 1);
  }

  else
  {
    v26 = v7 + 2;
  }

  v7 = sub_13FEB58(v24, v26, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_28:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_54:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v27 = *(a1 + 96);
  *v7 = 58;
  v28 = *(v27 + 20);
  v7[1] = v28;
  if (v28 > 0x7F)
  {
    v29 = sub_19575D0(v28, v7 + 1);
  }

  else
  {
    v29 = v7 + 2;
  }

  v7 = sub_14001E0(v27, v29, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_29:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_66;
  }

LABEL_60:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v30 = *(a1 + 104);
  *v7 = 66;
  v31 = *(v30 + 20);
  v7[1] = v31;
  if (v31 > 0x7F)
  {
    v32 = sub_19575D0(v31, v7 + 1);
  }

  else
  {
    v32 = v7 + 2;
  }

  v7 = sub_1400A5C(v30, v32, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_30:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_72;
  }

LABEL_66:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v33 = *(a1 + 112);
  *v7 = 74;
  v34 = *(v33 + 44);
  v7[1] = v34;
  if (v34 > 0x7F)
  {
    v35 = sub_19575D0(v34, v7 + 1);
  }

  else
  {
    v35 = v7 + 2;
  }

  v7 = sub_13FF7C4(v33, v35, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_31:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_78;
  }

LABEL_72:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v36 = *(a1 + 120);
  *v7 = 82;
  v37 = *(v36 + 20);
  v7[1] = v37;
  if (v37 > 0x7F)
  {
    v38 = sub_19575D0(v37, v7 + 1);
  }

  else
  {
    v38 = v7 + 2;
  }

  v7 = sub_1400EA0(v36, v38, a3);
  if ((v6 & 0x400) == 0)
  {
LABEL_32:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_84;
  }

LABEL_78:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v39 = *(a1 + 128);
  *v7 = 90;
  v40 = *(v39 + 20);
  v7[1] = v40;
  if (v40 > 0x7F)
  {
    v41 = sub_19575D0(v40, v7 + 1);
  }

  else
  {
    v41 = v7 + 2;
  }

  v7 = sub_14013D8(v39, v41, a3);
  if ((v6 & 0x800) == 0)
  {
LABEL_33:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_34;
    }

LABEL_90:
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v45 = *(a1 + 144);
    *v7 = 106;
    v46 = *(v45 + 20);
    v7[1] = v46;
    if (v46 > 0x7F)
    {
      v47 = sub_19575D0(v46, v7 + 1);
    }

    else
    {
      v47 = v7 + 2;
    }

    v7 = sub_1401A2C(v45, v47, a3);
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_96;
  }

LABEL_84:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v42 = *(a1 + 136);
  *v7 = 98;
  v43 = *(v42 + 20);
  v7[1] = v43;
  if (v43 > 0x7F)
  {
    v44 = sub_19575D0(v43, v7 + 1);
  }

  else
  {
    v44 = v7 + 2;
  }

  v7 = sub_13955E4(v42, v44, a3);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_90;
  }

LABEL_34:
  if ((v6 & 0x20000) == 0)
  {
LABEL_35:
    v17 = v7;
    goto LABEL_103;
  }

LABEL_96:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v48 = *(a1 + 180);
  *v7 = 112;
  v7[1] = v48;
  if (v48 > 0x7F)
  {
    v7[1] = v48 | 0x80;
    v49 = v48 >> 7;
    v7[2] = v48 >> 7;
    v17 = v7 + 3;
    if (v48 >= 0x4000)
    {
      LOBYTE(v7) = v7[2];
      do
      {
        *(v17 - 1) = v7 | 0x80;
        v7 = (v49 >> 7);
        *v17++ = v49 >> 7;
        v50 = v49 >> 14;
        v49 >>= 7;
      }

      while (v50);
    }
  }

  else
  {
    v17 = v7 + 2;
  }

LABEL_103:
  if ((v6 & 0x40000) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v52 = *(a1 + 184);
    *v17 = 120;
    v17[1] = v52;
    if (v52 > 0x7F)
    {
      v17[1] = v52 | 0x80;
      v53 = v52 >> 7;
      v17[2] = v52 >> 7;
      v51 = v17 + 3;
      if (v52 >= 0x4000)
      {
        LOBYTE(v17) = v17[2];
        do
        {
          *(v51 - 1) = v17 | 0x80;
          v17 = (v53 >> 7);
          *v51++ = v53 >> 7;
          v54 = v53 >> 14;
          v53 >>= 7;
        }

        while (v54);
      }
    }

    else
    {
      v51 = v17 + 2;
    }
  }

  else
  {
    v51 = v17;
  }

  if ((v6 & 0x2000) != 0)
  {
    if (*a3 <= v51)
    {
      v51 = sub_225EB68(a3, v51);
    }

    v56 = *(a1 + 152);
    *v51 = 386;
    v57 = *(v56 + 20);
    v51[2] = v57;
    if (v57 > 0x7F)
    {
      v58 = sub_19575D0(v57, v51 + 2);
    }

    else
    {
      v58 = v51 + 3;
    }

    v51 = sub_13FADA8(v56, v58, a3);
    if ((v6 & 0x80000) == 0)
    {
LABEL_114:
      if ((v6 & 1) == 0)
      {
        goto LABEL_115;
      }

      goto LABEL_128;
    }
  }

  else if ((v6 & 0x80000) == 0)
  {
    goto LABEL_114;
  }

  if (*a3 <= v51)
  {
    v51 = sub_225EB68(a3, v51);
  }

  v59 = *(a1 + 188);
  *v51 = 392;
  v51[2] = v59;
  v51 += 3;
  if ((v6 & 1) == 0)
  {
LABEL_115:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_129;
  }

LABEL_128:
  v51 = sub_128AEEC(a3, 18, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v51);
  if ((v6 & 0x4000) == 0)
  {
LABEL_116:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_117;
    }

LABEL_135:
    if (*a3 <= v51)
    {
      v51 = sub_225EB68(a3, v51);
    }

    v63 = *(a1 + 168);
    *v51 = 418;
    v64 = *(v63 + 20);
    v51[2] = v64;
    if (v64 > 0x7F)
    {
      v65 = sub_19575D0(v64, v51 + 2);
    }

    else
    {
      v65 = v51 + 3;
    }

    v51 = sub_13FC5B4(v63, v65, a3);
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_141;
  }

LABEL_129:
  if (*a3 <= v51)
  {
    v51 = sub_225EB68(a3, v51);
  }

  v60 = *(a1 + 160);
  *v51 = 410;
  v61 = *(v60 + 20);
  v51[2] = v61;
  if (v61 > 0x7F)
  {
    v62 = sub_19575D0(v61, v51 + 2);
  }

  else
  {
    v62 = v51 + 3;
  }

  v51 = sub_13FBFB4(v60, v62, a3);
  if ((v6 & 0x8000) != 0)
  {
    goto LABEL_135;
  }

LABEL_117:
  if ((v6 & 0x100000) == 0)
  {
LABEL_118:
    v55 = v51;
    goto LABEL_148;
  }

LABEL_141:
  if (*a3 <= v51)
  {
    v51 = sub_225EB68(a3, v51);
  }

  v66 = *(a1 + 192);
  *v51 = 424;
  v51[2] = v66;
  if (v66 > 0x7F)
  {
    v51[2] = v66 | 0x80;
    v67 = v66 >> 7;
    v51[3] = v66 >> 7;
    v55 = v51 + 4;
    if (v66 >= 0x4000)
    {
      LOBYTE(v68) = v51[3];
      do
      {
        *(v55 - 1) = v68 | 0x80;
        v68 = v67 >> 7;
        *v55++ = v67 >> 7;
        v69 = v67 >> 14;
        v67 >>= 7;
      }

      while (v69);
    }
  }

  else
  {
    v55 = v51 + 3;
  }

LABEL_148:
  if (*(a1 + 26))
  {
    v55 = sub_1953428(a1 + 16, 100, 10100, v55, a3);
  }

  v70 = *(a1 + 8);
  if ((v70 & 1) == 0)
  {
    return v55;
  }

  v72 = v70 & 0xFFFFFFFFFFFFFFFCLL;
  v73 = *(v72 + 31);
  if (v73 < 0)
  {
    v74 = *(v72 + 8);
    v73 = *(v72 + 16);
  }

  else
  {
    v74 = (v72 + 8);
  }

  if ((*a3 - v55) >= v73)
  {
    v75 = v73;
    memcpy(v55, v74, v73);
    v55 += v75;
    return v55;
  }

  return sub_1957130(a3, v74, v73, v55);
}

uint64_t sub_1403980(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = v2;
  v4 = *(a1 + 40);
  if (!v4)
  {
    goto LABEL_11;
  }

  if (v4)
  {
    v7 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 = v2 + v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
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

  v10 = sub_13FBA2C(*(a1 + 56));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
  v11 = sub_13FBA2C(*(a1 + 64));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
  v12 = sub_13FD1B0(*(a1 + 72));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_33:
    v14 = sub_13FEEB4(*(a1 + 88));
    v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_32:
  v13 = sub_13FE028(*(a1 + 80));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_33;
  }

LABEL_8:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_34:
  v15 = sub_14003F0(*(a1 + 96));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x80) != 0)
  {
LABEL_10:
    v5 = sub_1400B24(*(a1 + 104));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = sub_13FF9AC(*(a1 + 112));
    v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 0x200) == 0)
    {
LABEL_14:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_38;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  v17 = sub_1400FC8(*(a1 + 120));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x400) == 0)
  {
LABEL_15:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  v18 = sub_14014E4(*(a1 + 128));
  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x800) == 0)
  {
LABEL_16:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  v19 = sub_1395750(*(a1 + 136));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x1000) == 0)
  {
LABEL_17:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  v20 = sub_1401C00(*(a1 + 144));
  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x2000) == 0)
  {
LABEL_18:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_41:
  v21 = *(a1 + 152);
  v22 = 5;
  if ((*(v21 + 16) & 1) == 0)
  {
    v22 = 0;
  }

  v23 = *(v21 + 8);
  if (v23)
  {
    v35 = v23 & 0xFFFFFFFFFFFFFFFCLL;
    v36 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v36 < 0)
    {
      v36 = *(v35 + 16);
    }

    v22 += v36;
  }

  *(v21 + 20) = v22;
  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v4 & 0x4000) == 0)
  {
LABEL_19:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_45:
  v24 = sub_13FC0C0(*(a1 + 160));
  v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v4 & 0x8000) != 0)
  {
LABEL_20:
    v6 = sub_13FC6C0(*(a1 + 168));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_21:
  if ((v4 & 0x1F0000) == 0)
  {
    goto LABEL_63;
  }

  if ((v4 & 0x10000) == 0)
  {
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

LABEL_51:
    v27 = *(a1 + 180);
    if (v27 < 0)
    {
      v28 = 11;
    }

    else
    {
      v28 = ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v28;
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_55;
  }

  v25 = *(a1 + 176);
  if (v25 < 0)
  {
    v26 = 11;
  }

  else
  {
    v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v26;
  if ((v4 & 0x20000) != 0)
  {
    goto LABEL_51;
  }

LABEL_24:
  if ((v4 & 0x40000) != 0)
  {
LABEL_55:
    v29 = *(a1 + 184);
    if (v29 < 0)
    {
      v30 = 11;
    }

    else
    {
      v30 = ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v30;
  }

LABEL_59:
  if ((v4 & 0x80000) != 0)
  {
    v3 += 3;
  }

  if ((v4 & 0x100000) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 192) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_63:
  v31 = *(a1 + 8);
  if (v31)
  {
    v33 = v31 & 0xFFFFFFFFFFFFFFFCLL;
    v34 = *((v31 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v34 < 0)
    {
      v34 = *(v33 + 16);
    }

    v3 += v34;
  }

  *(a1 + 44) = v3;
  return v3;
}

void sub_1403E5C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (!v4)
  {
    goto LABEL_70;
  }

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

      v8 = sub_1404AD4(v10);
      *(a1 + 56) = v8;
    }

    if (*(a2 + 56))
    {
      v11 = *(a2 + 56);
    }

    else
    {
      v11 = &off_276F820;
    }

    sub_13FBB1C(v8, v11);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

  *(a1 + 40) |= 4u;
  v12 = *(a1 + 64);
  if (!v12)
  {
    v13 = *(a1 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    v12 = sub_1404AD4(v14);
    *(a1 + 64) = v12;
  }

  if (*(a2 + 64))
  {
    v15 = *(a2 + 64);
  }

  else
  {
    v15 = &off_276F820;
  }

  sub_13FBB1C(v12, v15);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_30:
  *(a1 + 40) |= 8u;
  v16 = *(a1 + 72);
  if (!v16)
  {
    v17 = *(a1 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    v16 = sub_1404C68(v18);
    *(a1 + 72) = v16;
  }

  if (*(a2 + 72))
  {
    v19 = *(a2 + 72);
  }

  else
  {
    v19 = &off_276F898;
  }

  sub_13FD330(v16, v19);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_38:
  *(a1 + 40) |= 0x10u;
  v20 = *(a1 + 80);
  if (!v20)
  {
    v21 = *(a1 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    v20 = sub_1404D10(v22);
    *(a1 + 80) = v20;
  }

  if (*(a2 + 80))
  {
    v23 = *(a2 + 80);
  }

  else
  {
    v23 = &off_276F8E0;
  }

  sub_13FE198(v20, v23);
  if ((v4 & 0x20) == 0)
  {
LABEL_11:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_54;
  }

LABEL_46:
  *(a1 + 40) |= 0x20u;
  v24 = *(a1 + 88);
  if (!v24)
  {
    v25 = *(a1 + 8);
    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v26 = *v26;
    }

    v24 = sub_1404D6C(v26);
    *(a1 + 88) = v24;
  }

  if (*(a2 + 88))
  {
    v27 = *(a2 + 88);
  }

  else
  {
    v27 = &off_276F940;
  }

  sub_13FF008(v24, v27);
  if ((v4 & 0x40) == 0)
  {
LABEL_12:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_62;
  }

LABEL_54:
  *(a1 + 40) |= 0x40u;
  v28 = *(a1 + 96);
  if (!v28)
  {
    v29 = *(a1 + 8);
    v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
    if (v29)
    {
      v30 = *v30;
    }

    v28 = sub_1404E24(v30);
    *(a1 + 96) = v28;
  }

  if (*(a2 + 96))
  {
    v31 = *(a2 + 96);
  }

  else
  {
    v31 = &off_276F9E8;
  }

  sub_140053C(v28, v31);
  if ((v4 & 0x80) != 0)
  {
LABEL_62:
    *(a1 + 40) |= 0x80u;
    v32 = *(a1 + 104);
    if (!v32)
    {
      v33 = *(a1 + 8);
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      if (v33)
      {
        v34 = *v34;
      }

      v32 = sub_1404EAC(v34);
      *(a1 + 104) = v32;
    }

    if (*(a2 + 104))
    {
      v35 = *(a2 + 104);
    }

    else
    {
      v35 = &off_276FA20;
    }

    sub_132DE2C(v32, v35);
  }

LABEL_70:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_144;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 40) |= 0x100u;
    v36 = *(a1 + 112);
    if (!v36)
    {
      v37 = *(a1 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      v36 = sub_1404DC8(v38);
      *(a1 + 112) = v36;
    }

    if (*(a2 + 112))
    {
      v39 = *(a2 + 112);
    }

    else
    {
      v39 = &off_276F9A0;
    }

    sub_13FFA78(v36, v39);
    if ((v4 & 0x200) == 0)
    {
LABEL_73:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_96;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_73;
  }

  *(a1 + 40) |= 0x200u;
  v40 = *(a1 + 120);
  if (!v40)
  {
    v41 = *(a1 + 8);
    v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
    if (v41)
    {
      v42 = *v42;
    }

    v40 = sub_1404F30(v42);
    *(a1 + 120) = v40;
  }

  if (*(a2 + 120))
  {
    v43 = *(a2 + 120);
  }

  else
  {
    v43 = &off_276FA40;
  }

  sub_12B9D50(v40, v43);
  if ((v4 & 0x400) == 0)
  {
LABEL_74:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_104;
  }

LABEL_96:
  *(a1 + 40) |= 0x400u;
  v44 = *(a1 + 128);
  if (!v44)
  {
    v45 = *(a1 + 8);
    v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
    if (v45)
    {
      v46 = *v46;
    }

    v44 = sub_1404FAC(v46);
    *(a1 + 128) = v44;
  }

  if (*(a2 + 128))
  {
    v47 = *(a2 + 128);
  }

  else
  {
    v47 = &off_276FA60;
  }

  sub_1401564(v44, v47);
  if ((v4 & 0x800) == 0)
  {
LABEL_75:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_112;
  }

LABEL_104:
  *(a1 + 40) |= 0x800u;
  v48 = *(a1 + 136);
  if (!v48)
  {
    v49 = *(a1 + 8);
    v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
    if (v49)
    {
      v50 = *v50;
    }

    v48 = sub_13AE3BC(v50);
    *(a1 + 136) = v48;
  }

  if (*(a2 + 136))
  {
    v51 = *(a2 + 136);
  }

  else
  {
    v51 = &off_276D878;
  }

  sub_128E5DC(v48, v51);
  if ((v4 & 0x1000) == 0)
  {
LABEL_76:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_120;
  }

LABEL_112:
  *(a1 + 40) |= 0x1000u;
  v52 = *(a1 + 144);
  if (!v52)
  {
    v53 = *(a1 + 8);
    v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
    if (v53)
    {
      v54 = *v54;
    }

    sub_1405024(v54);
    *(a1 + 144) = v52;
  }

  if (*(a2 + 144))
  {
    v55 = *(a2 + 144);
  }

  else
  {
    v55 = &off_276FA80;
  }

  sub_1333BD8(v52, v55);
  if ((v4 & 0x2000) == 0)
  {
LABEL_77:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_128;
  }

LABEL_120:
  *(a1 + 40) |= 0x2000u;
  v56 = *(a1 + 152);
  if (!v56)
  {
    v57 = *(a1 + 8);
    v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
    if (v57)
    {
      v58 = *v58;
    }

    v56 = sub_14049E0(v58);
    *(a1 + 152) = v56;
  }

  if (*(a2 + 152))
  {
    v59 = *(a2 + 152);
  }

  else
  {
    v59 = &off_276F800;
  }

  sub_12D67F8(v56, v59);
  if ((v4 & 0x4000) == 0)
  {
LABEL_78:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_136;
  }

LABEL_128:
  *(a1 + 40) |= 0x4000u;
  v60 = *(a1 + 160);
  if (!v60)
  {
    v61 = *(a1 + 8);
    v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
    if (v61)
    {
      v62 = *v62;
    }

    v60 = sub_1404B78(v62);
    *(a1 + 160) = v60;
  }

  if (*(a2 + 160))
  {
    v63 = *(a2 + 160);
  }

  else
  {
    v63 = &off_276F858;
  }

  sub_13FC140(v60, v63);
  if ((v4 & 0x8000) != 0)
  {
LABEL_136:
    *(a1 + 40) |= 0x8000u;
    v64 = *(a1 + 168);
    if (!v64)
    {
      v65 = *(a1 + 8);
      v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
      if (v65)
      {
        v66 = *v66;
      }

      v64 = sub_1404BF0(v66);
      *(a1 + 168) = v64;
    }

    if (*(a2 + 168))
    {
      v67 = *(a2 + 168);
    }

    else
    {
      v67 = &off_276F878;
    }

    sub_13FC140(v64, v67);
  }

LABEL_144:
  if ((v4 & 0x1F0000) == 0)
  {
    goto LABEL_152;
  }

  if ((v4 & 0x10000) != 0)
  {
    *(a1 + 176) = *(a2 + 176);
    if ((v4 & 0x20000) == 0)
    {
LABEL_147:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_158;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_147;
  }

  *(a1 + 180) = *(a2 + 180);
  if ((v4 & 0x40000) == 0)
  {
LABEL_148:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_149;
    }

LABEL_159:
    *(a1 + 188) = *(a2 + 188);
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_150;
  }

LABEL_158:
  *(a1 + 184) = *(a2 + 184);
  if ((v4 & 0x80000) != 0)
  {
    goto LABEL_159;
  }

LABEL_149:
  if ((v4 & 0x100000) != 0)
  {
LABEL_150:
    *(a1 + 192) = *(a2 + 192);
  }

LABEL_151:
  *(a1 + 40) |= v4;
LABEL_152:
  sub_225EA0C(a1 + 16, a2 + 16);
  v68 = *(a2 + 8);
  if (v68)
  {

    sub_1957EF4((a1 + 8), (v68 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_140441C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if ((v3 & 8) != 0)
    {
      result = sub_13FD4BC(*(a1 + 72));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x10) != 0)
    {
      result = sub_13FE33C(*(a1 + 80));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x20) != 0)
    {
      result = sub_13FF17C(*(a1 + 88));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x40) != 0)
    {
      result = sub_14006D0(*(a1 + 96));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x100) != 0)
    {
      result = sub_13FFB6C(*(a1 + 112));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x4000) != 0)
    {
      v4 = *(a1 + 160);
      if (*(v4 + 16))
      {
        result = sub_17A8EF8(*(v4 + 24));
        if (!result)
        {
          return result;
        }

        v3 = *(a1 + 40);
      }
    }

    if ((v3 & 0x8000) == 0)
    {
      return 1;
    }

    v5 = *(a1 + 168);
    if ((*(v5 + 16) & 1) == 0)
    {
      return 1;
    }

    result = sub_17A8EF8(*(v5 + 24));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_1404500(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26DF0C8;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_140457C(uint64_t a1)
{
  if (!a1)
  {

    sub_1409750();
  }

  return sub_13F6C14(v3, a1, 0);
}

void *sub_14045D8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26DF1C8;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_1404650(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26DF248;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

double sub_14046CC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26DF2C8;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  return result;
}

uint64_t sub_140474C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26DF348;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_14047C8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26DF3C8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_1404864(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26DF448;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_14048E0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26DF4C8;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_140495C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26DF548;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

uint64_t sub_14049E0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26DF5C8;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_1404A5C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26DF648;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_1404AD4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26DF6C8;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

void *sub_1404B78(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26DF748;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_1404BF0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26DF7C8;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_1404C68(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26DF848;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = 0;
  *(result + 62) = 0;
  return result;
}

uint64_t sub_1404D10(uint64_t a1)
{
  if (!a1)
  {

    sub_14097BC();
  }

  return sub_13FD530(v3, a1, 0);
}

uint64_t sub_1404D6C(uint64_t a1)
{
  if (!a1)
  {

    sub_1409828();
  }

  return sub_13FE3B8(v3, a1, 0);
}

uint64_t sub_1404DC8(uint64_t a1)
{
  if (!a1)
  {

    sub_1409894();
  }

  return sub_13FF1E4(v3, a1, 0);
}

void *sub_1404E24(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26DFA48;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

void *sub_1404EAC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26DFAC8;
  result[2] = 0;
  result[3] = &qword_278E990;
  return result;
}

uint64_t sub_1404F30(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26DFB48;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_1404FAC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26DFBC8;
  result[2] = 0;
  result[3] = 0;
  return result;
}

double sub_1405024(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26DFC48;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

uint64_t sub_14050A4(uint64_t a1)
{
  if (!a1)
  {

    sub_1409900();
  }

  return sub_1401C90(v3, a1, 0);
}

uint64_t sub_1405100(uint64_t a1)
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

  v5 = (a1 + 88);
  if (*(a1 + 88) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C((a1 + 96));
  }

  if (*(a1 + 104) != &qword_278E990)
  {
    sub_194E89C((a1 + 104));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_11:
  sub_12E5CA0((a1 + 64));
  sub_1956ABC(a1 + 48);
  sub_140996C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14051EC(uint64_t a1)
{
  sub_1405100(a1);

  operator delete();
}

uint64_t sub_1405224(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E48B0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  *(v1 + 48) = 0;
  v5 = *(v1 + 72);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 80) + 8);
    do
    {
      v7 = *v6++;
      result = sub_16EEC04(v7);
      --v5;
    }

    while (v5);
    *(v1 + 72) = 0;
  }

  v8 = *(v1 + 16);
  if ((v8 & 7) != 0)
  {
    if ((v8 & 1) == 0)
    {
      if ((v8 & 2) == 0)
      {
        goto LABEL_12;
      }

LABEL_18:
      v10 = *(v1 + 96) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
        if ((v8 & 4) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        *v10 = 0;
        *(v10 + 23) = 0;
        if ((v8 & 4) == 0)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_22;
    }

    v9 = *(v1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v8 & 2) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v8 & 2) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_12:
    if ((v8 & 4) == 0)
    {
      goto LABEL_25;
    }

LABEL_22:
    v11 = *(v1 + 104) & 0xFFFFFFFFFFFFFFFELL;
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
  }

LABEL_25:
  v13 = *(v1 + 8);
  v12 = v1 + 8;
  *(v12 + 104) = 0;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

uint64_t sub_1405378(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v48 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, v48, a3[11].i32[1]) & 1) == 0)
  {
    v7 = (a1 + 8);
    do
    {
      v8 = (*v48 + 1);
      v9 = **v48;
      if (**v48 < 0)
      {
        v10 = *v8;
        v11 = v9 + (v10 << 7);
        v9 = v11 - 128;
        if (v10 < 0)
        {
          v8 = sub_1958824(*v48, v11 - 128);
          v9 = v12;
        }

        else
        {
          v8 = (*v48 + 2);
        }
      }

      *v48 = v8;
      v13 = v9 >> 3;
      if (v9 >> 3 > 3)
      {
        if (v9 >> 3 > 5)
        {
          if (v13 == 6)
          {
            if (v9 == 50)
            {
              *(a1 + 16) |= 4u;
              v35 = *(a1 + 8);
              v15 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
              if (v35)
              {
                v15 = *v15;
              }

              v16 = (a1 + 104);
              goto LABEL_61;
            }
          }

          else if (v13 == 100 && v9 == 34)
          {
            v25 = v8 - 2;
            while (1)
            {
              v26 = (v25 + 2);
              *v48 = v25 + 2;
              v27 = *(a1 + 80);
              if (v27 && (v28 = *(a1 + 72), v28 < *v27))
              {
                *(a1 + 72) = v28 + 1;
                v29 = *&v27[2 * v28 + 2];
              }

              else
              {
                v30 = sub_16F6038(*(a1 + 64));
                v29 = sub_19593CC(a1 + 64, v30);
                v26 = *v48;
              }

              v25 = sub_21F5B70(a3, v29, v26);
              *v48 = v25;
              if (!v25)
              {
                goto LABEL_89;
              }

              if (*a3 <= v25 || *v25 != 1698)
              {
                goto LABEL_84;
              }
            }
          }
        }

        else if (v13 == 4)
        {
          if (v9 == 34)
          {
            *(a1 + 16) |= 1u;
            v34 = *(a1 + 8);
            v15 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
            if (v34)
            {
              v15 = *v15;
            }

            v16 = (a1 + 88);
            goto LABEL_61;
          }
        }

        else if (v13 == 5 && v9 == 42)
        {
          *(a1 + 16) |= 2u;
          v14 = *(a1 + 8);
          v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          if (v14)
          {
            v15 = *v15;
          }

          v16 = (a1 + 96);
LABEL_61:
          v36 = sub_194DB04(v16, v15);
          v37 = sub_1958890(v36, *v48, a3);
          goto LABEL_83;
        }

        goto LABEL_76;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          if (v9 == 18)
          {
            v38 = v8 - 1;
            while (1)
            {
              v39 = (v38 + 1);
              *v48 = v38 + 1;
              v40 = *(a1 + 40);
              if (v40 && (v41 = *(a1 + 32), v41 < *v40))
              {
                *(a1 + 32) = v41 + 1;
                v42 = *&v40[2 * v41 + 2];
              }

              else
              {
                v43 = sub_16F5BD8(*(a1 + 24));
                v42 = sub_19593CC(a1 + 24, v43);
                v39 = *v48;
              }

              v38 = sub_21F7188(a3, v42, v39);
              *v48 = v38;
              if (!v38)
              {
                goto LABEL_89;
              }

              if (*a3 <= v38 || *v38 != 18)
              {
                goto LABEL_84;
              }
            }
          }

          goto LABEL_76;
        }

        if (v13 == 3)
        {
          if (v9 != 24)
          {
            if (v9 == 26)
            {
              *&v49 = a1 + 48;
              *(&v49 + 1) = sub_14E9E48;
              v50 = a1 + 8;
              v51 = 3;
              v37 = sub_1216588(a3, v8, &v49);
LABEL_83:
              *v48 = v37;
              if (!v37)
              {
                goto LABEL_89;
              }

              continue;
            }

            goto LABEL_76;
          }

          v17 = (v8 - 1);
LABEL_21:
          *v48 = v17 + 1;
          v18 = *(v17 + 1);
          v19 = (v17 + 2);
          if (v18 < 0)
          {
            v20 = *v19;
            v21 = (v20 << 7) + v18;
            LODWORD(v18) = v21 - 128;
            if ((v20 & 0x80000000) == 0)
            {
              v19 = (v17 + 3);
              goto LABEL_24;
            }

            *v48 = sub_19587DC(v17 + 1, (v21 - 128));
            if (!*v48)
            {
              goto LABEL_89;
            }

            LODWORD(v18) = v24;
          }

          else
          {
LABEL_24:
            *v48 = v19;
          }

          if (sub_14E9E48(v18))
          {
            v22 = *(a1 + 48);
            if (v22 == *(a1 + 52))
            {
              v23 = v22 + 1;
              sub_1958E5C((a1 + 48), v22 + 1);
              *(*(a1 + 56) + 4 * v22) = v18;
            }

            else
            {
              *(*(a1 + 56) + 4 * v22) = v18;
              v23 = v22 + 1;
            }

            *(a1 + 48) = v23;
          }

          else
          {
            sub_1313740();
          }

          v17 = *v48;
          if (*a3 <= *v48 || **v48 != 24)
          {
            continue;
          }

          goto LABEL_21;
        }

LABEL_76:
        if (v9)
        {
          v46 = (v9 & 7) == 4;
        }

        else
        {
          v46 = 1;
        }

        if (v46)
        {
          if (v8)
          {
            a3[10].i32[0] = v9 - 1;
            break;
          }

LABEL_89:
          *v48 = 0;
          break;
        }

        if (*v7)
        {
          v47 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v47 = sub_11F1920((a1 + 8));
          v8 = *v48;
        }

        v37 = sub_1952690(v9, v47, v8, a3);
        goto LABEL_83;
      }

      if (v9 != 8)
      {
        goto LABEL_76;
      }

      v5 |= 8u;
      v32 = v8 + 1;
      v31 = *v8;
      if (v31 < 0)
      {
        v33 = *v32;
        v31 = (v33 << 7) + v31 - 128;
        if (v33 < 0)
        {
          v44 = sub_19587DC(v8, v31);
          *v48 = v44;
          *(a1 + 112) = v45 != 0;
          if (!v44)
          {
            goto LABEL_89;
          }

          continue;
        }

        v32 = v8 + 2;
      }

      *v48 = v32;
      *(a1 + 112) = v31 != 0;
LABEL_84:
      ;
    }

    while ((sub_195ADC0(a3, v48, a3[11].i32[1]) & 1) == 0);
  }

  *(a1 + 16) |= v5;
  return *v48;
}

char *sub_140583C(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 112);
    *v4 = 8;
    v4[1] = v7;
    v4 += 2;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v10 = *(*(a1 + 40) + 8 * i + 8);
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

      v4 = sub_16E886C(v10, v12, a3);
    }
  }

  v13 = *(a1 + 48);
  if (v13 < 1)
  {
    v16 = v4;
  }

  else
  {
    for (j = 0; j != v13; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v15 = *(*(a1 + 56) + 4 * j);
      *v4 = 24;
      v4[1] = v15;
      if (v15 > 0x7F)
      {
        v4[1] = v15 | 0x80;
        v17 = v15 >> 7;
        v4[2] = v15 >> 7;
        v16 = v4 + 3;
        if (v15 >= 0x4000)
        {
          LOBYTE(v4) = v4[2];
          do
          {
            *(v16 - 1) = v4 | 0x80;
            v4 = (v17 >> 7);
            *v16++ = v17 >> 7;
            v18 = v17 >> 14;
            v17 >>= 7;
          }

          while (v18);
        }
      }

      else
      {
        v16 = v4 + 2;
      }

      v4 = v16;
    }
  }

  if (v6)
  {
    v16 = sub_128AEEC(a3, 4, *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL, v16);
    if ((v6 & 2) == 0)
    {
LABEL_27:
      if ((v6 & 4) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_27;
  }

  v16 = sub_128AEEC(a3, 5, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, v16);
  if ((v6 & 4) != 0)
  {
LABEL_28:
    v16 = sub_128AEEC(a3, 6, *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL, v16);
  }

LABEL_29:
  v19 = *(a1 + 72);
  if (v19)
  {
    for (k = 0; k != v19; ++k)
    {
      if (*a3 <= v16)
      {
        v16 = sub_225EB68(a3, v16);
      }

      v21 = *(*(a1 + 80) + 8 * k + 8);
      *v16 = 1698;
      v22 = *(v21 + 20);
      v16[2] = v22;
      if (v22 > 0x7F)
      {
        v23 = sub_19575D0(v22, v16 + 2);
      }

      else
      {
        v23 = v16 + 3;
      }

      v16 = sub_16EEE1C(v21, v23, a3);
    }
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v16;
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

  if (*a3 - v16 >= v27)
  {
    v29 = v27;
    memcpy(v16, v28, v27);
    v16 += v29;
    return v16;
  }

  return sub_1957130(a3, v28, v27, v16);
}

uint64_t sub_1405B50(uint64_t a1)
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

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 56) + 4 * v10);
      if (v11 < 0)
      {
        v12 = 10;
      }

      else
      {
        v12 = (9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6;
      }

      v9 += v12;
      ++v10;
    }

    while (v8 != v10);
  }

  else
  {
    v9 = 0;
  }

  v13 = *(a1 + 72);
  v14 = v2 + v8 + v9 + 2 * v13;
  v15 = *(a1 + 80);
  if (v15)
  {
    v16 = (v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  if (v13)
  {
    v17 = 8 * v13;
    do
    {
      v18 = *v16++;
      v19 = sub_16EEF64(v18);
      v14 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      v17 -= 8;
    }

    while (v17);
  }

  v20 = *(a1 + 16);
  if ((v20 & 0xF) != 0)
  {
    if (v20)
    {
      v26 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
      v27 = *(v26 + 23);
      v28 = *(v26 + 8);
      if ((v27 & 0x80u) == 0)
      {
        v28 = v27;
      }

      v14 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v20 & 2) == 0)
      {
LABEL_26:
        if ((v20 & 4) == 0)
        {
LABEL_30:
          v14 += (v20 >> 2) & 2;
          goto LABEL_31;
        }

LABEL_27:
        v21 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
        v22 = *(v21 + 23);
        v23 = *(v21 + 8);
        if ((v22 & 0x80u) == 0)
        {
          v23 = v22;
        }

        v14 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
        goto LABEL_30;
      }
    }

    else if ((v20 & 2) == 0)
    {
      goto LABEL_26;
    }

    v29 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    v30 = *(v29 + 23);
    v31 = *(v29 + 8);
    if ((v30 & 0x80u) == 0)
    {
      v31 = v30;
    }

    v14 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v20 & 4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

LABEL_31:
  v24 = *(a1 + 8);
  if (v24)
  {
    v32 = v24 & 0xFFFFFFFFFFFFFFFCLL;
    v33 = *((v24 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v33 < 0)
    {
      v33 = *(v32 + 16);
    }

    v14 += v33;
  }

  *(a1 + 20) = v14;
  return v14;
}

void sub_1405D94(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1409AF8((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a1 + 48);
    sub_1958E5C((a1 + 48), v10 + v9);
    v11 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy((v11 + 4 * v10), *(a2 + 56), 4 * *(a2 + 48));
  }

  v12 = *(a2 + 72);
  if (v12)
  {
    v13 = *(a2 + 80);
    v14 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_12E5E34((a1 + 64), v14, (v13 + 8), v12, **(a1 + 80) - *(a1 + 72));
    v15 = *(a1 + 72) + v12;
    *(a1 + 72) = v15;
    v16 = *(a1 + 80);
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  v17 = *(a2 + 16);
  if ((v17 & 0xF) != 0)
  {
    if (v17)
    {
      v19 = *(a2 + 88);
      *(a1 + 16) |= 1u;
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      sub_194EA1C((a1 + 88), (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
      if ((v17 & 2) == 0)
      {
LABEL_12:
        if ((v17 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_26;
      }
    }

    else if ((v17 & 2) == 0)
    {
      goto LABEL_12;
    }

    v22 = *(a2 + 96);
    *(a1 + 16) |= 2u;
    v23 = *(a1 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    sub_194EA1C((a1 + 96), (v22 & 0xFFFFFFFFFFFFFFFELL), v24);
    if ((v17 & 4) == 0)
    {
LABEL_13:
      if ((v17 & 8) == 0)
      {
LABEL_15:
        *(a1 + 16) |= v17;
        goto LABEL_16;
      }

LABEL_14:
      *(a1 + 112) = *(a2 + 112);
      goto LABEL_15;
    }

LABEL_26:
    v25 = *(a2 + 104);
    *(a1 + 16) |= 4u;
    v26 = *(a1 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    sub_194EA1C((a1 + 104), (v25 & 0xFFFFFFFFFFFFFFFELL), v27);
    if ((v17 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
  v18 = *(a2 + 8);
  if (v18)
  {

    sub_1957EF4((a1 + 8), (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_1405FC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_16E4B4C(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 72);
  do
  {
    v5 = v6 < 1;
    if (v6 < 1)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = sub_16EF064(*(*(a1 + 80) + 8 * v6));
    v6 = v7;
  }

  while ((v8 & 1) != 0);
  return v5;
}

uint64_t sub_1406050(uint64_t a1)
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

  if (a1 != &off_276FBF8 && *(a1 + 24))
  {
    sub_1545F68();
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

void sub_1406108(uint64_t a1)
{
  sub_1406050(a1);

  operator delete();
}

uint64_t sub_1406140(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_14EB434(*(result + 24));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_14061A0(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 >> 3 != 2)
    {
      if (v7 >> 3 == 1 && v7 == 8)
      {
        v19 = v6 + 1;
        v20 = *v6;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v21 = *v19;
        v22 = (v21 << 7) + v20;
        LODWORD(v20) = v22 - 128;
        if (v21 < 0)
        {
          v25 = sub_19587DC(v6, (v22 - 128));
          if (!v25)
          {
            return 0;
          }

          LODWORD(v20) = v23;
        }

        else
        {
          v19 = v6 + 2;
LABEL_30:
          v25 = v19;
        }

        if (sub_14CB318(v20))
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v20;
        }

        else
        {
          sub_12E8450();
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

      sub_15520A4(v17);
      v15 = v18;
      *(a1 + 24) = v18;
      v6 = v25;
    }

    v14 = sub_2204D90(a3, v15, v6);
LABEL_25:
    v25 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v25;
}

char *sub_140637C(uint64_t a1, char *__dst, unint64_t *a3)
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

    v6 = sub_1546828(v11, v13, a3);
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

  if ((*a3 - v6) >= v17)
  {
    v19 = v17;
    memcpy(v6, v18, v17);
    v6 += v19;
    return v6;
  }

  return sub_1957130(a3, v18, v17, v6);
}

uint64_t sub_1406508(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_1546FC4(*(a1 + 24));
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

void sub_14065D0(uint64_t a1, uint64_t a2)
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

        sub_15520A4(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2776C60;
      }

      sub_14EC04C(v5, v8);
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

uint64_t sub_14066A0(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_14EC4F4(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_14066E0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956AFC(a1 + 9);
  sub_1409A74(a1 + 6);
  sub_14099F0(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1406774(void *a1)
{
  sub_14066E0(a1);

  operator delete();
}

uint64_t sub_14067AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_1407718(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 64) + 8);
    do
    {
      v7 = *v6++;
      sub_1406140(v7);
      --v5;
    }

    while (v5);
    *(a1 + 56) = 0;
  }

  result = sub_12A41D0(a1 + 72);
  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 15768000;
  }

  v10 = *(a1 + 8);
  v9 = a1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

uint64_t sub_1406878(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v51 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v51, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v51 + 1);
    v8 = **v51;
    if (**v51 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v51, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v51 + 2);
      }
    }

    *v51 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      if (v11 != 1)
      {
        if (v11 == 2)
        {
          if (v8 == 18)
          {
            v37 = v7 - 1;
            while (1)
            {
              v38 = (v37 + 1);
              *v51 = v37 + 1;
              v39 = *(a1 + 40);
              if (v39 && (v40 = *(a1 + 32), v40 < *v39))
              {
                *(a1 + 32) = v40 + 1;
                v41 = *&v39[2 * v40 + 2];
              }

              else
              {
                v42 = sub_1407F20(*(a1 + 24));
                v41 = sub_19593CC(a1 + 24, v42);
                v38 = *v51;
              }

              v37 = sub_2208F88(a3, v41, v38);
              *v51 = v37;
              if (!v37)
              {
                goto LABEL_89;
              }

              if (*a3 <= v37 || *v37 != 18)
              {
                goto LABEL_77;
              }
            }
          }
        }

        else if (v11 == 3 && v8 == 26)
        {
          v21 = v7 - 1;
          while (1)
          {
            v22 = (v21 + 1);
            *v51 = v21 + 1;
            v23 = *(a1 + 64);
            if (v23 && (v24 = *(a1 + 56), v24 < *v23))
            {
              *(a1 + 56) = v24 + 1;
              v25 = *&v23[2 * v24 + 2];
            }

            else
            {
              v26 = sub_1407DEC(*(a1 + 48));
              v25 = sub_19593CC(a1 + 48, v26);
              v22 = *v51;
            }

            v21 = sub_2209018(a3, v25, v22);
            *v51 = v21;
            if (!v21)
            {
              goto LABEL_89;
            }

            if (*a3 <= v21 || *v21 != 26)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_70;
      }

      if (v8 != 8)
      {
        goto LABEL_70;
      }

      v27 = v7 + 1;
      v28 = *v7;
      if (v28 < 0)
      {
        v29 = *v27;
        v30 = (v29 << 7) + v28;
        LODWORD(v28) = v30 - 128;
        if (v29 < 0)
        {
          *v51 = sub_19587DC(v7, (v30 - 128));
          if (!*v51)
          {
            goto LABEL_89;
          }

          LODWORD(v28) = v46;
          goto LABEL_48;
        }

        v27 = v7 + 2;
      }

      *v51 = v27;
LABEL_48:
      if (sub_14CB318(v28))
      {
        *(a1 + 16) |= 1u;
        *(a1 + 96) = v28;
      }

      else
      {
        sub_12E8450();
      }

      goto LABEL_77;
    }

    if (v8 >> 3 > 5)
    {
      break;
    }

    if (v11 != 4)
    {
      if (v11 == 5 && v8 == 42)
      {
        v12 = v7 - 1;
        while (1)
        {
          v13 = (v12 + 1);
          *v51 = v12 + 1;
          v14 = *(a1 + 88);
          if (v14 && (v15 = *(a1 + 80), v15 < *v14))
          {
            *(a1 + 80) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = *(a1 + 72);
            if (!v17)
            {
              operator new();
            }

            *v19 = v18;
            v19[1] = sub_195A650;
            *v18 = 0;
            v18[1] = 0;
            v18[2] = 0;
            v16 = sub_19593CC(a1 + 72, v18);
            v13 = *v51;
          }

          v12 = sub_1958890(v16, v13, a3);
          *v51 = v12;
          if (!v12)
          {
            goto LABEL_89;
          }

          if (*a3 <= v12 || *v12 != 42)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_70;
    }

    if (v8 != 32)
    {
      goto LABEL_70;
    }

    v5 |= 8u;
    v31 = v7 + 1;
    v32 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    v33 = *v31;
    v32 = v32 + (v33 << 7) - 128;
    if ((v33 & 0x80000000) == 0)
    {
      v31 = v7 + 2;
LABEL_54:
      *v51 = v31;
      *(a1 + 112) = v32;
      goto LABEL_77;
    }

    v47 = sub_1958770(v7, v32);
    *v51 = v47;
    *(a1 + 112) = v48;
    if (!v47)
    {
      goto LABEL_89;
    }

LABEL_77:
    if (sub_195ADC0(a3, v51, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 6)
  {
    if (v8 != 48)
    {
      goto LABEL_70;
    }

    v5 |= 2u;
    v34 = v7 + 1;
    v35 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    v36 = *v34;
    v35 = v35 + (v36 << 7) - 128;
    if ((v36 & 0x80000000) == 0)
    {
      v34 = v7 + 2;
LABEL_59:
      *v51 = v34;
      *(a1 + 100) = v35;
      goto LABEL_77;
    }

    v49 = sub_1958770(v7, v35);
    *v51 = v49;
    *(a1 + 100) = v50;
    if (!v49)
    {
      goto LABEL_89;
    }

    goto LABEL_77;
  }

  if (v11 == 7 && v8 == 57)
  {
    v5 |= 4u;
    *(a1 + 104) = *v7;
    *v51 = v7 + 2;
    goto LABEL_77;
  }

LABEL_70:
  if (v8)
  {
    v43 = (v8 & 7) == 4;
  }

  else
  {
    v43 = 1;
  }

  if (!v43)
  {
    v44 = *(a1 + 8);
    if (v44)
    {
      v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v45 = sub_11F1920((a1 + 8));
      v7 = *v51;
    }

    *v51 = sub_1952690(v8, v45, v7, a3);
    if (!*v51)
    {
      goto LABEL_89;
    }

    goto LABEL_77;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_89:
  *v51 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v51;
}

char *sub_1406D34(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 96);
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

      v6 = sub_14079B0(v13, v15, a3);
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

      v6 = sub_140637C(v18, v20, a3);
    }
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v22 = *(a1 + 112);
    *v6 = 32;
    v6[1] = v22;
    if (v22 > 0x7F)
    {
      v6[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v6[2] = v22 >> 7;
      v21 = v6 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v21 - 1) = v6 | 0x80;
          LODWORD(v6) = v23 >> 7;
          *v21++ = v23 >> 7;
          v24 = v23 >> 14;
          v23 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v21 = v6 + 2;
    }
  }

  else
  {
    v21 = v6;
  }

  v25 = *(a1 + 80);
  if (v25 >= 1)
  {
    v26 = 8;
    do
    {
      v27 = *(*(a1 + 88) + v26);
      v28 = *(v27 + 23);
      if (v28 < 0 && (v28 = v27[1], v28 > 127) || (*a3 - v21 + 14) < v28)
      {
        v21 = sub_1957480(a3, 5, v27, v21);
      }

      else
      {
        *v21 = 42;
        v21[1] = v28;
        if (*(v27 + 23) < 0)
        {
          v27 = *v27;
        }

        v29 = v21 + 2;
        memcpy(v21 + 2, v27, v28);
        v21 = &v29[v28];
      }

      v26 += 8;
      --v25;
    }

    while (v25);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v31 = *(a1 + 100);
    *v21 = 48;
    v21[1] = v31;
    if (v31 > 0x7F)
    {
      v21[1] = v31 | 0x80;
      v32 = v31 >> 7;
      v21[2] = v31 >> 7;
      v30 = v21 + 3;
      if (v31 >= 0x4000)
      {
        LOBYTE(v33) = v21[2];
        do
        {
          *(v30 - 1) = v33 | 0x80;
          v33 = v32 >> 7;
          *v30++ = v32 >> 7;
          v34 = v32 >> 14;
          v32 >>= 7;
        }

        while (v34);
      }
    }

    else
    {
      v30 = v21 + 2;
    }
  }

  else
  {
    v30 = v21;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v30)
    {
      v30 = sub_225EB68(a3, v30);
    }

    v35 = *(a1 + 104);
    *v30 = 57;
    *(v30 + 1) = v35;
    v30 += 9;
  }

  v36 = *(a1 + 8);
  if ((v36 & 1) == 0)
  {
    return v30;
  }

  v38 = v36 & 0xFFFFFFFFFFFFFFFCLL;
  v39 = *(v38 + 31);
  if (v39 < 0)
  {
    v40 = *(v38 + 8);
    v39 = *(v38 + 16);
  }

  else
  {
    v40 = (v38 + 8);
  }

  if ((*a3 - v30) >= v39)
  {
    v41 = v39;
    memcpy(v30, v40, v39);
    v30 += v41;
    return v30;
  }

  return sub_1957130(a3, v40, v39, v30);
}

uint64_t sub_1407158(uint64_t a1)
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
      v7 = sub_1407B68(v6);
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
      v14 = sub_1406508(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 80);
  result = v9 + v15;
  if (v15 >= 1)
  {
    v17 = (*(a1 + 88) + 8);
    do
    {
      v18 = *v17++;
      v19 = *(v18 + 23);
      v20 = *(v18 + 8);
      if ((v19 & 0x80u) == 0)
      {
        v20 = v19;
      }

      result += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      --v15;
    }

    while (v15);
  }

  v21 = *(a1 + 16);
  if ((v21 & 0xF) != 0)
  {
    if (v21)
    {
      v22 = *(a1 + 96);
      v23 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v22 >= 0)
      {
        v24 = v23;
      }

      else
      {
        v24 = 11;
      }

      result += v24;
    }

    if ((v21 & 2) != 0)
    {
      result += ((9 * (__clz(*(a1 + 100) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v21 & 4) != 0)
    {
      result += 9;
    }

    if ((v21 & 8) != 0)
    {
      result += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v25 = *(a1 + 8);
  if (v25)
  {
    v26 = v25 & 0xFFFFFFFFFFFFFFFCLL;
    v27 = *((v25 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v27 < 0)
    {
      v27 = *(v26 + 16);
    }

    result += v27;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_1407340(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1409B84((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_1409C10((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_1201B48(a1 + 72, v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if ((v19 & 0xF) != 0)
  {
    if (v19)
    {
      *(a1 + 96) = *(a2 + 96);
      if ((v19 & 2) == 0)
      {
LABEL_13:
        if ((v19 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_23;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 100) = *(a2 + 100);
    if ((v19 & 4) == 0)
    {
LABEL_14:
      if ((v19 & 8) == 0)
      {
LABEL_16:
        *(a1 + 16) |= v19;
        goto LABEL_17;
      }

LABEL_15:
      *(a1 + 112) = *(a2 + 112);
      goto LABEL_16;
    }

LABEL_23:
    *(a1 + 104) = *(a2 + 104);
    if ((v19 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_140750C(uint64_t a1)
{
  result = sub_1407558(a1 + 24);
  if (result)
  {

    return sub_14075B4(a1 + 48);
  }

  return result;
}

uint64_t sub_1407558(uint64_t a1)
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
      result = sub_14EC4F4(*(v3 + 40));
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

uint64_t sub_14075B4(uint64_t a1)
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
      result = sub_14EC4F4(*(v3 + 24));
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

uint64_t sub_1407620(uint64_t a1)
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

  if (a1 != &off_276FC98 && *(a1 + 40))
  {
    sub_1545F68();
    operator delete();
  }

  if (*(a1 + 8))
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14076E0(uint64_t a1)
{
  sub_1407620(a1);

  operator delete();
}

uint64_t sub_1407718(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  if (*(result + 16))
  {
    result = sub_14EB434(*(result + 40));
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

char *sub_1407778(uint64_t a1, char *a2, int32x2_t *a3)
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
      if (v7 == 16)
      {
        v15 = v6 - 1;
        while (1)
        {
          v26 = v15 + 1;
          v16 = v15[1];
          if (v16 < 0)
          {
            v17 = (v15[2] << 7) + v16;
            LODWORD(v16) = v17 - 128;
            if (v15[2] < 0)
            {
              v15 = sub_19587DC((v15 + 1), (v17 - 128));
              LODWORD(v16) = v18;
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

          v26 = v15;
          v19 = *(a1 + 24);
          if (v19 == *(a1 + 28))
          {
            v20 = v19 + 1;
            sub_1958E5C((a1 + 24), v19 + 1);
            *(*(a1 + 32) + 4 * v19) = v16;
            v15 = v26;
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
        v14 = sub_1958908((a1 + 24), v6, a3);
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

        sub_15520A4(v23);
        v21 = v24;
        *(a1 + 40) = v24;
        v6 = v26;
      }

      v14 = sub_2204D90(a3, v21, v6);
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
LABEL_38:
    v26 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_39:
    ;
  }

  return v26;
}

char *sub_14079B0(uint64_t a1, char *a2, unint64_t *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v5 = *(a1 + 40);
    *a2 = 10;
    v6 = *(v5 + 20);
    a2[1] = v6;
    if (v6 > 0x7F)
    {
      v7 = sub_19575D0(v6, a2 + 1);
    }

    else
    {
      v7 = a2 + 2;
    }

    a2 = sub_1546828(v5, v7, a3);
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

  if ((*a3 - v11) >= v18)
  {
    v20 = v18;
    memcpy(v11, v19, v18);
    v11 += v20;
    return v11;
  }

  return sub_1957130(a3, v19, v18, v11);
}

uint64_t sub_1407B68(uint64_t a1)
{
  v2 = sub_1959E04((a1 + 24)) + *(a1 + 24);
  if (*(a1 + 16))
  {
    v3 = sub_1546FC4(*(a1 + 40));
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

void sub_1407BF8(uint64_t a1, uint64_t a2)
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

      sub_15520A4(v11);
      *(a1 + 40) = v9;
      v8 = *(a2 + 40);
    }

    if (v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = &off_2776C60;
    }

    sub_14EC04C(v9, v12);
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1407CF0(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_14EC4F4(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1407D30(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26DFD48;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = a1;
  *(result + 64) = a1;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = &qword_278E990;
  *(result + 96) = &qword_278E990;
  *(result + 104) = &qword_278E990;
  *(result + 112) = 0;
  return result;
}

uint64_t sub_1407DEC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26DFDC8;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1407E68(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26DFE48;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 15768000;
  return result;
}

void *sub_1407F20(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26DFEC8;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = 0;
  return result;
}

void sub_1409094(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_13F3EEC(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_1409118(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_13F3048(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_140919C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_13F564C(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_1409220(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_13F36E4(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

std::string *sub_14092A4(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_13F64FC(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_1409320(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_1409330(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_13F63B0(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_14093AC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_14093BC(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_13F6694(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_1409438(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_1409448(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_13F6460(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_14094C4(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1409540(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_13F87A4(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_14095C4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_13FAEE0(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_1409648(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_140474C(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_14096C4(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_14096D4(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_1404A5C(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_12E6F94(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_140996C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_16E8374();
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_14099F0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1407620(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_1409A74(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1406050(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_1409AF8(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_16F5BD8(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_1409B74(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1409B84(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_1407F20(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_1409C00(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1409C10(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_1407DEC(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_1409C8C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1409C9C()
{
  dword_278D710 = 100;
  qword_278D718 = &off_276F3C8;
  sub_194F72C(&off_278B980, 100, 11, 0, 0, &off_276F3C8);
  dword_278D720 = 101;
  qword_278D728 = &off_276F608;

  sub_194F72C(&off_278B980, 101, 11, 0, 0, &off_276F608);
}

uint64_t sub_1409D34()
{
  qword_27CB4D8 = "AB_REQUEST_TYPE_GET_ALL_POSSIBLE_ASSIGNMENTSAB_REQUEST_TYPE_GET_ASSIGNMENTS_FOR_USERAB_REQUEST_TYPE_UNKNOWN";
  unk_27CB4E0 = 44;
  dword_27CB4E8 = 2;
  qword_27CB4F0 = "AB_REQUEST_TYPE_GET_ASSIGNMENTS_FOR_USERAB_REQUEST_TYPE_UNKNOWN";
  unk_27CB4F8 = 40;
  dword_27CB500 = 1;
  qword_27CB508 = "AB_REQUEST_TYPE_UNKNOWN";
  unk_27CB510 = 23;
  dword_27CB518 = 0;
  qword_27CB520 = "SERVICE_TYPE_DISPATCHERSERVICE_TYPE_ROUTINGSERVICE_TYPE_TILESSERVICE_TYPE_UNKNOWN";
  *algn_27CB528 = 23;
  dword_27CB530 = 1;
  qword_27CB538 = "SERVICE_TYPE_ROUTINGSERVICE_TYPE_TILESSERVICE_TYPE_UNKNOWN";
  unk_27CB540 = 20;
  dword_27CB548 = 2;
  qword_27CB550 = "SERVICE_TYPE_TILESSERVICE_TYPE_UNKNOWN";
  unk_27CB558 = 18;
  dword_27CB560 = 3;
  qword_27CB568 = "SERVICE_TYPE_UNKNOWN";
  unk_27CB570 = 20;
  dword_27CB578 = 0;
  qword_27CB580 = "ABVAL_BOOLABVAL_DOUBLEABVAL_SINT64ABVAL_STRINGABVAL_UNKNOWN";
  *algn_27CB588 = 10;
  dword_27CB590 = 4;
  qword_27CB598 = "ABVAL_DOUBLEABVAL_SINT64ABVAL_STRINGABVAL_UNKNOWN";
  unk_27CB5A0 = 12;
  dword_27CB5A8 = 2;
  qword_27CB5B0 = "ABVAL_SINT64ABVAL_STRINGABVAL_UNKNOWN";
  unk_27CB5B8 = 12;
  dword_27CB5C0 = 1;
  qword_27CB5C8 = "ABVAL_STRINGABVAL_UNKNOWN";
  unk_27CB5D0 = 12;
  dword_27CB5D8 = 3;
  qword_27CB5E0 = "ABVAL_UNKNOWN";
  unk_27CB5E8 = 13;
  dword_27CB5F0 = 0;
  qword_27CB5F8 = "ADDRESS_LOCATION_EXACT_MATCHADDRESS_LOCATION_FAR_AWAYADDRESS_LOCATION_NEARBY";
  unk_27CB600 = 28;
  dword_27CB608 = 0;
  qword_27CB610 = "ADDRESS_LOCATION_FAR_AWAYADDRESS_LOCATION_NEARBY";
  unk_27CB618 = 25;
  dword_27CB620 = 2;
  qword_27CB628 = "ADDRESS_LOCATION_NEARBY";
  unk_27CB630 = 23;
  dword_27CB638 = 1;
  qword_27CB640 = "ANNOUNCEMENT_APPLICATIONANNOUNCEMENT_LOCK_SCREEN";
  *algn_27CB648 = 24;
  dword_27CB650 = 2;
  qword_27CB658 = "ANNOUNCEMENT_LOCK_SCREEN";
  unk_27CB660 = 24;
  dword_27CB668 = 1;
  qword_27CB670 = "PHASE_BETAPHASE_INTERNALPHASE_PRODUCTION";
  *algn_27CB678 = 10;
  dword_27CB680 = 3;
  qword_27CB688 = "PHASE_INTERNALPHASE_PRODUCTION";
  unk_27CB690 = 14;
  dword_27CB698 = 2;
  qword_27CB6A0 = "PHASE_PRODUCTION";
  unk_27CB6A8 = 16;
  dword_27CB6B0 = 1;
  qword_27CB6B8 = "ANNOUNCEMENT_TYPE_ENHANCED_DETAILANNOUNCEMENT_TYPE_FLYOVERANNOUNCEMENT_TYPE_GENERALANNOUNCEMENT_TYPE_LANE_GUIDANCEANNOUNCEMENT_TYPE_LOOK_AROUNDANNOUNCEMENT_TYPE_TRANSITANNOUNCEMENT_TYPE_UNKNOWNANNOUNCEMENT_TYPE_VENUES";
  unk_27CB6C0 = 33;
  dword_27CB6C8 = 5;
  qword_27CB6D0 = "ANNOUNCEMENT_TYPE_FLYOVERANNOUNCEMENT_TYPE_GENERALANNOUNCEMENT_TYPE_LANE_GUIDANCEANNOUNCEMENT_TYPE_LOOK_AROUNDANNOUNCEMENT_TYPE_TRANSITANNOUNCEMENT_TYPE_UNKNOWNANNOUNCEMENT_TYPE_VENUES";
  unk_27CB6D8 = 25;
  dword_27CB6E0 = 2;
  qword_27CB6E8 = "ANNOUNCEMENT_TYPE_GENERALANNOUNCEMENT_TYPE_LANE_GUIDANCEANNOUNCEMENT_TYPE_LOOK_AROUNDANNOUNCEMENT_TYPE_TRANSITANNOUNCEMENT_TYPE_UNKNOWNANNOUNCEMENT_TYPE_VENUES";
  unk_27CB6F0 = 25;
  dword_27CB6F8 = 1;
  qword_27CB700 = "ANNOUNCEMENT_TYPE_LANE_GUIDANCEANNOUNCEMENT_TYPE_LOOK_AROUNDANNOUNCEMENT_TYPE_TRANSITANNOUNCEMENT_TYPE_UNKNOWNANNOUNCEMENT_TYPE_VENUES";
  unk_27CB708 = 31;
  dword_27CB710 = 6;
  qword_27CB718 = "ANNOUNCEMENT_TYPE_LOOK_AROUNDANNOUNCEMENT_TYPE_TRANSITANNOUNCEMENT_TYPE_UNKNOWNANNOUNCEMENT_TYPE_VENUES";
  unk_27CB720 = 29;
  dword_27CB728 = 7;
  qword_27CB730 = "ANNOUNCEMENT_TYPE_TRANSITANNOUNCEMENT_TYPE_UNKNOWNANNOUNCEMENT_TYPE_VENUES";
  unk_27CB738 = 25;
  dword_27CB740 = 3;
  qword_27CB748 = "ANNOUNCEMENT_TYPE_UNKNOWNANNOUNCEMENT_TYPE_VENUES";
  unk_27CB750 = 25;
  dword_27CB758 = 0;
  qword_27CB760 = "ANNOUNCEMENT_TYPE_VENUES";
  unk_27CB768 = 24;
  dword_27CB770 = 4;
  qword_27CB778 = "EXTENSION_SUPPORT_ALLOW_APPEXTENSION_SUPPORT_BLACKLIST_APPEXTENSION_SUPPORT_OFFER_APP";
  unk_27CB780 = 27;
  dword_27CB788 = 1;
  qword_27CB790 = "EXTENSION_SUPPORT_BLACKLIST_APPEXTENSION_SUPPORT_OFFER_APP";
  unk_27CB798 = 31;
  dword_27CB7A0 = 3;
  qword_27CB7A8 = "EXTENSION_SUPPORT_OFFER_APP";
  unk_27CB7B0 = 27;
  dword_27CB7B8 = 2;
  qword_27CB7C0 = "CALLOUTINFOLISTPHOTOSREVIEWSSNIPPET";
  *algn_27CB7C8 = 7;
  dword_27CB7D0 = 5;
  qword_27CB7D8 = "INFOLISTPHOTOSREVIEWSSNIPPET";
  unk_27CB7E0 = 4;
  dword_27CB7E8 = 1;
  qword_27CB7F0 = "LISTPHOTOSREVIEWSSNIPPET";
  unk_27CB7F8 = 4;
  dword_27CB800 = 4;
  qword_27CB808 = "PHOTOSREVIEWSSNIPPET";
  unk_27CB810 = 6;
  dword_27CB818 = 3;
  qword_27CB820 = "REVIEWSSNIPPET";
  unk_27CB828 = 7;
  dword_27CB830 = 2;
  qword_27CB838 = "SNIPPET";
  unk_27CB840 = 7;
  dword_27CB848 = 6;
  qword_27CB850 = "ACTION_COMPONENT_ALLACTION_COMPONENT_DEALACTION_COMPONENT_PHOTOACTION_COMPONENT_REVIEW";
  *algn_27CB858 = 20;
  dword_27CB860 = 0;
  qword_27CB868 = "ACTION_COMPONENT_DEALACTION_COMPONENT_PHOTOACTION_COMPONENT_REVIEW";
  unk_27CB870 = 21;
  dword_27CB878 = 3;
  qword_27CB880 = "ACTION_COMPONENT_PHOTOACTION_COMPONENT_REVIEW";
  unk_27CB888 = 22;
  dword_27CB890 = 1;
  qword_27CB898 = "ACTION_COMPONENT_REVIEW";
  unk_27CB8A0 = 23;
  dword_27CB8A8 = 2;
  qword_27CB8B0 = "ACTION_CHECKINACTION_CREATEACTION_EDITACTION_UNKNOWNACTION_VIEW";
  *algn_27CB8B8 = 14;
  dword_27CB8C0 = 4;
  qword_27CB8C8 = "ACTION_CREATEACTION_EDITACTION_UNKNOWNACTION_VIEW";
  unk_27CB8D0 = 13;
  dword_27CB8D8 = 3;
  qword_27CB8E0 = "ACTION_EDITACTION_UNKNOWNACTION_VIEW";
  unk_27CB8E8 = 11;
  dword_27CB8F0 = 2;
  qword_27CB8F8 = "ACTION_UNKNOWNACTION_VIEW";
  unk_27CB900 = 14;
  dword_27CB908 = 0;
  qword_27CB910 = "ACTION_VIEW";
  unk_27CB918 = 11;
  dword_27CB920 = 1;
  qword_27CB928 = "FEATURE_TYPE_COMPOSITEFEATURE_TYPE_RESULTFEATURE_TYPE_SOURCEFEATURE_TYPE_UNKNOWN";
  unk_27CB930 = 22;
  dword_27CB938 = 3;
  qword_27CB940 = "FEATURE_TYPE_RESULTFEATURE_TYPE_SOURCEFEATURE_TYPE_UNKNOWN";
  unk_27CB948 = 19;
  dword_27CB950 = 2;
  qword_27CB958 = "FEATURE_TYPE_SOURCEFEATURE_TYPE_UNKNOWN";
  unk_27CB960 = 19;
  dword_27CB968 = 1;
  qword_27CB970 = "FEATURE_TYPE_UNKNOWN";
  unk_27CB978 = 20;
  dword_27CB980 = 0;
  qword_27CB988 = "FUNCTION_TYPE_DISCRETEFUNCTION_TYPE_LINEARFUNCTION_TYPE_UNKNOWN";
  unk_27CB990 = 22;
  dword_27CB998 = 2;
  qword_27CB9A0 = "FUNCTION_TYPE_LINEARFUNCTION_TYPE_UNKNOWN";
  unk_27CB9A8 = 20;
  dword_27CB9B0 = 1;
  qword_27CB9B8 = "FUNCTION_TYPE_UNKNOWN";
  unk_27CB9C0 = 21;
  dword_27CB9C8 = 0;
  qword_27CB9E8 = "SUGGESTION_CHAINSUGGESTION_CLIENT_RESOLVEDSUGGESTION_COLLECTIONSUGGESTION_DIRECTION_INTENTSUGGESTION_MISCSUGGESTION_MIXED_INTENTSUGGESTION_PUBLISHERSUGGESTION_TRANSITSUGGESTION_UNKNOWN";
  qword_27CBA00 = "SUGGESTION_CLIENT_RESOLVEDSUGGESTION_COLLECTIONSUGGESTION_DIRECTION_INTENTSUGGESTION_MISCSUGGESTION_MIXED_INTENTSUGGESTION_PUBLISHERSUGGESTION_TRANSITSUGGESTION_UNKNOWN";
  qword_27CBA18 = "SUGGESTION_COLLECTIONSUGGESTION_DIRECTION_INTENTSUGGESTION_MISCSUGGESTION_MIXED_INTENTSUGGESTION_PUBLISHERSUGGESTION_TRANSITSUGGESTION_UNKNOWN";
  qword_27CBA30 = "SUGGESTION_DIRECTION_INTENTSUGGESTION_MISCSUGGESTION_MIXED_INTENTSUGGESTION_PUBLISHERSUGGESTION_TRANSITSUGGESTION_UNKNOWN";
  qword_27CBA48 = "SUGGESTION_MISCSUGGESTION_MIXED_INTENTSUGGESTION_PUBLISHERSUGGESTION_TRANSITSUGGESTION_UNKNOWN";
  qword_27CBA60 = "SUGGESTION_MIXED_INTENTSUGGESTION_PUBLISHERSUGGESTION_TRANSITSUGGESTION_UNKNOWN";
  qword_27CBA78 = "SUGGESTION_PUBLISHERSUGGESTION_TRANSITSUGGESTION_UNKNOWN";
  qword_27CBA90 = "SUGGESTION_TRANSITSUGGESTION_UNKNOWN";
  qword_27CBAA8 = "SUGGESTION_UNKNOWN";
  qword_27CB9D0 = "SUGGESTION_CATEGORYSUGGESTION_CHAINSUGGESTION_CLIENT_RESOLVEDSUGGESTION_COLLECTIONSUGGESTION_DIRECTION_INTENTSUGGESTION_MISCSUGGESTION_MIXED_INTENTSUGGESTION_PUBLISHERSUGGESTION_TRANSITSUGGESTION_UNKNOWN";
  *algn_27CB9D8 = 19;
  dword_27CB9E0 = 1;
  qword_27CB9F0 = 16;
  dword_27CB9F8 = 3;
  qword_27CBA08 = 26;
  dword_27CBA10 = 6;
  qword_27CBA20 = 21;
  dword_27CBA28 = 8;
  qword_27CBA38 = 27;
  dword_27CBA40 = 7;
  qword_27CBA50 = 15;
  dword_27CBA58 = 5;
  qword_27CBA68 = 23;
  dword_27CBA70 = 4;
  qword_27CBA80 = 20;
  dword_27CBA88 = 9;
  qword_27CBA98 = 18;
  dword_27CBAA0 = 2;
  qword_27CBAB0 = 18;
  dword_27CBAB8 = 0;
  qword_27CBAD8 = "BRAND_PROFILEBUSINESSCATEGORYCLIENT_RESOLVEDCOLLECTIONDIRECTION_INTENTOFFLINE_AREAPUBLISHERQUERY";
  unk_27CBAE0 = 13;
  qword_27CBAF0 = "BUSINESSCATEGORYCLIENT_RESOLVEDCOLLECTIONDIRECTION_INTENTOFFLINE_AREAPUBLISHERQUERY";
  unk_27CBAF8 = 8;
  qword_27CBB08 = "CATEGORYCLIENT_RESOLVEDCOLLECTIONDIRECTION_INTENTOFFLINE_AREAPUBLISHERQUERY";
  unk_27CBB10 = 8;
  qword_27CBB20 = "CLIENT_RESOLVEDCOLLECTIONDIRECTION_INTENTOFFLINE_AREAPUBLISHERQUERY";
  unk_27CBB28 = 15;
  qword_27CBB38 = "COLLECTIONDIRECTION_INTENTOFFLINE_AREAPUBLISHERQUERY";
  qword_27CBB50 = "DIRECTION_INTENTOFFLINE_AREAPUBLISHERQUERY";
  unk_27CBB58 = 16;
  qword_27CBB68 = "OFFLINE_AREAPUBLISHERQUERY";
  unk_27CBB70 = 12;
  qword_27CBB80 = "PUBLISHERQUERY";
  unk_27CBB88 = 9;
  qword_27CBB98 = "QUERY";
  unk_27CBBA0 = 5;
  qword_27CBAC0 = "ADDRESSBRAND_PROFILEBUSINESSCATEGORYCLIENT_RESOLVEDCOLLECTIONDIRECTION_INTENTOFFLINE_AREAPUBLISHERQUERY";
  *algn_27CBAC8 = 7;
  dword_27CBAD0 = 2;
  dword_27CBAE8 = 4;
  dword_27CBB00 = 1;
  dword_27CBB18 = 3;
  dword_27CBB30 = 6;
  qword_27CBB40 = 10;
  dword_27CBB48 = 8;
  dword_27CBB60 = 7;
  dword_27CBB78 = 5;
  dword_27CBB90 = 9;
  dword_27CBBA8 = 0;
  qword_27CBBC8 = "SHOW_RESULTS_ON_MAP";
  unk_27CBBD0 = 19;
  qword_27CBBB0 = "SHOW_RESULTS_IN_LIST_VIEWSHOW_RESULTS_ON_MAP";
  *algn_27CBBB8 = 25;
  dword_27CBBC0 = 1;
  dword_27CBBD8 = 0;
  qword_27CBC10 = "CONTACT_WITH_HOME_LOCATIONCONTACT_WITH_LIVE_LOCATIONCONTACT_WITH_NO_LOCATIONCONTACT_WITH_OTHER_LOCATIONCONTACT_WITH_SCHOOL_LOCATIONCONTACT_WITH_WORK_LOCATIONDISTANCE_TO_SUGGESTIONDISTANCE_TO_SUGGESTION_FROM_VIEWPORT_CENTERFRACTION_OF_MATCHIS_CONTAINED_IN_VIEWPORTIS_FAVORITEMAPS_SUGGEST_CONTACT_RELEVANCE_SCOREMAPS_SUGGEST_IS_TOURIST_SCOREMAPS_SUGGEST_POI_RELEVANCE_SCOREMAPS_SUGGEST_TIME_SINCE_LAST_INTERACTEDMATCHED_USING_ADDRESSMATCHED_USING_EVENT_NAMEMATCHED_USING_LABELMATCHED_USING_NAMEMATCHED_USING_ORGANIZATIONPEOPLE_SUGGESTER_RANKPOI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  qword_27CBC40 = "CONTACT_WITH_NO_LOCATIONCONTACT_WITH_OTHER_LOCATIONCONTACT_WITH_SCHOOL_LOCATIONCONTACT_WITH_WORK_LOCATIONDISTANCE_TO_SUGGESTIONDISTANCE_TO_SUGGESTION_FROM_VIEWPORT_CENTERFRACTION_OF_MATCHIS_CONTAINED_IN_VIEWPORTIS_FAVORITEMAPS_SUGGEST_CONTACT_RELEVANCE_SCOREMAPS_SUGGEST_IS_TOURIST_SCOREMAPS_SUGGEST_POI_RELEVANCE_SCOREMAPS_SUGGEST_TIME_SINCE_LAST_INTERACTEDMATCHED_USING_ADDRESSMATCHED_USING_EVENT_NAMEMATCHED_USING_LABELMATCHED_USING_NAMEMATCHED_USING_ORGANIZATIONPEOPLE_SUGGESTER_RANKPOI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  qword_27CBC88 = "CONTACT_WITH_WORK_LOCATIONDISTANCE_TO_SUGGESTIONDISTANCE_TO_SUGGESTION_FROM_VIEWPORT_CENTERFRACTION_OF_MATCHIS_CONTAINED_IN_VIEWPORTIS_FAVORITEMAPS_SUGGEST_CONTACT_RELEVANCE_SCOREMAPS_SUGGEST_IS_TOURIST_SCOREMAPS_SUGGEST_POI_RELEVANCE_SCOREMAPS_SUGGEST_TIME_SINCE_LAST_INTERACTEDMATCHED_USING_ADDRESSMATCHED_USING_EVENT_NAMEMATCHED_USING_LABELMATCHED_USING_NAMEMATCHED_USING_ORGANIZATIONPEOPLE_SUGGESTER_RANKPOI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  dword_27CBC98 = 25;
  qword_27CBCD0 = "FRACTION_OF_MATCHIS_CONTAINED_IN_VIEWPORTIS_FAVORITEMAPS_SUGGEST_CONTACT_RELEVANCE_SCOREMAPS_SUGGEST_IS_TOURIST_SCOREMAPS_SUGGEST_POI_RELEVANCE_SCOREMAPS_SUGGEST_TIME_SINCE_LAST_INTERACTEDMATCHED_USING_ADDRESSMATCHED_USING_EVENT_NAMEMATCHED_USING_LABELMATCHED_USING_NAMEMATCHED_USING_ORGANIZATIONPEOPLE_SUGGESTER_RANKPOI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  qword_27CBD18 = "MAPS_SUGGEST_CONTACT_RELEVANCE_SCOREMAPS_SUGGEST_IS_TOURIST_SCOREMAPS_SUGGEST_POI_RELEVANCE_SCOREMAPS_SUGGEST_TIME_SINCE_LAST_INTERACTEDMATCHED_USING_ADDRESSMATCHED_USING_EVENT_NAMEMATCHED_USING_LABELMATCHED_USING_NAMEMATCHED_USING_ORGANIZATIONPEOPLE_SUGGESTER_RANKPOI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  qword_27CBD30 = "MAPS_SUGGEST_IS_TOURIST_SCOREMAPS_SUGGEST_POI_RELEVANCE_SCOREMAPS_SUGGEST_TIME_SINCE_LAST_INTERACTEDMATCHED_USING_ADDRESSMATCHED_USING_EVENT_NAMEMATCHED_USING_LABELMATCHED_USING_NAMEMATCHED_USING_ORGANIZATIONPEOPLE_SUGGESTER_RANKPOI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  qword_27CBD60 = "MAPS_SUGGEST_TIME_SINCE_LAST_INTERACTEDMATCHED_USING_ADDRESSMATCHED_USING_EVENT_NAMEMATCHED_USING_LABELMATCHED_USING_NAMEMATCHED_USING_ORGANIZATIONPEOPLE_SUGGESTER_RANKPOI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  dword_27CBD70 = 20;
  qword_27CBDC0 = "MATCHED_USING_NAMEMATCHED_USING_ORGANIZATIONPEOPLE_SUGGESTER_RANKPOI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  qword_27CBDF0 = "PEOPLE_SUGGESTER_RANKPOI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  qword_27CBE08 = "POI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  qword_27CBE20 = "POI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  qword_27CBE38 = "POI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  qword_27CBE50 = "POI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  qword_27CBE68 = "PREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  qword_27CBE80 = "PREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  qword_27CBE10 = 31;
  dword_27CBE90 = 31;
  qword_27CBE98 = "PREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  qword_27CBEB0 = "PREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  qword_27CBE58 = 33;
  dword_27CBEC0 = 33;
  qword_27CBEC8 = "PREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  qword_27CBEE0 = "PREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  qword_27CBEF8 = "PREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  dword_27CBF08 = 34;
  qword_27CBDF8 = 21;
  dword_27CBE00 = 10;
  qword_27CBF10 = "PREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  qword_27CBDD8 = "MATCHED_USING_ORGANIZATIONPEOPLE_SUGGESTER_RANKPOI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  unk_27CBDE0 = 26;
  dword_27CBDD0 = 5;
  dword_27CBDE8 = 6;
  qword_27CBF18 = 44;
  qword_27CBDA8 = "MATCHED_USING_LABELMATCHED_USING_NAMEMATCHED_USING_ORGANIZATIONPEOPLE_SUGGESTER_RANKPOI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  unk_27CBDB0 = 19;
  dword_27CBDB8 = 8;
  qword_27CBDC8 = 18;
  qword_27CBF28 = "PREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  qword_27CBD90 = "MATCHED_USING_EVENT_NAMEMATCHED_USING_LABELMATCHED_USING_NAMEMATCHED_USING_ORGANIZATIONPEOPLE_SUGGESTER_RANKPOI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  unk_27CBD98 = 24;
  dword_27CBDA0 = 9;
  qword_27CBF40 = "PREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  qword_27CBD78 = "MATCHED_USING_ADDRESSMATCHED_USING_EVENT_NAMEMATCHED_USING_LABELMATCHED_USING_NAMEMATCHED_USING_ORGANIZATIONPEOPLE_SUGGESTER_RANKPOI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  unk_27CBD80 = 21;
  dword_27CBD88 = 7;
  qword_27CBD48 = "MAPS_SUGGEST_POI_RELEVANCE_SCOREMAPS_SUGGEST_TIME_SINCE_LAST_INTERACTEDMATCHED_USING_ADDRESSMATCHED_USING_EVENT_NAMEMATCHED_USING_LABELMATCHED_USING_NAMEMATCHED_USING_ORGANIZATIONPEOPLE_SUGGESTER_RANKPOI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  unk_27CBD50 = 32;
  dword_27CBD58 = 18;
  qword_27CBD68 = 39;
  qword_27CBD20 = 36;
  dword_27CBD28 = 17;
  qword_27CBD38 = 29;
  dword_27CBD40 = 19;
  qword_27CBEE8 = 41;
  dword_27CBF50 = 41;
  qword_27CBD00 = "IS_FAVORITEMAPS_SUGGEST_CONTACT_RELEVANCE_SCOREMAPS_SUGGEST_IS_TOURIST_SCOREMAPS_SUGGEST_POI_RELEVANCE_SCOREMAPS_SUGGEST_TIME_SINCE_LAST_INTERACTEDMATCHED_USING_ADDRESSMATCHED_USING_EVENT_NAMEMATCHED_USING_LABELMATCHED_USING_NAMEMATCHED_USING_ORGANIZATIONPEOPLE_SUGGESTER_RANKPOI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  unk_27CBD08 = 11;
  dword_27CBD10 = 12;
  qword_27CBF58 = "PREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  qword_27CBCE8 = "IS_CONTAINED_IN_VIEWPORTIS_FAVORITEMAPS_SUGGEST_CONTACT_RELEVANCE_SCOREMAPS_SUGGEST_IS_TOURIST_SCOREMAPS_SUGGEST_POI_RELEVANCE_SCOREMAPS_SUGGEST_TIME_SINCE_LAST_INTERACTEDMATCHED_USING_ADDRESSMATCHED_USING_EVENT_NAMEMATCHED_USING_LABELMATCHED_USING_NAMEMATCHED_USING_ORGANIZATIONPEOPLE_SUGGESTER_RANKPOI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  unk_27CBCF0 = 24;
  dword_27CBCE0 = 2;
  dword_27CBCF8 = 22;
  qword_27CBCB8 = "DISTANCE_TO_SUGGESTION_FROM_VIEWPORT_CENTERFRACTION_OF_MATCHIS_CONTAINED_IN_VIEWPORTIS_FAVORITEMAPS_SUGGEST_CONTACT_RELEVANCE_SCOREMAPS_SUGGEST_IS_TOURIST_SCOREMAPS_SUGGEST_POI_RELEVANCE_SCOREMAPS_SUGGEST_TIME_SINCE_LAST_INTERACTEDMATCHED_USING_ADDRESSMATCHED_USING_EVENT_NAMEMATCHED_USING_LABELMATCHED_USING_NAMEMATCHED_USING_ORGANIZATIONPEOPLE_SUGGESTER_RANKPOI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  unk_27CBCC0 = 43;
  dword_27CBCC8 = 21;
  qword_27CBCD8 = 17;
  qword_27CBCA0 = "DISTANCE_TO_SUGGESTIONDISTANCE_TO_SUGGESTION_FROM_VIEWPORT_CENTERFRACTION_OF_MATCHIS_CONTAINED_IN_VIEWPORTIS_FAVORITEMAPS_SUGGEST_CONTACT_RELEVANCE_SCOREMAPS_SUGGEST_IS_TOURIST_SCOREMAPS_SUGGEST_POI_RELEVANCE_SCOREMAPS_SUGGEST_TIME_SINCE_LAST_INTERACTEDMATCHED_USING_ADDRESSMATCHED_USING_EVENT_NAMEMATCHED_USING_LABELMATCHED_USING_NAMEMATCHED_USING_ORGANIZATIONPEOPLE_SUGGESTER_RANKPOI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  unk_27CBCA8 = 22;
  dword_27CBCB0 = 3;
  qword_27CBF30 = 45;
  qword_27CBF60 = 45;
  qword_27CBC70 = "CONTACT_WITH_SCHOOL_LOCATIONCONTACT_WITH_WORK_LOCATIONDISTANCE_TO_SUGGESTIONDISTANCE_TO_SUGGESTION_FROM_VIEWPORT_CENTERFRACTION_OF_MATCHIS_CONTAINED_IN_VIEWPORTIS_FAVORITEMAPS_SUGGEST_CONTACT_RELEVANCE_SCOREMAPS_SUGGEST_IS_TOURIST_SCOREMAPS_SUGGEST_POI_RELEVANCE_SCOREMAPS_SUGGEST_TIME_SINCE_LAST_INTERACTEDMATCHED_USING_ADDRESSMATCHED_USING_EVENT_NAMEMATCHED_USING_LABELMATCHED_USING_NAMEMATCHED_USING_ORGANIZATIONPEOPLE_SUGGESTER_RANKPOI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  unk_27CBC78 = 28;
  dword_27CBC80 = 26;
  qword_27CBC90 = 26;
  qword_27CBC58 = "CONTACT_WITH_OTHER_LOCATIONCONTACT_WITH_SCHOOL_LOCATIONCONTACT_WITH_WORK_LOCATIONDISTANCE_TO_SUGGESTIONDISTANCE_TO_SUGGESTION_FROM_VIEWPORT_CENTERFRACTION_OF_MATCHIS_CONTAINED_IN_VIEWPORTIS_FAVORITEMAPS_SUGGEST_CONTACT_RELEVANCE_SCOREMAPS_SUGGEST_IS_TOURIST_SCOREMAPS_SUGGEST_POI_RELEVANCE_SCOREMAPS_SUGGEST_TIME_SINCE_LAST_INTERACTEDMATCHED_USING_ADDRESSMATCHED_USING_EVENT_NAMEMATCHED_USING_LABELMATCHED_USING_NAMEMATCHED_USING_ORGANIZATIONPEOPLE_SUGGESTER_RANKPOI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  unk_27CBC60 = 27;
  dword_27CBC50 = 29;
  dword_27CBC68 = 27;
  dword_27CBF68 = 35;
  qword_27CBC28 = "CONTACT_WITH_LIVE_LOCATIONCONTACT_WITH_NO_LOCATIONCONTACT_WITH_OTHER_LOCATIONCONTACT_WITH_SCHOOL_LOCATIONCONTACT_WITH_WORK_LOCATIONDISTANCE_TO_SUGGESTIONDISTANCE_TO_SUGGESTION_FROM_VIEWPORT_CENTERFRACTION_OF_MATCHIS_CONTAINED_IN_VIEWPORTIS_FAVORITEMAPS_SUGGEST_CONTACT_RELEVANCE_SCOREMAPS_SUGGEST_IS_TOURIST_SCOREMAPS_SUGGEST_POI_RELEVANCE_SCOREMAPS_SUGGEST_TIME_SINCE_LAST_INTERACTEDMATCHED_USING_ADDRESSMATCHED_USING_EVENT_NAMEMATCHED_USING_LABELMATCHED_USING_NAMEMATCHED_USING_ORGANIZATIONPEOPLE_SUGGESTER_RANKPOI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  unk_27CBC30 = 26;
  dword_27CBC38 = 28;
  qword_27CBC48 = 24;
  qword_27CBBF8 = "CONTACT_RELEVANCE_SCORECONTACT_WITH_HOME_LOCATIONCONTACT_WITH_LIVE_LOCATIONCONTACT_WITH_NO_LOCATIONCONTACT_WITH_OTHER_LOCATIONCONTACT_WITH_SCHOOL_LOCATIONCONTACT_WITH_WORK_LOCATIONDISTANCE_TO_SUGGESTIONDISTANCE_TO_SUGGESTION_FROM_VIEWPORT_CENTERFRACTION_OF_MATCHIS_CONTAINED_IN_VIEWPORTIS_FAVORITEMAPS_SUGGEST_CONTACT_RELEVANCE_SCOREMAPS_SUGGEST_IS_TOURIST_SCOREMAPS_SUGGEST_POI_RELEVANCE_SCOREMAPS_SUGGEST_TIME_SINCE_LAST_INTERACTEDMATCHED_USING_ADDRESSMATCHED_USING_EVENT_NAMEMATCHED_USING_LABELMATCHED_USING_NAMEMATCHED_USING_ORGANIZATIONPEOPLE_SUGGESTER_RANKPOI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  unk_27CBC00 = 23;
  dword_27CBC08 = 4;
  qword_27CBC18 = 26;
  dword_27CBC20 = 24;
  qword_27CBF70 = "PREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  qword_27CBBE0 = "AGECONTACT_RELEVANCE_SCORECONTACT_WITH_HOME_LOCATIONCONTACT_WITH_LIVE_LOCATIONCONTACT_WITH_NO_LOCATIONCONTACT_WITH_OTHER_LOCATIONCONTACT_WITH_SCHOOL_LOCATIONCONTACT_WITH_WORK_LOCATIONDISTANCE_TO_SUGGESTIONDISTANCE_TO_SUGGESTION_FROM_VIEWPORT_CENTERFRACTION_OF_MATCHIS_CONTAINED_IN_VIEWPORTIS_FAVORITEMAPS_SUGGEST_CONTACT_RELEVANCE_SCOREMAPS_SUGGEST_IS_TOURIST_SCOREMAPS_SUGGEST_POI_RELEVANCE_SCOREMAPS_SUGGEST_TIME_SINCE_LAST_INTERACTEDMATCHED_USING_ADDRESSMATCHED_USING_EVENT_NAMEMATCHED_USING_LABELMATCHED_USING_NAMEMATCHED_USING_ORGANIZATIONPEOPLE_SUGGESTER_RANKPOI_OPEN_STATE_CURRENTLY_CLOSEDPOI_OPEN_STATE_IS_CLOSING_SOONPOI_OPEN_STATE_IS_OPENING_SOONPOI_OPEN_STATE_PERMANENTLY_CLOSEDPREFIX_LAST_TOKEN_MATCH_COVERPREFIX_MATCH_COVERPREFIX_MATCH_POSITIONPREFIX_MATCH_WORD_BOUNDARYPREFIX_TOKEN_IS_NUMBER_FIRST_QUERY_TOKENPREFIX_TOKEN_IS_NUMBER_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LENGTH_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_LOCATION_SECOND_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_FIRST_QUERY_TOKENPREFIX_TOKEN_MATCH_POSITION_SECOND_QUERY_TOKENSHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  *algn_27CBBE8 = 3;
  dword_27CBBF0 = 11;
  qword_27CBF88 = "SHOWN_TO_USERTIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  qword_27CBFA0 = "TIME_SINCE_MAP_VIEWPORT_CHANGED_SECONDSUNKNOWN_RESULT_FEATURE";
  dword_27CBF80 = 39;
  qword_27CBFA8 = 39;
  qword_27CBFB8 = "UNKNOWN_RESULT_FEATURE";
  qword_27CBFC0 = 22;
  dword_27CBE18 = 13;
  qword_27CBE28 = 30;
  dword_27CBE30 = 16;
  qword_27CBE40 = 30;
  dword_27CBE48 = 15;
  dword_27CBE60 = 14;
  qword_27CBE70 = 29;
  dword_27CBE78 = 30;
  qword_27CBE88 = 18;
  qword_27CBEA0 = 21;
  dword_27CBEA8 = 32;
  qword_27CBEB8 = 26;
  qword_27CBED0 = 40;
  dword_27CBED8 = 36;
  dword_27CBEF0 = 40;
  qword_27CBF00 = 43;
  dword_27CBF20 = 38;
  dword_27CBF38 = 37;
  qword_27CBF48 = 46;
  qword_27CBF78 = 46;
  qword_27CBF90 = 13;
  dword_27CBF98 = 1;
  dword_27CBFB0 = 23;
  dword_27CBFC8 = 0;
  qword_27CBFE8 = "POI_LABELUNKNOWN_LABEL";
  unk_27CBFF0 = 9;
  qword_27CC000 = "UNKNOWN_LABEL";
  unk_27CC008 = 13;
  qword_27CBFD0 = "AOI_LABELPOI_LABELUNKNOWN_LABEL";
  *algn_27CBFD8 = 9;
  dword_27CBFE0 = 2;
  dword_27CBFF8 = 1;
  dword_27CC010 = 0;
  qword_27CC030 = "RBES_BOOKEDRBES_ERRORRBES_PUNCHED_OUTRBES_SUSPENDEDRBES_UNKNOWN";
  unk_27CC038 = 11;
  qword_27CC048 = "RBES_ERRORRBES_PUNCHED_OUTRBES_SUSPENDEDRBES_UNKNOWN";
  qword_27CC060 = "RBES_PUNCHED_OUTRBES_SUSPENDEDRBES_UNKNOWN";
  qword_27CC078 = "RBES_SUSPENDEDRBES_UNKNOWN";
  unk_27CC080 = 14;
  qword_27CC090 = "RBES_UNKNOWN";
  unk_27CC098 = 12;
  qword_27CC018 = "RBES_ABANDONEDRBES_BOOKEDRBES_ERRORRBES_PUNCHED_OUTRBES_SUSPENDEDRBES_UNKNOWN";
  unk_27CC020 = 14;
  dword_27CC028 = 2;
  dword_27CC040 = 1;
  qword_27CC050 = 10;
  dword_27CC058 = 5;
  qword_27CC068 = 16;
  dword_27CC070 = 4;
  dword_27CC088 = 3;
  dword_27CC0A0 = 0;
  qword_27CC0C0 = "RBV_CONFIRMATION_REQUESTINGRBV_DETAILS_PICKINGRBV_NOT_SETRBV_RIDE_OPTIONS";
  unk_27CC0C8 = 27;
  qword_27CC0D8 = "RBV_DETAILS_PICKINGRBV_NOT_SETRBV_RIDE_OPTIONS";
  unk_27CC0E0 = 19;
  qword_27CC0F0 = "RBV_NOT_SETRBV_RIDE_OPTIONS";
  unk_27CC0F8 = 11;
  qword_27CC108 = "RBV_RIDE_OPTIONS";
  unk_27CC110 = 16;
  qword_27CC0A8 = "RBV_CONFIRMATION_CONFIRMEDRBV_CONFIRMATION_REQUESTINGRBV_DETAILS_PICKINGRBV_NOT_SETRBV_RIDE_OPTIONS";
  unk_27CC0B0 = 26;
  dword_27CC0B8 = 4;
  dword_27CC0D0 = 3;
  dword_27CC0E8 = 2;
  dword_27CC100 = 0;
  dword_27CC118 = 1;
  qword_27CC150 = "RBSI_MISSING_RIDE_OPTION_NAMERBSI_NOT_SET";
  unk_27CC158 = 29;
  qword_27CC168 = "RBSI_NOT_SET";
  unk_27CC170 = 12;
  qword_27CC120 = "RBSI_MISSING_RIDE_ETARBSI_MISSING_RIDE_IDENTIFIERRBSI_MISSING_RIDE_OPTION_NAMERBSI_NOT_SET";
  *algn_27CC128 = 21;
  dword_27CC130 = 3;
  qword_27CC138 = "RBSI_MISSING_RIDE_IDENTIFIERRBSI_MISSING_RIDE_OPTION_NAMERBSI_NOT_SET";
  unk_27CC140 = 28;
  dword_27CC148 = 2;
  dword_27CC160 = 1;
  dword_27CC178 = 0;
  dword_27CC1D8 = 9;
  qword_27CC1F8 = "RBRF_RESPONSE_CODE_REQUIRES_FEEDBACKRBRF_RESPONSE_CODE_REQUIRES_VERIFY_CREDENTIALSRBRF_RESPONSE_CODE_SERVICE_TEMPORARILY_UNAVAILABLERBRF_RESPONSE_CODE_UNSPECIFIEDRBRF_RESPONSE_NILRBRF_RESPONSE_RIDE_MISSING_IDENTIFIERRBRF_RESPONSE_RIDE_OPTIONS_NOT_AVAILABLERBRF_RESPONSE_RIDE_OPTION_MISSING_ETARBRF_RESPONSE_RIDE_OPTION_MISSING_NAMERBRF_RESPONSE_RIDE_PHASE_UNKNOWNRBRF_RESPONSE_RIDE_PICKUP_LOCATION_INVALIDRBRF_RESPONSE_RIDE_VEHICLE_LOCATION_INVALIDRBRF_RESPONSE_TIMEOUT";
  unk_27CC200 = 36;
  qword_27CC210 = "RBRF_RESPONSE_CODE_REQUIRES_VERIFY_CREDENTIALSRBRF_RESPONSE_CODE_SERVICE_TEMPORARILY_UNAVAILABLERBRF_RESPONSE_CODE_UNSPECIFIEDRBRF_RESPONSE_NILRBRF_RESPONSE_RIDE_MISSING_IDENTIFIERRBRF_RESPONSE_RIDE_OPTIONS_NOT_AVAILABLERBRF_RESPONSE_RIDE_OPTION_MISSING_ETARBRF_RESPONSE_RIDE_OPTION_MISSING_NAMERBRF_RESPONSE_RIDE_PHASE_UNKNOWNRBRF_RESPONSE_RIDE_PICKUP_LOCATION_INVALIDRBRF_RESPONSE_RIDE_VEHICLE_LOCATION_INVALIDRBRF_RESPONSE_TIMEOUT";
  unk_27CC218 = 46;
  qword_27CC228 = "RBRF_RESPONSE_CODE_SERVICE_TEMPORARILY_UNAVAILABLERBRF_RESPONSE_CODE_UNSPECIFIEDRBRF_RESPONSE_NILRBRF_RESPONSE_RIDE_MISSING_IDENTIFIERRBRF_RESPONSE_RIDE_OPTIONS_NOT_AVAILABLERBRF_RESPONSE_RIDE_OPTION_MISSING_ETARBRF_RESPONSE_RIDE_OPTION_MISSING_NAMERBRF_RESPONSE_RIDE_PHASE_UNKNOWNRBRF_RESPONSE_RIDE_PICKUP_LOCATION_INVALIDRBRF_RESPONSE_RIDE_VEHICLE_LOCATION_INVALIDRBRF_RESPONSE_TIMEOUT";
  unk_27CC230 = 50;
  dword_27CC238 = 8;
  qword_27CC240 = "RBRF_RESPONSE_CODE_UNSPECIFIEDRBRF_RESPONSE_NILRBRF_RESPONSE_RIDE_MISSING_IDENTIFIERRBRF_RESPONSE_RIDE_OPTIONS_NOT_AVAILABLERBRF_RESPONSE_RIDE_OPTION_MISSING_ETARBRF_RESPONSE_RIDE_OPTION_MISSING_NAMERBRF_RESPONSE_RIDE_PHASE_UNKNOWNRBRF_RESPONSE_RIDE_PICKUP_LOCATION_INVALIDRBRF_RESPONSE_RIDE_VEHICLE_LOCATION_INVALIDRBRF_RESPONSE_TIMEOUT";
  unk_27CC248 = 30;
  qword_27CC258 = "RBRF_RESPONSE_NILRBRF_RESPONSE_RIDE_MISSING_IDENTIFIERRBRF_RESPONSE_RIDE_OPTIONS_NOT_AVAILABLERBRF_RESPONSE_RIDE_OPTION_MISSING_ETARBRF_RESPONSE_RIDE_OPTION_MISSING_NAMERBRF_RESPONSE_RIDE_PHASE_UNKNOWNRBRF_RESPONSE_RIDE_PICKUP_LOCATION_INVALIDRBRF_RESPONSE_RIDE_VEHICLE_LOCATION_INVALIDRBRF_RESPONSE_TIMEOUT";
  qword_27CC270 = "RBRF_RESPONSE_RIDE_MISSING_IDENTIFIERRBRF_RESPONSE_RIDE_OPTIONS_NOT_AVAILABLERBRF_RESPONSE_RIDE_OPTION_MISSING_ETARBRF_RESPONSE_RIDE_OPTION_MISSING_NAMERBRF_RESPONSE_RIDE_PHASE_UNKNOWNRBRF_RESPONSE_RIDE_PICKUP_LOCATION_INVALIDRBRF_RESPONSE_RIDE_VEHICLE_LOCATION_INVALIDRBRF_RESPONSE_TIMEOUT";
  unk_27CC278 = 37;
  qword_27CC288 = "RBRF_RESPONSE_RIDE_OPTIONS_NOT_AVAILABLERBRF_RESPONSE_RIDE_OPTION_MISSING_ETARBRF_RESPONSE_RIDE_OPTION_MISSING_NAMERBRF_RESPONSE_RIDE_PHASE_UNKNOWNRBRF_RESPONSE_RIDE_PICKUP_LOCATION_INVALIDRBRF_RESPONSE_RIDE_VEHICLE_LOCATION_INVALIDRBRF_RESPONSE_TIMEOUT";
  unk_27CC290 = 40;
  qword_27CC2A0 = "RBRF_RESPONSE_RIDE_OPTION_MISSING_ETARBRF_RESPONSE_RIDE_OPTION_MISSING_NAMERBRF_RESPONSE_RIDE_PHASE_UNKNOWNRBRF_RESPONSE_RIDE_PICKUP_LOCATION_INVALIDRBRF_RESPONSE_RIDE_VEHICLE_LOCATION_INVALIDRBRF_RESPONSE_TIMEOUT";
  unk_27CC2A8 = 37;
  qword_27CC1B0 = "RBRF_RESPONSE_CODE_NO_SERVICE_IN_AREARBRF_RESPONSE_CODE_REQUIRES_APP_COMPLETIONRBRF_RESPONSE_CODE_REQUIRES_APP_LAUNCHRBRF_RESPONSE_CODE_REQUIRES_FEEDBACKRBRF_RESPONSE_CODE_REQUIRES_VERIFY_CREDENTIALSRBRF_RESPONSE_CODE_SERVICE_TEMPORARILY_UNAVAILABLERBRF_RESPONSE_CODE_UNSPECIFIEDRBRF_RESPONSE_NILRBRF_RESPONSE_RIDE_MISSING_IDENTIFIERRBRF_RESPONSE_RIDE_OPTIONS_NOT_AVAILABLERBRF_RESPONSE_RIDE_OPTION_MISSING_ETARBRF_RESPONSE_RIDE_OPTION_MISSING_NAMERBRF_RESPONSE_RIDE_PHASE_UNKNOWNRBRF_RESPONSE_RIDE_PICKUP_LOCATION_INVALIDRBRF_RESPONSE_RIDE_VEHICLE_LOCATION_INVALIDRBRF_RESPONSE_TIMEOUT";
  unk_27CC1B8 = 37;
  qword_27CC2B8 = "RBRF_RESPONSE_RIDE_OPTION_MISSING_NAMERBRF_RESPONSE_RIDE_PHASE_UNKNOWNRBRF_RESPONSE_RIDE_PICKUP_LOCATION_INVALIDRBRF_RESPONSE_RIDE_VEHICLE_LOCATION_INVALIDRBRF_RESPONSE_TIMEOUT";
  unk_27CC2C0 = 38;
  qword_27CC1E0 = "RBRF_RESPONSE_CODE_REQUIRES_APP_LAUNCHRBRF_RESPONSE_CODE_REQUIRES_FEEDBACKRBRF_RESPONSE_CODE_REQUIRES_VERIFY_CREDENTIALSRBRF_RESPONSE_CODE_SERVICE_TEMPORARILY_UNAVAILABLERBRF_RESPONSE_CODE_UNSPECIFIEDRBRF_RESPONSE_NILRBRF_RESPONSE_RIDE_MISSING_IDENTIFIERRBRF_RESPONSE_RIDE_OPTIONS_NOT_AVAILABLERBRF_RESPONSE_RIDE_OPTION_MISSING_ETARBRF_RESPONSE_RIDE_OPTION_MISSING_NAMERBRF_RESPONSE_RIDE_PHASE_UNKNOWNRBRF_RESPONSE_RIDE_PICKUP_LOCATION_INVALIDRBRF_RESPONSE_RIDE_VEHICLE_LOCATION_INVALIDRBRF_RESPONSE_TIMEOUT";
  unk_27CC1E8 = 38;
  qword_27CC2D0 = "RBRF_RESPONSE_RIDE_PHASE_UNKNOWNRBRF_RESPONSE_RIDE_PICKUP_LOCATION_INVALIDRBRF_RESPONSE_RIDE_VEHICLE_LOCATION_INVALIDRBRF_RESPONSE_TIMEOUT";
  unk_27CC2D8 = 32;
  qword_27CC198 = "RBRF_RESPONSE_CODE_GENERIC_ERRORRBRF_RESPONSE_CODE_NO_SERVICE_IN_AREARBRF_RESPONSE_CODE_REQUIRES_APP_COMPLETIONRBRF_RESPONSE_CODE_REQUIRES_APP_LAUNCHRBRF_RESPONSE_CODE_REQUIRES_FEEDBACKRBRF_RESPONSE_CODE_REQUIRES_VERIFY_CREDENTIALSRBRF_RESPONSE_CODE_SERVICE_TEMPORARILY_UNAVAILABLERBRF_RESPONSE_CODE_UNSPECIFIEDRBRF_RESPONSE_NILRBRF_RESPONSE_RIDE_MISSING_IDENTIFIERRBRF_RESPONSE_RIDE_OPTIONS_NOT_AVAILABLERBRF_RESPONSE_RIDE_OPTION_MISSING_ETARBRF_RESPONSE_RIDE_OPTION_MISSING_NAMERBRF_RESPONSE_RIDE_PHASE_UNKNOWNRBRF_RESPONSE_RIDE_PICKUP_LOCATION_INVALIDRBRF_RESPONSE_RIDE_VEHICLE_LOCATION_INVALIDRBRF_RESPONSE_TIMEOUT";
  unk_27CC1A0 = 32;
  qword_27CC2E8 = "RBRF_RESPONSE_RIDE_PICKUP_LOCATION_INVALIDRBRF_RESPONSE_RIDE_VEHICLE_LOCATION_INVALIDRBRF_RESPONSE_TIMEOUT";
  unk_27CC2F0 = 42;
  qword_27CC1C8 = "RBRF_RESPONSE_CODE_REQUIRES_APP_COMPLETIONRBRF_RESPONSE_CODE_REQUIRES_APP_LAUNCHRBRF_RESPONSE_CODE_REQUIRES_FEEDBACKRBRF_RESPONSE_CODE_REQUIRES_VERIFY_CREDENTIALSRBRF_RESPONSE_CODE_SERVICE_TEMPORARILY_UNAVAILABLERBRF_RESPONSE_CODE_UNSPECIFIEDRBRF_RESPONSE_NILRBRF_RESPONSE_RIDE_MISSING_IDENTIFIERRBRF_RESPONSE_RIDE_OPTIONS_NOT_AVAILABLERBRF_RESPONSE_RIDE_OPTION_MISSING_ETARBRF_RESPONSE_RIDE_OPTION_MISSING_NAMERBRF_RESPONSE_RIDE_PHASE_UNKNOWNRBRF_RESPONSE_RIDE_PICKUP_LOCATION_INVALIDRBRF_RESPONSE_RIDE_VEHICLE_LOCATION_INVALIDRBRF_RESPONSE_TIMEOUT";
  unk_27CC1D0 = 42;
  qword_27CC300 = "RBRF_RESPONSE_RIDE_VEHICLE_LOCATION_INVALIDRBRF_RESPONSE_TIMEOUT";
  unk_27CC308 = 43;
  qword_27CC180 = "RBRF_NOT_SETRBRF_RESPONSE_CODE_GENERIC_ERRORRBRF_RESPONSE_CODE_NO_SERVICE_IN_AREARBRF_RESPONSE_CODE_REQUIRES_APP_COMPLETIONRBRF_RESPONSE_CODE_REQUIRES_APP_LAUNCHRBRF_RESPONSE_CODE_REQUIRES_FEEDBACKRBRF_RESPONSE_CODE_REQUIRES_VERIFY_CREDENTIALSRBRF_RESPONSE_CODE_SERVICE_TEMPORARILY_UNAVAILABLERBRF_RESPONSE_CODE_UNSPECIFIEDRBRF_RESPONSE_NILRBRF_RESPONSE_RIDE_MISSING_IDENTIFIERRBRF_RESPONSE_RIDE_OPTIONS_NOT_AVAILABLERBRF_RESPONSE_RIDE_OPTION_MISSING_ETARBRF_RESPONSE_RIDE_OPTION_MISSING_NAMERBRF_RESPONSE_RIDE_PHASE_UNKNOWNRBRF_RESPONSE_RIDE_PICKUP_LOCATION_INVALIDRBRF_RESPONSE_RIDE_VEHICLE_LOCATION_INVALIDRBRF_RESPONSE_TIMEOUT";
  *algn_27CC188 = 12;
  dword_27CC190 = 0;
  dword_27CC1A8 = 4;
  dword_27CC1C0 = 7;
  dword_27CC1F0 = 5;
  dword_27CC208 = 10;
  dword_27CC220 = 6;
  dword_27CC250 = 3;
  qword_27CC260 = 17;
  dword_27CC268 = 2;
  dword_27CC280 = 13;
  dword_27CC298 = 15;
  dword_27CC2B0 = 12;
  dword_27CC2C8 = 11;
  dword_27CC2E0 = 14;
  dword_27CC2F8 = 16;
  dword_27CC310 = 17;
  qword_27CC318 = "RBRF_RESPONSE_TIMEOUT";
  unk_27CC320 = 21;
  dword_27CC328 = 1;
  qword_27CC348 = "RBI_CONFIRM_REQUEST_RIDERBI_HANDLE_CANCELRBI_HANDLE_GET_RIDE_STATUSRBI_HANDLE_LIST_RIDE_OPTIONSRBI_HANDLE_REQUEST_RIDERBI_HANDLE_SEND_FEEDBACKRBI_UNKNOWN";
  qword_27CC360 = "RBI_HANDLE_CANCELRBI_HANDLE_GET_RIDE_STATUSRBI_HANDLE_LIST_RIDE_OPTIONSRBI_HANDLE_REQUEST_RIDERBI_HANDLE_SEND_FEEDBACKRBI_UNKNOWN";
  unk_27CC368 = 17;
  qword_27CC378 = "RBI_HANDLE_GET_RIDE_STATUSRBI_HANDLE_LIST_RIDE_OPTIONSRBI_HANDLE_REQUEST_RIDERBI_HANDLE_SEND_FEEDBACKRBI_UNKNOWN";
  unk_27CC380 = 26;
  qword_27CC390 = "RBI_HANDLE_LIST_RIDE_OPTIONSRBI_HANDLE_REQUEST_RIDERBI_HANDLE_SEND_FEEDBACKRBI_UNKNOWN";
  unk_27CC398 = 28;
  qword_27CC3A8 = "RBI_HANDLE_REQUEST_RIDERBI_HANDLE_SEND_FEEDBACKRBI_UNKNOWN";
  qword_27CC3B0 = 23;
  qword_27CC3C0 = "RBI_HANDLE_SEND_FEEDBACKRBI_UNKNOWN";
  result = 18;
  qword_27CC330 = "RBI_CONFIRM_CANCELRBI_CONFIRM_REQUEST_RIDERBI_HANDLE_CANCELRBI_HANDLE_GET_RIDE_STATUSRBI_HANDLE_LIST_RIDE_OPTIONSRBI_HANDLE_REQUEST_RIDERBI_HANDLE_SEND_FEEDBACKRBI_UNKNOWN";
  *algn_27CC338 = 18;
  dword_27CC340 = 5;
  qword_27CC350 = 24;
  dword_27CC358 = 2;
  dword_27CC370 = 6;
  dword_27CC388 = 4;
  dword_27CC3A0 = 1;
  dword_27CC3B8 = 3;
  qword_27CC3C8 = 24;
  dword_27CC3D0 = 7;
  qword_27CC3D8 = "RBI_UNKNOWN";
  unk_27CC3E0 = 11;
  dword_27CC3E8 = 0;
  qword_27CC408 = "BTES_BOOKEDBTES_ERRORBTES_PUNCHED_OUTBTES_SUSPENDEDBTES_UNKNOWN";
  unk_27CC410 = 11;
  qword_27CC420 = "BTES_ERRORBTES_PUNCHED_OUTBTES_SUSPENDEDBTES_UNKNOWN";
  unk_27CC428 = 10;
  qword_27CC438 = "BTES_PUNCHED_OUTBTES_SUSPENDEDBTES_UNKNOWN";
  qword_27CC450 = "BTES_SUSPENDEDBTES_UNKNOWN";
  unk_27CC458 = 14;
  qword_27CC3F0 = "BTES_ABANDONEDBTES_BOOKEDBTES_ERRORBTES_PUNCHED_OUTBTES_SUSPENDEDBTES_UNKNOWN";
  *algn_27CC3F8 = 14;
  dword_27CC400 = 2;
  dword_27CC418 = 1;
  dword_27CC430 = 5;
  qword_27CC440 = 16;
  dword_27CC448 = 4;
  dword_27CC460 = 3;
  qword_27CC468 = "BTES_UNKNOWN";
  unk_27CC470 = 12;
  dword_27CC478 = 0;
  qword_27CC480 = "BTV_INSTALL_NEEDEDBTV_NOT_SETBTV_PICK_DETAILSBTV_PICK_TIMEBTV_PRE_ENABLEBTV_PRE_RESERVEBTV_RESERVEDBTV_RESERVING";
  *algn_27CC488 = 18;
  qword_27CC4B0 = "BTV_PICK_DETAILSBTV_PICK_TIMEBTV_PRE_ENABLEBTV_PRE_RESERVEBTV_RESERVEDBTV_RESERVING";
  unk_27CC4B8 = 16;
  qword_27CC4C8 = "BTV_PICK_TIMEBTV_PRE_ENABLEBTV_PRE_RESERVEBTV_RESERVEDBTV_RESERVING";
  qword_27CC4E0 = "BTV_PRE_ENABLEBTV_PRE_RESERVEBTV_RESERVEDBTV_RESERVING";
  unk_27CC4E8 = 14;
  qword_27CC4F8 = "BTV_PRE_RESERVEBTV_RESERVEDBTV_RESERVING";
  unk_27CC500 = 15;
  qword_27CC510 = "BTV_RESERVEDBTV_RESERVING";
  unk_27CC518 = 12;
  qword_27CC498 = "BTV_NOT_SETBTV_PICK_DETAILSBTV_PICK_TIMEBTV_PRE_ENABLEBTV_PRE_RESERVEBTV_RESERVEDBTV_RESERVING";
  unk_27CC4A0 = 11;
  dword_27CC490 = 1;
  dword_27CC4A8 = 0;
  dword_27CC4C0 = 4;
  qword_27CC4D0 = 13;
  dword_27CC4D8 = 3;
  dword_27CC4F0 = 2;
  dword_27CC508 = 5;
  qword_27CC528 = "BTV_RESERVING";
  unk_27CC530 = 13;
  dword_27CC520 = 7;
  dword_27CC538 = 6;
  qword_27CC570 = "LTESCDMAUMTSUNKNOWN";
  unk_27CC578 = 3;
  qword_27CC558 = "GSMLTESCDMAUMTSUNKNOWN";
  unk_27CC560 = 3;
  dword_27CC568 = 3;
  qword_27CC588 = "SCDMAUMTSUNKNOWN";
  unk_27CC590 = 5;
  dword_27CC550 = 5;
  qword_27CC5A0 = "UMTSUNKNOWN";
  unk_27CC5A8 = 4;
  qword_27CC540 = "CDMAGSMLTESCDMAUMTSUNKNOWN";
  *algn_27CC548 = 4;
  dword_27CC598 = 4;
  qword_27CC5B8 = "UNKNOWN";
  unk_27CC5C0 = 7;
  dword_27CC580 = 1;
  dword_27CC5B0 = 2;
  dword_27CC5C8 = 0;
  dword_27CC5E0 = 1;
  qword_27CC5E8 = "RAT_TYPE_NRRAT_TYPE_UNKNOWN";
  unk_27CC5F0 = 11;
  dword_27CC5F8 = 2;
  qword_27CC5D0 = "RAT_TYPE_LTERAT_TYPE_NRRAT_TYPE_UNKNOWN";
  *algn_27CC5D8 = 12;
  qword_27CC600 = "RAT_TYPE_UNKNOWN";
  unk_27CC608 = 16;
  dword_27CC610 = 0;
  return result;
}

void *sub_140A974(void *a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  a1[1] = v5;
  *a1 = &off_26E0308;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = a2;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = a2;
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void sub_140A9E8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_140AA18(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_140996C(a1 + 9);
  sub_1449E54(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_140AAAC(void *a1)
{
  sub_140AA18(a1);

  operator delete();
}

uint64_t sub_140AAE4(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_14CC5C8(v5);
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
      result = sub_16E48B0(v8);
      --v6;
    }

    while (v6);
    *(a1 + 80) = 0;
  }

  v10 = *(a1 + 8);
  v9 = a1 + 8;
  *(v9 + 88) = 0;
  *(v9 + 32) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

char *sub_140AB98(uint64_t a1, char *a2, int32x2_t *a3)
{
  v29 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v29 + 1;
    v8 = *v29;
    if (*v29 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v29, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v29 + 2;
      }
    }

    v29 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      if (v8 == 25)
      {
        *(a1 + 96) = *v7;
        v29 = v7 + 8;
        v5 = 1;
        goto LABEL_44;
      }
    }

    else if (v11 == 2)
    {
      if (v8 == 18)
      {
        v15 = v7 - 1;
        while (1)
        {
          v16 = (v15 + 1);
          v29 = v15 + 1;
          v17 = *(a1 + 88);
          if (v17 && (v18 = *(a1 + 80), v18 < *v17))
          {
            *(a1 + 80) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = sub_16F5BD8(*(a1 + 72));
            v19 = sub_19593CC(a1 + 72, v20);
            v16 = v29;
          }

          v15 = sub_21F7188(a3, v19, v16);
          v29 = v15;
          if (!v15)
          {
            goto LABEL_49;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_44;
          }
        }
      }
    }

    else if (v11 == 1 && v8 == 10)
    {
      v21 = v7 - 1;
      while (1)
      {
        v22 = (v21 + 1);
        v29 = v21 + 1;
        v23 = *(a1 + 64);
        if (v23 && (v24 = *(a1 + 56), v24 < *v23))
        {
          *(a1 + 56) = v24 + 1;
          v25 = *&v23[2 * v24 + 2];
        }

        else
        {
          v26 = sub_1552260(*(a1 + 48));
          v25 = sub_19593CC(a1 + 48, v26);
          v22 = v29;
        }

        v21 = sub_22090A8(a3, v25, v22);
        v29 = v21;
        if (!v21)
        {
          goto LABEL_49;
        }

        if (*a3 <= v21 || *v21 != 10)
        {
          goto LABEL_44;
        }
      }
    }

    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    if (v8 - 8000 > 0x31F)
    {
      v27 = *(a1 + 8);
      if (v27)
      {
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v28 = sub_11F1920((a1 + 8));
        v7 = v29;
      }

      v14 = sub_1952690(v8, v28, v7, a3);
    }

    else
    {
      v14 = sub_19525AC((a1 + 16), v8, v7, &off_276FCC8, (a1 + 8), a3);
    }

    v29 = v14;
    if (!v14)
    {
      goto LABEL_49;
    }

LABEL_44:
    if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_49:
  v29 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v29;
}

char *sub_140AE40(uint64_t a1, char *a2, _DWORD *a3)
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

      a2 = sub_1549158(v8, v10, a3);
    }
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v13 = *(*(a1 + 88) + 8 * j + 8);
      *a2 = 18;
      v14 = *(v13 + 44);
      a2[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, a2 + 1);
      }

      else
      {
        v15 = a2 + 2;
      }

      a2 = sub_16E886C(v13, v15, a3);
    }
  }

  if (*(a1 + 40))
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v16 = *(a1 + 96);
    *a2 = 25;
    *(a2 + 1) = v16;
    a2 += 9;
  }

  if (*(a1 + 26))
  {
    a2 = sub_1953428(a1 + 16, 1000, 1100, a2, a3);
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return a2;
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

  if (*a3 - a2 >= v20)
  {
    v22 = v20;
    memcpy(a2, v21, v20);
    a2 += v22;
    return a2;
  }

  return sub_1957130(a3, v21, v20, a2);
}

uint64_t sub_140B064(uint64_t a1)
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
      v9 = sub_1549388(v8);
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
      v16 = sub_16E8DA4(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  if (*(a1 + 40))
  {
    result = v11 + 9;
  }

  else
  {
    result = v11;
  }

  v18 = *(a1 + 8);
  if (v18)
  {
    v19 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    result += v20;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_140B16C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1449ED8((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1409AF8((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  if (*(a2 + 40))
  {
    v14 = *(a2 + 96);
    *(a1 + 40) |= 1u;
    *(a1 + 96) = v14;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_140B2AC(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 56);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_14D04F4(*(*(a1 + 64) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(a1 + 80);
  do
  {
    v5 = v7 < 1;
    if (v7 < 1)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = sub_16E4B4C(*(*(a1 + 88) + 8 * v7));
    v7 = v8;
  }

  while ((v9 & 1) != 0);
  return v5;
}

void *sub_140B348(void *a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  a1[1] = v4;
  *a1 = &off_26E0388;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = &qword_278E990;
  a1[7] = 0;
  return a1;
}

void sub_140B3B8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_140B3E8(uint64_t a1)
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
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_140B490(uint64_t a1)
{
  sub_140B3E8(a1);

  operator delete();
}

unsigned __int8 *sub_140B4C8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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
  }

  if ((v3 & 6) != 0)
  {
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 32) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

uint64_t sub_140B558(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v27 = a2;
  if (sub_195ADC0(a3, v27, a3[11].i32[1]))
  {
    return *v27;
  }

  while (1)
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
    if (v7 >> 3 != 3)
    {
      break;
    }

    if (v7 != 26)
    {
      goto LABEL_13;
    }

    *(a1 + 40) |= 1u;
    v17 = *(a1 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    v19 = sub_194DB04((a1 + 48), v18);
    v13 = sub_1958890(v19, *v27, a3);
LABEL_39:
    *v27 = v13;
    if (!v13)
    {
      goto LABEL_51;
    }

LABEL_40:
    if (sub_195ADC0(a3, v27, a3[11].i32[1]))
    {
      return *v27;
    }
  }

  if (v10 == 2)
  {
    if (v7 != 16)
    {
      goto LABEL_13;
    }

    v15 = v6 + 1;
    v14 = *v6;
    if (v14 < 0)
    {
      v16 = *v15;
      v14 = (v16 << 7) + v14 - 128;
      if (v16 < 0)
      {
        *v27 = sub_19587DC(v6, v14);
        if (!*v27)
        {
          goto LABEL_51;
        }

        goto LABEL_24;
      }

      v15 = v6 + 2;
    }

    *v27 = v15;
LABEL_24:
    if (v14 > 1)
    {
      sub_12E8418();
    }

    else
    {
      *(a1 + 40) |= 4u;
      *(a1 + 60) = v14;
    }

    goto LABEL_40;
  }

  if (v10 == 1 && v7 == 8)
  {
    v20 = v6 + 1;
    v21 = *v6;
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }

    v22 = *v20;
    v23 = (v22 << 7) + v21;
    LODWORD(v21) = v23 - 128;
    if (v22 < 0)
    {
      *v27 = sub_19587DC(v6, (v23 - 128));
      if (!*v27)
      {
        goto LABEL_51;
      }

      LODWORD(v21) = v26;
    }

    else
    {
      v20 = v6 + 2;
LABEL_33:
      *v27 = v20;
    }

    if (sub_14CB318(v21))
    {
      *(a1 + 40) |= 2u;
      *(a1 + 56) = v21;
    }

    else
    {
      sub_12E8450();
    }

    goto LABEL_40;
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

  if (!v12)
  {
    if ((v7 - 8000) >> 6 > 0x7C)
    {
      v24 = *(a1 + 8);
      if (v24)
      {
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v25 = sub_11F1920((a1 + 8));
        v6 = *v27;
      }

      v13 = sub_1952690(v7, v25, v6, a3);
    }

    else
    {
      v13 = sub_19525AC((a1 + 16), v7, v6, &off_276FD30, (a1 + 8), a3);
    }

    goto LABEL_39;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v27;
  }

LABEL_51:
  *v27 = 0;
  return *v27;
}

char *sub_140B7F8(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 56);
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 60);
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

  if (*(a1 + 26))
  {
    v11 = sub_1953428(a1 + 16, 1000, 2000, v11, a3);
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

uint64_t sub_140B9EC(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 7) == 0)
  {
    goto LABEL_17;
  }

  if (v3)
  {
    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    result += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  v7 = *(a1 + 56);
  if (v7 < 0)
  {
    v8 = 11;
  }

  else
  {
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v8;
  if ((v3 & 4) != 0)
  {
LABEL_13:
    v9 = *(a1 + 60);
    if (v9 < 0)
    {
      v10 = 11;
    }

    else
    {
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v10;
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

  *(a1 + 44) = result;
  return result;
}

void sub_140BB00(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 48);
      *(a1 + 40) |= 1u;
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_194EA1C((a1 + 48), (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          *(a1 + 40) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        *(a1 + 60) = *(a2 + 60);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 56) = *(a2 + 56);
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_140BBF4(uint64_t a1)
{
  if (!a1)
  {

    sub_1449F64();
  }

  return sub_140A974(v3, a1, 0);
}

void *sub_140BC50(uint64_t a1)
{
  if (!a1)
  {

    sub_1449FD0();
  }

  return sub_140B348(v3, a1, 0);
}

uint64_t sub_140BCD0(uint64_t a1)
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

void sub_140BD88(uint64_t a1)
{
  sub_140BCD0(a1);

  operator delete();
}

uint64_t sub_140BDC0(uint64_t a1)
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

uint64_t sub_140BE40(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v27 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v27, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v27 + 1);
    v8 = **v27;
    if (**v27 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v27, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v27 + 2);
      }
    }

    *v27 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v20 = *(a1 + 8);
      v18 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v18 = *v18;
      }

      v19 = (a1 + 32);
LABEL_28:
      v21 = sub_194DB04(v19, v18);
      v16 = sub_1958890(v21, *v27, a3);
LABEL_29:
      *v27 = v16;
      if (!v16)
      {
        goto LABEL_42;
      }

      goto LABEL_35;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 != 1 || v8 != 8)
    {
      goto LABEL_13;
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
      *v27 = v22;
      *(a1 + 40) = v23;
      goto LABEL_35;
    }

    v25 = sub_1958770(v7, v23);
    *v27 = v25;
    *(a1 + 40) = v26;
    if (!v25)
    {
      goto LABEL_42;
    }

LABEL_35:
    if (sub_195ADC0(a3, v27, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    *(a1 + 16) |= 1u;
    v17 = *(a1 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    v19 = (a1 + 24);
    goto LABEL_28;
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
      v7 = *v27;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_29;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_42:
  *v27 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v27;
}

char *sub_140C048(uint64_t a1, char *__dst, void *a3)
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
    v6 = sub_128AEEC(a3, 3, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  if ((v5 & 2) != 0)
  {
    v6 = sub_128AEEC(a3, 4, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v6);
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

uint64_t sub_140C1B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_14;
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
    v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

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

    v2 += v12;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_140C2C4(void *a1)
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

void sub_140C338(void *a1)
{
  sub_140C2C4(a1);

  operator delete();
}

uint64_t sub_140C370(uint64_t a1)
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

char *sub_140C388(uint64_t a1, char *a2, int32x2_t *a3)
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