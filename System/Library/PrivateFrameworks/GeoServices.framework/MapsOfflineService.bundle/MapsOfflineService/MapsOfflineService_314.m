char *sub_130C554(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_130B598(v8, v10, a3);
    }
  }

  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v11 = *(a1 + 72);
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

    __dst = sub_130BF48(v11, v13, a3);
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    for (j = 0; j != v14; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v16 = *(*(a1 + 64) + 8 * j + 8);
      *__dst = 26;
      v17 = *(v16 + 20);
      __dst[1] = v17;
      if (v17 > 0x7F)
      {
        v18 = sub_19575D0(v17, __dst + 1);
      }

      else
      {
        v18 = __dst + 2;
      }

      __dst = sub_130AB5C(v16, v18, a3);
    }
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return __dst;
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

  if (*a3 - __dst >= v22)
  {
    v24 = v22;
    memcpy(__dst, v23, v22);
    __dst += v24;
    return __dst;
  }

  return sub_1957130(a3, v23, v22, __dst);
}

uint64_t sub_130C780(uint64_t a1)
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
      v7 = sub_130B8B8(v6);
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
      v14 = sub_130AD40(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  if (*(a1 + 16))
  {
    v15 = sub_130C030(*(a1 + 72));
    v9 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v16 = *(a1 + 8);
  if (v16)
  {
    v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v9 += v19;
  }

  *(a1 + 20) = v9;
  return v9;
}

std::string *sub_130C8AC(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_1313214(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(&v3[2], *(a2 + 56));
    result = sub_13132A0(v3 + 2, v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
    v12 = LODWORD(v3[2].__r_.__value_.__r.__words[1]) + v9;
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = v12;
    v13 = v3[2].__r_.__value_.__r.__words[2];
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  if (*(a2 + 16))
  {
    v14 = *(a2 + 72);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    data = v3[3].__r_.__value_.__l.__data_;
    if (!data)
    {
      size = v3->__r_.__value_.__l.__size_;
      v17 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v17 = *v17;
      }

      data = sub_130FC3C(v17);
      v3[3].__r_.__value_.__r.__words[0] = data;
      v14 = *(a2 + 72);
    }

    if (v14)
    {
      v18 = v14;
    }

    else
    {
      v18 = &off_276AD80;
    }

    result = sub_12F5A34(data, v18);
  }

  v19 = *(a2 + 8);
  if (v19)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_130CA30(uint64_t a1)
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

  if (a1 != &off_276ADF8)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      sub_130C11C(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1312E78((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_130CB08(uint64_t a1)
{
  sub_130CA30(a1);

  operator delete();
}

uint64_t sub_130CB40(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1383878(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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
      result = sub_130C224(*(v1 + 56));
    }
  }

LABEL_11:
  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_130CC08(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
            v24 = sub_13840C4(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = *v29;
          }

          v19 = sub_21F8898(a3, v23, v20);
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
        *(a1 + 16) |= 1u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = sub_194DB04((a1 + 48), v17);
        v15 = sub_1958890(v18, *v29, a3);
        goto LABEL_39;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 2u;
      v25 = *(a1 + 56);
      if (!v25)
      {
        v26 = *(a1 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        v25 = sub_130FCC0(v27);
        *(a1 + 56) = v25;
        v6 = *v29;
      }

      v15 = sub_21FA308(a3, v25, v6);
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

char *sub_130CE38(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_130C554(v7, v9, a3);
  }

  if (v6)
  {
    v4 = sub_128AEEC(a3, 2, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
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

      v4 = sub_1383BD4(v12, v14, a3);
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

uint64_t sub_130D000(uint64_t a1)
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
      v7 = sub_1383D30(v6);
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
      v12 = sub_130C780(*(a1 + 56));
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

std::string *sub_130D128(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_131332C(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
      v13 = v3[2].__r_.__value_.__l.__size_;
      if (!v13)
      {
        v14 = v3->__r_.__value_.__l.__size_;
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v13 = sub_130FCC0(v15);
        v3[2].__r_.__value_.__l.__size_ = v13;
      }

      if (*(a2 + 56))
      {
        v16 = *(a2 + 56);
      }

      else
      {
        v16 = &off_276ADA8;
      }

      result = sub_130C8AC(v13, v16);
    }
  }

  v17 = *(a2 + 8);
  if (v17)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

double sub_130D288(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26D3840;
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
  *(a1 + 96) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = &qword_278E990;
  *(a1 + 128) = &qword_278E990;
  *(a1 + 136) = &qword_278E990;
  *(a1 + 144) = &qword_278E990;
  *(a1 + 152) = &qword_278E990;
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 160) = 0u;
  return result;
}

uint64_t sub_130D2F4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26D3840;
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
    sub_13133B8((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
    sub_1313444((a1 + 48), v12, (v11 + 8), v10, **(a1 + 64) - *(a1 + 56));
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
    sub_13134D0((a1 + 72), v17, (v16 + 8), v15, **(a1 + 88) - *(a1 + 80));
    v18 = *(a1 + 80) + v15;
    *(a1 + 80) = v18;
    v19 = *(a1 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v20 = *(a2 + 104);
  if (v20)
  {
    v21 = *(a2 + 112);
    v22 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_131355C((a1 + 96), v22, (v21 + 8), v20, **(a1 + 112) - *(a1 + 104));
    v23 = *(a1 + 104) + v20;
    *(a1 + 104) = v23;
    v24 = *(a1 + 112);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 8);
  if (v25)
  {
    sub_1957EF4(v4, (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 120) = &qword_278E990;
  v26 = *(a2 + 16);
  if (v26)
  {
    v27 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v27 = *v27;
    }

    sub_194EA1C((a1 + 120), (*(a2 + 120) & 0xFFFFFFFFFFFFFFFELL), v27);
    v26 = *(a2 + 16);
  }

  *(a1 + 128) = &qword_278E990;
  if ((v26 & 2) != 0)
  {
    v28 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v28 = *v28;
    }

    sub_194EA1C((a1 + 128), (*(a2 + 128) & 0xFFFFFFFFFFFFFFFELL), v28);
    v26 = *(a2 + 16);
  }

  *(a1 + 136) = &qword_278E990;
  if ((v26 & 4) != 0)
  {
    v29 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v29 = *v29;
    }

    sub_194EA1C((a1 + 136), (*(a2 + 136) & 0xFFFFFFFFFFFFFFFELL), v29);
    v26 = *(a2 + 16);
  }

  *(a1 + 144) = &qword_278E990;
  if ((v26 & 8) != 0)
  {
    v30 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v30 = *v30;
    }

    sub_194EA1C((a1 + 144), (*(a2 + 144) & 0xFFFFFFFFFFFFFFFELL), v30);
    v26 = *(a2 + 16);
  }

  *(a1 + 152) = &qword_278E990;
  if ((v26 & 0x10) != 0)
  {
    v31 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v31 = *v31;
    }

    sub_194EA1C((a1 + 152), (*(a2 + 152) & 0xFFFFFFFFFFFFFFFELL), v31);
    v26 = *(a2 + 16);
  }

  if ((v26 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 160) = 0;
  if ((v26 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 168) = 0;
  v32 = *(a2 + 176);
  v33 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v32;
  *(a1 + 192) = v33;
  return a1;
}

void *sub_130D750(void *a1)
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

  sub_130D804(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1313088(a1 + 12);
  sub_1313004(a1 + 9);
  sub_1312F80(a1 + 6);
  sub_1312EFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_130D804(uint64_t a1)
{
  v3 = *(a1 + 120);
  v2 = (a1 + 120);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 128) != &qword_278E990)
  {
    sub_194E89C((a1 + 128));
  }

  if (*(a1 + 136) != &qword_278E990)
  {
    sub_194E89C((a1 + 136));
  }

  if (*(a1 + 144) != &qword_278E990)
  {
    sub_194E89C((a1 + 144));
  }

  result = (a1 + 152);
  if (*(a1 + 152) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276AE38)
  {
    if (*(a1 + 160))
    {
      sub_16E550C();
      operator delete();
    }

    result = *(a1 + 168);
    if (result)
    {
      sub_16E68E4();

      operator delete();
    }
  }

  return result;
}

void sub_130D8F8(void *a1)
{
  sub_130D750(a1);

  operator delete();
}

uint64_t sub_130D930(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1307D2C(v4);
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
      result = sub_1308824(v7);
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
      result = sub_1309124(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 104);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 112) + 8);
    do
    {
      v13 = *v12++;
      result = sub_130CB40(v13);
      --v11;
    }

    while (v11);
    *(v1 + 104) = 0;
  }

  v14 = *(v1 + 16);
  if ((v14 & 0x7F) == 0)
  {
    goto LABEL_26;
  }

  if ((v14 & 1) == 0)
  {
    if ((v14 & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_36:
    v18 = *(v1 + 128) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v18 + 23) < 0)
    {
      **v18 = 0;
      *(v18 + 8) = 0;
      if ((v14 & 4) != 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      *v18 = 0;
      *(v18 + 23) = 0;
      if ((v14 & 4) != 0)
      {
        goto LABEL_40;
      }
    }

LABEL_21:
    if ((v14 & 8) == 0)
    {
      goto LABEL_22;
    }

LABEL_44:
    v20 = *(v1 + 144) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v20 + 23) < 0)
    {
      **v20 = 0;
      *(v20 + 8) = 0;
      if ((v14 & 0x10) != 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      *v20 = 0;
      *(v20 + 23) = 0;
      if ((v14 & 0x10) != 0)
      {
        goto LABEL_48;
      }
    }

LABEL_23:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

  v17 = *(v1 + 120) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v17 + 23) < 0)
  {
    **v17 = 0;
    *(v17 + 8) = 0;
    if ((v14 & 2) != 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    *v17 = 0;
    *(v17 + 23) = 0;
    if ((v14 & 2) != 0)
    {
      goto LABEL_36;
    }
  }

LABEL_20:
  if ((v14 & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_40:
  v19 = *(v1 + 136) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v19 + 23) < 0)
  {
    **v19 = 0;
    *(v19 + 8) = 0;
    if ((v14 & 8) != 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    *v19 = 0;
    *(v19 + 23) = 0;
    if ((v14 & 8) != 0)
    {
      goto LABEL_44;
    }
  }

LABEL_22:
  if ((v14 & 0x10) == 0)
  {
    goto LABEL_23;
  }

LABEL_48:
  v21 = *(v1 + 152) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v21 + 23) < 0)
  {
    **v21 = 0;
    *(v21 + 8) = 0;
    if ((v14 & 0x20) != 0)
    {
      goto LABEL_52;
    }

LABEL_24:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  *v21 = 0;
  *(v21 + 23) = 0;
  if ((v14 & 0x20) == 0)
  {
    goto LABEL_24;
  }

LABEL_52:
  result = sub_16E5548(*(v1 + 160));
  if ((v14 & 0x40) != 0)
  {
LABEL_25:
    result = sub_16E6920(*(v1 + 168));
  }

LABEL_26:
  *(v1 + 176) = 0;
  if ((v14 & 0x7F00) != 0)
  {
    *(v1 + 184) = 0;
    *(v1 + 192) = 0;
    *(v1 + 208) = 0;
    *(v1 + 200) = 0;
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

uint64_t sub_130DB70(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
        if (v8 != 8)
        {
          goto LABEL_116;
        }

        v5 |= 0x80u;
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
          *v86 = v12;
          *(a1 + 176) = v11;
          goto LABEL_85;
        }

        v78 = sub_19587DC(v7, v11);
        *v86 = v78;
        *(a1 + 176) = v79;
        if (v78)
        {
          goto LABEL_85;
        }

        goto LABEL_158;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_116;
        }

        v43 = (v7 + 1);
        v42 = *v7;
        if ((v42 & 0x8000000000000000) == 0)
        {
          goto LABEL_68;
        }

        v44 = *v43;
        v42 = (v44 << 7) + v42 - 128;
        if (v44 < 0)
        {
          *v86 = sub_19587DC(v7, v42);
          if (!*v86)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v43 = (v7 + 2);
LABEL_68:
          *v86 = v43;
        }

        if (v42 > 0x11)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 16) |= 0x100u;
          *(a1 + 184) = v42;
        }

        goto LABEL_85;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_116;
        }

        *(a1 + 16) |= 0x20u;
        v29 = *(a1 + 160);
        if (!v29)
        {
          v30 = *(a1 + 8);
          v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
          if (v30)
          {
            v31 = *v31;
          }

          v29 = sub_16F5884(v31);
          *(a1 + 160) = v29;
          v7 = *v86;
        }

        v32 = sub_21F9F18(a3, v29, v7);
        goto LABEL_84;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_116;
        }

        v5 |= 0x200u;
        LODWORD(v34) = *v7;
        if ((v34 & 0x80000000) == 0)
        {
          v35 = v7 + 1;
LABEL_131:
          *v86 = v35;
          *(a1 + 188) = v34;
          goto LABEL_85;
        }

        v34 = (v7[1] << 7) + v34 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v35 = v7 + 2;
          goto LABEL_131;
        }

        v76 = sub_19587DC(v7, v34);
        *v86 = v76;
        *(a1 + 188) = v77;
        if (!v76)
        {
          goto LABEL_158;
        }

        goto LABEL_85;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_116;
        }

        v5 |= 0x400u;
        LODWORD(v19) = *v7;
        if ((v19 & 0x80000000) == 0)
        {
          v20 = v7 + 1;
LABEL_125:
          *v86 = v20;
          *(a1 + 192) = v19;
          goto LABEL_85;
        }

        v19 = (v7[1] << 7) + v19 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v20 = v7 + 2;
          goto LABEL_125;
        }

        v72 = sub_19587DC(v7, v19);
        *v86 = v72;
        *(a1 + 192) = v73;
        if (!v72)
        {
          goto LABEL_158;
        }

        goto LABEL_85;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_116;
        }

        v5 |= 0x800u;
        LODWORD(v48) = *v7;
        if ((v48 & 0x80000000) == 0)
        {
          v49 = v7 + 1;
LABEL_134:
          *v86 = v49;
          *(a1 + 196) = v48;
          goto LABEL_85;
        }

        v48 = (v7[1] << 7) + v48 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v49 = v7 + 2;
          goto LABEL_134;
        }

        v82 = sub_19587DC(v7, v48);
        *v86 = v82;
        *(a1 + 196) = v83;
        if (!v82)
        {
          goto LABEL_158;
        }

        goto LABEL_85;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_116;
        }

        v52 = (v7 - 1);
        while (1)
        {
          v53 = (v52 + 1);
          *v86 = v52 + 1;
          v54 = *(a1 + 40);
          if (v54 && (v55 = *(a1 + 32), v55 < *v54))
          {
            *(a1 + 32) = v55 + 1;
            v56 = *&v54[2 * v55 + 2];
          }

          else
          {
            v57 = sub_130F818(*(a1 + 24));
            v56 = sub_19593CC(a1 + 24, v57);
            v53 = *v86;
          }

          v52 = sub_21FA398(a3, v56, v53);
          *v86 = v52;
          if (!v52)
          {
            goto LABEL_158;
          }

          if (*a3 <= v52 || *v52 != 58)
          {
            goto LABEL_85;
          }
        }

      case 8u:
        if (v8 != 66)
        {
          goto LABEL_116;
        }

        v36 = v7 - 1;
        while (1)
        {
          v37 = v36 + 1;
          *v86 = v36 + 1;
          v38 = *(a1 + 64);
          if (v38 && (v39 = *(a1 + 56), v39 < *v38))
          {
            *(a1 + 56) = v39 + 1;
            v40 = *&v38[2 * v39 + 2];
          }

          else
          {
            v41 = sub_130F8BC(*(a1 + 48));
            v40 = sub_19593CC(a1 + 48, v41);
            v37 = *v86;
          }

          v36 = sub_21FA428(a3, v40, v37);
          *v86 = v36;
          if (!v36)
          {
            goto LABEL_158;
          }

          if (*a3 <= v36 || *v36 != 66)
          {
            goto LABEL_85;
          }
        }

      case 9u:
        if (v8 != 74)
        {
          goto LABEL_116;
        }

        v63 = (v7 - 1);
        while (1)
        {
          v64 = (v63 + 1);
          *v86 = v63 + 1;
          v65 = *(a1 + 88);
          if (v65 && (v66 = *(a1 + 80), v66 < *v65))
          {
            *(a1 + 80) = v66 + 1;
            v67 = *&v65[2 * v66 + 2];
          }

          else
          {
            sub_130F960(*(a1 + 72));
            v67 = sub_19593CC(a1 + 72, v68);
            v64 = *v86;
          }

          v63 = sub_21FA4B8(a3, v67, v64);
          *v86 = v63;
          if (!v63)
          {
            goto LABEL_158;
          }

          if (*a3 <= v63 || *v63 != 74)
          {
            goto LABEL_85;
          }
        }

      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_116;
        }

        v23 = v7 - 1;
        while (1)
        {
          v24 = v23 + 1;
          *v86 = v23 + 1;
          v25 = *(a1 + 112);
          if (v25 && (v26 = *(a1 + 104), v26 < *v25))
          {
            *(a1 + 104) = v26 + 1;
            v27 = *&v25[2 * v26 + 2];
          }

          else
          {
            v28 = sub_130FD64(*(a1 + 96));
            v27 = sub_19593CC(a1 + 96, v28);
            v24 = *v86;
          }

          v23 = sub_21FA548(a3, v27, v24);
          *v86 = v23;
          if (!v23)
          {
            goto LABEL_158;
          }

          if (*a3 <= v23 || *v23 != 82)
          {
            goto LABEL_85;
          }
        }

      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_116;
        }

        *(a1 + 16) |= 0x40u;
        v60 = *(a1 + 168);
        if (!v60)
        {
          v61 = *(a1 + 8);
          v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
          if (v61)
          {
            v62 = *v62;
          }

          v60 = sub_16F59B8(v62);
          *(a1 + 168) = v60;
          v7 = *v86;
        }

        v32 = sub_21FA5D8(a3, v60, v7);
        goto LABEL_84;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_116;
        }

        *(a1 + 16) |= 1u;
        v18 = *(a1 + 8);
        v15 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v15 = *v15;
        }

        v16 = (a1 + 120);
        goto LABEL_83;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_116;
        }

        v5 |= 0x1000u;
        LODWORD(v21) = *v7;
        if ((v21 & 0x80000000) == 0)
        {
          v22 = v7 + 1;
LABEL_128:
          *v86 = v22;
          *(a1 + 200) = v21;
          goto LABEL_85;
        }

        v21 = (v7[1] << 7) + v21 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v22 = v7 + 2;
          goto LABEL_128;
        }

        v74 = sub_19587DC(v7, v21);
        *v86 = v74;
        *(a1 + 200) = v75;
        if (!v74)
        {
          goto LABEL_158;
        }

        goto LABEL_85;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_116;
        }

        *(a1 + 16) |= 2u;
        v50 = *(a1 + 8);
        v15 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
        if (v50)
        {
          v15 = *v15;
        }

        v16 = (a1 + 128);
        goto LABEL_83;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_116;
        }

        *(a1 + 16) |= 4u;
        v17 = *(a1 + 8);
        v15 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v15 = *v15;
        }

        v16 = (a1 + 136);
        goto LABEL_83;
      case 0x10u:
        if (v8 != 130)
        {
          goto LABEL_116;
        }

        *(a1 + 16) |= 8u;
        v33 = *(a1 + 8);
        v15 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        if (v33)
        {
          v15 = *v15;
        }

        v16 = (a1 + 144);
        goto LABEL_83;
      case 0x11u:
        if (v8 != 138)
        {
          goto LABEL_116;
        }

        *(a1 + 16) |= 0x10u;
        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v16 = (a1 + 152);
