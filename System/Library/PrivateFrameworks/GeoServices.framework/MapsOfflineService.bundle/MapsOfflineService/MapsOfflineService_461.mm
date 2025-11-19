void sub_18B2594(uint64_t a1, uint64_t a2)
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

        goto LABEL_31;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    v14 = *(a2 + 56);
    *(a1 + 16) |= 2u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 56), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_34;
    }

LABEL_31:
    v17 = *(a2 + 64);
    *(a1 + 16) |= 4u;
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    sub_194EA1C((a1 + 64), (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_37;
    }

LABEL_34:
    v20 = *(a2 + 72);
    *(a1 + 16) |= 8u;
    v21 = *(a1 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    sub_194EA1C((a1 + 72), (v20 & 0xFFFFFFFFFFFFFFFELL), v22);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_45;
    }

LABEL_37:
    *(a1 + 16) |= 0x10u;
    v23 = *(a1 + 80);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_16F5828(v25);
      *(a1 + 80) = v23;
    }

    if (*(a2 + 80))
    {
      v26 = *(a2 + 80);
    }

    else
    {
      v26 = &off_277E5E8;
    }

    sub_16E527C(v23, v26);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_53;
    }

LABEL_45:
    *(a1 + 16) |= 0x20u;
    v27 = *(a1 + 88);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v27 = sub_16F5DB8(v29);
      *(a1 + 88) = v27;
    }

    if (*(a2 + 88))
    {
      v30 = *(a2 + 88);
    }

    else
    {
      v30 = &off_277E820;
    }

    sub_16EC8A0(v27, v30);
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
      *(a1 + 104) = *(a2 + 104);
      goto LABEL_14;
    }

LABEL_53:
    *(a1 + 96) = *(a2 + 96);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  if ((v9 & 0x300) != 0)
  {
    if ((v9 & 0x100) != 0)
    {
      *(a1 + 108) = *(a2 + 108);
    }

    if ((v9 & 0x200) != 0)
    {
      *(a1 + 112) = *(a2 + 112);
    }

    *(a1 + 16) |= v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_18B2834(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x10) != 0)
  {
    result = sub_16E5370(*(a1 + 80));
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

  result = sub_16ECE70(*(a1 + 88));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18B2890(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_27182D8;
  *(a1 + 16) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    sub_1957EF4((a1 + 8), (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_18B28FC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18B292C(void *a1)
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

void sub_18B29A0(void *a1)
{
  sub_18B292C(a1);

  operator delete();
}

uint64_t *sub_18B29D8(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_18B29E8(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_18B2A7C(uint64_t a1)
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

std::string *sub_18B2AA8(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_18B2ADC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2718358;
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

  *(a1 + 40) = &qword_278E990;
  if ((v5 & 4) != 0)
  {
    v9 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v9 = *v9;
    }

    sub_194EA1C((a1 + 40), (*(a2 + 40) & 0xFFFFFFFFFFFFFFFELL), v9);
    v5 = *(a2 + 16);
  }

  *(a1 + 48) = &qword_278E990;
  if ((v5 & 8) != 0)
  {
    v10 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v10 = *v10;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v10);
    v5 = *(a2 + 16);
  }

  *(a1 + 56) = &qword_278E990;
  if ((v5 & 0x10) != 0)
  {
    v11 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 56), (*(a2 + 56) & 0xFFFFFFFFFFFFFFFELL), v11);
    v5 = *(a2 + 16);
  }

  *(a1 + 64) = &qword_278E990;
  if ((v5 & 0x20) != 0)
  {
    v12 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v12 = *v12;
    }

    sub_194EA1C((a1 + 64), (*(a2 + 64) & 0xFFFFFFFFFFFFFFFELL), v12);
    v5 = *(a2 + 16);
  }

  *(a1 + 72) = &qword_278E990;
  if ((v5 & 0x40) != 0)
  {
    v13 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v13 = *v13;
    }

    sub_194EA1C((a1 + 72), (*(a2 + 72) & 0xFFFFFFFFFFFFFFFELL), v13);
    v5 = *(a2 + 16);
  }

  if ((v5 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  if ((v5 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 88) = 0;
  if ((v5 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 96) = 0;
  if ((v5 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 104) = 0;
  if ((v5 & 0x800) != 0)
  {
    operator new();
  }

  *(a1 + 112) = 0;
  if ((v5 & 0x1000) != 0)
  {
    operator new();
  }

  *(a1 + 120) = 0;
  v14 = *(a2 + 128);
  v15 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v14;
  *(a1 + 144) = v15;
  return a1;
}

void *sub_18B2EA4(void *a1)
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

  sub_18B2F28(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_18B2F28(uint64_t a1)
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

  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C((a1 + 40));
  }

  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C((a1 + 48));
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C((a1 + 64));
  }

  result = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2789790)
  {
    if (*(a1 + 80))
    {
      sub_16E8374();
      operator delete();
    }

    v5 = *(a1 + 88);
    if (v5)
    {
      sub_18B6610(v5);
      operator delete();
    }

    v6 = *(a1 + 96);
    if (v6)
    {
      sub_18B6BF0(v6);
      operator delete();
    }

    v7 = *(a1 + 104);
    if (v7)
    {
      sub_18B76F8(v7);
      operator delete();
    }

    v8 = *(a1 + 112);
    if (v8)
    {
      sub_18B7038(v8);
      operator delete();
    }

    result = *(a1 + 120);
    if (result)
    {
      sub_18B6094(result);

      operator delete();
    }
  }

  return result;
}

void sub_18B30BC(void *a1)
{
  sub_18B2EA4(a1);

  operator delete();
}

uint64_t sub_18B30F4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (!v2)
  {
    goto LABEL_11;
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
        goto LABEL_35;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_39:
    v7 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_43;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_47:
    v9 = *(result + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_51;
      }
    }

LABEL_8:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_55;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_35:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_39;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_43:
  v8 = *(result + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_47;
    }
  }

LABEL_7:
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_51:
  v10 = *(result + 64) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v10 + 23) & 0x80000000) == 0)
  {
    *v10 = 0;
    *(v10 + 23) = 0;
    if ((v2 & 0x40) != 0)
    {
      goto LABEL_55;
    }

LABEL_9:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  **v10 = 0;
  *(v10 + 8) = 0;
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_55:
  v11 = *(result + 72) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v11 + 23) & 0x80000000) == 0)
  {
    *v11 = 0;
    *(v11 + 23) = 0;
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = sub_16E48B0(*(result + 80));
    goto LABEL_11;
  }

  **v11 = 0;
  *(v11 + 8) = 0;
  if ((v2 & 0x80) != 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  if ((v2 & 0x1F00) == 0)
  {
    goto LABEL_18;
  }

  if ((v2 & 0x100) != 0)
  {
    result = sub_18B3340(*(v1 + 88));
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = sub_18B33F8(*(v1 + 96));
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = sub_18B343C(*(v1 + 104));
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_32:
  result = sub_18B3738(*(v1 + 112));
  if ((v2 & 0x1000) != 0)
  {
LABEL_17:
    result = sub_18B377C(*(v1 + 120));
  }

LABEL_18:
  if ((v2 & 0xE000) != 0)
  {
    *(v1 + 128) = 0;
    *(v1 + 136) = 0;
    *(v1 + 144) = 0;
  }

  if ((v2 & 0x3F0000) != 0)
  {
    *(v1 + 160) = 0;
    *(v1 + 152) = 0;
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

uint64_t sub_18B3340(uint64_t a1)
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

uint64_t sub_18B33F8(uint64_t a1)
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

uint64_t sub_18B343C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if ((v1 & 1) == 0)
    {
      if ((v1 & 2) == 0)
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
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v1 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_39;
  }

LABEL_42:
  if ((v1 & 0x3F00) == 0)
  {
    goto LABEL_73;
  }

  if ((v1 & 0x100) == 0)
  {
    if ((v1 & 0x200) == 0)
    {
      goto LABEL_45;
    }

LABEL_54:
    v11 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
      if ((v1 & 0x400) != 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
      if ((v1 & 0x400) != 0)
      {
        goto LABEL_58;
      }
    }

LABEL_46:
    if ((v1 & 0x800) == 0)
    {
      goto LABEL_47;
    }

LABEL_62:
    v13 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v13 + 23) < 0)
    {
      **v13 = 0;
      *(v13 + 8) = 0;
      if ((v1 & 0x1000) != 0)
      {
        goto LABEL_66;
      }
    }

    else
    {
      *v13 = 0;
      *(v13 + 23) = 0;
      if ((v1 & 0x1000) != 0)
      {
        goto LABEL_66;
      }
    }

LABEL_48:
    if ((v1 & 0x2000) == 0)
    {
      goto LABEL_73;
    }

LABEL_70:
    v15 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v15 + 23) < 0)
    {
      **v15 = 0;
      *(v15 + 8) = 0;
    }

    else
    {
      *v15 = 0;
      *(v15 + 23) = 0;
    }

    goto LABEL_73;
  }

  v10 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v10 + 23) < 0)
  {
    **v10 = 0;
    *(v10 + 8) = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_54;
    }
  }

  else
  {
    *v10 = 0;
    *(v10 + 23) = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_54;
    }
  }

LABEL_45:
  if ((v1 & 0x400) == 0)
  {
    goto LABEL_46;
  }

LABEL_58:
  v12 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v12 + 23) < 0)
  {
    **v12 = 0;
    *(v12 + 8) = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_62;
    }
  }

  else
  {
    *v12 = 0;
    *(v12 + 23) = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_62;
    }
  }

LABEL_47:
  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_48;
  }

