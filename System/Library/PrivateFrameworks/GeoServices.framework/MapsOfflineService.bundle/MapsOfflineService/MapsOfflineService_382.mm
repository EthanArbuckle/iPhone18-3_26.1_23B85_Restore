std::string *sub_15A02E0(std::string *result, uint64_t a2)
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

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 56);
    v10 = sub_19592E8(&v3[1].__r_.__value_.__r.__words[2], *(a2 + 48));
    result = sub_1201B48(&v3[1].__r_.__value_.__r.__words[2], v10, (v9 + 8), v8, *v3[2].__r_.__value_.__l.__size_ - LODWORD(v3[2].__r_.__value_.__l.__data_));
    v11 = LODWORD(v3[2].__r_.__value_.__l.__data_) + v8;
    LODWORD(v3[2].__r_.__value_.__l.__data_) = v11;
    v12 = v3[2].__r_.__value_.__l.__size_;
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 72);
  if (v13)
  {
    v14 = *(a2 + 80);
    v15 = sub_19592E8(&v3[2].__r_.__value_.__r.__words[2], *(a2 + 72));
    result = sub_1311FF0((v3 + 64), v15, (v14 + 8), v13, *v3[3].__r_.__value_.__l.__size_ - LODWORD(v3[3].__r_.__value_.__l.__data_));
    v16 = LODWORD(v3[3].__r_.__value_.__l.__data_) + v13;
    LODWORD(v3[3].__r_.__value_.__l.__data_) = v16;
    v17 = v3[3].__r_.__value_.__l.__size_;
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  v18 = *(a2 + 96);
  if (v18)
  {
    v19 = *(a2 + 104);
    v20 = sub_19592E8(&v3[3].__r_.__value_.__r.__words[2], *(a2 + 96));
    result = sub_15B58AC(&v3[3].__r_.__value_.__r.__words[2], v20, (v19 + 8), v18, *v3[4].__r_.__value_.__l.__size_ - LODWORD(v3[4].__r_.__value_.__l.__data_));
    v21 = LODWORD(v3[4].__r_.__value_.__l.__data_) + v18;
    LODWORD(v3[4].__r_.__value_.__l.__data_) = v21;
    v22 = v3[4].__r_.__value_.__l.__size_;
    if (*v22 < v21)
    {
      *v22 = v21;
    }
  }

  v23 = *(a2 + 16);
  if (v23)
  {
    if (v23)
    {
      v26 = *(a2 + 112);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v27 = v3->__r_.__value_.__l.__size_;
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      result = sub_194EA1C(&v3[4].__r_.__value_.__r.__words[2], (v26 & 0xFFFFFFFFFFFFFFFELL), v28);
      if ((v23 & 2) == 0)
      {
LABEL_15:
        if ((v23 & 4) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_46;
      }
    }

    else if ((v23 & 2) == 0)
    {
      goto LABEL_15;
    }

    v29 = *(a2 + 120);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v30 = v3->__r_.__value_.__l.__size_;
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v31 = *v31;
    }

    result = sub_194EA1C(&v3[5], (v29 & 0xFFFFFFFFFFFFFFFELL), v31);
    if ((v23 & 4) == 0)
    {
LABEL_16:
      if ((v23 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_49;
    }

LABEL_46:
    v32 = *(a2 + 128);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v33 = v3->__r_.__value_.__l.__size_;
    v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
    if (v33)
    {
      v34 = *v34;
    }

    result = sub_194EA1C(&v3[5].__r_.__value_.__l.__size_, (v32 & 0xFFFFFFFFFFFFFFFELL), v34);
    if ((v23 & 8) == 0)
    {
LABEL_17:
      if ((v23 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_52;
    }

LABEL_49:
    v35 = *(a2 + 136);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    v36 = v3->__r_.__value_.__l.__size_;
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    result = sub_194EA1C(&v3[5].__r_.__value_.__r.__words[2], (v35 & 0xFFFFFFFFFFFFFFFELL), v37);
    if ((v23 & 0x10) == 0)
    {
LABEL_18:
      if ((v23 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_53;
    }

LABEL_52:
    LODWORD(v3[6].__r_.__value_.__l.__data_) = *(a2 + 144);
    if ((v23 & 0x20) == 0)
    {
LABEL_19:
      if ((v23 & 0x40) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_54;
    }

LABEL_53:
    HIDWORD(v3[6].__r_.__value_.__r.__words[0]) = *(a2 + 148);
    if ((v23 & 0x40) == 0)
    {
LABEL_20:
      if ((v23 & 0x80) == 0)
      {
LABEL_22:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v23;
        goto LABEL_23;
      }

LABEL_21:
      LODWORD(v3[6].__r_.__value_.__r.__words[2]) = *(a2 + 160);
      goto LABEL_22;
    }

LABEL_54:
    v3[6].__r_.__value_.__l.__size_ = *(a2 + 152);
    if ((v23 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_23:
  if ((v23 & 0xFF00) == 0)
  {
    goto LABEL_34;
  }

  if ((v23 & 0x100) != 0)
  {
    v3[6].__r_.__value_.__s.__data_[20] = *(a2 + 164);
    if ((v23 & 0x200) == 0)
    {
LABEL_26:
      if ((v23 & 0x400) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_58;
    }
  }

  else if ((v23 & 0x200) == 0)
  {
    goto LABEL_26;
  }

  v3[7].__r_.__value_.__r.__words[0] = *(a2 + 168);
  if ((v23 & 0x400) == 0)
  {
LABEL_27:
    if ((v23 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  v3[7].__r_.__value_.__l.__size_ = *(a2 + 176);
  if ((v23 & 0x800) == 0)
  {
LABEL_28:
    if ((v23 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_59:
  v3[7].__r_.__value_.__r.__words[2] = *(a2 + 184);
  if ((v23 & 0x1000) == 0)
  {
LABEL_29:
    if ((v23 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_60:
  v3[8].__r_.__value_.__r.__words[0] = *(a2 + 192);
  if ((v23 & 0x2000) == 0)
  {
LABEL_30:
    if ((v23 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

LABEL_62:
    v3[8].__r_.__value_.__r.__words[2] = *(a2 + 208);
    if ((v23 & 0x8000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_61:
  v3[8].__r_.__value_.__l.__size_ = *(a2 + 200);
  if ((v23 & 0x4000) != 0)
  {
    goto LABEL_62;
  }

LABEL_31:
  if ((v23 & 0x8000) != 0)
  {
LABEL_32:
    v3[9].__r_.__value_.__r.__words[0] = *(a2 + 216);
  }

LABEL_33:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= v23;
LABEL_34:
  if ((v23 & 0x10000) != 0)
  {
    v24 = *(a2 + 224);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10000u;
    v3[9].__r_.__value_.__l.__size_ = v24;
  }

  v25 = *(a2 + 8);
  if (v25)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_15A0694(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  sub_15B5408((a1 + 48));
  sub_15B506C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15A0764(uint64_t a1)
{
  sub_15A0694(a1);

  operator delete();
}

uint64_t sub_15A079C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_157DB4C(v4);
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
      result = sub_159EBD0(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v9 + 23) < 0)
      {
        **v9 = 0;
        *(v9 + 8) = 0;
        if ((v8 & 2) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_14;
      }

      *v9 = 0;
      *(v9 + 23) = 0;
    }

    if ((v8 & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_14:
    v10 = *(v1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
    }
  }

LABEL_19:
  if ((v8 & 0xC) != 0)
  {
    *(v1 + 92) = 0;
    *(v1 + 88) = 0;
  }

  v12 = *(v1 + 8);
  v11 = v1 + 8;
  *(v11 + 8) = 0;
  if (v12)
  {

    return sub_1957EA8(v11);
  }

  return result;
}

uint64_t sub_15A08BC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 3)
    {
      if (v11 == 1)
      {
        if (v8 == 13)
        {
          v5 |= 4u;
          *(a1 + 88) = *v7;
          *v39 = v7 + 1;
          goto LABEL_61;
        }
      }

      else if (v11 == 2)
      {
        if (v8 == 18)
        {
          v25 = v7 - 1;
          while (1)
          {
            v26 = (v25 + 1);
            *v39 = v25 + 1;
            v27 = *(a1 + 40);
            if (v27 && (v28 = *(a1 + 32), v28 < *v27))
            {
              *(a1 + 32) = v28 + 1;
              v29 = *&v27[2 * v28 + 2];
            }

            else
            {
              v30 = sub_15AC0D4(*(a1 + 24));
              v29 = sub_19593CC(a1 + 24, v30);
              v26 = *v39;
            }

            v25 = sub_221FCBC(a3, v29, v26);
            *v39 = v25;
            if (!v25)
            {
              goto LABEL_68;
            }

            if (*a3 <= v25 || *v25 != 18)
            {
              goto LABEL_61;
            }
          }
        }
      }

      else if (v11 == 3 && v8 == 26)
      {
        v13 = v7 - 1;
        while (1)
        {
          v14 = v13 + 1;
          *v39 = v13 + 1;
          v15 = *(a1 + 64);
          if (v15 && (v16 = *(a1 + 56), v16 < *v15))
          {
            *(a1 + 56) = v16 + 1;
            v17 = *&v15[2 * v16 + 2];
          }

          else
          {
            sub_15ADE6C(*(a1 + 48));
            v17 = sub_19593CC(a1 + 48, v18);
            v14 = *v39;
          }

          v13 = sub_22201CC(a3, v17, v14);
          *v39 = v13;
          if (!v13)
          {
            goto LABEL_68;
          }

          if (*a3 <= v13 || *v13 != 26)
          {
            goto LABEL_61;
          }
        }
      }

      goto LABEL_53;
    }

    if (v11 != 4)
    {
      break;
    }

    if (v8 != 32)
    {
      goto LABEL_53;
    }

    v5 |= 8u;
    v23 = v7 + 1;
    v22 = *v7;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_37;
    }

    v24 = *v23;
    v22 = (v24 << 7) + v22 - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_37:
      *v39 = v23;
      *(a1 + 92) = v22 != 0;
      goto LABEL_61;
    }

    v37 = sub_19587DC(v7, v22);
    *v39 = v37;
    *(a1 + 92) = v38 != 0;
    if (!v37)
    {
      goto LABEL_68;
    }

LABEL_61:
    if (sub_195ADC0(a3, v39, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 5)
  {
    if (v8 != 42)
    {
      goto LABEL_53;
    }

    *(a1 + 16) |= 1u;
    v31 = *(a1 + 8);
    v20 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
    if (v31)
    {
      v20 = *v20;
    }

    v21 = (a1 + 72);
LABEL_52:
    v32 = sub_194DB04(v21, v20);
    v33 = sub_1958890(v32, *v39, a3);
LABEL_60:
    *v39 = v33;
    if (!v33)
    {
      goto LABEL_68;
    }

    goto LABEL_61;
  }

  if (v11 == 6 && v8 == 50)
  {
    *(a1 + 16) |= 2u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    v21 = (a1 + 80);
    goto LABEL_52;
  }

LABEL_53:
  if (v8)
  {
    v34 = (v8 & 7) == 4;
  }

  else
  {
    v34 = 1;
  }

  if (!v34)
  {
    v35 = *(a1 + 8);
    if (v35)
    {
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v36 = sub_11F1920((a1 + 8));
      v7 = *v39;
    }

    v33 = sub_1952690(v8, v36, v7, a3);
    goto LABEL_60;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_68:
  *v39 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v39;
}

char *sub_15A0C2C(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 88);
    *v4 = 13;
    *(v4 + 1) = v7;
    v4 += 5;
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

      v4 = sub_157DD18(v10, v12, a3);
    }
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    for (j = 0; j != v13; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v15 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 26;
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

      v4 = sub_159F678(v15, v17, a3);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v20 = *(a1 + 92);
    *v4 = 32;
    v4[1] = v20;
    v4 += 2;
    if ((v6 & 1) == 0)
    {
LABEL_23:
      if ((v6 & 2) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_23;
  }

  v4 = sub_128AEEC(a3, 5, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 2) != 0)
  {
LABEL_24:
    v4 = sub_128AEEC(a3, 6, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_25:
  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v4;
  }

  v21 = v18 & 0xFFFFFFFFFFFFFFFCLL;
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

uint64_t sub_15A0EB0(uint64_t a1)
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
      v7 = sub_157DEC4(v6);
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
      v14 = sub_159FEC0(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 0xF) != 0)
  {
    if (v15)
    {
      v16 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v17 = *(v16 + 23);
      v18 = *(v16 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v18 = v17;
      }

      v9 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v15 & 2) != 0)
    {
      v19 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
      v20 = *(v19 + 23);
      v21 = *(v19 + 8);
      if ((v20 & 0x80u) == 0)
      {
        v21 = v20;
      }

      v9 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v22 = v9 + 5;
    if ((v15 & 4) == 0)
    {
      v22 = v9;
    }

    v9 = v22 + ((v15 >> 2) & 2);
  }

  v23 = *(a1 + 8);
  if (v23)
  {
    v25 = v23 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v26 < 0)
    {
      v26 = *(v25 + 16);
    }

    v9 += v26;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_15A1054(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15B5EFC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_15B62A0((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if ((v14 & 0xF) != 0)
  {
    if (v14)
    {
      v16 = *(a2 + 72);
      *(a1 + 16) |= 1u;
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_194EA1C((a1 + 72), (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_24;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    v19 = *(a2 + 80);
    *(a1 + 16) |= 2u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    sub_194EA1C((a1 + 80), (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
LABEL_13:
        *(a1 + 16) |= v14;
        goto LABEL_14;
      }

LABEL_12:
      *(a1 + 92) = *(a2 + 92);
      goto LABEL_13;
    }

LABEL_24:
    *(a1 + 88) = *(a2 + 88);
    if ((v14 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_15A1214(uint64_t a1)
{
  v1 = *(a1 + 32);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(a1 + 40) + 8 * v1--);
  }

  while ((~*(v3 + 16) & 3) == 0);
  return v2 < 1;
}

void *sub_15A125C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_15B548C(a1 + 10);
  sub_1956ABC((a1 + 8));
  sub_1956ABC((a1 + 6));
  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15A12F4(void *a1)
{
  sub_15A125C(a1);

  operator delete();
}

uint64_t sub_15A132C(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  v3 = *(a1 + 88);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 96) + 8);
    do
    {
      v5 = *v4++;
      result = sub_1580044(v5);
      --v3;
    }

    while (v3);
    *(a1 + 88) = 0;
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 96) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_15A13C0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v54 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, v54, a3[11].i32[1]) & 1) == 0)
  {
    v7 = (a1 + 8);
    do
    {
      v8 = (*v54 + 1);
      v9 = **v54;
      if (**v54 < 0)
      {
        v10 = *v8;
        v11 = v9 + (v10 << 7);
        v9 = v11 - 128;
        if (v10 < 0)
        {
          v8 = sub_1958824(*v54, v11 - 128);
          v9 = v12;
        }

        else
        {
          v8 = (*v54 + 2);
        }
      }

      *v54 = v8;
      v13 = v9 >> 3;
      if (v9 >> 3 > 3)
      {
        if (v13 != 4)
        {
          if (v13 != 5)
          {
            if (v13 == 6 && v9 == 50)
            {
              v18 = v8 - 1;
              while (1)
              {
                v19 = (v18 + 1);
                *v54 = v18 + 1;
                v20 = *(a1 + 96);
                if (v20 && (v21 = *(a1 + 88), v21 < *v20))
                {
                  *(a1 + 88) = v21 + 1;
                  v22 = *&v20[2 * v21 + 2];
                }

                else
                {
                  v23 = sub_15B234C(*(a1 + 80));
                  v22 = sub_19593CC(a1 + 80, v23);
                  v19 = *v54;
                }

                v18 = sub_221ECFC(a3, v22, v19);
                *v54 = v18;
                if (!v18)
                {
                  goto LABEL_96;
                }

                if (*a3 <= v18 || *v18 != 50)
                {
                  goto LABEL_91;
                }
              }
            }

            goto LABEL_83;
          }

          if (v9 != 40)
          {
            if (v9 == 42)
            {
              *&v55 = a1 + 64;
              *(&v55 + 1) = sub_157DA4C;
              v56 = a1 + 8;
              v57 = 5;
              v51 = sub_1216588(a3, v8, &v55);
LABEL_90:
              *v54 = v51;
              if (!v51)
              {
                goto LABEL_96;
              }

              continue;
            }

            goto LABEL_83;
          }

          v39 = (v8 - 1);
LABEL_60:
          *v54 = v39 + 1;
          v40 = *(v39 + 1);
          v41 = (v39 + 2);
          if (v40 < 0)
          {
            v42 = *v41;
            v43 = (v42 << 7) + v40;
            LODWORD(v40) = v43 - 128;
            if ((v42 & 0x80000000) == 0)
            {
              v41 = (v39 + 3);
              goto LABEL_63;
            }

            *v54 = sub_19587DC(v39 + 1, (v43 - 128));
            if (!*v54)
            {
              goto LABEL_96;
            }

            LODWORD(v40) = v46;
          }

          else
          {
LABEL_63:
            *v54 = v41;
          }

          if (v40 > 2)
          {
            sub_1313700();
          }

          else
          {
            v44 = *(a1 + 64);
            if (v44 == *(a1 + 68))
            {
              v45 = v44 + 1;
              sub_1958E5C((a1 + 64), v44 + 1);
              *(*(a1 + 72) + 4 * v44) = v40;
            }

            else
            {
              *(*(a1 + 72) + 4 * v44) = v40;
              v45 = v44 + 1;
            }

            *(a1 + 64) = v45;
          }

          v39 = *v54;
          if (*a3 <= *v54 || **v54 != 40)
          {
            continue;
          }

          goto LABEL_60;
        }

        if (v9 != 33)
        {
          if (v9 == 34)
          {
            v51 = sub_1958A20(a1 + 48, v8, a3);
            goto LABEL_90;
          }

LABEL_83:
          if (v9)
          {
            v52 = (v9 & 7) == 4;
          }

          else
          {
            v52 = 1;
          }

          if (v52)
          {
            if (v8)
            {
              a3[10].i32[0] = v9 - 1;
              break;
            }

LABEL_96:
            *v54 = 0;
            break;
          }

          if (*v7)
          {
            v53 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v53 = sub_11F1920((a1 + 8));
            v8 = *v54;
          }

          v51 = sub_1952690(v9, v53, v8, a3);
          goto LABEL_90;
        }

        v32 = v8 - 1;
        v33 = *(a1 + 48);
        do
        {
          v34 = (v32 + 1);
          *v54 = v32 + 1;
          v35 = *(v32 + 1);
          if (v33 == *(a1 + 52))
          {
            sub_1959094((a1 + 48), v33 + 1);
            *(*(a1 + 56) + 8 * v33) = v35;
            v34 = *v54;
          }

          else
          {
            *(*(a1 + 56) + 8 * v33) = v35;
          }

          *(a1 + 48) = ++v33;
          v32 = (v34 + 8);
          *v54 = v34 + 8;
        }

        while (*a3 > (v34 + 8) && *v32 == 33);
      }

      else
      {
        if (v13 == 1)
        {
          if (v9 == 10)
          {
            v24 = v8 - 1;
            while (1)
            {
              v25 = (v24 + 1);
              *v54 = v24 + 1;
              v26 = *(a1 + 40);
              if (v26 && (v27 = *(a1 + 32), v27 < *v26))
              {
                *(a1 + 32) = v27 + 1;
                v28 = *&v26[2 * v27 + 2];
              }

              else
              {
                v29 = *(a1 + 24);
                if (!v29)
                {
                  operator new();
                }

                *v31 = v30;
                v31[1] = sub_195A650;
                *v30 = 0;
                v30[1] = 0;
                v30[2] = 0;
                v28 = sub_19593CC(a1 + 24, v30);
                v25 = *v54;
              }

              v24 = sub_1958890(v28, v25, a3);
              *v54 = v24;
              if (!v24)
              {
                goto LABEL_96;
              }

              if (*a3 <= v24 || *v24 != 10)
              {
                goto LABEL_91;
              }
            }
          }

          goto LABEL_83;
        }

        if (v13 == 2)
        {
          if (v9 != 16)
          {
            goto LABEL_83;
          }

          v5 |= 1u;
          v37 = v8 + 1;
          v36 = *v8;
          if (v36 < 0)
          {
            v38 = *v37;
            v36 = (v38 << 7) + v36 - 128;
            if (v38 < 0)
            {
              v49 = sub_19587DC(v8, v36);
              *v54 = v49;
              *(a1 + 104) = v50 != 0;
              if (!v49)
              {
                goto LABEL_96;
              }

              continue;
            }

            v37 = v8 + 2;
          }

          *v54 = v37;
          *(a1 + 104) = v36 != 0;
        }

        else
        {
          if (v13 != 3 || v9 != 24)
          {
            goto LABEL_83;
          }

          v5 |= 2u;
          v16 = v8 + 1;
          v15 = *v8;
          if (v15 < 0)
          {
            v17 = *v16;
            v15 = (v17 << 7) + v15 - 128;
            if (v17 < 0)
            {
              v47 = sub_19587DC(v8, v15);
              *v54 = v47;
              *(a1 + 105) = v48 != 0;
              if (!v47)
              {
                goto LABEL_96;
              }

              continue;
            }

            v16 = v8 + 2;
          }

          *v54 = v16;
          *(a1 + 105) = v15 != 0;
        }
      }

LABEL_91:
      ;
    }

    while ((sub_195ADC0(a3, v54, a3[11].i32[1]) & 1) == 0);
  }

  *(a1 + 16) |= v5;
  return *v54;
}

char *sub_15A1924(uint64_t a1, char *a2, _DWORD *a3)
{
  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 40) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || *a3 - a2 + 14 < v9)
      {
        a2 = sub_1957480(a3, 1, v8, a2);
      }

      else
      {
        *a2 = 10;
        a2[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v10 = a2 + 2;
        memcpy(a2 + 2, v8, v9);
        a2 = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v12 = *(a1 + 104);
    *a2 = 16;
    a2[1] = v12;
    a2 += 2;
  }

  if ((v11 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v13 = *(a1 + 105);
    *a2 = 24;
    a2[1] = v13;
    a2 += 2;
  }

  v14 = *(a1 + 48);
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = 8 * v14;
    do
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v17 = *(*(a1 + 56) + v15);
      *a2 = 33;
      *(a2 + 1) = v17;
      a2 += 9;
      v15 += 8;
    }

    while (v16 != v15);
  }

  v18 = *(a1 + 64);
  if (v18 < 1)
  {
    v21 = a2;
  }

  else
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v20 = *(*(a1 + 72) + 4 * i);
      *a2 = 40;
      a2[1] = v20;
      if (v20 > 0x7F)
      {
        a2[1] = v20 | 0x80;
        v22 = v20 >> 7;
        a2[2] = v20 >> 7;
        v21 = a2 + 3;
        if (v20 >= 0x4000)
        {
          LOBYTE(v23) = a2[2];
          do
          {
            *(v21 - 1) = v23 | 0x80;
            v23 = v22 >> 7;
            *v21++ = v22 >> 7;
            v24 = v22 >> 14;
            v22 >>= 7;
          }

          while (v24);
        }
      }

      else
      {
        v21 = a2 + 2;
      }

      a2 = v21;
    }
  }

  v25 = *(a1 + 88);
  if (v25)
  {
    for (j = 0; j != v25; ++j)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v27 = *(*(a1 + 96) + 8 * j + 8);
      *v21 = 50;
      v28 = *(v27 + 20);
      v21[1] = v28;
      if (v28 > 0x7F)
      {
        v29 = sub_19575D0(v28, v21 + 1);
      }

      else
      {
        v29 = v21 + 2;
      }

      v21 = sub_15B1F3C(v27, v29, a3);
    }
  }

  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return v21;
  }

  v32 = v30 & 0xFFFFFFFFFFFFFFFCLL;
  v33 = *(v32 + 31);
  if (v33 < 0)
  {
    v34 = *(v32 + 8);
    v33 = *(v32 + 16);
  }

  else
  {
    v34 = (v32 + 8);
  }

  if (*a3 - v21 >= v33)
  {
    v35 = v33;
    memcpy(v21, v34, v33);
    v21 += v35;
    return v21;
  }

  return sub_1957130(a3, v34, v33, v21);
}

uint64_t sub_15A1C70(uint64_t a1)
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

  v8 = *(a1 + 64);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 72) + 4 * v9);
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

  v13 = *(a1 + 88);
  v14 = v4 + *(a1 + 48) + 8 * *(a1 + 48) + v8 + v10 + v13;
  v15 = *(a1 + 96);
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
      v19 = sub_15B20A0(v18);
      v14 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      v17 -= 8;
    }

    while (v17);
  }

  if ((*(a1 + 16) & 3) != 0)
  {
    result = v14 + (*(a1 + 16) & 2) + 2 * (*(a1 + 16) & 1);
  }

  else
  {
    result = v14;
  }

  v21 = *(a1 + 8);
  if (v21)
  {
    v22 = v21 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v21 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    result += v23;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_15A1DF8(std::string *result, uint64_t a2)
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

  v9 = *(a2 + 48);
  if (v9)
  {
    data_low = SLODWORD(v3[2].__r_.__value_.__l.__data_);
    sub_1959094(&v3[2], data_low + v9);
    size = v3[2].__r_.__value_.__l.__size_;
    LODWORD(v3[2].__r_.__value_.__l.__data_) += *(a2 + 48);
    result = memcpy((size + 8 * data_low), *(a2 + 56), 8 * *(a2 + 48));
  }

  v12 = *(a2 + 64);
  if (v12)
  {
    v13 = SLODWORD(v3[2].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[2].__r_.__value_.__r.__words[2], v13 + v12);
    data = v3[3].__r_.__value_.__l.__data_;
    LODWORD(v3[2].__r_.__value_.__r.__words[2]) += *(a2 + 64);
    result = memcpy(&data[4 * v13], *(a2 + 72), 4 * *(a2 + 64));
  }

  v15 = *(a2 + 88);
  if (v15)
  {
    v16 = *(a2 + 96);
    v17 = sub_19592E8(&v3[3].__r_.__value_.__l.__size_, *(a2 + 88));
    result = sub_15B632C((v3 + 80), v17, (v16 + 8), v15, *v3[4].__r_.__value_.__l.__data_ - LODWORD(v3[3].__r_.__value_.__r.__words[2]));
    v18 = LODWORD(v3[3].__r_.__value_.__r.__words[2]) + v15;
    LODWORD(v3[3].__r_.__value_.__r.__words[2]) = v18;
    v19 = v3[4].__r_.__value_.__l.__data_;
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 16);
  if ((v20 & 3) != 0)
  {
    if (v20)
    {
      v3[4].__r_.__value_.__s.__data_[8] = *(a2 + 104);
    }

    if ((v20 & 2) != 0)
    {
      v3[4].__r_.__value_.__s.__data_[9] = *(a2 + 105);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v20;
  }

  v21 = *(a2 + 8);
  if (v21)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_15A1FD0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    v2 = *(a1 + 16) + 8;
    do
    {
      v3 = v1--;
      v4 = *(v2 + 8 * v1);
      v5 = *(v4 + 32);
      v6 = *(v4 + 40);
      while (v5 >= 1)
      {
        v7 = v5 - 1;
        v8 = sub_15B16F0(*(v6 + 8 * v5));
        v5 = v7;
        if (!v8)
        {
          return 0;
        }
      }
    }

    while (v3 >= 2);
  }

  return 1;
}

uint64_t sub_15A2068(uint64_t a1)
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

void sub_15A2134(uint64_t a1)
{
  sub_15A2068(a1);

  operator delete();
}

uint64_t sub_15A216C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) != 0)
  {
    if ((v1 & 1) == 0)
    {
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
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
        if ((v1 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_14;
    }

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
  }

LABEL_17:
  if ((v1 & 0x78) != 0)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v6)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_15A2230(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v37 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v37, i) & 1) == 0; i = a3[11].i32[1])
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
    if (v7 >> 3 <= 3)
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v21 = v6 + 1;
          v20 = *v6;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_38;
          }

          v22 = *v21;
          v20 = (v22 << 7) + v20 - 128;
          if (v22 < 0)
          {
            *v37 = sub_19587DC(v6, v20);
            if (!*v37)
            {
              goto LABEL_85;
            }
          }

          else
          {
            v21 = v6 + 2;
LABEL_38:
            *v37 = v21;
          }

          if (v20 > 5)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 8u;
            *(a1 + 48) = v20;
          }

          continue;
        }

        goto LABEL_60;
      }

      if (v10 != 2)
      {
        if (v10 == 3 && v7 == 24)
        {
          v15 = v6 + 1;
          v16 = *v6;
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          v17 = *v15;
          v18 = (v17 << 7) + v16;
          LODWORD(v16) = v18 - 128;
          if (v17 < 0)
          {
            *v37 = sub_19587DC(v6, (v18 - 128));
            if (!*v37)
            {
              goto LABEL_85;
            }

            LODWORD(v16) = v35;
          }

          else
          {
            v15 = v6 + 2;
LABEL_25:
            *v37 = v15;
          }

          if (sub_1470AE4(v16))
          {
            *(a1 + 16) |= 0x10u;
            *(a1 + 52) = v16;
          }

          else
          {
            sub_1313740();
          }

          continue;
        }

        goto LABEL_60;
      }

      if (v7 != 18)
      {
        goto LABEL_60;
      }

      *(a1 + 16) |= 1u;
      v29 = *(a1 + 8);
      v12 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v12 = *v12;
      }

      v13 = (a1 + 24);
    }

    else if (v7 >> 3 > 5)
    {
      if (v10 == 6)
      {
        if (v7 == 48)
        {
          v27 = v6 + 1;
          v26 = *v6;
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_52;
          }

          v28 = *v27;
          v26 = (v28 << 7) + v26 - 128;
          if (v28 < 0)
          {
            *v37 = sub_19587DC(v6, v26);
            if (!*v37)
            {
              goto LABEL_85;
            }
          }

          else
          {
            v27 = v6 + 2;
LABEL_52:
            *v37 = v27;
          }

          if (v26 > 2)
          {
            sub_13137B8();
          }

          else
          {
            *(a1 + 16) |= 0x40u;
            *(a1 + 60) = v26;
          }

          continue;
        }

        goto LABEL_60;
      }

      if (v10 != 7 || v7 != 58)
      {
        goto LABEL_60;
      }

      *(a1 + 16) |= 4u;
      v19 = *(a1 + 8);
      v12 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v12 = *v12;
      }

      v13 = (a1 + 40);
    }

    else
    {
      if (v10 == 4)
      {
        if (v7 == 32)
        {
          v24 = v6 + 1;
          v23 = *v6;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_45;
          }

          v25 = *v24;
          v23 = (v25 << 7) + v23 - 128;
          if (v25 < 0)
          {
            *v37 = sub_19587DC(v6, v23);
            if (!*v37)
            {
              goto LABEL_85;
            }
          }

          else
          {
            v24 = v6 + 2;
LABEL_45:
            *v37 = v24;
          }

          if (v23 > 2)
          {
            sub_12E8500();
          }

          else
          {
            *(a1 + 16) |= 0x20u;
            *(a1 + 56) = v23;
          }

          continue;
        }

LABEL_60:
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
            return *v37;
          }

LABEL_85:
          *v37 = 0;
          return *v37;
        }

        v33 = *(a1 + 8);
        if (v33)
        {
          v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v34 = sub_11F1920((a1 + 8));
          v6 = *v37;
        }

        v31 = sub_1952690(v7, v34, v6, a3);
        goto LABEL_67;
      }

      if (v10 != 5 || v7 != 42)
      {
        goto LABEL_60;
      }

      *(a1 + 16) |= 2u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v13 = (a1 + 32);
    }

    v30 = sub_194DB04(v13, v12);
    v31 = sub_1958890(v30, *v37, a3);
LABEL_67:
    *v37 = v31;
    if (!v31)
    {
      goto LABEL_85;
    }
  }

  return *v37;
}

