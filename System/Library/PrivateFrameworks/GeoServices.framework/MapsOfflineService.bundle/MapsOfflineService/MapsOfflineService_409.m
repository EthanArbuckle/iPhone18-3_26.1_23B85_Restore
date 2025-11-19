char *sub_16ACBBC(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

LABEL_45:
  v4 = sub_128AEEC(a3, 3, *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_47;
  }

LABEL_46:
  v4 = sub_128AEEC(a3, 4, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_47:
  v4 = sub_128AEEC(a3, 5, *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

LABEL_48:
  v4 = sub_128AEEC(a3, 6, *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_49:
  v4 = sub_128AEEC(a3, 7, *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_51;
  }

LABEL_50:
  v4 = sub_128AEEC(a3, 8, *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_51:
  v4 = sub_128AEEC(a3, 9, *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_53;
  }

LABEL_52:
  v4 = sub_128AEEC(a3, 10, *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_54;
  }

LABEL_53:
  v4 = sub_128AEEC(a3, 11, *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_54:
  v4 = sub_128AEEC(a3, 12, *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x1000) != 0)
  {
LABEL_14:
    v4 = sub_128AEEC(a3, 13, *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_15:
  v7 = *(a1 + 32);
  if (v7 >= 1)
  {
    v8 = 8;
    do
    {
      v9 = *(*(a1 + 40) + v8);
      v10 = *(v9 + 23);
      if (v10 < 0 && (v10 = v9[1], v10 > 127) || *a3 - v4 + 14 < v10)
      {
        v4 = sub_1957480(a3, 14, v9, v4);
      }

      else
      {
        *v4 = 114;
        v4[1] = v10;
        if (*(v9 + 23) < 0)
        {
          v9 = *v9;
        }

        v11 = v4 + 2;
        memcpy(v11, v9, v10);
        v4 = &v11[v10];
      }

      v8 += 8;
      --v7;
    }

    while (v7);
  }

  if ((v6 & 0x2000) != 0)
  {
    v4 = sub_128AEEC(a3, 15, *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  if ((v6 & 0x4000) != 0)
  {
    v4 = sub_128AEEC(a3, 16, *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  v12 = *(a1 + 56);
  if (v12 >= 1)
  {
    v13 = 8;
    do
    {
      v14 = *(*(a1 + 64) + v13);
      v15 = *(v14 + 23);
      if (v15 < 0 && (v15 = v14[1], v15 > 127) || *a3 - v4 + 13 < v15)
      {
        v4 = sub_1957480(a3, 17, v14, v4);
      }

      else
      {
        *v4 = 394;
        v4[2] = v15;
        if (*(v14 + 23) < 0)
        {
          v14 = *v14;
        }

        v16 = v4 + 3;
        memcpy(v16, v14, v15);
        v4 = &v16[v15];
      }

      v13 += 8;
      --v12;
    }

    while (v12);
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v20)
  {
    v22 = v20;
    memcpy(v4, v21, v20);
    v4 += v22;
    return v4;
  }

  return sub_1957130(a3, v21, v20, v4);
}

uint64_t sub_16ACFC0(uint64_t a1)
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

  v7 = *(a1 + 56);
  v8 = v3 + 2 * v7;
  if (v7 >= 1)
  {
    v9 = (*(a1 + 64) + 8);
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

  v13 = *(a1 + 16);
  if (!v13)
  {
    goto LABEL_25;
  }

  if (v13)
  {
    v22 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v23 = *(v22 + 23);
    v24 = *(v22 + 8);
    if ((v23 & 0x80u) == 0)
    {
      v24 = v23;
    }

    v8 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v13 & 2) == 0)
    {
LABEL_16:
      if ((v13 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_44;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_16;
  }

  v25 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v26 = *(v25 + 23);
  v27 = *(v25 + 8);
  if ((v26 & 0x80u) == 0)
  {
    v27 = v26;
  }

  v8 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 4) == 0)
  {
LABEL_17:
    if ((v13 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_44:
  v28 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  v29 = *(v28 + 23);
  v30 = *(v28 + 8);
  if ((v29 & 0x80u) == 0)
  {
    v30 = v29;
  }

  v8 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 8) == 0)
  {
LABEL_18:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_47:
  v31 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  v32 = *(v31 + 23);
  v33 = *(v31 + 8);
  if ((v32 & 0x80u) == 0)
  {
    v33 = v32;
  }

  v8 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x10) == 0)
  {
LABEL_19:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_53:
    v37 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    v38 = *(v37 + 23);
    v39 = *(v37 + 8);
    if ((v38 & 0x80u) == 0)
    {
      v39 = v38;
    }

    v8 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v13 & 0x40) == 0)
    {
LABEL_21:
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    goto LABEL_56;
  }

LABEL_50:
  v34 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(v34 + 23);
  v36 = *(v34 + 8);
  if ((v35 & 0x80u) == 0)
  {
    v36 = v35;
  }

  v8 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_20:
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_56:
  v40 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
  v41 = *(v40 + 23);
  v42 = *(v40 + 8);
  if ((v41 & 0x80u) == 0)
  {
    v42 = v41;
  }

  v8 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x80) != 0)
  {
LABEL_22:
    v14 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v14 + 23);
    v16 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v15;
    }

    v8 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_25:
  if ((v13 & 0x7F00) == 0)
  {
    goto LABEL_36;
  }

  if ((v13 & 0x100) != 0)
  {
    v43 = *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL;
    v44 = *(v43 + 23);
    v45 = *(v43 + 8);
    if ((v44 & 0x80u) == 0)
    {
      v45 = v44;
    }

    v8 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v13 & 0x200) == 0)
    {
LABEL_28:
      if ((v13 & 0x400) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_66;
    }
  }

  else if ((v13 & 0x200) == 0)
  {
    goto LABEL_28;
  }

  v46 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
  v47 = *(v46 + 23);
  v48 = *(v46 + 8);
  if ((v47 & 0x80u) == 0)
  {
    v48 = v47;
  }

  v8 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x400) == 0)
  {
LABEL_29:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_69;
  }

LABEL_66:
  v49 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
  v50 = *(v49 + 23);
  v51 = *(v49 + 8);
  if ((v50 & 0x80u) == 0)
  {
    v51 = v50;
  }

  v8 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x800) == 0)
  {
LABEL_30:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_72;
  }

LABEL_69:
  v52 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
  v53 = *(v52 + 23);
  v54 = *(v52 + 8);
  if ((v53 & 0x80u) == 0)
  {
    v54 = v53;
  }

  v8 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x1000) == 0)
  {
LABEL_31:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_75;
  }

