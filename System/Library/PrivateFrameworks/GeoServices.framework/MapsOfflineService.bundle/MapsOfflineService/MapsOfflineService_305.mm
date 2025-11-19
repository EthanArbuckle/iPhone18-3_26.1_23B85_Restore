uint64_t sub_12B530C(uint64_t a1)
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
      v7 = sub_12B4D6C(v6);
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

std::string *sub_12B53B4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_12E6BD0(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
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

void *sub_12B5488(void *a1)
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

  sub_12B5518(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_12E60FC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_12B5518(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2 = (a1 + 48);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 56);
  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2769490)
  {
    if (*(a1 + 64))
    {
      sub_1689D9C();
      operator delete();
    }

    v5 = *(a1 + 72);
    if (v5)
    {
      sub_12C4090(v5);
      operator delete();
    }

    v6 = *(a1 + 80);
    if (v6)
    {
      sub_131A40C(v6);
      operator delete();
    }

    result = *(a1 + 88);
    if (result)
    {
      sub_12B6A00(result);

      operator delete();
    }
  }

  return result;
}

void sub_12B5610(void *a1)
{
  sub_12B5488(a1);

  operator delete();
}

uint64_t sub_12B5648(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12CBE38(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 0x3F) != 0)
  {
    if ((v5 & 1) == 0)
    {
      if ((v5 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_17:
      v7 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v5 & 4) != 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
        if ((v5 & 4) != 0)
        {
          goto LABEL_21;
        }
      }

LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_21:
    result = sub_1689DD8(*(v1 + 64));
    if ((v5 & 8) == 0)
    {
LABEL_10:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }

LABEL_22:
    result = sub_12B578C(*(v1 + 72));
    if ((v5 & 0x10) == 0)
    {
LABEL_11:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

LABEL_23:
    result = sub_131A448(*(v1 + 80));
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_26;
    }

LABEL_24:
    v8 = *(v1 + 88);
    v9 = *(v8 + 8);
    result = v8 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v9)
    {
      result = sub_1957EA8(result);
    }
  }

LABEL_26:
  v11 = *(v1 + 8);
  v10 = v1 + 8;
  *(v10 + 8) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_12B578C(uint64_t a1)
{
  sub_12A41D0(a1 + 24);
  *(a1 + 48) = 0;
  v2 = *(a1 + 72);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 80) + 8);
    do
    {
      v4 = *v3++;
      sub_12BC930(v4);
      --v2;
    }

    while (v2);
    *(a1 + 72) = 0;
  }

  v5 = *(a1 + 96);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 104) + 8);
    do
    {
      v7 = *v6++;
      sub_12C2270(v7);
      --v5;
    }

    while (v5);
    *(a1 + 96) = 0;
  }

  v8 = *(a1 + 120);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 128) + 8);
    do
    {
      v10 = *v9++;
      sub_12C37B4(v10);
      --v8;
    }

    while (v8);
    *(a1 + 120) = 0;
  }

  v11 = *(a1 + 144);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 152) + 8);
    do
    {
      v13 = *v12++;
      sub_12DFD34(v13);
      --v11;
    }

    while (v11);
    *(a1 + 144) = 0;
  }

  v14 = *(a1 + 168);
  if (v14 >= 1)
  {
    v15 = (*(a1 + 176) + 8);
    do
    {
      v16 = *v15++;
      sub_12C2AA0(v16);
      --v14;
    }

    while (v14);
    *(a1 + 168) = 0;
  }

  result = sub_12A41D0(a1 + 184);
  v18 = *(a1 + 16);
  if ((v18 & 0xF) == 0)
  {
    goto LABEL_27;
  }

  if ((v18 & 1) == 0)
  {
    if ((v18 & 2) == 0)
    {
      goto LABEL_24;
    }

LABEL_37:
    result = sub_12C3FA8(*(a1 + 216));
    if ((v18 & 4) == 0)
    {
LABEL_25:
      if ((v18 & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    goto LABEL_38;
  }

  v21 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v21 + 23) < 0)
  {
    **v21 = 0;
    *(v21 + 8) = 0;
    if ((v18 & 2) != 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    *v21 = 0;
    *(v21 + 23) = 0;
    if ((v18 & 2) != 0)
    {
      goto LABEL_37;
    }
  }

LABEL_24:
  if ((v18 & 4) == 0)
  {
    goto LABEL_25;
  }

LABEL_38:
  result = sub_12C31E4(*(a1 + 224));
  if ((v18 & 8) != 0)
  {
LABEL_26:
    result = sub_13197E4(*(a1 + 232));
  }

LABEL_27:
  if ((v18 & 0x70) != 0)
  {
    *(a1 + 248) = 0;
    *(a1 + 240) = 0;
  }

  v20 = *(a1 + 8);
  v19 = a1 + 8;
  *(v19 + 8) = 0;
  if (v20)
  {

    return sub_1957EA8(v19);
  }

  return result;
}

uint64_t sub_12B5940(uint64_t a1)
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

uint64_t sub_12B5958(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v40 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v40, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v40 + 1);
    v7 = **v40;
    if (**v40 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v40, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v40 + 2);
      }
    }

    *v40 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 0xB)
    {
      if (v10 == 4)
      {
        if (v7 == 34)
        {
          *(a1 + 16) |= 1u;
          v24 = *(a1 + 8);
          v18 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v18 = *v18;
          }

          v19 = (a1 + 48);
          goto LABEL_40;
        }
      }

      else if (v10 == 10)
      {
        if (v7 == 82)
        {
          *(a1 + 16) |= 4u;
          v33 = *(a1 + 64);
          if (!v33)
          {
            v34 = *(a1 + 8);
            v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
            if (v34)
            {
              v35 = *v35;
            }

            v33 = sub_168A324(v35);
            *(a1 + 64) = v33;
            v6 = *v40;
          }

          v23 = sub_21F5D20(a3, v33, v6);
          goto LABEL_66;
        }
      }

      else if (v10 == 11 && v7 == 90)
      {
        *(a1 + 16) |= 2u;
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v19 = (a1 + 56);
LABEL_40:
        v25 = sub_194DB04(v19, v18);
        v23 = sub_1958890(v25, *v40, a3);
        goto LABEL_66;
      }
    }

    else if (v7 >> 3 > 0xD)
    {
      if (v10 == 14)
      {
        if (v7 == 114)
        {
          *(a1 + 16) |= 0x10u;
          v30 = *(a1 + 80);
          if (!v30)
          {
            v31 = *(a1 + 8);
            v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
            if (v31)
            {
              v32 = *v32;
            }

            v30 = sub_13288A0(v32);
            *(a1 + 80) = v30;
            v6 = *v40;
          }

          v23 = sub_21F5ED0(a3, v30, v6);
          goto LABEL_66;
        }
      }

      else if (v10 == 100 && v7 == 34)
      {
        *(a1 + 16) |= 0x20u;
        v20 = *(a1 + 88);
        if (!v20)
        {
          v21 = *(a1 + 8);
          v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v22 = *v22;
          }

          v20 = sub_12D005C(v22);
          *(a1 + 88) = v20;
          v6 = *v40;
        }

        v23 = sub_21F5F60(a3, v20, v6);
        goto LABEL_66;
      }
    }

    else if (v10 == 12)
    {
      if (v7 == 98)
      {
        *(a1 + 16) |= 8u;
        v26 = *(a1 + 72);
        if (!v26)
        {
          v27 = *(a1 + 8);
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
          if (v27)
          {
            v28 = *v28;
          }

          sub_12D0EA4(v28);
          v26 = v29;
          *(a1 + 72) = v29;
          v6 = *v40;
        }

        v23 = sub_21F5DB0(a3, v26, v6);
        goto LABEL_66;
      }
    }

    else if (v10 == 13 && v7 == 106)
    {
      v11 = v6 - 1;
      while (1)
      {
        v12 = v11 + 1;
        *v40 = v11 + 1;
        v13 = *(a1 + 40);
        if (v13 && (v14 = *(a1 + 32), v14 < *v13))
        {
          *(a1 + 32) = v14 + 1;
          v15 = *&v13[2 * v14 + 2];
        }

        else
        {
          sub_12D14B4(*(a1 + 24));
          v15 = sub_19593CC(a1 + 24, v16);
          v12 = *v40;
        }

        v11 = sub_21F5E40(a3, v15, v12);
        *v40 = v11;
        if (!v11)
        {
          break;
        }

        if (*a3 <= v11 || *v11 != 106)
        {
          goto LABEL_67;
        }
      }

LABEL_72:
      *v40 = 0;
      return *v40;
    }

    if (v7)
    {
      v36 = (v7 & 7) == 4;
    }

    else
    {
      v36 = 1;
    }

    if (v36)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v40;
      }

      goto LABEL_72;
    }

    v37 = *(a1 + 8);
    if (v37)
    {
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v38 = sub_11F1920((a1 + 8));
      v6 = *v40;
    }

    v23 = sub_1952690(v7, v38, v6, a3);
LABEL_66:
    *v40 = v23;
    if (!v23)
    {
      goto LABEL_72;
    }

LABEL_67:
    ;
  }

  return *v40;
}

char *sub_12B5CE0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 4, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
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

  v7 = *(a1 + 64);
  *v4 = 82;
  v8 = *(v7 + 40);
  v4[1] = v8;
  if (v8 > 0x7F)
  {
    v9 = sub_19575D0(v8, v4 + 1);
  }

  else
  {
    v9 = v4 + 2;
  }

  v4 = sub_1689FE4(v7, v9, a3);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

LABEL_13:
  v4 = sub_128AEEC(a3, 11, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 72);
  *v4 = 98;
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

  v4 = sub_12C4BA8(v10, v12, a3);
LABEL_20:
  v13 = *(a1 + 32);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v15 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 106;
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

      v4 = sub_12CC158(v15, v17, a3);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v18 = *(a1 + 80);
    *v4 = 114;
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

    v4 = sub_131A958(v18, v20, a3);
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v21 = *(a1 + 88);
    *v4 = 1698;
    v22 = *(v21 + 20);
    v4[2] = v22;
    if (v22 > 0x7F)
    {
      v23 = sub_19575D0(v22, v4 + 2);
    }

    else
    {
      v23 = v4 + 3;
    }

    v4 = sub_12B6C20(v21, v23, a3);
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v27)
  {
    v29 = v27;
    memcpy(v4, v28, v27);
    v4 += v29;
    return v4;
  }

  return sub_1957130(a3, v28, v27, v4);
}

uint64_t sub_12B6004(uint64_t a1)
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
      v7 = sub_12CC344(v6);
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
  if ((v8 & 0x3F) == 0)
  {
    goto LABEL_17;
  }

  if (v8)
  {
    v12 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v15 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 23);
  v17 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v17 = v16;
  }

  v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_26:
    v19 = sub_12C5314(*(a1 + 72));
    v2 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x10) == 0)
    {
LABEL_15:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_25:
  v18 = sub_168A124(*(a1 + 64));
  v2 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_14:
  if ((v8 & 0x10) == 0)
  {
    goto LABEL_15;
  }

LABEL_27:
  v20 = sub_131ABD4(*(a1 + 80));
  v2 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x20) != 0)
  {
LABEL_16:
    v9 = sub_12B6D48(*(a1 + 88));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_17:
  v10 = *(a1 + 8);
  if (v10)
  {
    v21 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v2 += v22;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_12B6218(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_12E6C5C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0x3F) == 0)
  {
    goto LABEL_50;
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

      goto LABEL_18;
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

LABEL_26:
    *(a1 + 16) |= 8u;
    v20 = *(a1 + 72);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      sub_12D0EA4(v22);
      *(a1 + 72) = v20;
    }

    if (*(a2 + 72))
    {
      v23 = *(a2 + 72);
    }

    else
    {
      v23 = &off_2769978;
    }

    sub_12B6490(v20, v23);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_42;
    }

    goto LABEL_34;
  }