LABEL_66:
  v14 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v14 + 23) < 0)
  {
    **v14 = 0;
    *(v14 + 8) = 0;
    if ((v1 & 0x2000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_70;
  }

  *v14 = 0;
  *(v14 + 23) = 0;
  if ((v1 & 0x2000) != 0)
  {
    goto LABEL_70;
  }

LABEL_73:
  v17 = *(a1 + 8);
  result = a1 + 8;
  *(result + 128) = 0;
  *(result + 8) = 0;
  if (v17)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_18B3738(uint64_t a1)
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

unsigned __int8 *sub_18B377C(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = sub_18B56A8(v4);
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

uint64_t sub_18B37F8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v74 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v74, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v74 + 1);
    v8 = **v74;
    if (**v74 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v74, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v74 + 2);
      }
    }

    *v74 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 1u;
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v13 = (a1 + 24);
        goto LABEL_109;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 2u;
        v37 = *(a1 + 8);
        v12 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
        if (v37)
        {
          v12 = *v12;
        }

        v13 = (a1 + 32);
        goto LABEL_109;
      case 3u:
        if (v8 != 25)
        {
          goto LABEL_119;
        }

        v32 = *v7;
        v31 = v7 + 8;
        v5 |= 0x2000u;
        *(a1 + 128) = v32;
        goto LABEL_90;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 0x80u;
        v47 = *(a1 + 80);
        if (!v47)
        {
          v48 = *(a1 + 8);
          v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
          if (v48)
          {
            v49 = *v49;
          }

          v47 = sub_16F5BD8(v49);
          *(a1 + 80) = v47;
          v7 = *v74;
        }

        v23 = sub_21F7188(a3, v47, v7);
        goto LABEL_110;
      case 5u:
        if (v8 != 41)
        {
          goto LABEL_119;
        }

        v50 = *v7;
        v31 = v7 + 8;
        v5 |= 0x4000u;
        *(a1 + 136) = v50;
LABEL_90:
        *v74 = v31;
        goto LABEL_111;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 4u;
        v33 = *(a1 + 8);
        v12 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        if (v33)
        {
          v12 = *v12;
        }

        v13 = (a1 + 40);
        goto LABEL_109;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 8u;
        v38 = *(a1 + 8);
        v12 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        if (v38)
        {
          v12 = *v12;
        }

        v13 = (a1 + 48);
        goto LABEL_109;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_119;
        }

        v39 = (v7 + 1);
        v40 = *v7;
        if ((v40 & 0x8000000000000000) != 0)
        {
          v40 = (*v39 << 7) + v40 - 128;
          if (*v39 < 0)
          {
            v39 = sub_19587DC(v7, v40);
          }

          else
          {
            v39 = (v7 + 2);
          }
        }

        v5 |= 0x8000u;
        *v74 = v39;
        *(a1 + 144) = -(v40 & 1) ^ (v40 >> 1);
        if (!v39)
        {
          goto LABEL_146;
        }

        goto LABEL_111;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_119;
        }

        v5 |= 0x40000u;
        v53 = (v7 + 1);
        v52 = *v7;
        if ((v52 & 0x8000000000000000) == 0)
        {
          goto LABEL_99;
        }

        v54 = *v53;
        v52 = (v54 << 7) + v52 - 128;
        if (v54 < 0)
        {
          v70 = sub_19587DC(v7, v52);
          *v74 = v70;
          *(a1 + 160) = v71 != 0;
          if (!v70)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v53 = (v7 + 2);
LABEL_99:
          *v74 = v53;
          *(a1 + 160) = v52 != 0;
        }

        goto LABEL_111;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 0x10u;
        v51 = *(a1 + 8);
        v12 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
        if (v51)
        {
          v12 = *v12;
        }

        v13 = (a1 + 56);
        goto LABEL_109;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 0x20u;
        v24 = *(a1 + 8);
        v12 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v12 = *v12;
        }

        v13 = (a1 + 64);
        goto LABEL_109;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_119;
        }

        v35 = (v7 + 1);
        v34 = *v7;
        if ((v34 & 0x8000000000000000) == 0)
        {
          goto LABEL_54;
        }

        v36 = *v35;
        v34 = (v36 << 7) + v34 - 128;
        if (v36 < 0)
        {
          *v74 = sub_19587DC(v7, v34);
          if (!*v74)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v35 = (v7 + 2);
LABEL_54:
          *v74 = v35;
        }

        if (v34 > 6)
        {
          sub_19481DC();
        }

        else
        {
          *(a1 + 16) |= 0x10000u;
          *(a1 + 152) = v34;
        }

        goto LABEL_111;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 0x100u;
        v25 = *(a1 + 88);
        if (!v25)
        {
          v26 = *(a1 + 8);
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v27 = *v27;
          }

          v25 = sub_1902E54(v27);
          *(a1 + 88) = v25;
          v7 = *v74;
        }

        v23 = sub_2253E28(a3, v25, v7);
        goto LABEL_110;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 0x200u;
        v20 = *(a1 + 96);
        if (!v20)
        {
          v21 = *(a1 + 8);
          v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v22 = *v22;
          }

          v20 = sub_1902EDC(v22);
          *(a1 + 96) = v20;
          v7 = *v74;
        }

        v23 = sub_2253EB8(a3, v20, v7);
        goto LABEL_110;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 0x400u;
        v41 = *(a1 + 104);
        if (!v41)
        {
          v42 = *(a1 + 8);
          v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
          if (v42)
          {
            v43 = *v43;
          }

          v41 = sub_1902FE4(v43);
          *(a1 + 104) = v41;
          v7 = *v74;
        }

        v23 = sub_2253F48(a3, v41, v7);
        goto LABEL_110;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_119;
        }

        v45 = (v7 + 1);
        v44 = *v7;
        if ((v44 & 0x8000000000000000) == 0)
        {
          goto LABEL_79;
        }

        v46 = *v45;
        v44 = (v46 << 7) + v44 - 128;
        if (v46 < 0)
        {
          *v74 = sub_19587DC(v7, v44);
          if (!*v74)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v45 = (v7 + 2);
LABEL_79:
          *v74 = v45;
        }

        if (v44 > 3)
        {
          sub_144E0FC();
        }

        else
        {
          *(a1 + 16) |= 0x20000u;
          *(a1 + 156) = v44;
        }

        goto LABEL_111;
      case 0x11u:
        if (v8 != 138)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 0x40u;
        v58 = *(a1 + 8);
        v12 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
        if (v58)
        {
          v12 = *v12;
        }

        v13 = (a1 + 72);
LABEL_109:
        v59 = sub_194DB04(v13, v12);
        v23 = sub_1958890(v59, *v74, a3);
        goto LABEL_110;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_119;
        }

        v5 |= 0x80000u;
        v56 = (v7 + 1);
        v55 = *v7;
        if ((v55 & 0x8000000000000000) == 0)
        {
          goto LABEL_104;
        }

        v57 = *v56;
        v55 = (v57 << 7) + v55 - 128;
        if (v57 < 0)
        {
          v72 = sub_19587DC(v7, v55);
          *v74 = v72;
          *(a1 + 161) = v73 != 0;
          if (!v72)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v56 = (v7 + 2);
LABEL_104:
          *v74 = v56;
          *(a1 + 161) = v55 != 0;
        }

        goto LABEL_111;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_119;
        }

        v5 |= 0x100000u;
        v15 = (v7 + 1);
        v14 = *v7;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if (v16 < 0)
        {
          v66 = sub_19587DC(v7, v14);
          *v74 = v66;
          *(a1 + 162) = v67 != 0;
          if (!v66)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v15 = (v7 + 2);
LABEL_16:
          *v74 = v15;
          *(a1 + 162) = v14 != 0;
        }

        goto LABEL_111;
      case 0x14u:
        if (v8 != 162)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 0x800u;
        v28 = *(a1 + 112);
        if (!v28)
        {
          v29 = *(a1 + 8);
          v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v30 = *v30;
          }

          v28 = sub_1902F60(v30);
          *(a1 + 112) = v28;
          v7 = *v74;
        }

        v23 = sub_2253FD8(a3, v28, v7);
        goto LABEL_110;
      case 0x16u:
        if (v8 != 178)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 0x1000u;
        v60 = *(a1 + 120);
        if (!v60)
        {
          v61 = *(a1 + 8);
          v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
          if (v61)
          {
            v62 = *v62;
          }

          v60 = sub_1902DB4(v62);
          *(a1 + 120) = v60;
          v7 = *v74;
        }

        v23 = sub_2254068(a3, v60, v7);
        goto LABEL_110;
      case 0x17u:
        if (v8 != 184)
        {
          goto LABEL_119;
        }

        v5 |= 0x200000u;
        v18 = (v7 + 1);
        v17 = *v7;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if (v19 < 0)
        {
          v68 = sub_19587DC(v7, v17);
          *v74 = v68;
          *(a1 + 163) = v69 != 0;
          if (!v68)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v18 = (v7 + 2);
LABEL_21:
          *v74 = v18;
          *(a1 + 163) = v17 != 0;
        }

        goto LABEL_111;
      default:
LABEL_119:
        if (v8)
        {
          v63 = (v8 & 7) == 4;
        }

        else
        {
          v63 = 1;
        }

        if (!v63)
        {
          v64 = *(a1 + 8);
          if (v64)
          {
            v65 = (v64 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v65 = sub_11F1920((a1 + 8));
            v7 = *v74;
          }

          v23 = sub_1952690(v8, v65, v7, a3);
LABEL_110:
          *v74 = v23;
          if (!v23)
          {
            goto LABEL_146;
          }

LABEL_111:
          if (sub_195ADC0(a3, v74, a3[11].i32[1]))
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
LABEL_146:
          *v74 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v74;
    }
  }
}