LABEL_72:
  v55 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
  v56 = *(v55 + 23);
  v57 = *(v55 + 8);
  if ((v56 & 0x80u) == 0)
  {
    v57 = v56;
  }

  v8 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x2000) == 0)
  {
LABEL_32:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

LABEL_75:
  v58 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
  v59 = *(v58 + 23);
  v60 = *(v58 + 8);
  if ((v59 & 0x80u) == 0)
  {
    v60 = v59;
  }

  v8 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v13 & 0x4000) != 0)
  {
LABEL_33:
    v17 = *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL;
    v18 = *(v17 + 23);
    v19 = *(v17 + 8);
    if ((v18 & 0x80u) == 0)
    {
      v19 = v18;
    }

    v8 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_36:
  v20 = *(a1 + 8);
  if (v20)
  {
    v61 = v20 & 0xFFFFFFFFFFFFFFFCLL;
    v62 = *((v20 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v62 < 0)
    {
      v62 = *(v61 + 16);
    }

    v8 += v62;
  }

  *(a1 + 20) = v8;
  return v8;
}

std::string *sub_16AD4F4(std::string *result, uint64_t a2)
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

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(&v3[2], *(a2 + 56));
    result = sub_1201B48(&v3[2], v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
    v12 = LODWORD(v3[2].__r_.__value_.__r.__words[1]) + v9;
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = v12;
    v13 = v3[2].__r_.__value_.__r.__words[2];
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if (!v14)
  {
    goto LABEL_41;
  }

  if (v14)
  {
    v15 = *(a2 + 72);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    size = v3->__r_.__value_.__l.__size_;
    v17 = (size & 0xFFFFFFFFFFFFFFFCLL);
    if (size)
    {
      v17 = *v17;
    }

    result = sub_194EA1C(&v3[3], (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v14 & 2) == 0)
    {
LABEL_10:
      if ((v14 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_10;
  }

  v18 = *(a2 + 80);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
  v19 = v3->__r_.__value_.__l.__size_;
  v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
  if (v19)
  {
    v20 = *v20;
  }

  result = sub_194EA1C(&v3[3].__r_.__value_.__l.__size_, (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
  if ((v14 & 4) == 0)
  {
LABEL_11:
    if ((v14 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_23:
  v21 = *(a2 + 88);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
  v22 = v3->__r_.__value_.__l.__size_;
  v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
  if (v22)
  {
    v23 = *v23;
  }

  result = sub_194EA1C(&v3[3].__r_.__value_.__r.__words[2], (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
  if ((v14 & 8) == 0)
  {
LABEL_12:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_26:
  v24 = *(a2 + 96);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
  v25 = v3->__r_.__value_.__l.__size_;
  v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
  if (v25)
  {
    v26 = *v26;
  }

  result = sub_194EA1C(&v3[4], (v24 & 0xFFFFFFFFFFFFFFFELL), v26);
  if ((v14 & 0x10) == 0)
  {
LABEL_13:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_32:
    v30 = *(a2 + 112);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x20u;
    v31 = v3->__r_.__value_.__l.__size_;
    v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
    if (v31)
    {
      v32 = *v32;
    }

    result = sub_194EA1C(&v3[4].__r_.__value_.__r.__words[2], (v30 & 0xFFFFFFFFFFFFFFFELL), v32);
    if ((v14 & 0x40) == 0)
    {
LABEL_15:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    goto LABEL_35;
  }

LABEL_29:
  v27 = *(a2 + 104);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
  v28 = v3->__r_.__value_.__l.__size_;
  v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
  if (v28)
  {
    v29 = *v29;
  }

  result = sub_194EA1C(&v3[4].__r_.__value_.__l.__size_, (v27 & 0xFFFFFFFFFFFFFFFELL), v29);
  if ((v14 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_14:
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_35:
  v33 = *(a2 + 120);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x40u;
  v34 = v3->__r_.__value_.__l.__size_;
  v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
  if (v34)
  {
    v35 = *v35;
  }

  result = sub_194EA1C(&v3[5], (v33 & 0xFFFFFFFFFFFFFFFELL), v35);
  if ((v14 & 0x80) != 0)
  {
LABEL_38:
    v36 = *(a2 + 128);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x80u;
    v37 = v3->__r_.__value_.__l.__size_;
    v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
    if (v37)
    {
      v38 = *v38;
    }

    result = sub_194EA1C(&v3[5].__r_.__value_.__l.__size_, (v36 & 0xFFFFFFFFFFFFFFFELL), v38);
  }

LABEL_41:
  if ((v14 & 0x7F00) == 0)
  {
    goto LABEL_71;
  }

  if ((v14 & 0x100) != 0)
  {
    v39 = *(a2 + 136);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x100u;
    v40 = v3->__r_.__value_.__l.__size_;
    v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
    if (v40)
    {
      v41 = *v41;
    }

    result = sub_194EA1C(&v3[5].__r_.__value_.__r.__words[2], (v39 & 0xFFFFFFFFFFFFFFFELL), v41);
    if ((v14 & 0x200) == 0)
    {
LABEL_44:
      if ((v14 & 0x400) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_56;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_44;
  }

  v42 = *(a2 + 144);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x200u;
  v43 = v3->__r_.__value_.__l.__size_;
  v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
  if (v43)
  {
    v44 = *v44;
  }

  result = sub_194EA1C(&v3[6], (v42 & 0xFFFFFFFFFFFFFFFELL), v44);
  if ((v14 & 0x400) == 0)
  {
LABEL_45:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_59;
  }

LABEL_56:
  v45 = *(a2 + 152);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x400u;
  v46 = v3->__r_.__value_.__l.__size_;
  v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
  if (v46)
  {
    v47 = *v47;
  }

  result = sub_194EA1C(&v3[6].__r_.__value_.__l.__size_, (v45 & 0xFFFFFFFFFFFFFFFELL), v47);
  if ((v14 & 0x800) == 0)
  {
LABEL_46:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_62;
  }

LABEL_59:
  v48 = *(a2 + 160);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x800u;
  v49 = v3->__r_.__value_.__l.__size_;
  v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
  if (v49)
  {
    v50 = *v50;
  }

  result = sub_194EA1C(&v3[6].__r_.__value_.__r.__words[2], (v48 & 0xFFFFFFFFFFFFFFFELL), v50);
  if ((v14 & 0x1000) == 0)
  {
LABEL_47:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_65;
  }

LABEL_62:
  v51 = *(a2 + 168);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x1000u;
  v52 = v3->__r_.__value_.__l.__size_;
  v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
  if (v52)
  {
    v53 = *v53;
  }

  result = sub_194EA1C(&v3[7], (v51 & 0xFFFFFFFFFFFFFFFELL), v53);
  if ((v14 & 0x2000) == 0)
  {
LABEL_48:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_68;
  }

LABEL_65:
  v54 = *(a2 + 176);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x2000u;
  v55 = v3->__r_.__value_.__l.__size_;
  v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
  if (v55)
  {
    v56 = *v56;
  }

  result = sub_194EA1C(&v3[7].__r_.__value_.__l.__size_, (v54 & 0xFFFFFFFFFFFFFFFELL), v56);
  if ((v14 & 0x4000) != 0)
  {
LABEL_68:
    v57 = *(a2 + 184);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x4000u;
    v58 = v3->__r_.__value_.__l.__size_;
    v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
    if (v58)
    {
      v59 = *v59;
    }

    result = sub_194EA1C(&v3[7].__r_.__value_.__r.__words[2], (v57 & 0xFFFFFFFFFFFFFFFELL), v59);
  }

LABEL_71:
  v60 = *(a2 + 8);
  if (v60)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v60 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_16AD980(uint64_t a1)
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
  if (a1 != &off_277D590)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_16ABFCC(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16ADA40(uint64_t a1)
{
  sub_16AD980(a1);

  operator delete();
}

uint64_t sub_16ADA78(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  if (*(a1 + 16))
  {
    result = sub_16AC204(*(a1 + 48));
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

uint64_t sub_16ADADC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 != 15)
    {
      break;
    }

    if (v7 != 122)
    {
      goto LABEL_27;
    }

    *(a1 + 16) |= 1u;
    v18 = *(a1 + 48);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_16BAF14(v20);
      *(a1 + 48) = v18;
      v6 = *v25;
    }

    v21 = sub_2232E18(a3, v18, v6);
LABEL_34:
    *v25 = v21;
    if (!v21)
    {
      goto LABEL_40;
    }

LABEL_35:
    if (sub_195ADC0(a3, v25, a3[11].i32[1]))
    {
      return *v25;
    }
  }

  if (v7 >> 3 == 11 && v7 == 90)
  {
    v10 = (v6 - 1);
    while (1)
    {
      v11 = (v10 + 1);
      *v25 = v10 + 1;
      v12 = *(a1 + 40);
      if (v12 && (v13 = *(a1 + 32), v13 < *v12))
      {
        *(a1 + 32) = v13 + 1;
        v14 = *&v12[2 * v13 + 2];
      }

      else
      {
        v15 = *(a1 + 24);
        if (!v15)
        {
          operator new();
        }

        *v17 = v16;
        v17[1] = sub_195A650;
        *v16 = 0;
        v16[1] = 0;
        v16[2] = 0;
        v14 = sub_19593CC(a1 + 24, v16);
        v11 = *v25;
      }

      v10 = sub_1958890(v14, v11, a3);
      *v25 = v10;
      if (!v10)
      {
        goto LABEL_40;
      }

      if (*a3 <= v10 || *v10 != 90)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_27:
  if (v7)
  {
    v22 = (v7 & 7) == 4;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    v23 = *(a1 + 8);
    if (v23)
    {
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v24 = sub_11F1920((a1 + 8));
      v6 = *v25;
    }

    v21 = sub_1952690(v7, v24, v6, a3);
    goto LABEL_34;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v25;
  }

LABEL_40:
  *v25 = 0;
  return *v25;
}

char *sub_16ADD30(uint64_t a1, char *__dst, _DWORD *a3)
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
        __dst = sub_1957480(a3, 11, v8, __dst);
      }

      else
      {
        *__dst = 90;
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
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v11 = *(a1 + 48);
    *__dst = 122;
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

    __dst = sub_16ACBBC(v11, v13, a3);
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

uint64_t sub_16ADEEC(uint64_t a1)
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

  if (*(a1 + 16))
  {
    v8 = sub_16ACFC0(*(a1 + 48));
    v4 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v4 += v12;
  }

  *(a1 + 20) = v4;
  return v4;
}

std::string *sub_16ADFCC(std::string *result, uint64_t a2)
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
    data = v3[2].__r_.__value_.__l.__data_;
    if (!data)
    {
      size = v3->__r_.__value_.__l.__size_;
      v12 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v12 = *v12;
      }

      data = sub_16BAF14(v12);
      v3[2].__r_.__value_.__r.__words[0] = data;
      v9 = *(a2 + 48);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_277D4D0;
    }

    result = sub_16AD4F4(data, v13);
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_16AE0F4(void *a1)
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

void sub_16AE168(void *a1)
{
  sub_16AE0F4(a1);

  operator delete();
}

uint64_t sub_16AE1A0(uint64_t a1)
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

char *sub_16AE1C4(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_16AE3A8(uint64_t a1, char *__dst, _DWORD *a3)
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

unint64_t sub_16AE558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      return v2;
    }

    goto LABEL_5;
  }

  v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_5:
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  return v2;
}

unint64_t sub_16AE5B8(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    result = sub_16AE558(a1);
  }

  else
  {
    result = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 2;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v5 < 0)
    {
      v5 = *(v4 + 16);
    }

    result += v5;
  }

  *(a1 + 20) = result;
  return result;
}

void *sub_16AE678(void *a1)
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

  sub_16AE714(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_16BD89C(a1 + 6);
  sub_16BF428(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_16AE714(uint64_t a1)
{
  v3 = *(a1 + 72);
  v2 = (a1 + 72);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  result = (a1 + 88);
  if (*(a1 + 88) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_277D5F0)
  {
    v5 = *(a1 + 96);
    if (v5)
    {
      sub_16AB5EC(v5);
      operator delete();
    }

    v6 = *(a1 + 104);
    if (v6)
    {
      sub_16AD980(v6);
      operator delete();
    }

    v7 = *(a1 + 112);
    if (v7)
    {
      sub_16AD980(v7);
      operator delete();
    }

    result = *(a1 + 120);
    if (result)
    {
      sub_16AB258(result);

      operator delete();
    }
  }

  return result;
}

void sub_16AE818(void *a1)
{
  sub_16AE678(a1);

  operator delete();
}

uint64_t sub_16AE850(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16B478C(v4);
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
      result = sub_1693C2C(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x7F) == 0)
  {
    goto LABEL_18;
  }

  if (v8)
  {
    v11 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
      if ((v8 & 2) != 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
      if ((v8 & 2) != 0)
      {
        goto LABEL_28;
      }
    }

LABEL_12:
    if ((v8 & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_32:
    v13 = *(v1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v13 + 23) < 0)
    {
      **v13 = 0;
      *(v13 + 8) = 0;
      if ((v8 & 8) != 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      *v13 = 0;
      *(v13 + 23) = 0;
      if ((v8 & 8) != 0)
      {
        goto LABEL_36;
      }
    }

LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_37:
    result = sub_16ADA78(*(v1 + 104));
    if ((v8 & 0x20) == 0)
    {
LABEL_16:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    goto LABEL_38;
  }

  if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_28:
  v12 = *(v1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v12 + 23) < 0)
  {
    **v12 = 0;
    *(v12 + 8) = 0;
    if ((v8 & 4) != 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    *v12 = 0;
    *(v12 + 23) = 0;
    if ((v8 & 4) != 0)
    {
      goto LABEL_32;
    }
  }

LABEL_13:
  if ((v8 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_36:
  result = sub_1698850(*(v1 + 96));
  if ((v8 & 0x10) != 0)
  {
    goto LABEL_37;
  }

LABEL_15:
  if ((v8 & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_38:
  result = sub_16ADA78(*(v1 + 112));
  if ((v8 & 0x40) != 0)
  {
LABEL_17:
    result = sub_1693C2C(*(v1 + 120));
  }

LABEL_18:
  *(v1 + 128) = 0;
  if ((v8 & 0x300) != 0)
  {
    *(v1 + 136) = 0x100000000;
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

uint64_t sub_16AE9F8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v62 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v62, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v62 + 1);
    v8 = **v62;
    if (**v62 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v62, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v62 + 2);
      }
    }

    *v62 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 8)
    {
      if (v8 >> 3 > 0xB)
      {
        if (v11 == 12)
        {
          if (v8 == 98)
          {
            v33 = (v7 - 1);
            while (1)
            {
              v34 = (v33 + 1);
              *v62 = v33 + 1;
              v35 = *(a1 + 64);
              if (v35 && (v36 = *(a1 + 56), v36 < *v35))
              {
                *(a1 + 56) = v36 + 1;
                v37 = *&v35[2 * v36 + 2];
              }

              else
              {
                v38 = sub_16BAD9C(*(a1 + 48));
                v37 = sub_19593CC(a1 + 48, v38);
                v34 = *v62;
              }

              v33 = sub_2231CA8(a3, v37, v34);
              *v62 = v33;
              if (!v33)
              {
                goto LABEL_125;
              }

              if (*a3 <= v33 || *v33 != 98)
              {
                goto LABEL_109;
              }
            }
          }

          goto LABEL_101;
        }

        if (v11 == 15)
        {
          if (v8 != 122)
          {
            goto LABEL_101;
          }

          *(a1 + 16) |= 2u;
          v52 = *(a1 + 8);
          v13 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
          if (v52)
          {
            v13 = *v13;
          }

          v14 = (a1 + 80);
        }

        else
        {
          if (v11 != 16 || v8 != 130)
          {
            goto LABEL_101;
          }

          *(a1 + 16) |= 4u;
          v21 = *(a1 + 8);
          v13 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v13 = *v13;
          }

          v14 = (a1 + 88);
        }

LABEL_100:
        v53 = sub_194DB04(v14, v13);
        v28 = sub_1958890(v53, *v62, a3);
        goto LABEL_108;
      }

      if (v11 == 9)
      {
        if (v8 != 74)
        {
          goto LABEL_101;
        }

        *(a1 + 16) |= 0x40u;
        v25 = *(a1 + 120);
        if (!v25)
        {
          v26 = *(a1 + 8);
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v27 = *v27;
          }

          v25 = sub_16BAD9C(v27);
          *(a1 + 120) = v25;
          v7 = *v62;
        }

        v28 = sub_2231CA8(a3, v25, v7);
        goto LABEL_108;
      }

      if (v11 == 10)
      {
        if (v8 == 82)
        {
          v44 = v7 - 1;
          while (1)
          {
            v45 = v44 + 1;
            *v62 = v44 + 1;
            v46 = *(a1 + 40);
            if (v46 && (v47 = *(a1 + 32), v47 < *v46))
            {
              *(a1 + 32) = v47 + 1;
              v48 = *&v46[2 * v47 + 2];
            }

            else
            {
              v49 = sub_16BB728(*(a1 + 24));
              v48 = sub_19593CC(a1 + 24, v49);
              v45 = *v62;
            }

            v44 = sub_2232F38(a3, v48, v45);
            *v62 = v44;
            if (!v44)
            {
              goto LABEL_125;
            }

            if (*a3 <= v44 || *v44 != 82)
            {
              goto LABEL_109;
            }
          }
        }

        goto LABEL_101;
      }

      if (v11 != 11 || v8 != 88)
      {
        goto LABEL_101;
      }

      v16 = (v7 + 1);
      v15 = *v7;
      if (v15 < 0)
      {
        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if (v17 < 0)
        {
          *v62 = sub_19587DC(v7, v15);
          if (!*v62)
          {
            goto LABEL_125;
          }

          goto LABEL_25;
        }

        v16 = (v7 + 2);
      }

      *v62 = v16;
LABEL_25:
      if (v15 > 4)
      {
        sub_1313680();
      }

      else
      {
        *(a1 + 16) |= 0x100u;
        *(a1 + 136) = v15;
      }

      goto LABEL_109;
    }

    if (v8 >> 3 > 4)
    {
      if (v11 != 5)
      {
        if (v11 == 6)
        {
          if (v8 != 50)
          {
            goto LABEL_101;
          }

          *(a1 + 16) |= 0x10u;
          v18 = *(a1 + 104);
          if (v18)
          {
            goto LABEL_95;
          }

          v50 = *(a1 + 8);
          v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
          if (v50)
          {
            v51 = *v51;
          }

          v18 = sub_16BAF74(v51);
          *(a1 + 104) = v18;
        }

        else
        {
          if (v11 != 8 || v8 != 66)
          {
            goto LABEL_101;
          }

          *(a1 + 16) |= 0x20u;
          v18 = *(a1 + 112);
          if (v18)
          {
            goto LABEL_95;
          }

          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v18 = sub_16BAF74(v20);
          *(a1 + 112) = v18;
        }

        v7 = *v62;
LABEL_95:
        v28 = sub_2232EA8(a3, v18, v7);
        goto LABEL_108;
      }

      if (v8 != 42)
      {
        goto LABEL_101;
      }

      *(a1 + 16) |= 8u;
      v29 = *(a1 + 96);
      if (!v29)
      {
        v30 = *(a1 + 8);
        v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
        if (v30)
        {
          v31 = *v31;
        }

        sub_16BAE18(v31);
        v29 = v32;
        *(a1 + 96) = v32;
        v7 = *v62;
      }

      v28 = sub_2232128(a3, v29, v7);
LABEL_108:
      *v62 = v28;
      if (!v28)
      {
        goto LABEL_125;
      }

      goto LABEL_109;
    }

    if (v11 != 1)
    {
      break;
    }

    if (v8 != 8)
    {
      goto LABEL_101;
    }

    v5 |= 0x80u;
    v23 = (v7 + 1);
    v22 = *v7;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_46;
    }

    v24 = *v23;
    v22 = (v24 << 7) + v22 - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = (v7 + 2);
LABEL_46:
      *v62 = v23;
      *(a1 + 128) = v22;
      goto LABEL_109;
    }

    v57 = sub_19587DC(v7, v22);
    *v62 = v57;
    *(a1 + 128) = v58;
    if (!v57)
    {
      goto LABEL_125;
    }

LABEL_109:
    if (sub_195ADC0(a3, v62, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_101;
    }

    v39 = (v7 + 1);
    v40 = *v7;
    if ((v40 & 0x8000000000000000) != 0)
    {
      v41 = *v39;
      v42 = (v41 << 7) + v40;
      v40 = (v42 - 128);
      if (v41 < 0)
      {
        *v62 = sub_19587DC(v7, (v42 - 128));
        if (!*v62)
        {
          goto LABEL_125;
        }

        v40 = v59;
        goto LABEL_74;
      }

      v39 = (v7 + 2);
    }

    *v62 = v39;
LABEL_74:
    if (v40 > 0x3B || ((1 << v40) & 0xA0FF80800010016) == 0)
    {
      v60 = *(a1 + 8);
      if (v60)
      {
        v61 = ((v60 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      else
      {
        v61 = sub_11F1920((a1 + 8));
      }

      sub_19586BC(3, v40, v61);
    }

    else
    {
      *(a1 + 16) |= 0x200u;
      *(a1 + 140) = v40;
    }

    goto LABEL_109;
  }

  if (v11 == 4 && v8 == 34)
  {
    *(a1 + 16) |= 1u;
    v12 = *(a1 + 8);
    v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    if (v12)
    {
      v13 = *v13;
    }

    v14 = (a1 + 72);
    goto LABEL_100;
  }

LABEL_101:
  if (v8)
  {
    v54 = (v8 & 7) == 4;
  }

  else
  {
    v54 = 1;
  }

  if (!v54)
  {
    v55 = *(a1 + 8);
    if (v55)
    {
      v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v56 = sub_11F1920((a1 + 8));
      v7 = *v62;
    }

    v28 = sub_1952690(v8, v56, v7, a3);
    goto LABEL_108;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_125:
  *v62 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v62;
}

char *sub_16AF024(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 128);
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

    v12 = *(a1 + 140);
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
    v11 = sub_128AEEC(a3, 4, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v11);
    if ((v5 & 8) == 0)
    {
LABEL_21:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_21;
  }

  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v15 = *(a1 + 96);
  *v11 = 42;
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

  v11 = sub_16AB854(v15, v17, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_22:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

LABEL_32:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v18 = *(a1 + 104);
  *v11 = 50;
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

  v11 = sub_16ADD30(v18, v20, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_23:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_44;
  }

LABEL_38:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v21 = *(a1 + 112);
  *v11 = 66;
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

  v11 = sub_16ADD30(v21, v23, a3);
  if ((v5 & 0x40) != 0)
  {
LABEL_44:
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v24 = *(a1 + 120);
    *v11 = 74;
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

    v11 = sub_16AB468(v24, v26, a3);
  }

LABEL_50:
  v27 = *(a1 + 32);
  if (v27)
  {
    for (i = 0; i != v27; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v29 = *(*(a1 + 40) + 8 * i + 8);
      *v11 = 82;
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

      v11 = sub_16B51F8(v29, v31, a3);
    }
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v33 = *(a1 + 136);
    *v11 = 88;
    v11[1] = v33;
    if (v33 > 0x7F)
    {
      v11[1] = v33 | 0x80;
      v34 = v33 >> 7;
      v11[2] = v33 >> 7;
      v32 = v11 + 3;
      if (v33 >= 0x4000)
      {
        LOBYTE(v35) = v11[2];
        do
        {
          *(v32 - 1) = v35 | 0x80;
          v35 = v34 >> 7;
          *v32++ = v34 >> 7;
          v36 = v34 >> 14;
          v34 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v32 = v11 + 2;
    }
  }

  else
  {
    v32 = v11;
  }

  v37 = *(a1 + 56);
  if (v37)
  {
    for (j = 0; j != v37; ++j)
    {
      if (*a3 <= v32)
      {
        v32 = sub_225EB68(a3, v32);
      }

      v39 = *(*(a1 + 64) + 8 * j + 8);
      *v32 = 98;
      v40 = *(v39 + 20);
      v32[1] = v40;
      if (v40 > 0x7F)
      {
        v41 = sub_19575D0(v40, v32 + 1);
      }

      else
      {
        v41 = v32 + 2;
      }

      v32 = sub_16AB468(v39, v41, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    v32 = sub_128AEEC(a3, 15, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v32);
  }

  if ((v5 & 4) != 0)
  {
    v32 = sub_128AEEC(a3, 16, *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL, v32);
  }

  v42 = *(a1 + 8);
  if ((v42 & 1) == 0)
  {
    return v32;
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

  if (*a3 - v32 >= v45)
  {
    v47 = v45;
    memcpy(v32, v46, v45);
    v32 += v47;
    return v32;
  }

  return sub_1957130(a3, v46, v45, v32);
}

uint64_t sub_16AF57C(uint64_t a1)
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
      v7 = sub_16B5864(v6);
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
      v14 = sub_16AB580(v13);
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

  if (v15)
  {
    v24 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v25 = *(v24 + 23);
    v26 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v26 = v25;
    }

    v9 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 2) == 0)
    {
LABEL_18:
      if ((v15 & 4) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_44;
    }
  }

  else if ((v15 & 2) == 0)
  {
    goto LABEL_18;
  }

  v27 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v28 = *(v27 + 23);
  v29 = *(v27 + 8);
  if ((v28 & 0x80u) == 0)
  {
    v29 = v28;
  }

  v9 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 4) == 0)
  {
LABEL_19:
    if ((v15 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_44:
  v30 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  v31 = *(v30 + 23);
  v32 = *(v30 + 8);
  if ((v31 & 0x80u) == 0)
  {
    v32 = v31;
  }

  v9 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 8) == 0)
  {
LABEL_20:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  v33 = sub_16AB9EC(*(a1 + 96));
  v9 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 0x10) == 0)
  {
LABEL_21:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_22;
    }

LABEL_49:
    v35 = sub_16ADEEC(*(a1 + 112));
    v9 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 0x40) == 0)
    {
LABEL_23:
      if ((v15 & 0x80) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_48:
  v34 = sub_16ADEEC(*(a1 + 104));
  v9 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 0x20) != 0)
  {
    goto LABEL_49;
  }

LABEL_22:
  if ((v15 & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_50:
  v36 = sub_16AB580(*(a1 + 120));
  v9 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 0x80) != 0)
  {
LABEL_24:
    v9 += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_25:
  if ((v15 & 0x300) != 0)
  {
    if ((v15 & 0x100) != 0)
    {
      v16 = *(a1 + 136);
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

    if ((v15 & 0x200) != 0)
    {
      v19 = *(a1 + 140);
      v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v19 >= 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = 11;
      }

      v9 += v21;
    }
  }

  v22 = *(a1 + 8);
  if (v22)
  {
    v37 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v38 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v38 < 0)
    {
      v38 = *(v37 + 16);
    }

    v9 += v38;
  }

  *(a1 + 20) = v9;
  return v9;
}

std::string *sub_16AF8C0(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_16BFB60(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
    result = sub_16BDF68(v3 + 2, v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
    v12 = LODWORD(v3[2].__r_.__value_.__r.__words[1]) + v9;
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = v12;
    v13 = v3[2].__r_.__value_.__r.__words[2];
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
      v15 = *(a2 + 72);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      size = v3->__r_.__value_.__l.__size_;
      v17 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v17 = *v17;
      }

      result = sub_194EA1C(&v3[3], (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    v18 = *(a2 + 80);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v19 = v3->__r_.__value_.__l.__size_;
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    result = sub_194EA1C(&v3[3].__r_.__value_.__l.__size_, (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

LABEL_19:
    v21 = *(a2 + 88);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v22 = v3->__r_.__value_.__l.__size_;
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    result = sub_194EA1C(&v3[3].__r_.__value_.__r.__words[2], (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
    if ((v14 & 8) == 0)
    {
LABEL_30:
      if ((v14 & 0x10) != 0)
      {
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
        v29 = v3[4].__r_.__value_.__l.__size_;
        if (!v29)
        {
          v30 = v3->__r_.__value_.__l.__size_;
          v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
          if (v30)
          {
            v31 = *v31;
          }

          v29 = sub_16BAF74(v31);
          v3[4].__r_.__value_.__l.__size_ = v29;
        }

        if (*(a2 + 104))
        {
          v32 = *(a2 + 104);
        }

        else
        {
          v32 = &off_277D590;
        }

        result = sub_16ADFCC(v29, v32);
        if ((v14 & 0x20) == 0)
        {
LABEL_32:
          if ((v14 & 0x40) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_62;
        }
      }

      else if ((v14 & 0x20) == 0)
      {
        goto LABEL_32;
      }

      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x20u;
      v33 = v3[4].__r_.__value_.__r.__words[2];
      if (!v33)
      {
        v34 = v3->__r_.__value_.__l.__size_;
        v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
        if (v34)
        {
          v35 = *v35;
        }

        v33 = sub_16BAF74(v35);
        v3[4].__r_.__value_.__r.__words[2] = v33;
      }

      if (*(a2 + 112))
      {
        v36 = *(a2 + 112);
      }

      else
      {
        v36 = &off_277D590;
      }

      result = sub_16ADFCC(v33, v36);
      if ((v14 & 0x40) == 0)
      {
LABEL_33:
        if ((v14 & 0x80) == 0)
        {
LABEL_35:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v14;
          goto LABEL_36;
        }

LABEL_34:
        v3[5].__r_.__value_.__l.__size_ = *(a2 + 128);
        goto LABEL_35;
      }

LABEL_62:
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x40u;
      data = v3[5].__r_.__value_.__l.__data_;
      if (!data)
      {
        v38 = v3->__r_.__value_.__l.__size_;
        v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        if (v38)
        {
          v39 = *v39;
        }

        data = sub_16BAD9C(v39);
        v3[5].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 120))
      {
        v40 = *(a2 + 120);
      }

      else
      {
        v40 = &off_277D440;
      }

      result = sub_1336380(data, v40);
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_22:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    v24 = v3[4].__r_.__value_.__l.__data_;
    if (!v24)
    {
      v25 = v3->__r_.__value_.__l.__size_;
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      sub_16BAE18(v26);
      v3[4].__r_.__value_.__r.__words[0] = v24;
    }

    if (*(a2 + 96))
    {
      v27 = *(a2 + 96);
    }

    else
    {
      v27 = &off_277D468;
    }

    result = sub_15FB28C(v24, v27);
    goto LABEL_30;
  }

LABEL_36:
  if ((v14 & 0x300) != 0)
  {
    if ((v14 & 0x100) != 0)
    {
      LODWORD(v3[5].__r_.__value_.__r.__words[2]) = *(a2 + 136);
    }

    if ((v14 & 0x200) != 0)
    {
      HIDWORD(v3[5].__r_.__value_.__r.__words[2]) = *(a2 + 140);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v14;
  }

  v28 = *(a2 + 8);
  if (v28)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_16AFC0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  while (v2 >= 1)
  {
    v4 = v2 - 1;
    v5 = sub_16B60A4(*(v3 + 8 * v2));
    v2 = v4;
    if (!v5)
    {
      return 0;
    }
  }

  v6 = *(a1 + 56);
  while (v6 >= 1)
  {
    v7 = *(*(a1 + 64) + 8 * v6--);
    if ((~*(v7 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  return (*(a1 + 16) & 0x40) == 0 || (~*(*(a1 + 120) + 16) & 3) == 0;
}

uint64_t sub_16AFCC0(uint64_t a1)
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

  if (a1 != &off_277D680)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_16B1C88(v6);
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

void sub_16AFD8C(uint64_t a1)
{
  sub_16AFCC0(a1);

  operator delete();
}

uint64_t sub_16AFDC4(uint64_t result)
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
      result = sub_16AFE58(*(result + 32));
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_16AFE58(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16B185C(v4);
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

uint64_t sub_16AFEDC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

          v15 = sub_16BB394(v17);
          *(a1 + 32) = v15;
          v6 = *v22;
        }

        v14 = sub_2232FC8(a3, v15, v6);
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

char *sub_16B0078(uint64_t a1, char *__dst, void *a3)
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

    v4 = sub_16B1F48(v7, v9, a3);
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

uint64_t sub_16B01A4(uint64_t a1)
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
    v7 = sub_16B210C(*(a1 + 32));
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

std::string *sub_16B0280(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
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
    }

    if ((v4 & 2) != 0)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
      v8 = v3[1].__r_.__value_.__l.__size_;
      if (!v8)
      {
        v9 = v3->__r_.__value_.__l.__size_;
        v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
        if (v9)
        {
          v10 = *v10;
        }

        v8 = sub_16BB394(v10);
        v3[1].__r_.__value_.__l.__size_ = v8;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = &off_277D6E0;
      }

      result = sub_16B036C(v8, v11);
    }
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_16B036C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_16BFC78(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
    LODWORD(v3[2].__r_.__value_.__l.__data_) = v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_16B045C(uint64_t a1)
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

  if (a1 != &off_277D6A8)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_16AFCC0(v6);
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

void sub_16B0528(uint64_t a1)
{
  sub_16B045C(a1);

  operator delete();
}

uint64_t sub_16B0560(uint64_t result)
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
      result = sub_16AFDC4(*(result + 32));
    }
  }

LABEL_7:
  if ((v2 & 0xC) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
  }

  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_16B0600(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v26 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v26, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v26 + 1);
    v8 = **v26;
    if (**v26 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v26, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v26 + 2);
      }
    }

    *v26 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 == 2 && v8 == 17)
      {
        v14 = *v7;
        v13 = v7 + 8;
        v5 |= 4u;
        *(a1 + 40) = v14;
LABEL_29:
        *v26 = v13;
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v8 != 10)
    {
      goto LABEL_30;
    }

    *(a1 + 16) |= 1u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    v21 = sub_194DB04((a1 + 24), v20);
    v18 = sub_1958890(v21, *v26, a3);
LABEL_37:
    *v26 = v18;
    if (!v18)
    {
      goto LABEL_43;
    }

LABEL_38:
    if (sub_195ADC0(a3, v26, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 3)
  {
    if (v11 != 4 || v8 != 34)
    {
      goto LABEL_30;
    }

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

      v15 = sub_16BB154(v17);
      *(a1 + 32) = v15;
      v7 = *v26;
    }

    v18 = sub_2233058(a3, v15, v7);
    goto LABEL_37;
  }

  if (v8 == 25)
  {
    v22 = *v7;
    v13 = v7 + 8;
    v5 |= 8u;
    *(a1 + 48) = v22;
    goto LABEL_29;
  }

LABEL_30:
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
      v7 = *v26;
    }

    v18 = sub_1952690(v8, v25, v7, a3);
    goto LABEL_37;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_43:
  *v26 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v26;
}

char *sub_16B0814(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
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

  v7 = *(a1 + 40);
  *v4 = 17;
  *(v4 + 1) = v7;
  v4 += 9;
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 48);
  *v4 = 25;
  *(v4 + 1) = v8;
  v4 += 9;
  if ((v6 & 2) != 0)
  {
LABEL_13:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v9 = *(a1 + 32);
    *v4 = 34;
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

    v4 = sub_16B0078(v9, v11, a3);
  }

LABEL_19:
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

uint64_t sub_16B09C0(uint64_t a1)
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
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  v8 = sub_16B01A4(*(a1 + 32));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_10:
  v9 = v3 + 9;
  if ((v2 & 4) == 0)
  {
    v9 = v3;
  }

  if ((v2 & 8) != 0)
  {
    result = v9 + 9;
  }

  else
  {
    result = v9;
  }

LABEL_15:
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    result += v12;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_16B0AB8(std::string *result, uint64_t a2)
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

        goto LABEL_23;
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

      v9 = sub_16BB154(v11);
      v3[1].__r_.__value_.__l.__size_ = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_277D680;
    }

    result = sub_16B0280(v9, v12);
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
      v3[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_23:
    v3[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
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

uint64_t sub_16B0BF0(uint64_t a1)
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
  sub_16BF4AC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16B0CB4(uint64_t a1)
{
  sub_16B0BF0(a1);

  operator delete();
}

uint64_t sub_16B0CEC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16B0560(v4);
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
  if ((v5 & 0x3C) != 0)
  {
    *(v1 + 64) = 0;
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

uint64_t sub_16B0DE4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v41 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v41, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v41 + 1);
    v8 = **v41;
    if (**v41 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v41, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v41 + 2);
      }
    }

    *v41 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 9)
      {
        goto LABEL_53;
      }

      v23 = *v7;
      v22 = v7 + 2;
      v5 |= 4u;
      *(a1 + 64) = v23;
      goto LABEL_52;
    }

    if (v11 == 2)
    {
      if (v8 != 17)
      {
        goto LABEL_53;
      }

      v33 = *v7;
      v22 = v7 + 2;
      v5 |= 8u;
      *(a1 + 72) = v33;
LABEL_52:
      *v41 = v22;
      goto LABEL_61;
    }

    if (v11 != 3 || v8 != 24)
    {
      goto LABEL_53;
    }

    v5 |= 0x10u;
    v17 = v7 + 1;
    LODWORD(v16) = *v7;
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v17;
    v16 = v16 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_25:
      *v41 = v17;
      *(a1 + 80) = v16;
      goto LABEL_61;
    }

    v39 = sub_19587DC(v7, v16);
    *v41 = v39;
    *(a1 + 80) = v40;
    if (!v39)
    {
      goto LABEL_70;
    }

LABEL_61:
    if (sub_195ADC0(a3, v41, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 5)
  {
    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_53;
      }

      *(a1 + 16) |= 1u;
      v24 = *(a1 + 8);
      v13 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v13 = *v13;
      }

      v14 = (a1 + 48);
    }

    else
    {
      if (v11 != 5 || v8 != 42)
      {
        goto LABEL_53;
      }

      *(a1 + 16) |= 2u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v14 = (a1 + 56);
    }

    v25 = sub_194DB04(v14, v13);
    v26 = sub_1958890(v25, *v41, a3);
LABEL_60:
    *v41 = v26;
    if (!v26)
    {
      goto LABEL_70;
    }

    goto LABEL_61;
  }

  if (v11 != 6)
  {
    if (v11 != 7 || v8 != 56)
    {
      goto LABEL_53;
    }

    v5 |= 0x20u;
    v20 = v7 + 1;
    LODWORD(v19) = *v7;
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_32;
    }

    v21 = *v20;
    v19 = v19 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_32:
      *v41 = v20;
      *(a1 + 84) = v19;
      goto LABEL_61;
    }

    v37 = sub_19587DC(v7, v19);
    *v41 = v37;
    *(a1 + 84) = v38;
    if (!v37)
    {
      goto LABEL_70;
    }

    goto LABEL_61;
  }

  if (v8 == 50)
  {
    v27 = v7 - 1;
    while (1)
    {
      v28 = v27 + 1;
      *v41 = v27 + 1;
      v29 = *(a1 + 40);
      if (v29 && (v30 = *(a1 + 32), v30 < *v29))
      {
        *(a1 + 32) = v30 + 1;
        v31 = *&v29[2 * v30 + 2];
      }

      else
      {
        v32 = sub_16BB1D8(*(a1 + 24));
        v31 = sub_19593CC(a1 + 24, v32);
        v28 = *v41;
      }

      v27 = sub_22330E8(a3, v31, v28);
      *v41 = v27;
      if (!v27)
      {
        goto LABEL_70;
      }

      if (*a3 <= v27 || *v27 != 50)
      {
        goto LABEL_61;
      }
    }
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
      v7 = *v41;
    }

    v26 = sub_1952690(v8, v36, v7, a3);
    goto LABEL_60;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_70:
  *v41 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v41;
}

char *sub_16B1138(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 72);
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

  v7 = *(a1 + 64);
  *__dst = 9;
  *(__dst + 1) = v7;
  __dst += 9;
  if ((v5 & 8) != 0)
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

      v6 = sub_16B0814(v15, v17, a3);
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

uint64_t sub_16B142C(uint64_t a1)
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
      v7 = sub_16B09C0(v6);
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
  if ((v8 & 0x3F) != 0)
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
      v12 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      v13 = *(v12 + 23);
      v14 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v14 = v13;
      }

      v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v15 = v2 + 9;
    if ((v8 & 4) == 0)
    {
      v15 = v2;
    }

    if ((v8 & 8) != 0)
    {
      v2 = v15 + 9;
    }

    else
    {
      v2 = v15;
    }

    if ((v8 & 0x10) != 0)
    {
      v16 = *(a1 + 80);
      v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v16 >= 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 11;
      }

      v2 += v18;
    }

    if ((v8 & 0x20) != 0)
    {
      v19 = *(a1 + 84);
      v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v19 >= 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = 11;
      }

      v2 += v21;
    }
  }

  v22 = *(a1 + 8);
  if (v22)
  {
    v24 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v25 < 0)
    {
      v25 = *(v24 + 16);
    }

    v2 += v25;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_16B15E8(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_16BFBEC(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0x3F) != 0)
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

        goto LABEL_23;
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
        goto LABEL_9;
      }

      goto LABEL_24;
    }

LABEL_23:
    v3[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }

LABEL_24:
    v3[3].__r_.__value_.__r.__words[0] = *(a2 + 72);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
LABEL_12:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
        goto LABEL_13;
      }

LABEL_11:
      HIDWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 84);
      goto LABEL_12;
    }

LABEL_25:
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 80);
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_16B1784(uint64_t a1)
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

void sub_16B1824(uint64_t a1)
{
  sub_16B1784(a1);

  operator delete();
}

uint64_t sub_16B185C(uint64_t a1)
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

uint64_t sub_16B18A4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_16B1A64(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_16B1BAC(uint64_t a1)
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

void *sub_16B1C88(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_16BF530(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16B1D08(void *a1)
{
  sub_16B1C88(a1);

  operator delete();
}

char *sub_16B1D40(uint64_t a1, char *a2, int32x2_t *a3)
{
  v24 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v24, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v24 + 1;
    v7 = *v24;
    if (*v24 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v24, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v24 + 2;
      }
    }

    v24 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        v14 = v6 - 1;
        while (1)
        {
          v15 = (v14 + 1);
          v24 = v14 + 1;
          v16 = *(a1 + 40);
          if (v16 && (v17 = *(a1 + 32), v17 < *v16))
          {
            *(a1 + 32) = v17 + 1;
            v18 = *&v16[2 * v17 + 2];
          }

          else
          {
            v19 = sub_16BB30C(*(a1 + 24));
            v18 = sub_19593CC(a1 + 24, v19);
            v15 = v24;
          }

          v14 = sub_2233178(a3, v18, v15);
          v24 = v14;
          if (!v14)
          {
            return 0;
          }

          if (*a3 <= v14 || *v14 != 18)
          {
            goto LABEL_36;
          }
        }
      }
    }

    else if (v7 >> 3 == 1 && v7 == 8)
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
        v24 = sub_19587DC(v6, v20);
        if (!v24)
        {
          return 0;
        }
      }

      else
      {
        v21 = v6 + 2;
LABEL_33:
        v24 = v21;
      }

      if (v20 > 2)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 48) = v20;
      }

      continue;
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
        return v24;
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
      v6 = v24;
    }

    v24 = sub_1952690(v7, v13, v6, a3);
    if (!v24)
    {
      return 0;
    }