LABEL_18:
  *(a1 + 16) |= 4u;
  v16 = *(a1 + 64);
  if (!v16)
  {
    v17 = *(a1 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    v16 = sub_168A324(v18);
    *(a1 + 64) = v16;
  }

  if (*(a2 + 64))
  {
    v19 = *(a2 + 64);
  }

  else
  {
    v19 = &off_277C908;
  }

  sub_168A1CC(v16, v19);
  if ((v9 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_9:
  if ((v9 & 0x10) == 0)
  {
    goto LABEL_10;
  }

LABEL_34:
  *(a1 + 16) |= 0x10u;
  v24 = *(a1 + 80);
  if (!v24)
  {
    v25 = *(a1 + 8);
    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v26 = *v26;
    }

    v24 = sub_13288A0(v26);
    *(a1 + 80) = v24;
  }

  if (*(a2 + 80))
  {
    v27 = *(a2 + 80);
  }

  else
  {
    v27 = &off_276B100;
  }

  sub_131AD24(v24, v27);
  if ((v9 & 0x20) != 0)
  {
LABEL_42:
    *(a1 + 16) |= 0x20u;
    v28 = *(a1 + 88);
    if (!v28)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      v28 = sub_12D005C(v30);
      *(a1 + 88) = v28;
    }

    if (*(a2 + 88))
    {
      v31 = *(a2 + 88);
    }

    else
    {
      v31 = &off_27694F0;
    }

    sub_12A7358(v28, v31);
  }

LABEL_50:
  v32 = *(a2 + 8);
  if (v32)
  {

    sub_1957EF4((a1 + 8), (v32 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_12B6490(uint64_t a1, uint64_t a2)
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
    sub_12E70BC((a1 + 64), v14, (v13 + 8), v12, **(a1 + 80) - *(a1 + 72));
    v15 = *(a1 + 72) + v12;
    *(a1 + 72) = v15;
    v16 = *(a1 + 80);
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  v17 = *(a2 + 96);
  if (v17)
  {
    v18 = *(a2 + 104);
    v19 = sub_19592E8(a1 + 88, *(a2 + 96));
    sub_12E7148((a1 + 88), v19, (v18 + 8), v17, **(a1 + 104) - *(a1 + 96));
    v20 = *(a1 + 96) + v17;
    *(a1 + 96) = v20;
    v21 = *(a1 + 104);
    if (*v21 < v20)
    {
      *v21 = v20;
    }
  }

  v22 = *(a2 + 120);
  if (v22)
  {
    v23 = *(a2 + 128);
    v24 = sub_19592E8(a1 + 112, *(a2 + 120));
    sub_12E71D4((a1 + 112), v24, (v23 + 8), v22, **(a1 + 128) - *(a1 + 120));
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
    sub_12E7260((a1 + 136), v29, (v28 + 8), v27, **(a1 + 152) - *(a1 + 144));
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
    sub_12E72EC((a1 + 160), v34, (v33 + 8), v32, **(a1 + 176) - *(a1 + 168));
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
    sub_1201B48(a1 + 184, v39, (v38 + 8), v37, **(a1 + 200) - *(a1 + 192));
    v40 = *(a1 + 192) + v37;
    *(a1 + 192) = v40;
    v41 = *(a1 + 200);
    if (*v41 < v40)
    {
      *v41 = v40;
    }
  }

  v42 = *(a2 + 16);
  if ((v42 & 0x7F) != 0)
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

        goto LABEL_49;
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

      v47 = sub_12E1948(v49);
      *(a1 + 216) = v47;
    }

    if (*(a2 + 216))
    {
      v50 = *(a2 + 216);
    }

    else
    {
      v50 = &off_2769D58;
    }

    sub_12C573C(v47, v50);
    if ((v42 & 4) == 0)
    {
LABEL_28:
      if ((v42 & 8) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_57;
    }

LABEL_49:
    *(a1 + 16) |= 4u;
    v51 = *(a1 + 224);
    if (!v51)
    {
      v52 = *(a1 + 8);
      v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
      if (v52)
      {
        v53 = *v53;
      }

      v51 = sub_12D0DA4(v53);
      *(a1 + 224) = v51;
    }

    if (*(a2 + 224))
    {
      v54 = *(a2 + 224);
    }

    else
    {
      v54 = &off_2769920;
    }

    sub_12C35F4(v51, v54);
    if ((v42 & 8) == 0)
    {
LABEL_29:
      if ((v42 & 0x10) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_65;
    }

LABEL_57:
    *(a1 + 16) |= 8u;
    v55 = *(a1 + 232);
    if (!v55)
    {
      v56 = *(a1 + 8);
      v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
      if (v56)
      {
        v57 = *v57;
      }

      v55 = sub_131A21C(v57);
      *(a1 + 232) = v55;
    }

    if (*(a2 + 232))
    {
      v58 = *(a2 + 232);
    }

    else
    {
      v58 = &off_276B0A0;
    }

    sub_1319F3C(v55, v58);
    if ((v42 & 0x10) == 0)
    {
LABEL_30:
      if ((v42 & 0x20) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_66;
    }

LABEL_65:
    *(a1 + 240) = *(a2 + 240);
    if ((v42 & 0x20) == 0)
    {
LABEL_31:
      if ((v42 & 0x40) == 0)
      {
LABEL_33:
        *(a1 + 16) |= v42;
        goto LABEL_34;
      }

LABEL_32:
      *(a1 + 249) = *(a2 + 249);
      goto LABEL_33;
    }

LABEL_66:
    *(a1 + 248) = *(a2 + 248);
    if ((v42 & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_34:
  v43 = *(a2 + 8);
  if (v43)
  {

    sub_1957EF4((a1 + 8), (v43 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12B6928(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 8) != 0)
  {
    result = sub_12B6974(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) == 0)
  {
    return 1;
  }

  result = sub_131B21C(*(a1 + 80));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_12B6974(uint64_t a1)
{
  v2 = *(a1 + 72);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_12BE8D8(*(*(a1 + 80) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_12B329C(a1 + 112);
  if (result)
  {
    if ((*(a1 + 16) & 2) == 0)
    {
      return 1;
    }

    v6 = *(a1 + 216);
    if ((*(v6 + 16) & 1) == 0)
    {
      return 1;
    }

    result = sub_12D2200(*(v6 + 24));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_12B6A00(void *a1)
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

void sub_12B6A74(void *a1)
{
  sub_12B6A00(a1);

  operator delete();
}

char *sub_12B6AAC(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_12B6C20(uint64_t a1, char *__dst, _DWORD *a3)
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

unint64_t sub_12B6D48(uint64_t a1)
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

void *sub_12B6DC0(void *a1)
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

void sub_12B6E34(void *a1)
{
  sub_12B6DC0(a1);

  operator delete();
}

uint64_t sub_12B6E6C(uint64_t a1)
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

char *sub_12B6E94(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_12B7038(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_12B7194(uint64_t a1)
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

void *sub_12B7224(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_12E6180(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12B72A4(void *a1)
{
  sub_12B7224(a1);

  operator delete();
}

uint64_t sub_12B72DC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12B6E6C(v4);
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

char *sub_12B7358(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_12D00D4(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_21F5FF0(a3, v16, v13);
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

char *sub_12B74E8(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_12B7038(v8, v10, a3);
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

uint64_t sub_12B7628(uint64_t a1)
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
      v7 = sub_12B7194(v6);
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

std::string *sub_12B76D0(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_12E6CE8(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
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

void *sub_12B77A4(void *a1)
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

void sub_12B7818(void *a1)
{
  sub_12B77A4(a1);

  operator delete();
}

uint64_t sub_12B7850(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
  }

  if ((v1 & 0x1F00) != 0)
  {
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
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

char *sub_12B788C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v79 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v79, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = v79 + 1;
    v8 = *v79;
    if (*v79 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v79, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v79 + 2;
      }
    }

    v79 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_73;
        }

        v5 |= 1u;
        v11 = v7 + 1;
        v12 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v11;
        v12 = v12 + (v13 << 7) - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v11 = v7 + 2;
LABEL_12:
          v79 = v11;
          *(a1 + 24) = v12;
          goto LABEL_80;
        }

        v67 = sub_1958770(v7, v12);
        v79 = v67;
        *(a1 + 24) = v68;
        if (v67)
        {
          goto LABEL_80;
        }

        goto LABEL_111;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_73;
        }

        v5 |= 2u;
        v35 = v7 + 1;
        v36 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_52;
        }

        v37 = *v35;
        v36 = v36 + (v37 << 7) - 128;
        if (v37 < 0)
        {
          v69 = sub_1958770(v7, v36);
          v79 = v69;
          *(a1 + 28) = v70;
          if (!v69)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v35 = v7 + 2;
LABEL_52:
          v79 = v35;
          *(a1 + 28) = v36;
        }

        goto LABEL_80;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_73;
        }

        v5 |= 4u;
        v26 = v7 + 1;
        v27 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        v28 = *v26;
        v27 = v27 + (v28 << 7) - 128;
        if (v28 < 0)
        {
          v61 = sub_1958770(v7, v27);
          v79 = v61;
          *(a1 + 32) = v62;
          if (!v61)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v26 = v7 + 2;
LABEL_37:
          v79 = v26;
          *(a1 + 32) = v27;
        }

        goto LABEL_80;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_73;
        }

        v5 |= 8u;
        v29 = v7 + 1;
        v30 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        v31 = *v29;
        v30 = v30 + (v31 << 7) - 128;
        if (v31 < 0)
        {
          v63 = sub_1958770(v7, v30);
          v79 = v63;
          *(a1 + 36) = v64;
          if (!v63)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v29 = v7 + 2;
LABEL_42:
          v79 = v29;
          *(a1 + 36) = v30;
        }

        goto LABEL_80;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_73;
        }

        v5 |= 0x10u;
        v17 = v7 + 1;
        v18 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        v19 = *v17;
        v18 = v18 + (v19 << 7) - 128;
        if (v19 < 0)
        {
          v55 = sub_1958770(v7, v18);
          v79 = v55;
          *(a1 + 40) = v56;
          if (!v55)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v17 = v7 + 2;
LABEL_22:
          v79 = v17;
          *(a1 + 40) = v18;
        }

        goto LABEL_80;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_73;
        }

        v5 |= 0x20u;
        v38 = v7 + 1;
        v39 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_57;
        }

        v40 = *v38;
        v39 = v39 + (v40 << 7) - 128;
        if (v40 < 0)
        {
          v71 = sub_1958770(v7, v39);
          v79 = v71;
          *(a1 + 44) = v72;
          if (!v71)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v38 = v7 + 2;
LABEL_57:
          v79 = v38;
          *(a1 + 44) = v39;
        }

        goto LABEL_80;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_73;
        }

        v5 |= 0x40u;
        v41 = v7 + 1;
        v42 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_62;
        }

        v43 = *v41;
        v42 = v42 + (v43 << 7) - 128;
        if (v43 < 0)
        {
          v73 = sub_1958770(v7, v42);
          v79 = v73;
          *(a1 + 48) = v74;
          if (!v73)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v41 = v7 + 2;
LABEL_62:
          v79 = v41;
          *(a1 + 48) = v42;
        }

        goto LABEL_80;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_73;
        }

        v5 |= 0x80u;
        v32 = v7 + 1;
        v33 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

        v34 = *v32;
        v33 = v33 + (v34 << 7) - 128;
        if (v34 < 0)
        {
          v65 = sub_1958770(v7, v33);
          v79 = v65;
          *(a1 + 52) = v66;
          if (!v65)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v32 = v7 + 2;
LABEL_47:
          v79 = v32;
          *(a1 + 52) = v33;
        }

        goto LABEL_80;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_73;
        }

        v5 |= 0x100u;
        v47 = v7 + 1;
        v48 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_72;
        }

        v49 = *v47;
        v48 = v48 + (v49 << 7) - 128;
        if (v49 < 0)
        {
          v77 = sub_1958770(v7, v48);
          v79 = v77;
          *(a1 + 56) = v78;
          if (!v77)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v47 = v7 + 2;
LABEL_72:
          v79 = v47;
          *(a1 + 56) = v48;
        }

        goto LABEL_80;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_73;
        }

        v5 |= 0x200u;
        v23 = v7 + 1;
        v24 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        v25 = *v23;
        v24 = v24 + (v25 << 7) - 128;
        if (v25 < 0)
        {
          v59 = sub_1958770(v7, v24);
          v79 = v59;
          *(a1 + 60) = v60;
          if (!v59)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v23 = v7 + 2;
LABEL_32:
          v79 = v23;
          *(a1 + 60) = v24;
        }

        goto LABEL_80;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_73;
        }

        v5 |= 0x400u;
        v44 = v7 + 1;
        v45 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_67;
        }

        v46 = *v44;
        v45 = v45 + (v46 << 7) - 128;
        if (v46 < 0)
        {
          v75 = sub_1958770(v7, v45);
          v79 = v75;
          *(a1 + 64) = v76;
          if (!v75)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v44 = v7 + 2;
LABEL_67:
          v79 = v44;
          *(a1 + 64) = v45;
        }

        goto LABEL_80;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_73;
        }

        v5 |= 0x800u;
        v14 = v7 + 1;
        v15 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        v16 = *v14;
        v15 = v15 + (v16 << 7) - 128;
        if (v16 < 0)
        {
          v53 = sub_1958770(v7, v15);
          v79 = v53;
          *(a1 + 68) = v54;
          if (!v53)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v14 = v7 + 2;
LABEL_17:
          v79 = v14;
          *(a1 + 68) = v15;
        }

        goto LABEL_80;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_73;
        }

        v5 |= 0x1000u;
        v20 = v7 + 1;
        v21 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

        v22 = *v20;
        v21 = v21 + (v22 << 7) - 128;
        if (v22 < 0)
        {
          v57 = sub_1958770(v7, v21);
          v79 = v57;
          *(a1 + 72) = v58;
          if (!v57)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v20 = v7 + 2;
LABEL_27:
          v79 = v20;
          *(a1 + 72) = v21;
        }

        goto LABEL_80;
      default:
LABEL_73:
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
            v7 = v79;
          }

          v79 = sub_1952690(v8, v52, v7, a3);
          if (!v79)
          {
            goto LABEL_111;
          }

LABEL_80:
          if (sub_195ADC0(a3, &v79, a3[11].i32[1]))
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
LABEL_111:
          v79 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return v79;
    }
  }
}

char *sub_12B7EB8(uint64_t a1, char *__dst, _DWORD *a3)
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

    v16 = *(a1 + 32);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 36);
    *v15 = 32;
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v15[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[2] = v20 >> 7;
      v19 = v15 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v15[2];
        do
        {
          *(v19 - 1) = v22 | 0x80;
          v22 = v21 >> 7;
          *v19++ = v21 >> 7;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 40);
    *v19 = 40;
    v19[1] = v25;
    if (v25 > 0x7F)
    {
      v19[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v19[2] = v25 >> 7;
      v24 = v19 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v24 - 1) = v19 | 0x80;
          LODWORD(v19) = v26 >> 7;
          *v24++ = v26 >> 7;
          v27 = v26 >> 14;
          v26 >>= 7;
        }

        while (v27);
      }
    }

    else
    {
      v24 = v19 + 2;
    }
  }

  else
  {
    v24 = v19;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 44);
    *v24 = 48;
    v24[1] = v29;
    if (v29 > 0x7F)
    {
      v24[1] = v29 | 0x80;
      v30 = v29 >> 7;
      v24[2] = v29 >> 7;
      v28 = v24 + 3;
      if (v29 >= 0x4000)
      {
        LOBYTE(v31) = v24[2];
        do
        {
          *(v28 - 1) = v31 | 0x80;
          v31 = v30 >> 7;
          *v28++ = v30 >> 7;
          v32 = v30 >> 14;
          v30 >>= 7;
        }

        while (v32);
      }
    }

    else
    {
      v28 = v24 + 2;
    }
  }

  else
  {
    v28 = v24;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v34 = *(a1 + 48);
    *v28 = 56;
    v28[1] = v34;
    if (v34 > 0x7F)
    {
      v28[1] = v34 | 0x80;
      v35 = v34 >> 7;
      v28[2] = v34 >> 7;
      v33 = v28 + 3;
      if (v34 >= 0x4000)
      {
        LOBYTE(v28) = v28[2];
        do
        {
          *(v33 - 1) = v28 | 0x80;
          LODWORD(v28) = v35 >> 7;
          *v33++ = v35 >> 7;
          v36 = v35 >> 14;
          v35 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v33 = v28 + 2;
    }
  }

  else
  {
    v33 = v28;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v38 = *(a1 + 52);
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
        LOBYTE(v40) = v33[2];
        do
        {
          *(v37 - 1) = v40 | 0x80;
          v40 = v39 >> 7;
          *v37++ = v39 >> 7;
          v41 = v39 >> 14;
          v39 >>= 7;
        }

        while (v41);
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

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v37)
    {
      v37 = sub_225EB68(a3, v37);
    }

    v43 = *(a1 + 56);
    *v37 = 72;
    v37[1] = v43;
    if (v43 > 0x7F)
    {
      v37[1] = v43 | 0x80;
      v44 = v43 >> 7;
      v37[2] = v43 >> 7;
      v42 = v37 + 3;
      if (v43 >= 0x4000)
      {
        LOBYTE(v37) = v37[2];
        do
        {
          *(v42 - 1) = v37 | 0x80;
          LODWORD(v37) = v44 >> 7;
          *v42++ = v44 >> 7;
          v45 = v44 >> 14;
          v44 >>= 7;
        }

        while (v45);
      }
    }

    else
    {
      v42 = v37 + 2;
    }
  }

  else
  {
    v42 = v37;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v42)
    {
      v42 = sub_225EB68(a3, v42);
    }

    v47 = *(a1 + 60);
    *v42 = 80;
    v42[1] = v47;
    if (v47 > 0x7F)
    {
      v42[1] = v47 | 0x80;
      v48 = v47 >> 7;
      v42[2] = v47 >> 7;
      v46 = v42 + 3;
      if (v47 >= 0x4000)
      {
        LOBYTE(v49) = v42[2];
        do
        {
          *(v46 - 1) = v49 | 0x80;
          v49 = v48 >> 7;
          *v46++ = v48 >> 7;
          v50 = v48 >> 14;
          v48 >>= 7;
        }

        while (v50);
      }
    }

    else
    {
      v46 = v42 + 2;
    }
  }

  else
  {
    v46 = v42;
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v52 = *(a1 + 64);
    *v46 = 88;
    v46[1] = v52;
    if (v52 > 0x7F)
    {
      v46[1] = v52 | 0x80;
      v53 = v52 >> 7;
      v46[2] = v52 >> 7;
      v51 = v46 + 3;
      if (v52 >= 0x4000)
      {
        LOBYTE(v46) = v46[2];
        do
        {
          *(v51 - 1) = v46 | 0x80;
          LODWORD(v46) = v53 >> 7;
          *v51++ = v53 >> 7;
          v54 = v53 >> 14;
          v53 >>= 7;
        }

        while (v54);
      }
    }

    else
    {
      v51 = v46 + 2;
    }
  }

  else
  {
    v51 = v46;
  }

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v51)
    {
      v51 = sub_225EB68(a3, v51);
    }

    v56 = *(a1 + 68);
    *v51 = 96;
    v51[1] = v56;
    if (v56 > 0x7F)
    {
      v51[1] = v56 | 0x80;
      v57 = v56 >> 7;
      v51[2] = v56 >> 7;
      v55 = v51 + 3;
      if (v56 >= 0x4000)
      {
        LOBYTE(v58) = v51[2];
        do
        {
          *(v55 - 1) = v58 | 0x80;
          v58 = v57 >> 7;
          *v55++ = v57 >> 7;
          v59 = v57 >> 14;
          v57 >>= 7;
        }

        while (v59);
      }
    }

    else
    {
      v55 = v51 + 2;
    }
  }

  else
  {
    v55 = v51;
  }

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= v55)
    {
      v55 = sub_225EB68(a3, v55);
    }

    v61 = *(a1 + 72);
    *v55 = 104;
    v55[1] = v61;
    if (v61 > 0x7F)
    {
      v55[1] = v61 | 0x80;
      v62 = v61 >> 7;
      v55[2] = v61 >> 7;
      v60 = v55 + 3;
      if (v61 >= 0x4000)
      {
        LOBYTE(v55) = v55[2];
        do
        {
          *(v60 - 1) = v55 | 0x80;
          LODWORD(v55) = v62 >> 7;
          *v60++ = v62 >> 7;
          v63 = v62 >> 14;
          v62 >>= 7;
        }

        while (v63);
      }
    }

    else
    {
      v60 = v55 + 2;
    }
  }

  else
  {
    v60 = v55;
  }

  v64 = *(a1 + 8);
  if ((v64 & 1) == 0)
  {
    return v60;
  }

  v66 = v64 & 0xFFFFFFFFFFFFFFFCLL;
  v67 = *(v66 + 31);
  if (v67 < 0)
  {
    v68 = *(v66 + 8);
    v67 = *(v66 + 16);
  }

  else
  {
    v68 = (v66 + 8);
  }

  if (*a3 - v60 >= v67)
  {
    v69 = v67;
    memcpy(v60, v68, v67);
    v60 += v69;
    return v60;
  }

  return sub_1957130(a3, v68, v67, v60);
}