char *sub_18B4030(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x2000) == 0)
  {
LABEL_4:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 128);
  *v4 = 25;
  *(v4 + 1) = v8;
  v4 += 9;
  if ((v6 & 0x80) == 0)
  {
LABEL_5:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_15:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 80);
  *v4 = 34;
  v10 = *(v9 + 44);
  v4[1] = v10;
  if (v10 > 0x7F)
  {
    v11 = sub_19575D0(v10, v4 + 1);
  }

  else
  {
    v11 = v4 + 2;
  }

  v4 = sub_16E886C(v9, v11, a3);
  if ((v6 & 0x4000) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v12 = *(a1 + 136);
  *v4 = 41;
  *(v4 + 1) = v12;
  v4 += 9;
  if ((v6 & 4) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_25:
    v4 = sub_128AEEC(a3, 7, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_24:
  v4 = sub_128AEEC(a3, 6, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) != 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  if ((v6 & 0x8000) == 0)
  {
LABEL_9:
    v7 = v4;
    goto LABEL_33;
  }

LABEL_26:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 144);
  *v4 = 64;
  v14 = (2 * v13) ^ (v13 >> 63);
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

LABEL_33:
  if ((v6 & 0x40000) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v19 = *(a1 + 160);
    *v7 = 72;
    v7[1] = v19;
    v7 += 2;
    if ((v6 & 0x10) == 0)
    {
LABEL_35:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_36;
      }

LABEL_42:
      v7 = sub_128AEEC(a3, 11, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v7);
      if ((v6 & 0x10000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_43;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_35;
  }

  v7 = sub_128AEEC(a3, 10, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v7);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_42;
  }

LABEL_36:
  if ((v6 & 0x10000) == 0)
  {
LABEL_37:
    v18 = v7;
    goto LABEL_50;
  }

LABEL_43:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v20 = *(a1 + 152);
  *v7 = 96;
  v7[1] = v20;
  if (v20 > 0x7F)
  {
    v7[1] = v20 | 0x80;
    v21 = v20 >> 7;
    v7[2] = v20 >> 7;
    v18 = v7 + 3;
    if (v20 >= 0x4000)
    {
      LOBYTE(v7) = v7[2];
      do
      {
        *(v18 - 1) = v7 | 0x80;
        v7 = (v21 >> 7);
        *v18++ = v21 >> 7;
        v22 = v21 >> 14;
        v21 >>= 7;
      }

      while (v22);
    }
  }

  else
  {
    v18 = v7 + 2;
  }

LABEL_50:
  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v24 = *(a1 + 88);
    *v18 = 106;
    v25 = *(v24 + 20);
    v18[1] = v25;
    if (v25 > 0x7F)
    {
      v26 = sub_19575D0(v25, v18 + 1);
    }

    else
    {
      v26 = v18 + 2;
    }

    v18 = sub_18B68D0(v24, v26, a3);
    if ((v6 & 0x200) == 0)
    {
LABEL_52:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_53;
      }

LABEL_67:
      if (*a3 <= v18)
      {
        v18 = sub_225EB68(a3, v18);
      }

      v30 = *(a1 + 104);
      *v18 = 122;
      v31 = *(v30 + 20);
      v18[1] = v31;
      if (v31 > 0x7F)
      {
        v32 = sub_19575D0(v31, v18 + 1);
      }

      else
      {
        v32 = v18 + 2;
      }

      v18 = sub_18B7DDC(v30, v32, a3);
      if ((v6 & 0x20000) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_73;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_52;
  }

  if (*a3 <= v18)
  {
    v18 = sub_225EB68(a3, v18);
  }

  v27 = *(a1 + 96);
  *v18 = 114;
  v28 = *(v27 + 20);
  v18[1] = v28;
  if (v28 > 0x7F)
  {
    v29 = sub_19575D0(v28, v18 + 1);
  }

  else
  {
    v29 = v18 + 2;
  }

  v18 = sub_18B6E00(v27, v29, a3);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_67;
  }

LABEL_53:
  if ((v6 & 0x20000) == 0)
  {
LABEL_54:
    v23 = v18;
    goto LABEL_80;
  }

LABEL_73:
  if (*a3 <= v18)
  {
    v18 = sub_225EB68(a3, v18);
  }

  v33 = *(a1 + 156);
  *v18 = 384;
  v18[2] = v33;
  if (v33 > 0x7F)
  {
    v18[2] = v33 | 0x80;
    v34 = v33 >> 7;
    v18[3] = v33 >> 7;
    v23 = v18 + 4;
    if (v33 >= 0x4000)
    {
      LOBYTE(v18) = v18[3];
      do
      {
        *(v23 - 1) = v18 | 0x80;
        v18 = (v34 >> 7);
        *v23++ = v34 >> 7;
        v35 = v34 >> 14;
        v34 >>= 7;
      }

      while (v35);
    }
  }

  else
  {
    v23 = v18 + 3;
  }

LABEL_80:
  if ((v6 & 0x40) != 0)
  {
    v23 = sub_128AEEC(a3, 17, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v23);
    if ((v6 & 0x80000) == 0)
    {
LABEL_82:
      if ((v6 & 0x100000) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_91;
    }
  }

  else if ((v6 & 0x80000) == 0)
  {
    goto LABEL_82;
  }

  if (*a3 <= v23)
  {
    v23 = sub_225EB68(a3, v23);
  }

  v36 = *(a1 + 161);
  *v23 = 400;
  v23[2] = v36;
  v23 += 3;
  if ((v6 & 0x100000) == 0)
  {
LABEL_83:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_94;
  }

LABEL_91:
  if (*a3 <= v23)
  {
    v23 = sub_225EB68(a3, v23);
  }

  v37 = *(a1 + 162);
  *v23 = 408;
  v23[2] = v37;
  v23 += 3;
  if ((v6 & 0x800) == 0)
  {
LABEL_84:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_100;
  }

LABEL_94:
  if (*a3 <= v23)
  {
    v23 = sub_225EB68(a3, v23);
  }

  v38 = *(a1 + 112);
  *v23 = 418;
  v39 = *(v38 + 20);
  v23[2] = v39;
  if (v39 > 0x7F)
  {
    v40 = sub_19575D0(v39, v23 + 2);
  }

  else
  {
    v40 = v23 + 3;
  }

  v23 = sub_18B7248(v38, v40, a3);
  if ((v6 & 0x1000) == 0)
  {
LABEL_85:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_106;
  }

LABEL_100:
  if (*a3 <= v23)
  {
    v23 = sub_225EB68(a3, v23);
  }

  v41 = *(a1 + 120);
  *v23 = 434;
  v42 = *(v41 + 40);
  v23[2] = v42;
  if (v42 > 0x7F)
  {
    v43 = sub_19575D0(v42, v23 + 2);
  }

  else
  {
    v43 = v23 + 3;
  }

  v23 = sub_18B62DC(v41, v43, a3);
  if ((v6 & 0x200000) != 0)
  {
LABEL_106:
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v44 = *(a1 + 163);
    *v23 = 440;
    v23[2] = v44;
    v23 += 3;
  }

LABEL_109:
  v45 = *(a1 + 8);
  if ((v45 & 1) == 0)
  {
    return v23;
  }

  v47 = v45 & 0xFFFFFFFFFFFFFFFCLL;
  v48 = *(v47 + 31);
  if (v48 < 0)
  {
    v49 = *(v47 + 8);
    v48 = *(v47 + 16);
  }

  else
  {
    v49 = (v47 + 8);
  }

  if (*a3 - v23 >= v48)
  {
    v50 = v48;
    memcpy(v23, v49, v48);
    v23 += v50;
    return v23;
  }

  return sub_1957130(a3, v49, v48, v23);
}

uint64_t sub_18B4748(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v3 = 0;
    goto LABEL_19;
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
    v15 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_43;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v18 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 23);
  v20 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v20 = v19;
  }

  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_43:
  v21 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v21 + 23);
  v23 = *(v21 + 8);
  if ((v22 & 0x80u) == 0)
  {
    v23 = v22;
  }

  v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_46:
  v24 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v25 = *(v24 + 23);
  v26 = *(v24 + 8);
  if ((v25 & 0x80u) == 0)
  {
    v26 = v25;
  }

  v3 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_49:
  v27 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v28 = *(v27 + 23);
  v29 = *(v27 + 8);
  if ((v28 & 0x80u) == 0)
  {
    v29 = v28;
  }

  v3 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80) != 0)
  {
LABEL_18:
    v10 = sub_16E8DA4(*(a1 + 80));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_33;
  }

  if ((v2 & 0x100) != 0)
  {
    v30 = sub_18B69E4(*(a1 + 88));
    v3 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_22:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_55;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_22;
  }

  v31 = sub_18B6EC8(*(a1 + 96));
  v3 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x400) == 0)
  {
LABEL_23:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_24;
    }

LABEL_56:
    v33 = sub_18B7310(*(a1 + 112));
    v3 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_55:
  v32 = sub_18B80CC(*(a1 + 104));
  v3 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x800) != 0)
  {
    goto LABEL_56;
  }