LABEL_36:
    ;
  }

  return v24;
}

char *sub_16B1F48(uint64_t a1, char *__dst, void *a3)
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

      v5 = sub_16B1A64(v12, v14, a3);
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

uint64_t sub_16B210C(uint64_t a1)
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
      v7 = sub_16B1BAC(v6);
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
    v8 = *(a1 + 48);
    if (v8 < 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v9;
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

void *sub_16B2204(void *a1)
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

void sub_16B2278(void *a1)
{
  sub_16B2204(a1);

  operator delete();
}

uint64_t sub_16B22B0(uint64_t a1)
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

char *sub_16B22D8(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_16B2530(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_16B2718(uint64_t a1)
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

void *sub_16B27D8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_16BF5B4(a1 + 4);
  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16B2860(void *a1)
{
  sub_16B27D8(a1);

  operator delete();
}

uint64_t sub_16B2898(uint64_t result)
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
      result = sub_16B22B0(v4);
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

char *sub_16B2918(uint64_t a1, char *a2, int32x2_t *a3)
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
              v25 = sub_16BB430(*(a1 + 32));
              v24 = sub_19593CC(a1 + 32, v25);
              v21 = v29;
            }

            v20 = sub_2233208(a3, v24, v21);
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
          *(&v30 + 1) = sub_16AAD7C;
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

char *sub_16B2BE4(uint64_t a1, char *a2, _DWORD *a3)
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

      v8 = sub_16B2530(v14, v16, a3);
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

uint64_t sub_16B2DC4(uint64_t a1)
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
      v14 = sub_16B2718(v13);
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

std::string *sub_16B2EC0(std::string *result, uint64_t a2)
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
    result = sub_16BFCF4(&v3[1].__r_.__value_.__l.__size_, v10, (v9 + 8), v8, *v3[2].__r_.__value_.__l.__data_ - LODWORD(v3[1].__r_.__value_.__r.__words[2]));
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

uint64_t sub_16B2FD8(uint64_t a1)
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

void sub_16B30A4(uint64_t a1)
{
  sub_16B2FD8(a1);

  operator delete();
}

uint64_t sub_16B30DC(uint64_t a1)
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

uint64_t sub_16B3194(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 == 6)
    {
      if (v7 == 50)
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

    else if (v10 == 4)
    {
      if (v7 == 34)
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

    else if (v10 == 2 && v7 == 18)
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

char *sub_16B3350(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
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

  v4 = sub_128AEEC(a3, 4, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) != 0)
  {
LABEL_4:
    v4 = sub_128AEEC(a3, 6, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
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

uint64_t sub_16B3464(uint64_t a1)
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

uint64_t sub_16B3594(uint64_t a1)
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
  sub_16BF638((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16B3640(uint64_t a1)
{
  sub_16B3594(a1);

  operator delete();
}

uint64_t sub_16B3678(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16B30DC(v4);
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

uint64_t sub_16B372C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 == 4)
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
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v28 = sub_194DB04((a1 + 48), v27);
      v16 = sub_1958890(v28, *v31, a3);
LABEL_38:
      *v31 = v16;
      if (!v16)
      {
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (v8 != 16)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v18 = v7 + 1;
    LODWORD(v17) = *v7;
    if ((v17 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    v19 = *v18;
    v17 = v17 + (v19 << 7) - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_24:
      *v31 = v18;
      *(a1 + 56) = v17;
      goto LABEL_39;
    }

    v29 = sub_19587DC(v7, v17);
    *v31 = v29;
    *(a1 + 56) = v30;
    if (!v29)
    {
      goto LABEL_46;
    }

LABEL_39:
    if (sub_195ADC0(a3, v31, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 34)
  {
    v20 = v7 - 1;
    while (1)
    {
      v21 = v20 + 1;
      *v31 = v20 + 1;
      v22 = *(a1 + 40);
      if (v22 && (v23 = *(a1 + 32), v23 < *v22))
      {
        *(a1 + 32) = v23 + 1;
        v24 = *&v22[2 * v23 + 2];
      }

      else
      {
        v25 = sub_16BB550(*(a1 + 24));
        v24 = sub_19593CC(a1 + 24, v25);
        v21 = *v31;
      }

      v20 = sub_2233298(a3, v24, v21);
      *v31 = v20;
      if (!v20)
      {
        goto LABEL_46;
      }

      if (*a3 <= v20 || *v20 != 34)
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
      v7 = *v31;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_38;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_46:
  *v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v31;
}

char *sub_16B3988(uint64_t a1, char *__dst, void *a3)
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
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v14 = *(*(a1 + 40) + 8 * i + 8);
      *v7 = 34;
      v15 = *(v14 + 20);
      v7[1] = v15;
      if (v15 > 0x7F)
      {
        v16 = sub_19575D0(v15, v7 + 1);
      }

      else
      {
        v16 = v7 + 2;
      }

      v7 = sub_16B3350(v14, v16, a3);
    }
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

uint64_t sub_16B3B70(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 1) == 0)
  {
    result = 0;
    if ((v2 & 2) == 0)
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
  if ((v2 & 2) != 0)
  {
LABEL_7:
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
  }

  return result;
}

uint64_t sub_16B3BFC(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v9 = sub_16B3B70(a1);
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

    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    v6 = *(a1 + 56);
    v7 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
    if (v6 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 10;
    }

    v9 = v4 + v5 + v8 + 2;
  }

  v10 = *(a1 + 32);
  v11 = v9 + v10;
  v12 = *(a1 + 40);
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
      v16 = sub_16B3464(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
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

    v11 += v20;
  }

  *(a1 + 20) = v11;
  return v11;
}

std::string *sub_16B3D24(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_16BFD70(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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

uint64_t sub_16B3E5C(uint64_t a1)
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

void sub_16B3F04(uint64_t a1)
{
  sub_16B3E5C(a1);

  operator delete();
}

uint64_t sub_16B3F3C(uint64_t a1)
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

uint64_t sub_16B3FC4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_16B427C(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_16B4478(uint64_t a1)
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

void *sub_16B45B4(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26FEFB0;
  result[1] = v3;
  result[2] = 0;
  result[3] = a2;
  result[4] = 0;
  result[5] = 0;
  result[6] = a2;
  result[7] = 0;
  result[8] = 0;
  result[9] = a2;
  result[10] = 0;
  result[11] = 0;
  result[12] = a2;
  result[13] = 0;
  result[14] = 0;
  result[15] = a2;
  result[16] = 0;
  result[17] = 0;
  result[18] = a2;
  result[19] = 0;
  result[20] = 0;
  result[21] = a2;
  result[22] = 0;
  result[23] = 0;
  result[24] = &qword_278E990;
  result[25] = &qword_278E990;
  result[26] = &qword_278E990;
  result[27] = &qword_278E990;
  result[28] = 0;
  result[29] = 0;
  return result;
}

uint64_t sub_16B4624(uint64_t a1)
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

  v5 = (a1 + 192);
  if (*(a1 + 192) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 200) != &qword_278E990)
  {
    sub_194E89C((a1 + 200));
  }

  if (*(a1 + 208) != &qword_278E990)
  {
    sub_194E89C((a1 + 208));
  }

  if (*(a1 + 216) != &qword_278E990)
  {
    sub_194E89C((a1 + 216));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_13:
  sub_16BF8CC((a1 + 168));
  sub_1347CC0((a1 + 144));
  sub_16BF848((a1 + 120));
  sub_16BF7C4((a1 + 96));
  sub_16BF740((a1 + 72));
  sub_1956AFC((a1 + 48));
  sub_16BF6BC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16B4754(uint64_t a1)
{
  sub_16B4624(a1);

  operator delete();
}

uint64_t sub_16B478C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_16B0CEC(v4);
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
      result = sub_16AFE58(v8);
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
      result = sub_16AAE78(v11);
      --v9;
    }

    while (v9);
    *(a1 + 104) = 0;
  }

  v12 = *(a1 + 128);
  if (v12 >= 1)
  {
    v13 = (*(a1 + 136) + 8);
    do
    {
      v14 = *v13++;
      result = sub_16B2898(v14);
      --v12;
    }

    while (v12);
    *(a1 + 128) = 0;
  }

  v15 = *(a1 + 152);
  if (v15 >= 1)
  {
    v16 = (*(a1 + 160) + 8);
    do
    {
      v17 = *v16++;
      result = sub_16B3678(v17);
      --v15;
    }

    while (v15);
    *(a1 + 152) = 0;
  }

  v18 = *(a1 + 176);
  if (v18 >= 1)
  {
    v19 = (*(a1 + 184) + 8);
    do
    {
      v20 = *v19++;
      result = sub_16B3F3C(v20);
      --v18;
    }

    while (v18);
    *(a1 + 176) = 0;
  }

  v21 = *(a1 + 16);
  if ((v21 & 0xF) != 0)
  {
    if ((v21 & 1) == 0)
    {
      if ((v21 & 2) == 0)
      {
        goto LABEL_28;
      }

LABEL_35:
      v23 = *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v23 + 23) < 0)
      {
        **v23 = 0;
        *(v23 + 8) = 0;
        if ((v21 & 4) != 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        *v23 = 0;
        *(v23 + 23) = 0;
        if ((v21 & 4) != 0)
        {
          goto LABEL_39;
        }
      }

LABEL_29:
      if ((v21 & 8) == 0)
      {
        goto LABEL_46;
      }

LABEL_43:
      v25 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v25 + 23) < 0)
      {
        **v25 = 0;
        *(v25 + 8) = 0;
      }

      else
      {
        *v25 = 0;
        *(v25 + 23) = 0;
      }

      goto LABEL_46;
    }

    v22 = *(a1 + 192) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v22 + 23) < 0)
    {
      **v22 = 0;
      *(v22 + 8) = 0;
      if ((v21 & 2) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *v22 = 0;
      *(v22 + 23) = 0;
      if ((v21 & 2) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_28:
    if ((v21 & 4) == 0)
    {
      goto LABEL_29;
    }

LABEL_39:
    v24 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v24 + 23) < 0)
    {
      **v24 = 0;
      *(v24 + 8) = 0;
      if ((v21 & 8) == 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      *v24 = 0;
      *(v24 + 23) = 0;
      if ((v21 & 8) == 0)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_43;
  }

LABEL_46:
  if ((v21 & 0xF0) != 0)
  {
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
  }

  v27 = *(a1 + 8);
  v26 = a1 + 8;
  *(v26 + 8) = 0;
  if (v27)
  {

    return sub_1957EA8(v26);
  }

  return result;
}

uint64_t sub_16B49C0(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
          goto LABEL_120;
        }

        v5 |= 0x10u;
        v12 = v7 + 1;
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = v7 + 2;
LABEL_12:
          *v86 = v12;
          *(a1 + 224) = v11;
          goto LABEL_96;
        }

        v82 = sub_19587DC(v7, v11);
        *v86 = v82;
        *(a1 + 224) = v83;
        if (v82)
        {
          goto LABEL_96;
        }

        goto LABEL_138;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 1u;
        v41 = *(a1 + 8);
        v30 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
        if (v41)
        {
          v30 = *v30;
        }

        v31 = (a1 + 192);
        goto LABEL_94;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 2u;
        v29 = *(a1 + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        v31 = (a1 + 200);
        goto LABEL_94;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 4u;
        v57 = *(a1 + 8);
        v30 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
        if (v57)
        {
          v30 = *v30;
        }

        v31 = (a1 + 208);
        goto LABEL_94;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 8u;
        v58 = *(a1 + 8);
        v30 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
        if (v58)
        {
          v30 = *v30;
        }

        v31 = (a1 + 216);
LABEL_94:
        v59 = sub_194DB04(v31, v30);
        v60 = sub_1958890(v59, *v86, a3);
        goto LABEL_95;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_120;
        }

        v5 |= 0x20u;
        v33 = v7 + 1;
        v32 = *v7;
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_46;
        }

        v34 = *v33;
        v32 = (v34 << 7) + v32 - 128;
        if (v34 < 0)
        {
          v80 = sub_19587DC(v7, v32);
          *v86 = v80;
          *(a1 + 232) = v81 != 0;
          if (!v80)
          {
            goto LABEL_138;
          }
        }

        else
        {
          v33 = v7 + 2;
LABEL_46:
          *v86 = v33;
          *(a1 + 232) = v32 != 0;
        }

        goto LABEL_96;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_120;
        }

        v5 |= 0x40u;
        v43 = v7 + 1;
        v42 = *v7;
        if ((v42 & 0x8000000000000000) == 0)
        {
          goto LABEL_65;
        }

        v44 = *v43;
        v42 = (v44 << 7) + v42 - 128;
        if (v44 < 0)
        {
          v84 = sub_19587DC(v7, v42);
          *v86 = v84;
          *(a1 + 233) = v85 != 0;
          if (!v84)
          {
            goto LABEL_138;
          }
        }

        else
        {
          v43 = v7 + 2;
LABEL_65:
          *v86 = v43;
          *(a1 + 233) = v42 != 0;
        }

        goto LABEL_96;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_120;
        }

        v45 = v7 - 1;
        while (1)
        {
          v46 = v45 + 1;
          *v86 = v45 + 1;
          v47 = *(a1 + 40);
          if (v47 && (v48 = *(a1 + 32), v48 < *v47))
          {
            *(a1 + 32) = v48 + 1;
            v49 = *&v47[2 * v48 + 2];
          }

          else
          {
            v50 = sub_16BB260(*(a1 + 24));
            v49 = sub_19593CC(a1 + 24, v50);
            v46 = *v86;
          }

          v45 = sub_2233328(a3, v49, v46);
          *v86 = v45;
          if (!v45)
          {
            goto LABEL_138;
          }

          if (*a3 <= v45 || *v45 != 90)
          {
            goto LABEL_96;
          }
        }

      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_120;
        }

        v67 = v7 - 1;
        while (1)
        {
          v68 = (v67 + 1);
          *v86 = v67 + 1;
          v69 = *(a1 + 64);
          if (v69 && (v70 = *(a1 + 56), v70 < *v69))
          {
            *(a1 + 56) = v70 + 1;
            v71 = *&v69[2 * v70 + 2];
          }

          else
          {
            v72 = *(a1 + 48);
            if (!v72)
            {
              operator new();
            }

            *v74 = v73;
            v74[1] = sub_195A650;
            *v73 = 0;
            v73[1] = 0;
            v73[2] = 0;
            v71 = sub_19593CC(a1 + 48, v73);
            v68 = *v86;
          }

          v67 = sub_1958890(v71, v68, a3);
          *v86 = v67;
          if (!v67)
          {
            goto LABEL_138;
          }

          if (*a3 <= v67 || *v67 != 106)
          {
            goto LABEL_96;
          }
        }

      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_120;
        }

        v61 = v7 - 1;
        while (1)
        {
          v62 = (v61 + 1);
          *v86 = v61 + 1;
          v63 = *(a1 + 88);
          if (v63 && (v64 = *(a1 + 80), v64 < *v63))
          {
            *(a1 + 80) = v64 + 1;
            v65 = *&v63[2 * v64 + 2];
          }

          else
          {
            v66 = sub_16BB394(*(a1 + 72));
            v65 = sub_19593CC(a1 + 72, v66);
            v62 = *v86;
          }

          v61 = sub_2232FC8(a3, v65, v62);
          *v86 = v61;
          if (!v61)
          {
            goto LABEL_138;
          }

          if (*a3 <= v61 || *v61 != 114)
          {
            goto LABEL_96;
          }
        }

      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_120;
        }

        v20 = v7 - 1;
        while (1)
        {
          v21 = v20 + 1;
          *v86 = v20 + 1;
          v22 = *(a1 + 112);
          if (v22 && (v23 = *(a1 + 104), v23 < *v22))
          {
            *(a1 + 104) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            v25 = sub_16BAD18(*(a1 + 96));
            v24 = sub_19593CC(a1 + 96, v25);
            v21 = *v86;
          }

          v20 = sub_22333B8(a3, v24, v21);
          *v86 = v20;
          if (!v20)
          {
            goto LABEL_138;
          }

          if (*a3 <= v20 || *v20 != 122)
          {
            goto LABEL_96;
          }
        }

      case 0x10u:
        if (v8 != 130)
        {
          goto LABEL_120;
        }

        v35 = v7 - 2;
        while (1)
        {
          v36 = (v35 + 2);
          *v86 = v35 + 2;
          v37 = *(a1 + 136);
          if (v37 && (v38 = *(a1 + 128), v38 < *v37))
          {
            *(a1 + 128) = v38 + 1;
            v39 = *&v37[2 * v38 + 2];
          }

          else
          {
            v40 = sub_16BB4AC(*(a1 + 120));
            v39 = sub_19593CC(a1 + 120, v40);
            v36 = *v86;
          }

          v35 = sub_2233448(a3, v39, v36);
          *v86 = v35;
          if (!v35)
          {
            goto LABEL_138;
          }

          if (*a3 <= v35 || *v35 != 386)
          {
            goto LABEL_96;
          }
        }

      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_120;
        }

        v5 |= 0x80u;
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
          v78 = sub_1958770(v7, v27);
          *v86 = v78;
          *(a1 + 236) = v79;
          if (!v78)
          {
            goto LABEL_138;
          }
        }

        else
        {
          v26 = v7 + 2;
LABEL_37:
          *v86 = v26;
          *(a1 + 236) = v27;
        }

        goto LABEL_96;
      case 0x13u:
        if (v8 != 154)
        {
          goto LABEL_120;
        }

        v14 = v7 - 1;
        while (1)
        {
          v15 = (v14 + 1);
          *v86 = v14 + 1;
          v16 = *(a1 + 160);
          if (v16 && (v17 = *(a1 + 152), v17 < *v16))
          {
            *(a1 + 152) = v17 + 1;
            v18 = *&v16[2 * v17 + 2];
          }

          else
          {
            v19 = sub_16BB5D8(*(a1 + 144));
            v18 = sub_19593CC(a1 + 144, v19);
            v15 = *v86;
          }

          v14 = sub_21FD420(a3, v18, v15);
          *v86 = v14;
          if (!v14)
          {
            goto LABEL_138;
          }

          if (*a3 <= v14 || *v14 != 410)
          {
            goto LABEL_96;
          }
        }

      case 0x14u:
        if (v8 != 162)
        {
          goto LABEL_120;
        }

        v51 = v7 - 1;
        while (1)
        {
          v52 = (v51 + 1);
          *v86 = v51 + 1;
          v53 = *(a1 + 184);
          if (v53 && (v54 = *(a1 + 176), v54 < *v53))
          {
            *(a1 + 176) = v54 + 1;
            v55 = *&v53[2 * v54 + 2];
          }

          else
          {
            v56 = sub_16BB680(*(a1 + 168));
            v55 = sub_19593CC(a1 + 168, v56);
            v52 = *v86;
          }

          v51 = sub_22334D8(a3, v55, v52);
          *v86 = v51;
          if (!v51)
          {
            goto LABEL_138;
          }

          if (*a3 <= v51 || *v51 != 418)
          {
            goto LABEL_96;
          }
        }

      default:
LABEL_120:
        if (v8)
        {
          v75 = (v8 & 7) == 4;
        }

        else
        {
          v75 = 1;
        }

        if (!v75)
        {
          v76 = *(a1 + 8);
          if (v76)
          {
            v77 = (v76 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v77 = sub_11F1920((a1 + 8));
            v7 = *v86;
          }

          v60 = sub_1952690(v8, v77, v7, a3);
LABEL_95:
          *v86 = v60;
          if (!v60)
          {
            goto LABEL_138;
          }

LABEL_96:
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
LABEL_138:
          *v86 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v86;
    }
  }
}

char *sub_16B51F8(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 224);
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
    v6 = sub_128AEEC(a3, 3, *(a1 + 192) & 0xFFFFFFFFFFFFFFFELL, v6);
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_12;
  }

  v6 = sub_128AEEC(a3, 5, *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = sub_128AEEC(a3, 7, *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 8) == 0)
  {
LABEL_14:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = sub_128AEEC(a3, 8, *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 0x20) == 0)
  {
LABEL_15:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

LABEL_21:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v11 = *(a1 + 232);
  *v6 = 72;
  v6[1] = v11;
  v6 += 2;
  if ((v5 & 0x40) != 0)
  {
LABEL_24:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 233);
    *v6 = 80;
    v6[1] = v12;
    v6 += 2;
  }