LABEL_83:
        v51 = sub_194DB04(v16, v15);
        v32 = sub_1958890(v51, *v86, a3);
        goto LABEL_84;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_116;
        }

        v5 |= 0x2000u;
        v46 = (v7 + 1);
        v45 = *v7;
        if ((v45 & 0x8000000000000000) == 0)
        {
          goto LABEL_75;
        }

        v47 = *v46;
        v45 = (v47 << 7) + v45 - 128;
        if (v47 < 0)
        {
          v80 = sub_19587DC(v7, v45);
          *v86 = v80;
          *(a1 + 204) = v81 != 0;
          if (!v80)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v46 = (v7 + 2);
LABEL_75:
          *v86 = v46;
          *(a1 + 204) = v45 != 0;
        }

        goto LABEL_85;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_116;
        }

        v5 |= 0x4000u;
        LODWORD(v58) = *v7;
        if ((v58 & 0x80000000) == 0)
        {
          v59 = v7 + 1;
LABEL_137:
          *v86 = v59;
          *(a1 + 208) = v58;
          goto LABEL_85;
        }

        v58 = (v7[1] << 7) + v58 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v59 = v7 + 2;
          goto LABEL_137;
        }

        v84 = sub_19587DC(v7, v58);
        *v86 = v84;
        *(a1 + 208) = v85;
        if (!v84)
        {
          goto LABEL_158;
        }

        goto LABEL_85;
      default:
LABEL_116:
        if (v8)
        {
          v69 = (v8 & 7) == 4;
        }

        else
        {
          v69 = 1;
        }

        if (!v69)
        {
          v70 = *(a1 + 8);
          if (v70)
          {
            v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v71 = sub_11F1920((a1 + 8));
            v7 = *v86;
          }

          v32 = sub_1952690(v8, v71, v7, a3);
LABEL_84:
          *v86 = v32;
          if (!v32)
          {
            goto LABEL_158;
          }

LABEL_85:
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
LABEL_158:
          *v86 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v86;
    }
  }
}

char *sub_130E408(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 176);
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

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 184);
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

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v15 = *(a1 + 160);
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

    v11 = sub_16E56D0(v15, v17, a3);
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v19 = *(a1 + 188);
    *v11 = 32;
    v11[1] = v19;
    if (v19 > 0x7F)
    {
      v11[1] = v19 | 0x80;
      v20 = v19 >> 7;
      v11[2] = v19 >> 7;
      v18 = v11 + 3;
      if (v19 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
        do
        {
          *(v18 - 1) = v11 | 0x80;
          v11 = (v20 >> 7);
          *v18++ = v20 >> 7;
          v21 = v20 >> 14;
          v20 >>= 7;
        }

        while (v21);
      }
    }

    else
    {
      v18 = v11 + 2;
    }
  }

  else
  {
    v18 = v11;
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v23 = *(a1 + 192);
    *v18 = 40;
    v18[1] = v23;
    if (v23 > 0x7F)
    {
      v18[1] = v23 | 0x80;
      v24 = v23 >> 7;
      v18[2] = v23 >> 7;
      v22 = v18 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v18) = v18[2];
        do
        {
          *(v22 - 1) = v18 | 0x80;
          v18 = (v24 >> 7);
          *v22++ = v24 >> 7;
          v25 = v24 >> 14;
          v24 >>= 7;
        }

        while (v25);
      }
    }

    else
    {
      v22 = v18 + 2;
    }
  }

  else
  {
    v22 = v18;
  }

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v27 = *(a1 + 196);
    *v22 = 48;
    v22[1] = v27;
    if (v27 > 0x7F)
    {
      v22[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v22[2] = v27 >> 7;
      v26 = v22 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v29) = v22[2];
        do
        {
          *(v26 - 1) = v29 | 0x80;
          v29 = v28 >> 7;
          *v26++ = v28 >> 7;
          v30 = v28 >> 14;
          v28 >>= 7;
        }

        while (v30);
      }
    }

    else
    {
      v26 = v22 + 2;
    }
  }

  else
  {
    v26 = v22;
  }

  v31 = *(a1 + 32);
  if (v31)
  {
    for (i = 0; i != v31; ++i)
    {
      if (*a3 <= v26)
      {
        v26 = sub_225EB68(a3, v26);
      }

      v33 = *(*(a1 + 40) + 8 * i + 8);
      *v26 = 58;
      v34 = *(v33 + 20);
      v26[1] = v34;
      if (v34 > 0x7F)
      {
        v35 = sub_19575D0(v34, v26 + 1);
      }

      else
      {
        v35 = v26 + 2;
      }

      v26 = sub_1308030(v33, v35, a3);
    }
  }

  v36 = *(a1 + 56);
  if (v36)
  {
    for (j = 0; j != v36; ++j)
    {
      if (*a3 <= v26)
      {
        v26 = sub_225EB68(a3, v26);
      }

      v38 = *(*(a1 + 64) + 8 * j + 8);
      *v26 = 66;
      v39 = *(v38 + 20);
      v26[1] = v39;
      if (v39 > 0x7F)
      {
        v40 = sub_19575D0(v39, v26 + 1);
      }

      else
      {
        v40 = v26 + 2;
      }

      v26 = sub_1308B1C(v38, v40, a3);
    }
  }

  v41 = *(a1 + 80);
  if (v41)
  {
    for (k = 0; k != v41; ++k)
    {
      if (*a3 <= v26)
      {
        v26 = sub_225EB68(a3, v26);
      }

      v43 = *(*(a1 + 88) + 8 * k + 8);
      *v26 = 74;
      v44 = *(v43 + 20);
      v26[1] = v44;
      if (v44 > 0x7F)
      {
        v45 = sub_19575D0(v44, v26 + 1);
      }

      else
      {
        v45 = v26 + 2;
      }

      v26 = sub_1309444(v43, v45, a3);
    }
  }

  v46 = *(a1 + 104);
  if (v46)
  {
    for (m = 0; m != v46; ++m)
    {
      if (*a3 <= v26)
      {
        v26 = sub_225EB68(a3, v26);
      }

      v48 = *(*(a1 + 112) + 8 * m + 8);
      *v26 = 82;
      v49 = *(v48 + 20);
      v26[1] = v49;
      if (v49 > 0x7F)
      {
        v50 = sub_19575D0(v49, v26 + 1);
      }

      else
      {
        v50 = v26 + 2;
      }

      v26 = sub_130CE38(v48, v50, a3);
    }
  }

  if ((v5 & 0x40) == 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_87;
    }

LABEL_95:
    v26 = sub_128AEEC(a3, 12, *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL, v26);
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_96;
  }

  if (*a3 <= v26)
  {
    v26 = sub_225EB68(a3, v26);
  }

  v52 = *(a1 + 168);
  *v26 = 90;
  v53 = *(v52 + 20);
  v26[1] = v53;
  if (v53 > 0x7F)
  {
    v54 = sub_19575D0(v53, v26 + 1);
  }

  else
  {
    v54 = v26 + 2;
  }

  v26 = sub_16E6BFC(v52, v54, a3);
  if (v5)
  {
    goto LABEL_95;
  }

LABEL_87:
  if ((v5 & 0x1000) == 0)
  {
LABEL_88:
    v51 = v26;
    goto LABEL_103;
  }

LABEL_96:
  if (*a3 <= v26)
  {
    v26 = sub_225EB68(a3, v26);
  }

  v55 = *(a1 + 200);
  *v26 = 104;
  v26[1] = v55;
  if (v55 > 0x7F)
  {
    v26[1] = v55 | 0x80;
    v56 = v55 >> 7;
    v26[2] = v55 >> 7;
    v51 = v26 + 3;
    if (v55 >= 0x4000)
    {
      LOBYTE(v57) = v26[2];
      do
      {
        *(v51 - 1) = v57 | 0x80;
        v57 = v56 >> 7;
        *v51++ = v56 >> 7;
        v58 = v56 >> 14;
        v56 >>= 7;
      }

      while (v58);
    }
  }

  else
  {
    v51 = v26 + 2;
  }