char *sub_15A25FC(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) != 0)
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

  if (v5)
  {
    v6 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 52);
    *v6 = 24;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v14) = v6[2];
        do
        {
          *(v11 - 1) = v14 | 0x80;
          v14 = v13 >> 7;
          *v11++ = v13 >> 7;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
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

    v17 = *(a1 + 56);
    *v11 = 32;
    v11[1] = v17;
    if (v17 > 0x7F)
    {
      v11[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v11[2] = v17 >> 7;
      v16 = v11 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v19) = v11[2];
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
      v16 = v11 + 2;
    }
  }

  else
  {
    v16 = v11;
  }

  if ((v5 & 2) != 0)
  {
    v16 = sub_128AEEC(a3, 5, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v16);
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v22 = *(a1 + 60);
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
        LOBYTE(v24) = v16[2];
        do
        {
          *(v21 - 1) = v24 | 0x80;
          v24 = v23 >> 7;
          *v21++ = v23 >> 7;
          v25 = v23 >> 14;
          v23 >>= 7;
        }

        while (v25);
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

  if ((v5 & 4) != 0)
  {
    v21 = sub_128AEEC(a3, 7, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v21);
  }

  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return v21;
  }

  v28 = v26 & 0xFFFFFFFFFFFFFFFCLL;
  v29 = *(v28 + 31);
  if (v29 < 0)
  {
    v30 = *(v28 + 8);
    v29 = *(v28 + 16);
  }

  else
  {
    v30 = (v28 + 8);
  }

  if (*a3 - v21 >= v29)
  {
    v31 = v29;
    memcpy(v21, v30, v29);
    v21 += v31;
    return v21;
  }

  return sub_1957130(a3, v30, v29, v21);
}