LABEL_27:
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
      *v6 = 90;
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

      v6 = sub_16B1138(v15, v17, a3);
    }
  }

  v18 = *(a1 + 56);
  if (v18 >= 1)
  {
    v19 = 8;
    do
    {
      v20 = *(*(a1 + 64) + v19);
      v21 = *(v20 + 23);
      if (v21 < 0 && (v21 = v20[1], v21 > 127) || *a3 - v6 + 14 < v21)
      {
        v6 = sub_1957480(a3, 13, v20, v6);
      }

      else
      {
        *v6 = 106;
        v6[1] = v21;
        if (*(v20 + 23) < 0)
        {
          v20 = *v20;
        }

        v22 = v6 + 2;
        memcpy(v6 + 2, v20, v21);
        v6 = &v22[v21];
      }

      v19 += 8;
      --v18;
    }

    while (v18);
  }

  v23 = *(a1 + 80);
  if (v23)
  {
    for (j = 0; j != v23; ++j)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v25 = *(*(a1 + 88) + 8 * j + 8);
      *v6 = 114;
      v26 = *(v25 + 20);
      v6[1] = v26;
      if (v26 > 0x7F)
      {
        v27 = sub_19575D0(v26, v6 + 1);
      }

      else
      {
        v27 = v6 + 2;
      }

      v6 = sub_16B1F48(v25, v27, a3);
    }
  }

  v28 = *(a1 + 104);
  if (v28)
  {
    for (k = 0; k != v28; ++k)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v30 = *(*(a1 + 112) + 8 * k + 8);
      *v6 = 122;
      v31 = *(v30 + 20);
      v6[1] = v31;
      if (v31 > 0x7F)
      {
        v32 = sub_19575D0(v31, v6 + 1);
      }

      else
      {
        v32 = v6 + 2;
      }

      v6 = sub_16AB074(v30, v32, a3);
    }
  }

  v33 = *(a1 + 128);
  if (v33)
  {
    for (m = 0; m != v33; ++m)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v35 = *(*(a1 + 136) + 8 * m + 8);
      *v6 = 386;
      v36 = *(v35 + 56);
      v6[2] = v36;
      if (v36 > 0x7F)
      {
        v37 = sub_19575D0(v36, v6 + 2);
      }

      else
      {
        v37 = v6 + 3;
      }

      v6 = sub_16B2BE4(v35, v37, a3);
    }
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v39 = *(a1 + 236);
    *v6 = 400;
    v6[2] = v39;
    if (v39 > 0x7F)
    {
      v6[2] = v39 | 0x80;
      v40 = v39 >> 7;
      v6[3] = v39 >> 7;
      v38 = v6 + 4;
      if (v39 >= 0x4000)
      {
        LOBYTE(v41) = v6[3];
        do
        {
          *(v38 - 1) = v41 | 0x80;
          v41 = v40 >> 7;
          *v38++ = v40 >> 7;
          v42 = v40 >> 14;
          v40 >>= 7;
        }

        while (v42);
      }
    }

    else
    {
      v38 = v6 + 3;
    }
  }

  else
  {
    v38 = v6;
  }

  v43 = *(a1 + 152);
  if (v43)
  {
    for (n = 0; n != v43; ++n)
    {
      if (*a3 <= v38)
      {
        v38 = sub_225EB68(a3, v38);
      }

      v45 = *(*(a1 + 160) + 8 * n + 8);
      *v38 = 410;
      v46 = *(v45 + 20);
      v38[2] = v46;
      if (v46 > 0x7F)
      {
        v47 = sub_19575D0(v46, v38 + 2);
      }

      else
      {
        v47 = v38 + 3;
      }

      v38 = sub_16B3988(v45, v47, a3);
    }
  }

  v48 = *(a1 + 176);
  if (v48)
  {
    for (ii = 0; ii != v48; ++ii)
    {
      if (*a3 <= v38)
      {
        v38 = sub_225EB68(a3, v38);
      }

      v50 = *(*(a1 + 184) + 8 * ii + 8);
      *v38 = 418;
      v51 = *(v50 + 20);
      v38[2] = v51;
      if (v51 > 0x7F)
      {
        v52 = sub_19575D0(v51, v38 + 2);
      }

      else
      {
        v52 = v38 + 3;
      }

      v38 = sub_16B427C(v50, v52, a3);
    }
  }

  v53 = *(a1 + 8);
  if ((v53 & 1) == 0)
  {
    return v38;
  }

  v55 = v53 & 0xFFFFFFFFFFFFFFFCLL;
  v56 = *(v55 + 31);
  if (v56 < 0)
  {
    v57 = *(v55 + 8);
    v56 = *(v55 + 16);
  }

  else
  {
    v57 = (v55 + 8);
  }

  if (*a3 - v38 >= v56)
  {
    v58 = v56;
    memcpy(v38, v57, v56);
    v38 += v58;
    return v38;
  }

  return sub_1957130(a3, v57, v56, v38);
}