uint64_t sub_12B862C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v2 = 0;
    goto LABEL_15;
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
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_10:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_26;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_10;
  }

  v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) == 0)
  {
LABEL_11:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x20) == 0)
  {
LABEL_12:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v2 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x40) == 0)
  {
LABEL_13:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_28:
  v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x80) != 0)
  {
LABEL_14:
    v2 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v1 & 0x1F00) == 0)
  {
    goto LABEL_22;
  }

  if ((v1 & 0x100) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 0x200) == 0)
    {
LABEL_18:
      if ((v1 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_32;
    }
  }

  else if ((v1 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v2 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x400) == 0)
  {
LABEL_19:
    if ((v1 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

LABEL_32:
  v2 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x800) == 0)
  {
LABEL_20:
    if ((v1 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_33:
  v2 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x1000) != 0)
  {
LABEL_21:
    v2 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_22:
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

std::string *sub_12B88B4(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    if (v2)
    {
      LODWORD(result[1].__r_.__value_.__l.__data_) = *(a2 + 24);
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_24;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }

LABEL_24:
    LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }

LABEL_25:
    HIDWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_26:
    LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }

LABEL_27:
    HIDWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
LABEL_11:
        LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
        goto LABEL_12;
      }

LABEL_10:
      HIDWORD(result[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
      goto LABEL_11;
    }

LABEL_28:
    LODWORD(result[2].__r_.__value_.__l.__data_) = *(a2 + 48);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v2 & 0x1F00) == 0)
  {
    goto LABEL_20;
  }

  if ((v2 & 0x100) != 0)
  {
    LODWORD(result[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    if ((v2 & 0x200) == 0)
    {
LABEL_15:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  HIDWORD(result[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
  if ((v2 & 0x400) == 0)
  {
LABEL_16:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_17;
    }

LABEL_33:
    HIDWORD(result[2].__r_.__value_.__r.__words[2]) = *(a2 + 68);
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_32:
  LODWORD(result[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
  if ((v2 & 0x800) != 0)
  {
    goto LABEL_33;
  }

LABEL_17:
  if ((v2 & 0x1000) != 0)
  {
LABEL_18:
    LODWORD(result[3].__r_.__value_.__l.__data_) = *(a2 + 72);
  }

LABEL_19:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_20:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_12B89E4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_12E6204(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12B8A64(void *a1)
{
  sub_12B89E4(a1);

  operator delete();
}

unsigned __int8 *sub_12B8A9C(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E4E44(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  if ((v1[16] & 3) != 0)
  {
    *(v1 + 6) = 0;
  }

  v6 = v1[8];
  v5 = v1 + 8;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_12B8B2C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v32 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v32, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v32 + 1;
    v8 = *v32;
    if (*v32 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v32, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v32 + 2;
      }
    }

    v32 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v19 = v7 + 1;
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_30:
      v32 = v19;
      *(a1 + 52) = v20;
      goto LABEL_39;
    }

    v30 = sub_1958770(v7, v20);
    v32 = v30;
    *(a1 + 52) = v31;
    if (!v30)
    {
      goto LABEL_48;
    }

LABEL_39:
    if (sub_195ADC0(a3, &v32, a3[11].i32[1]))
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

    v5 |= 1u;
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
      v32 = v16;
      *(a1 + 48) = v17;
      goto LABEL_39;
    }

    v28 = sub_1958770(v7, v17);
    v32 = v28;
    *(a1 + 48) = v29;
    if (!v28)
    {
      goto LABEL_48;
    }

    goto LABEL_39;
  }

  if (v11 == 1 && v8 == 10)
  {
    v22 = v7 - 1;
    while (1)
    {
      v23 = (v22 + 1);
      v32 = v22 + 1;
      v24 = *(a1 + 40);
      if (v24 && (v25 = *(a1 + 32), v25 < *v24))
      {
        *(a1 + 32) = v25 + 1;
        v26 = *&v24[2 * v25 + 2];
      }

      else
      {
        v27 = sub_16F5828(*(a1 + 24));
        v26 = sub_19593CC(a1 + 24, v27);
        v23 = v32;
      }

      v22 = sub_21F4D60(a3, v26, v23);
      v32 = v22;
      if (!v22)
      {
        goto LABEL_48;
      }

      if (*a3 <= v22 || *v22 != 10)
      {
        goto LABEL_39;
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
      v7 = v32;
    }

    v32 = sub_1952690(v8, v15, v7, a3);
    if (!v32)
    {
      goto LABEL_48;
    }

    goto LABEL_39;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_48:
  v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v32;
}

char *sub_12B8DA4(uint64_t a1, char *__dst, _DWORD *a3)
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

  v11 = *(a1 + 16);
  if (v11)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v13 = *(a1 + 48);
    *__dst = 16;
    __dst[1] = v13;
    if (v13 > 0x7F)
    {
      __dst[1] = v13 | 0x80;
      v14 = v13 >> 7;
      __dst[2] = v13 >> 7;
      v12 = __dst + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(__dst) = __dst[2];
        do
        {
          *(v12 - 1) = __dst | 0x80;
          LODWORD(__dst) = v14 >> 7;
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v12 = __dst + 2;
    }
  }

  else
  {
    v12 = __dst;
  }

  if ((v11 & 2) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v17 = *(a1 + 52);
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
          LODWORD(v12) = v18 >> 7;
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

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v16;
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

  if (*a3 - v16 >= v23)
  {
    v25 = v23;
    memcpy(v16, v24, v23);
    v16 += v25;
    return v16;
  }

  return sub_1957130(a3, v24, v23, v16);
}

uint64_t sub_12B8FEC(uint64_t a1)
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

  v8 = *(a1 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

void sub_12B90F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_11F1A54((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
      *(a1 + 48) = *(a2 + 48);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 52) = *(a2 + 52);
    }

    *(a1 + 16) |= v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_12B91DC(uint64_t a1)
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
    v5 = sub_16E5370(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

void *sub_12B9244(void *a1)
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

void sub_12B92B8(void *a1)
{
  sub_12B9244(a1);

  operator delete();
}

uint64_t sub_12B92F0(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
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

char *sub_12B9314(uint64_t a1, char *a2, int32x2_t *a3)
{
  v36 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v36, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v36 + 1;
    v8 = *v36;
    if (*v36 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v36, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v36 + 2;
      }
    }

    v36 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_35;
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
        v36 = v22;
        *(a1 + 32) = v23;
        goto LABEL_42;
      }

      v34 = sub_1958770(v7, v23);
      v36 = v34;
      *(a1 + 32) = v35;
      if (!v34)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_35;
      }

      v5 |= 8u;
      v16 = v7 + 1;
      v17 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v18 = *v16;
      v17 = v17 + (v18 << 7) - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v16 = v7 + 2;
LABEL_24:
        v36 = v16;
        *(a1 + 36) = v17;
        goto LABEL_42;
      }

      v28 = sub_1958770(v7, v17);
      v36 = v28;
      *(a1 + 36) = v29;
      if (!v28)
      {
        goto LABEL_55;
      }
    }

LABEL_42:
    if (sub_195ADC0(a3, &v36, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_35;
    }

    v5 |= 1u;
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
      v36 = v19;
      *(a1 + 24) = v20;
      goto LABEL_42;
    }

    v32 = sub_1958770(v7, v20);
    v36 = v32;
    *(a1 + 24) = v33;
    if (!v32)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
  }

  if (v11 == 2 && v8 == 16)
  {
    v5 |= 2u;
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
      v36 = v13;
      *(a1 + 28) = v14;
      goto LABEL_42;
    }

    v30 = sub_1958770(v7, v14);
    v36 = v30;
    *(a1 + 28) = v31;
    if (!v30)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
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
      v7 = v36;
    }

    v36 = sub_1952690(v8, v27, v7, a3);
    if (!v36)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_55:
  v36 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v36;
}

char *sub_12B95C8(uint64_t a1, char *__dst, _DWORD *a3)
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

    v16 = *(a1 + 32);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 36);
    *v15 = 32;
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v15[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[2] = v20 >> 7;
      v19 = v15 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v15[2];
        do
        {
          *(v19 - 1) = v22 | 0x80;
          v22 = v21 >> 7;
          *v19++ = v21 >> 7;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
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

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v19;
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

  if (*a3 - v19 >= v27)
  {
    v29 = v27;
    memcpy(v19, v28, v27);
    v19 += v29;
    return v19;
  }

  return sub_1957130(a3, v28, v27, v19);
}

uint64_t sub_12B9884(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_11;
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
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 8) != 0)
  {
LABEL_10:
    v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
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

void *sub_12B9990(void *a1)
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

void sub_12B9A04(void *a1)
{
  sub_12B9990(a1);

  operator delete();
}

uint64_t sub_12B9A3C(uint64_t a1)
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

char *sub_12B9A54(uint64_t a1, char *a2, int32x2_t *a3)
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

    v13 = v6 + 1;
    v14 = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v13;
    v14 = v14 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v13 = v6 + 2;
LABEL_18:
      v19 = v13;
      *(a1 + 24) = v14;
      v5 = 1;
      goto LABEL_19;
    }

    v16 = sub_1958770(v6, v14);
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

char *sub_12B9BC8(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_12B9CF0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

std::string *sub_12B9D50(std::string *result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *(a2 + 24);
    LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
    LODWORD(result[1].__r_.__value_.__l.__data_) = v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_12B9DA0(void *a1)
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

void sub_12B9E14(void *a1)
{
  sub_12B9DA0(a1);

  operator delete();
}

uint64_t sub_12B9E4C(uint64_t a1)
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

char *sub_12B9E64(uint64_t a1, char *a2, int32x2_t *a3)
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

    v13 = v6 + 1;
    v14 = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v13;
    v14 = v14 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v13 = v6 + 2;
LABEL_18:
      v19 = v13;
      *(a1 + 24) = v14;
      v5 = 1;
      goto LABEL_19;
    }

    v16 = sub_1958770(v6, v14);
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

char *sub_12B9FD8(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_12BA100(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

void *sub_12BA178(void *a1)
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

void sub_12BA1EC(void *a1)
{
  sub_12BA178(a1);

  operator delete();
}

uint64_t sub_12BA224(uint64_t a1)
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

char *sub_12BA23C(uint64_t a1, char *a2, int32x2_t *a3)
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

    v13 = v6 + 1;
    v14 = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v13;
    v14 = v14 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v13 = v6 + 2;
LABEL_18:
      v19 = v13;
      *(a1 + 24) = v14;
      v5 = 1;
      goto LABEL_19;
    }

    v16 = sub_1958770(v6, v14);
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

char *sub_12BA3B0(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_12BA4D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

void *sub_12BA550(void *a1)
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

void sub_12BA5C4(void *a1)
{
  sub_12BA550(a1);

  operator delete();
}

uint64_t sub_12BA5FC(uint64_t a1)
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

char *sub_12BA614(uint64_t a1, char *a2, int32x2_t *a3)
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

    v13 = v6 + 1;
    v14 = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v13;
    v14 = v14 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v13 = v6 + 2;
LABEL_18:
      v19 = v13;
      *(a1 + 24) = v14;
      v5 = 1;
      goto LABEL_19;
    }

    v16 = sub_1958770(v6, v14);
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

char *sub_12BA788(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_12BA8B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

void *sub_12BA928(void *a1)
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

void sub_12BA99C(void *a1)
{
  sub_12BA928(a1);

  operator delete();
}

uint64_t sub_12BA9D4(uint64_t a1)
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

char *sub_12BA9EC(uint64_t a1, char *a2, int32x2_t *a3)
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

    v13 = v6 + 1;
    v14 = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v13;
    v14 = v14 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v13 = v6 + 2;
LABEL_18:
      v19 = v13;
      *(a1 + 24) = v14;
      v5 = 1;
      goto LABEL_19;
    }

    v16 = sub_1958770(v6, v14);
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

char *sub_12BAB60(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_12BAC88(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

void *sub_12BAD00(void *a1)
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

void sub_12BAD74(void *a1)
{
  sub_12BAD00(a1);

  operator delete();
}

uint64_t sub_12BADAC(uint64_t a1)
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

char *sub_12BADC4(uint64_t a1, char *a2, int32x2_t *a3)
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

    v13 = v6 + 1;
    v14 = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v13;
    v14 = v14 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v13 = v6 + 2;
LABEL_18:
      v19 = v13;
      *(a1 + 24) = v14;
      v5 = 1;
      goto LABEL_19;
    }

    v16 = sub_1958770(v6, v14);
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

char *sub_12BAF38(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_12BB060(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t sub_12BB0D8(uint64_t a1)
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

  sub_12BB15C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_12BB15C(uint64_t (***result)()))()
{
  if (result != &off_2769678)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      sub_12B9990(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_12B9DA0(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_12BA178(v4);
      operator delete();
    }

    v5 = v1[6];
    if (v5)
    {
      sub_12BA550(v5);
      operator delete();
    }

    v6 = v1[7];
    if (v6)
    {
      sub_12BA928(v6);
      operator delete();
    }

    result = v1[8];
    if (result)
    {
      sub_12BAD00(result);

      operator delete();
    }
  }

  return result;
}

void sub_12BB230(uint64_t a1)
{
  sub_12BB0D8(a1);

  operator delete();
}

uint64_t sub_12BB268(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x3F) != 0)
  {
    if (v2)
    {
      v3 = *(result + 24);
      v4 = *(v3 + 8);
      result = v3 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 2) != 0)
    {
      v5 = *(v1 + 32);
      v6 = *(v5 + 8);
      result = v5 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v6)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 4) != 0)
    {
      v7 = *(v1 + 40);
      v8 = *(v7 + 8);
      result = v7 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v8)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 8) != 0)
    {
      v9 = *(v1 + 48);
      v10 = *(v9 + 8);
      result = v9 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v10)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v11 = *(v1 + 56);
      v12 = *(v11 + 8);
      result = v11 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v12)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v13 = *(v1 + 64);
      v14 = *(v13 + 8);
      result = v13 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v14)
      {
        result = sub_1957EA8(result);
      }
    }
  }

  v16 = *(v1 + 8);
  v15 = v1 + 8;
  *(v15 + 8) = 0;
  if (v16)
  {

    return sub_1957EA8(v15);
  }

  return result;
}

