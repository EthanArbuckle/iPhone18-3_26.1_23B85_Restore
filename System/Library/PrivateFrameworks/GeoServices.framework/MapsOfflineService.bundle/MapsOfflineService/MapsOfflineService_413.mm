uint64_t sub_16D3F3C(uint64_t a1)
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

  v7 = sub_1959E5C((a1 + 40));
  v8 = *(a1 + 64);
  v9 = v3 + v7 + v2 + *(a1 + 40) + v8;
  v10 = *(a1 + 72);
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
      v14 = sub_16D2328(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 88);
  v16 = v9 + v15;
  if (v15 >= 1)
  {
    v17 = (*(a1 + 96) + 8);
    do
    {
      v18 = *v17++;
      v19 = *(v18 + 23);
      v20 = *(v18 + 8);
      if ((v19 & 0x80u) == 0)
      {
        v20 = v19;
      }

      v16 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      --v15;
    }

    while (v15);
  }

  v21 = *(a1 + 112);
  v22 = v16 + 2 * v21;
  if (v21 >= 1)
  {
    v23 = (*(a1 + 120) + 8);
    do
    {
      v24 = *v23++;
      v25 = *(v24 + 23);
      v26 = *(v24 + 8);
      if ((v25 & 0x80u) == 0)
      {
        v26 = v25;
      }

      v22 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6);
      --v21;
    }

    while (v21);
  }

  v27 = *(a1 + 136);
  v28 = v22 + 2 * v27;
  v29 = *(a1 + 144);
  if (v29)
  {
    v30 = (v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  if (v27)
  {
    v31 = 8 * v27;
    do
    {
      v32 = *v30++;
      v33 = sub_16D1C74(v32);
      v28 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6);
      v31 -= 8;
    }

    while (v31);
  }

  result = sub_1959E5C((a1 + 152)) + v28 + 2 * *(a1 + 152);
  v35 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (v35)
    {
      v50 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
      v51 = *(v50 + 23);
      v52 = *(v50 + 8);
      if ((v51 & 0x80u) == 0)
      {
        v52 = v51;
      }

      result += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v35 & 2) == 0)
      {
LABEL_34:
        if ((v35 & 4) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_77;
      }
    }

    else if ((v35 & 2) == 0)
    {
      goto LABEL_34;
    }

    v53 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
    v54 = *(v53 + 23);
    v55 = *(v53 + 8);
    if ((v54 & 0x80u) == 0)
    {
      v55 = v54;
    }

    result += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v35 & 4) == 0)
    {
LABEL_35:
      if ((v35 & 8) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_80;
    }

LABEL_77:
    v56 = *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL;
    v57 = *(v56 + 23);
    v58 = *(v56 + 8);
    if ((v57 & 0x80u) == 0)
    {
      v58 = v57;
    }

    result += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v35 & 8) == 0)
    {
LABEL_36:
      if ((v35 & 0x10) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_84;
    }

LABEL_80:
    v59 = *(a1 + 192);
    v60 = ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v59 >= 0)
    {
      v61 = v60;
    }

    else
    {
      v61 = 11;
    }

    result += v61;
    if ((v35 & 0x10) == 0)
    {
LABEL_37:
      if ((v35 & 0x20) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_88;
    }

LABEL_84:
    v62 = *(a1 + 196);
    v63 = ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v62 >= 0)
    {
      v64 = v63;
    }

    else
    {
      v64 = 11;
    }

    result += v64;
    if ((v35 & 0x20) == 0)
    {
LABEL_38:
      if ((v35 & 0x40) == 0)
      {
LABEL_43:
        result += (v35 >> 6) & 2;
        goto LABEL_44;
      }

LABEL_39:
      v36 = *(a1 + 204);
      v37 = ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v36 >= 0)
      {
        v38 = v37;
      }

      else
      {
        v38 = 12;
      }

      result += v38;
      goto LABEL_43;
    }

LABEL_88:
    v65 = *(a1 + 200);
    v66 = ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v65 >= 0)
    {
      v67 = v66;
    }

    else
    {
      v67 = 11;
    }

    result += v67;
    if ((v35 & 0x40) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_39;
  }