uint64_t sub_16B5864(uint64_t a1)
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
      v7 = sub_16B142C(v6);
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
      v20 = sub_16B210C(v19);
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
      v27 = sub_16AB15C(v26);
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
      v34 = sub_16B2DC4(v33);
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
      v41 = sub_16B3BFC(v40);
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
      v48 = sub_16B4478(v47);
      v43 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6);
      v46 -= 8;
    }

    while (v46);
  }

  v49 = *(a1 + 16);
  if (v49)
  {
    if (v49)
    {
      v52 = *(a1 + 192) & 0xFFFFFFFFFFFFFFFELL;
      v53 = *(v52 + 23);
      v54 = *(v52 + 8);
      if ((v53 & 0x80u) == 0)
      {
        v54 = v53;
      }

      v43 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v49 & 2) == 0)
      {
LABEL_47:
        if ((v49 & 4) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_61;
      }
    }

    else if ((v49 & 2) == 0)
    {
      goto LABEL_47;
    }

    v55 = *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL;
    v56 = *(v55 + 23);
    v57 = *(v55 + 8);
    if ((v56 & 0x80u) == 0)
    {
      v57 = v56;
    }

    v43 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v49 & 4) == 0)
    {
LABEL_48:
      if ((v49 & 8) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_64;
    }

LABEL_61:
    v58 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
    v59 = *(v58 + 23);
    v60 = *(v58 + 8);
    if ((v59 & 0x80u) == 0)
    {
      v60 = v59;
    }

    v43 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v49 & 8) == 0)
    {
LABEL_49:
      if ((v49 & 0x10) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

LABEL_64:
    v61 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
    v62 = *(v61 + 23);
    v63 = *(v61 + 8);
    if ((v62 & 0x80u) == 0)
    {
      v63 = v62;
    }

    v43 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v49 & 0x10) == 0)
    {
      goto LABEL_51;
    }

LABEL_50:
    v43 += ((9 * (__clz(*(a1 + 224) | 1) ^ 0x3F) + 73) >> 6) + 1;
LABEL_51:
    v43 += ((v49 >> 5) & 2) + ((v49 >> 4) & 2);
    if ((v49 & 0x80) != 0)
    {
      v43 += ((9 * (__clz(*(a1 + 236) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

  v50 = *(a1 + 8);
  if (v50)
  {
    v64 = v50 & 0xFFFFFFFFFFFFFFFCLL;
    v65 = *((v50 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v65 < 0)
    {
      v65 = *(v64 + 16);
    }

    v43 += v65;
  }

  *(a1 + 20) = v43;
  return v43;
}