char *sub_12BB368(uint64_t a1, char *a2, int32x2_t *a3)
{
  v35 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v35, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v35 + 1;
    v7 = *v35;
    if (*v35 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v35, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v35 + 2;
      }
    }

    v35 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 3)
    {
      if (v10 == 4)
      {
        if (v7 == 34)
        {
          *(a1 + 16) |= 8u;
          v22 = *(a1 + 48);
          if (!v22)
          {
            v23 = *(a1 + 8);
            v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
            if (v23)
            {
              v24 = *v24;
            }

            v22 = sub_12D0500(v24);
            *(a1 + 48) = v22;
            v6 = v35;
          }

          v15 = sub_21F6230(a3, v22, v6);
          goto LABEL_60;
        }
      }

      else if (v10 == 5)
      {
        if (v7 == 42)
        {
          *(a1 + 16) |= 0x10u;
          v28 = *(a1 + 56);
          if (!v28)
          {
            v29 = *(a1 + 8);
            v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
            if (v29)
            {
              v30 = *v30;
            }

            v28 = sub_12D057C(v30);
            *(a1 + 56) = v28;
            v6 = v35;
          }

          v15 = sub_21F62C0(a3, v28, v6);
          goto LABEL_60;
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

          v16 = sub_12D05F8(v18);
          *(a1 + 64) = v16;
          v6 = v35;
        }

        v15 = sub_21F6350(a3, v16, v6);
        goto LABEL_60;
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

          v19 = sub_12D038C(v21);
          *(a1 + 24) = v19;
          v6 = v35;
        }

        v15 = sub_21F6080(a3, v19, v6);
        goto LABEL_60;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v25 = *(a1 + 32);
        if (!v25)
        {
          v26 = *(a1 + 8);
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v27 = *v27;
          }

          v25 = sub_12D0408(v27);
          *(a1 + 32) = v25;
          v6 = v35;
        }

        v15 = sub_21F6110(a3, v25, v6);
        goto LABEL_60;
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

        v12 = sub_12D0484(v14);
        *(a1 + 40) = v12;
        v6 = v35;
      }

      v15 = sub_21F61A0(a3, v12, v6);
      goto LABEL_60;
    }

    if (v7)
    {
      v31 = (v7 & 7) == 4;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v35;
      }

      return 0;
    }

    v32 = *(a1 + 8);
    if (v32)
    {
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v33 = sub_11F1920((a1 + 8));
      v6 = v35;
    }

    v15 = sub_1952690(v7, v33, v6, a3);