uint64_t sub_15A2910(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x7F) == 0)
  {
    v2 = 0;
    goto LABEL_37;
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
    v9 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  v12 = *(a1 + 48);
  if (v12 < 0)
  {
    v13 = 11;
  }

  else
  {
    v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v13;
  if ((v1 & 0x10) == 0)
  {
LABEL_15:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_25:
  v14 = *(a1 + 52);
  if (v14 < 0)
  {
    v15 = 11;
  }

  else
  {
    v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v15;
  if ((v1 & 0x20) == 0)
  {
LABEL_16:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_29:
  v16 = *(a1 + 56);
  if (v16 < 0)
  {
    v17 = 11;
  }

  else
  {
    v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v17;
  if ((v1 & 0x40) != 0)
  {
LABEL_33:
    v18 = *(a1 + 60);
    if (v18 < 0)
    {
      v19 = 11;
    }

    else
    {
      v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v19;
  }

LABEL_37:
  v20 = *(a1 + 8);
  if (v20)
  {
    v22 = v20 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v20 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    v2 += v23;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_15A2B0C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0x7F) != 0)
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

        goto LABEL_21;
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

      goto LABEL_24;
    }

LABEL_21:
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

      goto LABEL_25;
    }

LABEL_24:
    LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_26;
    }

LABEL_25:
    HIDWORD(v3[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
LABEL_10:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_11;
      }

LABEL_9:
      HIDWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
      goto LABEL_10;
    }

LABEL_26:
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_15A2C84(uint64_t a1)
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

void sub_15A2D50(uint64_t a1)
{
  sub_15A2C84(a1);

  operator delete();
}

uint64_t sub_15A2D88(uint64_t a1)
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

uint64_t sub_15A2E40(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_15A2FFC(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_15A3110(uint64_t a1)
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

uint64_t sub_15A3240(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_15;
    }
  }

  else if (v4)
  {
    goto LABEL_15;
  }

  v5 = (a1 + 40);
  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C(v5);
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

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_15:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15A333C(uint64_t a1)
{
  sub_15A3240(a1);

  operator delete();
}

uint64_t sub_15A3374(uint64_t a1)
{
  *(a1 + 24) = 0;
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) == 0)
  {
    goto LABEL_27;
  }

  if (v1)
  {
    v2 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    v4 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_6:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_27;
    }

LABEL_24:
    v6 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
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

    goto LABEL_27;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_12:
  v3 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v3 + 23) < 0)
  {
    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *v3 = 0;
    *(v3 + 23) = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_16;
    }
  }

LABEL_5:
  if ((v1 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_20:
  v5 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v1 & 0x10) != 0)
  {
    goto LABEL_24;
  }

LABEL_27:
  v8 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v8)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_15A3498(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v33 = a2;
  if (sub_195ADC0(a3, v33, a3[11].i32[1]))
  {
    return *v33;
  }

  v6 = (a1 + 8);
  while (1)
  {
    v7 = (*v33 + 1);
    v8 = **v33;
    if (**v33 < 0)
    {
      v9 = *v7;
      v10 = v8 + (v9 << 7);
      v8 = v10 - 128;
      if (v9 < 0)
      {
        v7 = sub_1958824(*v33, v10 - 128);
        v8 = v11;
      }

      else
      {
        v7 = (*v33 + 2);
      }
    }

    *v33 = v7;
    v12 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v12 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_61;
      }

      *(a1 + 16) |= 8u;
      v26 = *(a1 + 8);
      v15 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v15 = *v15;
      }

      v16 = (a1 + 64);
      goto LABEL_55;
    }

    if (v12 == 5)
    {
      if (v8 != 42)
      {
        goto LABEL_61;
      }

      *(a1 + 16) |= 0x10u;
      v28 = *(a1 + 8);
      v15 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v15 = *v15;
      }

      v16 = (a1 + 72);
      goto LABEL_55;
    }

    if (v12 != 6)
    {
      goto LABEL_61;
    }

    if (v8 == 48)
    {
      v17 = (v7 - 1);
      while (1)
      {
        *v33 = v17 + 1;
        v18 = *(v17 + 1);
        v19 = (v17 + 2);
        if (v18 < 0)
        {
          v20 = *v19;
          v21 = (v20 << 7) + v18;
          LODWORD(v18) = v21 - 128;
          if (v20 < 0)
          {
            *v33 = sub_19587DC(v17 + 1, (v21 - 128));
            if (!*v33)
            {
              return 0;
            }

            LODWORD(v18) = v24;
            goto LABEL_28;
          }

          v19 = (v17 + 3);
        }

        *v33 = v19;
LABEL_28:
        if ((v18 - 1) > 4)
        {
          sub_13137B8();
        }

        else
        {
          v22 = *(a1 + 24);
          if (v22 == *(a1 + 28))
          {
            v23 = v22 + 1;
            sub_1958E5C((a1 + 24), v22 + 1);
            *(*(a1 + 32) + 4 * v22) = v18;
          }

          else
          {
            *(*(a1 + 32) + 4 * v22) = v18;
            v23 = v22 + 1;
          }

          *(a1 + 24) = v23;
        }

        v17 = *v33;
        if (*a3 <= *v33 || **v33 != 48)
        {
          goto LABEL_57;
        }
      }
    }

    if (v8 != 50)
    {
      goto LABEL_61;
    }

    *&v34 = a1 + 24;
    *(&v34 + 1) = sub_157DA84;
    v35 = a1 + 8;
    v36 = 6;
    v30 = sub_1216588(a3, v7, &v34);
LABEL_56:
    *v33 = v30;
    if (!v30)
    {
      return 0;
    }

LABEL_57:
    if (sub_195ADC0(a3, v33, a3[11].i32[1]))
    {
      return *v33;
    }
  }

  if (v12 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_61;
    }

    *(a1 + 16) |= 1u;
    v25 = *(a1 + 8);
    v15 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v15 = *v15;
    }

    v16 = (a1 + 40);
    goto LABEL_55;
  }

  if (v12 == 2)
  {
    if (v8 != 18)
    {
      goto LABEL_61;
    }

    *(a1 + 16) |= 2u;
    v27 = *(a1 + 8);
    v15 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v15 = *v15;
    }

    v16 = (a1 + 48);
    goto LABEL_55;
  }

  if (v12 == 3 && v8 == 26)
  {
    *(a1 + 16) |= 4u;
    v14 = *(a1 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    v16 = (a1 + 56);
LABEL_55:
    v29 = sub_194DB04(v16, v15);
    v30 = sub_1958890(v29, *v33, a3);
    goto LABEL_56;
  }

LABEL_61:
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
    if (*v6)
    {
      v32 = (*v6 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v32 = sub_11F1920((a1 + 8));
      v7 = *v33;
    }

    v30 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_56;
  }

  if (!v7)
  {
    return 0;
  }

  a3[10].i32[0] = v8 - 1;
  return *v33;
}

