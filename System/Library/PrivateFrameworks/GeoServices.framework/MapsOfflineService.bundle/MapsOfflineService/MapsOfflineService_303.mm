std::string *sub_12A0E00(std::string *result, uint64_t a2)
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
  if ((v9 & 7) != 0)
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
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v14 = v3->__r_.__value_.__l.__size_;
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    result = sub_194EA1C(&v3[2].__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
    if ((v9 & 4) != 0)
    {
LABEL_15:
      v16 = *(a2 + 64);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
      v17 = v3->__r_.__value_.__l.__size_;
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      result = sub_194EA1C(&v3[2].__r_.__value_.__r.__words[2], (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
    }
  }

LABEL_18:
  v19 = *(a2 + 8);
  if (v19)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_12A0F88(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26CE100;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[7] = 0;
  result[8] = 0;
  result[6] = &qword_278E990;
  return result;
}

double sub_12A1030(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26CE180;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = &qword_278E990;
  *(v2 + 56) = &qword_278E990;
  *(v2 + 64) = &qword_278E990;
  result = 0.0;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  return result;
}

void *sub_12A10E8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26CE200;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_12A1160(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26CE280;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  result[8] = &qword_278E990;
  return result;
}

void *sub_12A1208(void *a1)
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

  sub_12A1298(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_12A4A9C(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_12A1298(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2 = (a1 + 48);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
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

  result = (a1 + 96);
  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2768D80)
  {
    if (*(a1 + 104))
    {
      sub_157222C();
      operator delete();
    }

    if (*(a1 + 112))
    {
      sub_1576620();
      operator delete();
    }

    if (*(a1 + 120))
    {
      sub_1570F84();
      operator delete();
    }

    if (*(a1 + 128))
    {
      sub_156FCCC();
      operator delete();
    }

    if (*(a1 + 136))
    {
      sub_13F0544();
      operator delete();
    }

    if (*(a1 + 144))
    {
      sub_157426C();
      operator delete();
    }

    result = *(a1 + 152);
    if (result)
    {
      sub_156E9C8();

      operator delete();
    }
  }

  return result;
}

void sub_12A1454(void *a1)
{
  sub_12A1208(a1);

  operator delete();
}

uint64_t sub_12A148C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_156EFA0(v4);
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
    v8 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_39;
      }
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_43:
    v10 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v5 & 8) != 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v5 & 8) != 0)
      {
        goto LABEL_47;
      }
    }

LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_51:
    v12 = *(v1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_55;
      }
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_55;
      }
    }

LABEL_12:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_59;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_39:
  v9 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v5 & 4) != 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v5 & 4) != 0)
    {
      goto LABEL_43;
    }
  }

LABEL_9:
  if ((v5 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_47:
  v11 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v11 + 23) < 0)
  {
    **v11 = 0;
    *(v11 + 8) = 0;
    if ((v5 & 0x10) != 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    *v11 = 0;
    *(v11 + 23) = 0;
    if ((v5 & 0x10) != 0)
    {
      goto LABEL_51;
    }
  }

LABEL_11:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_55:
  v13 = *(v1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v13 + 23) & 0x80000000) == 0)
  {
    *v13 = 0;
    *(v13 + 23) = 0;
    if ((v5 & 0x40) != 0)
    {
      goto LABEL_59;
    }

LABEL_13:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  **v13 = 0;
  *(v13 + 8) = 0;
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_59:
  v14 = *(v1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v14 + 23) & 0x80000000) == 0)
  {
    *v14 = 0;
    *(v14 + 23) = 0;
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    result = sub_1572268(*(v1 + 104));
    goto LABEL_15;
  }

  **v14 = 0;
  *(v14 + 8) = 0;
  if ((v5 & 0x80) != 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  if ((v5 & 0x3F00) == 0)
  {
    goto LABEL_23;
  }

  if ((v5 & 0x100) != 0)
  {
    result = sub_157665C(*(v1 + 112));
    if ((v5 & 0x200) == 0)
    {
LABEL_18:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  result = sub_1570FC0(*(v1 + 120));
  if ((v5 & 0x400) == 0)
  {
LABEL_19:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = sub_156EFA0(*(v1 + 128));
  if ((v5 & 0x800) == 0)
  {
LABEL_20:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = sub_13F0580(*(v1 + 136));
  if ((v5 & 0x1000) == 0)
  {
LABEL_21:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_36:
  result = sub_15742A8(*(v1 + 144));
  if ((v5 & 0x2000) != 0)
  {
LABEL_22:
    result = sub_156EA04(*(v1 + 152));
  }

LABEL_23:
  if ((v5 & 0xC000) != 0)
  {
    *(v1 + 160) = 0;
    *(v1 + 168) = 0;
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 168) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_12A170C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v68 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v68, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v68 + 1);
    v8 = **v68;
    if (**v68 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v68, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v68 + 2);
      }
    }

    *v68 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_107;
        }

        v5 |= 0x4000u;
        v12 = (v7 + 1);
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_12:
          *v68 = v12;
          *(a1 + 160) = v11;
          goto LABEL_99;
        }

        v64 = sub_19587DC(v7, v11);
        *v68 = v64;
        *(a1 + 160) = v65;
        if (v64)
        {
          goto LABEL_99;
        }

        goto LABEL_123;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_107;
        }

        v5 |= 0x8000u;
        v26 = (v7 + 1);
        v25 = *v7;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_37;
        }

        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if (v27 < 0)
        {
          v62 = sub_19587DC(v7, v25);
          *v68 = v62;
          *(a1 + 168) = v63;
          if (!v62)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v26 = (v7 + 2);
LABEL_37:
          *v68 = v26;
          *(a1 + 168) = v25;
        }

        goto LABEL_99;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_107;
        }

        *(a1 + 16) |= 0x80u;
        v33 = *(a1 + 104);
        if (!v33)
        {
          v34 = *(a1 + 8);
          v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
          if (v34)
          {
            v35 = *v35;
          }

          v33 = sub_1572864(v35);
          *(a1 + 104) = v33;
          v7 = *v68;
        }

        v17 = sub_21F47C0(a3, v33, v7);
        goto LABEL_98;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_107;
        }

        *(a1 + 16) |= 0x100u;
        v30 = *(a1 + 112);
        if (!v30)
        {
          v31 = *(a1 + 8);
          v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
          if (v31)
          {
            v32 = *v32;
          }

          v30 = sub_1576E20(v32);
          *(a1 + 112) = v30;
          v7 = *v68;
        }

        v17 = sub_21F4850(a3, v30, v7);
        goto LABEL_98;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_107;
        }

        *(a1 + 16) |= 1u;
        v21 = *(a1 + 8);
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        v23 = (a1 + 48);
        goto LABEL_97;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_107;
        }

        *(a1 + 16) |= 2u;
        v28 = *(a1 + 8);
        v22 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (v28)
        {
          v22 = *v22;
        }

        v23 = (a1 + 56);
        goto LABEL_97;
      case 9u:
        if (v8 != 74)
        {
          goto LABEL_107;
        }

        *(a1 + 16) |= 4u;
        v36 = *(a1 + 8);
        v22 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
        if (v36)
        {
          v22 = *v22;
        }

        v23 = (a1 + 64);
        goto LABEL_97;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_107;
        }

        *(a1 + 16) |= 8u;
        v37 = *(a1 + 8);
        v22 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
        if (v37)
        {
          v22 = *v22;
        }

        v23 = (a1 + 72);
        goto LABEL_97;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_107;
        }

        *(a1 + 16) |= 0x200u;
        v50 = *(a1 + 120);
        if (!v50)
        {
          v51 = *(a1 + 8);
          v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
          if (v51)
          {
            v52 = *v52;
          }

          v50 = sub_157202C(v52);
          *(a1 + 120) = v50;
          v7 = *v68;
        }

        v17 = sub_21F48E0(a3, v50, v7);
        goto LABEL_98;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_107;
        }

        *(a1 + 16) |= 0x400u;
        v47 = *(a1 + 128);
        if (!v47)
        {
          v48 = *(a1 + 8);
          v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
          if (v48)
          {
            v49 = *v49;
          }

          v47 = sub_1570D50(v49);
          *(a1 + 128) = v47;
          v7 = *v68;
        }

        v17 = sub_21F4970(a3, v47, v7);
        goto LABEL_98;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_107;
        }

        *(a1 + 16) |= 0x800u;
        v18 = *(a1 + 136);
        if (!v18)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v18 = sub_13F0FB4(v20);
          *(a1 + 136) = v18;
          v7 = *v68;
        }

        v17 = sub_21F4A00(a3, v18, v7);
        goto LABEL_98;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_107;
        }

        *(a1 + 16) |= 0x10u;
        v29 = *(a1 + 8);
        v22 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v22 = *v22;
        }

        v23 = (a1 + 80);
        goto LABEL_97;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_107;
        }

        *(a1 + 16) |= 0x20u;
        v24 = *(a1 + 8);
        v22 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v22 = *v22;
        }

        v23 = (a1 + 88);
        goto LABEL_97;
      case 0x10u:
        if (v8 != 130)
        {
          goto LABEL_107;
        }

        *(a1 + 16) |= 0x1000u;
        v14 = *(a1 + 144);
        if (!v14)
        {
          v15 = *(a1 + 8);
          v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
          if (v15)
          {
            v16 = *v16;
          }

          v14 = sub_1574A80(v16);
          *(a1 + 144) = v14;
          v7 = *v68;
        }

        v17 = sub_21F4A90(a3, v14, v7);
        goto LABEL_98;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_107;
        }

        v5 |= 0x10000u;
        v39 = (v7 + 1);
        v38 = *v7;
        if ((v38 & 0x8000000000000000) == 0)
        {
          goto LABEL_70;
        }

        v40 = *v39;
        v38 = (v40 << 7) + v38 - 128;
        if (v40 < 0)
        {
          v66 = sub_19587DC(v7, v38);
          *v68 = v66;
          *(a1 + 176) = v67 != 0;
          if (!v66)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v39 = (v7 + 2);
LABEL_70:
          *v68 = v39;
          *(a1 + 176) = v38 != 0;
        }

        goto LABEL_99;
      case 0x12u:
        if (v8 != 146)
        {
          goto LABEL_107;
        }

        v41 = v7 - 2;
        while (1)
        {
          v42 = v41 + 2;
          *v68 = v41 + 2;
          v43 = *(a1 + 40);
          if (v43 && (v44 = *(a1 + 32), v44 < *v43))
          {
            *(a1 + 32) = v44 + 1;
            v45 = *&v43[2 * v44 + 2];
          }

          else
          {
            v46 = sub_1570D50(*(a1 + 24));
            v45 = sub_19593CC(a1 + 24, v46);
            v42 = *v68;
          }

          v41 = sub_21F4970(a3, v45, v42);
          *v68 = v41;
          if (!v41)
          {
            goto LABEL_123;
          }

          if (*a3 <= v41 || *v41 != 402)
          {
            goto LABEL_99;
          }
        }

      case 0x13u:
        if (v8 != 154)
        {
          goto LABEL_107;
        }

        *(a1 + 16) |= 0x2000u;
        v55 = *(a1 + 152);
        if (!v55)
        {
          v56 = *(a1 + 8);
          v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
          if (v56)
          {
            v57 = *v57;
          }

          sub_156EF20(v57);
          v55 = v58;
          *(a1 + 152) = v58;
          v7 = *v68;
        }

        v17 = sub_21F4B20(a3, v55, v7);
        goto LABEL_98;
      case 0x14u:
        if (v8 != 162)
        {
          goto LABEL_107;
        }

        *(a1 + 16) |= 0x40u;
        v53 = *(a1 + 8);
        v22 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
        if (v53)
        {
          v22 = *v22;
        }

        v23 = (a1 + 96);
LABEL_97:
        v54 = sub_194DB04(v23, v22);
        v17 = sub_1958890(v54, *v68, a3);
        goto LABEL_98;
      default:
LABEL_107:
        if (v8)
        {
          v59 = (v8 & 7) == 4;
        }

        else
        {
          v59 = 1;
        }

        if (!v59)
        {
          v60 = *(a1 + 8);
          if (v60)
          {
            v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v61 = sub_11F1920((a1 + 8));
            v7 = *v68;
          }

          v17 = sub_1952690(v8, v61, v7, a3);
LABEL_98:
          *v68 = v17;
          if (!v17)
          {
            goto LABEL_123;
          }

LABEL_99:
          if (sub_195ADC0(a3, v68, a3[11].i32[1]))
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
LABEL_123:
          *v68 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v68;
    }
  }
}