LABEL_103:
  if ((v5 & 2) != 0)
  {
    v51 = sub_128AEEC(a3, 14, *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL, v51);
    if ((v5 & 4) == 0)
    {
LABEL_105:
      if ((v5 & 8) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_112;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_105;
  }

  v51 = sub_128AEEC(a3, 15, *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL, v51);
  if ((v5 & 8) == 0)
  {
LABEL_106:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_113;
  }

LABEL_112:
  v51 = sub_128AEEC(a3, 16, *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL, v51);
  if ((v5 & 0x10) == 0)
  {
LABEL_107:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_108;
    }

LABEL_114:
    if (*a3 <= v51)
    {
      v51 = sub_225EB68(a3, v51);
    }

    v60 = *(a1 + 204);
    *v51 = 400;
    v51[2] = v60;
    v51 += 3;
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_117;
  }

LABEL_113:
  v51 = sub_128AEEC(a3, 17, *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL, v51);
  if ((v5 & 0x2000) != 0)
  {
    goto LABEL_114;
  }

LABEL_108:
  if ((v5 & 0x4000) == 0)
  {
LABEL_109:
    v59 = v51;
    goto LABEL_124;
  }

LABEL_117:
  if (*a3 <= v51)
  {
    v51 = sub_225EB68(a3, v51);
  }

  v61 = *(a1 + 208);
  *v51 = 408;
  v51[2] = v61;
  if (v61 > 0x7F)
  {
    v51[2] = v61 | 0x80;
    v62 = v61 >> 7;
    v51[3] = v61 >> 7;
    v59 = v51 + 4;
    if (v61 >= 0x4000)
    {
      LOBYTE(v51) = v51[3];
      do
      {
        *(v59 - 1) = v51 | 0x80;
        v51 = (v62 >> 7);
        *v59++ = v62 >> 7;
        v63 = v62 >> 14;
        v62 >>= 7;
      }

      while (v63);
    }
  }

  else
  {
    v59 = v51 + 3;
  }

LABEL_124:
  v64 = *(a1 + 8);
  if ((v64 & 1) == 0)
  {
    return v59;
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

  if (*a3 - v59 >= v67)
  {
    v69 = v67;
    memcpy(v59, v68, v67);
    v59 += v69;
    return v59;
  }

  return sub_1957130(a3, v68, v67, v59);
}

uint64_t sub_130EC3C(uint64_t a1)
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
      v7 = sub_1308258(v6);
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
      v14 = sub_1308CE4(v13);
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
      v21 = sub_1309700(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 104);
  v23 = v16 + v22;
  v24 = *(a1 + 112);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = sub_130D000(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 16);
  if (!v29)
  {
    goto LABEL_37;
  }

  if (v29)
  {
    v38 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
    v39 = *(v38 + 23);
    v40 = *(v38 + 8);
    if ((v39 & 0x80u) == 0)
    {
      v40 = v39;
    }

    v23 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v29 & 2) == 0)
    {
LABEL_30:
      if ((v29 & 4) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_62;
    }
  }

  else if ((v29 & 2) == 0)
  {
    goto LABEL_30;
  }

  v41 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
  v42 = *(v41 + 23);
  v43 = *(v41 + 8);
  if ((v42 & 0x80u) == 0)
  {
    v43 = v42;
  }

  v23 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v29 & 4) == 0)
  {
LABEL_31:
    if ((v29 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_65;
  }

LABEL_62:
  v44 = *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL;
  v45 = *(v44 + 23);
  v46 = *(v44 + 8);
  if ((v45 & 0x80u) == 0)
  {
    v46 = v45;
  }

  v23 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v29 & 8) == 0)
  {
LABEL_32:
    if ((v29 & 0x10) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_68;
  }

LABEL_65:
  v47 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
  v48 = *(v47 + 23);
  v49 = *(v47 + 8);
  if ((v48 & 0x80u) == 0)
  {
    v49 = v48;
  }

  v23 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v29 & 0x10) == 0)
  {
LABEL_33:
    if ((v29 & 0x20) == 0)
    {
      goto LABEL_34;
    }

LABEL_71:
    v53 = sub_16E57E8(*(a1 + 160));
    v23 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v29 & 0x40) == 0)
    {
LABEL_35:
      if ((v29 & 0x80) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    goto LABEL_72;
  }

LABEL_68:
  v50 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
  v51 = *(v50 + 23);
  v52 = *(v50 + 8);
  if ((v51 & 0x80u) == 0)
  {
    v52 = v51;
  }

  v23 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v29 & 0x20) != 0)
  {
    goto LABEL_71;
  }

LABEL_34:
  if ((v29 & 0x40) == 0)
  {
    goto LABEL_35;
  }