LABEL_60:
    v35 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return v35;
}

char *sub_12BB678(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_12B9BC8(v7, v9, a3);
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

  v4 = sub_12B9FD8(v10, v12, a3);
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

  v4 = sub_12BA3B0(v13, v15, a3);
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

  v4 = sub_12BA788(v16, v18, a3);
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

  v4 = sub_12BAB60(v19, v21, a3);
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

    v4 = sub_12BAF38(v22, v24, a3);
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

  if (*a3 - v4 >= v28)
  {
    v30 = v28;
    memcpy(v4, v29, v28);
    v4 += v30;
    return v4;
  }

  return sub_1957130(a3, v29, v28, v4);
}

uint64_t sub_12BB99C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v4 = sub_12B9CF0(*(a1 + 24));
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
    v5 = sub_12BA100(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v9 = sub_12BA4D8(*(a1 + 40));
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

  v10 = sub_12BA8B0(*(a1 + 48));
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
  v11 = sub_12BAC88(*(a1 + 56));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_12:
    v6 = sub_12BB060(*(a1 + 64));
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

std::string *sub_12BBB3C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) == 0)
  {
    goto LABEL_57;
  }

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

      data = sub_12D038C(v7);
      v3[1].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 24))
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = &off_27695B8;
    }

    result = sub_12B9D50(data, v8);
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

    v9 = sub_12D0408(v11);
    v3[1].__r_.__value_.__l.__size_ = v9;
  }

  if (*(a2 + 32))
  {
    v12 = *(a2 + 32);
  }

  else
  {
    v12 = &off_27695D8;
  }

  result = sub_12B9D50(v9, v12);
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
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
  v13 = v3[1].__r_.__value_.__r.__words[2];
  if (!v13)
  {
    v14 = v3->__r_.__value_.__l.__size_;
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    v13 = sub_12D0484(v15);
    v3[1].__r_.__value_.__r.__words[2] = v13;
  }

  if (*(a2 + 40))
  {
    v16 = *(a2 + 40);
  }

  else
  {
    v16 = &off_27695F8;
  }

  result = sub_12B9D50(v13, v16);
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
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
  v17 = v3[2].__r_.__value_.__l.__data_;
  if (!v17)
  {
    v18 = v3->__r_.__value_.__l.__size_;
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    v17 = sub_12D0500(v19);
    v3[2].__r_.__value_.__r.__words[0] = v17;
  }

  if (*(a2 + 48))
  {
    v20 = *(a2 + 48);
  }

  else
  {
    v20 = &off_2769618;
  }

  result = sub_12B9D50(v17, v20);
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
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
  v21 = v3[2].__r_.__value_.__l.__size_;
  if (!v21)
  {
    v22 = v3->__r_.__value_.__l.__size_;
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v21 = sub_12D057C(v23);
    v3[2].__r_.__value_.__l.__size_ = v21;
  }

  if (*(a2 + 56))
  {
    v24 = *(a2 + 56);
  }

  else
  {
    v24 = &off_2769638;
  }

  result = sub_12B9D50(v21, v24);
  if ((v4 & 0x20) != 0)
  {
LABEL_49:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x20u;
    v25 = v3[2].__r_.__value_.__r.__words[2];
    if (!v25)
    {
      v26 = v3->__r_.__value_.__l.__size_;
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_12D05F8(v27);
      v3[2].__r_.__value_.__r.__words[2] = v25;
    }

    if (*(a2 + 64))
    {
      v28 = *(a2 + 64);
    }

    else
    {
      v28 = &off_2769658;
    }

    result = sub_12B9D50(v25, v28);
  }

LABEL_57:
  v29 = *(a2 + 8);
  if (v29)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_12BBDA0(uint64_t a1)
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

  if (a1 != &off_27696C0)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      sub_12BB0D8(v5);
      operator delete();
    }

    if (*(a1 + 48))
    {
      sub_1789564();
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12BBE78(uint64_t a1)
{
  sub_12BBDA0(a1);

  operator delete();
}

uint64_t sub_12BBEB0(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_12BB268(*(result + 40));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_1789398(*(v1 + 48));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 48) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_12BBF28(uint64_t a1, char *a2, int32x2_t *a3)
{
  v31 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = v31 + 1;
    v9 = *v31;
    if (*v31 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(v31, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = v31 + 2;
      }
    }

    v31 = v8;
    v13 = v9 >> 3;
    if (v9 >> 3 > 2)
    {
      if (v13 == 3)
      {
        if (v9 != 26)
        {
          goto LABEL_49;
        }

        *(a1 + 16) |= 2u;
        v27 = *(a1 + 48);
        if (!v27)
        {
          v28 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v28 = *v28;
          }

          v27 = sub_1789A8C(v28);
          *(a1 + 48) = v27;
          v8 = v31;
        }

        v18 = sub_21F6470(a3, v27, v8);
      }

      else
      {
        if (v13 != 4)
        {
          goto LABEL_49;
        }

        if (v9 == 32)
        {
          v19 = v8 - 1;
          while (1)
          {
            v31 = v19 + 1;
            v20 = v19[1];
            v21 = v19 + 2;
            if (v20 < 0)
            {
              v22 = *v21;
              v23 = (v22 << 7) + v20;
              LODWORD(v20) = v23 - 128;
              if (v22 < 0)
              {
                v31 = sub_19587DC((v19 + 1), (v23 - 128));
                if (!v31)
                {
                  goto LABEL_62;
                }

                LODWORD(v20) = v26;
                goto LABEL_28;
              }

              v21 = v19 + 3;
            }

            v31 = v21;
LABEL_28:
            if (sub_15F4674(v20))
            {
              v24 = *(a1 + 24);
              if (v24 == *(a1 + 28))
              {
                v25 = v24 + 1;
                sub_1958E5C((a1 + 24), v24 + 1);
                *(*(a1 + 32) + 4 * v24) = v20;
              }

              else
              {
                *(*(a1 + 32) + 4 * v24) = v20;
                v25 = v24 + 1;
              }

              *(a1 + 24) = v25;
            }

            else
            {
              sub_12E8500();
            }

            v19 = v31;
            if (*a3 <= v31 || *v31 != 32)
            {
              goto LABEL_57;
            }
          }
        }

        if (v9 != 34)
        {
          goto LABEL_49;
        }

        *&v32 = a1 + 24;
        *(&v32 + 1) = sub_15F4674;
        v33 = a1 + 8;
        v34 = 4;
        v18 = sub_1216588(a3, v8, &v32);
      }

LABEL_56:
      v31 = v18;
      if (!v18)
      {
        goto LABEL_62;
      }

      goto LABEL_57;
    }

    if (v13 != 1)
    {
      break;
    }

    if (v9 != 9)
    {
      goto LABEL_49;
    }

    v5 |= 4u;
    *(a1 + 56) = *v8;
    v31 = v8 + 8;
LABEL_57:
    if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v13 == 2 && v9 == 18)
  {
    *(a1 + 16) |= 1u;
    v15 = *(a1 + 40);
    if (!v15)
    {
      v16 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (*v7)
      {
        v16 = *v16;
      }

      sub_12D0674(v16);
      v15 = v17;
      *(a1 + 40) = v17;
      v8 = v31;
    }

    v18 = sub_21F63E0(a3, v15, v8);
    goto LABEL_56;
  }

LABEL_49:
  if (v9)
  {
    v29 = (v9 & 7) == 4;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    if (*v7)
    {
      v30 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v30 = sub_11F1920((a1 + 8));
      v8 = v31;
    }

    v18 = sub_1952690(v9, v30, v8, a3);
    goto LABEL_56;
  }

  if (v8)
  {
    a3[10].i32[0] = v9 - 1;
  }

  else
  {
LABEL_62:
    v31 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

char *sub_12BC260(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 56);
    *v4 = 9;
    *(v4 + 1) = v7;
    v4 += 9;
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

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

  v4 = sub_12BB678(v8, v10, a3);
  if ((v6 & 2) != 0)
  {
LABEL_14:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 48);
    *v4 = 26;
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

    v4 = sub_17897D8(v11, v13, a3);
  }