LABEL_44:
  if ((v35 & 0x7F00) != 0)
  {
    v39 = result + 3;
    if ((v35 & 0x100) == 0)
    {
      v39 = result;
    }

    if ((v35 & 0x200) != 0)
    {
      v39 += 3;
    }

    if ((v35 & 0x400) != 0)
    {
      v39 += 3;
    }

    if ((v35 & 0x800) != 0)
    {
      v40 = *(a1 + 212);
      v41 = ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v40 >= 0)
      {
        v42 = v41;
      }

      else
      {
        v42 = 12;
      }

      v39 += v42;
    }

    if ((v35 & 0x1000) != 0)
    {
      result = v39 + 10;
    }

    else
    {
      result = v39;
    }

    if ((v35 & 0x2000) != 0)
    {
      v43 = *(a1 + 224);
      v44 = ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v43 >= 0)
      {
        v45 = v44;
      }

      else
      {
        v45 = 12;
      }

      result += v45;
    }

    if ((v35 & 0x4000) != 0)
    {
      v46 = *(a1 + 228);
      v47 = ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v46 >= 0)
      {
        v48 = v47;
      }

      else
      {
        v48 = 12;
      }

      result += v48;
    }
  }

  v49 = *(a1 + 8);
  if (v49)
  {
    v68 = v49 & 0xFFFFFFFFFFFFFFFCLL;
    v69 = *((v49 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v69 < 0)
    {
      v69 = *(v68 + 16);
    }

    result += v69;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_16D4400(std::string *result, uint64_t a2)
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

  v11 = *(a2 + 64);
  if (v11)
  {
    v12 = *(a2 + 72);
    v13 = sub_19592E8(&v3[2].__r_.__value_.__l.__size_, *(a2 + 64));
    result = sub_16E2DC8(&v3[2].__r_.__value_.__l.__size_, v13, (v12 + 8), v11, *v3[3].__r_.__value_.__l.__data_ - LODWORD(v3[2].__r_.__value_.__r.__words[2]));
    v14 = LODWORD(v3[2].__r_.__value_.__r.__words[2]) + v11;
    LODWORD(v3[2].__r_.__value_.__r.__words[2]) = v14;
    v15 = v3[3].__r_.__value_.__l.__data_;
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  v16 = *(a2 + 88);
  if (v16)
  {
    v17 = *(a2 + 96);
    v18 = sub_19592E8(&v3[3].__r_.__value_.__l.__size_, *(a2 + 88));
    result = sub_1201B48(&v3[3].__r_.__value_.__l.__size_, v18, (v17 + 8), v16, *v3[4].__r_.__value_.__l.__data_ - LODWORD(v3[3].__r_.__value_.__r.__words[2]));
    v19 = LODWORD(v3[3].__r_.__value_.__r.__words[2]) + v16;
    LODWORD(v3[3].__r_.__value_.__r.__words[2]) = v19;
    v20 = v3[4].__r_.__value_.__l.__data_;
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 112);
  if (v21)
  {
    v22 = *(a2 + 120);
    v23 = sub_19592E8(&v3[4].__r_.__value_.__l.__size_, *(a2 + 112));
    result = sub_1201B48(&v3[4].__r_.__value_.__l.__size_, v23, (v22 + 8), v21, *v3[5].__r_.__value_.__l.__data_ - LODWORD(v3[4].__r_.__value_.__r.__words[2]));
    v24 = LODWORD(v3[4].__r_.__value_.__r.__words[2]) + v21;
    LODWORD(v3[4].__r_.__value_.__r.__words[2]) = v24;
    v25 = v3[5].__r_.__value_.__l.__data_;
    if (*v25 < v24)
    {
      *v25 = v24;
    }
  }

  v26 = *(a2 + 136);
  if (v26)
  {
    v27 = *(a2 + 144);
    v28 = sub_19592E8(&v3[5].__r_.__value_.__l.__size_, *(a2 + 136));
    result = sub_16E2E54(&v3[5].__r_.__value_.__l.__size_, v28, (v27 + 8), v26, *v3[6].__r_.__value_.__l.__data_ - LODWORD(v3[5].__r_.__value_.__r.__words[2]));
    v29 = LODWORD(v3[5].__r_.__value_.__r.__words[2]) + v26;
    LODWORD(v3[5].__r_.__value_.__r.__words[2]) = v29;
    v30 = v3[6].__r_.__value_.__l.__data_;
    if (*v30 < v29)
    {
      *v30 = v29;
    }
  }

  v31 = *(a2 + 152);
  if (v31)
  {
    v32 = SLODWORD(v3[6].__r_.__value_.__r.__words[1]);
    sub_1958E5C(&v3[6].__r_.__value_.__r.__words[1], v32 + v31);
    v33 = v3[6].__r_.__value_.__r.__words[2];
    LODWORD(v3[6].__r_.__value_.__r.__words[1]) += *(a2 + 152);
    result = memcpy((v33 + 4 * v32), *(a2 + 160), 4 * *(a2 + 152));
  }

  v34 = *(a2 + 16);
  if (v34)
  {
    if (v34)
    {
      v36 = *(a2 + 168);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v37 = v3->__r_.__value_.__l.__size_;
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      result = sub_194EA1C(&v3[7], (v36 & 0xFFFFFFFFFFFFFFFELL), v38);
      if ((v34 & 2) == 0)
      {
LABEL_22:
        if ((v34 & 4) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_50;
      }
    }

    else if ((v34 & 2) == 0)
    {
      goto LABEL_22;
    }

    v39 = *(a2 + 176);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v40 = v3->__r_.__value_.__l.__size_;
    v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
    if (v40)
    {
      v41 = *v41;
    }

    result = sub_194EA1C(&v3[7].__r_.__value_.__l.__size_, (v39 & 0xFFFFFFFFFFFFFFFELL), v41);
    if ((v34 & 4) == 0)
    {
LABEL_23:
      if ((v34 & 8) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_53;
    }

LABEL_50:
    v42 = *(a2 + 184);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v43 = v3->__r_.__value_.__l.__size_;
    v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
    if (v43)
    {
      v44 = *v44;
    }

    result = sub_194EA1C(&v3[7].__r_.__value_.__r.__words[2], (v42 & 0xFFFFFFFFFFFFFFFELL), v44);
    if ((v34 & 8) == 0)
    {
LABEL_24:
      if ((v34 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_54;
    }

LABEL_53:
    LODWORD(v3[8].__r_.__value_.__l.__data_) = *(a2 + 192);
    if ((v34 & 0x10) == 0)
    {
LABEL_25:
      if ((v34 & 0x20) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_55;
    }

LABEL_54:
    HIDWORD(v3[8].__r_.__value_.__r.__words[0]) = *(a2 + 196);
    if ((v34 & 0x20) == 0)
    {
LABEL_26:
      if ((v34 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_56;
    }

LABEL_55:
    LODWORD(v3[8].__r_.__value_.__r.__words[1]) = *(a2 + 200);
    if ((v34 & 0x40) == 0)
    {
LABEL_27:
      if ((v34 & 0x80) == 0)
      {
LABEL_29:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v34;
        goto LABEL_30;
      }

LABEL_28:
      v3[8].__r_.__value_.__s.__data_[16] = *(a2 + 208);
      goto LABEL_29;
    }

LABEL_56:
    HIDWORD(v3[8].__r_.__value_.__r.__words[1]) = *(a2 + 204);
    if ((v34 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_30:
  if ((v34 & 0x7F00) == 0)
  {
    goto LABEL_40;
  }

  if ((v34 & 0x100) != 0)
  {
    v3[8].__r_.__value_.__s.__data_[17] = *(a2 + 209);
    if ((v34 & 0x200) == 0)
    {
LABEL_33:
      if ((v34 & 0x400) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_60;
    }
  }

  else if ((v34 & 0x200) == 0)
  {
    goto LABEL_33;
  }

  v3[8].__r_.__value_.__s.__data_[18] = *(a2 + 210);
  if ((v34 & 0x400) == 0)
  {
LABEL_34:
    if ((v34 & 0x800) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_61;
  }

LABEL_60:
  v3[8].__r_.__value_.__s.__data_[19] = *(a2 + 211);
  if ((v34 & 0x800) == 0)
  {
LABEL_35:
    if ((v34 & 0x1000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_62;
  }

LABEL_61:
  HIDWORD(v3[8].__r_.__value_.__r.__words[2]) = *(a2 + 212);
  if ((v34 & 0x1000) == 0)
  {
LABEL_36:
    if ((v34 & 0x2000) == 0)
    {
      goto LABEL_37;
    }

LABEL_63:
    LODWORD(v3[9].__r_.__value_.__r.__words[1]) = *(a2 + 224);
    if ((v34 & 0x4000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_62:
  v3[9].__r_.__value_.__r.__words[0] = *(a2 + 216);
  if ((v34 & 0x2000) != 0)
  {
    goto LABEL_63;
  }

LABEL_37:
  if ((v34 & 0x4000) != 0)
  {
LABEL_38:
    HIDWORD(v3[9].__r_.__value_.__r.__words[1]) = *(a2 + 228);
  }

LABEL_39:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= v34;
LABEL_40:
  v35 = *(a2 + 8);
  if (v35)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v35 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_16D4848(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2700298;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = &qword_278E990;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_16D48F0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2700318;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_16D4990(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_16D24A4(v2, a1, 0);
}

void *sub_16D4A3C(void *a1)
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

void sub_16D4AB8(void *a1)
{
  sub_16D4A3C(a1);

  operator delete();
}

uint64_t sub_16D4AF0(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 40) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_16D4B48(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v25 = a2;
  if (sub_195ADC0(a3, v25, a3[11].i32[1]))
  {
    return *v25;
  }

  while (1)
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
      if (v7 != 16)
      {
        goto LABEL_12;
      }

      v15 = v6 + 1;
      v14 = *v6;
      if (v14 < 0)
      {
        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if (v16 < 0)
        {
          *v25 = sub_19587DC(v6, v14);
          if (!*v25)
          {
            goto LABEL_45;
          }

          goto LABEL_25;
        }

        v15 = v6 + 2;
      }

      *v25 = v15;
LABEL_25:
      if (v14 > 4)
      {
        sub_12E8418();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 48) = v14;
      }

      goto LABEL_37;
    }

    if (v7 >> 3 == 1 && v7 == 10)
    {
      v17 = v6 - 1;
      while (1)
      {
        v18 = (v17 + 1);
        *v25 = v17 + 1;
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
          v18 = *v25;
        }

        v17 = sub_1958890(v21, v18, a3);
        *v25 = v17;
        if (!v17)
        {
          goto LABEL_45;
        }

        if (*a3 <= v17 || *v17 != 10)
        {
          goto LABEL_37;
        }
      }
    }

LABEL_12:
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
      v6 = *v25;
    }

    *v25 = sub_1952690(v7, v13, v6, a3);
    if (!*v25)
    {
      goto LABEL_45;
    }

LABEL_37:
    if (sub_195ADC0(a3, v25, a3[11].i32[1]))
    {
      return *v25;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v25;
  }

LABEL_45:
  *v25 = 0;
  return *v25;
}

char *sub_16D4DBC(uint64_t a1, char *__dst, _DWORD *a3)
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
        memcpy(__dst + 2, v8, v9);
        __dst = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v12 = *(a1 + 48);
    *__dst = 16;
    __dst[1] = v12;
    if (v12 > 0x7F)
    {
      __dst[1] = v12 | 0x80;
      v13 = v12 >> 7;
      __dst[2] = v12 >> 7;
      v11 = __dst + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v14) = __dst[2];
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
      v11 = __dst + 2;
    }
  }

  else
  {
    v11 = __dst;
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

uint64_t sub_16D4F98(uint64_t a1)
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
    v7 = *(a1 + 48);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v8;
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

    v3 += v12;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_16D5078(uint64_t a1)
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
  if (a1 != &off_277E0D8)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15BC764(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_16E2EE0((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16D513C(uint64_t a1)
{
  sub_16D5078(a1);

  operator delete();
}

uint64_t sub_16D5174(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16D4AF0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    result = sub_15BC7A0(*(v1 + 48));
  }

  if ((v5 & 6) != 0)
  {
    *(v1 + 60) = 0;
    *(v1 + 56) = 0;
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

char *sub_16D5214(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 != 3)
    {
      if (v11 == 4 && v8 == 34)
      {
        v16 = v7 - 1;
        while (1)
        {
          v17 = (v16 + 1);
          v34 = v16 + 1;
          v18 = *(a1 + 40);
          if (v18 && (v19 = *(a1 + 32), v19 < *v18))
          {
            *(a1 + 32) = v19 + 1;
            v20 = *&v18[2 * v19 + 2];
          }

          else
          {
            v21 = sub_16D5A1C(*(a1 + 24));
            v20 = sub_19593CC(a1 + 24, v21);
            v17 = v34;
          }

          v16 = sub_2235874(a3, v20, v17);
          v34 = v16;
          if (!v16)
          {
            goto LABEL_61;
          }

          if (*a3 <= v16 || *v16 != 34)
          {
            goto LABEL_51;
          }
        }
      }

      goto LABEL_43;
    }

    if (v8 != 24)
    {
      goto LABEL_43;
    }

    v5 |= 4u;
    v27 = v7 + 1;
    v26 = *v7;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_42;
    }

    v28 = *v27;
    v26 = (v28 << 7) + v26 - 128;
    if ((v28 & 0x80000000) == 0)
    {
      v27 = v7 + 2;
LABEL_42:
      v34 = v27;
      *(a1 + 60) = v26 != 0;
      goto LABEL_51;
    }

    v32 = sub_19587DC(v7, v26);
    v34 = v32;
    *(a1 + 60) = v33 != 0;
    if (!v32)
    {
      goto LABEL_61;
    }

LABEL_51:
    if (sub_195ADC0(a3, &v34, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_43;
    }

    *(a1 + 16) |= 1u;
    v22 = *(a1 + 48);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_15BE2BC(v24);
      *(a1 + 48) = v22;
      v7 = v34;
    }

    v25 = sub_22217BC(a3, v22, v7);
LABEL_50:
    v34 = v25;
    if (!v25)
    {
      goto LABEL_61;
    }

    goto LABEL_51;
  }

  if (v11 == 2 && v8 == 16)
  {
    v14 = v7 + 1;
    v13 = *v7;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if (v15 < 0)
    {
      v34 = sub_19587DC(v7, v13);
      if (!v34)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v14 = v7 + 2;
LABEL_17:
      v34 = v14;
    }

    if (v13 > 9)
    {
      sub_12E8418();
    }

    else
    {
      *(a1 + 16) |= 2u;
      *(a1 + 56) = v13;
    }

    goto LABEL_51;
  }

LABEL_43:
  if (v8)
  {
    v29 = (v8 & 7) == 4;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v30 = *(a1 + 8);
    if (v30)
    {
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v31 = sub_11F1920((a1 + 8));
      v7 = v34;
    }

    v25 = sub_1952690(v8, v31, v7, a3);
    goto LABEL_50;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_61:
  v34 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v34;
}

char *sub_16D5514(uint64_t a1, char *__dst, void *a3)
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

    __dst = sub_15BCFE4(v6, v8, a3);
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

    v14 = *(a1 + 60);
    *v9 = 24;
    v9[1] = v14;
    v9 += 2;
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*a3 <= v9)
      {
        v9 = sub_225EB68(a3, v9);
      }

      v17 = *(*(a1 + 40) + 8 * i + 8);
      *v9 = 34;
      v18 = *(v17 + 20);
      v9[1] = v18;
      if (v18 > 0x7F)
      {
        v19 = sub_19575D0(v18, v9 + 1);
      }

      else
      {
        v19 = v9 + 2;
      }

      v9 = sub_16D4DBC(v17, v19, a3);
    }
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v9;
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

  if (*a3 - v9 >= v23)
  {
    v25 = v23;
    memcpy(v9, v24, v23);
    v9 += v25;
    return v9;
  }

  return sub_1957130(a3, v24, v23, v9);
}

uint64_t sub_16D5774(uint64_t a1)
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
      v7 = sub_16D4F98(v6);
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
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      v9 = sub_15BD4AC(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = *(a1 + 56);
      if (v10 < 0)
      {
        v11 = 11;
      }

      else
      {
        v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v11;
    }

    v2 += (v8 >> 1) & 2;
  }

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

std::string *sub_16D5898(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_16E2F64(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      data = v3[2].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v13 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v13 = *v13;
        }

        data = sub_15BE2BC(v13);
        v3[2].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_2778C00;
      }

      result = sub_15BD798(data, v14);
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
        v3[2].__r_.__value_.__s.__data_[12] = *(a2 + 60);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
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

BOOL sub_16D59DC(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_15BDA3C(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_16D5A1C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2700418;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

void *sub_16D5AB8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2700498;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  *(result + 53) = 0;
  return result;
}

uint64_t sub_16D5B5C(uint64_t a1)
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
  if (a1 != &off_277E118)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_15B6B74(v6);
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

void sub_16D5C14(uint64_t a1)
{
  sub_16D5B5C(a1);

  operator delete();
}

uint64_t sub_16D5C4C(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_15B6ACC(*(result + 24));
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

char *sub_16D5CAC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v19, a3[11].i32[1]))
  {
    goto LABEL_31;
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
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_11;
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

      v15 = sub_15BA55C(v17);
      *(a1 + 24) = v15;
      v6 = v19;
    }

    v14 = sub_22214EC(a3, v15, v6);
LABEL_25:
    v19 = v14;
    if (!v14)
    {
      goto LABEL_32;
    }

LABEL_26:
    if (sub_195ADC0(a3, &v19, a3[11].i32[1]))
    {
      goto LABEL_31;
    }
  }

  if (v7 == 17)
  {
    v5 |= 2u;
    *(a1 + 32) = *v6;
    v19 = v6 + 8;
    goto LABEL_26;
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
      v6 = v19;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
    goto LABEL_25;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_31;
  }

LABEL_32:
  v19 = 0;
LABEL_31:
  *(a1 + 16) |= v5;
  return v19;
}

char *sub_16D5E44(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_15B6D94(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 32);
    *v4 = 17;
    *(v4 + 1) = v10;
    v4 += 9;
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

  if (*a3 - v4 >= v14)
  {
    v16 = v14;
    memcpy(v4, v15, v14);
    v4 += v16;
    return v4;
  }

  return sub_1957130(a3, v15, v14, v4);
}

uint64_t sub_16D5F94(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v5 = sub_15B6F44(*(a1 + 24));
      v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      result = v3 + 9;
    }

    else
    {
      result = v3;
    }
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

std::string *sub_16D6030(std::string *result, uint64_t a2)
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

        data = sub_15BA55C(v7);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_27789D8;
      }

      result = sub_128F8FC(data, v8);
    }

    if ((v4 & 2) != 0)
    {
      v3[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_16D6100(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_15B6AF0(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_16D6140(uint64_t a1)
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

  if (a1 != &off_277E140)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_15B6B74(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_15B70BC(v6);
      operator delete();
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      sub_15B779C(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_16E2FE0((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16D623C(uint64_t a1)
{
  sub_16D6140(a1);

  operator delete();
}

uint64_t sub_16D6274(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16D5C4C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      result = sub_15B6ACC(*(v1 + 48));
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    result = sub_15B70F8(*(v1 + 56));
    if ((v5 & 4) != 0)
    {
LABEL_9:
      result = sub_15B77D8(*(v1 + 64));
    }
  }

LABEL_10:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_16D6330(uint64_t a1, char *a2, int32x2_t *a3)
{
  v32 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v32, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v32 + 1;
    v7 = *v32;
    if (*v32 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v32, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v32 + 2;
      }
    }

    v32 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
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

            v25 = sub_15BA5D4(v27);
            *(a1 + 56) = v25;
            v6 = v32;
          }

          v21 = sub_222157C(a3, v25, v6);
          goto LABEL_50;
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
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

          v18 = sub_15BA650(v20);
          *(a1 + 64) = v18;
          v6 = v32;
        }

        v21 = sub_222196C(a3, v18, v6);
        goto LABEL_50;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v22 = *(a1 + 48);
        if (!v22)
        {
          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          v22 = sub_15BA55C(v24);
          *(a1 + 48) = v22;
          v6 = v32;
        }

        v21 = sub_22214EC(a3, v22, v6);
        goto LABEL_50;
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
      v12 = v6 - 1;
      while (1)
      {
        v13 = (v12 + 1);
        v32 = v12 + 1;
        v14 = *(a1 + 40);
        if (v14 && (v15 = *(a1 + 32), v15 < *v14))
        {
          *(a1 + 32) = v15 + 1;
          v16 = *&v14[2 * v15 + 2];
        }

        else
        {
          v17 = sub_16D6C1C(*(a1 + 24));
          v16 = sub_19593CC(a1 + 24, v17);
          v13 = v32;
        }

        v12 = sub_2235904(a3, v16, v13);
        v32 = v12;
        if (!v12)
        {
          return 0;
        }

        if (*a3 <= v12 || *v12 != 18)
        {
          goto LABEL_51;
        }
      }
    }

    if (v7)
    {
      v28 = (v7 & 7) == 4;
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v32;
      }

      return 0;
    }

    v29 = *(a1 + 8);
    if (v29)
    {
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v30 = sub_11F1920((a1 + 8));
      v6 = v32;
    }

    v21 = sub_1952690(v7, v30, v6, a3);
LABEL_50:
    v32 = v21;
    if (!v21)
    {
      return 0;
    }

LABEL_51:
    ;
  }

  return v32;
}

char *sub_16D65CC(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_15B6D94(v7, v9, a3);
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
      *v4 = 18;
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

      v4 = sub_16D5E44(v12, v14, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v15 = *(a1 + 56);
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

    v4 = sub_15B7304(v15, v17, a3);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v18 = *(a1 + 64);
    *v4 = 34;
    v19 = *(v18 + 40);
    v4[1] = v19;
    if (v19 > 0x7F)
    {
      v20 = sub_19575D0(v19, v4 + 1);
    }

    else
    {
      v20 = v4 + 2;
    }

    v4 = sub_15B79E4(v18, v20, a3);
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v24)
  {
    v26 = v24;
    memcpy(v4, v25, v24);
    v4 += v26;
    return v4;
  }

  return sub_1957130(a3, v25, v24, v4);
}

uint64_t sub_16D683C(uint64_t a1)
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
      v7 = sub_16D5F94(v6);
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
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      v12 = sub_15B6F44(*(a1 + 48));
      v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_12:
        if ((v8 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    v13 = sub_15B7514(*(a1 + 56));
    v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) != 0)
    {
LABEL_13:
      v9 = sub_15B7B24(*(a1 + 64));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_14:
  v10 = *(a1 + 8);
  if (v10)
  {
    v14 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v2 += v15;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_16D698C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_16E3064(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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

        data = sub_15BA55C(v12);
        v3[2].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_27789D8;
      }

      result = sub_128F8FC(data, v13);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_25;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v14 = v3[2].__r_.__value_.__l.__size_;
    if (!v14)
    {
      v15 = v3->__r_.__value_.__l.__size_;
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_15BA5D4(v16);
      v3[2].__r_.__value_.__l.__size_ = v14;
    }

    if (*(a2 + 56))
    {
      v17 = *(a2 + 56);
    }

    else
    {
      v17 = &off_27789F8;
    }

    result = sub_15B75D4(v14, v17);
    if ((v9 & 4) != 0)
    {
LABEL_25:
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
      v18 = v3[2].__r_.__value_.__r.__words[2];
      if (!v18)
      {
        v19 = v3->__r_.__value_.__l.__size_;
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v18 = sub_15BA650(v20);
        v3[2].__r_.__value_.__r.__words[2] = v18;
      }

      if (*(a2 + 64))
      {
        v21 = *(a2 + 64);
      }

      else
      {
        v21 = &off_2778A20;
      }

      result = sub_15B7BCC(v18, v21);
    }
  }

LABEL_33:
  v22 = *(a2 + 8);
  if (v22)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v22 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_16D6B44(uint64_t a1)
{
  result = sub_16D6BB0(a1 + 24);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      result = sub_15B6AF0(*(a1 + 48));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 2) != 0)
    {
      result = sub_15B76D0(*(a1 + 56));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 4) == 0)
    {
      return 1;
    }

    result = sub_15B7C88(*(a1 + 64));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_16D6BB0(uint64_t a1)
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
      result = sub_15B6AF0(*(v3 + 24));
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

void *sub_16D6C1C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2700518;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_16D6C98(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2700598;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_16D6D38(uint64_t a1)
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
  if (a1 != &off_277E188)
  {
    v6 = *(a1 + 48);
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
  sub_16E31B4((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16D6DFC(uint64_t a1)
{
  sub_16D6D38(a1);

  operator delete();
}

uint64_t sub_16D6E34(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16D7598(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_16E5B70(*(v1 + 48));
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

char *sub_16D6EC4(uint64_t a1, char *a2, int32x2_t *a3)
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

          sub_16F58FC(v17);
          v15 = v18;
          *(a1 + 48) = v18;
          v6 = v26;
        }

        v14 = sub_21F86E8(a3, v15, v6);
        goto LABEL_25;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      v19 = v6 - 1;
      while (1)
      {
        v20 = (v19 + 1);
        v26 = v19 + 1;
        v21 = *(a1 + 40);
        if (v21 && (v22 = *(a1 + 32), v22 < *v21))
        {
          *(a1 + 32) = v22 + 1;
          v23 = *&v21[2 * v22 + 2];
        }

        else
        {
          sub_16DD848(*(a1 + 24));
          v23 = sub_19593CC(a1 + 24, v24);
          v20 = v26;
        }

        v19 = sub_2235994(a3, v23, v20);
        v26 = v19;
        if (!v19)
        {
          return 0;
        }

        if (*a3 <= v19 || *v19 != 10)
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
LABEL_25:
    v26 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_35:
    ;
  }

  return v26;
}

char *sub_16D70A8(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_16D78DC(v8, v10, a3);
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

    __dst = sub_16E5FE0(v11, v13, a3);
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

uint64_t sub_16D7250(uint64_t a1)
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
      v7 = sub_16D7B60(v6);
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
    v8 = sub_16E62F4(*(a1 + 48));
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

void sub_16D732C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_16E3340((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

      sub_16F58FC(v12);
      *(a1 + 48) = v10;
      v9 = *(a2 + 48);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_277E650;
    }

    sub_16E645C(v10, v13);
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_16D743C(uint64_t a1)
{
  result = sub_12D45E0(a1 + 24);
  if (result)
  {
    if ((*(a1 + 16) & 1) == 0)
    {
      return 1;
    }

    result = sub_16E6614(*(a1 + 48));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_16D7490(uint64_t a1)
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

  if (a1 != &off_277E1C0)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_16D7E2C(v5);
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

void sub_16D7560(uint64_t a1)
{
  sub_16D7490(a1);

  operator delete();
}

uint64_t sub_16D7598(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
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
      result = sub_16E4E44(*(v1 + 32));
    }
  }

  if ((v2 & 0xC) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 40) = 0;
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

uint64_t sub_16D7628(uint64_t a1)
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

char *sub_16D7640(uint64_t a1, char *a2, int32x2_t *a3)
{
  v33 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v33, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v33 + 1;
    v8 = *v33;
    if (*v33 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v33, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v33 + 2;
      }
    }

    v33 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_37;
      }

      v5 |= 4u;
      v21 = v7 + 1;
      v20 = *v7;
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      v22 = *v21;
      v20 = (v22 << 7) + v20 - 128;
      if ((v22 & 0x80000000) == 0)
      {
        v21 = v7 + 2;
LABEL_30:
        v33 = v21;
        *(a1 + 40) = v20;
        goto LABEL_45;
      }

      v31 = sub_19587DC(v7, v20);
      v33 = v31;
      *(a1 + 40) = v32;
      if (!v31)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_37;
      }

      v5 |= 8u;
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
        v33 = v13;
        *(a1 + 48) = v14;
        goto LABEL_45;
      }

      v29 = sub_1958770(v7, v14);
      v33 = v29;
      *(a1 + 48) = v30;
      if (!v29)
      {
        goto LABEL_54;
      }
    }

LABEL_45:
    if (sub_195ADC0(a3, &v33, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 == 34)
    {
      *(a1 + 16) |= 1u;
      v23 = *(a1 + 24);
      if (!v23)
      {
        v24 = *(a1 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        v23 = sub_16DD8C8(v25);
        *(a1 + 24) = v23;
        v7 = v33;
      }

      v19 = sub_2235A24(a3, v23, v7);
LABEL_44:
      v33 = v19;
      if (!v19)
      {
        goto LABEL_54;
      }

      goto LABEL_45;
    }
  }

  else if (v11 == 5 && v8 == 42)
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
      v7 = v33;
    }

    v19 = sub_21F4D60(a3, v16, v7);
    goto LABEL_44;
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
    v27 = *(a1 + 8);
    if (v27)
    {
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v28 = sub_11F1920((a1 + 8));
      v7 = v33;
    }

    v19 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  v33 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v33;
}

char *sub_16D78DC(uint64_t a1, char *__dst, _DWORD *a3)
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

  if (v5)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v15 = *(a1 + 24);
    *v11 = 34;
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

    v11 = sub_16D800C(v15, v17, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v18 = *(a1 + 32);
    *v11 = 42;
    v19 = *(v18 + 44);
    v11[1] = v19;
    if (v19 > 0x7F)
    {
      v20 = sub_19575D0(v19, v11 + 1);
    }

    else
    {
      v20 = v11 + 2;
    }

    v11 = sub_16E5070(v18, v20, a3);
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v11;
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

  if (*a3 - v11 >= v24)
  {
    v26 = v24;
    memcpy(v11, v25, v24);
    v11 += v26;
    return v11;
  }

  return sub_1957130(a3, v25, v24, v11);
}

uint64_t sub_16D7B60(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_14;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    v7 = sub_16E51F0(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_11;
  }

  v4 = *(a1 + 24);
  v5 = 5;
  if ((*(v4 + 16) & 1) == 0)
  {
    v5 = 0;
  }

  v6 = *(v4 + 8);
  if (v6)
  {
    v12 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v5 += v13;
  }

  *(v4 + 20) = v5;
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_13:
    v3 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
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

void sub_16D7CB4(uint64_t a1, uint64_t a2)
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

        v6 = sub_16DD8C8(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277E1F8;
      }

      sub_12D67F8(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_28;
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
LABEL_7:
        *(a1 + 16) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(a1 + 48) = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_28:
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

uint64_t sub_16D7DEC(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
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

void *sub_16D7E2C(void *a1)
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

void sub_16D7EA0(void *a1)
{
  sub_16D7E2C(a1);

  operator delete();
}

char *sub_16D7ED8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v14 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v14, a3[11].i32[1]))
  {
    goto LABEL_21;
  }

  while (1)
  {
    v6 = v14 + 1;
    v7 = *v14;
    if (*v14 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v14, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v14 + 2;
      }
    }

    v14 = v6;
    if (v7 == 13)
    {
      *(a1 + 24) = *v6;
      v14 = v6 + 4;
      v5 = 1;
      goto LABEL_16;
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v12 = sub_11F1920((a1 + 8));
      v6 = v14;
    }

    v14 = sub_1952690(v7, v12, v6, a3);
    if (!v14)
    {
      goto LABEL_22;
    }

LABEL_16:
    if (sub_195ADC0(a3, &v14, a3[11].i32[1]))
    {
      goto LABEL_21;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_21;
  }

LABEL_22:
  v14 = 0;
LABEL_21:
  *(a1 + 16) |= v5;
  return v14;
}

char *sub_16D800C(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *v4 = 13;
    *(v4 + 1) = v6;
    v4 += 5;
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

uint64_t sub_16D80EC(uint64_t a1)
{
  v1 = 5;
  if ((*(a1 + 16) & 1) == 0)
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

uint64_t sub_16D8144(uint64_t a1)
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

  v5 = (a1 + 64);
  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_277E218)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      sub_16DD180(v6);
      operator delete();
    }

    if (*(a1 + 80))
    {
      sub_1869C50();
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_16E3238((a1 + 40));
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16D8244(uint64_t a1)
{
  sub_16D8144(a1);

  operator delete();
}

uint64_t sub_16D827C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_13115E8(a1 + 40);
  v3 = *(a1 + 16);
  if ((v3 & 7) == 0)
  {
    goto LABEL_11;
  }

  if ((v3 & 1) == 0)
  {
LABEL_5:
    if ((v3 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v4 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v4 + 23) & 0x80000000) == 0)
  {
    *v4 = 0;
    *(v4 + 23) = 0;
    goto LABEL_5;
  }

  **v4 = 0;
  *(v4 + 8) = 0;
  if ((v3 & 2) != 0)
  {
LABEL_6:
    v5 = *(a1 + 72);
    v6 = *(v5 + 8);
    result = v5 + 8;
    *(result + 16) = 0;
    *(result + 32) = 0;
    *(result + 8) = 0;
    if (v6)
    {
      result = sub_1957EA8(result);
    }
  }

LABEL_9:
  if ((v3 & 4) != 0)
  {
    result = sub_1869C8C(*(a1 + 80));
  }

LABEL_11:
  if ((v3 & 0xF8) != 0)
  {
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
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

uint64_t sub_16D834C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 16) = 0;
  *(result + 32) = 0;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_16D8368(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v62 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, v62, a3[11].i32[1]) & 1) == 0)
  {
    v7 = (a1 + 8);
    while (1)
    {
      v8 = (*v62 + 1);
      v9 = **v62;
      if (**v62 < 0)
      {
        v10 = *v8;
        v11 = v9 + (v10 << 7);
        v9 = v11 - 128;
        if (v10 < 0)
        {
          v8 = sub_1958824(*v62, v11 - 128);
          v9 = v12;
        }

        else
        {
          v8 = (*v62 + 2);
        }
      }

      *v62 = v8;
      v13 = v9 >> 3;
      if (v9 >> 3 <= 5)
      {
        break;
      }

      if (v9 >> 3 <= 7)
      {
        if (v13 != 6)
        {
          if (v13 == 7 && v9 == 58)
          {
            *(a1 + 16) |= 2u;
            v24 = *(a1 + 72);
            if (!v24)
            {
              v25 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
              if (*v7)
              {
                v25 = *v25;
              }

              v24 = sub_16DDE34(v25);
              *(a1 + 72) = v24;
              v8 = *v62;
            }

            v17 = sub_2235AB4(a3, v24, v8);
LABEL_117:
            *v62 = v17;
            if (!v17)
            {
              goto LABEL_126;
            }

            goto LABEL_118;
          }

LABEL_110:
          if (v9)
          {
            v60 = (v9 & 7) == 4;
          }

          else
          {
            v60 = 1;
          }

          if (v60)
          {
            if (v8)
            {
              a3[10].i32[0] = v9 - 1;
              goto LABEL_2;
            }

LABEL_126:
            *v62 = 0;
            goto LABEL_2;
          }

          if (*v7)
          {
            v61 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v61 = sub_11F1920((a1 + 8));
            v8 = *v62;
          }

          v17 = sub_1952690(v9, v61, v8, a3);
          goto LABEL_117;
        }

        if (v9 != 48)
        {
          goto LABEL_110;
        }

        v5 |= 0x40u;
        v30 = (v8 + 1);
        v31 = *v8;
        if (*v8 < 0)
        {
          v32 = *v30;
          v31 = v31 + (v32 << 7) - 128;
          if (v32 < 0)
          {
            v55 = sub_1958770(v8, v31);
            *v62 = v55;
            *(a1 + 100) = v56;
            if (!v55)
            {
              goto LABEL_126;
            }

            goto LABEL_118;
          }

          v30 = (v8 + 2);
        }

        *v62 = v30;
        *(a1 + 100) = v31;
      }

      else
      {
        if (v13 == 8)
        {
          if (v9 == 66)
          {
            v37 = (v8 - 1);
            while (1)
            {
              v38 = (v37 + 1);
              *v62 = v37 + 1;
              v39 = *(a1 + 56);
              if (v39 && (v40 = *(a1 + 48), v40 < *v39))
              {
                *(a1 + 48) = v40 + 1;
                v41 = *&v39[2 * v40 + 2];
              }

              else
              {
                v42 = sub_16DDE34(*(a1 + 40));
                v41 = sub_19593CC(a1 + 40, v42);
                v38 = *v62;
              }

              v37 = sub_2235AB4(a3, v41, v38);
              *v62 = v37;
              if (!v37)
              {
                goto LABEL_126;
              }

              if (*a3 <= v37 || *v37 != 66)
              {
                goto LABEL_118;
              }
            }
          }

          goto LABEL_110;
        }

        if (v13 != 9)
        {
          if (v13 == 10 && v9 == 82)
          {
            *(a1 + 16) |= 4u;
            v18 = *(a1 + 80);
            if (!v18)
            {
              v19 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
              if (*v7)
              {
                v19 = *v19;
              }

              v18 = sub_18FF354(v19);
              *(a1 + 80) = v18;
              v8 = *v62;
            }

            v17 = sub_2201670(a3, v18, v8);
            goto LABEL_117;
          }

          goto LABEL_110;
        }

        if (v9 != 72)
        {
          goto LABEL_110;
        }

        v5 |= 0x80u;
        v51 = (v8 + 1);
        v52 = *v8;
        if (*v8 < 0)
        {
          v53 = *v51;
          v52 = v52 + (v53 << 7) - 128;
          if (v53 < 0)
          {
            v58 = sub_1958770(v8, v52);
            *v62 = v58;
            *(a1 + 104) = v59;
            if (!v58)
            {
              goto LABEL_126;
            }

            goto LABEL_118;
          }

          v51 = (v8 + 2);
        }

        *v62 = v51;
        *(a1 + 104) = v52;
      }

LABEL_118:
      if (sub_195ADC0(a3, v62, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    if (v9 >> 3 <= 2)
    {
      if (v13 == 1)
      {
        if (v9 != 8)
        {
          goto LABEL_110;
        }

        v26 = (v8 + 1);
        v27 = *v8;
        if (v27 < 0)
        {
          v28 = *v26;
          v29 = (v28 << 7) + v27;
          LODWORD(v27) = v29 - 128;
          if ((v28 & 0x80000000) == 0)
          {
            v26 = (v8 + 2);
            goto LABEL_51;
          }

          *v62 = sub_19587DC(v8, (v29 - 128));
          if (!*v62)
          {
            goto LABEL_126;
          }

          LODWORD(v27) = v54;
        }

        else
        {
LABEL_51:
          *v62 = v26;
        }

        if (sub_1869960(v27))
        {
          *(a1 + 16) |= 8u;
          *(a1 + 88) = v27;
        }

        else
        {
          sub_12E8450();
        }

        goto LABEL_118;
      }

      if (v13 != 2 || v9 != 16)
      {
        goto LABEL_110;
      }

      v22 = (v8 + 1);
      v21 = *v8;
      if (v21 < 0)
      {
        v23 = *v22;
        v21 = (v23 << 7) + v21 - 128;
        if ((v23 & 0x80000000) == 0)
        {
          v22 = (v8 + 2);
          goto LABEL_36;
        }

        *v62 = sub_19587DC(v8, v21);
        if (!*v62)
        {
          goto LABEL_126;
        }
      }

      else
      {
LABEL_36:
        *v62 = v22;
      }

      if (v21 > 7)
      {
        sub_12E8418();
      }

      else
      {
        *(a1 + 16) |= 0x10u;
        *(a1 + 92) = v21;
      }

      goto LABEL_118;
    }

    if (v13 != 3)
    {
      if (v13 != 4)
      {
        if (v13 == 5 && v9 == 42)
        {
          *(a1 + 16) |= 1u;
          v14 = *(a1 + 8);
          v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          if (v14)
          {
            v15 = *v15;
          }

          v16 = sub_194DB04((a1 + 64), v15);
          v17 = sub_1958890(v16, *v62, a3);
          goto LABEL_117;
        }

        goto LABEL_110;
      }

      if (v9 != 32)
      {
        if (v9 == 34)
        {
          *&v63 = a1 + 24;
          *(&v63 + 1) = sub_186990C;
          v64 = a1 + 8;
          v65 = 4;
          v17 = sub_1216588(a3, v8, &v63);
          goto LABEL_117;
        }

        goto LABEL_110;
      }

      v43 = (v8 - 1);
      while (2)
      {
        *v62 = v43 + 1;
        v44 = *(v43 + 1);
        v45 = (v43 + 2);
        if (v44 < 0)
        {
          v46 = *v45;
          v47 = (v46 << 7) + v44;
          LODWORD(v44) = v47 - 128;
          if ((v46 & 0x80000000) == 0)
          {
            v45 = (v43 + 3);
            goto LABEL_81;
          }

          *v62 = sub_19587DC(v43 + 1, (v47 - 128));
          if (!*v62)
          {
            goto LABEL_126;
          }

          LODWORD(v44) = v50;
        }

        else
        {
LABEL_81:
          *v62 = v45;
        }

        if (sub_186990C(v44))
        {
          v48 = *(a1 + 24);
          if (v48 == *(a1 + 28))
          {
            v49 = v48 + 1;
            sub_1958E5C((a1 + 24), v48 + 1);
            *(*(a1 + 32) + 4 * v48) = v44;
          }

          else
          {
            *(*(a1 + 32) + 4 * v48) = v44;
            v49 = v48 + 1;
          }

          *(a1 + 24) = v49;
        }

        else
        {
          sub_12E8500();
        }

        v43 = *v62;
        if (*a3 <= *v62 || **v62 != 32)
        {
          goto LABEL_118;
        }

        continue;
      }
    }

    if (v9 != 24)
    {
      goto LABEL_110;
    }

    v33 = (v8 + 1);
    v34 = *v8;
    if (v34 < 0)
    {
      v35 = *v33;
      v36 = (v35 << 7) + v34;
      LODWORD(v34) = v36 - 128;
      if (v35 < 0)
      {
        *v62 = sub_19587DC(v8, (v36 - 128));
        if (!*v62)
        {
          goto LABEL_126;
        }

        LODWORD(v34) = v57;
        goto LABEL_64;
      }

      v33 = (v8 + 2);
    }

    *v62 = v33;
LABEL_64:
    if (sub_13560D8(v34))
    {
      *(a1 + 16) |= 0x20u;
      *(a1 + 96) = v34;
    }

    else
    {
      sub_12E8578();
    }

    goto LABEL_118;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return *v62;
}

char *sub_16D89C4(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 88);
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 92);
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

    v16 = *(a1 + 96);
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

  v19 = *(a1 + 24);
  if (v19 < 1)
  {
    v22 = v15;
  }

  else
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v21 = *(*(a1 + 32) + 4 * i);
      *v15 = 32;
      v15[1] = v21;
      if (v21 > 0x7F)
      {
        v15[1] = v21 | 0x80;
        v23 = v21 >> 7;
        v15[2] = v21 >> 7;
        v22 = v15 + 3;
        if (v21 >= 0x4000)
        {
          LOBYTE(v24) = v15[2];
          do
          {
            *(v22 - 1) = v24 | 0x80;
            v24 = v23 >> 7;
            *v22++ = v23 >> 7;
            v25 = v23 >> 14;
            v23 >>= 7;
          }

          while (v25);
        }
      }

      else
      {
        v22 = v15 + 2;
      }

      v15 = v22;
    }
  }

  if (v5)
  {
    v22 = sub_128AEEC(a3, 5, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v22);
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v27 = *(a1 + 100);
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v31 = *(a1 + 72);
    *v26 = 58;
    v32 = *(v31 + 20);
    v26[1] = v32;
    if (v32 > 0x7F)
    {
      v33 = sub_19575D0(v32, v26 + 1);
    }

    else
    {
      v33 = v26 + 2;
    }

    v26 = sub_16DD4F8(v31, v33, a3);
  }

  v34 = *(a1 + 48);
  if (v34)
  {
    for (j = 0; j != v34; ++j)
    {
      if (*a3 <= v26)
      {
        v26 = sub_225EB68(a3, v26);
      }

      v36 = *(*(a1 + 56) + 8 * j + 8);
      *v26 = 66;
      v37 = *(v36 + 20);
      v26[1] = v37;
      if (v37 > 0x7F)
      {
        v38 = sub_19575D0(v37, v26 + 1);
      }

      else
      {
        v38 = v26 + 2;
      }

      v26 = sub_16DD4F8(v36, v38, a3);
    }
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v40 = *(a1 + 104);
    *v26 = 72;
    v26[1] = v40;
    if (v40 > 0x7F)
    {
      v26[1] = v40 | 0x80;
      v41 = v40 >> 7;
      v26[2] = v40 >> 7;
      v39 = v26 + 3;
      if (v40 >= 0x4000)
      {
        LOBYTE(v26) = v26[2];
        do
        {
          *(v39 - 1) = v26 | 0x80;
          LODWORD(v26) = v41 >> 7;
          *v39++ = v41 >> 7;
          v42 = v41 >> 14;
          v41 >>= 7;
        }

        while (v42);
      }
    }

    else
    {
      v39 = v26 + 2;
    }
  }

  else
  {
    v39 = v26;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v43 = *(a1 + 80);
    *v39 = 82;
    v44 = *(v43 + 20);
    v39[1] = v44;
    if (v44 > 0x7F)
    {
      v45 = sub_19575D0(v44, v39 + 1);
    }

    else
    {
      v45 = v39 + 2;
    }

    v39 = sub_1869F58(v43, v45, a3);
  }

  v46 = *(a1 + 8);
  if ((v46 & 1) == 0)
  {
    return v39;
  }

  v48 = v46 & 0xFFFFFFFFFFFFFFFCLL;
  v49 = *(v48 + 31);
  if (v49 < 0)
  {
    v50 = *(v48 + 8);
    v49 = *(v48 + 16);
  }

  else
  {
    v50 = (v48 + 8);
  }

  if (*a3 - v39 >= v49)
  {
    v51 = v49;
    memcpy(v39, v50, v49);
    v39 += v51;
    return v39;
  }

  return sub_1957130(a3, v50, v49, v39);
}

uint64_t sub_16D8F30(uint64_t a1)
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

  v7 = v3 + v2;
  v8 = *(a1 + 48);
  v9 = v7 + v8;
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
      v14 = sub_16DD6D4(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if (!v15)
  {
    goto LABEL_25;
  }

  if (*(a1 + 16))
  {
    v18 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(v18 + 23);
    v20 = *(v18 + 8);
    if ((v19 & 0x80u) == 0)
    {
      v20 = v19;
    }

    v9 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 2) == 0)
    {
LABEL_18:
      if ((*(a1 + 16) & 4) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }
  }

  else if ((*(a1 + 16) & 2) == 0)
  {
    goto LABEL_18;
  }

  v21 = sub_16DD6D4(*(a1 + 72));
  v9 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 4) == 0)
  {
LABEL_19:
    if ((v15 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_32;
  }

LABEL_31:
  v22 = sub_186A16C(*(a1 + 80));
  v9 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 8) == 0)
  {
LABEL_20:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

LABEL_32:
  v23 = *(a1 + 88);
  v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v23 >= 0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 11;
  }

  v9 += v25;
  if ((v15 & 0x10) == 0)
  {
LABEL_21:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_22;
    }

LABEL_40:
    v29 = *(a1 + 96);
    v30 = ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v29 >= 0)
    {
      v31 = v30;
    }

    else
    {
      v31 = 11;
    }

    v9 += v31;
    if ((v15 & 0x40) == 0)
    {
LABEL_23:
      if ((v15 & 0x80) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    goto LABEL_44;
  }

LABEL_36:
  v26 = *(a1 + 92);
  v27 = ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v26 >= 0)
  {
    v28 = v27;
  }

  else
  {
    v28 = 11;
  }

  v9 += v28;
  if ((v15 & 0x20) != 0)
  {
    goto LABEL_40;
  }

LABEL_22:
  if ((v15 & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_44:
  v9 += ((9 * (__clz(*(a1 + 100) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v15 < 0)
  {
LABEL_24:
    v9 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_25:
  v16 = *(a1 + 8);
  if (v16)
  {
    v32 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v33 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v33 < 0)
    {
      v33 = *(v32 + 16);
    }

    v9 += v33;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_16D91E4(uint64_t a1, uint64_t a2)
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
    sub_16E33CC((a1 + 40), v10, (v9 + 8), v8, **(a1 + 56) - *(a1 + 48));
    v11 = *(a1 + 48) + v8;
    *(a1 + 48) = v11;
    v12 = *(a1 + 56);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 16);
  if (v13)
  {
    if (v13)
    {
      v15 = *(a2 + 64);
      *(a1 + 16) |= 1u;
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      sub_194EA1C((a1 + 64), (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
      if ((v13 & 2) == 0)
      {
LABEL_9:
        if ((v13 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_32;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(a1 + 16) |= 2u;
    v18 = *(a1 + 72);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_16DDE34(v20);
      *(a1 + 72) = v18;
    }

    if (*(a2 + 72))
    {
      v21 = *(a2 + 72);
    }

    else
    {
      v21 = &off_277E418;
    }

    sub_12EE138(v18, v21);
    if ((v13 & 4) == 0)
    {
LABEL_10:
      if ((v13 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_40;
    }

LABEL_32:
    *(a1 + 16) |= 4u;
    v22 = *(a1 + 80);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_18FF354(v24);
      *(a1 + 80) = v22;
    }

    if (*(a2 + 80))
    {
      v25 = *(a2 + 80);
    }

    else
    {
      v25 = &off_2787BC0;
    }

    sub_186A25C(v22, v25);
    if ((v13 & 8) == 0)
    {
LABEL_11:
      if ((v13 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_41;
    }

LABEL_40:
    *(a1 + 88) = *(a2 + 88);
    if ((v13 & 0x10) == 0)
    {
LABEL_12:
      if ((v13 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(a1 + 92) = *(a2 + 92);
    if ((v13 & 0x20) == 0)
    {
LABEL_13:
      if ((v13 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_43;
    }

LABEL_42:
    *(a1 + 96) = *(a2 + 96);
    if ((v13 & 0x40) == 0)
    {
LABEL_14:
      if ((v13 & 0x80) == 0)
      {
LABEL_16:
        *(a1 + 16) |= v13;
        goto LABEL_17;
      }

LABEL_15:
      *(a1 + 104) = *(a2 + 104);
      goto LABEL_16;
    }

LABEL_43:
    *(a1 + 100) = *(a2 + 100);
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_16D9424(uint64_t a1)
{
  if ((*(a1 + 16) & 4) == 0)
  {
    return 1;
  }

  result = sub_186A390(*(a1 + 80));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_16D9464(uint64_t a1)
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

  if (a1 != &off_277E288)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_16D8144(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_16D6D38(v6);
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

void sub_16D9534(uint64_t a1)
{
  sub_16D9464(a1);

  operator delete();
}

uint64_t sub_16D956C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_16D827C(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_16D6E34(*(v1 + 32));
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

char *sub_16D95DC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v23 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v23, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v23 + 1;
    v7 = *v23;
    if (*v23 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v23, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v23 + 2;
      }
    }

    v23 = v6;
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

          v15 = sub_16DD7AC(v17);
          *(a1 + 32) = v15;
          v6 = v23;
        }

        v14 = sub_2235BD4(a3, v15, v6);
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

        sub_16DD944(v20);
        v18 = v21;
        *(a1 + 24) = v21;
        v6 = v23;
      }

      v14 = sub_2235B44(a3, v18, v6);
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
        return v23;
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
      v6 = v23;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_30:
    v23 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v23;
}

char *sub_16D9784(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_16D89C4(v7, v9, a3);
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

    v4 = sub_16D70A8(v10, v12, a3);
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

uint64_t sub_16D9900(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_16D8F30(*(a1 + 24));
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
    v5 = sub_16D7250(*(a1 + 32));
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

void sub_16D99D0(uint64_t a1, uint64_t a2)
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

        sub_16DD944(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_277E218;
      }

      sub_16D91E4(v5, v8);
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

        v9 = sub_16DD7AC(v11);
        *(a1 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_277E188;
      }

      sub_16D732C(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_16D9AD4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    if ((*(v3 + 16) & 4) != 0)
    {
      result = sub_186A390(*(v3 + 80));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = sub_16D743C(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_16D9B3C(void *a1)
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

void sub_16D9BB0(void *a1)
{
  sub_16D9B3C(a1);

  operator delete();
}

uint64_t sub_16D9BE8(uint64_t a1)
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

char *sub_16D9C00(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_16D9D84(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

uint64_t sub_16D9E64(uint64_t a1)
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

uint64_t sub_16D9EB4(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_15B5594((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16D9F68(uint64_t a1)
{
  sub_16D9EB4(a1);

  operator delete();
}

uint64_t sub_16D9FA0(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_1402588(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  if (*(a1 + 16))
  {
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

uint64_t sub_16DA058(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v33 = a2;
  if (sub_195ADC0(a3, v33, a3[11].i32[1]))
  {
    return *v33;
  }

  while (1)
  {
    v6 = (*v33 + 1);
    v7 = **v33;
    if (**v33 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v33, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v33 + 2);
      }
    }

    *v33 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      break;
    }

    if (v10 != 2)
    {
      if (v10 == 1 && v7 == 10)
      {
        v25 = v6 - 1;
        while (1)
        {
          v26 = (v25 + 1);
          *v33 = v25 + 1;
          v27 = *(a1 + 40);
          if (v27 && (v28 = *(a1 + 32), v28 < *v27))
          {
            *(a1 + 32) = v28 + 1;
            v29 = *&v27[2 * v28 + 2];
          }

          else
          {
            v30 = *(a1 + 24);
            if (!v30)
            {
              operator new();
            }

            *v32 = v31;
            v32[1] = sub_195A650;
            *v31 = 0;
            v31[1] = 0;
            v31[2] = 0;
            v29 = sub_19593CC(a1 + 24, v31);
            v26 = *v33;
          }

          v25 = sub_1958890(v29, v26, a3);
          *v33 = v25;
          if (!v25)
          {
            goto LABEL_51;
          }

          if (*a3 <= v25 || *v25 != 10)
          {
            goto LABEL_46;
          }
        }
      }

      goto LABEL_13;
    }

    if (v7 != 18)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 1u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v18 = sub_194DB04((a1 + 72), v17);
    v15 = sub_1958890(v18, *v33, a3);
LABEL_24:
    *v33 = v15;
    if (!v15)
    {
      goto LABEL_51;
    }

LABEL_46:
    if (sub_195ADC0(a3, v33, a3[11].i32[1]))
    {
      return *v33;
    }
  }

  if (v7 == 26)
  {
    v19 = v6 - 1;
    while (1)
    {
      v20 = v19 + 1;
      *v33 = v19 + 1;
      v21 = *(a1 + 64);
      if (v21 && (v22 = *(a1 + 56), v22 < *v21))
      {
        *(a1 + 56) = v22 + 1;
        v23 = *&v21[2 * v22 + 2];
      }

      else
      {
        v24 = sub_14050A4(*(a1 + 48));
        v23 = sub_19593CC(a1 + 48, v24);
        v20 = *v33;
      }

      v19 = sub_2201B80(a3, v23, v20);
      *v33 = v19;
      if (!v19)
      {
        goto LABEL_51;
      }

      if (*a3 <= v19 || *v19 != 26)
      {
        goto LABEL_46;
      }
    }
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
    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v6 = *v33;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
    goto LABEL_24;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v33;
  }

LABEL_51:
  *v33 = 0;
  return *v33;
}

char *sub_16DA330(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 40) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || (*a3 - __dst + 14) < v9)
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
    __dst = sub_128AEEC(a3, 2, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v13 = *(*(a1 + 64) + 8 * i + 8);
      *__dst = 26;
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

  if ((*a3 - __dst) >= v19)
  {
    v21 = v19;
    memcpy(__dst, v20, v19);
    __dst += v21;
    return __dst;
  }

  return sub_1957130(a3, v20, v19, __dst);
}

uint64_t sub_16DA52C(uint64_t a1)
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
  v9 = v4 + v8;
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
      v14 = sub_1403980(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  if (*(a1 + 16))
  {
    v15 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v9 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v9 += v21;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_16DA678(uint64_t a1, uint64_t a2)
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
    sub_15B6444((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  if (*(a2 + 16))
  {
    v14 = *(a2 + 72);
    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 72), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
  }

  v17 = *(a2 + 8);
  if (v17)
  {

    sub_1957EF4((a1 + 8), (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_16DA7C8(uint64_t a1)
{
  v2 = *(a1 + 56);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_140441C(*(*(a1 + 64) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_16DA830(uint64_t a1)
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

  v5 = (a1 + 120);
  if (*(a1 + 120) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_16E2BB0((a1 + 96));
  sub_16E32BC((a1 + 72));
  sub_1956AFC((a1 + 48));
  sub_15B548C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16DA8FC(uint64_t a1)
{
  sub_16DA830(a1);

  operator delete();
}

uint64_t sub_16DA934(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_1580044(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  result = sub_12A41D0(a1 + 48);
  v6 = *(a1 + 80);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 88) + 8);
    do
    {
      v8 = *v7++;
      result = sub_16D9FA0(v8);
      --v6;
    }

    while (v6);
    *(a1 + 80) = 0;
  }

  v9 = *(a1 + 104);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 112) + 8);
    do
    {
      v11 = *v10++;
      result = sub_15AB2B4(v11);
      --v9;
    }

    while (v9);
    *(a1 + 104) = 0;
  }

  if (*(a1 + 16))
  {
    v12 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
    }
  }

  v14 = *(a1 + 8);
  v13 = a1 + 8;
  *(v13 + 120) = 0;
  *(v13 + 8) = 0;
  if (v14)
  {

    return sub_1957EA8(v13);
  }

  return result;
}

uint64_t sub_16DAA40(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 == 10)
      {
        v22 = v7 - 1;
        while (1)
        {
          v23 = v22 + 1;
          *v51 = v22 + 1;
          v24 = *(a1 + 40);
          if (v24 && (v25 = *(a1 + 32), v25 < *v24))
          {
            *(a1 + 32) = v25 + 1;
            v26 = *&v24[2 * v25 + 2];
          }

          else
          {
            v27 = sub_15B234C(*(a1 + 24));
            v26 = sub_19593CC(a1 + 24, v27);
            v23 = *v51;
          }

          v22 = sub_221ECFC(a3, v26, v23);
          *v51 = v22;
          if (!v22)
          {
            goto LABEL_83;
          }

          if (*a3 <= v22 || *v22 != 10)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_68;
    }

    if (v11 == 2)
    {
      if (v8 == 18)
      {
        v32 = v7 - 1;
        while (1)
        {
          v33 = (v32 + 1);
          *v51 = v32 + 1;
          v34 = *(a1 + 64);
          if (v34 && (v35 = *(a1 + 56), v35 < *v34))
          {
            *(a1 + 56) = v35 + 1;
            v36 = *&v34[2 * v35 + 2];
          }

          else
          {
            v37 = *(a1 + 48);
            if (!v37)
            {
              operator new();
            }

            *v39 = v38;
            v39[1] = sub_195A650;
            *v38 = 0;
            v38[1] = 0;
            v38[2] = 0;
            v36 = sub_19593CC(a1 + 48, v38);
            v33 = *v51;
          }

          v32 = sub_1958890(v36, v33, a3);
          *v51 = v32;
          if (!v32)
          {
            goto LABEL_83;
          }

          if (*a3 <= v32 || *v32 != 18)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_68;
    }

    if (v11 != 3 || v8 != 24)
    {
      goto LABEL_68;
    }

    v5 |= 2u;
    v14 = v7 + 1;
    v13 = *v7;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_18:
      *v51 = v14;
      *(a1 + 128) = v13 != 0;
      goto LABEL_76;
    }

    v49 = sub_19587DC(v7, v13);
    *v51 = v49;
    *(a1 + 128) = v50 != 0;
    if (!v49)
    {
      goto LABEL_83;
    }

LABEL_76:
    if (sub_195ADC0(a3, v51, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 34)
    {
      goto LABEL_68;
    }

    *(a1 + 16) |= 1u;
    v28 = *(a1 + 8);
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    v30 = sub_194DB04((a1 + 120), v29);
    v31 = sub_1958890(v30, *v51, a3);
LABEL_75:
    *v51 = v31;
    if (!v31)
    {
      goto LABEL_83;
    }

    goto LABEL_76;
  }

  if (v11 == 5)
  {
    if (v8 == 42)
    {
      v40 = v7 - 1;
      while (1)
      {
        v41 = v40 + 1;
        *v51 = v40 + 1;
        v42 = *(a1 + 88);
        if (v42 && (v43 = *(a1 + 80), v43 < *v42))
        {
          *(a1 + 80) = v43 + 1;
          v44 = *&v42[2 * v43 + 2];
        }

        else
        {
          v45 = sub_16DDAF8(*(a1 + 72));
          v44 = sub_19593CC(a1 + 72, v45);
          v41 = *v51;
        }

        v40 = sub_2235C64(a3, v44, v41);
        *v51 = v40;
        if (!v40)
        {
          goto LABEL_83;
        }

        if (*a3 <= v40 || *v40 != 42)
        {
          goto LABEL_76;
        }
      }
    }
  }

  else if (v11 == 6 && v8 == 50)
  {
    v16 = v7 - 1;
    while (1)
    {
      v17 = (v16 + 1);
      *v51 = v16 + 1;
      v18 = *(a1 + 112);
      if (v18 && (v19 = *(a1 + 104), v19 < *v18))
      {
        *(a1 + 104) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
      }

      else
      {
        sub_15AE76C(*(a1 + 96));
        v20 = sub_19593CC(a1 + 96, v21);
        v17 = *v51;
      }

      v16 = sub_21F4C40(a3, v20, v17);
      *v51 = v16;
      if (!v16)
      {
        goto LABEL_83;
      }

      if (*a3 <= v16 || *v16 != 50)
      {
        goto LABEL_76;
      }
    }
  }

LABEL_68:
  if (v8)
  {
    v46 = (v8 & 7) == 4;
  }

  else
  {
    v46 = 1;
  }

  if (!v46)
  {
    v47 = *(a1 + 8);
    if (v47)
    {
      v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v48 = sub_11F1920((a1 + 8));
      v7 = *v51;
    }

    v31 = sub_1952690(v8, v48, v7, a3);
    goto LABEL_75;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_83:
  *v51 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v51;
}

char *sub_16DAECC(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_15B1F3C(v8, v10, a3);
    }
  }

  v11 = *(a1 + 56);
  if (v11 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = *(*(a1 + 64) + v12);
      v14 = *(v13 + 23);
      if (v14 < 0 && (v14 = v13[1], v14 > 127) || (*a3 - __dst + 14) < v14)
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

  v16 = *(a1 + 16);
  if ((v16 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v17 = *(a1 + 128);
    *__dst = 24;
    __dst[1] = v17;
    __dst += 2;
  }

  if (v16)
  {
    __dst = sub_128AEEC(a3, 4, *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v18 = *(a1 + 80);
  if (v18)
  {
    for (j = 0; j != v18; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v20 = *(*(a1 + 88) + 8 * j + 8);
      *__dst = 42;
      v21 = *(v20 + 20);
      __dst[1] = v21;
      if (v21 > 0x7F)
      {
        v22 = sub_19575D0(v21, __dst + 1);
      }

      else
      {
        v22 = __dst + 2;
      }

      __dst = sub_16DA330(v20, v22, a3);
    }
  }

  v23 = *(a1 + 104);
  if (v23)
  {
    for (k = 0; k != v23; ++k)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v25 = *(*(a1 + 112) + 8 * k + 8);
      *__dst = 50;
      v26 = *(v25 + 20);
      __dst[1] = v26;
      if (v26 > 0x7F)
      {
        v27 = sub_19575D0(v26, __dst + 1);
      }

      else
      {
        v27 = __dst + 2;
      }

      __dst = sub_15AB7D0(v25, v27, a3);
    }
  }

  v28 = *(a1 + 8);
  if ((v28 & 1) == 0)
  {
    return __dst;
  }

  v30 = v28 & 0xFFFFFFFFFFFFFFFCLL;
  v31 = *(v30 + 31);
  if (v31 < 0)
  {
    v32 = *(v30 + 8);
    v31 = *(v30 + 16);
  }

  else
  {
    v32 = (v30 + 8);
  }

  if ((*a3 - __dst) >= v31)
  {
    v33 = v31;
    memcpy(__dst, v32, v31);
    __dst += v33;
    return __dst;
  }

  return sub_1957130(a3, v32, v31, __dst);
}

uint64_t sub_16DB208(uint64_t a1)
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
      v7 = sub_15B20A0(v6);
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
      v20 = sub_16DA52C(v19);
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
      v27 = sub_15ABB68(v26);
      v22 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6);
      v25 -= 8;
    }

    while (v25);
  }

  v28 = *(a1 + 16);
  if ((v28 & 3) != 0)
  {
    if (v28)
    {
      v29 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
      v30 = *(v29 + 23);
      v31 = *(v29 + 8);
      if ((v30 & 0x80u) == 0)
      {
        v31 = v30;
      }

      v22 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v22 += v28 & 2;
  }

  v32 = *(a1 + 8);
  if (v32)
  {
    v34 = v32 & 0xFFFFFFFFFFFFFFFCLL;
    v35 = *((v32 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v35 < 0)
    {
      v35 = *(v34 + 16);
    }

    v22 += v35;
  }

  *(a1 + 20) = v22;
  return v22;
}

void sub_16DB400(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15B632C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_16E3448((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
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
    sub_16E2D3C((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
    v22 = *(a1 + 104) + v19;
    *(a1 + 104) = v22;
    v23 = *(a1 + 112);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 16);
  if ((v24 & 3) != 0)
  {
    if (v24)
    {
      v25 = *(a2 + 120);
      *(a1 + 16) |= 1u;
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      sub_194EA1C((a1 + 120), (v25 & 0xFFFFFFFFFFFFFFFELL), v27);
    }

    if ((v24 & 2) != 0)
    {
      *(a1 + 128) = *(a2 + 128);
    }

    *(a1 + 16) |= v24;
  }

  v28 = *(a2 + 8);
  if (v28)
  {

    sub_1957EF4((a1 + 8), (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_16DB628(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_1581E0C(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if (!v4)
    {
      return 0;
    }
  }

  if (!sub_16DB6B8(a1 + 72))
  {
    return 0;
  }

  v5 = *(a1 + 104);
  do
  {
    v6 = v5 < 1;
    if (v5 < 1)
    {
      break;
    }

    v7 = v5 - 1;
    v8 = sub_15ABFE0(*(*(a1 + 112) + 8 * v5));
    v5 = v7;
  }

  while ((v8 & 1) != 0);
  return v6;
}

uint64_t sub_16DB6B8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v3 = v1--;
      v4 = *(*(a1 + 16) + 8 * v1 + 8);
      v5 = *(v4 + 56);
      while (v5 >= 1)
      {
        v6 = v5 - 1;
        v7 = sub_140441C(*(*(v4 + 64) + 8 * v5));
        v5 = v6;
        if ((v7 & 1) == 0)
        {
          return 0;
        }
      }
    }

    while (v3 >= 2);
  }

  return 1;
}

uint64_t sub_16DB754(uint64_t a1)
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

  if (a1 != &off_277E358)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_15CF858(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_16C2D50(v6);
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

void sub_16DB824(uint64_t a1)
{
  sub_16DB754(a1);

  operator delete();
}

uint64_t sub_16DB85C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_15CF894(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_16C2F90(*(v1 + 32));
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

char *sub_16DB8CC(uint64_t a1, char *a2, int32x2_t *a3)
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

          v15 = sub_16D0B60(v17);
          *(a1 + 32) = v15;
          v6 = v22;
        }

        v14 = sub_2235634(a3, v15, v6);
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

        v18 = sub_15D4B7C(v20);
        *(a1 + 24) = v18;
        v6 = v22;
      }

      v14 = sub_2226E40(a3, v18, v6);
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

char *sub_16DBA74(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_15CFD5C(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
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

    v4 = sub_16C3D10(v10, v12, a3);
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

uint64_t sub_16DBBF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_15D0C70(*(a1 + 24));
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
    v5 = sub_16C46C8(*(a1 + 32));
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

void sub_16DBCC0(uint64_t a1, uint64_t a2)
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

        v5 = sub_15D4B7C(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_27793F8;
      }

      sub_15D158C(v5, v8);
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

        v9 = sub_16D0B60(v11);
        *(a1 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_277D918;
      }

      sub_16C4B58(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_16DBDC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_15D1F04(*(a1 + 24));
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

  result = sub_16C507C(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_16DBE20(uint64_t a1)
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

  v5 = (a1 + 64);
  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C((a1 + 72));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  sub_15B472C((a1 + 40));
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16DBEEC(uint64_t a1)
{
  sub_16DBE20(a1);

  operator delete();
}

uint64_t sub_16DBF24(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 48);
  if (v2 >= 1)
  {
    v3 = (*(result + 56) + 8);
    do
    {
      v4 = *v3++;
      result = sub_157A3FC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 48) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v6 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
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
    v7 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
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
  *(v8 + 72) = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

uint64_t sub_16DC014(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v28 = *(a1 + 8);
          v14 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v14 = *v14;
          }

          v15 = (a1 + 64);
          goto LABEL_50;
        }
      }

      else if (v11 == 2 && v8 == 18)
      {
        *(a1 + 16) |= 2u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 72);
LABEL_50:
        v29 = sub_194DB04(v15, v14);
        v30 = sub_1958890(v29, *v34, a3);
        goto LABEL_60;
      }
    }

    else if (v11 == 3)
    {
      if (v8 == 24)
      {
        v16 = v7 - 1;
        while (1)
        {
          *v34 = v16 + 1;
          v17 = v16[1];
          if (v17 < 0)
          {
            v18 = (v16[2] << 7) + v17;
            v17 = (v18 - 128);
            if (v16[2] < 0)
            {
              v16 = sub_19587DC((v16 + 1), (v18 - 128));
              v17 = v19;
            }

            else
            {
              v16 += 3;
            }
          }

          else
          {
            v16 += 2;
          }

          *v34 = v16;
          v20 = *(a1 + 24);
          if (v20 == *(a1 + 28))
          {
            v21 = v20 + 1;
            sub_1959094((a1 + 24), v20 + 1);
            *(*(a1 + 32) + 8 * v20) = v17;
            v16 = *v34;
          }

          else
          {
            *(*(a1 + 32) + 8 * v20) = v17;
            v21 = v20 + 1;
          }

          *(a1 + 24) = v21;
          if (!v16)
          {
            goto LABEL_66;
          }

          if (*a3 <= v16 || *v16 != 24)
          {
            goto LABEL_61;
          }
        }
      }

      if (v8 == 26)
      {
        v30 = sub_1958938((a1 + 24), v7, a3);
        goto LABEL_60;
      }
    }

    else if (v11 == 4)
    {
      if (v8 == 34)
      {
        v22 = v7 - 1;
        while (1)
        {
          v23 = (v22 + 1);
          *v34 = v22 + 1;
          v24 = *(a1 + 56);
          if (v24 && (v25 = *(a1 + 48), v25 < *v24))
          {
            *(a1 + 48) = v25 + 1;
            v26 = *&v24[2 * v25 + 2];
          }

          else
          {
            v27 = sub_157B8A8(*(a1 + 40));
            v26 = sub_19593CC(a1 + 40, v27);
            v23 = *v34;
          }

          v22 = sub_221EA2C(a3, v26, v23);
          *v34 = v22;
          if (!v22)
          {
            goto LABEL_66;
          }

          if (*a3 <= v22 || *v22 != 34)
          {
            goto LABEL_61;
          }
        }
      }
    }

    else if (v11 == 5 && v8 == 41)
    {
      v5 |= 4u;
      *(a1 + 80) = *v7;
      *v34 = v7 + 8;
      goto LABEL_61;
    }

    if (!v8 || (v8 & 7) == 4)
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
      v7 = *v34;
    }

    v30 = sub_1952690(v8, v33, v7, a3);
LABEL_60:
    *v34 = v30;
    if (!v30)
    {
      goto LABEL_66;
    }

LABEL_61:
    if (sub_195ADC0(a3, v34, a3[11].i32[1]))
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
  *v34 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v34;
}

char *sub_16DC364(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, a2);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 2, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

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

      v9 = *(*(a1 + 32) + 8 * i);
      *v4 = 24;
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

  v14 = *(a1 + 48);
  if (v14)
  {
    for (j = 0; j != v14; ++j)
    {
      if (*a3 <= v10)
      {
        v10 = sub_225EB68(a3, v10);
      }

      v16 = *(*(a1 + 56) + 8 * j + 8);
      *v10 = 34;
      v17 = *(v16 + 20);
      v10[1] = v17;
      if (v17 > 0x7F)
      {
        v18 = sub_19575D0(v17, v10 + 1);
      }

      else
      {
        v18 = v10 + 2;
      }

      v10 = sub_157A5D0(v16, v18, a3);
    }
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v10)
    {
      v10 = sub_225EB68(a3, v10);
    }

    v19 = *(a1 + 80);
    *v10 = 41;
    *(v10 + 1) = v19;
    v10 += 9;
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v10;
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

  if (*a3 - v10 >= v23)
  {
    v25 = v23;
    memcpy(v10, v24, v23);
    v10 += v25;
    return v10;
  }

  return sub_1957130(a3, v24, v23, v10);
}

uint64_t sub_16DC5C0(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24));
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
      v9 = sub_157A6D0(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 16);
  if ((v10 & 7) != 0)
  {
    if (v10)
    {
      v11 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v10 & 2) != 0)
    {
      v14 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v15 = *(v14 + 23);
      v16 = *(v14 + 8);
      if ((v15 & 0x80u) == 0)
      {
        v16 = v15;
      }

      v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v10 & 4) != 0)
    {
      v4 += 9;
    }
  }

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

  *(a1 + 20) = v4;
  return v4;
}

std::string *sub_16DC714(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = result + 1;
    data_low = SLODWORD(result[1].__r_.__value_.__l.__data_);
    sub_1959094(&result[1], data_low + v4);
    size = v3[1].__r_.__value_.__l.__size_;
    LODWORD(v5->__r_.__value_.__l.__data_) += *(a2 + 24);
    result = memcpy((size + 8 * data_low), *(a2 + 32), 8 * *(a2 + 24));
  }

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 56);
    v10 = sub_19592E8(&v3[1].__r_.__value_.__r.__words[2], *(a2 + 48));
    result = sub_15B48B8((v3 + 40), v10, (v9 + 8), v8, *v3[2].__r_.__value_.__l.__size_ - LODWORD(v3[2].__r_.__value_.__l.__data_));
    v11 = LODWORD(v3[2].__r_.__value_.__l.__data_) + v8;
    LODWORD(v3[2].__r_.__value_.__l.__data_) = v11;
    v12 = v3[2].__r_.__value_.__l.__size_;
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 16);
  if ((v13 & 7) != 0)
  {
    if (v13)
    {
      v15 = *(a2 + 64);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v16 = v3->__r_.__value_.__l.__size_;
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      result = sub_194EA1C(&v3[2].__r_.__value_.__r.__words[2], (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
      if ((v13 & 2) == 0)
      {
LABEL_9:
        if ((v13 & 4) == 0)
        {
LABEL_11:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v13;
          goto LABEL_12;
        }

LABEL_10:
        v3[3].__r_.__value_.__l.__size_ = *(a2 + 80);
        goto LABEL_11;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_9;
    }

    v18 = *(a2 + 72);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v19 = v3->__r_.__value_.__l.__size_;
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    result = sub_194EA1C(&v3[3], (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
    if ((v13 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v14 = *(a2 + 8);
  if (v14)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_16DC8C4(uint64_t a1)
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

  if (a1 != &off_277E3D8)
  {
    if (*(a1 + 48))
    {
      sub_18385C8();
      operator delete();
    }

    if (*(a1 + 56))
    {
      sub_18385C8();
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_15B472C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16DC9A0(uint64_t a1)
{
  sub_16DC8C4(a1);

  operator delete();
}

uint64_t sub_16DC9D8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_157A3FC(v4);
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
      result = sub_1835AE0(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      result = sub_1835AE0(*(v1 + 56));
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

char *sub_16DCA7C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v28 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v28, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v28 + 1;
    v7 = *v28;
    if (*v28 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v28, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v28 + 2;
      }
    }

    v28 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 2u;
        v16 = *(a1 + 56);
        if (!v16)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v16 = sub_18648BC(v20);
          *(a1 + 56) = v16;
LABEL_30:
          v6 = v28;
        }

LABEL_31:
        v15 = sub_2200230(a3, v16, v6);
        goto LABEL_32;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 1u;
        v16 = *(a1 + 48);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_18648BC(v18);
          *(a1 + 48) = v16;
          goto LABEL_30;
        }

        goto LABEL_31;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      v21 = v6 - 1;
      while (1)
      {
        v22 = (v21 + 1);
        v28 = v21 + 1;
        v23 = *(a1 + 40);
        if (v23 && (v24 = *(a1 + 32), v24 < *v23))
        {
          *(a1 + 32) = v24 + 1;
          v25 = *&v23[2 * v24 + 2];
        }

        else
        {
          v26 = sub_157B8A8(*(a1 + 24));
          v25 = sub_19593CC(a1 + 24, v26);
          v22 = v28;
        }

        v21 = sub_221EA2C(a3, v25, v22);
        v28 = v21;
        if (!v21)
        {
          return 0;
        }

        if (*a3 <= v21 || *v21 != 10)
        {
          goto LABEL_42;
        }
      }
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
        return v28;
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
      v6 = v28;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_32:
    v28 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_42:
    ;
  }

  return v28;
}

char *sub_16DCCAC(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_157A5D0(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v12 = *(a1 + 48);
    *__dst = 18;
    v13 = *(v12 + 44);
    __dst[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, __dst + 1);
    }

    else
    {
      v14 = __dst + 2;
    }

    __dst = sub_1838E28(v12, v14, a3);
  }

  if ((v11 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v15 = *(a1 + 56);
    *__dst = 26;
    v16 = *(v15 + 44);
    __dst[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, __dst + 1);
    }

    else
    {
      v17 = __dst + 2;
    }

    __dst = sub_1838E28(v15, v17, a3);
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return __dst;
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

  if ((*a3 - __dst) >= v21)
  {
    v23 = v21;
    memcpy(__dst, v22, v21);
    __dst += v23;
    return __dst;
  }

  return sub_1957130(a3, v22, v21, __dst);
}

uint64_t sub_16DCEB8(uint64_t a1)
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
      v7 = sub_157A6D0(v6);
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
      v9 = sub_1839564(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = sub_1839564(*(a1 + 56));
      v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v2 += v14;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_16DCFCC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15B48B8((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

        v10 = sub_18648BC(v12);
        *(a1 + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_27868A0;
      }

      sub_18367AC(v10, v13);
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

        v14 = sub_18648BC(v16);
        *(a1 + 56) = v14;
      }

      if (*(a2 + 56))
      {
        v17 = *(a2 + 56);
      }

      else
      {
        v17 = &off_27868A0;
      }

      sub_18367AC(v14, v17);
    }
  }

  v18 = *(a2 + 8);
  if (v18)
  {

    sub_1957EF4((a1 + 8), (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_16DD124(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_1836CF0(*(a1 + 48));
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

  result = sub_1836CF0(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_16DD180(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16DD1FC(void *a1)
{
  sub_16DD180(a1);

  operator delete();
}

char *sub_16DD234(uint64_t a1, char *a2, int32x2_t *a3)
{
  v28 = a2;
  if (sub_195ADC0(a3, &v28, a3[11].i32[1]))
  {
    return v28;
  }

  v6 = (a1 + 8);
  while (1)
  {
    v7 = v28 + 1;
    v8 = *v28;
    if (*v28 < 0)
    {
      v9 = *v7;
      v10 = v8 + (v9 << 7);
      v8 = v10 - 128;
      if (v9 < 0)
      {
        v7 = sub_1958824(v28, v10 - 128);
        v8 = v11;
      }

      else
      {
        v7 = v28 + 2;
      }
    }

    v28 = v7;
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_38;
    }

    v20 = v7 + 1;
    v21 = *v7;
    if (v21 < 0)
    {
      v22 = *v20;
      v23 = (v22 << 7) + v21;
      LODWORD(v21) = v23 - 128;
      if (v22 < 0)
      {
        v28 = sub_19587DC(v7, (v23 - 128));
        if (!v28)
        {
          return 0;
        }

        LODWORD(v21) = v24;
        goto LABEL_32;
      }

      v20 = v7 + 2;
    }

    v28 = v20;
LABEL_32:
    if (sub_157BACC(v21))
    {
      *(a1 + 16) |= 1u;
      *(a1 + 40) = v21;
    }

    else
    {
      sub_12E8418();
    }

LABEL_46:
    if (sub_195ADC0(a3, &v28, a3[11].i32[1]))
    {
      return v28;
    }
  }

  if (v8 >> 3 == 1)
  {
    if (v8 == 8)
    {
      v12 = v7 - 1;
      while (1)
      {
        v28 = v12 + 1;
        v13 = v12[1];
        v14 = v12 + 2;
        if (v13 < 0)
        {
          v15 = *v14;
          v16 = (v15 << 7) + v13;
          LODWORD(v13) = v16 - 128;
          if (v15 < 0)
          {
            v28 = sub_19587DC((v12 + 1), (v16 - 128));
            if (!v28)
            {
              return 0;
            }

            LODWORD(v13) = v19;
            goto LABEL_16;
          }

          v14 = v12 + 3;
        }

        v28 = v14;
LABEL_16:
        if (v13 > 0x1A)
        {
          sub_12E8450();
        }

        else
        {
          v17 = *(a1 + 24);
          if (v17 == *(a1 + 28))
          {
            v18 = v17 + 1;
            sub_1958E5C((a1 + 24), v17 + 1);
            *(*(a1 + 32) + 4 * v17) = v13;
          }

          else
          {
            *(*(a1 + 32) + 4 * v17) = v13;
            v18 = v17 + 1;
          }

          *(a1 + 24) = v18;
        }

        v12 = v28;
        if (*a3 <= v28 || *v28 != 8)
        {
          goto LABEL_46;
        }
      }
    }

    if (v8 == 10)
    {
      *&v29 = a1 + 24;
      *(&v29 + 1) = sub_16C14E0;
      v30 = a1 + 8;
      v31 = 1;
      v25 = sub_1216588(a3, v7, &v29);
      goto LABEL_45;
    }
  }

LABEL_38:
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
    if (*v6)
    {
      v27 = (*v6 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v27 = sub_11F1920((a1 + 8));
      v7 = v28;
    }

    v25 = sub_1952690(v8, v27, v7, a3);
LABEL_45:
    v28 = v25;
    if (!v25)
    {
      return 0;
    }

    goto LABEL_46;
  }

  if (!v7)
  {
    return 0;
  }

  a3[10].i32[0] = v8 - 1;
  return v28;
}

char *sub_16DD4F8(uint64_t a1, char *a2, _DWORD *a3)
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

  if (*(a1 + 16))
  {
    if (*a3 <= v8)
    {
      v8 = sub_225EB68(a3, v8);
    }

    v13 = *(a1 + 40);
    *v8 = 16;
    v8[1] = v13;
    if (v13 > 0x7F)
    {
      v8[1] = v13 | 0x80;
      v14 = v13 >> 7;
      v8[2] = v13 >> 7;
      v12 = v8 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v8) = v8[2];
        do
        {
          *(v12 - 1) = v8 | 0x80;
          v8 = (v14 >> 7);
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v12 = v8 + 2;
    }
  }

  else
  {
    v12 = v8;
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v12;
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

  if (*a3 - v12 >= v19)
  {
    v21 = v19;
    memcpy(v12, v20, v19);
    v12 += v21;
    return v12;
  }

  return sub_1957130(a3, v20, v19, v12);
}

uint64_t sub_16DD6D4(uint64_t a1)
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
  if (*(a1 + 16))
  {
    v7 = *(a1 + 40);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v6 += v8;
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

    v6 += v12;
  }

  *(a1 + 20) = v6;
  return v6;
}