char *sub_15A3814(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, a2);
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

  v4 = sub_128AEEC(a3, 2, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4 = sub_128AEEC(a3, 3, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_21:
  v4 = sub_128AEEC(a3, 4, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x10) != 0)
  {
LABEL_6:
    v4 = sub_128AEEC(a3, 5, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_7:
  v7 = *(a1 + 24);
  if (v7 < 1)
  {
    v10 = v4;
  }

  else
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v9 = *(*(a1 + 32) + 4 * i);
      *v4 = 48;
      v4[1] = v9;
      if (v9 > 0x7F)
      {
        v4[1] = v9 | 0x80;
        v11 = v9 >> 7;
        v4[2] = v9 >> 7;
        v10 = v4 + 3;
        if (v9 >= 0x4000)
        {
          LOBYTE(v12) = v4[2];
          do
          {
            *(v10 - 1) = v12 | 0x80;
            v12 = v11 >> 7;
            *v10++ = v11 >> 7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
        }
      }

      else
      {
        v10 = v4 + 2;
      }

      v4 = v10;
    }
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v10;
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

  if (*a3 - v10 >= v17)
  {
    v19 = v17;
    memcpy(v10, v18, v17);
    v10 += v19;
    return v10;
  }

  return sub_1957130(a3, v18, v17, v10);
}

uint64_t sub_15A3A10(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 32) + 4 * v2);
      if (v4 < 0)
      {
        v5 = 10;
      }

      else
      {
        v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
      }

      v3 += v5;
      ++v2;
    }

    while (v1 != v2);
  }

  else
  {
    v3 = 0;
  }

  v6 = v3 + v1;
  v7 = *(a1 + 16);
  if ((v7 & 0x1F) == 0)
  {
    goto LABEL_18;
  }

  if (v7)
  {
    v13 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v6 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 2) == 0)
    {
LABEL_12:
      if ((v7 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_12;
  }

  v16 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 23);
  v18 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v18 = v17;
  }

  v6 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 4) == 0)
  {
LABEL_13:
    if ((v7 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_26:
  v19 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v20 = *(v19 + 23);
  v21 = *(v19 + 8);
  if ((v20 & 0x80u) == 0)
  {
    v21 = v20;
  }

  v6 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 8) == 0)
  {
LABEL_14:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_29:
  v22 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v23 = *(v22 + 23);
  v24 = *(v22 + 8);
  if ((v23 & 0x80u) == 0)
  {
    v24 = v23;
  }

  v6 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 0x10) != 0)
  {
LABEL_15:
    v8 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v6 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_18:
  v11 = *(a1 + 8);
  if (v11)
  {
    v25 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v26 < 0)
    {
      v26 = *(v25 + 16);
    }

    v6 += v26;
  }

  *(a1 + 20) = v6;
  return v6;
}

std::string *sub_15A3C0C(std::string *result, uint64_t a2)
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
  if ((v8 & 0x1F) == 0)
  {
    goto LABEL_25;
  }

  if (v8)
  {
    v9 = *(a2 + 40);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    v10 = v3->__r_.__value_.__l.__size_;
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    result = sub_194EA1C(&v3[1].__r_.__value_.__r.__words[2], (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v8 & 2) == 0)
    {
LABEL_6:
      if ((v8 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_16:
      v15 = *(a2 + 56);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
      v16 = v3->__r_.__value_.__l.__size_;
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      result = sub_194EA1C(&v3[2].__r_.__value_.__l.__size_, (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
      if ((v8 & 8) == 0)
      {
LABEL_8:
        if ((v8 & 0x10) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }

      goto LABEL_19;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(a2 + 48);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
  v13 = v3->__r_.__value_.__l.__size_;
  v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
  if (v13)
  {
    v14 = *v14;
  }

  result = sub_194EA1C(&v3[2], (v12 & 0xFFFFFFFFFFFFFFFELL), v14);
  if ((v8 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v8 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_19:
  v18 = *(a2 + 64);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
  v19 = v3->__r_.__value_.__l.__size_;
  v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
  if (v19)
  {
    v20 = *v20;
  }

  result = sub_194EA1C(&v3[2].__r_.__value_.__r.__words[2], (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
  if ((v8 & 0x10) != 0)
  {
LABEL_22:
    v21 = *(a2 + 72);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
    v22 = v3->__r_.__value_.__l.__size_;
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    result = sub_194EA1C(&v3[3], (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
  }

LABEL_25:
  v24 = *(a2 + 8);
  if (v24)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_15A3DEC(uint64_t a1)
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

  if (a1 != &off_2778578)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_15B1C80(v6);
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

void sub_15A3EB8(uint64_t a1)
{
  sub_15A3DEC(a1);

  operator delete();
}

uint64_t sub_15A3EF0(uint64_t result)
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
      result = sub_1580044(*(result + 32));
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

uint64_t sub_15A3F88(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v26 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v26, i) & 1) == 0; i = a3[11].i32[1])
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
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v21 = sub_194DB04((a1 + 24), v20);
      v15 = sub_1958890(v21, *v26, a3);
    }

    else
    {
      if (v10 == 2)
      {
        if (v7 == 16)
        {
          v17 = v6 + 1;
          v16 = *v6;
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_24;
          }

          v18 = *v17;
          v16 = (v18 << 7) + v16 - 128;
          if (v18 < 0)
          {
            *v26 = sub_19587DC(v6, v16);
            if (!*v26)
            {
              goto LABEL_45;
            }
          }

          else
          {
            v17 = v6 + 2;
LABEL_24:
            *v26 = v17;
          }

          if (v16 > 7)
          {
            sub_12E8418();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 40) = v16;
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
            return *v26;
          }

LABEL_45:
          *v26 = 0;
          return *v26;
        }

        v13 = *(a1 + 8);
        if (v13)
        {
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v14 = sub_11F1920((a1 + 8));
          v6 = *v26;
        }

        v15 = sub_1952690(v7, v14, v6, a3);
        goto LABEL_36;
      }

      if (v10 != 1 || v7 != 10)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v22 = *(a1 + 32);
      if (!v22)
      {
        v23 = *(a1 + 8);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        v22 = sub_15B234C(v24);
        *(a1 + 32) = v22;
        v6 = *v26;
      }

      v15 = sub_221ECFC(a3, v22, v6);
    }

LABEL_36:
    *v26 = v15;
    if (!v15)
    {
      goto LABEL_45;
    }
  }

  return *v26;
}

char *sub_15A41A0(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 32);
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

    __dst = sub_15B1F3C(v6, v8, a3);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 40);
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

  if (v5)
  {
    v9 = sub_128AEEC(a3, 3, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v9);
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v9;
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

  if (*a3 - v9 >= v17)
  {
    v19 = v17;
    memcpy(v9, v18, v17);
    v9 += v19;
    return v9;
  }

  return sub_1957130(a3, v18, v17, v9);
}

uint64_t sub_15A434C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    v7 = sub_15B20A0(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v8 = *(a1 + 40);
    if (v8 < 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v9;
  }

LABEL_15:
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

std::string *sub_15A4464(std::string *result, uint64_t a2)
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

      v9 = sub_15B234C(v11);
      v3[1].__r_.__value_.__l.__size_ = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_27789A0;
    }

    result = sub_1581C8C(v9, v12);
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

uint64_t sub_15A4574(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v5 = v3 - 1;
    v6 = sub_15B16F0(*(v4 + 8 * v3));
    v3 = v5;
  }

  while (v6);
  return v1;
}

uint64_t sub_15A45E8(uint64_t a1)
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

void sub_15A46A0(uint64_t a1)
{
  sub_15A45E8(a1);

  operator delete();
}

uint64_t sub_15A46D8(uint64_t a1)
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

uint64_t sub_15A4758(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 24)
      {
        v20 = v6 + 1;
        v19 = *v6;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          *v25 = sub_19587DC(v6, v19);
          if (!*v25)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v20 = v6 + 2;
LABEL_28:
          *v25 = v20;
        }

        if (v19 > 2)
        {
          sub_1313740();
        }

        else
        {
          *(a1 + 16) |= 4u;
          *(a1 + 40) = v19;
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
          return *v25;
        }

LABEL_44:
        *v25 = 0;
        return *v25;
      }

      v13 = *(a1 + 8);
      if (v13)
      {
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v14 = sub_11F1920((a1 + 8));
        v6 = *v25;
      }

      v15 = sub_1952690(v7, v14, v6, a3);
      goto LABEL_35;
    }

    if (v10 == 2)
    {
      if (v7 != 18)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v18 = (a1 + 32);
    }

    else
    {
      if (v10 != 1 || v7 != 10)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v22 = *(a1 + 8);
      v17 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v17 = *v17;
      }

      v18 = (a1 + 24);
    }

    v23 = sub_194DB04(v18, v17);
    v15 = sub_1958890(v23, *v25, a3);
LABEL_35:
    *v25 = v15;
    if (!v15)
    {
      goto LABEL_44;
    }
  }

  return *v25;
}

char *sub_15A4954(uint64_t a1, char *__dst, void *a3)
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
    v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_14;
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 40);
  *v4 = 24;
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

LABEL_14:
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

uint64_t sub_15A4AC4(uint64_t a1)
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

uint64_t sub_15A4BE4(uint64_t a1)
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

  if (a1 != &off_27785D8 && *(a1 + 24))
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

void sub_15A4C9C(uint64_t a1)
{
  sub_15A4BE4(a1);

  operator delete();
}

unsigned __int8 *sub_15A4CD4(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2)
  {
    result = sub_16E4E44(*(result + 3));
  }

  if ((v2 & 6) != 0)
  {
    *(v1 + 10) = 0;
    *(v1 + 4) = 0;
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

char *sub_15A4D40(uint64_t a1, char *a2, int32x2_t *a3)
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
      break;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      LODWORD(v17) = *v7;
      if ((v17 & 0x80000000) == 0)
      {
        v18 = v7 + 1;
LABEL_37:
        v29 = v18;
        *(a1 + 40) = v17;
        goto LABEL_38;
      }

      v17 = (v7[1] << 7) + v17 - 128;
      if ((v7[1] & 0x80000000) == 0)
      {
        v18 = v7 + 2;
        goto LABEL_37;
      }

      v25 = sub_19587DC(v7, v17);
      v29 = v25;
      *(a1 + 40) = v26;
      if (!v25)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if (v11 != 1 || v8 != 8)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v23 = v7 + 1;
      v22 = *v7;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_34;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_34:
        v29 = v23;
        *(a1 + 32) = v22;
        goto LABEL_38;
      }

      v27 = sub_19587DC(v7, v22);
      v29 = v27;
      *(a1 + 32) = v28;
      if (!v27)
      {
        goto LABEL_47;
      }
    }

LABEL_38:
    if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
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

      v19 = sub_16F5828(v21);
      *(a1 + 24) = v19;
      v7 = v29;
    }

    v16 = sub_21F4D60(a3, v19, v7);
LABEL_29:
    v29 = v16;
    if (!v16)
    {
      goto LABEL_47;
    }

    goto LABEL_38;
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
      v7 = v29;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_29;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_47:
  v29 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v29;
}

char *sub_15A4F80(uint64_t a1, char *__dst, _DWORD *a3)
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
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v15 = *(a1 + 24);
    *v11 = 26;
    v16 = *(v15 + 44);
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v11 + 1);
    }

    else
    {
      v17 = v11 + 2;
    }

    v11 = sub_16E5070(v15, v17, a3);
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v11;
  }

  v20 = v18 & 0xFFFFFFFFFFFFFFFCLL;
  v21 = *(v20 + 31);
  if (v21 < 0)
  {
    v22 = *(v20 + 8);
    v21 = *(v20 + 16);
  }

  else
  {
    v22 = (v20 + 8);
  }

  if (*a3 - v11 >= v21)
  {
    v23 = v21;
    memcpy(v11, v22, v21);
    v11 += v23;
    return v11;
  }

  return sub_1957130(a3, v22, v21, v11);
}