LABEL_20:
  v14 = *(a1 + 24);
  if (v14 < 1)
  {
    v17 = v4;
  }

  else
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v16 = *(*(a1 + 32) + 4 * i);
      *v4 = 32;
      v4[1] = v16;
      if (v16 > 0x7F)
      {
        v4[1] = v16 | 0x80;
        v18 = v16 >> 7;
        v4[2] = v16 >> 7;
        v17 = v4 + 3;
        if (v16 >= 0x4000)
        {
          LOBYTE(v4) = v4[2];
          do
          {
            *(v17 - 1) = v4 | 0x80;
            v4 = (v18 >> 7);
            *v17++ = v18 >> 7;
            v19 = v18 >> 14;
            v18 >>= 7;
          }

          while (v19);
        }
      }

      else
      {
        v17 = v4 + 2;
      }

      v4 = v17;
    }
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v17;
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

  if (*a3 - v17 >= v23)
  {
    v25 = v23;
    memcpy(v17, v24, v23);
    v17 += v25;
    return v17;
  }

  return sub_1957130(a3, v24, v23, v17);
}

uint64_t sub_12BC4C8(uint64_t a1)
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
  v8 = *(a1 + 16);
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      v9 = sub_12BB99C(*(a1 + 40));
      v7 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = sub_178999C(*(a1 + 48));
      v7 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 4) != 0)
    {
      v7 += 9;
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

    v7 += v14;
  }

  *(a1 + 20) = v7;
  return v7;
}

std::string *sub_12BC5EC(std::string *result, uint64_t a2)
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
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v10 = v3[1].__r_.__value_.__r.__words[2];
      if (!v10)
      {
        v11 = v3->__r_.__value_.__l.__size_;
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        sub_12D0674(v12);
        v3[1].__r_.__value_.__r.__words[2] = v10;
      }

      if (*(a2 + 40))
      {
        v13 = *(a2 + 40);
      }

      else
      {
        v13 = &off_2769678;
      }

      result = sub_12BBB3C(v10, v13);
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
        v3[2].__r_.__value_.__l.__size_ = *(a2 + 56);
        goto LABEL_8;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    data = v3[2].__r_.__value_.__l.__data_;
    if (!data)
    {
      v15 = v3->__r_.__value_.__l.__size_;
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      data = sub_1789A8C(v16);
      v3[2].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 48))
    {
      v17 = *(a2 + 48);
    }

    else
    {
      v17 = &off_2781FD0;
    }

    result = sub_17893E8(data, v17);
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

void *sub_12BC770(void *a1)
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

  sub_12BC82C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956AFC(a1 + 15);
  sub_1956ABC((a1 + 13));
  sub_12E630C(a1 + 10);
  sub_1956ABC((a1 + 8));
  sub_12E6288(a1 + 5);
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_12BC82C(uint64_t result)
{
  if (result != &off_2769700)
  {
    v1 = result;
    if (*(result + 144))
    {
      sub_149D354();
      operator delete();
    }

    v2 = *(result + 152);
    if (v2)
    {
      sub_12B9244(v2);
      operator delete();
    }

    v3 = *(v1 + 160);
    if (v3)
    {
      sub_12B77A4(v3);
      operator delete();
    }

    result = *(v1 + 168);
    if (result)
    {
      sub_12BB0D8(result);

      operator delete();
    }
  }

  return result;
}

void sub_12BC8F8(void *a1)
{
  sub_12BC770(a1);

  operator delete();
}