LABEL_24:
  if ((v2 & 0x1000) != 0)
  {
LABEL_25:
    v11 = sub_18B641C(*(a1 + 120));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_26:
  v12 = v3 + 9;
  if ((v2 & 0x2000) == 0)
  {
    v12 = v3;
  }

  if ((v2 & 0x4000) != 0)
  {
    v3 = v12 + 9;
  }

  else
  {
    v3 = v12;
  }

  if ((v2 & 0x8000) != 0)
  {
    v3 += ((9 * (__clz((2 * *(a1 + 144)) ^ (*(a1 + 144) >> 63) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_33:
  if ((v2 & 0x3F0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v13 = *(a1 + 152);
      if (v13 < 0)
      {
        v14 = 11;
      }

      else
      {
        v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v3 += v14;
    }

    if ((v2 & 0x20000) != 0)
    {
      v34 = *(a1 + 156);
      if (v34 < 0)
      {
        v35 = 12;
      }

      else
      {
        v35 = ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v35;
    }

    v36 = v3 + ((v2 >> 17) & 2);
    if ((v2 & 0x80000) != 0)
    {
      v36 += 3;
    }

    if ((v2 & 0x100000) != 0)
    {
      v36 += 3;
    }

    if ((v2 & 0x200000) != 0)
    {
      v3 = v36 + 3;
    }

    else
    {
      v3 = v36;
    }
  }

  v37 = *(a1 + 8);
  if (v37)
  {
    v39 = v37 & 0xFFFFFFFFFFFFFFFCLL;
    v40 = *((v37 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v40 < 0)
    {
      v40 = *(v39 + 16);
    }

    v3 += v40;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_18B4BCC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_40;
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

      goto LABEL_17;
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

    goto LABEL_20;
  }

LABEL_17:
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

    goto LABEL_23;
  }

LABEL_20:
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
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_23:
  v17 = *(a2 + 56);
  *(a1 + 16) |= 0x10u;
  v18 = *(a1 + 8);
  v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
  if (v18)
  {
    v19 = *v19;
  }

  sub_194EA1C((a1 + 56), (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
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
  *(a1 + 16) |= 0x20u;
  v21 = *(a1 + 8);
  v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
  if (v21)
  {
    v22 = *v22;
  }

  sub_194EA1C((a1 + 64), (v20 & 0xFFFFFFFFFFFFFFFELL), v22);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_32;
  }

LABEL_29:
  v23 = *(a2 + 72);
  *(a1 + 16) |= 0x40u;
  v24 = *(a1 + 8);
  v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
  if (v24)
  {
    v25 = *v25;
  }

  sub_194EA1C((a1 + 72), (v23 & 0xFFFFFFFFFFFFFFFELL), v25);
  if ((v4 & 0x80) != 0)
  {
LABEL_32:
    *(a1 + 16) |= 0x80u;
    v26 = *(a1 + 80);
    if (!v26)
    {
      v27 = *(a1 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      v26 = sub_16F5BD8(v28);
      *(a1 + 80) = v26;
    }

    if (*(a2 + 80))
    {
      v29 = *(a2 + 80);
    }

    else
    {
      v29 = &off_277E738;
    }

    sub_16E4964(v26, v29);
  }

LABEL_40:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_51;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v31 = *(a1 + 88);
    if (!v31)
    {
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      v31 = sub_1902E54(v33);
      *(a1 + 88) = v31;
    }

    if (*(a2 + 88))
    {
      v34 = *(a2 + 88);
    }

    else
    {
      v34 = &off_27898B0;
    }

    sub_12EB184(v31, v34);
    if ((v4 & 0x200) == 0)
    {
LABEL_43:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_80;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_43;
  }

  *(a1 + 16) |= 0x200u;
  v35 = *(a1 + 96);
  if (!v35)
  {
    v36 = *(a1 + 8);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    v35 = sub_1902EDC(v37);
    *(a1 + 96) = v35;
  }

  if (*(a2 + 96))
  {
    v38 = *(a2 + 96);
  }

  else
  {
    v38 = &off_27898E0;
  }

  sub_132DE2C(v35, v38);
  if ((v4 & 0x400) == 0)
  {
LABEL_44:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_88;
  }

LABEL_80:
  *(a1 + 16) |= 0x400u;
  v39 = *(a1 + 104);
  if (!v39)
  {
    v40 = *(a1 + 8);
    v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
    if (v40)
    {
      v41 = *v41;
    }

    v39 = sub_1902FE4(v41);
    *(a1 + 104) = v39;
  }

  if (*(a2 + 104))
  {
    v42 = *(a2 + 104);
  }

  else
  {
    v42 = &off_2789920;
  }

  sub_18B5058(v39, v42);
  if ((v4 & 0x800) == 0)
  {
LABEL_45:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_96;
  }

LABEL_88:
  *(a1 + 16) |= 0x800u;
  v43 = *(a1 + 112);
  if (!v43)
  {
    v44 = *(a1 + 8);
    v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
    if (v44)
    {
      v45 = *v45;
    }

    v43 = sub_1902F60(v45);
    *(a1 + 112) = v43;
  }

  if (*(a2 + 112))
  {
    v46 = *(a2 + 112);
  }

  else
  {
    v46 = &off_2789900;
  }

  sub_132DE2C(v43, v46);
  if ((v4 & 0x1000) == 0)
  {
LABEL_46:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_104;
  }

LABEL_96:
  *(a1 + 16) |= 0x1000u;
  v47 = *(a1 + 120);
  if (!v47)
  {
    v48 = *(a1 + 8);
    v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
    if (v48)
    {
      v49 = *v49;
    }

    v47 = sub_1902DB4(v49);
    *(a1 + 120) = v47;
  }

  if (*(a2 + 120))
  {
    v50 = *(a2 + 120);
  }

  else
  {
    v50 = &off_2789880;
  }

  sub_18B53F8(v47, v50);
  if ((v4 & 0x2000) == 0)
  {
LABEL_47:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_48;
    }

LABEL_105:
    *(a1 + 136) = *(a2 + 136);
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_104:
  *(a1 + 128) = *(a2 + 128);
  if ((v4 & 0x4000) != 0)
  {
    goto LABEL_105;
  }

LABEL_48:
  if ((v4 & 0x8000) != 0)
  {
LABEL_49:
    *(a1 + 144) = *(a2 + 144);
  }

LABEL_50:
  *(a1 + 16) |= v4;
LABEL_51:
  if ((v4 & 0x3F0000) == 0)
  {
    goto LABEL_60;
  }

  if ((v4 & 0x10000) != 0)
  {
    *(a1 + 152) = *(a2 + 152);
    if ((v4 & 0x20000) == 0)
    {
LABEL_54:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_109;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_54;
  }

  *(a1 + 156) = *(a2 + 156);
  if ((v4 & 0x40000) == 0)
  {
LABEL_55:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_110;
  }

LABEL_109:
  *(a1 + 160) = *(a2 + 160);
  if ((v4 & 0x80000) == 0)
  {
LABEL_56:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_57;
    }

LABEL_111:
    *(a1 + 162) = *(a2 + 162);
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

LABEL_110:
  *(a1 + 161) = *(a2 + 161);
  if ((v4 & 0x100000) != 0)
  {
    goto LABEL_111;
  }

LABEL_57:
  if ((v4 & 0x200000) != 0)
  {
LABEL_58:
    *(a1 + 163) = *(a2 + 163);
  }

LABEL_59:
  *(a1 + 16) |= v4;
LABEL_60:
  v30 = *(a2 + 8);
  if (v30)
  {

    sub_1957EF4((a1 + 8), (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_18B5058(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_35;
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

      goto LABEL_17;
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
  if ((v4 & 0x80) != 0)
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
  if ((v4 & 0x7F00) == 0)
  {
    goto LABEL_45;
  }

  if ((v4 & 0x100) != 0)
  {
    v30 = *(a2 + 88);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x100u;
    v31 = v3->__r_.__value_.__l.__size_;
    v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
    if (v31)
    {
      v32 = *v32;
    }

    result = sub_194EA1C(&v3[3].__r_.__value_.__r.__words[2], (v30 & 0xFFFFFFFFFFFFFFFELL), v32);
    if ((v4 & 0x200) == 0)
    {
LABEL_38:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_55;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_38;
  }

  v33 = *(a2 + 96);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x200u;
  v34 = v3->__r_.__value_.__l.__size_;
  v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
  if (v34)
  {
    v35 = *v35;
  }

  result = sub_194EA1C(&v3[4], (v33 & 0xFFFFFFFFFFFFFFFELL), v35);
  if ((v4 & 0x400) == 0)
  {
LABEL_39:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_58;
  }

LABEL_55:
  v36 = *(a2 + 104);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x400u;
  v37 = v3->__r_.__value_.__l.__size_;
  v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
  if (v37)
  {
    v38 = *v38;
  }

  result = sub_194EA1C(&v3[4].__r_.__value_.__l.__size_, (v36 & 0xFFFFFFFFFFFFFFFELL), v38);
  if ((v4 & 0x800) == 0)
  {
LABEL_40:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_61;
  }

LABEL_58:
  v39 = *(a2 + 112);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x800u;
  v40 = v3->__r_.__value_.__l.__size_;
  v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
  if (v40)
  {
    v41 = *v41;
  }

  result = sub_194EA1C(&v3[4].__r_.__value_.__r.__words[2], (v39 & 0xFFFFFFFFFFFFFFFELL), v41);
  if ((v4 & 0x1000) == 0)
  {
LABEL_41:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_42;
    }

LABEL_64:
    v45 = *(a2 + 128);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x2000u;
    v46 = v3->__r_.__value_.__l.__size_;
    v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
    if (v46)
    {
      v47 = *v47;
    }

    result = sub_194EA1C(&v3[5].__r_.__value_.__l.__size_, (v45 & 0xFFFFFFFFFFFFFFFELL), v47);
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_61:
  v42 = *(a2 + 120);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x1000u;
  v43 = v3->__r_.__value_.__l.__size_;
  v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
  if (v43)
  {
    v44 = *v44;
  }

  result = sub_194EA1C(&v3[5], (v42 & 0xFFFFFFFFFFFFFFFELL), v44);
  if ((v4 & 0x2000) != 0)
  {
    goto LABEL_64;
  }

LABEL_42:
  if ((v4 & 0x4000) != 0)
  {
LABEL_43:
    LODWORD(v3[5].__r_.__value_.__r.__words[2]) = *(a2 + 136);
  }

LABEL_44:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
LABEL_45:
  v29 = *(a2 + 8);
  if (v29)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void sub_18B53F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1945054((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
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

uint64_t sub_18B54B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x80) != 0)
  {
    if (!sub_16E4B4C(*(a1 + 80)))
    {
      return 0;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000) == 0)
  {
    return 1;
  }

  v4 = *(a1 + 120);
  v5 = *(v4 + 24);
  do
  {
    v3 = v5 < 1;
    if (v5 < 1)
    {
      break;
    }

    v6 = v5 - 1;
    v7 = sub_18B5F14(*(*(v4 + 32) + 8 * v5));
    v5 = v6;
  }

  while ((v7 & 1) != 0);
  return v3;
}

BOOL sub_18B5538(uint64_t a1)
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
    v5 = sub_18B5F14(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_18B55A0(uint64_t a1)
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

  if (a1 != &off_2789838)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_1917370(v5);
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

void sub_18B5670(uint64_t a1)
{
  sub_18B55A0(a1);

  operator delete();
}

unsigned __int8 *sub_18B56A8(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_17A82BC(*(result + 3));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_16E4E44(*(v1 + 4));
    }
  }

  if ((v2 & 0x3C) != 0)
  {
    *(v1 + 5) = 0;
    *(v1 + 6) = 0;
    *(v1 + 16) = 0;
    *(v1 + 7) = 0;
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

char *sub_18B572C(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 3)
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
      v19 = *(a1 + 24);
      if (!v19)
      {
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_191BA60(v21);
        *(a1 + 24) = v19;
        v7 = v30;
      }

      v16 = sub_2201310(a3, v19, v7);
    }

    else
    {
      if (v11 == 2)
      {
        if (v8 == 17)
        {
          v25 = *v7;
          v17 = v7 + 8;
          v5 |= 4u;
          *(a1 + 40) = v25;
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      if (v11 != 3 || v8 != 26)
      {
        goto LABEL_43;
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
        v7 = v30;
      }

      v16 = sub_21F4D60(a3, v13, v7);
    }

LABEL_50:
    v30 = v16;
    if (!v16)
    {
      goto LABEL_59;
    }

LABEL_51:
    if (sub_195ADC0(a3, &v30, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_43;
    }

    v23 = v7 + 1;
    v22 = *v7;
    if (v22 < 0)
    {
      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if (v24 < 0)
      {
        v30 = sub_19587DC(v7, v22);
        if (!v30)
        {
          goto LABEL_59;
        }

        goto LABEL_36;
      }

      v23 = v7 + 2;
    }

    v30 = v23;
LABEL_36:
    if (v22 > 0xF)
    {
      sub_12E8500();
    }

    else
    {
      *(a1 + 16) |= 0x20u;
      *(a1 + 64) = v22;
    }

    goto LABEL_51;
  }

  if (v11 == 5)
  {
    if (v8 == 41)
    {
      v26 = *v7;
      v17 = v7 + 8;
      v5 |= 8u;
      *(a1 + 48) = v26;
      goto LABEL_42;
    }
  }

  else if (v11 == 6 && v8 == 49)
  {
    v18 = *v7;
    v17 = v7 + 8;
    v5 |= 0x10u;
    *(a1 + 56) = v18;
LABEL_42:
    v30 = v17;
    goto LABEL_51;
  }

LABEL_43:
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
      v7 = v30;
    }

    v16 = sub_1952690(v8, v29, v7, a3);
    goto LABEL_50;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_59:
  v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

char *sub_18B59EC(uint64_t a1, unint64_t __dst, _DWORD *a3)
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
    v9 = *(v8 + 44);
    v4[1] = v9;
    if (v9 > 0x7F)
    {
      v10 = sub_19575D0(v9, v4 + 1);
    }

    else
    {
      v10 = v4 + 2;
    }

    v4 = sub_1917694(v8, v10, a3);
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

  v15 = *(a1 + 64);
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
        v4 = (v16 >> 7);
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

    v18 = *(a1 + 48);
    *v7 = 41;
    *(v7 + 1) = v18;
    v7 += 9;
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v19 = *(a1 + 56);
    *v7 = 49;
    *(v7 + 1) = v19;
    v7 += 9;
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v7;
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

  if (*a3 - v7 >= v23)
  {
    v25 = v23;
    memcpy(v7, v24, v23);
    v7 += v25;
    return v7;
  }

  return sub_1957130(a3, v24, v23, v7);
}

uint64_t sub_18B5C98(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    result = 0;
    goto LABEL_20;
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

  v5 = sub_1917844(*(a1 + 24));
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
    v7 += 9;
  }

  if ((v2 & 0x10) != 0)
  {
    result = v7 + 9;
  }

  else
  {
    result = v7;
  }

  if ((v2 & 0x20) != 0)
  {
    v8 = *(a1 + 64);
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v8 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 11;
    }

    result += v10;
  }

LABEL_20:
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

void sub_18B5DBC(uint64_t a1, uint64_t a2)
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

        v6 = sub_191BA60(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_278B870;
      }

      sub_17A8DBC(v6, v9);
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
      *(a1 + 64) = *(a2 + 64);
      goto LABEL_9;
    }

LABEL_32:
    *(a1 + 56) = *(a2 + 56);
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

uint64_t sub_18B5F14(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_17A8EF8(*(a1 + 24));
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

  result = sub_16E5370(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18B5F70(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = off_2718458;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1945054(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
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

void sub_18B6050(_Unwind_Exception *a1)
{
  sub_194383C(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18B6094(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_194383C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18B6114(void *a1)
{
  sub_18B6094(a1);

  operator delete();
}

char *sub_18B614C(uint64_t a1, char *a2, int32x2_t *a3)
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
            sub_1902D30(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_22540F8(a3, v16, v13);
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

char *sub_18B62DC(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_18B59EC(v8, v10, a3);
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

uint64_t sub_18B641C(uint64_t a1)
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
      v7 = sub_18B5C98(v6);
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

uint64_t sub_18B64D4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_27184D8;
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

  *(a1 + 40) = &qword_278E990;
  if ((v5 & 4) != 0)
  {
    v9 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v9 = *v9;
    }

    sub_194EA1C((a1 + 40), (*(a2 + 40) & 0xFFFFFFFFFFFFFFFELL), v9);
  }

  return a1;
}

void sub_18B65E0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18B6610(uint64_t a1)
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

void sub_18B66DC(uint64_t a1)
{
  sub_18B6610(a1);

  operator delete();
}

uint64_t sub_18B6714(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_18B68D0(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_18B69E4(uint64_t a1)
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

uint64_t sub_18B6B14(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2718558;
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
  }

  return a1;
}

void sub_18B6BC0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18B6BF0(uint64_t a1)
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

void sub_18B6C90(uint64_t a1)
{
  sub_18B6BF0(a1);

  operator delete();
}

uint64_t sub_18B6CC8(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_18B6E00(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_18B6EC8(uint64_t a1)
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

uint64_t sub_18B6F5C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_27185D8;
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
  }

  return a1;
}

void sub_18B7008(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18B7038(uint64_t a1)
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

void sub_18B70D8(uint64_t a1)
{
  sub_18B7038(a1);

  operator delete();
}

uint64_t sub_18B7110(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_18B7248(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_18B7310(uint64_t a1)
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

uint64_t sub_18B73A4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2718658;
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

  *(a1 + 40) = &qword_278E990;
  if ((v5 & 4) != 0)
  {
    v9 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v9 = *v9;
    }

    sub_194EA1C((a1 + 40), (*(a2 + 40) & 0xFFFFFFFFFFFFFFFELL), v9);
    v5 = *(a2 + 16);
  }

  *(a1 + 48) = &qword_278E990;
  if ((v5 & 8) != 0)
  {
    v10 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v10 = *v10;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v10);
    v5 = *(a2 + 16);
  }

  *(a1 + 56) = &qword_278E990;
  if ((v5 & 0x10) != 0)
  {
    v11 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 56), (*(a2 + 56) & 0xFFFFFFFFFFFFFFFELL), v11);
    v5 = *(a2 + 16);
  }

  *(a1 + 64) = &qword_278E990;
  if ((v5 & 0x20) != 0)
  {
    v12 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v12 = *v12;
    }

    sub_194EA1C((a1 + 64), (*(a2 + 64) & 0xFFFFFFFFFFFFFFFELL), v12);
    v5 = *(a2 + 16);
  }

  *(a1 + 72) = &qword_278E990;
  if ((v5 & 0x40) != 0)
  {
    v13 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v13 = *v13;
    }

    sub_194EA1C((a1 + 72), (*(a2 + 72) & 0xFFFFFFFFFFFFFFFELL), v13);
    v5 = *(a2 + 16);
  }

  *(a1 + 80) = &qword_278E990;
  if ((v5 & 0x80) != 0)
  {
    v14 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v14 = *v14;
    }

    sub_194EA1C((a1 + 80), (*(a2 + 80) & 0xFFFFFFFFFFFFFFFELL), v14);
    v5 = *(a2 + 16);
  }

  *(a1 + 88) = &qword_278E990;
  if ((v5 & 0x100) != 0)
  {
    v15 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v15 = *v15;
    }

    sub_194EA1C((a1 + 88), (*(a2 + 88) & 0xFFFFFFFFFFFFFFFELL), v15);
    v5 = *(a2 + 16);
  }

  *(a1 + 96) = &qword_278E990;
  if ((v5 & 0x200) != 0)
  {
    v16 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 96), (*(a2 + 96) & 0xFFFFFFFFFFFFFFFELL), v16);
    v5 = *(a2 + 16);
  }

  *(a1 + 104) = &qword_278E990;
  if ((v5 & 0x400) != 0)
  {
    v17 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v17 = *v17;
    }

    sub_194EA1C((a1 + 104), (*(a2 + 104) & 0xFFFFFFFFFFFFFFFELL), v17);
    v5 = *(a2 + 16);
  }

  *(a1 + 112) = &qword_278E990;
  if ((v5 & 0x800) != 0)
  {
    v18 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v18 = *v18;
    }

    sub_194EA1C((a1 + 112), (*(a2 + 112) & 0xFFFFFFFFFFFFFFFELL), v18);
    v5 = *(a2 + 16);
  }

  *(a1 + 120) = &qword_278E990;
  if ((v5 & 0x1000) != 0)
  {
    v19 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v19 = *v19;
    }

    sub_194EA1C((a1 + 120), (*(a2 + 120) & 0xFFFFFFFFFFFFFFFELL), v19);
    v5 = *(a2 + 16);
  }

  *(a1 + 128) = &qword_278E990;
  if ((v5 & 0x2000) != 0)
  {
    v20 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v20 = *v20;
    }

    sub_194EA1C((a1 + 128), (*(a2 + 128) & 0xFFFFFFFFFFFFFFFELL), v20);
  }

  *(a1 + 136) = *(a2 + 136);
  return a1;
}

void sub_18B76C8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18B76F8(void *a1)
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

  sub_18B777C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_18B777C(uint64_t a1)
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

  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C((a1 + 40));
  }

  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C((a1 + 48));
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
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

  if (*(a1 + 112) != &qword_278E990)
  {
    sub_194E89C((a1 + 112));
  }

  result = (a1 + 120);
  if (*(a1 + 120) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  v6 = *(a1 + 128);
  v5 = (a1 + 128);
  if (v6 != &qword_278E990)
  {

    sub_194E89C(v5);
  }

  return result;
}

void sub_18B78D4(void *a1)
{
  sub_18B76F8(a1);

  operator delete();
}

uint64_t sub_18B790C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v36 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v36, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v36 + 1);
    v8 = **v36;
    if (**v36 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v36, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v36 + 2);
      }
    }

    *v36 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_71;
        }

        *(a1 + 16) |= 1u;
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v13 = (a1 + 24);
        goto LABEL_67;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_71;
        }

        *(a1 + 16) |= 2u;
        v23 = *(a1 + 8);
        v12 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v12 = *v12;
        }

        v13 = (a1 + 32);
        goto LABEL_67;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_71;
        }

        *(a1 + 16) |= 4u;
        v20 = *(a1 + 8);
        v12 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v12 = *v12;
        }

        v13 = (a1 + 40);
        goto LABEL_67;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_71;
        }

        *(a1 + 16) |= 8u;
        v21 = *(a1 + 8);
        v12 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v12 = *v12;
        }

        v13 = (a1 + 48);
        goto LABEL_67;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_71;
        }

        *(a1 + 16) |= 0x10u;
        v16 = *(a1 + 8);
        v12 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v12 = *v12;
        }

        v13 = (a1 + 56);
        goto LABEL_67;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_71;
        }

        *(a1 + 16) |= 0x20u;
        v24 = *(a1 + 8);
        v12 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v12 = *v12;
        }

        v13 = (a1 + 64);
        goto LABEL_67;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_71;
        }

        *(a1 + 16) |= 0x40u;
        v26 = *(a1 + 8);
        v12 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v12 = *v12;
        }

        v13 = (a1 + 72);
        goto LABEL_67;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_71;
        }

        *(a1 + 16) |= 0x80u;
        v22 = *(a1 + 8);
        v12 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v12 = *v12;
        }

        v13 = (a1 + 80);
        goto LABEL_67;
      case 9u:
        if (v8 != 74)
        {
          goto LABEL_71;
        }

        *(a1 + 16) |= 0x100u;
        v28 = *(a1 + 8);
        v12 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (v28)
        {
          v12 = *v12;
        }

        v13 = (a1 + 88);
        goto LABEL_67;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_71;
        }

        *(a1 + 16) |= 0x200u;
        v19 = *(a1 + 8);
        v12 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v12 = *v12;
        }

        v13 = (a1 + 96);
        goto LABEL_67;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_71;
        }

        *(a1 + 16) |= 0x400u;
        v27 = *(a1 + 8);
        v12 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v12 = *v12;
        }

        v13 = (a1 + 104);
        goto LABEL_67;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_71;
        }

        *(a1 + 16) |= 0x800u;
        v15 = *(a1 + 8);
        v12 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v12 = *v12;
        }

        v13 = (a1 + 112);
        goto LABEL_67;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_71;
        }

        v5 |= 0x4000u;
        LODWORD(v17) = *v7;
        if ((v17 & 0x80000000) == 0)
        {
          v18 = v7 + 1;
LABEL_80:
          *v36 = v18;
          *(a1 + 136) = v17;
          goto LABEL_69;
        }

        v17 = (*(v7 + 1) << 7) + v17 - 128;
        if ((*(v7 + 1) & 0x80000000) == 0)
        {
          v18 = v7 + 2;
          goto LABEL_80;
        }

        v34 = sub_19587DC(v7, v17);
        *v36 = v34;
        *(a1 + 136) = v35;
        if (!v34)
        {
          goto LABEL_86;
        }

        goto LABEL_69;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_71;
        }

        *(a1 + 16) |= 0x1000u;
        v25 = *(a1 + 8);
        v12 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v12 = *v12;
        }

        v13 = (a1 + 120);
        goto LABEL_67;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_71;
        }

        *(a1 + 16) |= 0x2000u;
        v14 = *(a1 + 8);
        v12 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v12 = *v12;
        }

        v13 = (a1 + 128);