uint64_t sub_15A5194(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    result = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v4 = sub_16E51F0(*(a1 + 24));
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
    v5 = *(a1 + 40);
    if (v5 < 0)
    {
      v6 = 11;
    }

    else
    {
      v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v6;
  }

LABEL_13:
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

void sub_15A5280(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
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

        v6 = sub_16F5828(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277E5E8;
      }

      sub_16E527C(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          *(a1 + 16) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        *(a1 + 40) = *(a2 + 40);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 32) = *(a2 + 32);
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

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15A5368(uint64_t a1)
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

uint64_t sub_15A53A8(uint64_t a1)
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
  if (a1 != &off_2778608)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15A4BE4(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_15B5510((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15A546C(uint64_t a1)
{
  sub_15A53A8(a1);

  operator delete();
}

unsigned __int8 *sub_15A54A4(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15A4CD4(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  if (v1[16])
  {
    result = sub_15A4CD4(*(v1 + 6));
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

char *sub_15A5534(uint64_t a1, char *a2, int32x2_t *a3)
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
        v15 = v6 - 1;
        while (1)
        {
          v16 = (v15 + 1);
          v25 = v15 + 1;
          v17 = *(a1 + 40);
          if (v17 && (v18 = *(a1 + 32), v18 < *v17))
          {
            *(a1 + 32) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = sub_15AE398(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = v25;
          }

          v15 = sub_222025C(a3, v19, v16);
          v25 = v15;
          if (!v15)
          {
            return 0;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_35;
          }
        }
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 48);
      if (!v21)
      {
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v21 = sub_15AE398(v23);
        *(a1 + 48) = v21;
        v6 = v25;
      }

      v14 = sub_222025C(a3, v21, v6);
      goto LABEL_34;
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
LABEL_34:
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

char *sub_15A5718(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_15A4F80(v6, v8, a3);
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

      v4 = sub_15A4F80(v11, v13, a3);
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

  if (*a3 - v4 >= v17)
  {
    v19 = v17;
    memcpy(v4, v18, v17);
    v4 += v19;
    return v4;
  }

  return sub_1957130(a3, v18, v17, v4);
}

uint64_t sub_15A58C0(uint64_t a1)
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
      v7 = sub_15A5194(v6);
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
    v8 = sub_15A5194(*(a1 + 48));
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

void sub_15A599C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15B63B8((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

      v10 = sub_15AE398(v12);
      *(a1 + 48) = v10;
      v9 = *(a2 + 48);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_27785D8;
    }

    sub_15A5280(v10, v13);
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15A5AAC(uint64_t a1)
{
  result = sub_12B329C(a1 + 24);
  if (result)
  {
    if ((*(a1 + 16) & 1) == 0)
    {
      return 1;
    }

    v3 = *(a1 + 48);
    if ((*(v3 + 16) & 1) == 0)
    {
      return 1;
    }

    result = sub_16E5370(*(v3 + 24));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_15A5B0C(void *a1)
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

void sub_15A5B80(void *a1)
{
  sub_15A5B0C(a1);

  operator delete();
}

uint64_t sub_15A5BB8(uint64_t a1)
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

char *sub_15A5BD0(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_15A5D44(uint64_t a1, char *__dst, _DWORD *a3)
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

unint64_t sub_15A5E6C(uint64_t a1)
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

void *sub_15A5EE4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_15B569C(a1 + 11);
  sub_15B5618(a1 + 8);
  sub_15B5594(a1 + 5);
  sub_15B4E5C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15A5F88(void *a1)
{
  sub_15A5EE4(a1);

  operator delete();
}

uint64_t sub_15A5FC0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 32) + 8);
    do
    {
      v4 = *v3++;
      sub_1579FA0(v4);
      --v2;
    }

    while (v2);
    *(a1 + 24) = 0;
  }

  v5 = *(a1 + 48);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 56) + 8);
    do
    {
      v7 = *v6++;
      sub_1402588(v7);
      --v5;
    }

    while (v5);
    *(a1 + 48) = 0;
  }

  v8 = *(a1 + 72);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 80) + 8);
    do
    {
      v10 = *v9++;
      sub_15A54A4(v10);
      --v8;
    }

    while (v8);
    *(a1 + 72) = 0;
  }

  result = sub_12E4E18(a1 + 88);
  v13 = *(a1 + 8);
  v12 = (a1 + 8);
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

char *sub_15A6094(uint64_t a1, char *a2, int32x2_t *a3)
{
  v39 = a2;
  if ((sub_195ADC0(a3, &v39, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = v39 + 1;
      v7 = *v39;
      if (*v39 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          v6 = sub_1958824(v39, v8 - 128);
          v7 = v9;
        }

        else
        {
          v6 = v39 + 2;
        }
      }

      v39 = v6;
      v10 = v7 >> 3;
      if (v7 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v7 == 26)
          {
            v30 = v6 - 1;
            while (1)
            {
              v31 = (v30 + 1);
              v39 = v30 + 1;
              v32 = *(a1 + 80);
              if (v32 && (v33 = *(a1 + 72), v33 < *v32))
              {
                *(a1 + 72) = v33 + 1;
                v34 = *&v32[2 * v33 + 2];
              }

              else
              {
                v35 = sub_15AE418(*(a1 + 64));
                v34 = sub_19593CC(a1 + 64, v35);
                v31 = v39;
              }

              v30 = sub_22202EC(a3, v34, v31);
              v39 = v30;
              if (!v30)
              {
                return 0;
              }

              if (*a3 <= v30 || *v30 != 26)
              {
                goto LABEL_62;
              }
            }
          }
        }

        else if (v10 == 4 && v7 == 34)
        {
          v18 = v6 - 1;
          while (1)
          {
            v19 = (v18 + 1);
            v39 = v18 + 1;
            v20 = *(a1 + 104);
            if (v20 && (v21 = *(a1 + 96), v21 < *v20))
            {
              *(a1 + 96) = v21 + 1;
              v22 = *&v20[2 * v21 + 2];
            }

            else
            {
              v23 = sub_15AE4B4(*(a1 + 88));
              v22 = sub_19593CC(a1 + 88, v23);
              v19 = v39;
            }

            v18 = sub_222037C(a3, v22, v19);
            v39 = v18;
            if (!v18)
            {
              return 0;
            }

            if (*a3 <= v18 || *v18 != 34)
            {
              goto LABEL_62;
            }
          }
        }
      }

      else if (v10 == 1)
      {
        if (v7 == 10)
        {
          v24 = v6 - 1;
          while (1)
          {
            v25 = (v24 + 1);
            v39 = v24 + 1;
            v26 = *(a1 + 32);
            if (v26 && (v27 = *(a1 + 24), v27 < *v26))
            {
              *(a1 + 24) = v27 + 1;
              v28 = *&v26[2 * v27 + 2];
            }

            else
            {
              v29 = sub_157B820(*(a1 + 16));
              v28 = sub_19593CC(a1 + 16, v29);
              v25 = v39;
            }

            v24 = sub_221FA7C(a3, v28, v25);
            v39 = v24;
            if (!v24)
            {
              return 0;
            }

            if (*a3 <= v24 || *v24 != 10)
            {
              goto LABEL_62;
            }
          }
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        v12 = v6 - 1;
        while (1)
        {
          v13 = (v12 + 1);
          v39 = v12 + 1;
          v14 = *(a1 + 56);
          if (v14 && (v15 = *(a1 + 48), v15 < *v14))
          {
            *(a1 + 48) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_14050A4(*(a1 + 40));
            v16 = sub_19593CC(a1 + 40, v17);
            v13 = v39;
          }

          v12 = sub_2201B80(a3, v16, v13);
          v39 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 18)
          {
            goto LABEL_62;
          }
        }
      }

      if (!v7 || (v7 & 7) == 4)
      {
        break;
      }

      v37 = *(a1 + 8);
      if (v37)
      {
        v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v38 = sub_11F1920((a1 + 8));
        v6 = v39;
      }

      v39 = sub_1952690(v7, v38, v6, a3);
      if (!v39)
      {
        return 0;
      }

LABEL_62:
      if (sub_195ADC0(a3, &v39, a3[11].i32[1]))
      {
        return v39;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return v39;
    }

    return 0;
  }

  return v39;
}

char *sub_15A63F8(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_157A174(v8, v10, a3);
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
      v14 = *(v13 + 44);
      __dst[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, __dst + 1);
      }

      else
      {
        v15 = __dst + 2;
      }

      __dst = sub_1403020(v13, v15, a3);
    }
  }

  v16 = *(a1 + 72);
  if (v16)
  {
    for (k = 0; k != v16; ++k)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v18 = *(*(a1 + 80) + 8 * k + 8);
      *__dst = 26;
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

      __dst = sub_15A5718(v18, v20, a3);
    }
  }

  v21 = *(a1 + 96);
  if (v21)
  {
    for (m = 0; m != v21; ++m)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v23 = *(*(a1 + 104) + 8 * m + 8);
      *__dst = 34;
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

      __dst = sub_15A5D44(v23, v25, a3);
    }
  }

  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return __dst;
  }

  v28 = v26 & 0xFFFFFFFFFFFFFFFCLL;
  v29 = *(v28 + 31);
  if (v29 < 0)
  {
    v30 = *(v28 + 8);
    v29 = *(v28 + 16);
  }

  else
  {
    v30 = (v28 + 8);
  }

  if ((*a3 - __dst) >= v29)
  {
    v31 = v29;
    memcpy(__dst, v30, v29);
    __dst += v31;
    return __dst;
  }

  return sub_1957130(a3, v30, v29, __dst);
}

uint64_t sub_15A66C4(uint64_t a1)
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
      v7 = sub_157A274(v6);
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
      v14 = sub_1403980(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 72);
  v16 = v9 + v15;
  v17 = *(a1 + 80);
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
      v21 = sub_15A58C0(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 96);
  v23 = v16 + v22;
  v24 = *(a1 + 104);
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
      v28 = sub_15A5E6C(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 8);
  if (v29)
  {
    v31 = v29 & 0xFFFFFFFFFFFFFFFCLL;
    v32 = *((v29 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v32 < 0)
    {
      v32 = *(v31 + 16);
    }

    v23 += v32;
  }

  *(a1 + 112) = v23;
  return v23;
}