LABEL_72:
  v54 = sub_16E6E30(*(a1 + 168));
  v23 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v29 & 0x80) != 0)
  {
LABEL_36:
    v23 += ((9 * (__clz(*(a1 + 176) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_37:
  if ((v29 & 0x7F00) == 0)
  {
    goto LABEL_54;
  }

  if ((v29 & 0x100) != 0)
  {
    v55 = *(a1 + 184);
    v56 = ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v55 >= 0)
    {
      v57 = v56;
    }

    else
    {
      v57 = 11;
    }

    v23 += v57;
    if ((v29 & 0x200) == 0)
    {
LABEL_40:
      if ((v29 & 0x400) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_82;
    }
  }

  else if ((v29 & 0x200) == 0)
  {
    goto LABEL_40;
  }

  v58 = *(a1 + 188);
  v59 = ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v58 >= 0)
  {
    v60 = v59;
  }

  else
  {
    v60 = 11;
  }

  v23 += v60;
  if ((v29 & 0x400) == 0)
  {
LABEL_41:
    if ((v29 & 0x800) == 0)
    {
      goto LABEL_42;
    }

LABEL_86:
    v64 = *(a1 + 196);
    v65 = ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v64 >= 0)
    {
      v66 = v65;
    }

    else
    {
      v66 = 11;
    }

    v23 += v66;
    if ((v29 & 0x1000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

LABEL_82:
  v61 = *(a1 + 192);
  v62 = ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v61 >= 0)
  {
    v63 = v62;
  }

  else
  {
    v63 = 11;
  }

  v23 += v63;
  if ((v29 & 0x800) != 0)
  {
    goto LABEL_86;
  }

LABEL_42:
  if ((v29 & 0x1000) != 0)
  {
LABEL_43:
    v30 = *(a1 + 200);
    v31 = ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v30 >= 0)
    {
      v32 = v31;
    }

    else
    {
      v32 = 11;
    }

    v23 += v32;
  }

LABEL_47:
  if ((v29 & 0x2000) != 0)
  {
    v23 += 3;
  }

  if ((v29 & 0x4000) != 0)
  {
    v33 = *(a1 + 208);
    v34 = ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v33 >= 0)
    {
      v35 = v34;
    }

    else
    {
      v35 = 12;
    }

    v23 += v35;
  }

LABEL_54:
  v36 = *(a1 + 8);
  if (v36)
  {
    v67 = v36 & 0xFFFFFFFFFFFFFFFCLL;
    v68 = *((v36 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v68 < 0)
    {
      v68 = *(v67 + 16);
    }

    v23 += v68;
  }

  *(a1 + 20) = v23;
  return v23;
}

void sub_130F138(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13133B8((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_1313444((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_13134D0((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
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
    sub_131355C((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
    v22 = *(a1 + 104) + v19;
    *(a1 + 104) = v22;
    v23 = *(a1 + 112);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 16);
  if (v24)
  {
    if (v24)
    {
      v26 = *(a2 + 120);
      *(a1 + 16) |= 1u;
      v27 = *(a1 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      sub_194EA1C((a1 + 120), (v26 & 0xFFFFFFFFFFFFFFFELL), v28);
      if ((v24 & 2) == 0)
      {
LABEL_16:
        if ((v24 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_44;
      }
    }

    else if ((v24 & 2) == 0)
    {
      goto LABEL_16;
    }

    v29 = *(a2 + 128);
    *(a1 + 16) |= 2u;
    v30 = *(a1 + 8);
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v31 = *v31;
    }

    sub_194EA1C((a1 + 128), (v29 & 0xFFFFFFFFFFFFFFFELL), v31);
    if ((v24 & 4) == 0)
    {
LABEL_17:
      if ((v24 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_47;
    }

LABEL_44:
    v32 = *(a2 + 136);
    *(a1 + 16) |= 4u;
    v33 = *(a1 + 8);
    v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
    if (v33)
    {
      v34 = *v34;
    }

    sub_194EA1C((a1 + 136), (v32 & 0xFFFFFFFFFFFFFFFELL), v34);
    if ((v24 & 8) == 0)
    {
LABEL_18:
      if ((v24 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_50;
    }

LABEL_47:
    v35 = *(a2 + 144);
    *(a1 + 16) |= 8u;
    v36 = *(a1 + 8);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    sub_194EA1C((a1 + 144), (v35 & 0xFFFFFFFFFFFFFFFELL), v37);
    if ((v24 & 0x10) == 0)
    {
LABEL_19:
      if ((v24 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_53;
    }

LABEL_50:
    v38 = *(a2 + 152);
    *(a1 + 16) |= 0x10u;
    v39 = *(a1 + 8);
    v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
    if (v39)
    {
      v40 = *v40;
    }

    sub_194EA1C((a1 + 152), (v38 & 0xFFFFFFFFFFFFFFFELL), v40);
    if ((v24 & 0x20) == 0)
    {
LABEL_20:
      if ((v24 & 0x40) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_61;
    }

LABEL_53:
    *(a1 + 16) |= 0x20u;
    v41 = *(a1 + 160);
    if (!v41)
    {
      v42 = *(a1 + 8);
      v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
      if (v42)
      {
        v43 = *v43;
      }

      v41 = sub_16F5884(v43);
      *(a1 + 160) = v41;
    }

    if (*(a2 + 160))
    {
      v44 = *(a2 + 160);
    }

    else
    {
      v44 = &off_277E630;
    }

    sub_128F8FC(v41, v44);
    if ((v24 & 0x40) == 0)
    {
LABEL_21:
      if ((v24 & 0x80) == 0)
      {
LABEL_23:
        *(a1 + 16) |= v24;
        goto LABEL_24;
      }

LABEL_22:
      *(a1 + 176) = *(a2 + 176);
      goto LABEL_23;
    }

LABEL_61:
    *(a1 + 16) |= 0x40u;
    v45 = *(a1 + 168);
    if (!v45)
    {
      v46 = *(a1 + 8);
      v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
      if (v46)
      {
        v47 = *v47;
      }

      v45 = sub_16F59B8(v47);
      *(a1 + 168) = v45;
    }

    if (*(a2 + 168))
    {
      v48 = *(a2 + 168);
    }

    else
    {
      v48 = &off_277E6B0;
    }

    sub_16E6F14(v45, v48);
    if ((v24 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_24:
  if ((v24 & 0x7F00) == 0)
  {
    goto LABEL_34;
  }

  if ((v24 & 0x100) != 0)
  {
    *(a1 + 184) = *(a2 + 184);
    if ((v24 & 0x200) == 0)
    {
LABEL_27:
      if ((v24 & 0x400) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_72;
    }
  }

  else if ((v24 & 0x200) == 0)
  {
    goto LABEL_27;
  }

  *(a1 + 188) = *(a2 + 188);
  if ((v24 & 0x400) == 0)
  {
LABEL_28:
    if ((v24 & 0x800) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(a1 + 192) = *(a2 + 192);
  if ((v24 & 0x800) == 0)
  {
LABEL_29:
    if ((v24 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(a1 + 196) = *(a2 + 196);
  if ((v24 & 0x1000) == 0)
  {
LABEL_30:
    if ((v24 & 0x2000) == 0)
    {
      goto LABEL_31;
    }

LABEL_75:
    *(a1 + 204) = *(a2 + 204);
    if ((v24 & 0x4000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_74:
  *(a1 + 200) = *(a2 + 200);
  if ((v24 & 0x2000) != 0)
  {
    goto LABEL_75;
  }

LABEL_31:
  if ((v24 & 0x4000) != 0)
  {
LABEL_32:
    *(a1 + 208) = *(a2 + 208);
  }

LABEL_33:
  *(a1 + 16) |= v24;
LABEL_34:
  v25 = *(a2 + 8);
  if (v25)
  {

    sub_1957EF4((a1 + 8), (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_130F56C(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_130D930(a1);

    sub_130F138(a1, a2);
  }
}

BOOL sub_130F5B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_130849C(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if (!v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 56);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = sub_1308F54(*(*(a1 + 64) + 8 * v5));
    v5 = v6;
    if (!v7)
    {
      return 0;
    }
  }

  v9 = *(a1 + 16);
  if ((v9 & 0x20) != 0)
  {
    result = sub_16E5890(*(a1 + 160));
    if (!result)
    {
      return result;
    }

    v9 = *(a1 + 16);
  }

  if ((v9 & 0x40) == 0)
  {
    return 1;
  }

  result = sub_16E7028(*(a1 + 168));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 sub_130F658(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  v8 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v8;
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v9;
  *(a2 + 80) = v10;
  v11 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v11;
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v12;
  *(a2 + 104) = v13;
  v14 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v14;
  v15 = *(a2 + 120);
  *(a2 + 120) = *(a1 + 120);
  *(a1 + 120) = v15;
  v16 = *(a2 + 128);
  *(a2 + 128) = *(a1 + 128);
  *(a1 + 128) = v16;
  v17 = *(a2 + 136);
  *(a2 + 136) = *(a1 + 136);
  *(a1 + 136) = v17;
  v18 = *(a2 + 144);
  *(a2 + 144) = *(a1 + 144);
  *(a1 + 144) = v18;
  v19 = *(a2 + 152);
  *(a2 + 152) = *(a1 + 152);
  *(a1 + 152) = v19;
  v20 = *(a1 + 160);
  v21 = *(a1 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 160) = v20;
  *(a2 + 168) = v21;
  v22 = *(a1 + 176);
  v23 = *(a1 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 176) = v22;
  *(a2 + 184) = v23;
  v24 = *(a1 + 192);
  v25 = *(a1 + 200);
  result = *(a2 + 192);
  *(a1 + 192) = result;
  *(a2 + 192) = v24;
  *(a2 + 200) = v25;
  LODWORD(v24) = *(a1 + 208);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 208) = v24;
  return result;
}

void *sub_130F79C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D32C0;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_130F818(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26D3340;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

void *sub_130F8BC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26D33C0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = 0;
  return result;
}

double sub_130F960(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2[1] = a1;
  *v2 = off_26D3440;
  v2[2] = 0;
  v2[3] = 0;
  *&result = 0x100000001;
  v2[4] = 0x100000001;
  return result;
}

void *sub_130F9E0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D34C0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_130FA58(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D3540;
  *(result + 8) = a1;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 64) = a1;
  *(result + 88) = 0;
  return result;
}

void *sub_130FB08(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D35C0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  *(result + 37) = 0;
  return result;
}

uint64_t sub_130FB90(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26D3640;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = &qword_278E990;
  *(result + 64) = 0;
  return result;
}

void *sub_130FC3C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26D36C0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

void *sub_130FCC0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D3740;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = 0;
  return result;
}

void *sub_130FD64(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26D37C0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = 0;
  return result;
}

double sub_130FE08(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26D3840;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = a1;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = &qword_278E990;
  *(v2 + 128) = &qword_278E990;
  *(v2 + 136) = &qword_278E990;
  *(v2 + 144) = &qword_278E990;
  *(v2 + 152) = &qword_278E990;
  result = 0.0;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0;
  return result;
}

uint64_t sub_13115E8(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = (*(result + 16) + 8);
    do
    {
      result = *v3 + 8;
      v4 = *result;
      *(result + 16) = 0;
      *(result + 32) = 0;
      *(result + 8) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }

      ++v3;
      --v1;
    }

    while (v1);
    *(v2 + 8) = 0;
  }

  return result;
}

uint64_t sub_1311650(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = *(result + 16) + 8;
    do
    {
      result = *v3 + 8;
      v4 = *result;
      *(*v3 + 16) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }

      v3 += 8;
      --v1;
    }

    while (v1);
    *(v2 + 8) = 0;
  }

  return result;
}

void sub_13116B0(void *a1)
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
          sub_1824430();
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

void sub_1311734(void *a1)
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
          sub_12ECE30(*v3);
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

void sub_13117B8(void *a1)
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
          sub_12F0D60(*v3);
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

void sub_131183C(void *a1)
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
          sub_12F0758(*v3);
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

std::string *sub_13118C0(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_186357C(v9);
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
      result = sub_131193C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_131194C(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_12F1A38(v9);
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
      result = sub_13119C8(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_13119D8(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_12F1D4C(v9);
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
      result = sub_1311A54(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_1311A64(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_12F1CC4(v9);
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

void sub_1311BB8(void *a1)
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
          sub_12F2708(*v3);
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

void sub_1311C3C(void *a1)
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
          sub_12F308C(*v3);
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

void sub_1311CC0(void *a1)
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
          sub_12F3A9C(*v3);
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

uint64_t *sub_1311D44(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_12F4494(v9);
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
      result = sub_1311DC0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_1311DD0(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_12F453C(v9);
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
      result = sub_1311E4C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_1311E5C(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_12F45E8(v9);
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
      result = sub_1311ED8(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1311EE8(void *a1)
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
          sub_1579034();
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

void sub_1311F6C(void *a1)
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
          sub_1543C78();
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

std::string *sub_1311FF0(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_157B674(v9);
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
      result = sub_131193C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_131206C(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_1551DC4(v9);
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
      result = sub_13120E8(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_13120F8(void *a1)
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
          sub_12F4674(*v3);
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

std::string *sub_131217C(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_12F544C(v9);
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
      result = sub_13121F8(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1312208(void *a1)
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
          sub_12F558C(*v3);
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

void sub_131228C(void *a1)
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
          sub_12F6AA8(*v3);
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

void sub_1312310(void *a1)
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
          sub_12F7418(*v3);
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

void sub_1312394(void *a1)
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
          sub_12F7E94();
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

void sub_1312418(void *a1)
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
          sub_12F78D8(*v3);
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

void sub_131249C(void *a1)
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
          sub_12FDD44(*v3);
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

void sub_1312520(void *a1)
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
          sub_12FEFA8(*v3);
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

void sub_13125A4(void *a1)
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
          sub_12FFAF8(*v3);
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

void sub_1312628(void *a1)
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
          sub_1302ED4(*v3);
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

std::string *sub_13126AC(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_1306464(v9);
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
      result = sub_131193C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_1312728(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_13065E0(v9);
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
      result = sub_13127A4(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_13127B4(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_1306668(v9);
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
      result = sub_131193C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_1312830(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_1306764(v9);
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
      result = sub_13128AC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_13128BC(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_13066EC(v9);
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

std::string *sub_1312938(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_1306B08(v9);
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
      result = sub_13129B4(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_13129C4(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
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
      sub_1306CB4(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_12E7624(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_1312A40(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_1306D34(v9);
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
      sub_1312ABC(v11, v13);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_1312ACC(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_13070A8(v9);
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
      result = sub_1312B48(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1312B58(void *a1)
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
          sub_16F3700();
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

uint64_t *sub_1312BDC(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16F6438(v9);
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
      result = sub_1312C58(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1312C68(void *a1)
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
          sub_1307388(*v3);
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

void sub_1312CEC(void *a1)
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
          sub_1309840(*v3);
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

void sub_1312D70(void *a1)
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
          sub_130AFDC(*v3);
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

void sub_1312DF4(void *a1)
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
          sub_130A6FC(*v3);
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

void sub_1312E78(void *a1)
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
          sub_138383C();
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

void sub_1312EFC(void *a1)
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
          sub_1307C30(*v3);
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

void sub_1312F80(void *a1)
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
          sub_1308714(*v3);
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

void sub_1313004(void *a1)
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
          sub_1309078(*v3);
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

void sub_1313088(void *a1)
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
          sub_130CA30(*v3);
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

void sub_131310C(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_130F79C(v9);
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
      sub_1313188(v11, v13);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_1313198(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_130F9E0(v9);
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

uint64_t *sub_1313214(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_130FB90(v9);
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
      result = sub_1313290(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_13132A0(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_130FB08(v9);
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
      result = sub_131331C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_131332C(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_13840C4(v9);
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
      result = sub_13133A8(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_13133B8(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_130F818(v9);
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
      sub_1313434(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_1313444(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_130F8BC(v9);
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
      sub_13134C0(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_13134D0(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
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
      sub_130F960(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_131354C(v12, v14);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_131355C(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_130FD64(v9);
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
      result = sub_13135D8(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_13135E8(uint64_t a1, uint64_t a2, std::string *a3)
{

  sub_19586BC(3, v3, a3);
}

void sub_1313600()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(22, v0, v3);
}

void sub_1313640()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(21, v0, v3);
}

void sub_1313680()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(11, v0, v3);
}

void sub_13136C0()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(24, v0, v3);
}

void sub_1313700()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(5, v0, v3);
}

void sub_1313740()
{
  sub_12E8330();
  if (v1)
  {
    sub_1201FD0();
  }

  else
  {
    v2 = sub_11F1920(v0);
    v4 = v2;
  }

  sub_13135E8(v2, v3, v4);
}

void sub_1313778()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(14, v0, v3);
}

void sub_13137B8()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(6, v0, v3);
}

void sub_13137F8()
{
  sub_12E8330();
  if (v2)
  {
    sub_1201FD0();
  }

  else
  {
    v3 = sub_11F1920(v1);
  }

  sub_19586BC(7, v0, v3);
}

void sub_1313838()
{
  dword_278D1A8 = 10000;
  qword_278D1B0 = &off_276E188;
  sub_194F72C(&off_276A488, 10000, 11, 0, 0, &off_276E188);
  dword_278D1B8 = 10000;
  qword_278D1C0 = &off_276E160;
  sub_194F72C(&off_276A3D0, 10000, 11, 0, 0, &off_276E160);
  dword_278D1C8 = 10001;
  qword_278D1D0 = &off_277E2D0;
  sub_194F72C(&off_276A3D0, 10001, 11, 0, 0, &off_277E2D0);
  dword_278D1D8 = 100;
  byte_278D1DC = 0;
  sub_194EE44(&off_2789120, 100, 8, 0, 0);
  dword_278D1E0 = 101;
  qword_278D1E8 = &unk_232CAC8;
  sub_194EE44(&off_2789120, 101, 9, 0, 0);
  dword_278D1F0 = 102;
  qword_278D1F8 = &unk_232CAE0;
  sub_194EE44(&off_2789120, 102, 9, 0, 0);
  dword_278D200 = 103;
  qword_278D208 = &unk_232CAF8;
  sub_194EE44(&off_2789120, 103, 12, 0, 0);
  dword_278D210 = 104;
  qword_278D218 = &unk_232CB10;
  sub_194EE44(&off_2789120, 104, 12, 0, 0);
  dword_278D220 = 105;
  qword_278D228 = &off_276FAB8;
  sub_194F72C(&off_2789120, 105, 11, 0, 0, &off_276FAB8);
  dword_278D230 = 106;
  qword_278D238 = &unk_232CB28;
  sub_194EE44(&off_2789120, 106, 9, 1, 0);
  dword_278D240 = 100;
  qword_278D248 = &off_2776BC0;
  sub_194F72C(&off_2789180, 100, 11, 1, 0, &off_2776BC0);
  dword_278D250 = 101;
  qword_278D258 = &off_276A5E8;
  sub_194F72C(&off_2789180, 101, 11, 1, 0, &off_276A5E8);
  dword_278D260 = 102;
  qword_278D268 = &off_2776C28;
  sub_194F72C(&off_2789180, 102, 11, 1, 0, &off_2776C28);
  dword_278D270 = 1001;
  byte_278D274 = 0;
  sub_194EE44(&off_2782530, 1001, 8, 0, 0);
  dword_278D278 = 1005;
  qword_278D280 = 0;

  sub_194EE44(&off_2782358, 1005, 4, 0, 0);
}

uint64_t sub_1313B70()
{
  qword_27C4D10 = "CITY_TOURLANDMARK_TOURNOTIFICATION_TOUR";
  *algn_27C4D18 = 9;
  dword_27C4D20 = 0;
  qword_27C4D28 = "LANDMARK_TOURNOTIFICATION_TOUR";
  unk_27C4D30 = 13;
  dword_27C4D38 = 1;
  qword_27C4D40 = "NOTIFICATION_TOUR";
  unk_27C4D48 = 17;
  dword_27C4D50 = 2;
  qword_27C4D58 = "ADDRESS_LINEADMIN_AREAAOI_NAMEBUILDINGCOUNTRYFORMATTED_ADDRESSFULL_SUB_PREMISELOCALITYPOSTALSTREETSTREET_NAMESTREET_NUMBERSTREET_PREFIXSTREET_SUFFIXSTREET_TYPESUB_PREMISE_TYPESUB_PREMISE_VALUEUNKNOWNUNKNOWN_AREA";
  unk_27C4D60 = 12;
  dword_27C4D68 = 60;
  qword_27C4D70 = "ADMIN_AREAAOI_NAMEBUILDINGCOUNTRYFORMATTED_ADDRESSFULL_SUB_PREMISELOCALITYPOSTALSTREETSTREET_NAMESTREET_NUMBERSTREET_PREFIXSTREET_SUFFIXSTREET_TYPESUB_PREMISE_TYPESUB_PREMISE_VALUEUNKNOWNUNKNOWN_AREA";
  unk_27C4D78 = 10;
  dword_27C4D80 = 11;
  result = 8;
  qword_27C4D88 = "AOI_NAMEBUILDINGCOUNTRYFORMATTED_ADDRESSFULL_SUB_PREMISELOCALITYPOSTALSTREETSTREET_NAMESTREET_NUMBERSTREET_PREFIXSTREET_SUFFIXSTREET_TYPESUB_PREMISE_TYPESUB_PREMISE_VALUEUNKNOWNUNKNOWN_AREA";
  unk_27C4D90 = 8;
  dword_27C4D98 = 16;
  qword_27C4DA0 = "BUILDINGCOUNTRYFORMATTED_ADDRESSFULL_SUB_PREMISELOCALITYPOSTALSTREETSTREET_NAMESTREET_NUMBERSTREET_PREFIXSTREET_SUFFIXSTREET_TYPESUB_PREMISE_TYPESUB_PREMISE_VALUEUNKNOWNUNKNOWN_AREA";
  unk_27C4DA8 = 8;
  dword_27C4DB0 = 15;
  qword_27C4DB8 = "COUNTRYFORMATTED_ADDRESSFULL_SUB_PREMISELOCALITYPOSTALSTREETSTREET_NAMESTREET_NUMBERSTREET_PREFIXSTREET_SUFFIXSTREET_TYPESUB_PREMISE_TYPESUB_PREMISE_VALUEUNKNOWNUNKNOWN_AREA";
  unk_27C4DC0 = 7;
  dword_27C4DC8 = 10;
  qword_27C4DD0 = "FORMATTED_ADDRESSFULL_SUB_PREMISELOCALITYPOSTALSTREETSTREET_NAMESTREET_NUMBERSTREET_PREFIXSTREET_SUFFIXSTREET_TYPESUB_PREMISE_TYPESUB_PREMISE_VALUEUNKNOWNUNKNOWN_AREA";
  unk_27C4DD8 = 17;
  dword_27C4DE0 = 1;
  qword_27C4DE8 = "FULL_SUB_PREMISELOCALITYPOSTALSTREETSTREET_NAMESTREET_NUMBERSTREET_PREFIXSTREET_SUFFIXSTREET_TYPESUB_PREMISE_TYPESUB_PREMISE_VALUEUNKNOWNUNKNOWN_AREA";
  unk_27C4DF0 = 16;
  dword_27C4DF8 = 40;
  qword_27C4E00 = "LOCALITYPOSTALSTREETSTREET_NAMESTREET_NUMBERSTREET_PREFIXSTREET_SUFFIXSTREET_TYPESUB_PREMISE_TYPESUB_PREMISE_VALUEUNKNOWNUNKNOWN_AREA";
  unk_27C4E08 = 8;
  dword_27C4E10 = 12;
  qword_27C4E18 = "POSTALSTREETSTREET_NAMESTREET_NUMBERSTREET_PREFIXSTREET_SUFFIXSTREET_TYPESUB_PREMISE_TYPESUB_PREMISE_VALUEUNKNOWNUNKNOWN_AREA";
  unk_27C4E20 = 6;
  dword_27C4E28 = 14;
  qword_27C4E30 = "STREETSTREET_NAMESTREET_NUMBERSTREET_PREFIXSTREET_SUFFIXSTREET_TYPESUB_PREMISE_TYPESUB_PREMISE_VALUEUNKNOWNUNKNOWN_AREA";
  unk_27C4E38 = 6;
  dword_27C4E40 = 20;
  qword_27C4E48 = "STREET_NAMESTREET_NUMBERSTREET_PREFIXSTREET_SUFFIXSTREET_TYPESUB_PREMISE_TYPESUB_PREMISE_VALUEUNKNOWNUNKNOWN_AREA";
  unk_27C4E50 = 11;
  dword_27C4E58 = 21;
  qword_27C4E60 = "STREET_NUMBERSTREET_PREFIXSTREET_SUFFIXSTREET_TYPESUB_PREMISE_TYPESUB_PREMISE_VALUEUNKNOWNUNKNOWN_AREA";
  unk_27C4E68 = 13;
  dword_27C4E70 = 30;
  qword_27C4E78 = "STREET_PREFIXSTREET_SUFFIXSTREET_TYPESUB_PREMISE_TYPESUB_PREMISE_VALUEUNKNOWNUNKNOWN_AREA";
  unk_27C4E80 = 13;
  dword_27C4E88 = 22;
  qword_27C4E90 = "STREET_SUFFIXSTREET_TYPESUB_PREMISE_TYPESUB_PREMISE_VALUEUNKNOWNUNKNOWN_AREA";
  unk_27C4E98 = 13;
  dword_27C4EA0 = 23;
  qword_27C4EA8 = "STREET_TYPESUB_PREMISE_TYPESUB_PREMISE_VALUEUNKNOWNUNKNOWN_AREA";
  unk_27C4EB0 = 11;
  dword_27C4EB8 = 24;
  qword_27C4EC0 = "SUB_PREMISE_TYPESUB_PREMISE_VALUEUNKNOWNUNKNOWN_AREA";
  unk_27C4EC8 = 16;
  dword_27C4ED0 = 41;
  qword_27C4ED8 = "SUB_PREMISE_VALUEUNKNOWNUNKNOWN_AREA";
  unk_27C4EE0 = 17;
  dword_27C4EE8 = 42;
  qword_27C4EF0 = "UNKNOWNUNKNOWN_AREA";
  unk_27C4EF8 = 7;
  dword_27C4F00 = 0;
  qword_27C4F08 = "UNKNOWN_AREA";
  unk_27C4F10 = 12;
  dword_27C4F18 = 13;
  qword_27C4F20 = "ABSOLUTEHIGHNEUTRAL";
  *algn_27C4F28 = 8;
  dword_27C4F30 = 2;
  qword_27C4F38 = "HIGHNEUTRAL";
  unk_27C4F40 = 4;
  dword_27C4F48 = 1;
  qword_27C4F50 = "NEUTRAL";
  unk_27C4F58 = 7;
  dword_27C4F60 = 0;
  qword_27C4F68 = "ACCEPTABLEPERFECTUNACCEPTABLEUNKNOWN";
  unk_27C4F70 = 10;
  dword_27C4F78 = 2;
  qword_27C4F80 = "PERFECTUNACCEPTABLEUNKNOWN";
  unk_27C4F88 = 7;
  dword_27C4F90 = 3;
  qword_27C4F98 = "UNACCEPTABLEUNKNOWN";
  unk_27C4FA0 = 12;
  dword_27C4FA8 = 1;
  qword_27C4FB0 = "UNKNOWN";
  unk_27C4FB8 = 7;
  dword_27C4FC0 = 0;
  qword_27C4FC8 = "GEMINI_GEOCODING_CONFIDENCE_ACCEPTABLEGEMINI_GEOCODING_CONFIDENCE_APPROXIMATEGEMINI_GEOCODING_CONFIDENCE_NOT_ACCEPTABLE_LARGE_AREAGEMINI_GEOCODING_CONFIDENCE_NOT_ACCEPTABLE_SMALL_AREAGEMINI_GEOCODING_CONFIDENCE_PERFECTGEMINI_GEOCODING_CONFIDENCE_UNKNOWN";
  unk_27C4FD0 = 38;
  dword_27C4FD8 = 3;
  qword_27C4FE0 = "GEMINI_GEOCODING_CONFIDENCE_APPROXIMATEGEMINI_GEOCODING_CONFIDENCE_NOT_ACCEPTABLE_LARGE_AREAGEMINI_GEOCODING_CONFIDENCE_NOT_ACCEPTABLE_SMALL_AREAGEMINI_GEOCODING_CONFIDENCE_PERFECTGEMINI_GEOCODING_CONFIDENCE_UNKNOWN";
  unk_27C4FE8 = 39;
  dword_27C4FF0 = 2;
  qword_27C4FF8 = "GEMINI_GEOCODING_CONFIDENCE_NOT_ACCEPTABLE_LARGE_AREAGEMINI_GEOCODING_CONFIDENCE_NOT_ACCEPTABLE_SMALL_AREAGEMINI_GEOCODING_CONFIDENCE_PERFECTGEMINI_GEOCODING_CONFIDENCE_UNKNOWN";
  unk_27C5000 = 53;
  dword_27C5008 = 5;
  qword_27C5010 = "GEMINI_GEOCODING_CONFIDENCE_NOT_ACCEPTABLE_SMALL_AREAGEMINI_GEOCODING_CONFIDENCE_PERFECTGEMINI_GEOCODING_CONFIDENCE_UNKNOWN";
  unk_27C5018 = 53;
  dword_27C5020 = 4;
  qword_27C5028 = "GEMINI_GEOCODING_CONFIDENCE_PERFECTGEMINI_GEOCODING_CONFIDENCE_UNKNOWN";
  unk_27C5030 = 35;
  dword_27C5038 = 1;
  qword_27C5040 = "GEMINI_GEOCODING_CONFIDENCE_UNKNOWN";
  unk_27C5048 = 35;
  dword_27C5050 = 0;
  qword_27C5058 = "FUZZY_MATCHMATCHMISSUNKNOWN";
  unk_27C5060 = 11;
  dword_27C5068 = 3;
  qword_27C5070 = "MATCHMISSUNKNOWN";
  unk_27C5078 = 5;
  dword_27C5080 = 2;
  qword_27C5088 = "MISSUNKNOWN";
  unk_27C5090 = 4;
  dword_27C5098 = 1;
  qword_27C50A0 = "UNKNOWN";
  unk_27C50A8 = 7;
  dword_27C50B0 = 0;
  qword_27C50B8 = "MATCHED_TOKEN_SET_TYPE_UNKNOWNMATCHED_TOKEN_TYPE_ABOVE_STREET_TOKEN_DROPMATCHED_TOKEN_TYPE_CRF";
  unk_27C50C0 = 30;
  dword_27C50C8 = 0;
  qword_27C50D0 = "MATCHED_TOKEN_TYPE_ABOVE_STREET_TOKEN_DROPMATCHED_TOKEN_TYPE_CRF";
  unk_27C50D8 = 42;
  dword_27C50E0 = 2;
  qword_27C50E8 = "MATCHED_TOKEN_TYPE_CRF";
  unk_27C50F0 = 22;
  dword_27C50F8 = 1;
  qword_27C5100 = "AVAILABLEOUT_OF_SERVICEUNAVAILABLEUNKNOWN";
  *algn_27C5108 = 9;
  dword_27C5110 = 2;
  qword_27C5118 = "OUT_OF_SERVICEUNAVAILABLEUNKNOWN";
  unk_27C5120 = 14;
  dword_27C5128 = 4;
  qword_27C5130 = "UNAVAILABLEUNKNOWN";
  unk_27C5138 = 11;
  dword_27C5140 = 3;
  qword_27C5148 = "UNKNOWN";
  unk_27C5150 = 7;
  dword_27C5158 = 1;
  qword_27C5160 = "CHADEMOCONNECTOR_TYPE_UNKNOWNDOMESTIC_ADOMESTIC_BDOMESTIC_CDOMESTIC_DDOMESTIC_EDOMESTIC_FDOMESTIC_GDOMESTIC_HDOMESTIC_IDOMESTIC_JDOMESTIC_KDOMESTIC_LGBT_ACGBT_DCIEC_60309_2_single_16IEC_60309_2_three_16IEC_60309_2_three_32IEC_60309_2_three_64IEC_62196_T1IEC_62196_T1_COMBOIEC_62196_T2IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  *algn_27C5168 = 7;
  dword_27C5170 = 1;
  qword_27C5178 = "CONNECTOR_TYPE_UNKNOWNDOMESTIC_ADOMESTIC_BDOMESTIC_CDOMESTIC_DDOMESTIC_EDOMESTIC_FDOMESTIC_GDOMESTIC_HDOMESTIC_IDOMESTIC_JDOMESTIC_KDOMESTIC_LGBT_ACGBT_DCIEC_60309_2_single_16IEC_60309_2_three_16IEC_60309_2_three_32IEC_60309_2_three_64IEC_62196_T1IEC_62196_T1_COMBOIEC_62196_T2IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  unk_27C5180 = 22;
  dword_27C5188 = 0;
  qword_27C5190 = "DOMESTIC_ADOMESTIC_BDOMESTIC_CDOMESTIC_DDOMESTIC_EDOMESTIC_FDOMESTIC_GDOMESTIC_HDOMESTIC_IDOMESTIC_JDOMESTIC_KDOMESTIC_LGBT_ACGBT_DCIEC_60309_2_single_16IEC_60309_2_three_16IEC_60309_2_three_32IEC_60309_2_three_64IEC_62196_T1IEC_62196_T1_COMBOIEC_62196_T2IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  unk_27C5198 = 10;
  dword_27C51A0 = 2;
  qword_27C51A8 = "DOMESTIC_BDOMESTIC_CDOMESTIC_DDOMESTIC_EDOMESTIC_FDOMESTIC_GDOMESTIC_HDOMESTIC_IDOMESTIC_JDOMESTIC_KDOMESTIC_LGBT_ACGBT_DCIEC_60309_2_single_16IEC_60309_2_three_16IEC_60309_2_three_32IEC_60309_2_three_64IEC_62196_T1IEC_62196_T1_COMBOIEC_62196_T2IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  unk_27C51B0 = 10;
  dword_27C51B8 = 3;
  qword_27C51C0 = "DOMESTIC_CDOMESTIC_DDOMESTIC_EDOMESTIC_FDOMESTIC_GDOMESTIC_HDOMESTIC_IDOMESTIC_JDOMESTIC_KDOMESTIC_LGBT_ACGBT_DCIEC_60309_2_single_16IEC_60309_2_three_16IEC_60309_2_three_32IEC_60309_2_three_64IEC_62196_T1IEC_62196_T1_COMBOIEC_62196_T2IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  unk_27C51C8 = 10;
  dword_27C51D0 = 4;
  qword_27C51D8 = "DOMESTIC_DDOMESTIC_EDOMESTIC_FDOMESTIC_GDOMESTIC_HDOMESTIC_IDOMESTIC_JDOMESTIC_KDOMESTIC_LGBT_ACGBT_DCIEC_60309_2_single_16IEC_60309_2_three_16IEC_60309_2_three_32IEC_60309_2_three_64IEC_62196_T1IEC_62196_T1_COMBOIEC_62196_T2IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  unk_27C51E0 = 10;
  dword_27C51E8 = 5;
  qword_27C51F0 = "DOMESTIC_EDOMESTIC_FDOMESTIC_GDOMESTIC_HDOMESTIC_IDOMESTIC_JDOMESTIC_KDOMESTIC_LGBT_ACGBT_DCIEC_60309_2_single_16IEC_60309_2_three_16IEC_60309_2_three_32IEC_60309_2_three_64IEC_62196_T1IEC_62196_T1_COMBOIEC_62196_T2IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  unk_27C51F8 = 10;
  dword_27C5200 = 6;
  qword_27C5208 = "DOMESTIC_FDOMESTIC_GDOMESTIC_HDOMESTIC_IDOMESTIC_JDOMESTIC_KDOMESTIC_LGBT_ACGBT_DCIEC_60309_2_single_16IEC_60309_2_three_16IEC_60309_2_three_32IEC_60309_2_three_64IEC_62196_T1IEC_62196_T1_COMBOIEC_62196_T2IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  unk_27C5210 = 10;
  dword_27C5218 = 7;
  qword_27C5220 = "DOMESTIC_GDOMESTIC_HDOMESTIC_IDOMESTIC_JDOMESTIC_KDOMESTIC_LGBT_ACGBT_DCIEC_60309_2_single_16IEC_60309_2_three_16IEC_60309_2_three_32IEC_60309_2_three_64IEC_62196_T1IEC_62196_T1_COMBOIEC_62196_T2IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  unk_27C5228 = 10;
  dword_27C5230 = 8;
  qword_27C5238 = "DOMESTIC_HDOMESTIC_IDOMESTIC_JDOMESTIC_KDOMESTIC_LGBT_ACGBT_DCIEC_60309_2_single_16IEC_60309_2_three_16IEC_60309_2_three_32IEC_60309_2_three_64IEC_62196_T1IEC_62196_T1_COMBOIEC_62196_T2IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  unk_27C5240 = 10;
  dword_27C5248 = 9;
  qword_27C5250 = "DOMESTIC_IDOMESTIC_JDOMESTIC_KDOMESTIC_LGBT_ACGBT_DCIEC_60309_2_single_16IEC_60309_2_three_16IEC_60309_2_three_32IEC_60309_2_three_64IEC_62196_T1IEC_62196_T1_COMBOIEC_62196_T2IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  unk_27C5258 = 10;
  dword_27C5260 = 10;
  qword_27C5268 = "DOMESTIC_JDOMESTIC_KDOMESTIC_LGBT_ACGBT_DCIEC_60309_2_single_16IEC_60309_2_three_16IEC_60309_2_three_32IEC_60309_2_three_64IEC_62196_T1IEC_62196_T1_COMBOIEC_62196_T2IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  unk_27C5270 = 10;
  dword_27C5278 = 11;
  qword_27C5280 = "DOMESTIC_KDOMESTIC_LGBT_ACGBT_DCIEC_60309_2_single_16IEC_60309_2_three_16IEC_60309_2_three_32IEC_60309_2_three_64IEC_62196_T1IEC_62196_T1_COMBOIEC_62196_T2IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  unk_27C5288 = 10;
  dword_27C5290 = 12;
  qword_27C5298 = "DOMESTIC_LGBT_ACGBT_DCIEC_60309_2_single_16IEC_60309_2_three_16IEC_60309_2_three_32IEC_60309_2_three_64IEC_62196_T1IEC_62196_T1_COMBOIEC_62196_T2IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  unk_27C52A0 = 10;
  dword_27C52A8 = 13;
  qword_27C52B0 = "GBT_ACGBT_DCIEC_60309_2_single_16IEC_60309_2_three_16IEC_60309_2_three_32IEC_60309_2_three_64IEC_62196_T1IEC_62196_T1_COMBOIEC_62196_T2IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  unk_27C52B8 = 6;
  dword_27C52C0 = 28;
  qword_27C52C8 = "GBT_DCIEC_60309_2_single_16IEC_60309_2_three_16IEC_60309_2_three_32IEC_60309_2_three_64IEC_62196_T1IEC_62196_T1_COMBOIEC_62196_T2IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  unk_27C52D0 = 6;
  dword_27C52D8 = 29;
  qword_27C52E0 = "IEC_60309_2_single_16IEC_60309_2_three_16IEC_60309_2_three_32IEC_60309_2_three_64IEC_62196_T1IEC_62196_T1_COMBOIEC_62196_T2IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  unk_27C52E8 = 21;
  dword_27C52F0 = 14;
  qword_27C52F8 = "IEC_60309_2_three_16IEC_60309_2_three_32IEC_60309_2_three_64IEC_62196_T1IEC_62196_T1_COMBOIEC_62196_T2IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  unk_27C5300 = 20;
  dword_27C5308 = 15;
  qword_27C5310 = "IEC_60309_2_three_32IEC_60309_2_three_64IEC_62196_T1IEC_62196_T1_COMBOIEC_62196_T2IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  unk_27C5318 = 20;
  dword_27C5320 = 16;
  qword_27C5328 = "IEC_60309_2_three_64IEC_62196_T1IEC_62196_T1_COMBOIEC_62196_T2IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  unk_27C5330 = 20;
  dword_27C5338 = 17;
  qword_27C5340 = "IEC_62196_T1IEC_62196_T1_COMBOIEC_62196_T2IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  unk_27C5348 = 12;
  dword_27C5350 = 18;
  qword_27C5358 = "IEC_62196_T1_COMBOIEC_62196_T2IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  unk_27C5360 = 18;
  qword_27C5370 = "IEC_62196_T2IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  qword_27C5388 = "IEC_62196_T2_COMBOIEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  qword_27C53A0 = "IEC_62196_T3AIEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  qword_27C53B8 = "IEC_62196_T3CPANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  dword_27C5368 = 19;
  qword_27C5378 = 12;
  dword_27C5380 = 20;
  qword_27C5390 = 18;
  dword_27C5398 = 21;
  qword_27C53A8 = 13;
  dword_27C53B0 = 22;
  qword_27C53C0 = 13;
  dword_27C53C8 = 23;
  qword_27C53D0 = "PANTOGRAPH_BOTTOM_UPPANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  qword_27C53D8 = 20;
  dword_27C53E0 = 24;
  qword_27C53E8 = "PANTOGRAPH_TOP_DOWNTESLA_RTESLA_S";
  qword_27C53F0 = 19;
  qword_27C5400 = "TESLA_RTESLA_S";
  dword_27C53F8 = 25;
  qword_27C5408 = 7;
  qword_27C5418 = "TESLA_S";
  dword_27C5410 = 26;
  qword_27C5420 = 7;
  dword_27C5428 = 27;
  qword_27C5448 = "AC_3_PHASEDCPOWER_TYPE_UNKNOWN";
  unk_27C5450 = 10;
  qword_27C5460 = "DCPOWER_TYPE_UNKNOWN";
  unk_27C5468 = 2;
  qword_27C5478 = "POWER_TYPE_UNKNOWN";
  unk_27C5480 = 18;
  qword_27C5430 = "AC_1_PHASEAC_3_PHASEDCPOWER_TYPE_UNKNOWN";
  *algn_27C5438 = 10;
  dword_27C5440 = 1;
  dword_27C5458 = 2;
  dword_27C5470 = 3;
  dword_27C5488 = 0;
  qword_27C54A8 = "LIVE_EVENTLOGOPERSON_HEADSHOTPOST_EVENTPRE_EVENTUNKNOWN_IMAGE_TYPEUP_NEXT_BACKGROUND";
  qword_27C54C0 = "LOGOPERSON_HEADSHOTPOST_EVENTPRE_EVENTUNKNOWN_IMAGE_TYPEUP_NEXT_BACKGROUND";
  qword_27C54D8 = "PERSON_HEADSHOTPOST_EVENTPRE_EVENTUNKNOWN_IMAGE_TYPEUP_NEXT_BACKGROUND";
  qword_27C54F0 = "POST_EVENTPRE_EVENTUNKNOWN_IMAGE_TYPEUP_NEXT_BACKGROUND";
  qword_27C5508 = "PRE_EVENTUNKNOWN_IMAGE_TYPEUP_NEXT_BACKGROUND";
  qword_27C5520 = "UNKNOWN_IMAGE_TYPEUP_NEXT_BACKGROUND";
  qword_27C5490 = "ACTION_SHOTLIVE_EVENTLOGOPERSON_HEADSHOTPOST_EVENTPRE_EVENTUNKNOWN_IMAGE_TYPEUP_NEXT_BACKGROUND";
  qword_27C5538 = "UP_NEXT_BACKGROUND";
  qword_27C5568 = "CANCELLEDDELAYEDFINALFORFEITIN_PROGRESSPOSTPONEDPRE_GAMESUSPENDEDUNKNOWN_STATUS";
  qword_27C5580 = "DELAYEDFINALFORFEITIN_PROGRESSPOSTPONEDPRE_GAMESUSPENDEDUNKNOWN_STATUS";
  qword_27C55B0 = "FORFEITIN_PROGRESSPOSTPONEDPRE_GAMESUSPENDEDUNKNOWN_STATUS";
  unk_27C55B8 = 7;
  qword_27C55E0 = "POSTPONEDPRE_GAMESUSPENDEDUNKNOWN_STATUS";
  qword_27C55C8 = "IN_PROGRESSPOSTPONEDPRE_GAMESUSPENDEDUNKNOWN_STATUS";
  unk_27C55D0 = 11;
  dword_27C55C0 = 9;
  dword_27C55D8 = 2;
  qword_27C5598 = "FINALFORFEITIN_PROGRESSPOSTPONEDPRE_GAMESUSPENDEDUNKNOWN_STATUS";
  unk_27C55A0 = 5;
  dword_27C5590 = 8;
  dword_27C55A8 = 4;
  qword_27C5498 = 11;
  dword_27C54A0 = 7;
  dword_27C5560 = 3;
  qword_27C5570 = 9;
  dword_27C5578 = 7;
  qword_27C5588 = 7;
  qword_27C54B0 = 10;
  dword_27C5530 = 0;
  qword_27C5540 = 18;
  dword_27C5548 = 5;
  qword_27C5550 = "BREAKCANCELLEDDELAYEDFINALFORFEITIN_PROGRESSPOSTPONEDPRE_GAMESUSPENDEDUNKNOWN_STATUS";
  *algn_27C5558 = 5;
  dword_27C54B8 = 3;
  qword_27C54C8 = 4;
  dword_27C54D0 = 1;
  qword_27C5510 = 9;
  dword_27C5518 = 2;
  qword_27C5528 = 18;
  qword_27C54E0 = 15;
  dword_27C54E8 = 6;
  qword_27C54F8 = 10;
  dword_27C5500 = 4;
  qword_27C55F8 = "PRE_GAMESUSPENDEDUNKNOWN_STATUS";
  unk_27C5600 = 8;
  qword_27C5610 = "SUSPENDEDUNKNOWN_STATUS";
  unk_27C5618 = 9;
  qword_27C5628 = "UNKNOWN_STATUS";
  unk_27C5630 = 14;
  qword_27C55E8 = 9;
  dword_27C55F0 = 5;
  dword_27C5608 = 1;
  dword_27C5620 = 6;
  dword_27C5638 = 0;
  qword_27C5658 = "INNINGLAPOVERTIMEPERIODQUARTERSETSHOOTOUTSUNKNOWN_PERIOD";
  unk_27C5660 = 6;
  qword_27C5670 = "LAPOVERTIMEPERIODQUARTERSETSHOOTOUTSUNKNOWN_PERIOD";
  unk_27C5678 = 3;
  qword_27C5688 = "OVERTIMEPERIODQUARTERSETSHOOTOUTSUNKNOWN_PERIOD";
  unk_27C5690 = 8;
  qword_27C56A0 = "PERIODQUARTERSETSHOOTOUTSUNKNOWN_PERIOD";
  unk_27C56A8 = 6;
  qword_27C56B8 = "QUARTERSETSHOOTOUTSUNKNOWN_PERIOD";
  unk_27C56C0 = 7;
  qword_27C56D0 = "SETSHOOTOUTSUNKNOWN_PERIOD";
  unk_27C56D8 = 3;
  qword_27C56E8 = "SHOOTOUTSUNKNOWN_PERIOD";
  unk_27C56F0 = 9;
  qword_27C5700 = "UNKNOWN_PERIOD";
  unk_27C5708 = 14;
  qword_27C5640 = "HALFINNINGLAPOVERTIMEPERIODQUARTERSETSHOOTOUTSUNKNOWN_PERIOD";
  *algn_27C5648 = 4;
  dword_27C5650 = 1;
  dword_27C5668 = 3;
  dword_27C5680 = 7;
  dword_27C5698 = 5;
  dword_27C56B0 = 8;
  dword_27C56C8 = 2;
  dword_27C56E0 = 4;
  dword_27C56F8 = 6;
  dword_27C5710 = 0;
  qword_27C5730 = "TOPUNKNOWN_PERIOD_SUBDIVISION";
  unk_27C5738 = 3;
  qword_27C5748 = "UNKNOWN_PERIOD_SUBDIVISION";
  unk_27C5750 = 26;
  qword_27C5718 = "BOTTOMTOPUNKNOWN_PERIOD_SUBDIVISION";
  unk_27C5720 = 6;
  dword_27C5728 = 2;
  dword_27C5740 = 1;
  dword_27C5758 = 0;
  qword_27C5778 = "TEAM";
  unk_27C5780 = 4;
  qword_27C5760 = "INDIVIDUALTEAM";
  *algn_27C5768 = 10;
  dword_27C5770 = 1;
  dword_27C5788 = 0;
  qword_27C57A8 = "HOMEUNKNOWN_COMPETITOR_QUALIFIER";
  unk_27C57B0 = 4;
  qword_27C5790 = "AWAYHOMEUNKNOWN_COMPETITOR_QUALIFIER";
  *algn_27C5798 = 4;
  dword_27C57A0 = 1;
  dword_27C57B8 = 2;
  qword_27C57C0 = "UNKNOWN_COMPETITOR_QUALIFIER";
  unk_27C57C8 = 28;
  dword_27C57D0 = 0;
  qword_27C57F0 = "TROPHYUNKNOWN_PRIZE_TYPE";
  unk_27C57F8 = 6;
  qword_27C5808 = "UNKNOWN_PRIZE_TYPE";
  unk_27C5810 = 18;
  qword_27C57D8 = "MEDALTROPHYUNKNOWN_PRIZE_TYPE";
  unk_27C57E0 = 5;
  dword_27C57E8 = 1;
  dword_27C5800 = 2;
  dword_27C5818 = 0;
  qword_27C5838 = "GOLDSILVERUNKNOWN_PRIZE_SUB_TYPE";
  unk_27C5840 = 4;
  qword_27C5850 = "SILVERUNKNOWN_PRIZE_SUB_TYPE";
  unk_27C5858 = 6;
  qword_27C5868 = "UNKNOWN_PRIZE_SUB_TYPE";
  unk_27C5870 = 22;
  qword_27C5820 = "BRONZEGOLDSILVERUNKNOWN_PRIZE_SUB_TYPE";
  *algn_27C5828 = 6;
  dword_27C5830 = 3;
  dword_27C5848 = 1;
  dword_27C5860 = 2;
  dword_27C5878 = 0;
  qword_27C5898 = "TRAILINGUNKNOWN_COMPETITOR_STATUS";
  unk_27C58A0 = 8;
  qword_27C58B0 = "UNKNOWN_COMPETITOR_STATUS";
  unk_27C58B8 = 25;
  qword_27C5880 = "LEADINGTRAILINGUNKNOWN_COMPETITOR_STATUS";
  *algn_27C5888 = 7;
  dword_27C5890 = 1;
  dword_27C58A8 = 2;
  dword_27C58C0 = 0;
  qword_27C58E0 = "VEHICLE_TYPE_ELECTRIC_BIKEVEHICLE_TYPE_ELECTRIC_SCOOTERVEHICLE_TYPE_MOPEDVEHICLE_TYPE_SCOOTERVEHICLE_TYPE_UNKNOWN";
  unk_27C58E8 = 26;
  qword_27C58F8 = "VEHICLE_TYPE_ELECTRIC_SCOOTERVEHICLE_TYPE_MOPEDVEHICLE_TYPE_SCOOTERVEHICLE_TYPE_UNKNOWN";
  qword_27C5900 = 29;
  qword_27C5910 = "VEHICLE_TYPE_MOPEDVEHICLE_TYPE_SCOOTERVEHICLE_TYPE_UNKNOWN";
  unk_27C5918 = 18;
  qword_27C5928 = "VEHICLE_TYPE_SCOOTERVEHICLE_TYPE_UNKNOWN";
  unk_27C5930 = 20;
  qword_27C5940 = "VEHICLE_TYPE_UNKNOWN";
  unk_27C5948 = 20;
  qword_27C58C8 = "VEHICLE_TYPE_BIKEVEHICLE_TYPE_ELECTRIC_BIKEVEHICLE_TYPE_ELECTRIC_SCOOTERVEHICLE_TYPE_MOPEDVEHICLE_TYPE_SCOOTERVEHICLE_TYPE_UNKNOWN";
  unk_27C58D0 = 17;
  dword_27C58D8 = 1;
  dword_27C58F0 = 2;
  dword_27C5908 = 4;
  dword_27C5920 = 5;
  dword_27C5938 = 3;
  dword_27C5950 = 0;
  qword_27C5970 = "APPLE_STORE_SPECIAL_MESSAGEBIKESHAREBUSINESS_ADVISORYDOCKLESS_BIKESEV_CHARGINGFLIGHTSGAS_STATIONSHEARTBEATSPORTSTODAY_AT_APPLE";
  unk_27C5978 = 27;
  qword_27C5988 = "BIKESHAREBUSINESS_ADVISORYDOCKLESS_BIKESEV_CHARGINGFLIGHTSGAS_STATIONSHEARTBEATSPORTSTODAY_AT_APPLE";
  unk_27C5990 = 9;
  qword_27C59A0 = "BUSINESS_ADVISORYDOCKLESS_BIKESEV_CHARGINGFLIGHTSGAS_STATIONSHEARTBEATSPORTSTODAY_AT_APPLE";
  unk_27C59A8 = 17;
  qword_27C59B8 = "DOCKLESS_BIKESEV_CHARGINGFLIGHTSGAS_STATIONSHEARTBEATSPORTSTODAY_AT_APPLE";
  unk_27C59C0 = 14;
  qword_27C59D0 = "EV_CHARGINGFLIGHTSGAS_STATIONSHEARTBEATSPORTSTODAY_AT_APPLE";
  unk_27C59D8 = 11;
  qword_27C59E8 = "FLIGHTSGAS_STATIONSHEARTBEATSPORTSTODAY_AT_APPLE";
  unk_27C59F0 = 7;
  qword_27C5A00 = "GAS_STATIONSHEARTBEATSPORTSTODAY_AT_APPLE";
  unk_27C5A08 = 12;
  qword_27C5A18 = "HEARTBEATSPORTSTODAY_AT_APPLE";
  unk_27C5A20 = 9;
  qword_27C5A30 = "SPORTSTODAY_AT_APPLE";
  unk_27C5A38 = 6;
  qword_27C5958 = "ANIMALAPPLE_STORE_SPECIAL_MESSAGEBIKESHAREBUSINESS_ADVISORYDOCKLESS_BIKESEV_CHARGINGFLIGHTSGAS_STATIONSHEARTBEATSPORTSTODAY_AT_APPLE";
  unk_27C5960 = 6;
  dword_27C5968 = 8;
  dword_27C5980 = 9;
  dword_27C5998 = 2;
  dword_27C59B0 = 10;
  dword_27C59C8 = 5;
  dword_27C59E0 = 6;
  dword_27C59F8 = 3;
  dword_27C5A10 = 4;
  dword_27C5A28 = 11;
  dword_27C5A40 = 1;
  qword_27C5A48 = "TODAY_AT_APPLE";
  unk_27C5A50 = 14;
  dword_27C5A58 = 7;
  qword_27C5A78 = "INTERNALPUBLIC";
  unk_27C5A80 = 8;
  qword_27C5A60 = "DEVELOPMENTINTERNALPUBLIC";
  *algn_27C5A68 = 11;
  dword_27C5A70 = 3;
  dword_27C5A88 = 1;
  qword_27C5A90 = "PUBLIC";
  unk_27C5A98 = 6;
  dword_27C5AA0 = 2;
  qword_27C5AC0 = "MIX_PARITYODD_PARITYUNKNOWN_PARITY";
  unk_27C5AC8 = 10;
  qword_27C5AD8 = "ODD_PARITYUNKNOWN_PARITY";
  unk_27C5AE0 = 10;
  qword_27C5AA8 = "EVEN_PARITYMIX_PARITYODD_PARITYUNKNOWN_PARITY";
  unk_27C5AB0 = 11;
  dword_27C5AB8 = 2;
  dword_27C5AD0 = 4;
  dword_27C5AE8 = 3;
  qword_27C5AF0 = "UNKNOWN_PARITY";
  unk_27C5AF8 = 14;
  dword_27C5B00 = 1;
  qword_27C5B08 = "LEFT_SIDERIGHT_SIDE";
  unk_27C5B10 = 9;
  dword_27C5B18 = 1;
  qword_27C5B20 = "RIGHT_SIDE";
  unk_27C5B28 = 10;
  dword_27C5B30 = 2;
  qword_27C5B40 = 28;
  dword_27C5B48 = 11;
  qword_27C5B50 = "ENTITY_TYPE_BUILDINGENTITY_TYPE_CHOMEENTITY_TYPE_CITYENTITY_TYPE_CONTINENTENTITY_TYPE_COUNTRYENTITY_TYPE_COUNTYENTITY_TYPE_ISLANDENTITY_TYPE_NEIGHBORHOODENTITY_TYPE_OAZAENTITY_TYPE_POSTALENTITY_TYPE_SECTORENTITY_TYPE_STATEENTITY_TYPE_STREETENTITY_TYPE_SUB_POSTALENTITY_TYPE_UNKNOWNENTITY_TYPE_WARDENTITY_TYPE_WATER";
  unk_27C5B58 = 20;
  qword_27C5B98 = "ENTITY_TYPE_CONTINENTENTITY_TYPE_COUNTRYENTITY_TYPE_COUNTYENTITY_TYPE_ISLANDENTITY_TYPE_NEIGHBORHOODENTITY_TYPE_OAZAENTITY_TYPE_POSTALENTITY_TYPE_SECTORENTITY_TYPE_STATEENTITY_TYPE_STREETENTITY_TYPE_SUB_POSTALENTITY_TYPE_UNKNOWNENTITY_TYPE_WARDENTITY_TYPE_WATER";
  unk_27C5BA0 = 21;
  dword_27C5BA8 = 13;
  qword_27C5BE0 = "ENTITY_TYPE_ISLANDENTITY_TYPE_NEIGHBORHOODENTITY_TYPE_OAZAENTITY_TYPE_POSTALENTITY_TYPE_SECTORENTITY_TYPE_STATEENTITY_TYPE_STREETENTITY_TYPE_SUB_POSTALENTITY_TYPE_UNKNOWNENTITY_TYPE_WARDENTITY_TYPE_WATER";
  unk_27C5BE8 = 18;
  dword_27C5C08 = 12;
  qword_27C5C10 = "ENTITY_TYPE_OAZAENTITY_TYPE_POSTALENTITY_TYPE_SECTORENTITY_TYPE_STATEENTITY_TYPE_STREETENTITY_TYPE_SUB_POSTALENTITY_TYPE_UNKNOWNENTITY_TYPE_WARDENTITY_TYPE_WATER";
  qword_27C5C28 = "ENTITY_TYPE_POSTALENTITY_TYPE_SECTORENTITY_TYPE_STATEENTITY_TYPE_STREETENTITY_TYPE_SUB_POSTALENTITY_TYPE_UNKNOWNENTITY_TYPE_WARDENTITY_TYPE_WATER";
  unk_27C5C30 = 18;
  dword_27C5C38 = 14;
  qword_27C5C40 = "ENTITY_TYPE_SECTORENTITY_TYPE_STATEENTITY_TYPE_STREETENTITY_TYPE_SUB_POSTALENTITY_TYPE_UNKNOWNENTITY_TYPE_WARDENTITY_TYPE_WATER";
  unk_27C5C48 = 18;
  qword_27C5C58 = "ENTITY_TYPE_STATEENTITY_TYPE_STREETENTITY_TYPE_SUB_POSTALENTITY_TYPE_UNKNOWNENTITY_TYPE_WARDENTITY_TYPE_WATER";
  qword_27C5C70 = "ENTITY_TYPE_STREETENTITY_TYPE_SUB_POSTALENTITY_TYPE_UNKNOWNENTITY_TYPE_WARDENTITY_TYPE_WATER";
  unk_27C5C78 = 18;
  qword_27C5BC8 = "ENTITY_TYPE_COUNTYENTITY_TYPE_ISLANDENTITY_TYPE_NEIGHBORHOODENTITY_TYPE_OAZAENTITY_TYPE_POSTALENTITY_TYPE_SECTORENTITY_TYPE_STATEENTITY_TYPE_STREETENTITY_TYPE_SUB_POSTALENTITY_TYPE_UNKNOWNENTITY_TYPE_WARDENTITY_TYPE_WATER";
  unk_27C5BD0 = 18;
  qword_27C5C88 = "ENTITY_TYPE_SUB_POSTALENTITY_TYPE_UNKNOWNENTITY_TYPE_WARDENTITY_TYPE_WATER";
  unk_27C5C90 = 22;
  qword_27C5CA0 = "ENTITY_TYPE_UNKNOWNENTITY_TYPE_WARDENTITY_TYPE_WATER";
  unk_27C5CA8 = 19;
  qword_27C5BB0 = "ENTITY_TYPE_COUNTRYENTITY_TYPE_COUNTYENTITY_TYPE_ISLANDENTITY_TYPE_NEIGHBORHOODENTITY_TYPE_OAZAENTITY_TYPE_POSTALENTITY_TYPE_SECTORENTITY_TYPE_STATEENTITY_TYPE_STREETENTITY_TYPE_SUB_POSTALENTITY_TYPE_UNKNOWNENTITY_TYPE_WARDENTITY_TYPE_WATER";
  unk_27C5BB8 = 19;
  qword_27C5CB8 = "ENTITY_TYPE_WARDENTITY_TYPE_WATER";
  unk_27C5CC0 = 16;
  qword_27C5B80 = "ENTITY_TYPE_CITYENTITY_TYPE_CONTINENTENTITY_TYPE_COUNTRYENTITY_TYPE_COUNTYENTITY_TYPE_ISLANDENTITY_TYPE_NEIGHBORHOODENTITY_TYPE_OAZAENTITY_TYPE_POSTALENTITY_TYPE_SECTORENTITY_TYPE_STATEENTITY_TYPE_STREETENTITY_TYPE_SUB_POSTALENTITY_TYPE_UNKNOWNENTITY_TYPE_WARDENTITY_TYPE_WATER";
  unk_27C5B88 = 16;
  dword_27C5BF0 = 16;
  qword_27C5C18 = 16;
  qword_27C5CD0 = "ENTITY_TYPE_WATER";
  unk_27C5CD8 = 17;
  qword_27C5B68 = "ENTITY_TYPE_CHOMEENTITY_TYPE_CITYENTITY_TYPE_CONTINENTENTITY_TYPE_COUNTRYENTITY_TYPE_COUNTYENTITY_TYPE_ISLANDENTITY_TYPE_NEIGHBORHOODENTITY_TYPE_OAZAENTITY_TYPE_POSTALENTITY_TYPE_SECTORENTITY_TYPE_STATEENTITY_TYPE_STREETENTITY_TYPE_SUB_POSTALENTITY_TYPE_UNKNOWNENTITY_TYPE_WARDENTITY_TYPE_WATER";
  unk_27C5B70 = 17;
  qword_27C5C60 = 17;
  dword_27C5C98 = 17;
  qword_27C5B38 = "ENTITY_TYPE_ADDRESSABLE_AREAENTITY_TYPE_BUILDINGENTITY_TYPE_CHOMEENTITY_TYPE_CITYENTITY_TYPE_CONTINENTENTITY_TYPE_COUNTRYENTITY_TYPE_COUNTYENTITY_TYPE_ISLANDENTITY_TYPE_NEIGHBORHOODENTITY_TYPE_OAZAENTITY_TYPE_POSTALENTITY_TYPE_SECTORENTITY_TYPE_STATEENTITY_TYPE_STREETENTITY_TYPE_SUB_POSTALENTITY_TYPE_UNKNOWNENTITY_TYPE_WARDENTITY_TYPE_WATER";
  dword_27C5B60 = 10;
  dword_27C5B78 = 6;
  dword_27C5B90 = 2;
  dword_27C5BC0 = 5;
  dword_27C5BD8 = 4;
  qword_27C5BF8 = "ENTITY_TYPE_NEIGHBORHOODENTITY_TYPE_OAZAENTITY_TYPE_POSTALENTITY_TYPE_SECTORENTITY_TYPE_STATEENTITY_TYPE_STREETENTITY_TYPE_SUB_POSTALENTITY_TYPE_UNKNOWNENTITY_TYPE_WARDENTITY_TYPE_WATER";
  unk_27C5C00 = 24;
  dword_27C5C20 = 7;
  dword_27C5C50 = 9;
  dword_27C5C68 = 3;
  dword_27C5C80 = 1;
  dword_27C5CB0 = 0;
  dword_27C5CE0 = 15;
  dword_27C5CC8 = 8;
  qword_27C5CF0 = 37;
  dword_27C5CF8 = 3;
  qword_27C5D00 = "ADDRESS_COMPONENT_ADMINISTRATIVE_AREA_CODEADDRESS_COMPONENT_COUNTRYADDRESS_COMPONENT_COUNTRY_CODEADDRESS_COMPONENT_LOCALITYADDRESS_COMPONENT_POSTALADDRESS_COMPONENT_SUB_ADMINISTRATIVE_AREAADDRESS_COMPONENT_SUB_LOCALITYADDRESS_COMPONENT_SUB_THOROUGHFAREADDRESS_COMPONENT_THOROUGHFAREADDRESS_COMPONENT_UNKNOWN";
  qword_27C5D08 = 42;
  dword_27C5D10 = 4;
  dword_27C5D28 = 1;
  dword_27C5D40 = 2;
  qword_27C5D48 = "ADDRESS_COMPONENT_LOCALITYADDRESS_COMPONENT_POSTALADDRESS_COMPONENT_SUB_ADMINISTRATIVE_AREAADDRESS_COMPONENT_SUB_LOCALITYADDRESS_COMPONENT_SUB_THOROUGHFAREADDRESS_COMPONENT_THOROUGHFAREADDRESS_COMPONENT_UNKNOWN";
  unk_27C5D50 = 26;
  dword_27C5D58 = 6;
  qword_27C5D60 = "ADDRESS_COMPONENT_POSTALADDRESS_COMPONENT_SUB_ADMINISTRATIVE_AREAADDRESS_COMPONENT_SUB_LOCALITYADDRESS_COMPONENT_SUB_THOROUGHFAREADDRESS_COMPONENT_THOROUGHFAREADDRESS_COMPONENT_UNKNOWN";
  unk_27C5D68 = 24;
  dword_27C5D70 = 7;
  qword_27C5D78 = "ADDRESS_COMPONENT_SUB_ADMINISTRATIVE_AREAADDRESS_COMPONENT_SUB_LOCALITYADDRESS_COMPONENT_SUB_THOROUGHFAREADDRESS_COMPONENT_THOROUGHFAREADDRESS_COMPONENT_UNKNOWN";
  qword_27C5D80 = 41;
  dword_27C5D88 = 5;
  qword_27C5D90 = "ADDRESS_COMPONENT_SUB_LOCALITYADDRESS_COMPONENT_SUB_THOROUGHFAREADDRESS_COMPONENT_THOROUGHFAREADDRESS_COMPONENT_UNKNOWN";
  dword_27C5DA0 = 8;
  qword_27C5DA8 = "ADDRESS_COMPONENT_SUB_THOROUGHFAREADDRESS_COMPONENT_THOROUGHFAREADDRESS_COMPONENT_UNKNOWN";
  unk_27C5DB0 = 34;
  dword_27C5DB8 = 10;
  qword_27C5DC0 = "ADDRESS_COMPONENT_THOROUGHFAREADDRESS_COMPONENT_UNKNOWN";
  qword_27C5D30 = "ADDRESS_COMPONENT_COUNTRY_CODEADDRESS_COMPONENT_LOCALITYADDRESS_COMPONENT_POSTALADDRESS_COMPONENT_SUB_ADMINISTRATIVE_AREAADDRESS_COMPONENT_SUB_LOCALITYADDRESS_COMPONENT_SUB_THOROUGHFAREADDRESS_COMPONENT_THOROUGHFAREADDRESS_COMPONENT_UNKNOWN";
  qword_27C5D38 = 30;
  qword_27C5D98 = 30;
  qword_27C5DC8 = 30;
  dword_27C5DD0 = 9;
  qword_27C5DD8 = "ADDRESS_COMPONENT_UNKNOWN";
  unk_27C5DE0 = 25;
  qword_27C5CE8 = "ADDRESS_COMPONENT_ADMINISTRATIVE_AREAADDRESS_COMPONENT_ADMINISTRATIVE_AREA_CODEADDRESS_COMPONENT_COUNTRYADDRESS_COMPONENT_COUNTRY_CODEADDRESS_COMPONENT_LOCALITYADDRESS_COMPONENT_POSTALADDRESS_COMPONENT_SUB_ADMINISTRATIVE_AREAADDRESS_COMPONENT_SUB_LOCALITYADDRESS_COMPONENT_SUB_THOROUGHFAREADDRESS_COMPONENT_THOROUGHFAREADDRESS_COMPONENT_UNKNOWN";
  qword_27C5D18 = "ADDRESS_COMPONENT_COUNTRYADDRESS_COMPONENT_COUNTRY_CODEADDRESS_COMPONENT_LOCALITYADDRESS_COMPONENT_POSTALADDRESS_COMPONENT_SUB_ADMINISTRATIVE_AREAADDRESS_COMPONENT_SUB_LOCALITYADDRESS_COMPONENT_SUB_THOROUGHFAREADDRESS_COMPONENT_THOROUGHFAREADDRESS_COMPONENT_UNKNOWN";
  unk_27C5D20 = 25;
  dword_27C5DE8 = 0;
  return result;
}

void *sub_13146AC(void *a1)
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

void sub_1314720(void *a1)
{
  sub_13146AC(a1);

  operator delete();
}

uint64_t sub_1314758(uint64_t a1)
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

char *sub_1314780(uint64_t a1, char *a2, int32x2_t *a3)
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
    v18 = v7 + 1;
    v19 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    v20 = *v18;
    v19 = v19 + (v20 << 7) - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_27:
      v24 = v18;
      *(a1 + 32) = v19;
      goto LABEL_30;
    }

    v22 = sub_1958770(v7, v19);
    v24 = v22;
    *(a1 + 32) = v23;
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
    if (v8 == 21)
    {
      v17 = *v7;
      v16 = v7 + 4;
      v5 |= 2u;
      *(a1 + 28) = v17;
LABEL_29:
      v24 = v16;
      goto LABEL_30;
    }
  }

  else if (v11 == 1 && v8 == 13)
  {
    v21 = *v7;
    v16 = v7 + 4;
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

char *sub_131494C(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 28);
    *__dst = 21;
    *(__dst + 1) = v8;
    __dst += 5;
    if ((v5 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v7 = *(a1 + 24);
  *__dst = 13;
  *(__dst + 1) = v7;
  __dst += 5;
  if ((v5 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v5 & 4) == 0)
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

  v9 = *(a1 + 32);
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
  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v16)
  {
    v18 = v16;
    memcpy(v6, v17, v16);
    v6 += v18;
    return v6;
  }

  return sub_1957130(a3, v17, v16, v6);
}

uint64_t sub_1314AE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) != 0)
  {
    v2 = 5;
    if ((v1 & 1) == 0)
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
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

uint64_t sub_1314B80(uint64_t a1)
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
  if (a1 != &off_276AF38)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_13146AC(v6);
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

void sub_1314C38(uint64_t a1)
{
  sub_1314B80(a1);

  operator delete();
}

uint64_t sub_1314C70(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_1314758(*(result + 24));
  }

  if ((v2 & 0x1E) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
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

char *sub_1314CDC(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_39;
      }

      v5 |= 8u;
      v21 = v7 + 1;
      v20 = *v7;
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      v22 = *v21;
      v20 = (v22 << 7) + v20 - 128;
      if ((v22 & 0x80000000) == 0)
      {
        v21 = v7 + 2;
LABEL_31:
        v35 = v21;
        *(a1 + 48) = v20 != 0;
        goto LABEL_47;
      }

      v29 = sub_19587DC(v7, v20);
      v35 = v29;
      *(a1 + 48) = v30 != 0;
      if (!v29)
      {
        goto LABEL_58;
      }
    }

    else if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_39;
      }

      v5 |= 4u;
      v24 = v7 + 1;
      v23 = *v7;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      v25 = *v24;
      v23 = (v25 << 7) + v23 - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v24 = v7 + 2;
LABEL_36:
        v35 = v24;
        *(a1 + 40) = v23;
        goto LABEL_47;
      }

      v31 = sub_19587DC(v7, v23);
      v35 = v31;
      *(a1 + 40) = v32;
      if (!v31)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_39;
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
        v35 = v13;
        *(a1 + 49) = v12 != 0;
        goto LABEL_47;
      }

      v33 = sub_19587DC(v7, v12);
      v35 = v33;
      *(a1 + 49) = v34 != 0;
      if (!v33)
      {
        goto LABEL_58;
      }
    }

LABEL_47:
    if (sub_195ADC0(a3, &v35, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 == 9)
    {
      v5 |= 2u;
      *(a1 + 32) = *v7;
      v35 = v7 + 8;
      goto LABEL_47;
    }
  }

  else if (v11 == 2 && v8 == 18)
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

      v16 = sub_1318114(v18);
      *(a1 + 24) = v16;
      v7 = v35;
    }

    v19 = sub_21FA668(a3, v16, v7);
LABEL_46:
    v35 = v19;
    if (!v19)
    {
      goto LABEL_58;
    }

    goto LABEL_47;
  }

LABEL_39:
  if (v8)
  {
    v26 = (v8 & 7) == 4;
  }

  else
  {
    v26 = 1;
  }

  if (!v26)
  {
    v27 = *(a1 + 8);
    if (v27)
    {
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v28 = sub_11F1920((a1 + 8));
      v7 = v35;
    }

    v19 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_46;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_58:
  v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v35;
}

char *sub_1314FCC(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 32);
    *__dst = 9;
    *(__dst + 1) = v7;
    __dst += 9;
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v11 = *(a1 + 48);
      *__dst = 24;
      __dst[1] = v11;
      __dst += 2;
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v8 = *(a1 + 24);
  *__dst = 18;
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

  __dst = sub_131494C(v8, v10, a3);
  if ((v5 & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((v5 & 4) == 0)
  {
LABEL_5:
    v6 = __dst;
    goto LABEL_25;
  }

LABEL_18:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v12 = *(a1 + 40);
  *__dst = 32;
  __dst[1] = v12;
  if (v12 > 0x7F)
  {
    __dst[1] = v12 | 0x80;
    v13 = v12 >> 7;
    __dst[2] = v12 >> 7;
    v6 = __dst + 3;
    if (v12 >= 0x4000)
    {
      LOBYTE(v14) = __dst[2];
      do
      {
        *(v6 - 1) = v14 | 0x80;
        v14 = v13 >> 7;
        *v6++ = v13 >> 7;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
    }
  }

  else
  {
    v6 = __dst + 2;
  }

LABEL_25:
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v16 = *(a1 + 49);
    *v6 = 40;
    v6[1] = v16;
    v6 += 2;
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v20)
  {
    v22 = v20;
    memcpy(v6, v21, v20);
    v6 += v22;
    return v6;
  }

  return sub_1957130(a3, v21, v20, v6);
}

uint64_t sub_1315204(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) != 0)
  {
    if (v2)
    {
      v5 = sub_1314AE4(*(a1 + 24));
      v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    result = v3 + ((v2 >> 3) & 2) + ((v2 >> 2) & 2);
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

std::string *sub_13152DC(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0x1F) != 0)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      data = result[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v8 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v8 = *v8;
        }

        data = sub_1318114(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_276AF10;
      }

      result = sub_128F948(data, v9);
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

    v3[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }

LABEL_22:
    v3[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
LABEL_8:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_9;
      }

LABEL_7:
      v3[2].__r_.__value_.__s.__data_[1] = *(a2 + 49);
      goto LABEL_8;
    }

LABEL_23:
    v3[2].__r_.__value_.__s.__data_[0] = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_13153FC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_134515C(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_131547C(void *a1)
{
  sub_13153FC(a1);

  operator delete();
}

uint64_t sub_13154B4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1314C70(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_1315538(uint64_t a1, char *a2, int32x2_t *a3)
{
  v26 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v26, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v26 + 1;
    v8 = *v26;
    if (*v26 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v26, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v26 + 2;
      }
    }

    v26 = v7;
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 8)
    {
      goto LABEL_12;
    }

    v22 = v7 + 1;
    v21 = *v7;
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }

    v23 = *v22;
    v21 = (v23 << 7) + v21 - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_33:
      v26 = v22;
      *(a1 + 48) = v21;
      v5 = 1;
      goto LABEL_34;
    }

    v24 = sub_19587DC(v7, v21);
    v26 = v24;
    *(a1 + 48) = v25;
    v5 = 1;
    if (!v24)
    {
      goto LABEL_41;
    }

LABEL_34:
    if (sub_195ADC0(a3, &v26, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    v15 = v7 - 1;
    while (1)
    {
      v16 = (v15 + 1);
      v26 = v15 + 1;
      v17 = *(a1 + 40);
      if (v17 && (v18 = *(a1 + 32), v18 < *v17))
      {
        *(a1 + 32) = v18 + 1;
        v19 = *&v17[2 * v18 + 2];
      }

      else
      {
        sub_1318190(*(a1 + 24));
        v19 = sub_19593CC(a1 + 24, v20);
        v16 = v26;
      }

      v15 = sub_21FA6F8(a3, v19, v16);
      v26 = v15;
      if (!v15)
      {
        goto LABEL_41;
      }

      if (*a3 <= v15 || *v15 != 18)
      {
        goto LABEL_34;
      }
    }
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
      v7 = v26;
    }

    v26 = sub_1952690(v8, v14, v7, a3);
    if (!v26)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_41:
  v26 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v26;
}

char *sub_1315750(uint64_t a1, char *__dst, _DWORD *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 48);
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

  v10 = *(a1 + 32);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v5)
      {
        v5 = sub_225EB68(a3, v5);
      }

      v12 = *(*(a1 + 40) + 8 * i + 8);
      *v5 = 18;
      v13 = *(v12 + 20);
      v5[1] = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, v5 + 1);
      }

      else
      {
        v14 = v5 + 2;
      }

      v5 = sub_1314FCC(v12, v14, a3);
    }
  }

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v5;
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

  if (*a3 - v5 >= v18)
  {
    v20 = v18;
    memcpy(v5, v19, v18);
    v5 += v20;
    return v5;
  }

  return sub_1957130(a3, v19, v18, v5);
}

uint64_t sub_1315914(uint64_t a1)
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
      v7 = sub_1315204(v6);
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
    v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

  *(a1 + 20) = v2;
  return v2;
}

void sub_13159E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13452E8((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    *(a1 + 48) = v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1315AD4(uint64_t a1)
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

void sub_1315BA0(uint64_t a1)
{
  sub_1315AD4(a1);

  operator delete();
}

uint64_t sub_1315BD8(uint64_t a1)
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

uint64_t sub_1315C90(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1315E4C(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1315F60(uint64_t a1)
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

uint64_t sub_1316090(uint64_t a1)
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
  if (a1 != &off_276AFA0)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_1315AD4(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_13451E0((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1316154(uint64_t a1)
{
  sub_1316090(a1);

  operator delete();
}

uint64_t sub_131618C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13154B4(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_1315BD8(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 48) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_1316220(uint64_t a1, char *a2, int32x2_t *a3)
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
      v26 = *(a1 + 48);
      if (!v26)
      {
        v27 = *(a1 + 8);
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v28 = *v28;
        }

        v26 = sub_13182AC(v28);
        *(a1 + 48) = v26;
        v7 = v31;
      }

      v16 = sub_21FA788(a3, v26, v7);
LABEL_40:
      v31 = v16;
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
    v18 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_24:
      v31 = v18;
      *(a1 + 56) = v17;
      goto LABEL_41;
    }

    v29 = sub_19587DC(v7, v17);
    v31 = v29;
    *(a1 + 56) = v30;
    if (!v29)
    {
      goto LABEL_48;
    }

LABEL_41:
    if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
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
      v31 = v20 + 1;
      v22 = *(a1 + 40);
      if (v22 && (v23 = *(a1 + 32), v23 < *v22))
      {
        *(a1 + 32) = v23 + 1;
        v24 = *&v22[2 * v23 + 2];
      }

      else
      {
        v25 = sub_1318210(*(a1 + 24));
        v24 = sub_19593CC(a1 + 24, v25);
        v21 = v31;
      }

      v20 = sub_21FA818(a3, v24, v21);
      v31 = v20;
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
      v7 = v31;
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
  v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

char *sub_131648C(uint64_t a1, char *__dst, void *a3)
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

    __dst = sub_1315E4C(v6, v8, a3);
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

  v14 = *(a1 + 32);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= v9)
      {
        v9 = sub_225EB68(a3, v9);
      }

      v16 = *(*(a1 + 40) + 8 * i + 8);
      *v9 = 26;
      v17 = *(v16 + 20);
      v9[1] = v17;
      if (v17 > 0x7F)
      {
        v18 = sub_19575D0(v17, v9 + 1);
      }

      else
      {
        v18 = v9 + 2;
      }

      v9 = sub_1315750(v16, v18, a3);
    }
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v9;
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

  if (*a3 - v9 >= v22)
  {
    v24 = v22;
    memcpy(v9, v23, v22);
    v9 += v24;
    return v9;
  }

  return sub_1957130(a3, v23, v22, v9);
}

uint64_t sub_13166B4(uint64_t a1)
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
      v7 = sub_1315914(v6);
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
      v9 = sub_1315F60(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }
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

    v2 += v13;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_13167BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1345374((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

        v10 = sub_13182AC(v12);
        *(a1 + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_276AF70;
      }

      sub_12EB184(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 56) = *(a2 + 56);
    }

    *(a1 + 16) |= v9;
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1316900(uint64_t a1)
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

void sub_13169CC(uint64_t a1)
{
  sub_1316900(a1);

  operator delete();
}

uint64_t sub_1316A04(uint64_t a1)
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

uint64_t sub_1316ABC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1316C78(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1316D8C(uint64_t a1)
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

uint64_t sub_1316EBC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = &off_26D40E8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  return a1;
}

void sub_1316F2C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1316F5C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1316FD8(void *a1)
{
  sub_1316F5C(a1);

  operator delete();
}

unsigned __int8 *sub_1317010(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  if ((*(a1 + 40) & 0xF) != 0)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 72) = 0;
    *(a1 + 64) = 0;
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

char *sub_131707C(uint64_t a1, char *a2, int32x2_t *a3)
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
        if (v8 != 24)
        {
          goto LABEL_37;
        }

        v5 |= 2u;
        v24 = v7 + 1;
        v23 = *v7;
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if ((v25 & 0x80000000) == 0)
        {
          v24 = v7 + 2;
LABEL_36:
          v37 = v24;
          *(a1 + 56) = v23;
          goto LABEL_47;
        }

        v35 = sub_19587DC(v7, v23);
        v37 = v35;
        *(a1 + 56) = v36;
        if (!v35)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v11 != 4 || v8 != 32)
        {
          goto LABEL_37;
        }

        v5 |= 4u;
        v17 = v7 + 1;
        v16 = *v7;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v17 = v7 + 2;
LABEL_24:
          v37 = v17;
          *(a1 + 64) = v16;
          goto LABEL_47;
        }

        v30 = sub_19587DC(v7, v16);
        v37 = v30;
        *(a1 + 64) = v31;
        if (!v30)
        {
          goto LABEL_61;
        }
      }

      goto LABEL_47;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_37;
    }

    v5 |= 1u;
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
      v37 = v14;
      *(a1 + 48) = v13;
      goto LABEL_47;
    }

    v32 = sub_19587DC(v7, v13);
    v37 = v32;
    *(a1 + 48) = v33;
    if (!v32)
    {
      goto LABEL_61;
    }

LABEL_47:
    if (sub_195ADC0(a3, &v37, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 8)
  {
    v19 = v7 + 1;
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }

    v21 = *v19;
    v22 = (v21 << 7) + v20;
    LODWORD(v20) = v22 - 128;
    if (v21 < 0)
    {
      v37 = sub_19587DC(v7, (v22 - 128));
      if (!v37)
      {
        goto LABEL_61;
      }

      LODWORD(v20) = v34;
    }

    else
    {
      v19 = v7 + 2;
LABEL_29:
      v37 = v19;
    }

    if (sub_1314694(v20))
    {
      *(a1 + 40) |= 8u;
      *(a1 + 72) = v20;
    }

    else
    {
      sub_1348DF8();
    }

    goto LABEL_47;
  }

LABEL_37:
  if (v8)
  {
    v26 = (v8 & 7) == 4;
  }

  else
  {
    v26 = 1;
  }

  if (!v26)
  {
    if (v8 - 720 > 0x57)
    {
      v28 = *(a1 + 8);
      if (v28)
      {
        v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v29 = sub_11F1920((a1 + 8));
        v7 = v37;
      }

      v27 = sub_1952690(v8, v29, v7, a3);
    }

    else
    {
      v27 = sub_19525AC((a1 + 16), v8, v7, &off_276B010, (a1 + 8), a3);
    }

    v37 = v27;
    if (!v27)
    {
      goto LABEL_61;
    }

    goto LABEL_47;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_61:
  v37 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v37;
}

char *sub_1317390(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 72);
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

    v12 = *(a1 + 48);
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

  if ((v5 & 2) != 0)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 64);
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

  if (*(a1 + 26))
  {
    v19 = sub_1953428(a1 + 16, 90, 101, v19, a3);
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

uint64_t sub_1317670(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 0xF) == 0)
  {
    goto LABEL_14;
  }

  if (v3)
  {
    result += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  result += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

LABEL_9:
  result += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v3 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v4 = *(a1 + 72);
  if (v4 < 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v5;
LABEL_14:
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

  *(a1 + 44) = result;
  return result;
}

void sub_131777C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 0xF) != 0)
  {
    if (v4)
    {
      *(a1 + 48) = *(a2 + 48);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 56) = *(a2 + 56);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
LABEL_7:
        *(a1 + 40) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(a1 + 72) = *(a2 + 72);
      goto LABEL_7;
    }

LABEL_14:
    *(a1 + 64) = *(a2 + 64);
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_131784C(uint64_t a1)
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
  if (a1 != &off_276B060)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_1316900(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1345264((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}