uint64_t sub_12BC930(uint64_t a1)
{
  *(a1 + 24) = 0;
  v2 = *(a1 + 48);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 56) + 8);
    do
    {
      v4 = *v3++;
      sub_12B8A9C(v4);
      --v2;
    }

    while (v2);
    *(a1 + 48) = 0;
  }

  *(a1 + 64) = 0;
  v5 = *(a1 + 88);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 96) + 8);
    do
    {
      v7 = *v6++;
      sub_12BBEB0(v7);
      --v5;
    }

    while (v5);
    *(a1 + 88) = 0;
  }

  *(a1 + 104) = 0;
  result = sub_12A41D0(a1 + 120);
  v9 = *(a1 + 16);
  if ((v9 & 0xF) == 0)
  {
    goto LABEL_15;
  }

  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    result = sub_12B92F0(*(a1 + 152));
    if ((v9 & 4) == 0)
    {
LABEL_13:
      if ((v9 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_25;
  }

  result = sub_149D390(*(a1 + 144));
  if ((v9 & 2) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v9 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_25:
  result = sub_12B7850(*(a1 + 160));
  if ((v9 & 8) != 0)
  {
LABEL_14:
    result = sub_12BB268(*(a1 + 168));
  }

LABEL_15:
  if ((v9 & 0xF0) != 0)
  {
    *(a1 + 176) = 0;
  }

  if ((v9 & 0xFF00) != 0)
  {
    *(a1 + 212) = 0;
    *(a1 + 196) = 0u;
    *(a1 + 180) = 0u;
  }

  v11 = *(a1 + 8);
  v10 = a1 + 8;
  *(v10 + 208) = 0;
  *(v10 + 8) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_12BCA60(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v122 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, v122, a3[11].i32[1]) & 1) == 0)
  {
    v7 = (a1 + 8);
    while (2)
    {
      v8 = (*v122 + 1);
      v9 = **v122;
      if (**v122 < 0)
      {
        v10 = *v8;
        v11 = v9 + (v10 << 7);
        v9 = v11 - 128;
        if (v10 < 0)
        {
          v8 = sub_1958824(*v122, v11 - 128);
          v9 = v12;
        }

        else
        {
          v8 = (*v122 + 2);
        }
      }

      *v122 = v8;
      switch(v9 >> 3)
      {
        case 1u:
          if (v9 != 10)
          {
            goto LABEL_192;
          }

          *(a1 + 16) |= 1u;
          v13 = *(a1 + 144);
          if (!v13)
          {
            v14 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
            if (*v7)
            {
              v14 = *v14;
            }

            v13 = sub_14BDE5C(v14);
            *(a1 + 144) = v13;
            v8 = *v122;
          }

          v15 = sub_21F6500(a3, v13, v8);
          goto LABEL_199;
        case 2u:
          if (v9 != 16)
          {
            goto LABEL_192;
          }

          v5 |= 0x10u;
          v50 = (v8 + 1);
          v49 = *v8;
          if ((v49 & 0x8000000000000000) == 0)
          {
            goto LABEL_80;
          }

          v51 = *v50;
          v49 = (v51 << 7) + v49 - 128;
          if (v51 < 0)
          {
            v110 = sub_19587DC(v8, v49);
            *v122 = v110;
            *(a1 + 176) = v111 != 0;
            if (!v110)
            {
              goto LABEL_205;
            }
          }

          else
          {
            v50 = (v8 + 2);
LABEL_80:
            *v122 = v50;
            *(a1 + 176) = v49 != 0;
          }

          goto LABEL_200;
        case 3u:
          if (v9 != 24)
          {
            goto LABEL_192;
          }

          v5 |= 0x20u;
          v39 = (v8 + 1);
          v38 = *v8;
          if ((v38 & 0x8000000000000000) == 0)
          {
            goto LABEL_63;
          }

          v40 = *v39;
          v38 = (v40 << 7) + v38 - 128;
          if (v40 < 0)
          {
            v104 = sub_19587DC(v8, v38);
            *v122 = v104;
            *(a1 + 177) = v105 != 0;
            if (!v104)
            {
              goto LABEL_205;
            }
          }

          else
          {
            v39 = (v8 + 2);
LABEL_63:
            *v122 = v39;
            *(a1 + 177) = v38 != 0;
          }

          goto LABEL_200;
        case 4u:
          if (v9 != 32)
          {
            goto LABEL_192;
          }

          v5 |= 0x40u;
          v44 = (v8 + 1);
          v43 = *v8;
          if ((v43 & 0x8000000000000000) == 0)
          {
            goto LABEL_70;
          }

          v45 = *v44;
          v43 = (v45 << 7) + v43 - 128;
          if (v45 < 0)
          {
            v106 = sub_19587DC(v8, v43);
            *v122 = v106;
            *(a1 + 178) = v107 != 0;
            if (!v106)
            {
              goto LABEL_205;
            }
          }

          else
          {
            v44 = (v8 + 2);
LABEL_70:
            *v122 = v44;
            *(a1 + 178) = v43 != 0;
          }

          goto LABEL_200;
        case 5u:
          if (v9 != 40)
          {
            goto LABEL_192;
          }

          v5 |= 0x80u;
          v30 = (v8 + 1);
          v29 = *v8;
          if ((v29 & 0x8000000000000000) == 0)
          {
            goto LABEL_48;
          }

          v31 = *v30;
          v29 = (v31 << 7) + v29 - 128;
          if (v31 < 0)
          {
            v98 = sub_19587DC(v8, v29);
            *v122 = v98;
            *(a1 + 179) = v99 != 0;
            if (!v98)
            {
              goto LABEL_205;
            }
          }

          else
          {
            v30 = (v8 + 2);
LABEL_48:
            *v122 = v30;
            *(a1 + 179) = v29 != 0;
          }

          goto LABEL_200;
        case 6u:
          if (v9 != 49)
          {
            if (v9 == 50)
            {
              v15 = sub_1958A20(a1 + 24, v8, a3);
LABEL_199:
              *v122 = v15;
              if (!v15)
              {
                goto LABEL_205;
              }

              goto LABEL_200;
            }

            goto LABEL_192;
          }

          v61 = v8 - 1;
          v62 = *(a1 + 24);
          do
          {
            v63 = (v61 + 1);
            *v122 = v61 + 1;
            v64 = *(v61 + 1);
            if (v62 == *(a1 + 28))
            {
              sub_1959094((a1 + 24), v62 + 1);
              *(*(a1 + 32) + 8 * v62) = v64;
              v63 = *v122;
            }

            else
            {
              *(*(a1 + 32) + 8 * v62) = v64;
            }

            *(a1 + 24) = ++v62;
            v61 = (v63 + 8);
            *v122 = v63 + 8;
          }

          while (*a3 > (v63 + 8) && *v61 == 49);
LABEL_200:
          if (sub_195ADC0(a3, v122, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        case 7u:
          if (v9 != 56)
          {
            goto LABEL_192;
          }

          v5 |= 0x100u;
          v77 = (v8 + 1);
          v78 = *v8;
          if ((*v8 & 0x80000000) == 0)
          {
            goto LABEL_132;
          }

          v79 = *v77;
          v78 = v78 + (v79 << 7) - 128;
          if (v79 < 0)
          {
            v114 = sub_1958770(v8, v78);
            *v122 = v114;
            *(a1 + 180) = v115;
            if (!v114)
            {
              goto LABEL_205;
            }
          }

          else
          {
            v77 = (v8 + 2);
LABEL_132:
            *v122 = v77;
            *(a1 + 180) = v78;
          }

          goto LABEL_200;
        case 8u:
          if (v9 != 64)
          {
            goto LABEL_192;
          }

          v5 |= 0x400u;
          v46 = (v8 + 1);
          v47 = *v8;
          if ((*v8 & 0x80000000) == 0)
          {
            goto LABEL_75;
          }

          v48 = *v46;
          v47 = v47 + (v48 << 7) - 128;
          if (v48 < 0)
          {
            v108 = sub_1958770(v8, v47);
            *v122 = v108;
            *(a1 + 192) = v109;
            if (!v108)
            {
              goto LABEL_205;
            }
          }

          else
          {
            v46 = (v8 + 2);
LABEL_75:
            *v122 = v46;
            *(a1 + 192) = v47;
          }

          goto LABEL_200;
        case 9u:
          if (v9 != 73)
          {
            goto LABEL_192;
          }

          v86 = *v8;
          v41 = v8 + 8;
          v5 |= 0x200u;
          *(a1 + 184) = v86;
          goto LABEL_146;
        case 0xAu:
          if (v9 != 80)
          {
            goto LABEL_192;
          }

          v5 |= 0x800u;
          v35 = (v8 + 1);
          v36 = *v8;
          if ((*v8 & 0x80000000) == 0)
          {
            goto LABEL_58;
          }

          v37 = *v35;
          v36 = v36 + (v37 << 7) - 128;
          if (v37 < 0)
          {
            v102 = sub_1958770(v8, v36);
            *v122 = v102;
            *(a1 + 196) = v103;
            if (!v102)
            {
              goto LABEL_205;
            }
          }

          else
          {
            v35 = (v8 + 2);
LABEL_58:
            *v122 = v35;
            *(a1 + 196) = v36;
          }

          goto LABEL_200;
        case 0xBu:
          if (v9 != 88)
          {
            goto LABEL_192;
          }

          v5 |= 0x1000u;
          v83 = (v8 + 1);
          v84 = *v8;
          if ((*v8 & 0x80000000) == 0)
          {
            goto LABEL_143;
          }

          v85 = *v83;
          v84 = v84 + (v85 << 7) - 128;
          if (v85 < 0)
          {
            v116 = sub_1958770(v8, v84);
            *v122 = v116;
            *(a1 + 200) = v117;
            if (!v116)
            {
              goto LABEL_205;
            }
          }

          else
          {
            v83 = (v8 + 2);
LABEL_143:
            *v122 = v83;
            *(a1 + 200) = v84;
          }

          goto LABEL_200;
        case 0xCu:
          if (v9 != 98)
          {
            goto LABEL_192;
          }

          *(a1 + 16) |= 2u;
          v27 = *(a1 + 152);
          if (!v27)
          {
            v28 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
            if (*v7)
            {
              v28 = *v28;
            }

            v27 = sub_12D0310(v28);
            *(a1 + 152) = v27;
            v8 = *v122;
          }

          v15 = sub_21F6590(a3, v27, v8);
          goto LABEL_199;
        case 0xDu:
          if (v9 != 104)
          {
            goto LABEL_192;
          }

          v5 |= 0x2000u;
          v33 = (v8 + 1);
          v32 = *v8;
          if ((v32 & 0x8000000000000000) == 0)
          {
            goto LABEL_53;
          }

          v34 = *v33;
          v32 = (v34 << 7) + v32 - 128;
          if (v34 < 0)
          {
            v100 = sub_19587DC(v8, v32);
            *v122 = v100;
            *(a1 + 204) = v101 != 0;
            if (!v100)
            {
              goto LABEL_205;
            }
          }

          else
          {
            v33 = (v8 + 2);
LABEL_53:
            *v122 = v33;
            *(a1 + 204) = v32 != 0;
          }

          goto LABEL_200;
        case 0xEu:
          if (v9 != 114)
          {
            goto LABEL_192;
          }

          v71 = (v8 - 1);
          while (1)
          {
            v72 = (v71 + 1);
            *v122 = v71 + 1;
            v73 = *(a1 + 56);
            if (v73 && (v74 = *(a1 + 48), v74 < *v73))
            {
              *(a1 + 48) = v74 + 1;
              v75 = *&v73[2 * v74 + 2];
            }

            else
            {
              v76 = sub_12D0274(*(a1 + 40));
              v75 = sub_19593CC(a1 + 40, v76);
              v72 = *v122;
            }

            v71 = sub_21F6620(a3, v75, v72);
            *v122 = v71;
            if (!v71)
            {
              goto LABEL_205;
            }

            if (*a3 <= v71 || *v71 != 114)
            {
              goto LABEL_200;
            }
          }

        case 0xFu:
          if (v9 != 120)
          {
            if (v9 == 122)
            {
              *&v123 = a1 + 64;
              *(&v123 + 1) = sub_15F4674;
              v124 = a1 + 8;
              v125 = 15;
              v15 = sub_1216588(a3, v8, &v123);
              goto LABEL_199;
            }

LABEL_192:
            if (v9)
            {
              v120 = (v9 & 7) == 4;
            }

            else
            {
              v120 = 1;
            }

            if (v120)
            {
              if (v8)
              {
                a3[10].i32[0] = v9 - 1;
                goto LABEL_2;
              }

LABEL_205:
              *v122 = 0;
              goto LABEL_2;
            }

            if (*v7)
            {
              v121 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v121 = sub_11F1920((a1 + 8));
              v8 = *v122;
            }

            v15 = sub_1952690(v9, v121, v8, a3);
            goto LABEL_199;
          }

          v19 = (v8 - 1);
          break;
        case 0x10u:
          if (v9 != 129)
          {
            goto LABEL_192;
          }

          v42 = *v8;
          v41 = v8 + 8;
          v5 |= 0x8000u;
          *(a1 + 208) = v42;
LABEL_146:
          *v122 = v41;
          goto LABEL_200;
        case 0x11u:
          if (v9 != 138)
          {
            goto LABEL_192;
          }

          *(a1 + 16) |= 4u;
          v16 = *(a1 + 160);
          if (!v16)
          {
            v17 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
            if (*v7)
            {
              v17 = *v17;
            }

            sub_12D01F0(v17);
            v16 = v18;
            *(a1 + 160) = v18;
            v8 = *v122;
          }

          v15 = sub_21F66B0(a3, v16, v8);
          goto LABEL_199;
        case 0x12u:
          if (v9 != 144)
          {
            goto LABEL_192;
          }

          v5 |= 0x4000u;
          v53 = (v8 + 1);
          v52 = *v8;
          if ((v52 & 0x8000000000000000) == 0)
          {
            goto LABEL_85;
          }

          v54 = *v53;
          v52 = (v54 << 7) + v52 - 128;
          if (v54 < 0)
          {
            v112 = sub_19587DC(v8, v52);
            *v122 = v112;
            *(a1 + 205) = v113 != 0;
            if (!v112)
            {
              goto LABEL_205;
            }
          }

          else
          {
            v53 = (v8 + 2);
LABEL_85:
            *v122 = v53;
            *(a1 + 205) = v52 != 0;
          }

          goto LABEL_200;
        case 0x13u:
          if (v9 != 154)
          {
            goto LABEL_192;
          }

          *(a1 + 16) |= 8u;
          v80 = *(a1 + 168);
          if (!v80)
          {
            v81 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
            if (*v7)
            {
              v81 = *v81;
            }

            sub_12D0674(v81);
            v80 = v82;
            *(a1 + 168) = v82;
            v8 = *v122;
          }

          v15 = sub_21F63E0(a3, v80, v8);
          goto LABEL_199;
        case 0x14u:
          if (v9 != 160)
          {
            goto LABEL_192;
          }

          v5 |= 0x10000u;
          v95 = (v8 + 1);
          v96 = *v8;
          if ((*v8 & 0x80000000) == 0)
          {
            goto LABEL_163;
          }

          v97 = *v95;
          v96 = v96 + (v97 << 7) - 128;
          if (v97 < 0)
          {
            v118 = sub_1958770(v8, v96);
            *v122 = v118;
            *(a1 + 216) = v119;
            if (!v118)
            {
              goto LABEL_205;
            }
          }

          else
          {
            v95 = (v8 + 2);
LABEL_163:
            *v122 = v95;
            *(a1 + 216) = v96;
          }

          goto LABEL_200;
        case 0x15u:
          if (v9 != 170)
          {
            goto LABEL_192;
          }

          v55 = (v8 - 2);
          while (1)
          {
            v56 = (v55 + 2);
            *v122 = v55 + 2;
            v57 = *(a1 + 96);
            if (v57 && (v58 = *(a1 + 88), v58 < *v57))
            {
              *(a1 + 88) = v58 + 1;
              v59 = *&v57[2 * v58 + 2];
            }

            else
            {
              v60 = sub_12D06F8(*(a1 + 80));
              v59 = sub_19593CC(a1 + 80, v60);
              v56 = *v122;
            }

            v55 = sub_21F6740(a3, v59, v56);
            *v122 = v55;
            if (!v55)
            {
              goto LABEL_205;
            }

            if (*a3 <= v55 || *v55 != 426)
            {
              goto LABEL_200;
            }
          }

        case 0x16u:
          if (v9 == 176)
          {
            v65 = (v8 - 2);
            while (1)
            {
              *v122 = v65 + 2;
              v66 = *(v65 + 2);
              if (*(v65 + 2) < 0)
              {
                v67 = v66 + (*(v65 + 3) << 7);
                v66 = v67 - 128;
                if (*(v65 + 3) < 0)
                {
                  v65 = sub_1958770(v65 + 2, v67 - 128);
                  v66 = v68;
                }

                else
                {
                  v65 += 4;
                }
              }

              else
              {
                v65 += 3;
              }

              *v122 = v65;
              v69 = *(a1 + 104);
              if (v69 == *(a1 + 108))
              {
                v70 = v69 + 1;
                sub_1958E5C((a1 + 104), v69 + 1);
                *(*(a1 + 112) + 4 * v69) = v66;
                v65 = *v122;
              }

              else
              {
                *(*(a1 + 112) + 4 * v69) = v66;
                v70 = v69 + 1;
              }

              *(a1 + 104) = v70;
              if (!v65)
              {
                goto LABEL_205;
              }

              if (*a3 <= v65 || *v65 != 432)
              {
                goto LABEL_200;
              }
            }
          }

          if (v9 != 178)
          {
            goto LABEL_192;
          }

          v15 = sub_1958918((a1 + 104), v8, a3);
          goto LABEL_199;
        case 0x17u:
          if (v9 != 186)
          {
            goto LABEL_192;
          }

          v87 = (v8 - 2);
          while (1)
          {
            v88 = (v87 + 2);
            *v122 = v87 + 2;
            v89 = *(a1 + 136);
            if (v89 && (v90 = *(a1 + 128), v90 < *v89))
            {
              *(a1 + 128) = v90 + 1;
              v91 = *&v89[2 * v90 + 2];
            }

            else
            {
              v92 = *(a1 + 120);
              if (!v92)
              {
                operator new();
              }

              *v94 = v93;
              v94[1] = sub_195A650;
              *v93 = 0;
              v93[1] = 0;
              v93[2] = 0;
              v91 = sub_19593CC(a1 + 120, v93);
              v88 = *v122;
            }

            v87 = sub_1958890(v91, v88, a3);
            *v122 = v87;
            if (!v87)
            {
              goto LABEL_205;
            }

            if (*a3 <= v87 || *v87 != 442)
            {
              goto LABEL_200;
            }
          }

        default:
          goto LABEL_192;
      }

      break;
    }

    while (1)
    {
      *v122 = v19 + 1;
      v20 = *(v19 + 1);
      v21 = (v19 + 2);
      if (v20 < 0)
      {
        v22 = *v21;
        v23 = (v22 << 7) + v20;
        LODWORD(v20) = v23 - 128;
        if (v22 < 0)
        {
          *v122 = sub_19587DC(v19 + 1, (v23 - 128));
          if (!*v122)
          {
            goto LABEL_205;
          }

          LODWORD(v20) = v26;
          goto LABEL_27;
        }

        v21 = (v19 + 3);
      }

      *v122 = v21;
LABEL_27:
      if (sub_15F4674(v20))
      {
        v24 = *(a1 + 64);
        if (v24 == *(a1 + 68))
        {
          v25 = v24 + 1;
          sub_1958E5C((a1 + 64), v24 + 1);
          *(*(a1 + 72) + 4 * v24) = v20;
        }

        else
        {
          *(*(a1 + 72) + 4 * v24) = v20;
          v25 = v24 + 1;
        }

        *(a1 + 64) = v25;
      }

      else
      {
        sub_12E8538();
      }

      v19 = *v122;
      if (*a3 <= *v122 || **v122 != 120)
      {
        goto LABEL_200;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return *v122;
}

char *sub_12BD680(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 144);
    *a2 = 10;
    v7 = *(v6 + 44);
    a2[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, a2 + 1);
    }

    else
    {
      v8 = a2 + 2;
    }

    a2 = sub_149DD64(v6, v8, a3);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v9 = *(a1 + 176);
  *a2 = 16;
  a2[1] = v9;
  a2 += 2;
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_16:
  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v10 = *(a1 + 177);
  *a2 = 24;
  a2[1] = v10;
  a2 += 2;
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_19:
  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v11 = *(a1 + 178);
  *a2 = 32;
  a2[1] = v11;
  a2 += 2;
  if ((v5 & 0x80) != 0)
  {
LABEL_22:
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v12 = *(a1 + 179);
    *a2 = 40;
    a2[1] = v12;
    a2 += 2;
  }

LABEL_25:
  v13 = *(a1 + 24);
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = 8 * v13;
    do
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v16 = *(*(a1 + 32) + v14);
      *a2 = 49;
      *(a2 + 1) = v16;
      a2 += 9;
      v14 += 8;
    }

    while (v15 != v14);
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v18 = *(a1 + 180);
    *a2 = 56;
    a2[1] = v18;
    if (v18 > 0x7F)
    {
      a2[1] = v18 | 0x80;
      v19 = v18 >> 7;
      a2[2] = v18 >> 7;
      v17 = a2 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v20) = a2[2];
        do
        {
          *(v17 - 1) = v20 | 0x80;
          v20 = v19 >> 7;
          *v17++ = v19 >> 7;
          v21 = v19 >> 14;
          v19 >>= 7;
        }

        while (v21);
      }
    }

    else
    {
      v17 = a2 + 2;
    }
  }

  else
  {
    v17 = a2;
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v23 = *(a1 + 192);
    *v17 = 64;
    v17[1] = v23;
    if (v23 > 0x7F)
    {
      v17[1] = v23 | 0x80;
      v24 = v23 >> 7;
      v17[2] = v23 >> 7;
      v22 = v17 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v17) = v17[2];
        do
        {
          *(v22 - 1) = v17 | 0x80;
          LODWORD(v17) = v24 >> 7;
          *v22++ = v24 >> 7;
          v25 = v24 >> 14;
          v24 >>= 7;
        }

        while (v25);
      }
    }

    else
    {
      v22 = v17 + 2;
    }
  }

  else
  {
    v22 = v17;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v26 = *(a1 + 184);
    *v22 = 73;
    *(v22 + 1) = v26;
    v22 += 9;
  }

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v28 = *(a1 + 196);
    *v22 = 80;
    v22[1] = v28;
    if (v28 > 0x7F)
    {
      v22[1] = v28 | 0x80;
      v29 = v28 >> 7;
      v22[2] = v28 >> 7;
      v27 = v22 + 3;
      if (v28 >= 0x4000)
      {
        LOBYTE(v30) = v22[2];
        do
        {
          *(v27 - 1) = v30 | 0x80;
          v30 = v29 >> 7;
          *v27++ = v29 >> 7;
          v31 = v29 >> 14;
          v29 >>= 7;
        }

        while (v31);
      }
    }

    else
    {
      v27 = v22 + 2;
    }
  }

  else
  {
    v27 = v22;
  }

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= v27)
    {
      v27 = sub_225EB68(a3, v27);
    }

    v33 = *(a1 + 200);
    *v27 = 88;
    v27[1] = v33;
    if (v33 > 0x7F)
    {
      v27[1] = v33 | 0x80;
      v34 = v33 >> 7;
      v27[2] = v33 >> 7;
      v32 = v27 + 3;
      if (v33 >= 0x4000)
      {
        LOBYTE(v27) = v27[2];
        do
        {
          *(v32 - 1) = v27 | 0x80;
          LODWORD(v27) = v34 >> 7;
          *v32++ = v34 >> 7;
          v35 = v34 >> 14;
          v34 >>= 7;
        }

        while (v35);
      }
    }

    else
    {
      v32 = v27 + 2;
    }
  }

  else
  {
    v32 = v27;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v32)
    {
      v32 = sub_225EB68(a3, v32);
    }

    v36 = *(a1 + 152);
    *v32 = 98;
    v37 = *(v36 + 20);
    v32[1] = v37;
    if (v37 > 0x7F)
    {
      v38 = sub_19575D0(v37, v32 + 1);
    }

    else
    {
      v38 = v32 + 2;
    }

    v32 = sub_12B95C8(v36, v38, a3);
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v32)
    {
      v32 = sub_225EB68(a3, v32);
    }

    v39 = *(a1 + 204);
    *v32 = 104;
    v32[1] = v39;
    v32 += 2;
  }

  v40 = *(a1 + 48);
  if (v40)
  {
    for (i = 0; i != v40; ++i)
    {
      if (*a3 <= v32)
      {
        v32 = sub_225EB68(a3, v32);
      }

      v42 = *(*(a1 + 56) + 8 * i + 8);
      *v32 = 114;
      v43 = *(v42 + 20);
      v32[1] = v43;
      if (v43 > 0x7F)
      {
        v44 = sub_19575D0(v43, v32 + 1);
      }

      else
      {
        v44 = v32 + 2;
      }

      v32 = sub_12B8DA4(v42, v44, a3);
    }
  }

  v45 = *(a1 + 64);
  if (v45 < 1)
  {
    v48 = v32;
  }

  else
  {
    for (j = 0; j != v45; ++j)
    {
      if (*a3 <= v32)
      {
        v32 = sub_225EB68(a3, v32);
      }

      v47 = *(*(a1 + 72) + 4 * j);
      *v32 = 120;
      v32[1] = v47;
      if (v47 > 0x7F)
      {
        v32[1] = v47 | 0x80;
        v49 = v47 >> 7;
        v32[2] = v47 >> 7;
        v48 = v32 + 3;
        if (v47 >= 0x4000)
        {
          LOBYTE(v32) = v32[2];
          do
          {
            *(v48 - 1) = v32 | 0x80;
            v32 = (v49 >> 7);
            *v48++ = v49 >> 7;
            v50 = v49 >> 14;
            v49 >>= 7;
          }

          while (v50);
        }
      }

      else
      {
        v48 = v32 + 2;
      }

      v32 = v48;
    }
  }

  if ((v5 & 0x8000) != 0)
  {
    if (*a3 <= v48)
    {
      v48 = sub_225EB68(a3, v48);
    }

    v52 = *(a1 + 208);
    *v48 = 385;
    *(v48 + 2) = v52;
    v48 += 10;
    if ((v5 & 4) == 0)
    {
LABEL_103:
      if ((v5 & 0x4000) == 0)
      {
        goto LABEL_104;
      }

      goto LABEL_116;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_103;
  }

  if (*a3 <= v48)
  {
    v48 = sub_225EB68(a3, v48);
  }

  v53 = *(a1 + 160);
  *v48 = 394;
  v54 = *(v53 + 20);
  v48[2] = v54;
  if (v54 > 0x7F)
  {
    v55 = sub_19575D0(v54, v48 + 2);
  }

  else
  {
    v55 = v48 + 3;
  }

  v48 = sub_12B7EB8(v53, v55, a3);
  if ((v5 & 0x4000) == 0)
  {
LABEL_104:
    if ((v5 & 8) == 0)
    {
      goto LABEL_105;
    }

LABEL_119:
    if (*a3 <= v48)
    {
      v48 = sub_225EB68(a3, v48);
    }

    v57 = *(a1 + 168);
    *v48 = 410;
    v58 = *(v57 + 20);
    v48[2] = v58;
    if (v58 > 0x7F)
    {
      v59 = sub_19575D0(v58, v48 + 2);
    }

    else
    {
      v59 = v48 + 3;
    }

    v48 = sub_12BB678(v57, v59, a3);
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_125;
  }

LABEL_116:
  if (*a3 <= v48)
  {
    v48 = sub_225EB68(a3, v48);
  }

  v56 = *(a1 + 205);
  *v48 = 400;
  v48[2] = v56;
  v48 += 3;
  if ((v5 & 8) != 0)
  {
    goto LABEL_119;
  }

LABEL_105:
  if ((v5 & 0x10000) == 0)
  {
LABEL_106:
    v51 = v48;
    goto LABEL_132;
  }

LABEL_125:
  if (*a3 <= v48)
  {
    v48 = sub_225EB68(a3, v48);
  }

  v60 = *(a1 + 216);
  *v48 = 416;
  v48[2] = v60;
  if (v60 > 0x7F)
  {
    v48[2] = v60 | 0x80;
    v61 = v60 >> 7;
    v48[3] = v60 >> 7;
    v51 = v48 + 4;
    if (v60 >= 0x4000)
    {
      LOBYTE(v48) = v48[3];
      do
      {
        *(v51 - 1) = v48 | 0x80;
        LODWORD(v48) = v61 >> 7;
        *v51++ = v61 >> 7;
        v62 = v61 >> 14;
        v61 >>= 7;
      }

      while (v62);
    }
  }

  else
  {
    v51 = v48 + 3;
  }

LABEL_132:
  v63 = *(a1 + 88);
  if (v63)
  {
    for (k = 0; k != v63; ++k)
    {
      if (*a3 <= v51)
      {
        v51 = sub_225EB68(a3, v51);
      }

      v65 = *(*(a1 + 96) + 8 * k + 8);
      *v51 = 426;
      v66 = *(v65 + 20);
      v51[2] = v66;
      if (v66 > 0x7F)
      {
        v67 = sub_19575D0(v66, v51 + 2);
      }

      else
      {
        v67 = v51 + 3;
      }

      v51 = sub_12BC260(v65, v67, a3);
    }
  }

  v68 = *(a1 + 104);
  if (v68 < 1)
  {
    v71 = v51;
  }

  else
  {
    for (m = 0; m != v68; ++m)
    {
      if (*a3 <= v51)
      {
        v51 = sub_225EB68(a3, v51);
      }

      v70 = *(*(a1 + 112) + 4 * m);
      *v51 = 432;
      v51[2] = v70;
      if (v70 > 0x7F)
      {
        v51[2] = v70 | 0x80;
        v72 = v70 >> 7;
        v51[3] = v70 >> 7;
        v71 = v51 + 4;
        if (v70 >= 0x4000)
        {
          LOBYTE(v51) = v51[3];
          do
          {
            *(v71 - 1) = v51 | 0x80;
            LODWORD(v51) = v72 >> 7;
            *v71++ = v72 >> 7;
            v73 = v72 >> 14;
            v72 >>= 7;
          }

          while (v73);
        }
      }

      else
      {
        v71 = v51 + 3;
      }

      v51 = v71;
    }
  }

  v74 = *(a1 + 128);
  if (v74 >= 1)
  {
    v75 = 8;
    do
    {
      v76 = *(*(a1 + 136) + v75);
      v77 = *(v76 + 23);
      if (v77 < 0 && (v77 = v76[1], v77 > 127) || (*a3 - v71 + 13) < v77)
      {
        v71 = sub_1957480(a3, 23, v76, v71);
      }

      else
      {
        *v71 = 442;
        v71[2] = v77;
        if (*(v76 + 23) < 0)
        {
          v76 = *v76;
        }

        v78 = v71 + 3;
        memcpy(v78, v76, v77);
        v71 = &v78[v77];
      }

      v75 += 8;
      --v74;
    }

    while (v74);
  }

  v79 = *(a1 + 8);
  if ((v79 & 1) == 0)
  {
    return v71;
  }

  v81 = v79 & 0xFFFFFFFFFFFFFFFCLL;
  v82 = *(v81 + 31);
  if (v82 < 0)
  {
    v83 = *(v81 + 8);
    v82 = *(v81 + 16);
  }

  else
  {
    v83 = (v81 + 8);
  }

  if ((*a3 - v71) >= v82)
  {
    v84 = v82;
    memcpy(v71, v83, v82);
    v71 += v84;
    return v71;
  }

  return sub_1957130(a3, v83, v82, v71);
}