LABEL_67:
        v29 = sub_194DB04(v13, v12);
        v30 = sub_1958890(v29, *v36, a3);
        goto LABEL_68;
      default:
LABEL_71:
        if (v8)
        {
          v31 = (v8 & 7) == 4;
        }

        else
        {
          v31 = 1;
        }

        if (!v31)
        {
          v32 = *(a1 + 8);
          if (v32)
          {
            v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v33 = sub_11F1920((a1 + 8));
            v7 = *v36;
          }

          v30 = sub_1952690(v8, v33, v7, a3);
LABEL_68:
          *v36 = v30;
          if (!v30)
          {
            goto LABEL_86;
          }

LABEL_69:
          if (sub_195ADC0(a3, v36, a3[11].i32[1]))
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
LABEL_86:
          *v36 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v36;
    }
  }
}

char *sub_18B7DDC(uint64_t a1, char *__dst, void *a3)
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
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v4 = sub_128AEEC(a3, 3, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v4 = sub_128AEEC(a3, 4, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4 = sub_128AEEC(a3, 5, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4 = sub_128AEEC(a3, 6, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v4 = sub_128AEEC(a3, 7, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v4 = sub_128AEEC(a3, 8, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v4 = sub_128AEEC(a3, 9, *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v4 = sub_128AEEC(a3, 10, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v4 = sub_128AEEC(a3, 12, *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_25:
  v4 = sub_128AEEC(a3, 11, *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v6 & 0x4000) == 0)
  {
LABEL_14:
    v7 = v4;
    goto LABEL_34;
  }

LABEL_27:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 136);
  *v4 = 104;
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

LABEL_34:
  if ((v6 & 0x1000) != 0)
  {
    v7 = sub_128AEEC(a3, 14, *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL, v7);
  }

  if ((v6 & 0x2000) != 0)
  {
    v7 = sub_128AEEC(a3, 15, *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL, v7);
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

uint64_t sub_18B80CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v2 = 0;
    goto LABEL_21;
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
    v12 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_36;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  v15 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 23);
  v17 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v17 = v16;
  }

  v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) == 0)
  {
LABEL_15:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_36:
  v18 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 23);
  v20 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v20 = v19;
  }

  v2 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x20) == 0)
  {
LABEL_16:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_39:
  v21 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v21 + 23);
  v23 = *(v21 + 8);
  if ((v22 & 0x80u) == 0)
  {
    v23 = v22;
  }

  v2 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x40) == 0)
  {
LABEL_17:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

LABEL_42:
  v24 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v25 = *(v24 + 23);
  v26 = *(v24 + 8);
  if ((v25 & 0x80u) == 0)
  {
    v26 = v25;
  }

  v2 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x80) != 0)
  {
LABEL_18:
    v9 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_21:
  if ((v1 & 0x7F00) == 0)
  {
    goto LABEL_68;
  }

  if ((v1 & 0x100) != 0)
  {
    v27 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    v28 = *(v27 + 23);
    v29 = *(v27 + 8);
    if ((v28 & 0x80u) == 0)
    {
      v29 = v28;
    }

    v2 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 0x200) == 0)
    {
LABEL_24:
      if ((v1 & 0x400) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_52;
    }
  }

  else if ((v1 & 0x200) == 0)
  {
    goto LABEL_24;
  }

  v30 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  v31 = *(v30 + 23);
  v32 = *(v30 + 8);
  if ((v31 & 0x80u) == 0)
  {
    v32 = v31;
  }

  v2 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x400) == 0)
  {
LABEL_25:
    if ((v1 & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_52:
  v33 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  v34 = *(v33 + 23);
  v35 = *(v33 + 8);
  if ((v34 & 0x80u) == 0)
  {
    v35 = v34;
  }

  v2 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x800) == 0)
  {
LABEL_26:
    if ((v1 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_55:
  v36 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
  v37 = *(v36 + 23);
  v38 = *(v36 + 8);
  if ((v37 & 0x80u) == 0)
  {
    v38 = v37;
  }

  v2 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x1000) == 0)
  {
LABEL_27:
    if ((v1 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_58:
  v39 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
  v40 = *(v39 + 23);
  v41 = *(v39 + 8);
  if ((v40 & 0x80u) == 0)
  {
    v41 = v40;
  }

  v2 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x2000) == 0)
  {
LABEL_28:
    if ((v1 & 0x4000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_64;
  }

LABEL_61:
  v42 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
  v43 = *(v42 + 23);
  v44 = *(v42 + 8);
  if ((v43 & 0x80u) == 0)
  {
    v44 = v43;
  }

  v2 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x4000) != 0)
  {
LABEL_64:
    v45 = *(a1 + 136);
    if (v45 < 0)
    {
      v46 = 11;
    }

    else
    {
      v46 = ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v46;
  }

LABEL_68:
  v47 = *(a1 + 8);
  if (v47)
  {
    v49 = v47 & 0xFFFFFFFFFFFFFFFCLL;
    v50 = *((v47 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v50 < 0)
    {
      v50 = *(v49 + 16);
    }

    v2 += v50;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_18B8558(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_27186D8;
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
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t sub_18B865C(uint64_t a1)
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
  if (a1 != &off_27899B0)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_17F3D00(v6);
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

void sub_18B8714(uint64_t a1)
{
  sub_18B865C(a1);

  operator delete();
}

uint64_t sub_18B874C(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_17F3E48(*(result + 24));
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

char *sub_18B87AC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v24 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v24, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v24 + 1;
    v8 = *v24;
    if (*v24 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v24, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v24 + 2;
      }
    }

    v24 = v7;
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_23;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_23:
      v24 = v17;
      *(a1 + 32) = v16 != 0;
      goto LABEL_30;
    }

    v22 = sub_19587DC(v7, v16);
    v24 = v22;
    *(a1 + 32) = v23 != 0;
    if (!v22)
    {
      goto LABEL_37;
    }

LABEL_30:
    if (sub_195ADC0(a3, &v24, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 10)
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

      v19 = sub_18628F0(v21);
      *(a1 + 24) = v19;
      v7 = v24;
    }

    v15 = sub_2254188(a3, v19, v7);
LABEL_29:
    v24 = v15;
    if (!v15)
    {
      goto LABEL_37;
    }

    goto LABEL_30;
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
      v7 = v24;
    }

    v15 = sub_1952690(v8, v14, v7, a3);
    goto LABEL_29;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_37:
  v24 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v24;
}

char *sub_18B8994(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_17F41AC(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 32);
    *v4 = 16;
    v4[1] = v10;
    v4 += 2;
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v14)
  {
    v16 = v14;
    memcpy(v4, v15, v14);
    v4 += v16;
    return v4;
  }

  return sub_1957130(a3, v15, v14, v4);
}

uint64_t sub_18B8AE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v5 = sub_17F439C(*(a1 + 24));
      v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v3 = 0;
    }

    result = v3 + (v2 & 2);
  }

  else
  {
    result = 0;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    result += v8;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_18B8B7C(uint64_t a1, uint64_t a2)
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

        v5 = sub_18628F0(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2784E30;
      }

      sub_17F4500(v5, v8);
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

uint64_t sub_18B8C4C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_17F4688(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18B8C8C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2718758;
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
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t sub_18B8E4C(uint64_t a1)
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

  if (a1 != &off_27899D8 && *(a1 + 56))
  {
    sub_16E8374();
    operator delete();
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

void sub_18B8F20(uint64_t a1)
{
  sub_18B8E4C(a1);

  operator delete();
}

uint64_t sub_18B8F58(uint64_t a1)
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
      result = sub_16E48B0(*(a1 + 56));
    }
  }

LABEL_7:
  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 56) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

uint64_t sub_18B8FF8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v31 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v31, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v31 + 1);
    v8 = **v31;
    if (**v31 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v31, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v31 + 2);
      }
    }

    *v31 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 != 3)
    {
      if (v11 == 4 && v8 == 34)
      {
        v17 = (v7 - 1);
        while (1)
        {
          v18 = (v17 + 1);
          *v31 = v17 + 1;
          v19 = *(a1 + 40);
          if (v19 && (v20 = *(a1 + 32), v20 < *v19))
          {
            *(a1 + 32) = v20 + 1;
            v21 = *&v19[2 * v20 + 2];
          }

          else
          {
            v22 = *(a1 + 24);
            if (!v22)
            {
              operator new();
            }

            *v24 = v23;
            v24[1] = sub_195A650;
            *v23 = 0;
            v23[1] = 0;
            v23[2] = 0;
            v21 = sub_19593CC(a1 + 24, v23);
            v18 = *v31;
          }

          v17 = sub_1958890(v21, v18, a3);
          *v31 = v17;
          if (!v17)
          {
            goto LABEL_52;
          }

          if (*a3 <= v17 || *v17 != 34)
          {
            goto LABEL_47;
          }
        }
      }

      goto LABEL_39;
    }

    if (v8 != 26)
    {
      goto LABEL_39;
    }

    *(a1 + 16) |= 1u;
    v25 = *(a1 + 8);
    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v26 = *v26;
    }

    v27 = sub_194DB04((a1 + 48), v26);
    v16 = sub_1958890(v27, *v31, a3);