void sub_15A685C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_15B5CDC((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
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
    sub_15B6444((a1 + 40), v11, (v10 + 8), v9, **(a1 + 56) - *(a1 + 48));
    v12 = *(a1 + 48) + v9;
    *(a1 + 48) = v12;
    v13 = *(a1 + 56);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = *(a2 + 80);
    v16 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_15B64D0((a1 + 64), v16, (v15 + 8), v14, **(a1 + 80) - *(a1 + 72));
    v17 = *(a1 + 72) + v14;
    *(a1 + 72) = v17;
    v18 = *(a1 + 80);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 96);
  if (v19)
  {
    v20 = *(a2 + 104);
    v21 = sub_19592E8(a1 + 88, *(a2 + 96));
    sub_15B655C((a1 + 88), v21, (v20 + 8), v19, **(a1 + 104) - *(a1 + 96));
    v22 = *(a1 + 96) + v19;
    *(a1 + 96) = v22;
    v23 = *(a1 + 104);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 8);
  if (v24)
  {

    sub_1957EF4((a1 + 8), (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_15A6A2C(uint64_t a1)
{
  v2 = *(a1 + 48);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_140441C(*(*(a1 + 56) + 8 * v2));
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
    v8 = sub_15A5AAC(*(*(a1 + 80) + 8 * v6));
    v6 = v7;
  }

  while ((v8 & 1) != 0);
  return v5;
}

void *sub_15A6ABC(void *a1)
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

  sub_15A6B68(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_15B57A4(a1 + 10);
  sub_1956ABC((a1 + 8));
  sub_1956ABC((a1 + 6));
  sub_15B5720(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_15A6B68(uint64_t a1)
{
  v3 = *(a1 + 104);
  v2 = (a1 + 104);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 112);
  if (*(a1 + 112) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_27786B8)
  {
    v5 = *(a1 + 120);
    if (v5)
    {
      sub_158E644(v5);
      operator delete();
    }

    v6 = *(a1 + 128);
    if (v6)
    {
      sub_15903F0(v6);
      operator delete();
    }

    v7 = *(a1 + 136);
    if (v7)
    {
      sub_1591BEC(v7);
      operator delete();
    }

    v8 = *(a1 + 144);
    if (v8)
    {
      sub_15954E4(v8);
      operator delete();
    }

    v9 = *(a1 + 152);
    if (v9)
    {
      sub_159D40C(v9);
      operator delete();
    }

    v10 = *(a1 + 160);
    if (v10)
    {
      sub_159DBE8(v10);
      operator delete();
    }

    v11 = *(a1 + 168);
    if (v11)
    {
      sub_15A0694(v11);
      operator delete();
    }

    v12 = *(a1 + 176);
    if (v12)
    {
      sub_15A2068(v12);
      operator delete();
    }

    v13 = *(a1 + 184);
    if (v13)
    {
      sub_15A2C84(v13);
      operator delete();
    }

    v14 = *(a1 + 192);
    if (v14)
    {
      sub_15A3240(v14);
      operator delete();
    }

    v15 = *(a1 + 200);
    if (v15)
    {
      sub_15A3DEC(v15);
      operator delete();
    }

    v16 = *(a1 + 208);
    if (v16)
    {
      sub_15A45E8(v16);
      operator delete();
    }

    v17 = *(a1 + 216);
    if (v17)
    {
      sub_15A125C(v17);
      operator delete();
    }

    v18 = *(a1 + 224);
    if (v18)
    {
      sub_15921BC(v18);
      operator delete();
    }

    v19 = *(a1 + 232);
    if (v19)
    {
      sub_15A5EE4(v19);
      operator delete();
    }

    v20 = *(a1 + 240);
    if (v20)
    {
      sub_15926D0(v20);
      operator delete();
    }

    v21 = *(a1 + 248);
    if (v21)
    {
      sub_15A3DEC(v21);
      operator delete();
    }

    v22 = *(a1 + 256);
    if (v22)
    {
      sub_15970F0(v22);
      operator delete();
    }

    v23 = *(a1 + 264);
    if (v23)
    {
      sub_15970F0(v23);
      operator delete();
    }

    v24 = *(a1 + 272);
    if (v24)
    {
      sub_1597ACC(v24);
      operator delete();
    }

    v25 = *(a1 + 280);
    if (v25)
    {
      sub_1594F18(v25);
      operator delete();
    }

    v26 = *(a1 + 288);
    if (v26)
    {
      sub_15935F8(v26);
      operator delete();
    }

    v27 = *(a1 + 296);
    if (v27)
    {
      sub_159A258(v27);
      operator delete();
    }

    result = *(a1 + 304);
    if (result)
    {
      sub_1593D84(result);

      operator delete();
    }
  }

  return result;
}

void sub_15A6E98(void *a1)
{
  sub_15A6ABC(a1);

  operator delete();
}

uint64_t sub_15A6ED0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_158F1DC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  v5 = *(v1 + 88);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 96) + 8);
    do
    {
      v7 = *v6++;
      result = sub_158FC18(v7);
      --v5;
    }

    while (v5);
    *(v1 + 88) = 0;
  }

  v8 = *(v1 + 16);
  if (!v8)
  {
    goto LABEL_19;
  }

  if ((v8 & 1) == 0)
  {
    if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_70:
    v12 = *(v1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
      if ((v8 & 4) != 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
      if ((v8 & 4) != 0)
      {
        goto LABEL_74;
      }
    }

LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_75;
  }

  v11 = *(v1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v11 + 23) < 0)
  {
    **v11 = 0;
    *(v11 + 8) = 0;
    if ((v8 & 2) != 0)
    {
      goto LABEL_70;
    }
  }

  else
  {
    *v11 = 0;
    *(v11 + 23) = 0;
    if ((v8 & 2) != 0)
    {
      goto LABEL_70;
    }
  }

LABEL_12:
  if ((v8 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_74:
  result = sub_158E708(*(v1 + 120));
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_76;
  }

LABEL_75:
  result = sub_1590504(*(v1 + 128));
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_77:
    result = sub_159562C(*(v1 + 144));
    if ((v8 & 0x40) == 0)
    {
LABEL_17:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_78;
  }

LABEL_76:
  result = sub_1591CA4(*(v1 + 136));
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_77;
  }

LABEL_16:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_78:
  result = sub_159D510(*(v1 + 152));
  if ((v8 & 0x80) != 0)
  {
LABEL_18:
    result = sub_159DCD8(*(v1 + 160));
  }

LABEL_19:
  if ((v8 & 0xFF00) == 0)
  {
    goto LABEL_29;
  }

  if ((v8 & 0x100) != 0)
  {
    result = sub_15A079C(*(v1 + 168));
    if ((v8 & 0x200) == 0)
    {
LABEL_22:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_55;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_22;
  }

  result = sub_15A216C(*(v1 + 176));
  if ((v8 & 0x400) == 0)
  {
LABEL_23:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = sub_15A2D88(*(v1 + 184));
  if ((v8 & 0x800) == 0)
  {
LABEL_24:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = sub_15A3374(*(v1 + 192));
  if ((v8 & 0x1000) == 0)
  {
LABEL_25:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = sub_15A3EF0(*(v1 + 200));
  if ((v8 & 0x2000) == 0)
  {
LABEL_26:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = sub_15A46D8(*(v1 + 208));
  if ((v8 & 0x4000) == 0)
  {
LABEL_27:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_59:
  result = sub_15A132C(*(v1 + 216));
  if ((v8 & 0x8000) != 0)
  {
LABEL_28:
    result = sub_1592274(*(v1 + 224));
  }

LABEL_29:
  if ((v8 & 0xFF0000) == 0)
  {
    goto LABEL_39;
  }

  if ((v8 & 0x10000) != 0)
  {
    result = sub_15A5FC0(*(v1 + 232));
    if ((v8 & 0x20000) == 0)
    {
LABEL_32:
      if ((v8 & 0x40000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_63;
    }
  }

  else if ((v8 & 0x20000) == 0)
  {
    goto LABEL_32;
  }

  result = sub_15927DC(*(v1 + 240));
  if ((v8 & 0x40000) == 0)
  {
LABEL_33:
    if ((v8 & 0x80000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = sub_15A3EF0(*(v1 + 248));
  if ((v8 & 0x80000) == 0)
  {
LABEL_34:
    if ((v8 & 0x100000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = sub_15971A8(*(v1 + 256));
  if ((v8 & 0x100000) == 0)
  {
LABEL_35:
    if ((v8 & 0x200000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = sub_15971A8(*(v1 + 264));
  if ((v8 & 0x200000) == 0)
  {
LABEL_36:
    if ((v8 & 0x400000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = sub_1597BD4(*(v1 + 272));
  if ((v8 & 0x400000) == 0)
  {
LABEL_37:
    if ((v8 & 0x800000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_67:
  result = sub_1594FD0(*(v1 + 280));
  if ((v8 & 0x800000) != 0)
  {
LABEL_38:
    result = sub_15936FC(*(v1 + 288));
  }

LABEL_39:
  if ((v8 & 0x3000000) != 0)
  {
    if ((v8 & 0x1000000) != 0)
    {
      result = sub_159A310(*(v1 + 296));
    }

    if ((v8 & 0x2000000) != 0)
    {
      result = sub_1593E88(*(v1 + 304));
    }
  }

  if (v8 >> 26)
  {
    *(v1 + 312) = 0;
    *(v1 + 320) = 0;
  }

  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

uint64_t sub_15A7190(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v123 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v123, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (2)
  {
    v8 = (*v123 + 1);
    v9 = **v123;
    if (**v123 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(*v123, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = (*v123 + 2);
      }
    }

    *v123 = v8;
    switch(v9 >> 3)
    {
      case 1u:
        if (v9 != 10)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 1u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 104);
        goto LABEL_117;
      case 2u:
        if (v9 != 18)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 2u;
        v60 = *(a1 + 8);
        v14 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
        if (v60)
        {
          v14 = *v14;
        }

        v15 = (a1 + 112);
LABEL_117:
        v61 = sub_194DB04(v15, v14);
        v23 = sub_1958890(v61, *v123, a3);
        goto LABEL_266;
      case 3u:
        if (v9 != 24)
        {
          goto LABEL_259;
        }

        v5 |= 0x8000000u;
        LODWORD(v50) = *v8;
        if ((v50 & 0x80000000) == 0)
        {
          v51 = v8 + 1;
LABEL_243:
          *v123 = v51;
          *(a1 + 320) = v50;
          goto LABEL_267;
        }

        v50 = (v8[1] << 7) + v50 - 128;
        if ((v8[1] & 0x80000000) == 0)
        {
          v51 = v8 + 2;
          goto LABEL_243;
        }

        v116 = sub_19587DC(v8, v50);
        *v123 = v116;
        *(a1 + 320) = v117;
        if (!v116)
        {
          goto LABEL_272;
        }

        goto LABEL_267;
      case 4u:
        if (v9 != 33)
        {
          goto LABEL_259;
        }

        v5 |= 0x4000000u;
        *(a1 + 312) = *v8;
        *v123 = v8 + 8;
        goto LABEL_267;
      case 5u:
        if (v9 != 40)
        {
          goto LABEL_259;
        }

        v5 |= 0x10000000u;
        v39 = (v8 + 1);
        v38 = *v8;
        if ((v38 & 0x8000000000000000) == 0)
        {
          goto LABEL_68;
        }

        v40 = *v39;
        v38 = (v40 << 7) + v38 - 128;
        if (v40 < 0)
        {
          v112 = sub_19587DC(v8, v38);
          *v123 = v112;
          *(a1 + 324) = v113 != 0;
          if (!v112)
          {
            goto LABEL_272;
          }
        }

        else
        {
          v39 = (v8 + 2);
LABEL_68:
          *v123 = v39;
          *(a1 + 324) = v38 != 0;
        }

        goto LABEL_267;
      case 6u:
        if (v9 != 48)
        {
          goto LABEL_259;
        }

        v5 |= 0x20000000u;
        v69 = (v8 + 1);
        v68 = *v8;
        if ((v68 & 0x8000000000000000) == 0)
        {
          goto LABEL_140;
        }

        v70 = *v69;
        v68 = (v70 << 7) + v68 - 128;
        if (v70 < 0)
        {
          v118 = sub_19587DC(v8, v68);
          *v123 = v118;
          *(a1 + 325) = v119 != 0;
          if (!v118)
          {
            goto LABEL_272;
          }
        }

        else
        {
          v69 = (v8 + 2);
LABEL_140:
          *v123 = v69;
          *(a1 + 325) = v68 != 0;
        }

        goto LABEL_267;
      case 7u:
        if (v9 != 58)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 4u;
        v76 = *(a1 + 120);
        if (!v76)
        {
          v77 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v77 = *v77;
          }

          sub_15ACEF0(v77);
          v76 = v78;
          *(a1 + 120) = v78;
          v8 = *v123;
        }

        v23 = sub_222040C(a3, v76, v8);
        goto LABEL_266;
      case 8u:
        if (v9 != 66)
        {
          goto LABEL_259;
        }

        v54 = v8 - 1;
        while (1)
        {
          v55 = v54 + 1;
          *v123 = v54 + 1;
          v56 = *(a1 + 40);
          if (v56 && (v57 = *(a1 + 32), v57 < *v56))
          {
            *(a1 + 32) = v57 + 1;
            v58 = *&v56[2 * v57 + 2];
          }

          else
          {
            v59 = sub_15ACFA8(*(a1 + 24));
            v58 = sub_19593CC(a1 + 24, v59);
            v55 = *v123;
          }

          v54 = sub_222049C(a3, v58, v55);
          *v123 = v54;
          if (!v54)
          {
            goto LABEL_272;
          }

          if (*a3 <= v54 || *v54 != 66)
          {
            goto LABEL_267;
          }
        }

      case 9u:
        if (v9 != 74)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 8u;
        v83 = *(a1 + 128);
        if (!v83)
        {
          v84 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v84 = *v84;
          }

          v83 = sub_15AD104(v84);
          *(a1 + 128) = v83;
          v8 = *v123;
        }

        v23 = sub_222052C(a3, v83, v8);
        goto LABEL_266;
      case 0xAu:
        if (v9 != 80)
        {
          goto LABEL_259;
        }

        v5 |= 0x40000000u;
        v44 = (v8 + 1);
        v43 = *v8;
        if ((v43 & 0x8000000000000000) == 0)
        {
          goto LABEL_79;
        }

        v45 = *v44;
        v43 = (v45 << 7) + v43 - 128;
        if (v45 < 0)
        {
          v114 = sub_19587DC(v8, v43);
          *v123 = v114;
          *(a1 + 326) = v115 != 0;
          if (!v114)
          {
            goto LABEL_272;
          }
        }

        else
        {
          v44 = (v8 + 2);
LABEL_79:
          *v123 = v44;
          *(a1 + 326) = v43 != 0;
        }

        goto LABEL_267;
      case 0xBu:
        if (v9 != 90)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x10u;
        v81 = *(a1 + 136);
        if (!v81)
        {
          v82 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v82 = *v82;
          }

          v81 = sub_15AD1C0(v82);
          *(a1 + 136) = v81;
          v8 = *v123;
        }

        v23 = sub_22205BC(a3, v81, v8);
        goto LABEL_266;
      case 0xCu:
        if (v9 == 96)
        {
          v30 = (v8 - 1);
          while (1)
          {
            *v123 = v30 + 1;
            v31 = *(v30 + 1);
            v32 = (v30 + 2);
            if (v31 < 0)
            {
              v33 = *v32;
              v34 = (v33 << 7) + v31;
              LODWORD(v31) = v34 - 128;
              if (v33 < 0)
              {
                *v123 = sub_19587DC(v30 + 1, (v34 - 128));
                if (!*v123)
                {
                  goto LABEL_272;
                }

                LODWORD(v31) = v37;
                goto LABEL_53;
              }

              v32 = (v30 + 3);
            }

            *v123 = v32;
LABEL_53:
            if (v31 > 7)
            {
              sub_1348EB8();
            }

            else
            {
              v35 = *(a1 + 48);
              if (v35 == *(a1 + 52))
              {
                v36 = v35 + 1;
                sub_1958E5C((a1 + 48), v35 + 1);
                *(*(a1 + 56) + 4 * v35) = v31;
              }

              else
              {
                *(*(a1 + 56) + 4 * v35) = v31;
                v36 = v35 + 1;
              }

              *(a1 + 48) = v36;
            }

            v30 = *v123;
            if (*a3 <= *v123 || **v123 != 96)
            {
              goto LABEL_267;
            }
          }
        }

        if (v9 != 98)
        {
          goto LABEL_259;
        }

        *&v124 = a1 + 48;
        *(&v124 + 1) = sub_157DA78;
        v125 = a1 + 8;
        v120 = 12;
        goto LABEL_258;
      case 0xDu:
        if (v9 != 106)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x20u;
        v41 = *(a1 + 144);
        if (!v41)
        {
          v42 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v42 = *v42;
          }

          v41 = sub_15AD608(v42);
          *(a1 + 144) = v41;
          v8 = *v123;
        }

        v23 = sub_222013C(a3, v41, v8);
        goto LABEL_266;
      case 0xEu:
        if (v9 != 114)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x40u;
        v74 = *(a1 + 152);
        if (!v74)
        {
          v75 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v75 = *v75;
          }

          v74 = sub_15ADD2C(v75);
          *(a1 + 152) = v74;
          v8 = *v123;
        }

        v23 = sub_222064C(a3, v74, v8);
        goto LABEL_266;
      case 0xFu:
        if (v9 != 122)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x80u;
        v26 = *(a1 + 160);
        if (!v26)
        {
          v27 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v27 = *v27;
          }

          v26 = sub_15ADDB4(v27);
          *(a1 + 160) = v26;
          v8 = *v123;
        }

        v23 = sub_22206DC(a3, v26, v8);
        goto LABEL_266;
      case 0x10u:
        if (v9 != 130)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x100u;
        v52 = *(a1 + 168);
        if (!v52)
        {
          v53 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v53 = *v53;
          }

          v52 = sub_15ADF48(v53);
          *(a1 + 168) = v52;
          v8 = *v123;
        }

        v23 = sub_222076C(a3, v52, v8);
        goto LABEL_266;
      case 0x11u:
        if (v9 != 138)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x200u;
        v24 = *(a1 + 176);
        if (!v24)
        {
          v25 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v25 = *v25;
          }

          v24 = sub_15AE0C8(v25);
          *(a1 + 176) = v24;
          v8 = *v123;
        }

        v23 = sub_22207FC(a3, v24, v8);
        goto LABEL_266;
      case 0x12u:
        if (v9 != 146)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x400u;
        v64 = *(a1 + 184);
        if (!v64)
        {
          v65 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v65 = *v65;
          }

          v64 = sub_15AE154(v65);
          *(a1 + 184) = v64;
          v8 = *v123;
        }

        v23 = sub_222088C(a3, v64, v8);
        goto LABEL_266;
      case 0x13u:
        if (v9 != 154)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x800u;
        v79 = *(a1 + 192);
        if (!v79)
        {
          v80 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v80 = *v80;
          }

          v79 = sub_15AE1DC(v80);
          *(a1 + 192) = v79;
          v8 = *v123;
        }

        v23 = sub_222091C(a3, v79, v8);
        goto LABEL_266;
      case 0x14u:
        if (v9 != 162)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x1000u;
        v101 = *(a1 + 200);
        if (v101)
        {
          goto LABEL_240;
        }

        v102 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v7)
        {
          v102 = *v102;
        }

        v101 = sub_15AE288(v102);
        *(a1 + 200) = v101;
        goto LABEL_239;
      case 0x15u:
        if (v9 != 170)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x2000u;
        v66 = *(a1 + 208);
        if (!v66)
        {
          v67 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v67 = *v67;
          }

          v66 = sub_15AE310(v67);
          *(a1 + 208) = v66;
          v8 = *v123;
        }

        v23 = sub_2220A3C(a3, v66, v8);
        goto LABEL_266;
      case 0x16u:
        if (v9 != 178)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x4000u;
        v71 = *(a1 + 216);
        if (!v71)
        {
          v72 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v72 = *v72;
          }

          sub_15AE000(v72);
          v71 = v73;
          *(a1 + 216) = v73;
          v8 = *v123;
        }

        v23 = sub_2220ACC(a3, v71, v8);
        goto LABEL_266;
      case 0x17u:
        if (v9 == 184)
        {
          v93 = (v8 - 2);
          while (1)
          {
            *v123 = v93 + 2;
            v94 = *(v93 + 2);
            v95 = (v93 + 3);
            if (v94 < 0)
            {
              v96 = *v95;
              v97 = (v96 << 7) + v94;
              LODWORD(v94) = v97 - 128;
              if (v96 < 0)
              {
                *v123 = sub_19587DC(v93 + 2, (v97 - 128));
                if (!*v123)
                {
                  goto LABEL_272;
                }

                LODWORD(v94) = v100;
                goto LABEL_199;
              }

              v95 = (v93 + 4);
            }

            *v123 = v95;
LABEL_199:
            if (v94 > 0x16)
            {
              sub_15B6A8C();
            }

            else
            {
              v98 = *(a1 + 64);
              if (v98 == *(a1 + 68))
              {
                v99 = v98 + 1;
                sub_1958E5C((a1 + 64), v98 + 1);
                *(*(a1 + 72) + 4 * v98) = v94;
              }

              else
              {
                *(*(a1 + 72) + 4 * v98) = v94;
                v99 = v98 + 1;
              }

              *(a1 + 64) = v99;
            }

            v93 = *v123;
            if (*a3 <= *v123 || **v123 != 440)
            {
              goto LABEL_267;
            }
          }
        }

        if (v9 == 186)
        {
          *&v124 = a1 + 64;
          *(&v124 + 1) = sub_157DA94;
          v125 = a1 + 8;
          v120 = 23;
LABEL_258:
          v126 = v120;
          v23 = sub_1216588(a3, v8, &v124);
LABEL_266:
          *v123 = v23;
          if (!v23)
          {
            goto LABEL_272;
          }

LABEL_267:
          if (sub_195ADC0(a3, v123, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_259:
        if (v9)
        {
          v121 = (v9 & 7) == 4;
        }

        else
        {
          v121 = 1;
        }

        if (!v121)
        {
          if (*v7)
          {
            v122 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v122 = sub_11F1920((a1 + 8));
            v8 = *v123;
          }

          v23 = sub_1952690(v9, v122, v8, a3);
          goto LABEL_266;
        }

        if (v8)
        {
          a3[10].i32[0] = v9 - 1;
        }

        else
        {
LABEL_272:
          *v123 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v123;
      case 0x18u:
        if (v9 != 194)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x8000u;
        v103 = *(a1 + 224);
        if (!v103)
        {
          v104 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v104 = *v104;
          }

          v103 = sub_15AD260(v104);
          *(a1 + 224) = v103;
          v8 = *v123;
        }

        v23 = sub_2220B5C(a3, v103, v8);
        goto LABEL_266;
      case 0x19u:
        if (v9 != 202)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x10000u;
        v48 = *(a1 + 232);
        if (!v48)
        {
          v49 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v49 = *v49;
          }

          v48 = sub_15AE52C(v49);
          *(a1 + 232) = v48;
          v8 = *v123;
        }

        v23 = sub_2220BEC(a3, v48, v8);
        goto LABEL_266;
      case 0x1Au:
        if (v9 != 210)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x20000u;
        v46 = *(a1 + 240);
        if (!v46)
        {
          v47 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v47 = *v47;
          }

          v46 = sub_15AD300(v47);
          *(a1 + 240) = v46;
          v8 = *v123;
        }

        v23 = sub_2220C7C(a3, v46, v8);
        goto LABEL_266;
      case 0x1Bu:
        if (v9 != 218)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x40000u;
        v101 = *(a1 + 248);
        if (v101)
        {
          goto LABEL_240;
        }

        v109 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v7)
        {
          v109 = *v109;
        }

        v101 = sub_15AE288(v109);
        *(a1 + 248) = v101;
LABEL_239:
        v8 = *v123;
LABEL_240:
        v23 = sub_22209AC(a3, v101, v8);
        goto LABEL_266;
      case 0x1Cu:
        if (v9 != 226)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x80000u;
        v19 = *(a1 + 256);
        if (v19)
        {
          goto LABEL_227;
        }

        v20 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v7)
        {
          v20 = *v20;
        }

        v19 = sub_15AD754(v20);
        *(a1 + 256) = v19;
        goto LABEL_226;
      case 0x1Du:
        if (v9 != 234)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x100000u;
        v19 = *(a1 + 264);
        if (v19)
        {
          goto LABEL_227;
        }

        v105 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v7)
        {
          v105 = *v105;
        }

        v19 = sub_15AD754(v105);
        *(a1 + 264) = v19;
LABEL_226:
        v8 = *v123;
LABEL_227:
        v23 = sub_2220D0C(a3, v19, v8);
        goto LABEL_266;
      case 0x1Eu:
        if (v9 != 242)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x200000u;
        v106 = *(a1 + 272);
        if (!v106)
        {
          v107 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v107 = *v107;
          }

          sub_15AD87C(v107);
          v106 = v108;
          *(a1 + 272) = v108;
          v8 = *v123;
        }

        v23 = sub_2220D9C(a3, v106, v8);
        goto LABEL_266;
      case 0x1Fu:
        if (v9 != 250)
        {
          goto LABEL_259;
        }

        v85 = v8 - 2;
        while (1)
        {
          v86 = v85 + 2;
          *v123 = v85 + 2;
          v87 = *(a1 + 96);
          if (v87 && (v88 = *(a1 + 88), v88 < *v87))
          {
            *(a1 + 88) = v88 + 1;
            v89 = *&v87[2 * v88 + 2];
          }

          else
          {
            v90 = sub_15AD058(*(a1 + 80));
            v89 = sub_19593CC(a1 + 80, v90);
            v86 = *v123;
          }

          v85 = sub_2220E2C(a3, v89, v86);
          *v123 = v85;
          if (!v85)
          {
            goto LABEL_272;
          }

          if (*a3 <= v85 || *v85 != 506)
          {
            goto LABEL_267;
          }
        }

      case 0x20u:
        if (v9 != 2)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x400000u;
        v62 = *(a1 + 280);
        if (!v62)
        {
          v63 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v63 = *v63;
          }

          v62 = sub_15AD568(v63);
          *(a1 + 280) = v62;
          v8 = *v123;
        }

        v23 = sub_2220EBC(a3, v62, v8);
        goto LABEL_266;
      case 0x21u:
        if (v9 != 10)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x800000u;
        v91 = *(a1 + 288);
        if (!v91)
        {
          v92 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v92 = *v92;
          }

          v91 = sub_15AD3A8(v92);
          *(a1 + 288) = v91;
          v8 = *v123;
        }

        v23 = sub_2220F4C(a3, v91, v8);
        goto LABEL_266;
      case 0x22u:
        if (v9 != 18)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x1000000u;
        v28 = *(a1 + 296);
        if (!v28)
        {
          v29 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v29 = *v29;
          }

          v28 = sub_15ADA70(v29);
          *(a1 + 296) = v28;
          v8 = *v123;
        }

        v23 = sub_2220FDC(a3, v28, v8);
        goto LABEL_266;
      case 0x23u:
        if (v9 != 26)
        {
          goto LABEL_259;
        }

        *(a1 + 16) |= 0x2000000u;
        v21 = *(a1 + 304);
        if (!v21)
        {
          v22 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v22 = *v22;
          }

          v21 = sub_15AD430(v22);
          *(a1 + 304) = v21;
          v8 = *v123;
        }

        v23 = sub_222106C(a3, v21, v8);
        goto LABEL_266;
      case 0x24u:
        if (v9 != 32)
        {
          goto LABEL_259;
        }

        v5 |= 0x80000000;
        v17 = (v8 + 1);
        v16 = *v8;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if (v18 < 0)
        {
          v110 = sub_19587DC(v8, v16);
          *v123 = v110;
          *(a1 + 327) = v111 != 0;
          if (!v110)
          {
            goto LABEL_272;
          }
        }

        else
        {
          v17 = (v8 + 2);
LABEL_17:
          *v123 = v17;
          *(a1 + 327) = v16 != 0;
        }

        goto LABEL_267;
      default:
        goto LABEL_259;
    }
  }
}

char *sub_15A8108(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = sub_128AEEC(a3, 2, *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL, a2);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 0x8000000) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_14;
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 320);
  *v4 = 24;
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

LABEL_14:
  if ((v6 & 0x4000000) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 312);
    *v7 = 33;
    *(v7 + 1) = v12;
    v7 += 9;
    if ((v6 & 0x10000000) == 0)
    {
LABEL_16:
      if ((v6 & 0x20000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }
  }

  else if ((v6 & 0x10000000) == 0)
  {
    goto LABEL_16;
  }

  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v13 = *(a1 + 324);
  *v7 = 40;
  v7[1] = v13;
  v7 += 2;
  if ((v6 & 0x20000000) == 0)
  {
LABEL_17:
    if ((v6 & 4) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

LABEL_25:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v14 = *(a1 + 325);
  *v7 = 48;
  v7[1] = v14;
  v7 += 2;
  if ((v6 & 4) != 0)
  {
LABEL_28:
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v15 = *(a1 + 120);
    *v7 = 58;
    v16 = *(v15 + 20);
    v7[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v7 + 1);
    }

    else
    {
      v17 = v7 + 2;
    }

    v7 = sub_158EAE8(v15, v17, a3);
  }

LABEL_34:
  v18 = *(a1 + 32);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v20 = *(*(a1 + 40) + 8 * i + 8);
      *v7 = 66;
      v21 = *(v20 + 20);
      v7[1] = v21;
      if (v21 > 0x7F)
      {
        v22 = sub_19575D0(v21, v7 + 1);
      }

      else
      {
        v22 = v7 + 2;
      }

      v7 = sub_158F5A4(v20, v22, a3);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v23 = *(a1 + 128);
    *v7 = 74;
    v24 = *(v23 + 20);
    v7[1] = v24;
    if (v24 > 0x7F)
    {
      v25 = sub_19575D0(v24, v7 + 1);
    }

    else
    {
      v25 = v7 + 2;
    }

    v7 = sub_1590DCC(v23, v25, a3);
    if ((v6 & 0x40000000) == 0)
    {
LABEL_44:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_55;
    }
  }

  else if ((v6 & 0x40000000) == 0)
  {
    goto LABEL_44;
  }

  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v26 = *(a1 + 326);
  *v7 = 80;
  v7[1] = v26;
  v7 += 2;
  if ((v6 & 0x10) != 0)
  {
LABEL_55:
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v27 = *(a1 + 136);
    *v7 = 90;
    v28 = *(v27 + 40);
    v7[1] = v28;
    if (v28 > 0x7F)
    {
      v29 = sub_19575D0(v28, v7 + 1);
    }

    else
    {
      v29 = v7 + 2;
    }

    v7 = sub_1591EB0(v27, v29, a3);
  }

LABEL_61:
  v30 = *(a1 + 48);
  if (v30 < 1)
  {
    v33 = v7;
  }

  else
  {
    for (j = 0; j != v30; ++j)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v32 = *(*(a1 + 56) + 4 * j);
      *v7 = 96;
      v7[1] = v32;
      if (v32 > 0x7F)
      {
        v7[1] = v32 | 0x80;
        v34 = v32 >> 7;
        v7[2] = v32 >> 7;
        v33 = v7 + 3;
        if (v32 >= 0x4000)
        {
          LOBYTE(v7) = v7[2];
          do
          {
            *(v33 - 1) = v7 | 0x80;
            v7 = (v34 >> 7);
            *v33++ = v34 >> 7;
            v35 = v34 >> 14;
            v34 >>= 7;
          }

          while (v35);
        }
      }

      else
      {
        v33 = v7 + 2;
      }

      v7 = v33;
    }
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v36 = *(a1 + 144);
    *v33 = 106;
    v37 = *(v36 + 20);
    v33[1] = v37;
    if (v37 > 0x7F)
    {
      v38 = sub_19575D0(v37, v33 + 1);
    }

    else
    {
      v38 = v33 + 2;
    }

    v33 = sub_1595FC8(v36, v38, a3);
    if ((v6 & 0x40) == 0)
    {
LABEL_75:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_96;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_75;
  }

  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v39 = *(a1 + 152);
  *v33 = 114;
  v40 = *(v39 + 20);
  v33[1] = v40;
  if (v40 > 0x7F)
  {
    v41 = sub_19575D0(v40, v33 + 1);
  }

  else
  {
    v41 = v33 + 2;
  }

  v33 = sub_159D7C0(v39, v41, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_76:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_102;
  }

LABEL_96:
  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v42 = *(a1 + 160);
  *v33 = 122;
  v43 = *(v42 + 20);
  v33[1] = v43;
  if (v43 > 0x7F)
  {
    v44 = sub_19575D0(v43, v33 + 1);
  }

  else
  {
    v44 = v33 + 2;
  }

  v33 = sub_159E30C(v42, v44, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_77:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_108;
  }

LABEL_102:
  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v45 = *(a1 + 168);
  *v33 = 386;
  v46 = *(v45 + 20);
  v33[2] = v46;
  if (v46 > 0x7F)
  {
    v47 = sub_19575D0(v46, v33 + 2);
  }

  else
  {
    v47 = v33 + 3;
  }

  v33 = sub_15A0C2C(v45, v47, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_78:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_114;
  }

LABEL_108:
  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v48 = *(a1 + 176);
  *v33 = 394;
  v49 = *(v48 + 20);
  v33[2] = v49;
  if (v49 > 0x7F)
  {
    v50 = sub_19575D0(v49, v33 + 2);
  }

  else
  {
    v50 = v33 + 3;
  }

  v33 = sub_15A25FC(v48, v50, a3);
  if ((v6 & 0x400) == 0)
  {
LABEL_79:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_120;
  }

LABEL_114:
  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v51 = *(a1 + 184);
  *v33 = 402;
  v52 = *(v51 + 20);
  v33[2] = v52;
  if (v52 > 0x7F)
  {
    v53 = sub_19575D0(v52, v33 + 2);
  }

  else
  {
    v53 = v33 + 3;
  }

  v33 = sub_15A2FFC(v51, v53, a3);
  if ((v6 & 0x800) == 0)
  {
LABEL_80:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_126;
  }

LABEL_120:
  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v54 = *(a1 + 192);
  *v33 = 410;
  v55 = *(v54 + 20);
  v33[2] = v55;
  if (v55 > 0x7F)
  {
    v56 = sub_19575D0(v55, v33 + 2);
  }

  else
  {
    v56 = v33 + 3;
  }

  v33 = sub_15A3814(v54, v56, a3);
  if ((v6 & 0x1000) == 0)
  {
LABEL_81:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_132;
  }

LABEL_126:
  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v57 = *(a1 + 200);
  *v33 = 418;
  v58 = *(v57 + 20);
  v33[2] = v58;
  if (v58 > 0x7F)
  {
    v59 = sub_19575D0(v58, v33 + 2);
  }

  else
  {
    v59 = v33 + 3;
  }

  v33 = sub_15A41A0(v57, v59, a3);
  if ((v6 & 0x2000) == 0)
  {
LABEL_82:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_138;
  }

LABEL_132:
  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v60 = *(a1 + 208);
  *v33 = 426;
  v61 = *(v60 + 20);
  v33[2] = v61;
  if (v61 > 0x7F)
  {
    v62 = sub_19575D0(v61, v33 + 2);
  }

  else
  {
    v62 = v33 + 3;
  }

  v33 = sub_15A4954(v60, v62, a3);
  if ((v6 & 0x4000) != 0)
  {
LABEL_138:
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v63 = *(a1 + 216);
    *v33 = 434;
    v64 = *(v63 + 20);
    v33[2] = v64;
    if (v64 > 0x7F)
    {
      v65 = sub_19575D0(v64, v33 + 2);
    }

    else
    {
      v65 = v33 + 3;
    }

    v33 = sub_15A1924(v63, v65, a3);
  }

LABEL_144:
  v66 = *(a1 + 64);
  if (v66 < 1)
  {
    v69 = v33;
  }

  else
  {
    for (k = 0; k != v66; ++k)
    {
      if (*a3 <= v33)
      {
        v33 = sub_225EB68(a3, v33);
      }

      v68 = *(*(a1 + 72) + 4 * k);
      *v33 = 440;
      v33[2] = v68;
      if (v68 > 0x7F)
      {
        v33[2] = v68 | 0x80;
        v70 = v68 >> 7;
        v33[3] = v68 >> 7;
        v69 = v33 + 4;
        if (v68 >= 0x4000)
        {
          LOBYTE(v33) = v33[3];
          do
          {
            *(v69 - 1) = v33 | 0x80;
            v33 = (v70 >> 7);
            *v69++ = v70 >> 7;
            v71 = v70 >> 14;
            v70 >>= 7;
          }

          while (v71);
        }
      }

      else
      {
        v69 = v33 + 3;
      }

      v33 = v69;
    }
  }

  if ((v6 & 0x8000) != 0)
  {
    if (*a3 <= v69)
    {
      v69 = sub_225EB68(a3, v69);
    }

    v72 = *(a1 + 224);
    *v69 = 450;
    v73 = *(v72 + 40);
    v69[2] = v73;
    if (v73 > 0x7F)
    {
      v74 = sub_19575D0(v73, v69 + 2);
    }

    else
    {
      v74 = v69 + 3;
    }

    v69 = sub_1592480(v72, v74, a3);
    if ((v6 & 0x10000) == 0)
    {
LABEL_158:
      if ((v6 & 0x20000) == 0)
      {
        goto LABEL_159;
      }

      goto LABEL_176;
    }
  }

  else if ((v6 & 0x10000) == 0)
  {
    goto LABEL_158;
  }

  if (*a3 <= v69)
  {
    v69 = sub_225EB68(a3, v69);
  }

  v75 = *(a1 + 232);
  *v69 = 458;
  v76 = *(v75 + 112);
  v69[2] = v76;
  if (v76 > 0x7F)
  {
    v77 = sub_19575D0(v76, v69 + 2);
  }

  else
  {
    v77 = v69 + 3;
  }

  v69 = sub_15A63F8(v75, v77, a3);
  if ((v6 & 0x20000) == 0)
  {
LABEL_159:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_182;
  }

LABEL_176:
  if (*a3 <= v69)
  {
    v69 = sub_225EB68(a3, v69);
  }

  v78 = *(a1 + 240);
  *v69 = 466;
  v79 = *(v78 + 20);
  v69[2] = v79;
  if (v79 > 0x7F)
  {
    v80 = sub_19575D0(v79, v69 + 2);
  }

  else
  {
    v80 = v69 + 3;
  }

  v69 = sub_1592D9C(v78, v80, a3);
  if ((v6 & 0x40000) == 0)
  {
LABEL_160:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_188;
  }

LABEL_182:
  if (*a3 <= v69)
  {
    v69 = sub_225EB68(a3, v69);
  }

  v81 = *(a1 + 248);
  *v69 = 474;
  v82 = *(v81 + 20);
  v69[2] = v82;
  if (v82 > 0x7F)
  {
    v83 = sub_19575D0(v82, v69 + 2);
  }

  else
  {
    v83 = v69 + 3;
  }

  v69 = sub_15A41A0(v81, v83, a3);
  if ((v6 & 0x80000) == 0)
  {
LABEL_161:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_194;
  }

LABEL_188:
  if (*a3 <= v69)
  {
    v69 = sub_225EB68(a3, v69);
  }

  v84 = *(a1 + 256);
  *v69 = 482;
  v85 = *(v84 + 40);
  v69[2] = v85;
  if (v85 > 0x7F)
  {
    v86 = sub_19575D0(v85, v69 + 2);
  }

  else
  {
    v86 = v69 + 3;
  }

  v69 = sub_15973B4(v84, v86, a3);
  if ((v6 & 0x100000) == 0)
  {
LABEL_162:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_206;
    }

    goto LABEL_200;
  }

LABEL_194:
  if (*a3 <= v69)
  {
    v69 = sub_225EB68(a3, v69);
  }

  v87 = *(a1 + 264);
  *v69 = 490;
  v88 = *(v87 + 40);
  v69[2] = v88;
  if (v88 > 0x7F)
  {
    v89 = sub_19575D0(v88, v69 + 2);
  }

  else
  {
    v89 = v69 + 3;
  }

  v69 = sub_15973B4(v87, v89, a3);
  if ((v6 & 0x200000) != 0)
  {
LABEL_200:
    if (*a3 <= v69)
    {
      v69 = sub_225EB68(a3, v69);
    }

    v90 = *(a1 + 272);
    *v69 = 498;
    v91 = *(v90 + 20);
    v69[2] = v91;
    if (v91 > 0x7F)
    {
      v92 = sub_19575D0(v91, v69 + 2);
    }

    else
    {
      v92 = v69 + 3;
    }

    v69 = sub_1597F98(v90, v92, a3);
  }

LABEL_206:
  v93 = *(a1 + 88);
  if (v93)
  {
    for (m = 0; m != v93; ++m)
    {
      if (*a3 <= v69)
      {
        v69 = sub_225EB68(a3, v69);
      }

      v95 = *(*(a1 + 96) + 8 * m + 8);
      *v69 = 506;
      v96 = *(v95 + 20);
      v69[2] = v96;
      if (v96 > 0x7F)
      {
        v97 = sub_19575D0(v96, v69 + 2);
      }

      else
      {
        v97 = v69 + 3;
      }

      v69 = sub_158FF54(v95, v97, a3);
    }
  }

  if ((v6 & 0x400000) != 0)
  {
    if (*a3 <= v69)
    {
      v69 = sub_225EB68(a3, v69);
    }

    v98 = *(a1 + 280);
    *v69 = 642;
    v99 = *(v98 + 40);
    v69[2] = v99;
    if (v99 > 0x7F)
    {
      v100 = sub_19575D0(v99, v69 + 2);
    }

    else
    {
      v100 = v69 + 3;
    }

    v69 = sub_15951DC(v98, v100, a3);
    if ((v6 & 0x800000) == 0)
    {
LABEL_216:
      if ((v6 & 0x1000000) == 0)
      {
        goto LABEL_217;
      }

      goto LABEL_232;
    }
  }

  else if ((v6 & 0x800000) == 0)
  {
    goto LABEL_216;
  }

  if (*a3 <= v69)
  {
    v69 = sub_225EB68(a3, v69);
  }

  v101 = *(a1 + 288);
  *v69 = 650;
  v102 = *(v101 + 20);
  v69[2] = v102;
  if (v102 > 0x7F)
  {
    v103 = sub_19575D0(v102, v69 + 2);
  }

  else
  {
    v103 = v69 + 3;
  }

  v69 = sub_15939C8(v101, v103, a3);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_217:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_218;
    }

    goto LABEL_238;
  }