char *sub_12A1E04(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x4000) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 160);
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

  if ((v5 & 0x8000) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 168);
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

    v15 = *(a1 + 104);
    *v11 = 26;
    v16 = *(v15 + 20);
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v11 + 1);
    }

    else
    {
      v17 = v11 + 2;
    }

    v11 = sub_1572570(v15, v17, a3);
    if ((v5 & 0x100) == 0)
    {
LABEL_21:
      if ((v5 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_45;
    }
  }

  else if ((v5 & 0x100) == 0)
  {
    goto LABEL_21;
  }

  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v18 = *(a1 + 112);
  *v11 = 34;
  v19 = *(v18 + 20);
  v11[1] = v19;
  if (v19 > 0x7F)
  {
    v20 = sub_19575D0(v19, v11 + 1);
  }

  else
  {
    v20 = v11 + 2;
  }

  v11 = sub_1576874(v18, v20, a3);
  if ((v5 & 1) == 0)
  {
LABEL_22:
    if ((v5 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  v11 = sub_128AEEC(a3, 7, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v11);
  if ((v5 & 2) == 0)
  {
LABEL_23:
    if ((v5 & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_47;
  }

LABEL_46:
  v11 = sub_128AEEC(a3, 8, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v11);
  if ((v5 & 4) == 0)
  {
LABEL_24:
    if ((v5 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_48;
  }

LABEL_47:
  v11 = sub_128AEEC(a3, 9, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v11);
  if ((v5 & 8) == 0)
  {
LABEL_25:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_49;
  }

LABEL_48:
  v11 = sub_128AEEC(a3, 10, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v11);
  if ((v5 & 0x200) == 0)
  {
LABEL_26:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

LABEL_49:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v21 = *(a1 + 120);
  *v11 = 90;
  v22 = *(v21 + 20);
  v11[1] = v22;
  if (v22 > 0x7F)
  {
    v23 = sub_19575D0(v22, v11 + 1);
  }

  else
  {
    v23 = v11 + 2;
  }

  v11 = sub_15714C0(v21, v23, a3);
  if ((v5 & 0x400) == 0)
  {
LABEL_27:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_55:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v24 = *(a1 + 128);
  *v11 = 98;
  v25 = *(v24 + 20);
  v11[1] = v25;
  if (v25 > 0x7F)
  {
    v26 = sub_19575D0(v25, v11 + 1);
  }

  else
  {
    v26 = v11 + 2;
  }

  v11 = sub_157028C(v24, v26, a3);
  if ((v5 & 0x800) == 0)
  {
LABEL_28:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_67;
  }

LABEL_61:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v27 = *(a1 + 136);
  *v11 = 106;
  v28 = *(v27 + 44);
  v11[1] = v28;
  if (v28 > 0x7F)
  {
    v29 = sub_19575D0(v28, v11 + 1);
  }

  else
  {
    v29 = v11 + 2;
  }

  v11 = sub_13F0804(v27, v29, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_29:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_68;
  }

LABEL_67:
  v11 = sub_128AEEC(a3, 14, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v11);
  if ((v5 & 0x20) == 0)
  {
LABEL_30:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_69;
  }

LABEL_68:
  v11 = sub_128AEEC(a3, 15, *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL, v11);
  if ((v5 & 0x1000) == 0)
  {
LABEL_31:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_75;
  }

LABEL_69:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v30 = *(a1 + 144);
  *v11 = 386;
  v31 = *(v30 + 20);
  v11[2] = v31;
  if (v31 > 0x7F)
  {
    v32 = sub_19575D0(v31, v11 + 2);
  }

  else
  {
    v32 = v11 + 3;
  }

  v11 = sub_1574620(v30, v32, a3);
  if ((v5 & 0x10000) != 0)
  {
LABEL_75:
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v33 = *(a1 + 176);
    *v11 = 392;
    v11[2] = v33;
    v11 += 3;
  }

LABEL_78:
  v34 = *(a1 + 32);
  if (v34)
  {
    for (i = 0; i != v34; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v36 = *(*(a1 + 40) + 8 * i + 8);
      *v11 = 402;
      v37 = *(v36 + 20);
      v11[2] = v37;
      if (v37 > 0x7F)
      {
        v38 = sub_19575D0(v37, v11 + 2);
      }

      else
      {
        v38 = v11 + 3;
      }

      v11 = sub_157028C(v36, v38, a3);
    }
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v39 = *(a1 + 152);
    *v11 = 410;
    v40 = *(v39 + 20);
    v11[2] = v40;
    if (v40 > 0x7F)
    {
      v41 = sub_19575D0(v40, v11 + 2);
    }

    else
    {
      v41 = v11 + 3;
    }

    v11 = sub_156ECA0(v39, v41, a3);
  }

  if ((v5 & 0x40) != 0)
  {
    v11 = sub_128AEEC(a3, 20, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, v11);
  }

  v42 = *(a1 + 8);
  if ((v42 & 1) == 0)
  {
    return v11;
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

  if ((*a3 - v11) >= v45)
  {
    v47 = v45;
    memcpy(v11, v46, v45);
    v11 += v47;
    return v11;
  }

  return sub_1957130(a3, v46, v45, v11);
}

unint64_t sub_12A2458(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x4000) != 0)
  {
    v3 = ((9 * (__clz(*(a1 + 160) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);
  v5 = v3 + 2 * v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = sub_15705D4(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
    v2 = *(a1 + 16);
  }

  if (!v2)
  {
    goto LABEL_21;
  }

  if (v2)
  {
    v15 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v5 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
LABEL_14:
      if ((v2 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_42;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_14;
  }

  v18 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 23);
  v20 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v20 = v19;
  }

  v5 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 4) == 0)
  {
LABEL_15:
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_42:
  v21 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v21 + 23);
  v23 = *(v21 + 8);
  if ((v22 & 0x80u) == 0)
  {
    v23 = v22;
  }

  v5 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) == 0)
  {
LABEL_16:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_45:
  v24 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v25 = *(v24 + 23);
  v26 = *(v24 + 8);
  if ((v25 & 0x80u) == 0)
  {
    v26 = v25;
  }

  v5 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_17:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_51:
    v30 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    v31 = *(v30 + 23);
    v32 = *(v30 + 8);
    if ((v31 & 0x80u) == 0)
    {
      v32 = v31;
    }

    v5 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x40) == 0)
    {
LABEL_19:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    goto LABEL_54;
  }

LABEL_48:
  v27 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v28 = *(v27 + 23);
  v29 = *(v27 + 8);
  if ((v28 & 0x80u) == 0)
  {
    v29 = v28;
  }

  v5 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_51;
  }

LABEL_18:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_54:
  v33 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  v34 = *(v33 + 23);
  v35 = *(v33 + 8);
  if ((v34 & 0x80u) == 0)
  {
    v35 = v34;
  }

  v5 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80) != 0)
  {
LABEL_20:
    v11 = sub_1572704(*(a1 + 104));
    v5 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_21:
  if ((v2 & 0x3F00) == 0)
  {
    goto LABEL_29;
  }

  if ((v2 & 0x100) != 0)
  {
    v36 = sub_15769F0(*(a1 + 112));
    v5 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_24:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_60;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_24;
  }

  v37 = sub_15716EC(*(a1 + 120));
  v5 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x400) == 0)
  {
LABEL_25:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  v38 = sub_15705D4(*(a1 + 128));
  v5 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x800) == 0)
  {
LABEL_26:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  v39 = sub_13F09D8(*(a1 + 136));
  v5 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x1000) == 0)
  {
LABEL_27:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_62:
  v40 = sub_15748FC(*(a1 + 144));
  v5 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x2000) != 0)
  {
LABEL_28:
    v12 = sub_156EE50(*(a1 + 152));
    v5 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_29:
  if ((v2 & 0x8000) != 0)
  {
    v5 += ((9 * (__clz(*(a1 + 168) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  if ((v2 & 0x10000) != 0)
  {
    result = v5 + 3;
  }

  else
  {
    result = v5;
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    v41 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v42 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v42 < 0)
    {
      v42 = *(v41 + 16);
    }

    result += v42;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_12A28D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_12A4B20((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    goto LABEL_43;
  }

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
        goto LABEL_8;
      }

      goto LABEL_20;
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
  if ((v9 & 4) == 0)
  {
LABEL_8:
    if ((v9 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_20:
  v16 = *(a2 + 64);
  *(a1 + 16) |= 4u;
  v17 = *(a1 + 8);
  v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
  if (v17)
  {
    v18 = *v18;
  }

  sub_194EA1C((a1 + 64), (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
  if ((v9 & 8) == 0)
  {
LABEL_9:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_23:
  v19 = *(a2 + 72);
  *(a1 + 16) |= 8u;
  v20 = *(a1 + 8);
  v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
  if (v20)
  {
    v21 = *v21;
  }

  sub_194EA1C((a1 + 72), (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
  if ((v9 & 0x10) == 0)
  {
LABEL_10:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_29:
    v25 = *(a2 + 88);
    *(a1 + 16) |= 0x20u;
    v26 = *(a1 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    sub_194EA1C((a1 + 88), (v25 & 0xFFFFFFFFFFFFFFFELL), v27);
    if ((v9 & 0x40) == 0)
    {
LABEL_12:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_35;
    }

    goto LABEL_32;
  }

LABEL_26:
  v22 = *(a2 + 80);
  *(a1 + 16) |= 0x10u;
  v23 = *(a1 + 8);
  v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
  if (v23)
  {
    v24 = *v24;
  }

  sub_194EA1C((a1 + 80), (v22 & 0xFFFFFFFFFFFFFFFELL), v24);
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_32:
  v28 = *(a2 + 96);
  *(a1 + 16) |= 0x40u;
  v29 = *(a1 + 8);
  v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
  if (v29)
  {
    v30 = *v30;
  }

  sub_194EA1C((a1 + 96), (v28 & 0xFFFFFFFFFFFFFFFELL), v30);
  if ((v9 & 0x80) != 0)
  {
LABEL_35:
    *(a1 + 16) |= 0x80u;
    v31 = *(a1 + 104);
    if (!v31)
    {
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      v31 = sub_1572864(v33);
      *(a1 + 104) = v31;
    }

    if (*(a2 + 104))
    {
      v34 = *(a2 + 104);
    }

    else
    {
      v34 = &off_2777598;
    }

    sub_14B0C78(v31, v34);
  }

LABEL_43:
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_54;
  }

  if ((v9 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v37 = *(a1 + 112);
    if (!v37)
    {
      v38 = *(a1 + 8);
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
      if (v38)
      {
        v39 = *v39;
      }

      v37 = sub_1576E20(v39);
      *(a1 + 112) = v37;
    }

    if (*(a2 + 112))
    {
      v40 = *(a2 + 112);
    }

    else
    {
      v40 = &off_2777728;
    }

    sub_1576AC0(v37, v40);
    if ((v9 & 0x200) == 0)
    {
LABEL_46:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_76;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_46;
  }

  *(a1 + 16) |= 0x200u;
  v41 = *(a1 + 120);
  if (!v41)
  {
    v42 = *(a1 + 8);
    v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
    if (v42)
    {
      v43 = *v43;
    }

    v41 = sub_157202C(v43);
    *(a1 + 120) = v41;
  }

  if (*(a2 + 120))
  {
    v44 = *(a2 + 120);
  }

  else
  {
    v44 = &off_2777538;
  }

  sub_1571914(v41, v44);
  if ((v9 & 0x400) == 0)
  {
LABEL_47:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_84;
  }

LABEL_76:
  *(a1 + 16) |= 0x400u;
  v45 = *(a1 + 128);
  if (!v45)
  {
    v46 = *(a1 + 8);
    v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
    if (v46)
    {
      v47 = *v47;
    }

    v45 = sub_1570D50(v47);
    *(a1 + 128) = v45;
  }

  if (*(a2 + 128))
  {
    v48 = *(a2 + 128);
  }

  else
  {
    v48 = &off_27774D0;
  }

  sub_156F880(v45, v48);
  if ((v9 & 0x800) == 0)
  {
LABEL_48:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_92;
  }

LABEL_84:
  *(a1 + 16) |= 0x800u;
  v49 = *(a1 + 136);
  if (!v49)
  {
    v50 = *(a1 + 8);
    v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
    if (v50)
    {
      v51 = *v51;
    }

    v49 = sub_13F0FB4(v51);
    *(a1 + 136) = v49;
  }

  if (*(a2 + 136))
  {
    v52 = *(a2 + 136);
  }

  else
  {
    v52 = &off_276F370;
  }

  sub_13F0A84(v49, v52);
  if ((v9 & 0x1000) == 0)
  {
LABEL_49:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_100;
  }

LABEL_92:
  *(a1 + 16) |= 0x1000u;
  v53 = *(a1 + 144);
  if (!v53)
  {
    v54 = *(a1 + 8);
    v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
    if (v54)
    {
      v55 = *v55;
    }

    v53 = sub_1574A80(v55);
    *(a1 + 144) = v53;
  }

  if (*(a2 + 144))
  {
    v56 = *(a2 + 144);
  }

  else
  {
    v56 = &off_2777660;
  }

  sub_14769B0(v53, v56);
  if ((v9 & 0x2000) == 0)
  {
LABEL_50:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_51;
    }

LABEL_108:
    *(a1 + 160) = *(a2 + 160);
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_100:
  *(a1 + 16) |= 0x2000u;
  v57 = *(a1 + 152);
  if (!v57)
  {
    v58 = *(a1 + 8);
    v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
    if (v58)
    {
      v59 = *v59;
    }

    sub_156EF20(v59);
    *(a1 + 152) = v57;
  }

  if (*(a2 + 152))
  {
    v60 = *(a2 + 152);
  }

  else
  {
    v60 = &off_2777478;
  }

  sub_128F8FC(v57, v60);
  if ((v9 & 0x4000) != 0)
  {
    goto LABEL_108;
  }

LABEL_51:
  if ((v9 & 0x8000) != 0)
  {
LABEL_52:
    *(a1 + 168) = *(a2 + 168);
  }

LABEL_53:
  *(a1 + 16) |= v9;
LABEL_54:
  if ((v9 & 0x10000) != 0)
  {
    v35 = *(a2 + 176);
    *(a1 + 16) |= 0x10000u;
    *(a1 + 176) = v35;
  }

  v36 = *(a2 + 8);
  if (v36)
  {

    sub_1957EF4((a1 + 8), (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12A2D9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x4000) == 0)
  {
    return 0;
  }

  if ((v1 & 0x100) != 0)
  {
    result = sub_1576BC4(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 16);
  }

  if ((v1 & 0x800) == 0)
  {
    return 1;
  }

  result = sub_13F0B14(*(a1 + 136));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_12A2E08(void *a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  a1[1] = v4;
  *a1 = &off_26CE380;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = 0;
  return a1;
}

void sub_12A2E6C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_12A2E9C(uint64_t a1)
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
  if (a1 != &off_2768E38)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_12A1208(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12A2F5C(uint64_t a1)
{
  sub_12A2E9C(a1);

  operator delete();
}

uint64_t sub_12A2F94(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  if (*(a1 + 40))
  {
    result = sub_12A148C(*(a1 + 48));
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 32) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_12A2FF8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v18 = a2;
  if (sub_195ADC0(a3, &v18, a3[11].i32[1]))
  {
    return v18;
  }

  while (1)
  {
    v5 = v18 + 1;
    v6 = *v18;
    if (*v18 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        v5 = sub_1958824(v18, v7 - 128);
        v6 = v8;
      }

      else
      {
        v5 = v18 + 2;
      }
    }

    v18 = v5;
    if (v6 != 10)
    {
      break;
    }

    *(a1 + 40) |= 1u;
    v11 = *(a1 + 48);
    if (!v11)
    {
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      sub_12A3454(v13);
      v11 = v14;
      *(a1 + 48) = v14;
      v5 = v18;
    }

    v10 = sub_21F4BB0(a3, v11, v5);
LABEL_21:
    v18 = v10;
    if (!v10)
    {
      return 0;
    }

    if (sub_195ADC0(a3, &v18, a3[11].i32[1]))
    {
      return v18;
    }
  }

  if (v6)
  {
    v9 = (v6 & 7) == 4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    if (v6 >> 7 < 0x271)
    {
      v15 = *(a1 + 8);
      if (v15)
      {
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v16 = sub_11F1920((a1 + 8));
        v5 = v18;
      }

      v10 = sub_1952690(v6, v16, v5, a3);
    }

    else
    {
      v10 = sub_19525AC((a1 + 16), v6, v5, &off_2768E38, (a1 + 8), a3);
    }

    goto LABEL_21;
  }

  if (v5)
  {
    a3[10].i32[0] = v6 - 1;
    return v18;
  }

  return 0;
}

char *sub_12A317C(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  if (*(a1 + 40))
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
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

    v4 = sub_12A1E04(v6, v8, a3);
  }

  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 10000, 0x20000000, v4, a3);
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

uint64_t sub_12A32AC(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  if (*(a1 + 40))
  {
    v3 = sub_12A2458(*(a1 + 48));
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

  *(a1 + 44) = v2;
  return v2;
}

void sub_12A3338(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v4 = *(a2 + 48);
    *(a1 + 40) |= 1u;
    v5 = *(a1 + 48);
    if (!v5)
    {
      v6 = *(a1 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      sub_12A3454(v7);
      *(a1 + 48) = v5;
      v4 = *(a2 + 48);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_2768D80;
    }

    sub_12A28D0(v5, v8);
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12A33EC(uint64_t a1)
{
  if (!sub_195228C(a1 + 16) || (*(a1 + 40) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 48);

  return sub_12A2D9C(v3);
}

double sub_12A3454(uint64_t a1)
{
  if (!a1)
  {

    sub_12A4BAC();
  }

  *v3 = &off_26CE300;
  *(v3 + 8) = a1;
  *(v3 + 16) = 0;
  *(v3 + 24) = a1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = &qword_278E990;
  *(v3 + 56) = &qword_278E990;
  *(v3 + 64) = &qword_278E990;
  *(v3 + 72) = &qword_278E990;
  *(v3 + 80) = &qword_278E990;
  *(v3 + 88) = &qword_278E990;
  *(v3 + 96) = &qword_278E990;
  result = 0.0;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 161) = 0u;
  return result;
}

void *sub_12A34EC(uint64_t a1)
{
  if (!a1)
  {

    sub_12A4C28();
  }

  return sub_12A2E08(v3, a1, 0);
}

void *sub_12A4170(void *a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  *a1 = v3;
  a1[1] = 0;
  v4 = *(a2 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = a2[1];
    if ((v4 & 0x8000000000000000) != 0)
    {
      sub_19599E8(v4, "string length exceeds max size");
    }
  }

  a1[1] = v4;
  return a1;
}

uint64_t sub_12A41D0(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 >= 1)
  {
    v2 = *(result + 16) + 8;
    do
    {
      v3 = *v2;
      if (*(*v2 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
      }

      v2 += 8;
      --v1;
    }

    while (v1);
    *(result + 8) = 0;
  }

  return result;
}

void sub_12A421C(void *a1)
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
          sub_1292AC0(*v3);
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

void sub_12A42A0(void *a1)
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
          sub_12923CC(*v3);
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

void sub_12A4324(void *a1)
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
          sub_128BFE8(*v3);
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

void sub_12A43A8(void *a1)
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
          sub_128CAA8(*v3);
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

void sub_12A442C(void *a1)
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
          sub_128DFF8(*v3);
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

void sub_12A44B0(void *a1)
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
          sub_128D450(*v3);
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

uint64_t *sub_12A4534(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_1295434(v9);
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
      result = sub_12A45B0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_12A45C0(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_12953AC(v9);
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
      result = sub_12A463C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_12A464C(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_1294F00(v9);
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
      result = sub_12A46C8(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_12A46D8(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_1294FBC(v9);
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
      result = sub_12A4754(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_12A4764(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_1295120(v9);
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
      result = sub_12A47E0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_12A47F0(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_1295074(v9);
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
      result = sub_12A486C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12A487C(void *a1)
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
          sub_1295AF8(*v3);
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

void sub_12A4900(void *a1)
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
          sub_12971A8(*v3);
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

std::string *sub_12A4984(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_129792C(v9);
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
      result = sub_12A4A00(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_12A4A10(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_1297A04(v9);
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
      result = sub_12A4A8C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12A4A9C(void *a1)
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
          sub_156FCCC();
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

uint64_t *sub_12A4B20(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_1570D50(v9);
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
      result = sub_12A4B9C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_12A4C94()
{
  dword_278CB90 = 18601;
  qword_278CB98 = &off_278AFA0;
  sub_194F72C(&off_2768E38, 18601, 11, 0, 0, &off_278AFA0);
  dword_278CBA0 = 18602;
  qword_278CBA8 = &off_278B0B0;
  sub_194F72C(&off_2768E38, 18602, 11, 0, 0, &off_278B0B0);
  dword_278CBB0 = 18603;
  qword_278CBB8 = &off_277C998;
  sub_194F72C(&off_2768E38, 18603, 11, 1, 0, &off_277C998);
  dword_278CBC0 = 18001;
  qword_278CBC8 = &off_278AFA0;
  sub_194F72C(&off_2768E38, 18001, 11, 0, 0, &off_278AFA0);
  dword_278CBD0 = 18002;
  qword_278CBD8 = &off_278B0B0;
  sub_194F72C(&off_2768E38, 18002, 11, 0, 0, &off_278B0B0);
  dword_278CBE0 = 18003;
  qword_278CBE8 = &off_27742B0;
  sub_194F72C(&off_2768E38, 18003, 11, 0, 0, &off_27742B0);
  dword_278CBF0 = 18004;
  qword_278CBF8 = &off_27745A0;
  sub_194F72C(&off_2768E38, 18004, 11, 0, 0, &off_27745A0);
  dword_278CC00 = 18005;
  qword_278CC08 = &off_2780F90;
  sub_194F72C(&off_2768E38, 18005, 11, 0, 0, &off_2780F90);
  dword_278CC10 = 18006;
  qword_278CC18 = &off_27811E0;
  sub_194F72C(&off_2768E38, 18006, 11, 0, 0, &off_27811E0);
  dword_278CC20 = 18007;
  qword_278CC28 = &off_2773FE0;
  sub_194F72C(&off_2768E38, 18007, 11, 0, 0, &off_2773FE0);
  dword_278CC30 = 18008;
  qword_278CC38 = &off_27741B0;
  sub_194F72C(&off_2768E38, 18008, 11, 0, 0, &off_27741B0);
  dword_278CC40 = 18009;
  qword_278CC48 = &off_2770FB8;
  sub_194F72C(&off_2768E38, 18009, 11, 0, 0, &off_2770FB8);
  dword_278CC50 = 18010;
  qword_278CC58 = &off_2771078;
  sub_194F72C(&off_2768E38, 18010, 11, 0, 0, &off_2771078);
  dword_278CC60 = 14001;
  qword_278CC68 = &off_2768770;
  sub_194F72C(&off_2768E38, 14001, 11, 1, 0, &off_2768770);
  dword_278CC70 = 18301;
  qword_278CC78 = &off_277E980;
  sub_194F72C(&off_2768E38, 18301, 11, 0, 0, &off_277E980);
  dword_278CC80 = 18302;
  qword_278CC88 = &off_27769A8;
  sub_194F72C(&off_2768E38, 18302, 11, 0, 0, &off_27769A8);
  dword_278CC90 = 18305;
  qword_278CC98 = &off_278AFA0;
  sub_194F72C(&off_2768E38, 18305, 11, 0, 0, &off_278AFA0);
  dword_278CCA0 = 18303;
  qword_278CCA8 = &off_2776D50;
  sub_194F72C(&off_2768E38, 18303, 11, 0, 0, &off_2776D50);
  dword_278CCB0 = 18306;
  qword_278CCB8 = &off_278B0B0;
  sub_194F72C(&off_2768E38, 18306, 11, 0, 0, &off_278B0B0);
  dword_278CCC0 = 18304;
  qword_278CCC8 = &off_27689D8;
  sub_194F72C(&off_2768E38, 18304, 11, 0, 0, &off_27689D8);
  dword_278CCD0 = 18307;
  qword_278CCD8 = &off_27777B0;
  sub_194F72C(&off_2768E38, 18307, 11, 0, 0, &off_27777B0);
  dword_278CCE0 = 18308;
  qword_278CCE8 = &off_2777750;
  sub_194F72C(&off_2768E38, 18308, 11, 0, 0, &off_2777750);
  dword_278CCF0 = 16001;
  qword_278CCF8 = &off_2768A08;
  sub_194F72C(&off_2768E38, 16001, 11, 0, 0, &off_2768A08);
  dword_278CD00 = 16002;
  qword_278CD08 = &off_2768AA8;
  sub_194F72C(&off_2768E38, 16002, 11, 0, 0, &off_2768AA8);
  dword_278CD10 = 13100;
  qword_278CD18 = &off_278AFA0;
  sub_194F72C(&off_2768E38, 13100, 11, 0, 0, &off_278AFA0);
  dword_278CD20 = 13101;
  qword_278CD28 = &off_278B0B0;
  sub_194F72C(&off_2768E38, 13101, 11, 0, 0, &off_278B0B0);
  dword_278CD30 = 18101;
  qword_278CD38 = &off_278AFA0;
  sub_194F72C(&off_2768E38, 18101, 11, 0, 0, &off_278AFA0);
  dword_278CD40 = 18102;
  qword_278CD48 = &off_278B0B0;
  sub_194F72C(&off_2768E38, 18102, 11, 0, 0, &off_278B0B0);
  dword_278CD50 = 12001;
  qword_278CD58 = &off_2768AE8;
  sub_194F72C(&off_2768E38, 12001, 11, 0, 0, &off_2768AE8);
  dword_278CD60 = 12002;
  qword_278CD68 = &off_2768B30;
  sub_194F72C(&off_2768E38, 12002, 11, 0, 0, &off_2768B30);
  dword_278CD70 = 10001;
  qword_278CD78 = &off_2768B50;
  sub_194F72C(&off_2768E38, 10001, 11, 1, 0, &off_2768B50);
  dword_278CD80 = 11001;
  qword_278CD88 = &off_2780F90;
  sub_194F72C(&off_2768E38, 11001, 11, 0, 0, &off_2780F90);
  dword_278CD90 = 11002;
  qword_278CD98 = &off_27811E0;
  sub_194F72C(&off_2768E38, 11002, 11, 0, 0, &off_27811E0);
  dword_278CDA0 = 11003;
  qword_278CDA8 = &unk_232A108;
  sub_194EE44(&off_2768E38, 11003, 9, 0, 0);
  qword_278CDB0 = 11004;
  sub_194F628(&off_2768E38, 11004, 14, 0, 0, sub_129D1A8);
  dword_278CDB8 = 11031;
  qword_278CDC0 = &off_27742B0;
  sub_194F72C(&off_2768E38, 11031, 11, 0, 0, &off_27742B0);
  dword_278CDC8 = 11032;
  qword_278CDD0 = &off_27745A0;
  sub_194F72C(&off_2768E38, 11032, 11, 0, 0, &off_27745A0);
  dword_278CDD8 = 11033;
  qword_278CDE0 = &unk_232A120;
  sub_194EE44(&off_2768E38, 11033, 9, 0, 0);
  qword_278CDE8 = 11034;
  sub_194F628(&off_2768E38, 11034, 14, 0, 0, sub_129D1A8);
  dword_278CDF0 = 11021;
  qword_278CDF8 = &off_2773FE0;
  sub_194F72C(&off_2768E38, 11021, 11, 0, 0, &off_2773FE0);
  dword_278CE00 = 11022;
  qword_278CE08 = &off_27741B0;
  sub_194F72C(&off_2768E38, 11022, 11, 0, 0, &off_27741B0);
  dword_278CE10 = 11023;
  qword_278CE18 = &unk_232A138;
  sub_194EE44(&off_2768E38, 11023, 9, 0, 0);
  qword_278CE20 = 11024;
  sub_194F628(&off_2768E38, 11024, 14, 0, 0, sub_129D1A8);
  dword_278CE28 = 11041;
  qword_278CE30 = &off_2770FB8;
  sub_194F72C(&off_2768E38, 11041, 11, 0, 0, &off_2770FB8);
  dword_278CE38 = 11042;
  qword_278CE40 = &off_2771078;
  sub_194F72C(&off_2768E38, 11042, 11, 0, 0, &off_2771078);
  dword_278CE48 = 11051;
  qword_278CE50 = &off_276AFA0;
  sub_194F72C(&off_2768E38, 11051, 11, 0, 0, &off_276AFA0);
  dword_278CE58 = 11052;
  qword_278CE60 = &off_276B060;
  sub_194F72C(&off_2768E38, 11052, 11, 0, 0, &off_276B060);
  dword_278CE68 = 15001;
  qword_278CE70 = &off_277E980;
  sub_194F72C(&off_2768E38, 15001, 11, 0, 0, &off_277E980);
  dword_278CE78 = 15002;
  qword_278CE80 = &off_27769A8;
  sub_194F72C(&off_2768E38, 15002, 11, 0, 0, &off_27769A8);
  dword_278CE88 = 15003;
  qword_278CE90 = &off_2774648;
  sub_194F72C(&off_2768E38, 15003, 11, 0, 0, &off_2774648);
  dword_278CE98 = 15005;
  qword_278CEA0 = &off_278AFA0;
  sub_194F72C(&off_2768E38, 15005, 11, 0, 0, &off_278AFA0);
  dword_278CEA8 = 15004;
  qword_278CEB0 = &off_2776D50;
  sub_194F72C(&off_2768E38, 15004, 11, 0, 0, &off_2776D50);
  dword_278CEB8 = 15006;
  qword_278CEC0 = &off_278B0B0;
  sub_194F72C(&off_2768E38, 15006, 11, 0, 0, &off_278B0B0);
  dword_278CEC8 = 15100;
  qword_278CED0 = &off_2779660;
  sub_194F72C(&off_2768E38, 15100, 11, 0, 0, &off_2779660);
  dword_278CED8 = 15101;
  qword_278CEE0 = &off_276B608;
  sub_194F72C(&off_2768E38, 15101, 11, 0, 0, &off_276B608);
  dword_278CEE8 = 15102;
  qword_278CEF0 = &off_2777780;
  sub_194F72C(&off_2768E38, 15102, 11, 0, 0, &off_2777780);
  dword_278CEF8 = 15103;
  qword_278CF00 = &off_2777750;
  sub_194F72C(&off_2768E38, 15103, 11, 0, 0, &off_2777750);
  dword_278CF08 = 18200;
  qword_278CF10 = &off_278AFA0;
  sub_194F72C(&off_2768E38, 18200, 11, 0, 0, &off_278AFA0);
  dword_278CF18 = 18201;
  qword_278CF20 = &off_278B0B0;
  sub_194F72C(&off_2768E38, 18201, 11, 0, 0, &off_278B0B0);
  qword_278CF28 = 18202;
  sub_194F628(&off_2768E38, 18202, 14, 0, 0, sub_129D1D0);
  qword_278CF30 = 18203;
  sub_194F628(&off_2768E38, 18203, 14, 0, 0, sub_129D1DC);
  dword_278CF38 = 18204;
  byte_278CF3C = 0;
  sub_194EE44(&off_2768E38, 18204, 8, 0, 0);
  dword_278CF40 = 18205;
  qword_278CF48 = 0;
  sub_194EE44(&off_2768E38, 18205, 4, 0, 0);
  dword_278CF50 = 18206;
  qword_278CF58 = &unk_232A150;
  sub_194EE44(&off_2768E38, 18206, 9, 0, 0);
  dword_278CF60 = 18207;
  qword_278CF68 = &off_2777750;
  sub_194F72C(&off_2768E38, 18207, 11, 0, 0, &off_2777750);
  dword_278CF70 = 13001;
  qword_278CF78 = &off_2768BF8;
  sub_194F72C(&off_2768E38, 13001, 11, 0, 0, &off_2768BF8);
  dword_278CF80 = 13002;
  qword_278CF88 = &off_2768C28;
  sub_194F72C(&off_2768E38, 13002, 11, 1, 0, &off_2768C28);
  dword_278CF90 = 18501;
  qword_278CF98 = &off_2768CA0;
  sub_194F72C(&off_2768E38, 18501, 11, 0, 0, &off_2768CA0);
  dword_278CFA0 = 18502;
  qword_278CFA8 = &off_2768D18;
  sub_194F72C(&off_2768E38, 18502, 11, 0, 0, &off_2768D18);
  dword_278CFB0 = 18503;
  qword_278CFB8 = &off_2768D38;

  sub_194F72C(&off_2768E38, 18503, 11, 0, 0, &off_2768D38);
}

uint64_t sub_12A5AE0()
{
  qword_27C43C8 = "ERR_DECODER_FAILEDERR_ENGINE_FAILEDERR_ENGINE_NO_RESULTERR_ETA_INV_REROUTE_FAILEDERR_ETA_MULTCONNERR_GEOHASH_FAILEDERR_INTERNAL_ERRORERR_INVALID_ATTRIBUTESERR_INVALID_ETA_ATTRIBUTESERR_LONG_WALKING_ROUTESERR_OTHER_DIR_FAILUREERR_OTHER_ETA_FAILUREERR_OUT_OF_TRANSIT_COVERAGEERR_OUT_OF_TRANSIT_DATA_VALIDITY_PERIODERR_PARSING_FAILUREERR_PARTITIONING_NO_RESULTERR_PROCESSING_FAILEDERR_QUEUE_TO_WORKERS_FULLERR_ROUTE_USES_HARD_BLOCKED_ROADERR_SEARCH_FAILEDERR_SEARCH_NO_RESULTERR_SNAP_NO_RESULTERR_STALE_REQUESTERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  unk_27C43D0 = 18;
  dword_27C43D8 = 6;
  qword_27C43E0 = "ERR_ENGINE_FAILEDERR_ENGINE_NO_RESULTERR_ETA_INV_REROUTE_FAILEDERR_ETA_MULTCONNERR_GEOHASH_FAILEDERR_INTERNAL_ERRORERR_INVALID_ATTRIBUTESERR_INVALID_ETA_ATTRIBUTESERR_LONG_WALKING_ROUTESERR_OTHER_DIR_FAILUREERR_OTHER_ETA_FAILUREERR_OUT_OF_TRANSIT_COVERAGEERR_OUT_OF_TRANSIT_DATA_VALIDITY_PERIODERR_PARSING_FAILUREERR_PARTITIONING_NO_RESULTERR_PROCESSING_FAILEDERR_QUEUE_TO_WORKERS_FULLERR_ROUTE_USES_HARD_BLOCKED_ROADERR_SEARCH_FAILEDERR_SEARCH_NO_RESULTERR_SNAP_NO_RESULTERR_STALE_REQUESTERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  unk_27C43E8 = 17;
  dword_27C43F0 = 5;
  qword_27C43F8 = "ERR_ENGINE_NO_RESULTERR_ETA_INV_REROUTE_FAILEDERR_ETA_MULTCONNERR_GEOHASH_FAILEDERR_INTERNAL_ERRORERR_INVALID_ATTRIBUTESERR_INVALID_ETA_ATTRIBUTESERR_LONG_WALKING_ROUTESERR_OTHER_DIR_FAILUREERR_OTHER_ETA_FAILUREERR_OUT_OF_TRANSIT_COVERAGEERR_OUT_OF_TRANSIT_DATA_VALIDITY_PERIODERR_PARSING_FAILUREERR_PARTITIONING_NO_RESULTERR_PROCESSING_FAILEDERR_QUEUE_TO_WORKERS_FULLERR_ROUTE_USES_HARD_BLOCKED_ROADERR_SEARCH_FAILEDERR_SEARCH_NO_RESULTERR_SNAP_NO_RESULTERR_STALE_REQUESTERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  unk_27C4400 = 20;
  dword_27C4408 = 103;
  qword_27C4410 = "ERR_ETA_INV_REROUTE_FAILEDERR_ETA_MULTCONNERR_GEOHASH_FAILEDERR_INTERNAL_ERRORERR_INVALID_ATTRIBUTESERR_INVALID_ETA_ATTRIBUTESERR_LONG_WALKING_ROUTESERR_OTHER_DIR_FAILUREERR_OTHER_ETA_FAILUREERR_OUT_OF_TRANSIT_COVERAGEERR_OUT_OF_TRANSIT_DATA_VALIDITY_PERIODERR_PARSING_FAILUREERR_PARTITIONING_NO_RESULTERR_PROCESSING_FAILEDERR_QUEUE_TO_WORKERS_FULLERR_ROUTE_USES_HARD_BLOCKED_ROADERR_SEARCH_FAILEDERR_SEARCH_NO_RESULTERR_SNAP_NO_RESULTERR_STALE_REQUESTERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  unk_27C4418 = 26;
  dword_27C4420 = 11;
  qword_27C4428 = "ERR_ETA_MULTCONNERR_GEOHASH_FAILEDERR_INTERNAL_ERRORERR_INVALID_ATTRIBUTESERR_INVALID_ETA_ATTRIBUTESERR_LONG_WALKING_ROUTESERR_OTHER_DIR_FAILUREERR_OTHER_ETA_FAILUREERR_OUT_OF_TRANSIT_COVERAGEERR_OUT_OF_TRANSIT_DATA_VALIDITY_PERIODERR_PARSING_FAILUREERR_PARTITIONING_NO_RESULTERR_PROCESSING_FAILEDERR_QUEUE_TO_WORKERS_FULLERR_ROUTE_USES_HARD_BLOCKED_ROADERR_SEARCH_FAILEDERR_SEARCH_NO_RESULTERR_SNAP_NO_RESULTERR_STALE_REQUESTERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  unk_27C4430 = 16;
  dword_27C4438 = 12;
  qword_27C4440 = "ERR_GEOHASH_FAILEDERR_INTERNAL_ERRORERR_INVALID_ATTRIBUTESERR_INVALID_ETA_ATTRIBUTESERR_LONG_WALKING_ROUTESERR_OTHER_DIR_FAILUREERR_OTHER_ETA_FAILUREERR_OUT_OF_TRANSIT_COVERAGEERR_OUT_OF_TRANSIT_DATA_VALIDITY_PERIODERR_PARSING_FAILUREERR_PARTITIONING_NO_RESULTERR_PROCESSING_FAILEDERR_QUEUE_TO_WORKERS_FULLERR_ROUTE_USES_HARD_BLOCKED_ROADERR_SEARCH_FAILEDERR_SEARCH_NO_RESULTERR_SNAP_NO_RESULTERR_STALE_REQUESTERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  unk_27C4448 = 18;
  dword_27C4450 = 7;
  qword_27C4458 = "ERR_INTERNAL_ERRORERR_INVALID_ATTRIBUTESERR_INVALID_ETA_ATTRIBUTESERR_LONG_WALKING_ROUTESERR_OTHER_DIR_FAILUREERR_OTHER_ETA_FAILUREERR_OUT_OF_TRANSIT_COVERAGEERR_OUT_OF_TRANSIT_DATA_VALIDITY_PERIODERR_PARSING_FAILUREERR_PARTITIONING_NO_RESULTERR_PROCESSING_FAILEDERR_QUEUE_TO_WORKERS_FULLERR_ROUTE_USES_HARD_BLOCKED_ROADERR_SEARCH_FAILEDERR_SEARCH_NO_RESULTERR_SNAP_NO_RESULTERR_STALE_REQUESTERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  unk_27C4460 = 18;
  dword_27C4468 = 10;
  qword_27C4470 = "ERR_INVALID_ATTRIBUTESERR_INVALID_ETA_ATTRIBUTESERR_LONG_WALKING_ROUTESERR_OTHER_DIR_FAILUREERR_OTHER_ETA_FAILUREERR_OUT_OF_TRANSIT_COVERAGEERR_OUT_OF_TRANSIT_DATA_VALIDITY_PERIODERR_PARSING_FAILUREERR_PARTITIONING_NO_RESULTERR_PROCESSING_FAILEDERR_QUEUE_TO_WORKERS_FULLERR_ROUTE_USES_HARD_BLOCKED_ROADERR_SEARCH_FAILEDERR_SEARCH_NO_RESULTERR_SNAP_NO_RESULTERR_STALE_REQUESTERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  unk_27C4478 = 22;
  dword_27C4480 = 202;
  qword_27C4488 = "ERR_INVALID_ETA_ATTRIBUTESERR_LONG_WALKING_ROUTESERR_OTHER_DIR_FAILUREERR_OTHER_ETA_FAILUREERR_OUT_OF_TRANSIT_COVERAGEERR_OUT_OF_TRANSIT_DATA_VALIDITY_PERIODERR_PARSING_FAILUREERR_PARTITIONING_NO_RESULTERR_PROCESSING_FAILEDERR_QUEUE_TO_WORKERS_FULLERR_ROUTE_USES_HARD_BLOCKED_ROADERR_SEARCH_FAILEDERR_SEARCH_NO_RESULTERR_SNAP_NO_RESULTERR_STALE_REQUESTERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  unk_27C4490 = 26;
  dword_27C4498 = 201;
  qword_27C44A0 = "ERR_LONG_WALKING_ROUTESERR_OTHER_DIR_FAILUREERR_OTHER_ETA_FAILUREERR_OUT_OF_TRANSIT_COVERAGEERR_OUT_OF_TRANSIT_DATA_VALIDITY_PERIODERR_PARSING_FAILUREERR_PARTITIONING_NO_RESULTERR_PROCESSING_FAILEDERR_QUEUE_TO_WORKERS_FULLERR_ROUTE_USES_HARD_BLOCKED_ROADERR_SEARCH_FAILEDERR_SEARCH_NO_RESULTERR_SNAP_NO_RESULTERR_STALE_REQUESTERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  unk_27C44A8 = 23;
  dword_27C44B0 = 104;
  qword_27C44B8 = "ERR_OTHER_DIR_FAILUREERR_OTHER_ETA_FAILUREERR_OUT_OF_TRANSIT_COVERAGEERR_OUT_OF_TRANSIT_DATA_VALIDITY_PERIODERR_PARSING_FAILUREERR_PARTITIONING_NO_RESULTERR_PROCESSING_FAILEDERR_QUEUE_TO_WORKERS_FULLERR_ROUTE_USES_HARD_BLOCKED_ROADERR_SEARCH_FAILEDERR_SEARCH_NO_RESULTERR_SNAP_NO_RESULTERR_STALE_REQUESTERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  unk_27C44C0 = 21;
  dword_27C44C8 = 8;
  qword_27C44D0 = "ERR_OTHER_ETA_FAILUREERR_OUT_OF_TRANSIT_COVERAGEERR_OUT_OF_TRANSIT_DATA_VALIDITY_PERIODERR_PARSING_FAILUREERR_PARTITIONING_NO_RESULTERR_PROCESSING_FAILEDERR_QUEUE_TO_WORKERS_FULLERR_ROUTE_USES_HARD_BLOCKED_ROADERR_SEARCH_FAILEDERR_SEARCH_NO_RESULTERR_SNAP_NO_RESULTERR_STALE_REQUESTERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  unk_27C44D8 = 21;
  dword_27C44E0 = 9;
  qword_27C44E8 = "ERR_OUT_OF_TRANSIT_COVERAGEERR_OUT_OF_TRANSIT_DATA_VALIDITY_PERIODERR_PARSING_FAILUREERR_PARTITIONING_NO_RESULTERR_PROCESSING_FAILEDERR_QUEUE_TO_WORKERS_FULLERR_ROUTE_USES_HARD_BLOCKED_ROADERR_SEARCH_FAILEDERR_SEARCH_NO_RESULTERR_SNAP_NO_RESULTERR_STALE_REQUESTERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  unk_27C44F0 = 27;
  dword_27C44F8 = 107;
  qword_27C4500 = "ERR_OUT_OF_TRANSIT_DATA_VALIDITY_PERIODERR_PARSING_FAILUREERR_PARTITIONING_NO_RESULTERR_PROCESSING_FAILEDERR_QUEUE_TO_WORKERS_FULLERR_ROUTE_USES_HARD_BLOCKED_ROADERR_SEARCH_FAILEDERR_SEARCH_NO_RESULTERR_SNAP_NO_RESULTERR_STALE_REQUESTERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  unk_27C4508 = 39;
  dword_27C4510 = 108;
  qword_27C4518 = "ERR_PARSING_FAILUREERR_PARTITIONING_NO_RESULTERR_PROCESSING_FAILEDERR_QUEUE_TO_WORKERS_FULLERR_ROUTE_USES_HARD_BLOCKED_ROADERR_SEARCH_FAILEDERR_SEARCH_NO_RESULTERR_SNAP_NO_RESULTERR_STALE_REQUESTERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  unk_27C4520 = 19;
  dword_27C4528 = 203;
  qword_27C4530 = "ERR_PARTITIONING_NO_RESULTERR_PROCESSING_FAILEDERR_QUEUE_TO_WORKERS_FULLERR_ROUTE_USES_HARD_BLOCKED_ROADERR_SEARCH_FAILEDERR_SEARCH_NO_RESULTERR_SNAP_NO_RESULTERR_STALE_REQUESTERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  unk_27C4538 = 26;
  dword_27C4540 = 102;
  qword_27C4548 = "ERR_PROCESSING_FAILEDERR_QUEUE_TO_WORKERS_FULLERR_ROUTE_USES_HARD_BLOCKED_ROADERR_SEARCH_FAILEDERR_SEARCH_NO_RESULTERR_SNAP_NO_RESULTERR_STALE_REQUESTERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  unk_27C4550 = 21;
  dword_27C4558 = 14;
  qword_27C4560 = "ERR_QUEUE_TO_WORKERS_FULLERR_ROUTE_USES_HARD_BLOCKED_ROADERR_SEARCH_FAILEDERR_SEARCH_NO_RESULTERR_SNAP_NO_RESULTERR_STALE_REQUESTERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  unk_27C4568 = 25;
  dword_27C4570 = 16;
  qword_27C4578 = "ERR_ROUTE_USES_HARD_BLOCKED_ROADERR_SEARCH_FAILEDERR_SEARCH_NO_RESULTERR_SNAP_NO_RESULTERR_STALE_REQUESTERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  unk_27C4580 = 32;
  dword_27C4588 = 106;
  qword_27C4590 = "ERR_SEARCH_FAILEDERR_SEARCH_NO_RESULTERR_SNAP_NO_RESULTERR_STALE_REQUESTERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  unk_27C4598 = 17;
  result = 2;
  dword_27C45A0 = 2;
  qword_27C45A8 = "ERR_SEARCH_NO_RESULTERR_SNAP_NO_RESULTERR_STALE_REQUESTERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  unk_27C45B0 = 20;
  dword_27C45B8 = 101;
  qword_27C45C0 = "ERR_SNAP_NO_RESULTERR_STALE_REQUESTERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  unk_27C45C8 = 18;
  dword_27C45D0 = 105;
  qword_27C45D8 = "ERR_STALE_REQUESTERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  qword_27C45E0 = 17;
  dword_27C45E8 = 1;
  qword_27C45F0 = "ERR_STALE_REQUEST_IN_WORKERERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  qword_27C45F8 = 27;
  dword_27C4600 = 15;
  qword_27C4608 = "ERR_TRAFFIC_NO_LONGER_VALIDERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  qword_27C4610 = 27;
  dword_27C4618 = 109;
  qword_27C4620 = "ERR_UNKNOWNERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  qword_27C4628 = 11;
  dword_27C4630 = 0;
  qword_27C4638 = "ERR_WORKERS_UNAVAILERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  qword_27C4640 = 19;
  dword_27C4648 = 13;
  qword_27C4650 = "ERR_WORKER_CRASHERR_ZILCH_DECODING_FAILED";
  qword_27C4658 = 16;
  dword_27C4660 = 3;
  qword_27C4668 = "ERR_ZILCH_DECODING_FAILED";
  qword_27C4670 = 25;
  dword_27C4678 = 4;
  qword_27C4680 = "GENERIC_ERRSOME_ERR";
  *algn_27C4688 = 11;
  dword_27C4690 = 1;
  qword_27C4698 = "SOME_ERR";
  unk_27C46A0 = 8;
  dword_27C46A8 = 2;
  qword_27C46B0 = "BRAND_CANNOT_DISAMBIGUATEDISAMBIGUATE_HORIZONTAL_ACCURACYDISAMBIGUATE_THRESHOLDMISSING_METADATAMISSING_TRANSACTION_LOCATION";
  *algn_27C46B8 = 25;
  dword_27C46C0 = 3;
  qword_27C46C8 = "DISAMBIGUATE_HORIZONTAL_ACCURACYDISAMBIGUATE_THRESHOLDMISSING_METADATAMISSING_TRANSACTION_LOCATION";
  unk_27C46D0 = 32;
  dword_27C46D8 = 2;
  qword_27C46E0 = "DISAMBIGUATE_THRESHOLDMISSING_METADATAMISSING_TRANSACTION_LOCATION";
  unk_27C46E8 = 22;
  dword_27C46F0 = 1;
  qword_27C46F8 = "MISSING_METADATAMISSING_TRANSACTION_LOCATION";
  unk_27C4700 = 16;
  dword_27C4708 = 0;
  qword_27C4710 = "MISSING_TRANSACTION_LOCATION";
  unk_27C4718 = 28;
  dword_27C4720 = 4;
  qword_27C4728 = "BRAND_MUIDMERCHANT_MUIDNONE";
  unk_27C4730 = 10;
  dword_27C4738 = 1;
  qword_27C4740 = "MERCHANT_MUIDNONE";
  unk_27C4748 = 13;
  dword_27C4750 = 0;
  qword_27C4758 = "NONE";
  unk_27C4760 = 4;
  dword_27C4768 = 2;
  return result;
}

uint64_t sub_12A5DA8(uint64_t a1)
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

  if (a1 != &off_2768E70)
  {
    if (*(a1 + 72))
    {
      sub_16E4E08();
      operator delete();
    }

    if (*(a1 + 80))
    {
      sub_16ED13C();
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_12E4E7C((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12A5E8C(uint64_t a1)
{
  sub_12A5DA8(a1);

  operator delete();
}

uint64_t sub_12A5EC4(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_12E92D4(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 16);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      result = sub_16E4E44(*(a1 + 72));
    }

    if ((v6 & 2) != 0)
    {
      result = sub_16ED178(*(a1 + 80));
    }
  }

  if ((v6 & 0xFC) != 0)
  {
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
  }

  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 96) = 0;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_12A5F80(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v72 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v72, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v72 + 1);
    v8 = **v72;
    if (**v72 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v72, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v72 + 2);
      }
    }

    *v72 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 0xA)
    {
      if (v8 >> 3 > 0xD)
      {
        if (v11 == 14)
        {
          if (v8 == 114)
          {
            v48 = (v7 - 1);
            while (1)
            {
              v49 = (v48 + 1);
              *v72 = v48 + 1;
              v50 = *(a1 + 40);
              if (v50 && (v51 = *(a1 + 32), v51 < *v50))
              {
                *(a1 + 32) = v51 + 1;
                v52 = *&v50[2 * v51 + 2];
              }

              else
              {
                v53 = *(a1 + 24);
                if (!v53)
                {
                  operator new();
                }

                *v55 = v54;
                v55[1] = sub_195A650;
                *v54 = 0;
                v54[1] = 0;
                v54[2] = 0;
                v52 = sub_19593CC(a1 + 24, v54);
                v49 = *v72;
              }

              v48 = sub_1958890(v52, v49, a3);
              *v72 = v48;
              if (!v48)
              {
                goto LABEL_123;
              }

              if (*a3 <= v48 || *v48 != 114)
              {
                goto LABEL_103;
              }
            }
          }

          goto LABEL_95;
        }

        if (v11 != 15)
        {
          if (v11 == 20 && v8 == 162)
          {
            v18 = v7 - 2;
            while (1)
            {
              v19 = v18 + 2;
              *v72 = v18 + 2;
              v20 = *(a1 + 64);
              if (v20 && (v21 = *(a1 + 56), v21 < *v20))
              {
                *(a1 + 56) = v21 + 1;
                v22 = *&v20[2 * v21 + 2];
              }

              else
              {
                v23 = sub_12F1808(*(a1 + 48));
                v22 = sub_19593CC(a1 + 48, v23);
                v19 = *v72;
              }

              v18 = sub_21F4FA0(a3, v22, v19);
              *v72 = v18;
              if (!v18)
              {
                goto LABEL_123;
              }

              if (*a3 <= v18 || *v18 != 418)
              {
                goto LABEL_103;
              }
            }
          }

          goto LABEL_95;
        }

        if (v8 != 120)
        {
          goto LABEL_95;
        }

        v5 |= 0x100u;
        v40 = (v7 + 1);
        v39 = *v7;
        if ((v39 & 0x8000000000000000) == 0)
        {
          goto LABEL_72;
        }

        v41 = *v40;
        v39 = (v41 << 7) + v39 - 128;
        if ((v41 & 0x80000000) == 0)
        {
          v40 = (v7 + 2);
LABEL_72:
          *v72 = v40;
          *(a1 + 104) = v39 != 0;
          goto LABEL_103;
        }

        v62 = sub_19587DC(v7, v39);
        *v72 = v62;
        *(a1 + 104) = v63 != 0;
        if (!v62)
        {
          goto LABEL_123;
        }
      }

      else if (v11 == 11)
      {
        if (v8 != 88)
        {
          goto LABEL_95;
        }

        v5 |= 0x20u;
        v46 = (v7 + 1);
        v45 = *v7;
        if ((v45 & 0x8000000000000000) == 0)
        {
          goto LABEL_82;
        }

        v47 = *v46;
        v45 = (v47 << 7) + v45 - 128;
        if ((v47 & 0x80000000) == 0)
        {
          v46 = (v7 + 2);
LABEL_82:
          *v72 = v46;
          *(a1 + 101) = v45 != 0;
          goto LABEL_103;
        }

        v70 = sub_19587DC(v7, v45);
        *v72 = v70;
        *(a1 + 101) = v71 != 0;
        if (!v70)
        {
          goto LABEL_123;
        }
      }

      else if (v11 == 12)
      {
        if (v8 != 96)
        {
          goto LABEL_95;
        }

        v5 |= 0x40u;
        v37 = (v7 + 1);
        v36 = *v7;
        if ((v36 & 0x8000000000000000) == 0)
        {
          goto LABEL_67;
        }

        v38 = *v37;
        v36 = (v38 << 7) + v36 - 128;
        if ((v38 & 0x80000000) == 0)
        {
          v37 = (v7 + 2);
LABEL_67:
          *v72 = v37;
          *(a1 + 102) = v36 != 0;
          goto LABEL_103;
        }

        v60 = sub_19587DC(v7, v36);
        *v72 = v60;
        *(a1 + 102) = v61 != 0;
        if (!v60)
        {
          goto LABEL_123;
        }
      }

      else
      {
        if (v11 != 13 || v8 != 104)
        {
          goto LABEL_95;
        }

        v5 |= 0x80u;
        v13 = (v7 + 1);
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_16:
          *v72 = v13;
          *(a1 + 103) = v12 != 0;
          goto LABEL_103;
        }

        v68 = sub_19587DC(v7, v12);
        *v72 = v68;
        *(a1 + 103) = v69 != 0;
        if (!v68)
        {
          goto LABEL_123;
        }
      }

      goto LABEL_103;
    }

    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_95;
      }

      v5 |= 4u;
      v43 = (v7 + 1);
      v42 = *v7;
      if ((v42 & 0x8000000000000000) == 0)
      {
        goto LABEL_77;
      }

      v44 = *v43;
      v42 = (v44 << 7) + v42 - 128;
      if ((v44 & 0x80000000) == 0)
      {
        v43 = (v7 + 2);
LABEL_77:
        *v72 = v43;
        *(a1 + 88) = v42;
        goto LABEL_103;
      }

      v66 = sub_19587DC(v7, v42);
      *v72 = v66;
      *(a1 + 88) = v67;
      if (!v66)
      {
        goto LABEL_123;
      }
    }

    else
    {
      if (v11 == 4)
      {
        if (v8 != 34)
        {
          goto LABEL_95;
        }

        *(a1 + 16) |= 2u;
        v33 = *(a1 + 80);
        if (!v33)
        {
          v34 = *(a1 + 8);
          v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
          if (v34)
          {
            v35 = *v35;
          }

          v33 = sub_16F5E18(v35);
          *(a1 + 80) = v33;
          v7 = *v72;
        }

        v32 = sub_21F4F10(a3, v33, v7);
LABEL_102:
        *v72 = v32;
        if (!v32)
        {
          goto LABEL_123;
        }

        goto LABEL_103;
      }

      if (v11 != 10 || v8 != 80)
      {
        goto LABEL_95;
      }

      v5 |= 0x10u;
      v16 = (v7 + 1);
      v15 = *v7;
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }

      v17 = *v16;
      v15 = (v17 << 7) + v15 - 128;
      if ((v17 & 0x80000000) == 0)
      {
        v16 = (v7 + 2);
LABEL_25:
        *v72 = v16;
        *(a1 + 100) = v15 != 0;
        goto LABEL_103;
      }

      v64 = sub_19587DC(v7, v15);
      *v72 = v64;
      *(a1 + 100) = v65 != 0;
      if (!v64)
      {
        goto LABEL_123;
      }
    }

LABEL_103:
    if (sub_195ADC0(a3, v72, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_95;
    }

    *(a1 + 16) |= 1u;
    v29 = *(a1 + 72);
    if (!v29)
    {
      v30 = *(a1 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      v29 = sub_16F5828(v31);
      *(a1 + 72) = v29;
      v7 = *v72;
    }

    v32 = sub_21F4D60(a3, v29, v7);
    goto LABEL_102;
  }

  if (v11 == 2 && v8 == 16)
  {
    v25 = (v7 + 1);
    v26 = *v7;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_48;
    }

    v27 = *v25;
    v28 = (v27 << 7) + v26;
    LODWORD(v26) = v28 - 128;
    if (v27 < 0)
    {
      *v72 = sub_19587DC(v7, (v28 - 128));
      if (!*v72)
      {
        goto LABEL_123;
      }

      LODWORD(v26) = v59;
    }

    else
    {
      v25 = (v7 + 2);
LABEL_48:
      *v72 = v25;
    }

    if (sub_14E9E48(v26))
    {
      *(a1 + 16) |= 8u;
      *(a1 + 96) = v26;
    }

    else
    {
      sub_12E8418();
    }

    goto LABEL_103;
  }

LABEL_95:
  if (v8)
  {
    v56 = (v8 & 7) == 4;
  }

  else
  {
    v56 = 1;
  }

  if (!v56)
  {
    v57 = *(a1 + 8);
    if (v57)
    {
      v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v58 = sub_11F1920((a1 + 8));
      v7 = *v72;
    }

    v32 = sub_1952690(v8, v58, v7, a3);
    goto LABEL_102;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_123:
  *v72 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v72;
}

char *sub_12A6618(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 72);
    *__dst = 10;
    v7 = *(v6 + 44);
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, __dst + 1);
    }

    else
    {
      v8 = __dst + 2;
    }

    __dst = sub_16E5070(v6, v8, a3);
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 96);
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

    v15 = *(a1 + 88);
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
          v9 = (v16 >> 7);
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v18 = *(a1 + 80);
    *v14 = 34;
    v19 = *(v18 + 20);
    v14[1] = v19;
    if (v19 > 0x7F)
    {
      v20 = sub_19575D0(v19, v14 + 1);
    }

    else
    {
      v20 = v14 + 2;
    }

    v14 = sub_16ED4B0(v18, v20, a3);
    if ((v5 & 0x10) == 0)
    {
LABEL_28:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_41;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_28;
  }

  if (*a3 <= v14)
  {
    v14 = sub_225EB68(a3, v14);
  }

  v21 = *(a1 + 100);
  *v14 = 80;
  v14[1] = v21;
  v14 += 2;
  if ((v5 & 0x20) == 0)
  {
LABEL_29:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_44;
  }

LABEL_41:
  if (*a3 <= v14)
  {
    v14 = sub_225EB68(a3, v14);
  }

  v22 = *(a1 + 101);
  *v14 = 88;
  v14[1] = v22;
  v14 += 2;
  if ((v5 & 0x40) == 0)
  {
LABEL_30:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*a3 <= v14)
  {
    v14 = sub_225EB68(a3, v14);
  }

  v23 = *(a1 + 102);
  *v14 = 96;
  v14[1] = v23;
  v14 += 2;
  if ((v5 & 0x80) != 0)
  {
LABEL_47:
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v24 = *(a1 + 103);
    *v14 = 104;
    v14[1] = v24;
    v14 += 2;
  }

LABEL_50:
  v25 = *(a1 + 32);
  if (v25 >= 1)
  {
    v26 = 8;
    do
    {
      v27 = *(*(a1 + 40) + v26);
      v28 = *(v27 + 23);
      if (v28 < 0 && (v28 = v27[1], v28 > 127) || *a3 - v14 + 14 < v28)
      {
        v14 = sub_1957480(a3, 14, v27, v14);
      }

      else
      {
        *v14 = 114;
        v14[1] = v28;
        if (*(v27 + 23) < 0)
        {
          v27 = *v27;
        }

        v29 = v14 + 2;
        memcpy(v29, v27, v28);
        v14 = &v29[v28];
      }

      v26 += 8;
      --v25;
    }

    while (v25);
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v30 = *(a1 + 104);
    *v14 = 120;
    v14[1] = v30;
    v14 += 2;
  }

  v31 = *(a1 + 56);
  if (v31)
  {
    for (i = 0; i != v31; ++i)
    {
      if (*a3 <= v14)
      {
        v14 = sub_225EB68(a3, v14);
      }

      v33 = *(*(a1 + 64) + 8 * i + 8);
      *v14 = 418;
      v34 = *(v33 + 20);
      v14[2] = v34;
      if (v34 > 0x7F)
      {
        v35 = sub_19575D0(v34, v14 + 2);
      }

      else
      {
        v35 = v14 + 3;
      }

      v14 = sub_12E957C(v33, v35, a3);
    }
  }

  v36 = *(a1 + 8);
  if ((v36 & 1) == 0)
  {
    return v14;
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

  if (*a3 - v14 >= v39)
  {
    v41 = v39;
    memcpy(v14, v40, v39);
    v14 += v41;
    return v14;
  }

  return sub_1957130(a3, v40, v39, v14);
}

uint64_t sub_12A6AF0(uint64_t a1)
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
  v9 = v4 + 2 * v8;
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
      v14 = sub_12E96D4(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (v15)
    {
      v22 = sub_16E51F0(*(a1 + 72));
      v9 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v15 & 2) == 0)
      {
LABEL_17:
        if ((v15 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_28;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_17;
    }

    v23 = sub_16ED6F0(*(a1 + 80));
    v9 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 4) == 0)
    {
LABEL_18:
      if ((v15 & 8) != 0)
      {
LABEL_19:
        v16 = *(a1 + 96);
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
      }

LABEL_23:
      v19.i64[0] = 0x200000002;
      v19.i64[1] = 0x200000002;
      v9 += vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v15), xmmword_232A1F0), v19));
      goto LABEL_24;
    }

LABEL_28:
    v9 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v15 & 8) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

LABEL_24:
  result = v9 + ((v15 >> 7) & 2);
  v21 = *(a1 + 8);
  if (v21)
  {
    v24 = v21 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = *((v21 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v25 < 0)
    {
      v25 = *(v24 + 16);
    }

    result += v25;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_12A6CF4(uint64_t a1, uint64_t a2)
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
    sub_12E5218((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
      *(a1 + 16) |= 1u;
      v17 = *(a1 + 72);
      if (!v17)
      {
        v18 = *(a1 + 8);
        v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v19 = *v19;
        }

        v17 = sub_16F5828(v19);
        *(a1 + 72) = v17;
      }

      if (*(a2 + 72))
      {
        v20 = *(a2 + 72);
      }

      else
      {
        v20 = &off_277E5E8;
      }

      sub_16E527C(v17, v20);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_40;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(a1 + 16) |= 2u;
    v21 = *(a1 + 80);
    if (!v21)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_16F5E18(v23);
      *(a1 + 80) = v21;
    }

    if (*(a2 + 80))
    {
      v24 = *(a2 + 80);
    }

    else
    {
      v24 = &off_277E918;
    }

    sub_16ED814(v21, v24);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_41;
    }

LABEL_40:
    *(a1 + 88) = *(a2 + 88);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(a1 + 96) = *(a2 + 96);
    if ((v14 & 0x10) == 0)
    {
LABEL_13:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_43;
    }

LABEL_42:
    *(a1 + 100) = *(a2 + 100);
    if ((v14 & 0x20) == 0)
    {
LABEL_14:
      if ((v14 & 0x40) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_44;
    }

LABEL_43:
    *(a1 + 101) = *(a2 + 101);
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
      *(a1 + 103) = *(a2 + 103);
      goto LABEL_17;
    }

LABEL_44:
    *(a1 + 102) = *(a2 + 102);
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  if ((v14 & 0x100) != 0)
  {
    v15 = *(a2 + 104);
    *(a1 + 16) |= 0x100u;
    *(a1 + 104) = v15;
  }

  v16 = *(a2 + 8);
  if (v16)
  {

    sub_1957EF4((a1 + 8), (v16 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12A6F3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_16E5370(*(a1 + 72));
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

  result = sub_16ED98C(*(a1 + 80));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_12A6F98(void *a1)
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

void sub_12A700C(void *a1)
{
  sub_12A6F98(a1);

  operator delete();
}

uint64_t sub_12A7044(uint64_t a1)
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

char *sub_12A705C(uint64_t a1, char *a2, int32x2_t *a3)
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
      *(a1 + 24) = v13;
      v5 = 1;
      goto LABEL_19;
    }

    v16 = sub_19587DC(v6, v13);
    v19 = v16;
    *(a1 + 24) = v17;
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

char *sub_12A71D0(uint64_t a1, char *__dst, _DWORD *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
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

  v10 = *(a1 + 8);
  if ((v10 & 1) == 0)
  {
    return v5;
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

  if (*a3 - v5 >= v13)
  {
    v15 = v13;
    memcpy(v5, v14, v13);
    v5 += v15;
    return v5;
  }

  return sub_1957130(a3, v14, v13, v5);
}

unint64_t sub_12A72F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

std::string *sub_12A7358(std::string *result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *(a2 + 24);
    LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
    result[1].__r_.__value_.__r.__words[0] = v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

double sub_12A73A8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26CE7A0;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  *(a1 + 112) = a2;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a2;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a2;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = a2;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = &qword_278E990;
  result = 0.0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  return result;
}

uint64_t sub_12A741C(uint64_t a1)
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

  v5 = (a1 + 208);
  if (*(a1 + 208) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2768EE0 && *(a1 + 216))
  {
    sub_17998B0();
    operator delete();
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_12E5194((a1 + 184));
  sub_12E5110((a1 + 160));
  sub_1956AFC((a1 + 136));
  sub_12E508C((a1 + 112));
  sub_1956ABC(a1 + 96);
  sub_12E5008((a1 + 72));
  sub_12E4F84((a1 + 48));
  sub_12E4F00((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12A7540(uint64_t a1)
{
  sub_12A741C(a1);

  operator delete();
}

uint64_t sub_12A7578(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_12E9A98(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  sub_12E4E18(a1 + 48);
  v5 = *(a1 + 80);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 88) + 8);
    do
    {
      v7 = *v6++;
      sub_12ED870(v7);
      --v5;
    }

    while (v5);
    *(a1 + 80) = 0;
  }

  *(a1 + 96) = 0;
  v8 = *(a1 + 120);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 128) + 8);
    do
    {
      v10 = *v9++;
      sub_12EDC50(v10);
      --v8;
    }

    while (v8);
    *(a1 + 120) = 0;
  }

  result = sub_12A41D0(a1 + 136);
  v12 = *(a1 + 168);
  if (v12 >= 1)
  {
    v13 = (*(a1 + 176) + 8);
    do
    {
      v14 = *v13++;
      result = sub_12EE2C4(v14);
      --v12;
    }

    while (v12);
    *(a1 + 168) = 0;
  }

  v15 = *(a1 + 192);
  if (v15 >= 1)
  {
    v16 = (*(a1 + 200) + 8);
    do
    {
      v17 = *v16++;
      result = sub_12EACE4(v17);
      --v15;
    }

    while (v15);
    *(a1 + 192) = 0;
  }

  v18 = *(a1 + 16);
  if ((v18 & 3) != 0)
  {
    if ((v18 & 1) == 0)
    {
      goto LABEL_25;
    }

    v19 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v19 + 23) & 0x80000000) == 0)
    {
      *v19 = 0;
      *(v19 + 23) = 0;
LABEL_25:
      if ((v18 & 2) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    **v19 = 0;
    *(v19 + 8) = 0;
    if ((v18 & 2) != 0)
    {
LABEL_26:
      result = sub_17998EC(*(a1 + 216));
    }
  }

LABEL_27:
  if ((v18 & 0x3C) != 0)
  {
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
  }

  v21 = *(a1 + 8);
  v20 = a1 + 8;
  *(v20 + 8) = 0;
  if (v21)
  {

    return sub_1957EA8(v20);
  }

  return result;
}

uint64_t sub_12A7704(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v91 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, v91, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (*v91 + 1);
      v8 = **v91;
      if (**v91 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          v7 = sub_1958824(*v91, v9 - 128);
          v8 = v10;
        }

        else
        {
          v7 = (*v91 + 2);
        }
      }

      *v91 = v7;
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_136;
          }

          v11 = v7 - 1;
          while (1)
          {
            v12 = v11 + 1;
            *v91 = v11 + 1;
            v13 = *(a1 + 40);
            if (v13 && (v14 = *(a1 + 32), v14 < *v13))
            {
              *(a1 + 32) = v14 + 1;
              v15 = *&v13[2 * v14 + 2];
            }

            else
            {
              sub_12F1890(*(a1 + 24));
              v15 = sub_19593CC(a1 + 24, v16);
              v12 = *v91;
            }

            v11 = sub_21F5030(a3, v15, v12);
            *v91 = v11;
            if (!v11)
            {
              goto LABEL_150;
            }

            if (*a3 <= v11 || *v11 != 10)
            {
              goto LABEL_144;
            }
          }

        case 2u:
          if (v8 != 16)
          {
            goto LABEL_136;
          }

          v54 = (v7 + 1);
          v55 = *v7;
          if ((v55 & 0x8000000000000000) == 0)
          {
            goto LABEL_83;
          }

          v56 = *v54;
          v57 = (v56 << 7) + v55;
          LODWORD(v55) = v57 - 128;
          if (v56 < 0)
          {
            *v91 = sub_19587DC(v7, (v57 - 128));
            if (!*v91)
            {
              goto LABEL_150;
            }

            LODWORD(v55) = v83;
          }

          else
          {
            v54 = (v7 + 2);
LABEL_83:
            *v91 = v54;
          }

          if (sub_14CB318(v55))
          {
            *(a1 + 16) |= 4u;
            *(a1 + 224) = v55;
          }

          else
          {
            sub_12E8418();
          }

          goto LABEL_144;
        case 3u:
          if (v8 != 26)
          {
            goto LABEL_136;
          }

          v39 = (v7 - 1);
          while (1)
          {
            v40 = (v39 + 1);
            *v91 = v39 + 1;
            v41 = *(a1 + 64);
            if (v41 && (v42 = *(a1 + 56), v42 < *v41))
            {
              *(a1 + 56) = v42 + 1;
              v43 = *&v41[2 * v42 + 2];
            }

            else
            {
              v44 = sub_12A9084(*(a1 + 48));
              v43 = sub_19593CC(a1 + 48, v44);
              v40 = *v91;
            }

            v39 = sub_21F50C0(a3, v43, v40);
            *v91 = v39;
            if (!v39)
            {
              goto LABEL_150;
            }

            if (*a3 <= v39 || *v39 != 26)
            {
              goto LABEL_144;
            }
          }

        case 4u:
          if (v8 != 34)
          {
            goto LABEL_136;
          }

          v45 = (v7 - 1);
          while (1)
          {
            v46 = (v45 + 1);
            *v91 = v45 + 1;
            v47 = *(a1 + 88);
            if (v47 && (v48 = *(a1 + 80), v48 < *v47))
            {
              *(a1 + 80) = v48 + 1;
              v49 = *&v47[2 * v48 + 2];
            }

            else
            {
              v50 = sub_12F1AC0(*(a1 + 72));
              v49 = sub_19593CC(a1 + 72, v50);
              v46 = *v91;
            }

            v45 = sub_21F5150(a3, v49, v46);
            *v91 = v45;
            if (!v45)
            {
              goto LABEL_150;
            }

            if (*a3 <= v45 || *v45 != 34)
            {
              goto LABEL_144;
            }
          }

        case 5u:
          if (v8 != 42)
          {
            goto LABEL_136;
          }

          *(a1 + 16) |= 2u;
          v23 = *(a1 + 216);
          if (!v23)
          {
            v24 = *(a1 + 8);
            v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
            if (v24)
            {
              v25 = *v25;
            }

            v23 = sub_185D614(v25);
            *(a1 + 216) = v23;
            v7 = *v91;
          }

          v26 = sub_21F51E0(a3, v23, v7);
          goto LABEL_143;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_136;
          }

          v5 |= 0x10u;
          v59 = (v7 + 1);
          v58 = *v7;
          if ((v58 & 0x8000000000000000) == 0)
          {
            goto LABEL_90;
          }

          v60 = *v59;
          v58 = (v60 << 7) + v58 - 128;
          if (v60 < 0)
          {
            v84 = sub_19587DC(v7, v58);
            *v91 = v84;
            *(a1 + 232) = v85;
            if (!v84)
            {
              goto LABEL_150;
            }
          }

          else
          {
            v59 = (v7 + 2);
LABEL_90:
            *v91 = v59;
            *(a1 + 232) = v58;
          }

          goto LABEL_144;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_136;
          }

          v5 |= 0x20u;
          v65 = (v7 + 1);
          v64 = *v7;
          if ((v64 & 0x8000000000000000) == 0)
          {
            goto LABEL_99;
          }

          v66 = *v65;
          v64 = (v66 << 7) + v64 - 128;
          if (v66 < 0)
          {
            v86 = sub_19587DC(v7, v64);
            *v91 = v86;
            *(a1 + 240) = v87;
            if (!v86)
            {
              goto LABEL_150;
            }
          }

          else
          {
            v65 = (v7 + 2);
LABEL_99:
            *v91 = v65;
            *(a1 + 240) = v64;
          }

          goto LABEL_144;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_136;
          }

          v5 |= 8u;
          v51 = (v7 + 1);
          v52 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_78;
          }

          v53 = *v51;
          v52 = v52 + (v53 << 7) - 128;
          if (v53 < 0)
          {
            v81 = sub_1958770(v7, v52);
            *v91 = v81;
            *(a1 + 228) = v82;
            if (!v81)
            {
              goto LABEL_150;
            }
          }

          else
          {
            v51 = (v7 + 2);
LABEL_78:
            *v91 = v51;
            *(a1 + 228) = v52;
          }

          goto LABEL_144;
        case 9u:
          if (v8 == 72)
          {
            v75 = v7 - 1;
            while (1)
            {
              *v91 = v75 + 1;
              v76 = v75[1];
              if (v75[1] < 0)
              {
                v77 = v76 + (v75[2] << 7);
                v76 = v77 - 128;
                if (v75[2] < 0)
                {
                  v75 = sub_1958770((v75 + 1), v77 - 128);
                  v76 = v78;
                }

                else
                {
                  v75 += 3;
                }
              }

              else
              {
                v75 += 2;
              }

              *v91 = v75;
              v79 = *(a1 + 96);
              if (v79 == *(a1 + 100))
              {
                v80 = v79 + 1;
                sub_1958E5C((a1 + 96), v79 + 1);
                *(*(a1 + 104) + 4 * v79) = v76;
                v75 = *v91;
              }

              else
              {
                *(*(a1 + 104) + 4 * v79) = v76;
                v80 = v79 + 1;
              }

              *(a1 + 96) = v80;
              if (!v75)
              {
                goto LABEL_150;
              }

              if (*a3 <= v75 || *v75 != 72)
              {
                goto LABEL_144;
              }
            }
          }

          if (v8 == 74)
          {
            v26 = sub_1958918((a1 + 96), v7, a3);
          }

          else
          {
LABEL_136:
            if (v8)
            {
              v88 = (v8 & 7) == 4;
            }

            else
            {
              v88 = 1;
            }

            if (v88)
            {
              if (v7)
              {
                a3[10].i32[0] = v8 - 1;
                goto LABEL_2;
              }

LABEL_150:
              *v91 = 0;
              goto LABEL_2;
            }

            v89 = *(a1 + 8);
            if (v89)
            {
              v90 = (v89 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v90 = sub_11F1920((a1 + 8));
              v7 = *v91;
            }

            v26 = sub_1952690(v8, v90, v7, a3);
          }

LABEL_143:
          *v91 = v26;
          if (!v26)
          {
            goto LABEL_150;
          }

LABEL_144:
          if (sub_195ADC0(a3, v91, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          break;
        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_136;
          }

          v33 = (v7 - 1);
          while (1)
          {
            v34 = (v33 + 1);
            *v91 = v33 + 1;
            v35 = *(a1 + 128);
            if (v35 && (v36 = *(a1 + 120), v36 < *v35))
            {
              *(a1 + 120) = v36 + 1;
              v37 = *&v35[2 * v36 + 2];
            }

            else
            {
              v38 = sub_12F1B38(*(a1 + 112));
              v37 = sub_19593CC(a1 + 112, v38);
              v34 = *v91;
            }

            v33 = sub_21F5270(a3, v37, v34);
            *v91 = v33;
            if (!v33)
            {
              goto LABEL_150;
            }

            if (*a3 <= v33 || *v33 != 82)
            {
              goto LABEL_144;
            }
          }

        case 0xBu:
          if (v8 != 90)
          {
            goto LABEL_136;
          }

          v67 = (v7 - 1);
          while (1)
          {
            v68 = (v67 + 1);
            *v91 = v67 + 1;
            v69 = *(a1 + 152);
            if (v69 && (v70 = *(a1 + 144), v70 < *v69))
            {
              *(a1 + 144) = v70 + 1;
              v71 = *&v69[2 * v70 + 2];
            }

            else
            {
              v72 = *(a1 + 136);
              if (!v72)
              {
                operator new();
              }

              *v74 = v73;
              v74[1] = sub_195A650;
              *v73 = 0;
              v73[1] = 0;
              v73[2] = 0;
              v71 = sub_19593CC(a1 + 136, v73);
              v68 = *v91;
            }

            v67 = sub_1958890(v71, v68, a3);
            *v91 = v67;
            if (!v67)
            {
              goto LABEL_150;
            }

            if (*a3 <= v67 || *v67 != 90)
            {
              goto LABEL_144;
            }
          }

        case 0xCu:
          if (v8 != 98)
          {
            goto LABEL_136;
          }

          v17 = (v7 - 1);
          while (1)
          {
            v18 = (v17 + 1);
            *v91 = v17 + 1;
            v19 = *(a1 + 176);
            if (v19 && (v20 = *(a1 + 168), v20 < *v19))
            {
              *(a1 + 168) = v20 + 1;
              v21 = *&v19[2 * v20 + 2];
            }

            else
            {
              v22 = sub_12F1BD4(*(a1 + 160));
              v21 = sub_19593CC(a1 + 160, v22);
              v18 = *v91;
            }

            v17 = sub_21F5300(a3, v21, v18);
            *v91 = v17;
            if (!v17)
            {
              goto LABEL_150;
            }

            if (*a3 <= v17 || *v17 != 98)
            {
              goto LABEL_144;
            }
          }

        case 0xDu:
          if (v8 != 106)
          {
            goto LABEL_136;
          }

          v27 = v7 - 1;
          while (1)
          {
            v28 = v27 + 1;
            *v91 = v27 + 1;
            v29 = *(a1 + 200);
            if (v29 && (v30 = *(a1 + 192), v30 < *v29))
            {
              *(a1 + 192) = v30 + 1;
              v31 = *&v29[2 * v30 + 2];
            }

            else
            {
              v32 = sub_12F1954(*(a1 + 184));
              v31 = sub_19593CC(a1 + 184, v32);
              v28 = *v91;
            }

            v27 = sub_21F5390(a3, v31, v28);
            *v91 = v27;
            if (!v27)
            {
              goto LABEL_150;
            }

            if (*a3 <= v27 || *v27 != 106)
            {
              goto LABEL_144;
            }
          }

        case 0xEu:
          if (v8 != 114)
          {
            goto LABEL_136;
          }

          *(a1 + 16) |= 1u;
          v61 = *(a1 + 8);
          v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
          if (v61)
          {
            v62 = *v62;
          }

          v63 = sub_194DB04((a1 + 208), v62);
          v26 = sub_1958890(v63, *v91, a3);
          goto LABEL_143;
        default:
          goto LABEL_136;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return *v91;
}

char *sub_12A7FC0(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
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

      a2 = sub_12EA184(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if ((v11 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v13 = *(a1 + 224);
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

  v16 = *(a1 + 56);
  if (v16)
  {
    for (j = 0; j != v16; ++j)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v18 = *(*(a1 + 64) + 8 * j + 8);
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

      v12 = sub_12A71D0(v18, v20, a3);
    }
  }

  v21 = *(a1 + 80);
  if (v21)
  {
    for (k = 0; k != v21; ++k)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v23 = *(*(a1 + 88) + 8 * k + 8);
      *v12 = 34;
      v24 = *(v23 + 20);
      v12[1] = v24;
      if (v24 > 0x7F)
      {
        v25 = sub_19575D0(v24, v12 + 1);
      }

      else
      {
        v25 = v12 + 2;
      }

      v12 = sub_12ED9FC(v23, v25, a3);
    }
  }

  if ((v11 & 2) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v26 = *(a1 + 216);
    *v12 = 42;
    v27 = *(v26 + 20);
    v12[1] = v27;
    if (v27 > 0x7F)
    {
      v28 = sub_19575D0(v27, v12 + 1);
    }

    else
    {
      v28 = v12 + 2;
    }

    v12 = sub_1799A68(v26, v28, a3);
  }

  if ((v11 & 0x10) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v30 = *(a1 + 232);
    *v12 = 48;
    v12[1] = v30;
    if (v30 > 0x7F)
    {
      v12[1] = v30 | 0x80;
      v31 = v30 >> 7;
      v12[2] = v30 >> 7;
      v29 = v12 + 3;
      if (v30 >= 0x4000)
      {
        LOBYTE(v12) = v12[2];
        do
        {
          *(v29 - 1) = v12 | 0x80;
          v12 = (v31 >> 7);
          *v29++ = v31 >> 7;
          v32 = v31 >> 14;
          v31 >>= 7;
        }

        while (v32);
      }
    }

    else
    {
      v29 = v12 + 2;
    }
  }

  else
  {
    v29 = v12;
  }

  if ((v11 & 0x20) != 0)
  {
    if (*a3 <= v29)
    {
      v29 = sub_225EB68(a3, v29);
    }

    v34 = *(a1 + 240);
    *v29 = 56;
    v29[1] = v34;
    if (v34 > 0x7F)
    {
      v29[1] = v34 | 0x80;
      v35 = v34 >> 7;
      v29[2] = v34 >> 7;
      v33 = v29 + 3;
      if (v34 >= 0x4000)
      {
        LOBYTE(v29) = v29[2];
        do
        {
          *(v33 - 1) = v29 | 0x80;
          v29 = (v35 >> 7);
          *v33++ = v35 >> 7;
          v36 = v35 >> 14;
          v35 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v33 = v29 + 2;
    }
  }

  else
  {
    v33 = v29;
  }

  if ((v11 & 8) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v38 = *(a1 + 228);
    *v33 = 64;
    v33[1] = v38;
    if (v38 > 0x7F)
    {
      v33[1] = v38 | 0x80;
      v39 = v38 >> 7;
      v33[2] = v38 >> 7;
      v37 = v33 + 3;
      if (v38 >= 0x4000)
      {
        LOBYTE(v33) = v33[2];
        do
        {
          *(v37 - 1) = v33 | 0x80;
          LODWORD(v33) = v39 >> 7;
          *v37++ = v39 >> 7;
          v40 = v39 >> 14;
          v39 >>= 7;
        }

        while (v40);
      }
    }

    else
    {
      v37 = v33 + 2;
    }
  }

  else
  {
    v37 = v33;
  }

  v41 = *(a1 + 96);
  if (v41 < 1)
  {
    v44 = v37;
  }

  else
  {
    for (m = 0; m != v41; ++m)
    {
      if (*a3 <= v37)
      {
        v37 = sub_225EB68(a3, v37);
      }

      v43 = *(*(a1 + 104) + 4 * m);
      *v37 = 72;
      v37[1] = v43;
      if (v43 > 0x7F)
      {
        v37[1] = v43 | 0x80;
        v45 = v43 >> 7;
        v37[2] = v43 >> 7;
        v44 = v37 + 3;
        if (v43 >= 0x4000)
        {
          LOBYTE(v46) = v37[2];
          do
          {
            *(v44 - 1) = v46 | 0x80;
            v46 = v45 >> 7;
            *v44++ = v45 >> 7;
            v47 = v45 >> 14;
            v45 >>= 7;
          }

          while (v47);
        }
      }

      else
      {
        v44 = v37 + 2;
      }

      v37 = v44;
    }
  }

  v48 = *(a1 + 120);
  if (v48)
  {
    for (n = 0; n != v48; ++n)
    {
      if (*a3 <= v44)
      {
        v44 = sub_225EB68(a3, v44);
      }

      v50 = *(*(a1 + 128) + 8 * n + 8);
      *v44 = 82;
      v51 = *(v50 + 20);
      v44[1] = v51;
      if (v51 > 0x7F)
      {
        v52 = sub_19575D0(v51, v44 + 1);
      }

      else
      {
        v52 = v44 + 2;
      }

      v44 = sub_12EDED8(v50, v52, a3);
    }
  }

  v53 = *(a1 + 144);
  if (v53 >= 1)
  {
    v54 = 8;
    do
    {
      v55 = *(*(a1 + 152) + v54);
      v56 = *(v55 + 23);
      if (v56 < 0 && (v56 = v55[1], v56 > 127) || (*a3 - v44 + 14) < v56)
      {
        v44 = sub_1957480(a3, 11, v55, v44);
      }

      else
      {
        *v44 = 90;
        v44[1] = v56;
        if (*(v55 + 23) < 0)
        {
          v55 = *v55;
        }

        v57 = v44 + 2;
        memcpy(v57, v55, v56);
        v44 = &v57[v56];
      }

      v54 += 8;
      --v53;
    }

    while (v53);
  }

  v58 = *(a1 + 168);
  if (v58)
  {
    for (ii = 0; ii != v58; ++ii)
    {
      if (*a3 <= v44)
      {
        v44 = sub_225EB68(a3, v44);
      }

      v60 = *(*(a1 + 176) + 8 * ii + 8);
      *v44 = 98;
      v61 = *(v60 + 32);
      v44[1] = v61;
      if (v61 > 0x7F)
      {
        v62 = sub_19575D0(v61, v44 + 1);
      }

      else
      {
        v62 = v44 + 2;
      }

      v44 = sub_12EE4C8(v60, v62, a3);
    }
  }

  v63 = *(a1 + 192);
  if (v63)
  {
    for (jj = 0; jj != v63; ++jj)
    {
      if (*a3 <= v44)
      {
        v44 = sub_225EB68(a3, v44);
      }

      v65 = *(*(a1 + 200) + 8 * jj + 8);
      *v44 = 106;
      v66 = *(v65 + 20);
      v44[1] = v66;
      if (v66 > 0x7F)
      {
        v67 = sub_19575D0(v66, v44 + 1);
      }

      else
      {
        v67 = v44 + 2;
      }

      v44 = sub_12EAF58(v65, v67, a3);
    }
  }

  if (v11)
  {
    v44 = sub_128AEEC(a3, 14, *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL, v44);
  }

  v68 = *(a1 + 8);
  if ((v68 & 1) == 0)
  {
    return v44;
  }

  v70 = v68 & 0xFFFFFFFFFFFFFFFCLL;
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

  if ((*a3 - v44) >= v71)
  {
    v73 = v71;
    memcpy(v44, v72, v71);
    v44 += v73;
    return v44;
  }

  return sub_1957130(a3, v72, v71, v44);
}

uint64_t sub_12A8778(uint64_t a1)
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
      v7 = sub_12EA66C(v6);
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
      v14 = sub_12A72F8(v13);
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
      v21 = sub_12EDB24(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = sub_1959E5C((a1 + 96));
  v23 = *(a1 + 120);
  v24 = v22 + *(a1 + 96) + v23 + v16;
  v25 = *(a1 + 128);
  if (v25)
  {
    v26 = (v25 + 8);
  }

  else
  {
    v26 = 0;
  }

  if (v23)
  {
    v27 = 8 * v23;
    do
    {
      v28 = *v26++;
      v29 = sub_12EE0B4(v28);
      v24 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6);
      v27 -= 8;
    }

    while (v27);
  }

  v30 = *(a1 + 144);
  v31 = v24 + v30;
  if (v30 >= 1)
  {
    v32 = (*(a1 + 152) + 8);
    do
    {
      v33 = *v32++;
      v34 = *(v33 + 23);
      v35 = *(v33 + 8);
      if ((v34 & 0x80u) == 0)
      {
        v35 = v34;
      }

      v31 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      --v30;
    }

    while (v30);
  }

  v36 = *(a1 + 168);
  v37 = v31 + v36;
  v38 = *(a1 + 176);
  if (v38)
  {
    v39 = (v38 + 8);
  }

  else
  {
    v39 = 0;
  }

  if (v36)
  {
    v40 = 8 * v36;
    do
    {
      v41 = *v39++;
      v42 = sub_12EE618(v41);
      v37 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      v40 -= 8;
    }

    while (v40);
  }

  v43 = *(a1 + 192);
  v44 = v37 + v43;
  v45 = *(a1 + 200);
  if (v45)
  {
    v46 = (v45 + 8);
  }

  else
  {
    v46 = 0;
  }

  if (v43)
  {
    v47 = 8 * v43;
    do
    {
      v48 = *v46++;
      v49 = sub_12EB06C(v48);
      v44 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6);
      v47 -= 8;
    }

    while (v47);
  }

  v50 = *(a1 + 16);
  if ((v50 & 0x3F) == 0)
  {
    goto LABEL_52;
  }

  if (v50)
  {
    v53 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
    v54 = *(v53 + 23);
    v55 = *(v53 + 8);
    if ((v54 & 0x80u) == 0)
    {
      v55 = v54;
    }

    v44 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v50 & 2) == 0)
    {
LABEL_47:
      if ((v50 & 4) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_58;
    }
  }

  else if ((v50 & 2) == 0)
  {
    goto LABEL_47;
  }

  v56 = sub_1799B30(*(a1 + 216));
  v44 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v50 & 4) == 0)
  {
LABEL_48:
    if ((v50 & 8) == 0)
    {
      goto LABEL_49;
    }

LABEL_62:
    v44 += ((9 * (__clz(*(a1 + 228) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v50 & 0x10) == 0)
    {
LABEL_50:
      if ((v50 & 0x20) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    goto LABEL_63;
  }

LABEL_58:
  v57 = *(a1 + 224);
  v58 = ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v57 >= 0)
  {
    v59 = v58;
  }

  else
  {
    v59 = 11;
  }

  v44 += v59;
  if ((v50 & 8) != 0)
  {
    goto LABEL_62;
  }

LABEL_49:
  if ((v50 & 0x10) == 0)
  {
    goto LABEL_50;
  }

LABEL_63:
  v44 += ((9 * (__clz(*(a1 + 232) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v50 & 0x20) != 0)
  {
LABEL_51:
    v44 += ((9 * (__clz(*(a1 + 240) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_52:
  v51 = *(a1 + 8);
  if (v51)
  {
    v60 = v51 & 0xFFFFFFFFFFFFFFFCLL;
    v61 = *((v51 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v61 < 0)
    {
      v61 = *(v60 + 16);
    }

    v44 += v61;
  }

  *(a1 + 20) = v44;
  return v44;
}

void sub_12A8B58(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_12E52A4((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_12E5330((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_12E53BC((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 96);
  if (v19)
  {
    v20 = *(a1 + 96);
    sub_1958E5C((a1 + 96), v20 + v19);
    v21 = *(a1 + 104);
    *(a1 + 96) += *(a2 + 96);
    memcpy((v21 + 4 * v20), *(a2 + 104), 4 * *(a2 + 96));
  }

  v22 = *(a2 + 120);
  if (v22)
  {
    v23 = *(a2 + 128);
    v24 = sub_19592E8(a1 + 112, *(a2 + 120));
    sub_12E5438((a1 + 112), v24, (v23 + 8), v22, **(a1 + 128) - *(a1 + 120));
    v25 = *(a1 + 120) + v22;
    *(a1 + 120) = v25;
    v26 = *(a1 + 128);
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }

  v27 = *(a2 + 144);
  if (v27)
  {
    v28 = *(a2 + 152);
    v29 = sub_19592E8(a1 + 136, *(a2 + 144));
    sub_1201B48(a1 + 136, v29, (v28 + 8), v27, **(a1 + 152) - *(a1 + 144));
    v30 = *(a1 + 144) + v27;
    *(a1 + 144) = v30;
    v31 = *(a1 + 152);
    if (*v31 < v30)
    {
      *v31 = v30;
    }
  }

  v32 = *(a2 + 168);
  if (v32)
  {
    v33 = *(a2 + 176);
    v34 = sub_19592E8(a1 + 160, *(a2 + 168));
    sub_12E54C4((a1 + 160), v34, (v33 + 8), v32, **(a1 + 176) - *(a1 + 168));
    v35 = *(a1 + 168) + v32;
    *(a1 + 168) = v35;
    v36 = *(a1 + 176);
    if (*v36 < v35)
    {
      *v36 = v35;
    }
  }

  v37 = *(a2 + 192);
  if (v37)
  {
    v38 = *(a2 + 200);
    v39 = sub_19592E8(a1 + 184, *(a2 + 192));
    sub_12E5550((a1 + 184), v39, (v38 + 8), v37, **(a1 + 200) - *(a1 + 192));
    v40 = *(a1 + 192) + v37;
    *(a1 + 192) = v40;
    v41 = *(a1 + 200);
    if (*v41 < v40)
    {
      *v41 = v40;
    }
  }

  v42 = *(a2 + 16);
  if ((v42 & 0x3F) != 0)
  {
    if (v42)
    {
      v44 = *(a2 + 208);
      *(a1 + 16) |= 1u;
      v45 = *(a1 + 8);
      v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
      if (v45)
      {
        v46 = *v46;
      }

      sub_194EA1C((a1 + 208), (v44 & 0xFFFFFFFFFFFFFFFELL), v46);
      if ((v42 & 2) == 0)
      {
LABEL_27:
        if ((v42 & 4) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_48;
      }
    }

    else if ((v42 & 2) == 0)
    {
      goto LABEL_27;
    }

    *(a1 + 16) |= 2u;
    v47 = *(a1 + 216);
    if (!v47)
    {
      v48 = *(a1 + 8);
      v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
      if (v48)
      {
        v49 = *v49;
      }

      v47 = sub_185D614(v49);
      *(a1 + 216) = v47;
    }

    if (*(a2 + 216))
    {
      v50 = *(a2 + 216);
    }

    else
    {
      v50 = &off_2782568;
    }

    sub_132DE2C(v47, v50);
    if ((v42 & 4) == 0)
    {
LABEL_28:
      if ((v42 & 8) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_49;
    }

LABEL_48:
    *(a1 + 224) = *(a2 + 224);
    if ((v42 & 8) == 0)
    {
LABEL_29:
      if ((v42 & 0x10) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_50;
    }

LABEL_49:
    *(a1 + 228) = *(a2 + 228);
    if ((v42 & 0x10) == 0)
    {
LABEL_30:
      if ((v42 & 0x20) == 0)
      {
LABEL_32:
        *(a1 + 16) |= v42;
        goto LABEL_33;
      }

LABEL_31:
      *(a1 + 240) = *(a2 + 240);
      goto LABEL_32;
    }

LABEL_50:
    *(a1 + 232) = *(a2 + 232);
    if ((v42 & 0x20) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_33:
  v43 = *(a2 + 8);
  if (v43)
  {

    sub_1957EF4((a1 + 8), (v43 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_12A8F60(uint64_t a1)
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
    v5 = sub_12EAB84(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

double sub_12A8FC8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26CE6A0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0;
  return result;
}

void *sub_12A9084(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26CE720;
  result[2] = 0;
  result[3] = 0;
  return result;
}

double sub_12A90FC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_12A73A8(v2, a1, 0);
}

void *sub_12A91A4(void *a1)
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

void sub_12A9218(void *a1)
{
  sub_12A91A4(a1);

  operator delete();
}

uint64_t sub_12A9250(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
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

char *sub_12A9278(uint64_t a1, char *a2, int32x2_t *a3)
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
      v24 = v19;
      *(a1 + 40) = v18 != 0;
      goto LABEL_30;
    }

    v22 = sub_19587DC(v7, v18);
    v24 = v22;
    *(a1 + 40) = v23 != 0;
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

  if (v11 == 2)
  {
    if (v8 == 17)
    {
      v17 = *v7;
      v16 = v7 + 8;
      v5 |= 2u;
      *(a1 + 32) = v17;
LABEL_29:
      v24 = v16;
      goto LABEL_30;
    }
  }

  else if (v11 == 1 && v8 == 9)
  {
    v21 = *v7;
    v16 = v7 + 8;
    v5 |= 1u;
    *(a1 + 24) = v21;
    goto LABEL_29;
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
      v7 = v24;
    }

    v24 = sub_1952690(v8, v15, v7, a3);
    if (!v24)
    {
      goto LABEL_37;
    }

    goto LABEL_30;
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

char *sub_12A9454(uint64_t a1, unint64_t __dst, _DWORD *a3)
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
        goto LABEL_14;
      }

      goto LABEL_11;
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
  if ((v6 & 4) != 0)
  {
LABEL_11:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v9 = *(a1 + 40);
    *v4 = 24;
    v4[1] = v9;
    v4 += 2;
  }

LABEL_14:
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

uint64_t sub_12A95B0(uint64_t a1)
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

  v3 = v2 + ((v1 >> 1) & 2);
  if ((v1 & 7) != 0)
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

std::string *sub_12A9610(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result[1].__r_.__value_.__s.__data_[16] = *(a2 + 40);
  }

LABEL_6:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_7:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_12A968C(uint64_t a1)
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

void sub_12A9734(uint64_t a1)
{
  sub_12A968C(a1);

  operator delete();
}

uint64_t sub_12A976C(uint64_t a1)
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
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_12A97F0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v26 = a2;
  if (sub_195ADC0(a3, v26, a3[11].i32[1]))
  {
    return *v26;
  }

  while (1)
  {
    v6 = (*v26 + 1);
    v7 = **v26;
    if (**v26 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v26, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v26 + 2);
      }
    }

    *v26 = v6;
    if (v7 >> 3 != 2)
    {
      break;
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

    v17 = sub_194DB04((a1 + 48), v16);
    v14 = sub_1958890(v17, *v26, a3);
LABEL_23:
    *v26 = v14;
    if (!v14)
    {
      goto LABEL_40;
    }

LABEL_24:
    if (sub_195ADC0(a3, v26, a3[11].i32[1]))
    {
      return *v26;
    }
  }

  if (v7 >> 3 == 1 && v7 == 10)
  {
    v18 = v6 - 1;
    while (1)
    {
      v19 = (v18 + 1);
      *v26 = v18 + 1;
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
        v19 = *v26;
      }

      v18 = sub_1958890(v22, v19, a3);
      *v26 = v18;
      if (!v18)
      {
        goto LABEL_40;
      }

      if (*a3 <= v18 || *v18 != 10)
      {
        goto LABEL_24;
      }
    }
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
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v26;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
    goto LABEL_23;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v26;
  }

LABEL_40:
  *v26 = 0;
  return *v26;
}

char *sub_12A9A34(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_12A9BAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 < 1)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v2 = (*(a1 + 40) + 8);
    v3 = *(a1 + 32);
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

  if (*(a1 + 16))
  {
    v7 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v3 += v13;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_12A9C84(std::string *result, uint64_t a2)
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

uint64_t sub_12A9D90(uint64_t a1)
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

  if (a1 != &off_2769040)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_12A968C(v6);
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

void sub_12A9E78(uint64_t a1)
{
  sub_12A9D90(a1);

  operator delete();
}

uint64_t sub_12A9EB0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
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

  v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
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
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    result = sub_12A976C(*(result + 40));
    goto LABEL_6;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 40) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_12A9F84(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 == 10)
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

            v19 = sub_12AA6AC(v21);
            *(a1 + 40) = v19;
            v7 = *v30;
          }

          v18 = sub_21F5420(a3, v19, v7);
          goto LABEL_42;
        }
      }

      else if (v11 == 2 && v8 == 18)
      {
        *(a1 + 16) |= 1u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 24);
        goto LABEL_23;
      }

      goto LABEL_35;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_35;
    }

    v5 |= 8u;
    v23 = (v7 + 1);
    v22 = *v7;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    v24 = *v23;
    v22 = (v24 << 7) + v22 - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = (v7 + 2);
LABEL_34:
      *v30 = v23;
      *(a1 + 48) = v22 != 0;
      goto LABEL_43;
    }

    v28 = sub_19587DC(v7, v22);
    *v30 = v28;
    *(a1 + 48) = v29 != 0;
    if (!v28)
    {
      goto LABEL_50;
    }

LABEL_43:
    if (sub_195ADC0(a3, v30, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4 && v8 == 34)
  {
    *(a1 + 16) |= 2u;
    v16 = *(a1 + 8);
    v14 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v14 = *v14;
    }

    v15 = (a1 + 32);
LABEL_23:
    v17 = sub_194DB04(v15, v14);
    v18 = sub_1958890(v17, *v30, a3);
LABEL_42:
    *v30 = v18;
    if (!v18)
    {
      goto LABEL_50;
    }

    goto LABEL_43;
  }

LABEL_35:
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
      v7 = *v30;
    }

    v18 = sub_1952690(v8, v27, v7, a3);
    goto LABEL_42;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_50:
  *v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v30;
}

char *sub_12AA1FC(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v9 = *(a1 + 40);
    *v4 = 10;
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

    v4 = sub_12A9A34(v9, v11, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v12 = *(a1 + 48);
  *v4 = 24;
  v4[1] = v12;
  v4 += 2;
  if ((v6 & 2) != 0)
  {
LABEL_5:
    v4 = sub_128AEEC(a3, 4, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_6:
  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v13 = v7 & 0xFFFFFFFFFFFFFFFCLL;
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

  if (*a3 - v4 >= v14)
  {
    v16 = v14;
    memcpy(v4, v15, v14);
    v4 += v16;
    return v4;
  }

  return sub_1957130(a3, v15, v14, v4);
}

uint64_t sub_12AA39C(uint64_t a1)
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
    v11 = sub_12A9BAC(*(a1 + 40));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result = v3 + ((v2 >> 2) & 2);
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

std::string *sub_12AA4CC(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
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

        goto LABEL_18;
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
LABEL_7:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      v3[2].__r_.__value_.__s.__data_[0] = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_18:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v12 = v3[1].__r_.__value_.__r.__words[2];
    if (!v12)
    {
      v13 = v3->__r_.__value_.__l.__size_;
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v12 = sub_12AA6AC(v14);
      v3[1].__r_.__value_.__r.__words[2] = v12;
    }

    if (*(a2 + 40))
    {
      v15 = *(a2 + 40);
    }

    else
    {
      v15 = &off_2769008;
    }

    result = sub_12A9C84(v12, v15);
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

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_12AA62C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26CE820;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_12AA6AC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26CE8A0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

uint64_t sub_12AA750(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26CE920;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

void *sub_12AA7D8(void *a1)
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

void sub_12AA84C(void *a1)
{
  sub_12AA7D8(a1);

  operator delete();
}

uint64_t sub_12AA884(uint64_t a1)
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

char *sub_12AA8AC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v20, a3[11].i32[1]))
  {
    goto LABEL_32;
  }

  while (1)
  {
    v6 = v20 + 1;
    v7 = *v20;
    if (*v20 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v20, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v20 + 2;
      }
    }

    v20 = v6;
    if (v7 >> 3 != 2)
    {
      break;
    }

    if (v7 != 16)
    {
      goto LABEL_11;
    }

    v5 |= 2u;
    v14 = v6 + 1;
    v15 = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    v16 = *v14;
    v15 = v15 + (v16 << 7) - 128;
    if ((v16 & 0x80000000) == 0)
    {
      v14 = v6 + 2;
LABEL_23:
      v20 = v14;
      *(a1 + 32) = v15;
      goto LABEL_25;
    }

    v17 = sub_1958770(v6, v15);
    v20 = v17;
    *(a1 + 32) = v18;
    if (!v17)
    {
      goto LABEL_33;
    }

LABEL_25:
    if (sub_195ADC0(a3, &v20, a3[11].i32[1]))
    {
      goto LABEL_32;
    }
  }

  if (v7 >> 3 == 1 && v7 == 9)
  {
    v5 |= 1u;
    *(a1 + 24) = *v6;
    v20 = v6 + 8;
    goto LABEL_25;
  }

LABEL_11:
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
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = v20;
    }

    v20 = sub_1952690(v7, v13, v6, a3);
    if (!v20)
    {
      goto LABEL_33;
    }

    goto LABEL_25;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_32;
  }

LABEL_33:
  v20 = 0;
LABEL_32:
  *(a1 + 16) |= v5;
  return v20;
}

char *sub_12AAA50(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *__dst = 9;
    *(__dst + 1) = v6;
    __dst += 9;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 32);
    *__dst = 16;
    __dst[1] = v8;
    if (v8 > 0x7F)
    {
      __dst[1] = v8 | 0x80;
      v9 = v8 >> 7;
      __dst[2] = v8 >> 7;
      v7 = __dst + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v10) = __dst[2];
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
      v7 = __dst + 2;
    }
  }

  else
  {
    v7 = __dst;
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

uint64_t sub_12AABAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    v2 = 9;
    if ((v1 & 1) == 0)
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v2 = 0;
  }

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

std::string *sub_12AAC24(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
    }

    if ((v2 & 2) != 0)
    {
      LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
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

uint64_t sub_12AAC88(uint64_t a1)
{
  sub_12A41D0(a1 + 24);
  sub_12A41D0(a1 + 48);
  result = sub_12A41D0(a1 + 72);
  v3 = *(a1 + 104);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 112) + 8);
    do
    {
      v5 = *v4++;
      result = sub_12B0600(v5);
      --v3;
    }

    while (v3);
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 128);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 136) + 8);
    do
    {
      v8 = *v7++;
      result = sub_12B0BBC(v8);
      --v6;
    }

    while (v6);
    *(a1 + 128) = 0;
  }

  v9 = *(a1 + 16);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      v10 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
        if ((v9 & 2) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_14;
      }

      *v10 = 0;
      *(v10 + 23) = 0;
    }

    if ((v9 & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_14:
    v11 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_19:
  v13 = *(a1 + 8);
  v12 = a1 + 8;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

void *sub_12AADB0(void *a1)
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

  sub_12AAE5C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_12E5660(a1 + 11);
  sub_12E55DC(a1 + 8);
  sub_1956AFC(a1 + 5);
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_12AAE5C(uint64_t a1)
{
  v3 = *(a1 + 112);
  result = (a1 + 112);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_27690A0)
  {
    if (*(a1 + 120))
    {
      sub_16ED13C();
      operator delete();
    }

    if (*(a1 + 128))
    {
      sub_16E4E08();
      operator delete();
    }

    v4 = *(a1 + 136);
    if (v4)
    {
      sub_12AF610(v4);
      operator delete();
    }

    v5 = *(a1 + 144);
    if (v5)
    {
      sub_12AFC18(v5);
      operator delete();
    }

    v6 = *(a1 + 152);
    if (v6)
    {
      sub_12AA7D8(v6);
      operator delete();
    }

    result = *(a1 + 160);
    if (result)
    {
      sub_12B0FE8(result);

      operator delete();
    }
  }

  return result;
}

void sub_12AAF78(void *a1)
{
  sub_12AADB0(a1);

  operator delete();
}

uint64_t sub_12AAFB0(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_12A41D0(a1 + 40);
  v3 = *(a1 + 72);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 80) + 8);
    do
    {
      v5 = *v4++;
      result = sub_12AB118(v5);
      --v3;
    }

    while (v3);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 96);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 104) + 8);
    do
    {
      v8 = *v7++;
      result = sub_12AB13C(v8);
      --v6;
    }

    while (v6);
    *(a1 + 96) = 0;
  }

  v9 = *(a1 + 16);
  if ((v9 & 0x7F) == 0)
  {
    goto LABEL_18;
  }

  if (v9)
  {
    v12 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
      if ((v9 & 2) != 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
      if ((v9 & 2) != 0)
      {
        goto LABEL_28;
      }
    }

LABEL_12:
    if ((v9 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

  if ((v9 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_28:
  result = sub_16ED178(*(a1 + 120));
  if ((v9 & 4) == 0)
  {
LABEL_13:
    if ((v9 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = sub_16E4E44(*(a1 + 128));
  if ((v9 & 8) == 0)
  {
LABEL_14:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    result = sub_12AB13C(*(a1 + 144));
    if ((v9 & 0x20) == 0)
    {
LABEL_16:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_30:
  result = sub_12AB118(*(a1 + 136));
  if ((v9 & 0x10) != 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  if ((v9 & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_32:
  result = sub_12AA884(*(a1 + 152));
  if ((v9 & 0x40) != 0)
  {
LABEL_17:
    result = sub_12AAC88(*(a1 + 160));
  }

LABEL_18:
  *(a1 + 168) = 0;
  if ((v9 & 0x3F00) != 0)
  {
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
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

uint64_t sub_12AB118(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
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

uint64_t sub_12AB13C(uint64_t a1)
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

uint64_t sub_12AB160(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v97 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, v97, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (*v97 + 1);
      v8 = **v97;
      if (**v97 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          v7 = sub_1958824(*v97, v9 - 128);
          v8 = v10;
        }

        else
        {
          v7 = (*v97 + 2);
        }
      }

      *v97 = v7;
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_145;
          }

          *(a1 + 16) |= 2u;
          v11 = *(a1 + 120);
          if (!v11)
          {
            v12 = *(a1 + 8);
            v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
            if (v12)
            {
              v13 = *v13;
            }

            v11 = sub_16F5E18(v13);
            *(a1 + 120) = v11;
            v7 = *v97;
          }

          v14 = sub_21F4F10(a3, v11, v7);
          goto LABEL_152;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_145;
          }

          v5 |= 0x80u;
          v60 = (v7 + 1);
          v59 = *v7;
          if ((v59 & 0x8000000000000000) == 0)
          {
            goto LABEL_95;
          }

          v61 = *v60;
          v59 = (v61 << 7) + v59 - 128;
          if (v61 < 0)
          {
            v86 = sub_19587DC(v7, v59);
            *v97 = v86;
            *(a1 + 168) = v87;
            if (!v86)
            {
              goto LABEL_158;
            }
          }

          else
          {
            v60 = (v7 + 2);
LABEL_95:
            *v97 = v60;
            *(a1 + 168) = v59;
          }

          goto LABEL_153;
        case 3u:
          if (v8 != 26)
          {
            goto LABEL_145;
          }

          *(a1 + 16) |= 4u;
          v39 = *(a1 + 128);
          if (!v39)
          {
            v40 = *(a1 + 8);
            v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
            if (v40)
            {
              v41 = *v41;
            }

            v39 = sub_16F5828(v41);
            *(a1 + 128) = v39;
            v7 = *v97;
          }

          v14 = sub_21F4D60(a3, v39, v7);
          goto LABEL_152;
        case 4u:
          if (v8 == 32)
          {
            v45 = v7 - 1;
            while (1)
            {
              *v97 = v45 + 1;
              v46 = v45[1];
              if (v46 < 0)
              {
                v47 = (v45[2] << 7) + v46;
                v46 = (v47 - 128);
                if (v45[2] < 0)
                {
                  v45 = sub_19587DC((v45 + 1), (v47 - 128));
                  v46 = v48;
                }

                else
                {
                  v45 += 3;
                }
              }

              else
              {
                v45 += 2;
              }

              *v97 = v45;
              v49 = *(a1 + 24);
              if (v49 == *(a1 + 28))
              {
                v50 = v49 + 1;
                sub_1959094((a1 + 24), v49 + 1);
                *(*(a1 + 32) + 8 * v49) = v46;
                v45 = *v97;
              }

              else
              {
                *(*(a1 + 32) + 8 * v49) = v46;
                v50 = v49 + 1;
              }

              *(a1 + 24) = v50;
              if (!v45)
              {
                goto LABEL_158;
              }

              if (*a3 <= v45 || *v45 != 32)
              {
                goto LABEL_153;
              }
            }
          }

          if (v8 == 34)
          {
            v14 = sub_1958938((a1 + 24), v7, a3);
          }

          else
          {
LABEL_145:
            if (v8)
            {
              v94 = (v8 & 7) == 4;
            }

            else
            {
              v94 = 1;
            }

            if (v94)
            {
              if (v7)
              {
                a3[10].i32[0] = v8 - 1;
                goto LABEL_2;
              }

LABEL_158:
              *v97 = 0;
              goto LABEL_2;
            }

            v95 = *(a1 + 8);
            if (v95)
            {
              v96 = (v95 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v96 = sub_11F1920((a1 + 8));
              v7 = *v97;
            }

            v14 = sub_1952690(v8, v96, v7, a3);
          }

LABEL_152:
          *v97 = v14;
          if (!v14)
          {
            goto LABEL_158;
          }

LABEL_153:
          if (sub_195ADC0(a3, v97, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          break;
        case 5u:
          if (v8 != 40)
          {
            goto LABEL_145;
          }

          v5 |= 0x400u;
          v28 = (v7 + 1);
          v27 = *v7;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_38;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if (v29 < 0)
          {
            v80 = sub_19587DC(v7, v27);
            *v97 = v80;
            *(a1 + 192) = v81 != 0;
            if (!v80)
            {
              goto LABEL_158;
            }
          }

          else
          {
            v28 = (v7 + 2);
LABEL_38:
            *v97 = v28;
            *(a1 + 192) = v27 != 0;
          }

          goto LABEL_153;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_145;
          }

          v5 |= 0x800u;
          v66 = (v7 + 1);
          v65 = *v7;
          if ((v65 & 0x8000000000000000) == 0)
          {
            goto LABEL_106;
          }

          v67 = *v66;
          v65 = (v67 << 7) + v65 - 128;
          if (v67 < 0)
          {
            v88 = sub_19587DC(v7, v65);
            *v97 = v88;
            *(a1 + 193) = v89 != 0;
            if (!v88)
            {
              goto LABEL_158;
            }
          }

          else
          {
            v66 = (v7 + 2);
LABEL_106:
            *v97 = v66;
            *(a1 + 193) = v65 != 0;
          }

          goto LABEL_153;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_145;
          }

          v5 |= 0x1000u;
          v72 = (v7 + 1);
          v71 = *v7;
          if ((v71 & 0x8000000000000000) == 0)
          {
            goto LABEL_116;
          }

          v73 = *v72;
          v71 = (v73 << 7) + v71 - 128;
          if (v73 < 0)
          {
            v92 = sub_19587DC(v7, v71);
            *v97 = v92;
            *(a1 + 194) = v93 != 0;
            if (!v92)
            {
              goto LABEL_158;
            }
          }

          else
          {
            v72 = (v7 + 2);
LABEL_116:
            *v97 = v72;
            *(a1 + 194) = v71 != 0;
          }

          goto LABEL_153;
        case 8u:
          if (v8 != 66)
          {
            goto LABEL_145;
          }

          v51 = (v7 - 1);
          while (1)
          {
            v52 = (v51 + 1);
            *v97 = v51 + 1;
            v53 = *(a1 + 56);
            if (v53 && (v54 = *(a1 + 48), v54 < *v53))
            {
              *(a1 + 48) = v54 + 1;
              v55 = *&v53[2 * v54 + 2];
            }

            else
            {
              v56 = *(a1 + 40);
              if (!v56)
              {
                operator new();
              }

              *v58 = v57;
              v58[1] = sub_195A650;
              *v57 = 0;
              v57[1] = 0;
              v57[2] = 0;
              v55 = sub_19593CC(a1 + 40, v57);
              v52 = *v97;
            }

            v51 = sub_1958890(v55, v52, a3);
            *v97 = v51;
            if (!v51)
            {
              goto LABEL_158;
            }

            if (*a3 <= v51 || *v51 != 66)
            {
              goto LABEL_153;
            }
          }

        case 9u:
          if (v8 != 74)
          {
            goto LABEL_145;
          }

          *(a1 + 16) |= 8u;
          v77 = *(a1 + 136);
          if (!v77)
          {
            v78 = *(a1 + 8);
            v79 = (v78 & 0xFFFFFFFFFFFFFFFCLL);
            if (v78)
            {
              v79 = *v79;
            }

            v77 = sub_12B0430(v79);
            *(a1 + 136) = v77;
            v7 = *v97;
          }

          v14 = sub_21F54B0(a3, v77, v7);
          goto LABEL_152;
        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_145;
          }

          v33 = (v7 - 1);
          while (1)
          {
            v34 = (v33 + 1);
            *v97 = v33 + 1;
            v35 = *(a1 + 80);
            if (v35 && (v36 = *(a1 + 72), v36 < *v35))
            {
              *(a1 + 72) = v36 + 1;
              v37 = *&v35[2 * v36 + 2];
            }

            else
            {
              v38 = sub_12B0430(*(a1 + 64));
              v37 = sub_19593CC(a1 + 64, v38);
              v34 = *v97;
            }

            v33 = sub_21F54B0(a3, v37, v34);
            *v97 = v33;
            if (!v33)
            {
              goto LABEL_158;
            }

            if (*a3 <= v33 || *v33 != 82)
            {
              goto LABEL_153;
            }
          }

        case 0xBu:
          if (v8 != 90)
          {
            goto LABEL_145;
          }

          *(a1 + 16) |= 0x10u;
          v74 = *(a1 + 144);
          if (!v74)
          {
            v75 = *(a1 + 8);
            v76 = (v75 & 0xFFFFFFFFFFFFFFFCLL);
            if (v75)
            {
              v76 = *v76;
            }

            v74 = sub_12B04AC(v76);
            *(a1 + 144) = v74;
            v7 = *v97;
          }

          v14 = sub_21F5540(a3, v74, v7);
          goto LABEL_152;
        case 0xCu:
          if (v8 != 98)
          {
            goto LABEL_145;
          }

          v21 = (v7 - 1);
          while (1)
          {
            v22 = (v21 + 1);
            *v97 = v21 + 1;
            v23 = *(a1 + 104);
            if (v23 && (v24 = *(a1 + 96), v24 < *v23))
            {
              *(a1 + 96) = v24 + 1;
              v25 = *&v23[2 * v24 + 2];
            }

            else
            {
              v26 = sub_12B04AC(*(a1 + 88));
              v25 = sub_19593CC(a1 + 88, v26);
              v22 = *v97;
            }

            v21 = sub_21F5540(a3, v25, v22);
            *v97 = v21;
            if (!v21)
            {
              goto LABEL_158;
            }

            if (*a3 <= v21 || *v21 != 98)
            {
              goto LABEL_153;
            }
          }

        case 0xDu:
          if (v8 != 104)
          {
            goto LABEL_145;
          }

          v5 |= 0x100u;
          v31 = (v7 + 1);
          v30 = *v7;
          if ((v30 & 0x8000000000000000) == 0)
          {
            goto LABEL_43;
          }

          v32 = *v31;
          v30 = (v32 << 7) + v30 - 128;
          if (v32 < 0)
          {
            v82 = sub_19587DC(v7, v30);
            *v97 = v82;
            *(a1 + 176) = v83;
            if (!v82)
            {
              goto LABEL_158;
            }
          }

          else
          {
            v31 = (v7 + 2);
LABEL_43:
            *v97 = v31;
            *(a1 + 176) = v30;
          }

          goto LABEL_153;
        case 0xEu:
          if (v8 != 112)
          {
            goto LABEL_145;
          }

          v5 |= 0x200u;
          v69 = (v7 + 1);
          v68 = *v7;
          if ((v68 & 0x8000000000000000) == 0)
          {
            goto LABEL_111;
          }

          v70 = *v69;
          v68 = (v70 << 7) + v68 - 128;
          if (v70 < 0)
          {
            v90 = sub_19587DC(v7, v68);
            *v97 = v90;
            *(a1 + 184) = v91;
            if (!v90)
            {
              goto LABEL_158;
            }
          }

          else
          {
            v69 = (v7 + 2);
LABEL_111:
            *v97 = v69;
            *(a1 + 184) = v68;
          }

          goto LABEL_153;
        case 0xFu:
          if (v8 != 122)
          {
            goto LABEL_145;
          }

          *(a1 + 16) |= 1u;
          v18 = *(a1 + 8);
          v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
          if (v18)
          {
            v19 = *v19;
          }

          v20 = sub_194DB04((a1 + 112), v19);
          v14 = sub_1958890(v20, *v97, a3);
          goto LABEL_152;
        case 0x10u:
          if (v8 != 128)
          {
            goto LABEL_145;
          }

          v5 |= 0x2000u;
          v43 = (v7 + 1);
          v42 = *v7;
          if ((v42 & 0x8000000000000000) == 0)
          {
            goto LABEL_64;
          }

          v44 = *v43;
          v42 = (v44 << 7) + v42 - 128;
          if (v44 < 0)
          {
            v84 = sub_19587DC(v7, v42);
            *v97 = v84;
            *(a1 + 195) = v85 != 0;
            if (!v84)
            {
              goto LABEL_158;
            }
          }

          else
          {
            v43 = (v7 + 2);
LABEL_64:
            *v97 = v43;
            *(a1 + 195) = v42 != 0;
          }

          goto LABEL_153;
        case 0x11u:
          if (v8 != 138)
          {
            goto LABEL_145;
          }

          *(a1 + 16) |= 0x20u;
          v15 = *(a1 + 152);
          if (!v15)
          {
            v16 = *(a1 + 8);
            v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
            if (v16)
            {
              v17 = *v17;
            }

            v15 = sub_12B0108(v17);
            *(a1 + 152) = v15;
            v7 = *v97;
          }

          v14 = sub_21F55D0(a3, v15, v7);
          goto LABEL_152;
        case 0x12u:
          if (v8 != 146)
          {
            goto LABEL_145;
          }

          *(a1 + 16) |= 0x40u;
          v62 = *(a1 + 160);
          if (!v62)
          {
            v63 = *(a1 + 8);
            v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
            if (v63)
            {
              v64 = *v64;
            }

            v62 = sub_12B1DE8(v64);
            *(a1 + 160) = v62;
            v7 = *v97;
          }

          v14 = sub_21F5660(a3, v62, v7);
          goto LABEL_152;
        default:
          goto LABEL_145;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return *v97;
}