LABEL_46:
    *v31 = v16;
    if (!v16)
    {
      goto LABEL_52;
    }

LABEL_47:
    if (sub_195ADC0(a3, v31, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 1)
  {
    if (v11 != 2 || v8 != 18)
    {
      goto LABEL_39;
    }

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

      v13 = sub_16F5BD8(v15);
      *(a1 + 56) = v13;
      v7 = *v31;
    }

    v16 = sub_21F7188(a3, v13, v7);
    goto LABEL_46;
  }

  if (v8 == 9)
  {
    v5 |= 4u;
    *(a1 + 64) = *v7;
    *v31 = v7 + 8;
    goto LABEL_47;
  }

LABEL_39:
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
      v7 = *v31;
    }

    v16 = sub_1952690(v8, v30, v7, a3);
    goto LABEL_46;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_52:
  *v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v31;
}

char *sub_18B92D4(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v11 = *(a1 + 64);
    *v4 = 9;
    *(v4 + 1) = v11;
    v4 += 9;
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
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

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v12 = *(a1 + 56);
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

  v4 = sub_16E886C(v12, v14, a3);
  if (v6)
  {
LABEL_4:
    v4 = sub_128AEEC(a3, 3, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_5:
  v7 = *(a1 + 32);
  if (v7 >= 1)
  {
    v8 = 8;
    do
    {
      v4 = sub_1355F54(a3, 4, *(*(a1 + 40) + v8), v4);
      v8 += 8;
      --v7;
    }

    while (v7);
  }

  v9 = *(a1 + 8);
  if ((v9 & 1) == 0)
  {
    return v4;
  }

  v15 = v9 & 0xFFFFFFFFFFFFFFFCLL;
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

uint64_t sub_18B9488(uint64_t a1)
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
      v9 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v12 = sub_16E8DA4(*(a1 + 56));
      v4 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 4) != 0)
    {
      v4 += 9;
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

    v4 += v16;
  }

  *(a1 + 20) = v4;
  return v4;
}