LABEL_232:
  if (*a3 <= v69)
  {
    v69 = sub_225EB68(a3, v69);
  }

  v104 = *(a1 + 296);
  *v69 = 658;
  v105 = *(v104 + 40);
  v69[2] = v105;
  if (v105 > 0x7F)
  {
    v106 = sub_19575D0(v105, v69 + 2);
  }

  else
  {
    v106 = v69 + 3;
  }

  v69 = sub_159A51C(v104, v106, a3);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_218:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_247;
    }

    goto LABEL_244;
  }

LABEL_238:
  if (*a3 <= v69)
  {
    v69 = sub_225EB68(a3, v69);
  }

  v107 = *(a1 + 304);
  *v69 = 666;
  v108 = *(v107 + 20);
  v69[2] = v108;
  if (v108 > 0x7F)
  {
    v109 = sub_19575D0(v108, v69 + 2);
  }

  else
  {
    v109 = v69 + 3;
  }

  v69 = sub_1594154(v107, v109, a3);
  if (v6 < 0)
  {
LABEL_244:
    if (*a3 <= v69)
    {
      v69 = sub_225EB68(a3, v69);
    }

    v110 = *(a1 + 327);
    *v69 = 672;
    v69[2] = v110;
    v69 += 3;
  }

LABEL_247:
  v111 = *(a1 + 8);
  if ((v111 & 1) == 0)
  {
    return v69;
  }

  v113 = v111 & 0xFFFFFFFFFFFFFFFCLL;
  v114 = *(v113 + 31);
  if (v114 < 0)
  {
    v115 = *(v113 + 8);
    v114 = *(v113 + 16);
  }

  else
  {
    v115 = (v113 + 8);
  }

  if ((*a3 - v69) >= v114)
  {
    v116 = v114;
    memcpy(v69, v115, v114);
    v69 += v116;
    return v69;
  }

  return sub_1957130(a3, v115, v114, v69);
}