void sub_18B95C8(uint64_t a1, uint64_t a2)
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
    v14 = *(a1 + 56);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_16F5BD8(v16);
      *(a1 + 56) = v14;
    }

    if (*(a2 + 56))
    {
      v17 = *(a2 + 56);
    }

    else
    {
      v17 = &off_277E738;
    }

    sub_16E4964(v14, v17);
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

uint64_t sub_18B9734(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  result = sub_16E4B4C(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18B9774(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_27187D8;
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
  }

  return a1;
}

void sub_18B9820(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18B9850(uint64_t a1)
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

void sub_18B98F0(uint64_t a1)
{
  sub_18B9850(a1);

  operator delete();
}

uint64_t sub_18B9928(uint64_t a1)
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

uint64_t sub_18B996C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_18B9AA4(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_18B9B6C(uint64_t a1)
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

void *sub_18B9C00(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18B9C7C(void *a1)
{
  sub_18B9C00(a1);

  operator delete();
}

uint64_t sub_18B9CB4(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 56) = 0;
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_18B9D1C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 16)
        {
          v5 |= 2u;
          LODWORD(v13) = *v7;
          if ((v13 & 0x80000000) != 0)
          {
            v13 = (v7[1] << 7) + v13 - 128;
            if (v7[1] < 0)
            {
              v31 = sub_19587DC(v7, v13);
              *v35 = v31;
              *(a1 + 52) = v32;
              if (!v31)
              {
                goto LABEL_66;
              }

              goto LABEL_54;
            }

            v14 = v7 + 2;
          }

          else
          {
            v14 = v7 + 1;
          }

          *v35 = v14;
          *(a1 + 52) = v13;
          goto LABEL_54;
        }

        goto LABEL_40;
      }

      if (v8 != 8)
      {
        goto LABEL_40;
      }

      v24 = (v7 + 1);
      v23 = *v7;
      if (v23 < 0)
      {
        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if (v25 < 0)
        {
          *v35 = sub_19587DC(v7, v23);
          if (!*v35)
          {
            goto LABEL_66;
          }

          goto LABEL_35;
        }

        v24 = (v7 + 2);
      }

      *v35 = v24;
LABEL_35:
      if (v23 > 4)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 48) = v23;
      }

      goto LABEL_54;
    }

    if (v11 == 3)
    {
      if (v8 == 24)
      {
        v5 |= 4u;
        LODWORD(v26) = *v7;
        if ((v26 & 0x80000000) != 0)
        {
          v26 = (v7[1] << 7) + v26 - 128;
          if (v7[1] < 0)
          {
            v33 = sub_19587DC(v7, v26);
            *v35 = v33;
            *(a1 + 56) = v34;
            if (!v33)
            {
              goto LABEL_66;
            }

            goto LABEL_54;
          }

          v27 = v7 + 2;
        }

        else
        {
          v27 = v7 + 1;
        }

        *v35 = v27;
        *(a1 + 56) = v26;
        goto LABEL_54;
      }
    }

    else if (v11 == 4 && v8 == 34)
    {
      v15 = (v7 - 1);
      while (1)
      {
        v16 = (v15 + 1);
        *v35 = v15 + 1;
        v17 = *(a1 + 40);
        if (v17 && (v18 = *(a1 + 32), v18 < *v17))
        {
          *(a1 + 32) = v18 + 1;
          v19 = *&v17[2 * v18 + 2];
        }

        else
        {
          v20 = *(a1 + 24);
          if (!v20)
          {
            operator new();
          }

          *v22 = v21;
          v22[1] = sub_195A650;
          *v21 = 0;
          v21[1] = 0;
          v21[2] = 0;
          v19 = sub_19593CC(a1 + 24, v21);
          v16 = *v35;
        }

        v15 = sub_1958890(v19, v16, a3);
        *v35 = v15;
        if (!v15)
        {
          goto LABEL_66;
        }

        if (*a3 <= v15 || *v15 != 34)
        {
          goto LABEL_54;
        }
      }
    }

LABEL_40:
    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

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

    *v35 = sub_1952690(v8, v30, v7, a3);
    if (!*v35)
    {
      goto LABEL_66;
    }

LABEL_54:
    if (sub_195ADC0(a3, v35, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_66:
  *v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v35;
}

char *sub_18BA078(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 48);
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

    v12 = *(a1 + 52);
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 56);
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
          v11 = (v17 >> 7);
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

  v19 = *(a1 + 32);
  if (v19 >= 1)
  {
    v20 = 8;
    do
    {
      v21 = *(*(a1 + 40) + v20);
      v22 = *(v21 + 23);
      if (v22 < 0 && (v22 = v21[1], v22 > 127) || *a3 - v15 + 14 < v22)
      {
        v15 = sub_1957480(a3, 4, v21, v15);
      }

      else
      {
        *v15 = 34;
        v15[1] = v22;
        if (*(v21 + 23) < 0)
        {
          v21 = *v21;
        }

        v23 = v15 + 2;
        memcpy(v23, v21, v22);
        v15 = &v23[v22];
      }

      v20 += 8;
      --v19;
    }

    while (v19);
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v15;
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

  if (*a3 - v15 >= v27)
  {
    v29 = v27;
    memcpy(v15, v28, v27);
    v15 += v29;
    return v15;
  }

  return sub_1957130(a3, v28, v27, v15);
}

uint64_t sub_18BA360(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    v4 = sub_153E13C(a1);
  }

  else
  {
    v2 = *(a1 + 48);
    if (v2 < 0)
    {
      v3 = 13;
    }

    else
    {
      v3 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 3;
    }

    v5 = *(a1 + 52);
    if (v5 < 0)
    {
      v6 = 10;
    }

    else
    {
      v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    }

    v7 = *(a1 + 56);
    if (v7 < 0)
    {
      v8 = 10;
    }

    else
    {
      v8 = (9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6;
    }

    v4 = v3 + v6 + v8;
  }

  v9 = *(a1 + 32);
  result = v4 + v9;
  if (v9 >= 1)
  {
    v11 = (*(a1 + 40) + 8);
    do
    {
      v12 = *v11++;
      v13 = *(v12 + 23);
      v14 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v14 = v13;
      }

      result += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      --v9;
    }

    while (v9);
  }

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

uint64_t sub_18BA4C4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_27188D8;
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
    sub_19450E0((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

  *(a1 + 56) = &qword_278E990;
  if ((v11 & 2) != 0)
  {
    v13 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v13 = *v13;
    }

    sub_194EA1C((a1 + 56), (*(a2 + 56) & 0xFFFFFFFFFFFFFFFELL), v13);
  }

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

void sub_18BA61C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18BA660(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  sub_19438C0(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18BA724(uint64_t a1)
{
  sub_18BA660(a1);

  operator delete();
}

uint64_t sub_18BA75C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_18BA75C(v4);
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
      v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v5 & 2) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      *v6 = 0;
      *(v6 + 23) = 0;
    }

    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_10:
    v7 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
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
  }

LABEL_15:
  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 56) = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

uint64_t sub_18BA848(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v30 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v30, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v30 + 1);
    v7 = **v30;
    if (**v30 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v30, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v30 + 2);
      }
    }

    *v30 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 != 3)
      {
        if (v10 == 4 && v7 == 34)
        {
          v15 = v6 - 1;
          while (1)
          {
            *v30 = v15 + 1;
            v16 = *(a1 + 40);
            if (v16 && (v17 = *(a1 + 32), v17 < *v16))
            {
              *(a1 + 32) = v17 + 1;
              v18 = *&v16[2 * v17 + 2];
            }

            else
            {
              v19 = sub_19032BC(*(a1 + 24));
              v18 = sub_19593CC(a1 + 24, v19);
            }

            v15 = sub_2254218(a3, v18);
            *v30 = v15;
            if (!v15)
            {
              break;
            }

            if (*a3 <= v15 || *v15 != 34)
            {
              goto LABEL_49;
            }
          }

LABEL_57:
          *v30 = 0;
          return *v30;
        }

LABEL_41:
        if (v7)
        {
          v26 = (v7 & 7) == 4;
        }

        else
        {
          v26 = 1;
        }

        if (v26)
        {
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return *v30;
          }

          goto LABEL_57;
        }

        v27 = *(a1 + 8);
        if (v27)
        {
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v28 = sub_11F1920((a1 + 8));
          v6 = *v30;
        }

        v25 = sub_1952690(v7, v28, v6, a3);
        goto LABEL_48;
      }

      if (v7 != 26)
      {
        goto LABEL_41;
      }

      *(a1 + 16) |= 2u;
      v23 = *(a1 + 8);
      v13 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v13 = *v13;
      }

      v14 = (a1 + 56);
    }

    else
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v21 = v6 + 1;
          v20 = *v6;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_33;
          }

          v22 = *v21;
          v20 = (v22 << 7) + v20 - 128;
          if (v22 < 0)
          {
            *v30 = sub_19587DC(v6, v20);
            if (!*v30)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v21 = v6 + 2;
LABEL_33:
            *v30 = v21;
          }

          if (v20 > 3)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 64) = v20;
          }

          continue;
        }

        goto LABEL_41;
      }

      if (v10 != 2 || v7 != 18)
      {
        goto LABEL_41;
      }

      *(a1 + 16) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v14 = (a1 + 48);
    }

    v24 = sub_194DB04(v14, v13);
    v25 = sub_1958890(v24, *v30, a3);
LABEL_48:
    *v30 = v25;
    if (!v25)
    {
      goto LABEL_57;
    }

LABEL_49:
    ;
  }

  return *v30;
}

char *sub_18BAAE0(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 64);
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
    v6 = sub_128AEEC(a3, 2, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  if ((v5 & 2) != 0)
  {
    v6 = sub_128AEEC(a3, 3, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v6);
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
      *v6 = 34;
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

      v6 = sub_18BAAE0(v13, v15, a3);
    }
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

uint64_t sub_18BACE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    v4 = *(a1 + 64);
    if (v4 < 0)
    {
      v3 = 11;
    }

    else
    {
      v3 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *(a1 + 32);
  v6 = v3 + v5;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 8 * v5;
    do
    {
      v10 = *v8++;
      v11 = sub_18BACE4(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
    v2 = *(a1 + 16);
  }

  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v12 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v13 = *(v12 + 23);
      v14 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v14 = v13;
      }

      v6 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 2) != 0)
    {
      v15 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      v16 = *(v15 + 23);
      v17 = *(v15 + 8);
      if ((v16 & 0x80u) == 0)
      {
        v17 = v16;
      }

      v6 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

    v6 += v21;
  }

  *(a1 + 20) = v6;
  return v6;
}

std::string *sub_18BAE58(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_19450E0(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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

uint64_t sub_18BAFD4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2718958;
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

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_194516C((a1 + 48), v12, (v11 + 8), v10, **(a1 + 64) - *(a1 + 56));
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

  *(a1 + 72) = &qword_278E990;
  v16 = *(a2 + 16);
  if (v16)
  {
    v17 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v17 = *v17;
    }

    sub_194EA1C((a1 + 72), (*(a2 + 72) & 0xFFFFFFFFFFFFFFFELL), v17);
    v16 = *(a2 + 16);
  }

  *(a1 + 80) = &qword_278E990;
  if ((v16 & 2) != 0)
  {
    v18 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v18 = *v18;
    }

    sub_194EA1C((a1 + 80), (*(a2 + 80) & 0xFFFFFFFFFFFFFFFELL), v18);
    v16 = *(a2 + 16);
  }

  if ((v16 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 88) = 0;
  if ((v16 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 96) = 0;
  if ((v16 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 104) = 0;
  if ((v16 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 112) = 0;
  v19 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = v19;
  return a1;
}

void *sub_18BB320(void *a1)
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

  sub_18BB3B8(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1943944(a1 + 6);
  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_18BB3B8(uint64_t a1)
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

  if (a1 != &off_2789A88)
  {
    v5 = *(a1 + 88);
    if (v5)
    {
      sub_1869B9C(v5);
      operator delete();
    }

    if (*(a1 + 96))
    {
      sub_16ED13C();
      operator delete();
    }

    v6 = *(a1 + 104);
    if (v6)
    {
      sub_18BA660(v6);
      operator delete();
    }

    result = *(a1 + 112);
    if (result)
    {
      sub_186AB40(result);

      operator delete();
    }
  }

  return result;
}

void sub_18BB4B0(void *a1)
{
  sub_18BB320(a1);

  operator delete();
}

uint64_t sub_18BB4E8(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_18B9CB4(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 16);
  if ((v6 & 0x3F) == 0)
  {
    goto LABEL_13;
  }

  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_25:
    v10 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v6 & 4) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v6 & 4) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_9:
    if ((v6 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_30:
    result = sub_16ED178(*(a1 + 96));
    if ((v6 & 0x10) == 0)
    {
LABEL_11:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_31;
  }

  v9 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v6 & 2) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v6 & 2) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_8:
  if ((v6 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_29:
  result = sub_1869C8C(*(a1 + 88));
  if ((v6 & 8) != 0)
  {
    goto LABEL_30;
  }

LABEL_10:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_31:
  result = sub_18BA75C(*(a1 + 104));
  if ((v6 & 0x20) != 0)
  {
LABEL_12:
    result = sub_186AC88(*(a1 + 112));
  }

LABEL_13:
  if ((v6 & 0xC0) != 0)
  {
    *(a1 + 124) = 0;
    *(a1 + 120) = 0;
  }

  if ((v6 & 0x300) != 0)
  {
    *(a1 + 125) = 0;
    *(a1 + 128) = 10;
  }

  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}